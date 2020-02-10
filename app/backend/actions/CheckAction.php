<?php
/**
 * @link http://www.turen2.com/
 * @copyright Copyright (c) 土人开源CMS
 * @author developer qq:980522557
 */
namespace backend\actions;

use Yii;
use yii\base\Action;
use yii\base\InvalidArgumentException;
use backend\helpers\BackCommonHelper;
 
class CheckAction extends Action
{
    public $className;//要切换的模型
    public $kid;//主键id值
    
    public $openName = '显示';
    public $closeName = '隐藏';
    
    public $field = 'status';//指定要修改的字段名
    
    public function run()
    {
        //校验参数
        if(is_null($this->className) || is_null($this->kid) || is_null($this->field)) {
            throw new InvalidArgumentException('传递的参数有误。');
        }
        
        //状态切换
        $className = $this->className;
        $primayKey = $className::primaryKey()[0];
        
        $query = $className::find();
        if(BackCommonHelper::CheckFieldExist($className, 'lang')) {
            $query = $query->current();
        }
        
        $model = $query->where([$primayKey => $this->kid])->one();
        $model->{$this->field} = !$model->{$this->field};
        $model->save(false);//效果在界面上有显示
        
        $status = $model->{$this->field};
        
        if(Yii::$app->getRequest()->isAjax) {
            return $this->controller->asJson([
                'state' => true,
                'msg' => $status?$this->openName:$this->closeName,
            ]);
        }
        
        $this->controller->redirect(['index']);
    }
}