<?php
/**
 * @link http://www.turen2.com/
 * @copyright Copyright (c) 土人开源CMS
 * @author developer qq:980522557
 */
namespace app\controllers;

class CalendarController extends \app\components\Controller
{
    /**
     * 吉日日历
     * @return string
     */
    public function actionIndex()
    {
        return $this->render('index');
    }

}
