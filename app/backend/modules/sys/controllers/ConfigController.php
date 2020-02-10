<?php
/**
 * @link http://www.turen2.com/
 * @copyright Copyright (c) 土人开源CMS
 * @author developer qq:980522557
 */
namespace backend\modules\sys\controllers;

use Yii;
use common\components\AliyunOss;
use backend\models\sys\Config;
use backend\widgets\fileupload\FileUploadAction;

class ConfigController extends \backend\components\Controller
{
    protected $_configs = [];
    
    public function init()
    {
        parent::init();
        
        //当前站点指定的语言站配置参数
        foreach (Config::ConfigArray() as $config) {
            $this->_configs[$config['vargroup']][] = $config;
        }
    }
    
    public function actions()
    {
        $request = Yii::$app->getRequest();
        return [
            'fileupload' => [
                'class' => FileUploadAction::class,
                'uploadName' => 'logourl',
                'folder' => AliyunOss::OSS_DEFAULT.'/config',
            ],
        ];
    }
    
    /**
     * 查看配置
     * @return string
     */
    public function actionSetting()
    {
        return $this->render('setting', [
            'configs' => $this->_configs,
            'model' => new Config(),
        ]);
    }
    
    /**
     * 批量更新，跳转到默认setting
     * @return \yii\web\Response
     */
    public function actionBatch()
    {
//         if(Yii::$app->request->isPost) {
//             var_dump(Yii::$app->request->post());
//             exit;
//         }
        
        //批量更新
        if (Yii::$app->request->isPost && Config::batchSave(Yii::$app->request->post())) {
            Yii::$app->getSession()->setFlash('success', '站点配置保存成功。');
        }
        
        return $this->redirect(['setting']);
    }
    
    /**
     * 添加新配置，跳转到默认setting
     * @return \yii\web\Response
     */
    public function actionCreate()
    {
        $model = new Config();
        $model->loadDefaultValues();
        //参数新增
        if ($model->load(Yii::$app->request->post())) {
            if($model->save()) {
                //修改配置名
                Config::updateAll(['varname' => 'config_'.$model->varname], ['varname' => $model->varname]);
                //更新缓存
                //Config::UpdateCache();
                
                Yii::$app->getSession()->setFlash('success', $model->varinfo.' 已经添加成功！');
                return $this->redirect(['setting']);
            }
        }
        //var_dump($model->getErrors());exit;
        
        return $this->render('create', [
            'configs' => $this->_configs,
            'model' => $model,
        ]);
    }
}