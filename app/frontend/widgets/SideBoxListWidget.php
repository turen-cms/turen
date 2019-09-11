<?php
/**
 * @link http://www.turen2.com/
 * @copyright Copyright (c) 土人开源CMS
 * @author developer qq:980522557
 */
namespace app\widgets;

use Yii;
use yii\base\InvalidConfigException;
use common\models\cms\Column;
use common\models\cms\Block;
use common\models\cms\Info;

/**
 * @author jorry
 * 本侧边栏widget可以支持：简单页面，文章，图片，文件下载，视频，碎片等系统默认的模型。
 */
class SideBoxListWidget extends \yii\base\Widget
{
    public $style = 'tab';//tab，gen两种展示风格
    public $htmlClass = '';
    public $title = '请填写标题';
    public $moreLink = '';

    public $columnType;//'info','article','photo','file','product','video','block'
    public $infoId;//单页面对应的columnid
    public $blockId;//碎片id

    public $flagName;//栏目标签
    public $columnId;//文章图片视频文件产品对应的columnid
    public $listNum = 10;//列表类型最多显示多少条信息
    public $route = ['/'];

    public function init()
    {
        parent::init();

        //检测参数
        if(empty($this->columnType)) {
            throw new InvalidConfigException(self::class.'参数配置有误。');
        }
    }
    
    public function run() {
        $content = $this->boxContent();
        return $this->render('side-box-list', [
            'style' => $this->style,
            'type' => $this->columnType,
            'htmlClass' => $this->htmlClass,//组合通用class名
            'title' => $this->title,
            'moreLink' => $this->moreLink,
            'content' => $content,//内容html对应的css由开发者单独自定义
        ]);
    }

    protected function boxContent()
    {
        //內容生成
        $content = '';
        switch ($this->columnType) {
            case 'info':
                if(empty($this->infoId)) {
                    throw new InvalidConfigException(self::class.'参数infoId配置有误。');
                }
                $infoArray = Info::find()->alias('i')->select(['c.cname as title', 'i.*'])
                    ->leftJoin(Column::tableName().' as c', 'c.id = i.columnid')
                    ->where(['c.id' => $this->infoId])->asArray()->one();

                $content = '';
                if($infoArray) {
                    $this->title = $infoArray['title'];
                    $content = $infoArray['content'];
                } else {
                    $this->title = $this->title.'内容为空';
                }
                break;
            case 'block':
                if(empty($this->blockId)) {
                    throw new InvalidConfigException(self::class.'参数blockId配置有误。');
                }
                $blockArray = Block::find()->where(['id' => $this->blockId])->asArray()->one();
                $content = '';
                if($blockArray) {
                    $this->title = $blockArray['title'];
                    $content = $blockArray['content'];
                } else {
                    $this->title = $this->title.'内容为空';
                }
                break;
            case 'article':
            case 'photo':
            case 'file':
            case 'product':
            case 'video':
            default://包括自定义模型
                $className = Column::ColumnConvert('mask2class', $this->columnType);
                if(empty($this->columnId) || empty($className)) {
                    throw new InvalidConfigException(self::class.'参数columnId配置有误。');
                }
                $content = $this->boxList($className);
                break;
        }

        return $this->render('_boxlist/_'.$this->columnType, ['content' => $content, 'route' => $this->route]);
    }

    /**
     * 列表类型内容
     * 'article':'photo':'file':'product':'video'
     * @return string
     */
    protected function boxList($className)
    {
        $query = $className::find()->where(['columnid' => $this->columnId]);
        if(!empty($this->flagName)) {
            $query->andFilterWhere(['like', 'flag', $this->flagName]);
        }
        $query->orderBy(['orderid' => SORT_DESC]);
        /*
        elseif($this->flagName == '最新') {
            $query->orderBy(['posttime' => SORT_DESC]);
        } elseif($this->flagName == '最热') {
            $query->orderBy(['hits' => SORT_DESC]);
        }
        */
        $query->limit($this->listNum);

        //echo $query->createCommand()->getRawSql();exit;

        return $query->asArray()->all();
    }
}
