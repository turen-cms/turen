<?php
/**
 * @link http://www.turen2.com/
 * @copyright Copyright (c) 土人开源CMS
 * @author developer qq:980522557
 */
namespace app\modules\user\controllers;

use Yii;
use app\models\user\Group;
use app\models\user\GroupSearch;
use app\components\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use app\actions\SimpleMoveAction;
use app\models\user\User;

/**
 * GroupController implements the CRUD actions for Group model.
 */
class GroupController extends Controller
{
    
    public function actions()
    {
        $request = Yii::$app->getRequest();
        return [
            //简单排序
            'quick-move' => [
                'class' => SimpleMoveAction::class,
                'className' => Group::class,
                'kid' => $request->get('kid'),
                'type' => $request->get('type'),
                'orderid' => $request->get('orderid'),
                'nameField' => 'ug_name',
            ],
        ];
    }
    
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
                    'batch' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Lists all Group models.
     * @return mixed
     */
    public function actionIndex()
    {
        if(Yii::$app->getRequest()->isPost) {
            $post = Yii::$app->getRequest()->post();
            
            $tip = '';
            if(isset($post['id'])) {
                $ids = $post['id'];
                $ug_names = $post['ug_name'];
                $orderids = $post['orderid'];
                
                for ($i = 0; $i < count($ids); $i++) {
                    if(isset($ug_names[$i]) && isset($orderids[$i])) {
                        //修改
                        $model = Group::find()->current()->andWhere(['ug_id' => $ids[$i]])->one();
                        $model && $model->updateAttributes([
                            'ug_name' => $ug_names[$i],
                            'orderid' => $orderids[$i],
                        ]);
                    }
                    $tip = '批量修改成功！';
                }
            }
            
            $ug_nameadd = $post['ug_nameadd'];
            $orderidadd = $post['orderidadd'];
            if(!empty($ug_nameadd)) {
                //新建
                $model = new Group();
                $model->ug_name = $ug_nameadd;
                $model->orderid = $orderidadd;
                $model->save();
                
                $tip .= ' '.$ug_nameadd.' 添加成功！';
            }
            
            !empty($tip) && Yii::$app->getSession()->setFlash('success', $tip);
            
            return $this->redirect(['index']);
        } else {
            $searchModel = new GroupSearch();
            $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
            
            return $this->render('index', [
                'searchModel' => $searchModel,
                'dataProvider' => $dataProvider,
            ]);
        }
        
        $searchModel = new GroupSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }
    
    /**
     * Deletes an existing Group model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param string $id
     * @return mixed
     */
    public function actionDelete($id, $returnUrl = ['index'])
    {
        $model = $this->findModel($id);
        
        $state = true;
        $msg = $model->ug_name.' 已经成功删除！';
        
        if($state && !empty($model->is_default)) {
            $state = false;
            $msg = $model->ug_name.' 为默认用户组不能删除！';
        }
        
        //有用户在此组
        if(User::find()->where(['ug_id' => $id])->exists()) {
            $state = false;
            $msg = $model->ug_name.' 已包含有用户，请先清理用户再来删除！';
        }
        
        if($state) {
            $model->delete();
        }
        
        if(Yii::$app->getRequest()->isAjax) {
            return $this->asJson([
                'state' => $state,
                'msg' => $msg,
            ]);
        }
        
        Yii::$app->getSession()->setFlash($state?'success':'warning', $msg);
        return $this->redirect($returnUrl);
    }
    
    /**
     * 设置为默认
     * @param integer $id
     * @param array $returnUrl
     * @return \yii\web\Response
     */
    public function actionSetDefault($id, $returnUrl = ['index'])
    {
        $model = $this->findModel($id);
        
        Group::updateAll(['is_default' => Group::STATUS_OFF], ['lang' => GLOBAL_LANG]);
        
        $model->is_default = Group::STATUS_ON;
        $model->save(false);//只更新一个字段，不需要影响到行为和事件
        
        Yii::$app->getSession()->setFlash('success', $model->ug_name.' 已经设为默认！');
        return $this->redirect($returnUrl);
    }
    
    /**
     * 批量提交并处理
     * @param string $type delete | order
     * @return \yii\web\Response
     */
    public function actionBatch($type)
    {
        if($type == 'delete') {
            $tips = '';
            foreach (Group::find()->current()->andWhere(['ug_id' => Yii::$app->getRequest()->post('checkid', [])])->all() as $model) {
                $model->delete();
                $tips .= '<li>'.$model->ug_name.' 删除成功！</li>';
            }
            Yii::$app->getSession()->setFlash('success', '<ul>'.$tips.'</ul>');
        } elseif($type == 'order') {//全局提交
            $ids = Yii::$app->getRequest()->post('checkid', []);
            $orders = Yii::$app->getRequest()->post('orderid', []);
            foreach ($ids as $key => $id) {
                if($model = Group::find()->current()->andWhere(['ug_id' => $id])->one()) {
                    $model->orderid = $orders[$key];
                    $model->save(false);
                }
            }
            Yii::$app->getSession()->setFlash('success', '已完成批量排序操作！');
        }
        
        return $this->redirect(['index']);
    }

    /**
     * Finds the Group model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param string $id
     * @return Group the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Group::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('请求页面不存在！');
        }
    }
}
