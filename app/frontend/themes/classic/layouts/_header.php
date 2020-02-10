<?php
/**
 * @link http://www.turen2.com/
 * @copyright Copyright (c) 土人开源CMS
 * @author developer qq:980522557
 */
use common\models\cms\Block;
use common\models\ext\Nav;
use common\helpers\ImageHelper;
use common\models\user\User;
use yii\helpers\HtmlPurifier;
use yii\helpers\Url;
use app\assets\LimarqueeAsset;

$webUrl = Yii::getAlias('@web/');
LimarqueeAsset::register($this);
$js = <<<EOF
$('.scroll-note').liMarquee({
    scrollamount: 30,
    //circular: false,//非无疑滚动
    drag: false,//禁止拖动
    runshort: false//内容不足不滚动
});
EOF;
$this->registerJs($js);
?>

<div class="header">
    <div class="head head-top">
        <div class="container clearfix">
        	<div class="head-note fl">
                <span class="fl">
                    <i class="iconfont jia-notice"></i>
                    <span class="primary-color">公告：</span>
                </span>
                <span class="scroll-note fl">
                <?php
                $blockModel = Block::find()->current()->where(['id' => Yii::$app->params['config_face_cn_left_top_block_id']])->one();
                if($blockModel) {
                    echo HtmlPurifier::process($blockModel->content, function($config) {
                        $config->set('HTML.Allowed', 'a[href]');
                        $config->set('HTML.TargetBlank', true);
                        $config->set('AutoFormat.RemoveEmpty', true);
                    });
                } else {
                    echo '<span>请创建简码为“top_note”的碎片。</span>';
                }
                ?>
                </span>
            </div>
        	<ul class="head-list fr">
                <?php if(Yii::$app->getUser()->isGuest) { ?>
                    <li><a href="<?= Url::to(['/account/'.(Yii::$app->params['config_login_mode'] == User::USER_PHONE_MODE?'passport':'user').'/login']) ?>">请登录</a></li>
                    <li class="line">|</li>
                    <li><a href="<?= Url::to(['/account/'.(Yii::$app->params['config_login_mode'] == User::USER_PHONE_MODE?'passport':'user').'/signup']) ?>">免费注册</a></li>
                <?php } else { ?>
                    <li style="padding-right: 12px;">欢迎 <?= Yii::$app->getUser()->getIdentity()->username ?> [<a style="display: inline;padding: 0 2px 0 2px;" href="<?= Url::to(['/account/'.(Yii::$app->params['config_login_mode'] == User::USER_PHONE_MODE?'passport':'user').'/logout']) ?>" data-method="post">退出</a>]</li>
                <?php } ?>
                <li class="line">|</li>
                <li class="drop">
                    <a class="drop-title" href="<?= Url::to(['/account/center/info']) ?>">客户中心<b></b></a>
                    <div class="drop-content">
                        <a href="<?= Url::to(['/account/order/list']) ?>" rel="nofollow">服务订单</a>
                        <a href="<?= Url::to(['/account/ticket/list']) ?>" rel="nofollow">工单管理</a>
                        <a href="<?= Url::to(['/account/company/info']) ?>" rel="nofollow">企业资质</a>
<!--                        <a href="--><?php //echo Url::to(['/account/msg/list']) ?><!--" rel="nofollow">消息中心</a>-->
                    </div>
                </li>
                <li class="line">|</li>
                <li><a href="<?= Url::to(['/faqs/index']) ?>">常见问答</a></li>
                <li class="line">|</li>
                <li><a href="<?= Url::to(['/chexing/list']) ?>">高空车型介绍</a></li>
                <li class="line">|</li>
                <li><a href="<?= Url::to(['/calendar/index']) ?>">查询黄历</a></li>
            </ul>
        </div>
    </div>

    <div class="head head-bottom">
    	<div class="container clearfix">
    		<!-- logon -->
            <a href="<?= Yii::$app->homeUrl ?>" class="logo fl">
            	<img src="<?= empty(Yii::$app->params['config_frontend_logo'])?ImageHelper::getNopic():Yii::$app->aliyunoss->getObjectUrl(Yii::$app->params['config_frontend_logo'], true) ?>">
        	</a>
        	
            <!-- 主导航 -->
            <?php
            $menus = Nav::NavById(Yii::$app->params['config_face_cn_main_nav_id']);
            $mainNav = $menus['main'];
            $subNav = $menus['sub'];
            ?>
            <div class="nav fr">
                <ul class="fl">
                    <li>
                    	<a class="" href="<?= Yii::$app->homeUrl ?>">
                    		<span class="nav-title">首页</span>
                		</a>
            		</li>
                    <?php foreach ($mainNav as $item) { ?>
                    <li>
                        <a href="<?= $item->linkurl ?>"<?= empty($item->target)?'':' target='.$item->target ?><?= empty($subNav[$item->id])?'':(' class="have-sub" data-subid="'.$item->id.'"') ?>>
                            <span class="nav-title"><?= $item->menuname ?></span>
                            <?php if(!empty($item->picurl)) { ?>
                                <img class="label" src="<?= empty($item->picurl)?ImageHelper::getNopic():Yii::$app->aliyunoss->getObjectUrl($item->picurl, true) ?>">
                            <?php } ?>
                        </a>
                    </li>
                    <?php } ?>
                </ul>
                <div class="nav-qrcode">
                    <a href="javascript:;">
                        <i class="iconfont jia-Phone"></i>
                        <p class="nav-box nav-wap">
                            <img class="nav-qr" src="<?= empty(Yii::$app->params['config_mobile_qr'])?ImageHelper::getNopic():Yii::$app->aliyunoss->getObjectUrl(Yii::$app->params['config_mobile_qr'], true) ?>">
                            <br />
                            <span class="qr-txt">手机版访问</span>
                        </p>
                    </a>
                    <a href="javascript:;" style="display: none;">
                        <img class="wx" src="<?= $webUrl ?>images/common/nav_weixin.png">
                        <p class="nav-box nav-wx">
                            <img class="nav-qr" src="<?= empty(Yii::$app->params['config_mobile_qr'])?ImageHelper::getNopic():Yii::$app->aliyunoss->getObjectUrl(Yii::$app->params['config_mobile_qr'], true) ?>">
                            <br />
                            <span class="qr-txt">官方客服</span>
                        </p>
                    </a>
                </div>
            </div>
    	</div>
    </div>
</div>

<div class="nav-bg">
    <?php foreach ($subNav as $pid => $items) { ?>
    <ul class="header-nav-hide clearfix" id="sub-<?= $pid ?>" style="width: <?= count($items)*120 ?>px;">
    <?php $ii = 0;  ?>
    <?php foreach ($items as $item) { ?>
    <?php $ii++; ?>
        <li><a<?= (count($items) == $ii)?' class="last"':'' ?> href="<?= $item->linkurl ?>"<?= empty($item->target)?'':' target="'.$item->target.'"' ?> title="<?= $item->menuname ?>"><img src="<?= empty($item->picurl)?ImageHelper::getNopic():Yii::$app->aliyunoss->getObjectUrl($item->picurl, true) ?>" /><span><?= $item->menuname ?></span></a></li>
    <?php } ?>
    </ul>
    <?php } ?>
</div>