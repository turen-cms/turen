<?php
/**
 * @link http://www.turen2.com/
 * @copyright Copyright (c) 土人开源CMS
 * @author developer qq:980522557
 */
use yii\helpers\Html;
use yii\widgets\Breadcrumbs;
use yii\helpers\Url;


/* @var $this yii\web\View */
/* @var $model app\models\tool\NotifyContent */

$this->title = '添加新通知内容';
?>
<div class="notify-content-create">
    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>
</div>