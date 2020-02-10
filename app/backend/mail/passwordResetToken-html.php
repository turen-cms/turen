<?php
/**
 * @link http://www.turen2.com/
 * @copyright Copyright (c) 土人开源CMS
 * @author developer qq:980522557
 */
use yii\helpers\Html;
use yii\helpers\Url;

/* @var $this yii\web\View */
/* @var $user backend\modules\admin\models\User */

//$resetLink = Url::to(['merchant/common/reset-password','token'=>$password_reset_token], true);
?>
<div class="password-reset">
    <p>你好 <?= Html::encode($name) ?>,</p>

    <p>请点击下面链接重置密码:</p>

    <p><?= Html::a(Html::encode($resetLink), $resetLink) ?></p>
</div>
