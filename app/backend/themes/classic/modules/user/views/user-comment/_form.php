<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\Url;
use app\widgets\Tips;
use app\components\ActiveRecord;
use app\assets\ValidationAsset;
use app\models\user\UserComment;
use app\widgets\laydate\LaydateWidget;
use app\widgets\ueditor\UEditorWidget;
use app\models\cms\Column;

/* @var $this yii\web\View */
/* @var $model app\models\user\UserComment */
/* @var $form yii\widgets\ActiveForm */

ValidationAsset::register($this);

$this->registerJs('
var validator = $("#createform").validate({
	rules: {
		"'.Html::getInputName($model, 'uc_typeid').'": {
			required: true,
		},
        "'.Html::getInputName($model, 'uc_model_id').'": {
			required: true,
		}
	},
    errorElement: "p",
	errorPlacement: function(error, element) {
		error.appendTo(element.parent());
	}
});
');
?>

<?= Tips::widget([
    'type' => 'error',
    'model' => $model,
    'closeBtn' => false,
]) ?>

<?php $form = ActiveForm::begin([
    'enableClientScript' => false,
    'options' => ['id' => 'createform'],
]); ?>
    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="user-comment-form form-table">
    	<tr>
    		<td class="first-column"><?= $model->getAttributeLabel('uc_model_id')?><?php if($model->isAttributeRequired('uc_model_id')) { ?><span class="maroon">*</span><?php } ?></td>
    		<td class="second-column">
    			<?= Html::activeInput('text', $model, 'uc_model_id', ['class' => 'input']) ?>
    			<?= Html::activeDropDownList($model, 'uc_typeid', Column::ColumnConvert('id2name'), ['class' => '']) ?>
    			<span class="cnote"></span>
    		</td>
    	</tr>
    	<tr>
    		<td class="first-column"><?= $model->getAttributeLabel('uc_pid')?><?php if($model->isAttributeRequired('uc_pid')) { ?><span class="maroon">*</span><?php } ?></td>
    		<td class="second-column">
    			<?= Html::activeInput('text', $model, 'uc_pid', ['class' => 'input']) ?>
    			<span class="cnote"></span>
    		</td>
    	</tr>
    	<tr>
    		<td class="first-column"><?= $model->getAttributeLabel('uid')?><?php if($model->isAttributeRequired('uid')) { ?><span class="maroon">*</span><?php } ?></td>
    		<td class="second-column">
    			<?= Html::activeInput('text', $model, 'uid', ['class' => 'input']) ?>
    			<span class="cnote"></span>
    		</td>
    	</tr>
    	<tr>
    		<td class="first-column"><?= $model->getAttributeLabel('uc_note')?><?php if($model->isAttributeRequired('uc_note')) { ?><span class="maroon">*</span><?php } ?></td>
    		<td class="second-column">
    			<?= UEditorWidget::widget([
    			    'model' => $model,
    			    'attribute' => 'uc_note',
                    'clientOptions' => [
                        'serverUrl' => Url::to(['ueditor']),
                        'initialContent' => '',
                        'initialFrameWidth' => '738',
                        'initialFrameHeight' => '280',
                        'toolbars' => [
                            [
                                'fullscreen', 'source', '|',
                                'undo', 'redo', '|',
                                'bold', 'italic', 'underline', 'forecolor', 'backcolor', 'insertorderedlist', 'insertunorderedlist', '|',
                                'indent', 'justifyleft', 'justifycenter', 'justifyright', 'justifyjustify', '|',
                                'fontfamily', 'fontsize', '|','removeformat'
                            ],
                        ]
                    ],
                    //'readyEvent' => 'alert(\'abc\');console.log(ue);',
                ]); ?>
    			<span class="cnote"></span>
    		</td>
    	</tr>
    	<tr>
    		<td class="first-column"><?= $model->getAttributeLabel('uc_reply')?><?php if($model->isAttributeRequired('uc_reply')) { ?><span class="maroon">*</span><?php } ?></td>
    		<td class="second-column">
    			<?= UEditorWidget::widget([
    			    'model' => $model,
    			    'attribute' => 'uc_reply',
                    'clientOptions' => [
                        'serverUrl' => Url::to(['ueditor']),
                        'initialContent' => '',
                        'initialFrameWidth' => '738',
                        'initialFrameHeight' => '280',
                        'toolbars' => [
                            [
                                'fullscreen', 'source', '|',
                                'undo', 'redo', '|',
                                'bold', 'italic', 'underline', 'forecolor', 'backcolor', 'insertorderedlist', 'insertunorderedlist', '|',
                                'indent', 'justifyleft', 'justifycenter', 'justifyright', 'justifyjustify', '|',
                                'fontfamily', 'fontsize', '|','removeformat'
                            ],
                        ]
                    ],
                    //'readyEvent' => 'alert(\'abc\');console.log(ue);',
                ]); ?>
    			<span class="cnote"></span>
    		</td>
    	</tr>
    	<tr>
    		<td class="first-column"><?= $model->getAttributeLabel('reply_time')?><?php if($model->isAttributeRequired('reply_time')) { ?><span class="maroon">*</span><?php } ?></td>
    		<td class="second-column">
    			<?= LaydateWidget::widget([
    			    'model' => $model,
    			    'attribute' => 'reply_time',
    			    'options' => ['class' => 'inputms'],
    			]) ?>
    			<span class="cnote"></span>
    		</td>
    	</tr>
    	<tr>
    		<td class="first-column"><?= $model->getAttributeLabel('created_at')?><?php if($model->isAttributeRequired('created_at')) { ?><span class="maroon">*</span><?php } ?></td>
    		<td class="second-column">
    			<?= LaydateWidget::widget([
    			    'model' => $model,
    			    'attribute' => 'created_at',
    			    'options' => ['class' => 'inputms'],
    			]) ?>
    			<span class="cnote"></span>
    		</td>
    	</tr>
    	<tr>
			<td class="first-column"><?= $model->getAttributeLabel('status')?><?php if($model->isAttributeRequired('status')) { ?><span class="maroon">*</span><?php } ?></td>
			<td class="second-column">
				<?= Html::activeRadioList($model, 'status', [
				    UserComment::STATUS_ON => '显示',
				    UserComment::STATUS_OFF => '隐藏',
				], ['tag' => 'span', 'separator' => '&nbsp;&nbsp;&nbsp;']);
				?>
				<span class="cnote"></span>
			</td>
		</tr>
    	<tr class="nb">
    		<td></td>
    		<td>
    			<div class="form-sub-btn">
            		<?= Html::submitButton('提交', ['class' => 'submit', 'id' => 'submit-btn']) ?>
            		<?= Html::input('button', 'backName', '返回', ['class' => 'back', 'onclick' => 'location.href="'.Url::to(['index']).'"']) ?>
            	</div>
    		</td>
    	</tr>
	</table>
<?php ActiveForm::end(); ?>