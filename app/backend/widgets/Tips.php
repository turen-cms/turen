<?php 
/**
 * @link http://www.turen2.com/
 * @copyright Copyright (c) 土人开源CMS
 * @author developer qq:980522557
 */
namespace backend\widgets;

use Yii;

use yii\base\Widget;

class Tips extends Widget
{
    public $type = 'error';
    
    public $model;
    
    public $closeBtn = true;

    public function init()
    {
        parent::init();

    }
    
    public function run()
    {
        if($this->model->hasErrors()) {
            $str = '<div class="alert alert-'.$this->type.'" role="alert">';
            $str .= '<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>';
            $str .= '<ul>';
            
            $summaries = array_reverse($this->model->getErrorSummary(true));
            foreach ($summaries as $summary) {
                $str .= '<li>'.$summary.'</li>';
            }
            
            $str .= '</ul>';
            $str .= '</div>';
            
            echo $str;
        }
    }
}