<?php
/**
 * @link http://www.turen2.com/
 * @copyright Copyright (c) 土人开源CMS
 * @author developer qq:980522557
 */
use yii\helpers\Html;

use yii\web\YiiAsset;
use backend\assets\WebAsset;
use backend\assets\FontAwesomeAsset;
use backend\assets\NotifyAsset;

YiiAsset::register($this);
FontAwesomeAsset::register($this);
WebAsset::register($this);
?>

<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
    <head>
        <meta charset="<?= Yii::$app->charset ?>">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <?= Html::csrfMetaTags() ?>
        <title><?= Html::encode($this->title.' - '.Yii::$app->name)?></title>
        <link type="image/x-icon" href="./favicon.ico" rel="shortcut icon">
        <?php $this->head() ?>
    </head>
    <body>
    <?php $this->beginBody() ?>
    
    <?= $content ?>
    
    <?php $this->endBody(); ?>
    </body>
</html>
<?php $this->endPage(); ?>