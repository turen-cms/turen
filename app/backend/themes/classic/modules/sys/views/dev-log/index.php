<?php
/**
 * @link http://www.turen2.com/
 * @copyright Copyright (c) 土人开源CMS
 * @author developer qq:980522557
 */
use yii\helpers\Html;
use yii\widgets\Breadcrumbs;
use yii\helpers\Url;
use yii\widgets\LinkPager;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\sys\DevlogSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = '系统开发日志';
?>

<div class="dev-log">
    <p class="upgradelog"><i class="fa fa-code"></i> <?= Yii::$app->params['config_site_name'] ?>历史开发日志</p>
    
	<?php foreach ($dataProvider->getModels() as $key => $model) { ?>
	<div class="panel">
        <div class="panel-heading"><a href="<?= Url::to(['update', 'id' => $model->log_id]) ?>"><?= $model->log_name; ?></a> <?= $model->log_code; ?><span class="pull-right" style="font-size: 12px;"><?= Yii::$app->getFormatter()->asDate($model->log_time); ?></span></div>
        <div class="panel-body">
            <?= str_replace(['-新增', '-修复', '-优化', '-删除'], ['<i class="fa fa-circle-o"></i> 新增', '<i class="fa fa-circle-o"></i> 修复', '<i class="fa fa-circle-o"></i> 优化', '<i class="fa fa-circle-o"></i> 删除'], $model->log_note); ?>
        </div>
    </div>
	<?php } ?>
	
    <?php //判断无记录样式
    if(empty($dataProvider->count)) {
    	echo '<div class="data-empty">暂时没有相关的记录</div>';
    }
    ?>
</div>

<div class="bottom-toolbar clearfix">
	<span class="sel-area">
    	<span class="total">共 <?= $dataProvider->getTotalCount() ?> 条记录</span>
	</span>
	<div style="max-width: 950px;"><?= Html::a('添加开发日志', ['create'], ['class' => 'data-btn']) ?></div>
	<div class="page">
    	<?= LinkPager::widget([
    	    'pagination' => $dataProvider->getPagination(),
    	    'options' => ['class' => 'page-list', 'tag' => 'div'],
    	    'activePageCssClass' => 'on',
    	    'firstPageLabel' => '首页',
    	    'lastPageLabel' => '尾页',
    	    'nextPageLabel' => '下页',
    	    'prevPageLabel' => '上页',
    	    'linkContainerOptions' => ['tag' => 'span'],
    	]);
    	?>
    </div>
</div>

<div class="quick-toolbar">
	<div class="qiuck-warp">
		<div class="quick-area">
    		<span class="sel-area">
            	<span class="total">共 <?= $dataProvider->getTotalCount() ?> 条记录</span>
        	</span>
			<?= Html::a('添加新开发日志', ['create'], ['class' => 'data-btn']) ?>
			<div class="page-small">
			<?= LinkPager::widget([
			    'pagination' => $dataProvider->getPagination(),
			    'options' => ['class' => 'page-list', 'tag' => 'div'],
			    'activePageCssClass' => 'on',
			    'firstPageLabel' => '首页',
			    'lastPageLabel' => '尾页',
			    'nextPageLabel' => '下页',
			    'prevPageLabel' => '上页',
			    'linkContainerOptions' => ['tag' => 'span'],
			]);
			?>
			</div>
		</div>
		<div class="quick-area-bg"></div>
	</div>
</div>
<p class="cp tc"><?= Yii::$app->params['config_copyright'] ?></p>