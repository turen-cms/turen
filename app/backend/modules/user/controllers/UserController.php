<?php
/**
 * @link http://www.turen2.com/
 * @copyright Copyright (c) 土人开源CMS
 * @author developer qq:980522557
 */
namespace backend\modules\user\controllers;

use Yii;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use common\components\AliyunOss;
use backend\models\user\User;
use backend\models\user\UserSearch;
use backend\actions\CheckAction;
use backend\widgets\fileupload\FileUploadAction;
use backend\actions\BatchAction;
use backend\actions\RecycleAction;

/**
 * UserController implements the CRUD actions for User model.
 */
class UserController extends Controller
{
    /**
     * @inheritdoc
      * 强制使用post进行删除操作，post受csrf保护
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::class,
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }
    
    public function actions()
    {
        $request = Yii::$app->getRequest();
        return [
            'check' => [
                'class' => CheckAction::class,
                'className' => User::class,
                'kid' => $request->get('kid'),
                'openName' => '正常',
                'closeName' => '禁止',
            ],
            'batch' => [
                'class' => BatchAction::class,
                'className' => User::class,
                'type' => $request->get('type'),
                'stateField' => 'delstate',
                'timeField' => 'deltime',
            ],
            //垃圾管理
            'recycle' => [
                'class' => RecycleAction::class,
                'className' => User::class,
                'fieldName' => 'username',
                'type' => $request->get('type'),
                'field' => 'delstate',
            ],
            'fileupload' => [
                'class' => FileUploadAction::class,
                'uploadName' => 'avatar',
                'folder' => AliyunOss::OSS_DEFAULT.'/user',
            ],
        ];
    }

    /**
     * Lists all User models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new UserSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Creates a new User model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new User();
        $model->loadDefaultValues();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
        	Yii::$app->getSession()->setFlash('success', $model->username.' 添加成功，结果将展示在列表。');
            return $this->redirect(['index']);
        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing User model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param string $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
        	Yii::$app->getSession()->setFlash('success', $model->username.' 已经修改成功！');
            return $this->redirect(['index']);
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }
    
    /**
     * Deletes an existing User model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param string $id
     * @return mixed
     */
    public function actionCheck($id)
    {
        $model = $this->findModel($id);
        $model->status = !$model->status;
        $model->save(false);//效果在界面上有显示

        return $this->redirect(['index']);
    }

    /**
     * Deletes an existing User model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param string $id
     * @return mixed
     */
    public function actionDelete($id, $returnUrl = ['index'])
    {
        $model = $this->findModel($id);
        //$model->touch('deltime');
        $model->updateAttributes(['deltime' => time(), 'delstate' => User::IS_DEL]);//标记为垃圾
        
        if(Yii::$app->getRequest()->isAjax) {
            return $this->asJson([
                'state' => true,
                'msg' => $model->username.' 已经移到垃圾桶！',
            ]);
        }
        
        Yii::$app->getSession()->setFlash('success', $model->username.' 已经移到垃圾桶！');
        return $this->redirect($returnUrl);
    }

    /**
     * Finds the User model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param string $id
     * @return User the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = User::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('此请求页面不存在。');
        }
    }
}
