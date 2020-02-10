<?php
/**
 * @link http://www.turen2.com/
 * @copyright Copyright (c) 土人开源CMS
 * @author developer qq:980522557
 */
namespace backend\modules\shop\controllers;

use Yii;
use yii\filters\VerbFilter;
use yii\helpers\ArrayHelper;
use yii\web\NotFoundHttpException;
use backend\models\shop\Attribute;
use backend\models\shop\AttributeSearch;
use backend\components\Controller;
use backend\actions\CheckAction;
use backend\widgets\edititem\EditItemAction;

/**
 * AttributeController implements the CRUD actions for Attribute model.
 */
class AttributeController extends Controller
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
            'edit-item' => [
                'class' => EditItemAction::class,
                'className' => Attribute::class,
                'kid' => $request->post('kid'),
                'field' => 'orderid',
                'value' => $request->post('value'),
            ],
            'check' => [
                'class' => CheckAction::class,
                'className' => Attribute::class,
                'kid' => $request->get('kid'),
            ],
        ];
    }

    /**
     * Lists all Attribute models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new AttributeSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Creates a new Attribute model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate($pcateid = null)
    {
        $model = new Attribute();
        $model->loadDefaultValues();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
        	Yii::$app->getSession()->setFlash('success', $model->attrname.' 添加成功，结果将展示在列表。');
        	return $this->redirect(['index', 'AttributeSearch[pcateid]' => $model->pcateid]);
        } else {
            $maxRow = Attribute::find()->current()->orderBy(['orderid' => SORT_DESC])->one();
            if($maxRow) {
                $model->orderid = $maxRow['orderid'] + 1;
            }
            if(!is_null($pcateid)) {
                $model->pcateid= $pcateid;
            }
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing Attribute model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param string $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
        	Yii::$app->getSession()->setFlash('success', $model->attrname.' 已经修改成功！');
            return $this->redirect(['index', 'AttributeSearch[pcateid]' => $model->pcateid]);
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing Attribute model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param string $id
     * @return mixed
     */
    public function actionDelete($id, $returnUrl = ['index'])
    {
        $model = $this->findModel($id);
        $model->delete();
        
        if(Yii::$app->getRequest()->isAjax) {
            return $this->asJson([
                'state' => true,
                'msg' => $model->attrname.' 已经成功删除！',
            ]);
        }
        
        Yii::$app->getSession()->setFlash('success', $model->attrname.' 已经成功删除！');
        return $this->redirect($returnUrl);
    }
    
    /**
     * 批量提交并处理
     * @param string $type delete | order
     * @return \yii\web\Response
     */
    public function actionBatch($type)
    {
        $pcateid = null;
        if($type == 'delete') {
            $tips = '';
            foreach (Attribute::find()->current()->andWhere(['id' => Yii::$app->getRequest()->post('checkid', [])])->all() as $model) {
                $pcateid = $model->pcateid;
                $model->delete();
                $tips .= '<li>'.$model->attrname.' 删除成功！</li>';
            }
            Yii::$app->getSession()->setFlash('success', '<ul>'.$tips.'</ul>');
        }
        
        return $this->redirect(['index', 'AttributeSearch[pcateid]' => $pcateid]);
    }

    /**
     * Finds the Attribute model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param string $id
     * @return Attribute the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Attribute::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('此请求页面不存在。');
        }
    }
}
