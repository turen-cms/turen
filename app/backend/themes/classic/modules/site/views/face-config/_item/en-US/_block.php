<?php
/**
 * @link http://www.turen2.com/
 * @copyright Copyright (c) 土人开源CMS
 * @author developer qq:980522557
 */

use app\models\cms\Block;
use yii\helpers\ArrayHelper;
use yii\helpers\Html;

$blockArray =  ArrayHelper::map(Block::find()->current()->orderBy(['updated_at' => SORT_DESC])->asArray()->all(), 'id', 'title');
?>

<?php
//-----------------------------------------------
$name = '';
$value = isset($config[$name])?$config[$name]:null;
?>

绑定碎片
