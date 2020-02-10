<?php
/**
 * @link http://www.turen2.com/
 * @copyright Copyright (c) 土人开源CMS
 * @author developer qq:980522557
 */
use yii\helpers\Html;
use yii\helpers\Url;
use yii\widgets\LinkPager;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use backend\models\cms\DiyField;
use backend\models\cms\Column;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\cms\DiyFieldSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = '自定义字段';
$this->topFilter = $this->render('_filter', ['model' => $searchModel, 'type' => null]);
$this->topAlert = '<div class="alert alert-warning">注意：编辑字段时一定要保证对应的字段没有内容，系统不会自动判断。</div>';
?>

<?= $this->render('_search', ['model' => $searchModel]); ?>

<?php $form = ActiveForm::begin([
    'enableClientScript' => false,
    'options' => ['id' => 'batchform'],
]); ?>
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="data-table">
	<tr align="left" class="head">
		<td width="4%" class="first-column"><input type="checkbox" name="checkid" id="checkid" onclick="turen.com.checkAll(this.checked);"></td>
		<td width="4%">ID</td>
		<td width="12%"><?= $dataProvider->sort->link('fd_title', ['label' => '字段标题']) ?></td>
		<td width="11%"><?= $dataProvider->sort->link('fd_name', ['label' => '字段名']) ?></td>
		<td width="7%">所属模型</td>
		<td width="12%">所属栏目</td>
		<td width="7%">字段类型</td>
		<td width="7%">限制条件</td>
		<td width="10%" align="center"><?= $dataProvider->sort->link('orderid', ['label' => '排序']) ?></td>
		<td width="25%" class="end-column">操作</td>
	</tr>
	<?php foreach ($dataProvider->getModels() as $key => $model) {
		$options = [
	        'title' => '点击进行显示和隐藏操作',
	        'data-url' => Url::to(['check', 'kid' => $model->id]),
	        'onclick' => 'turen.com.updateStatus(this)',
        ];
		$checkstr = Html::a(($model->status?'启用':'禁用'), 'javascript:;', $options);
		
		$options = [
		    'title' => '（自定义模型专用）点击进行显示和隐藏操作',
		    'data-url' => Url::to(['list-check', 'kid' => $model->id]),
		    'onclick' => 'turen.com.updateStatus(this)',
		];
		$checkstr .= '</span> | <span>'.Html::a(($model->list_status?'列表显示':'列表隐藏'), 'javascript:;', $options);
		
		
		$options = [
    		'data-url' => Url::to(['delete', 'id' => $model->id, 'returnUrl' => Url::current()]),
		    'onclick' => 'turen.com.deleteItem(this, \''.$model->fd_title.'\')',
		];
		$delstr = Html::a('删除', 'javascript:;', $options);
	?>
	<tr align="left" class="data-tr">
		<td width="4%" class="first-column">
			<input type="checkbox" name="checkid[]" id="checkid[]" value="<?= $model->id; ?>">
		</td>
		<td class="first-column"><?= $model->id; ?></td>
		<td><?= $model->fd_title; ?></td>
		<td><?= DiyField::FIELD_PRE.$model->fd_name; ?></td>
		<td><?= Column::ColumnConvert('id2name', $model->fd_column_type); ?></td>
		<td><?= implode('<br />', ArrayHelper::map($model->columnListStr(), 'id', 'cname')); ?></td>
		<td><?= $model->fd_type ?><?= in_array($model->fd_type, ['text', 'mediumtext', 'filearr'])?'':'['.$model->fd_long.']'; ?></td>
		<td><?= DiyField::RuleList($model->fd_check) ?></td>
		<td align="center">
			<a href="<?=Url::to(['quick-move', 'type' => DiyField::ORDER_UP_TYPE, 'kid' => $model->id, 'orderid' => $model->orderid])?>" class="left-arrow" title="提升排序"></a>
			<input type="text" name="orderid[]" id="orderid[]" class="inputls" value="<?= $model->orderid; ?>">
			<a href="<?=Url::to(['quick-move', 'type' => DiyField::ORDER_DOWN_TYPE, 'kid' => $model->id, 'orderid' => $model->orderid])?>" class="right-arrow" title="下降排序"></a>
		</td>
		<td class="action end-column"><span><?= $checkstr; ?></span> | <span><a href="<?= Url::to(['update', 'id' => $model->id]) ?>">修改</a></span> | <span class="nb"><?= $delstr; ?></span></td>
	</tr>
	<?php } ?>
</table>
<?php ActiveForm::end(); ?>

<?php //判断无记录样式
if(empty($dataProvider->count))
{
	echo '<div class="data-empty">暂时没有相关的记录</div>';
}
?>

<div class="bottom-toolbar clearfix">
	<span class="sel-area">
    	<span class="sel-name">选择：</span> 
    	<a href="javascript:turen.com.checkAll(true);">全选</a> - 
    	<a href="javascript:turen.com.checkAll(false);">反选</a>
    	<span class="op-name">操作：</span>
    	<a href="javascript:turen.com.batchSubmit('<?=Url::to(['batch', 'type' => 'order'])?>', 'batchform');">排序</a>
	</span>
	<?= Html::a('添加新字段', ['create'], ['class' => 'data-btn']) ?>
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
            	<span class="sel-name">选择：</span> 
            	<a href="javascript:turen.com.checkAll(true);">全选</a> - 
            	<a href="javascript:turen.com.checkAll(false);">反选</a>
            	<span class="op-name">操作：</span>
            	<a href="javascript:turen.com.batchSubmit('<?=Url::to(['batch', 'type' => 'order'])?>', 'batchform');">排序</a>
            	<span class="total">共 <?= $dataProvider->getTotalCount() ?> 条记录</span>
        	</span>
			<?= Html::a('添加新字段', ['create'], ['class' => 'data-btn']) ?>
			<span class="page-small">
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
			</span>
		</div>
		<div class="quick-area-bg"></div>
	</div>
</div>
<p class="cp tc"><?= Yii::$app->params['config_copyright'] ?></p>

