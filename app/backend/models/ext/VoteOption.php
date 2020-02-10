<?php
/**
 * @link http://www.turen2.com/
 * @copyright Copyright (c) 土人开源CMS
 * @author developer qq:980522557
 */
namespace backend\models\ext;

use Yii;
use yii\helpers\ArrayHelper;

/**
 * This is the model class for table "{{%ext_vote_option}}".
 *
 * @property string $id 投票选项id
 * @property string $voteid 投票id
 * @property string $options 投票选项
 */
class VoteOption extends \backend\models\base\Ext
{
	public $keyword;

    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%ext_vote_option}}';
    }
    
    /**
     * 为联表操作做准备
     * {@inheritDoc}
     * @see \yii\db\ActiveRecord::attributes()
     */
    public function attributes()
    {
        return ArrayHelper::merge(parent::attributes(), ['keyword']);
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['voteid', 'options'], 'required'],
            [['voteid'], 'integer'],
            [['options'], 'string', 'max' => 30],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => '投票选项id',
            'voteid' => '投票id',
            'options' => '投票选项',
        ];
    }

    /**
     * @inheritdoc
     * @return VoteOptionQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new VoteOptionQuery(get_called_class());
    }
}
