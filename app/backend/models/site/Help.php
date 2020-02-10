<?php
/**
 * @link http://www.turen2.com/
 * @copyright Copyright (c) 土人开源CMS
 * @author developer qq:980522557
 */
namespace backend\models\site;

use Yii;
use yii\helpers\ArrayHelper;
use yii\behaviors\TimestampBehavior;
use yii\behaviors\AttributeBehavior;
use yii\db\ActiveRecord;
use backend\widgets\select2\TaggableBehavior;
use backend\widgets\laydate\LaydateBehavior;
use backend\widgets\fileupload\MultiPicBehavior;
use backend\behaviors\HelpFlagBehavior;
use backend\behaviors\HelpCateBehavior;
use backend\behaviors\OrderDefaultBehavior;

/**
 * This is the model class for table "{{%site_help}}".
 *
 * @property string $id 列表信息id
 * @property int $cateid 类别id
 * @property int $catepid 所属类别上级id
 * @property string $catepstr 所属类别上级id字符串
 * @property string $title 标题
 * @property string $colorval 字体颜色
 * @property string $boldval 字体加粗
 * @property string $flag 属性
 * @property string $author 作者编辑
 * @property string $linkurl 跳转链接
 * @property string $keywords 关键词
 * @property string $description 摘要
 * @property string $content 详细内容
 * @property string $picurl 缩略图片
 * @property string $picarr 组图
 * @property string $hits 点击次数
 * @property string $orderid 排列排序
 * @property int $posttime 发布时间
 * @property int $status 审核状态
 */
class Help extends \backend\models\base\Site
{
	public $keyword;

	public function behaviors()
	{
	    return [
	        'flagMark' => [
	            'class' => HelpFlagBehavior::class,
	        ],
	        'productCate' => [
	            'class' => HelpCateBehavior::class,
	        ],
	        'taggabble' => TaggableBehavior::class,//tags
	        'posttime' => [
	            'class' => LaydateBehavior::class,
	            'timeAttribute' => 'posttime',
	        ],
	        'picarr' => [
	            'class' => MultiPicBehavior::class,
	            'picsAttribute' => 'picarr',
	        ],
	        'timemap' => [
	            'class' => TimestampBehavior::class,
	            'createdAtAttribute' => 'created_at',
	            'updatedAtAttribute' => 'updated_at'
	        ],
	        //动态值由此属性行为处理
	        'defaultPosttime' => [
	            'class' => TimestampBehavior::class,
	            'createdAtAttribute' => 'posttime',
	            'updatedAtAttribute' => false,
	        ],
	        'defaultOrderid' => [
	            'class' => OrderDefaultBehavior::class,
            ],
	    ];
	}
	
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%site_help}}';
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
            [['cateid', 'title'], 'required'],
            [['catepid', 'hits', 'orderid', 'status', 'posttime'], 'integer'],
            [['catepstr', 'title'], 'string', 'max' => 80],
            [['colorval', 'boldval'], 'string', 'max' => 10],
            [['keywords'], 'string', 'max' => 50],
            [['linkurl', 'description'], 'string', 'max' => 255],
            [['content', 'picurl', 'flag'], 'string'],
            [['author'], 'default', 'value' => $this->getAdmin()->username],
            //静态默认值由规则来赋值
            [['status'], 'default', 'value' => self::STATUS_ON],
            [['picarr'], 'default', 'value' => ''],
            [['hits'], 'default', 'value' => Yii::$app->params['config.hits']],
            [['tagNames', 'picarr', 'keyword'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => '列表信息ID',
            'cateid' => '所属类别',
            'title' => '帮助标题',
            'colorval' => '字体颜色',
            'boldval' => '字体加粗',
            'flag' => '展示标记',
            'tags' => '标签',
            'author' => '作者编辑',
            'linkurl' => '跳转链接',
            'keywords' => 'SEO关键词',
            'description' => 'SEO摘要',
            'content' => '详细内容',
            'picurl' => '缩略图片',
            'picarr' => '组图',
            'hits' => '点击次数',
            'orderid' => '排列排序',
            'posttime' => '发布时间',
            'status' => '审核状态',
        ];
    }
    
    /**
     * @inheritdoc
     * @return HelpQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new HelpQuery(get_called_class());
    }
}
