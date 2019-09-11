<?php
/**
 * @link http://www.turen2.com/
 * @copyright Copyright (c) 土人开源CMS
 * @author developer qq:980522557
 */
namespace app\controllers;

class CalculatorController extends \app\components\Controller
{
    /**
     * 计算器，计算所有项目的价格，并提交邮件快速预约
     * @return string
     */
    public function actionIndex()
    {
        return $this->render('index');
    }

    /**
     * 预约订单
     * @return string
     */
    public function actionPreOder()
    {
        return $this->render('pre-order');
    }
}
