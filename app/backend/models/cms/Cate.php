<?php
/**
 * @link http://www.turen2.com/
 * @copyright Copyright (c) 土人开源CMS
 * @author developer qq:980522557
 */
namespace backend\models\cms;

use Yii;
use yii\helpers\ArrayHelper;
use yii\behaviors\TimestampBehavior;
use yii\db\ActiveRecord;
use backend\behaviors\InsertLangBehavior;
use backend\behaviors\OrderDefaultBehavior;

/**
 * This is the model class for table "{{%cms_cate}}".
 *
 * @property string $id 二级类别id
 * @property string $parentid 类别上级id
 * @property string $parentstr 类别上级id字符串
 * @property string $catename 类别名称
 * @property string $orderid 排列排序
 * @property int $status 审核状态
 * @property string $lang 多语言
 */
class Cate extends \backend\models\base\Cms
{
	public $keyword;
	
	public $level;
	
	private static $_allCate = [];

	public function behaviors()
	{
	    return [
	        'timemap' => [
	            'class' => TimestampBehavior::class,
	            'createdAtAttribute' => 'created_at',
	            'updatedAtAttribute' => 'updated_at'
	        ],
	        'insertLang' => [//自动填充多站点和多语言
	            'class' => InsertLangBehavior::class,
	            'insertLangAttribute' => 'lang',
	        ],
	        //动态值由此属性行为处理
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
        return '{{%cms_cate}}';
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
            [['parentid', 'orderid', 'orderid', 'status'], 'integer'],
            [['parentid', 'catename'], 'required'],
            [['parentstr', 'keywords'], 'string', 'max' => 50],
            [['catename'], 'string', 'max' => 30],
            [['lang'], 'string', 'max' => 8],
            [['linkurl', 'description'], 'string', 'max' => 255],
            [['seotitle'], 'string', 'max' => 80],
            //静态默认值由规则来赋值
            [['status'], 'default', 'value' => self::STATUS_ON],
            ['parentid', 'validateParentIdIsNotSelf'],
        ];
    }
    
    /**
     * 上级验证
     * @param string $attribute
     * @param [] $params
     */
    public function validateParentIdIsNotSelf($attribute, $params)
    {
        if (!$this->hasErrors()) {
            if($this->id == $this->parentid) {
                $this->addError($attribute, '所属上级不能指向自身。');
            }
        }
        
        //不允许把自己插入到自己的下级里面
        $children = Cate::find()->select('id')->current()->where(['like', 'parentstr', ','.$this->id.','])->asArray()->all();
        if(!empty($children) && in_array($this->parentid, ArrayHelper::getColumn($children, 'id'))) {
            $this->addError($attribute, '不能将当前项移入到自己的下级。');
        }
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => '所属类别',
            'parentid' => '所属上级类别',
            'parentstr' => '上级所属类别字符串',
            'catename' => '类别名称',
            'linkurl' => '跳转链接',
            'seotitle' => 'SEO标题',
            'keywords' => 'SEO关键词',
            'description' => 'SEO描述', 
            'orderid' => '排列排序',
            'status' => '审核状态',
            'lang' => '多语言',
        ];
    }
    
    public function beforeSave($insert)
    {
        if (!parent::beforeSave($insert)) {
            return false;
        }
        
        //添加和编辑，都要处理parentstr
        $this->parentstr = $this->initParentStr('id', 'parentid', 'parentstr');
        
        return true;
    }
    
    /**
     * 获取所有类别列表
     * @return array
     */
    public static function CateList() {
        if(empty(self::$_allCate)) {
            self::$_allCate = self::find()->current()->orderBy(['orderid' => SORT_DESC])->asArray()->all();
            foreach (self::$_allCate as $cate) {
                self::$_allCate[$cate['id']] = $cate;
            }
        }
        
        return self::$_allCate;
    }
    
    /**
     * 类别名称
     * @param integer $cateid
     * @return string|string|mixed
     */
    public static function CateName($cateid = null) {
        $name = '未定义';
        $cateList = self::CateList();
        if(is_null($cateid)) {
            return $name;
        } else {
            return isset($cateList[$cateid])?$cateList[$cateid]['catename']:$name;
        }
    }

    /**
     * @inheritdoc
     * @return CateQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new CateQuery(get_called_class());
    }
}
