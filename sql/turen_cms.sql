-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 10, 2020 at 07:09 PM
-- Server version: 5.7.27-log
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hbyaqiao_com`
--

-- --------------------------------------------------------

--
-- Table structure for table `ss_cascade`
--

CREATE TABLE `ss_cascade` (
  `id` smallint(5) UNSIGNED NOT NULL COMMENT '级联组id',
  `groupname` varchar(30) NOT NULL COMMENT '级联组名称',
  `groupsign` varchar(30) NOT NULL COMMENT '级联组标识',
  `orderid` smallint(5) UNSIGNED NOT NULL COMMENT '排列排序'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='级联表';

-- --------------------------------------------------------

--
-- Table structure for table `ss_cascade_data`
--

CREATE TABLE `ss_cascade_data` (
  `id` smallint(5) UNSIGNED NOT NULL COMMENT '级联数据id',
  `dataname` char(30) NOT NULL COMMENT '级联数据名称',
  `datavalue` char(20) NOT NULL COMMENT '级联数据值',
  `datagroup` char(20) NOT NULL COMMENT '所属级联组',
  `orderid` smallint(5) UNSIGNED NOT NULL COMMENT '排列排序',
  `level` tinyint(1) UNSIGNED NOT NULL COMMENT '级联数据层次'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='级联数据表';

-- --------------------------------------------------------

--
-- Table structure for table `ss_cms_article`
--

CREATE TABLE `ss_cms_article` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '列表信息id',
  `columnid` int(11) UNSIGNED DEFAULT NULL COMMENT '所属栏目id',
  `parentid` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '所属栏目上级id',
  `parentstr` varchar(80) NOT NULL DEFAULT '' COMMENT '所属栏目上级id字符串',
  `cateid` int(11) UNSIGNED DEFAULT NULL COMMENT '类别id',
  `catepid` int(11) UNSIGNED DEFAULT NULL COMMENT '类别父id',
  `catepstr` varchar(80) DEFAULT NULL COMMENT '所属类别上级id字符串',
  `title` varchar(80) NOT NULL DEFAULT '' COMMENT '标题',
  `slug` varchar(200) NOT NULL DEFAULT '' COMMENT '链接别名',
  `colorval` char(10) NOT NULL DEFAULT '' COMMENT '字体颜色',
  `boldval` char(10) NOT NULL DEFAULT '' COMMENT '字体加粗',
  `flag` varchar(30) DEFAULT NULL COMMENT '属性',
  `source` varchar(50) NOT NULL DEFAULT '' COMMENT '文章来源',
  `author` varchar(50) NOT NULL DEFAULT '' COMMENT '作者编辑',
  `linkurl` varchar(255) NOT NULL DEFAULT '' COMMENT '跳转链接',
  `keywords` varchar(50) NOT NULL DEFAULT '' COMMENT '关键词',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '摘要',
  `content` mediumtext COMMENT '详细内容',
  `picurl` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图片',
  `picarr` text COMMENT '组图',
  `hits` mediumint(8) UNSIGNED NOT NULL DEFAULT '100' COMMENT '点击次数',
  `orderid` int(10) UNSIGNED NOT NULL DEFAULT '10' COMMENT '排列排序',
  `posttime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '审核状态',
  `delstate` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '删除状态',
  `deltime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '删除时间',
  `lang` varchar(8) NOT NULL DEFAULT '' COMMENT '多语言',
  `created_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '添加时间',
  `updated_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '编辑时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章表';

--
-- Dumping data for table `ss_cms_article`
--

INSERT INTO `ss_cms_article` (`id`, `columnid`, `parentid`, `parentstr`, `cateid`, `catepid`, `catepstr`, `title`, `slug`, `colorval`, `boldval`, `flag`, `source`, `author`, `linkurl`, `keywords`, `description`, `content`, `picurl`, `picarr`, `hits`, `orderid`, `posttime`, `status`, `delstate`, `deltime`, `lang`, `created_at`, `updated_at`) VALUES
(27, 90, 84, '0,84,', NULL, NULL, NULL, '新手入门指导', 'xin-shou-ru-men-zhi-dao', '', '', '首推', '', 'admin', '', '高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '', '<p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">内容等待更新中...</span></p>', '', '', 839, 1100, 1507219200, 1, 0, 0, 'zh-CN', 1552100988, 1575384165),
(28, 90, 84, '0,84,', NULL, NULL, NULL, '注册/登录帐号', 'zhu-cedeng-lu-zhang-hao', '', '', '首推', '', 'admin', '', '高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '', '<p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">内容等待更新中...</span></p>', '', '', 701, 1000, 1556812800, 1, 0, 0, 'zh-CN', 1552101029, 1575384172),
(33, 90, 84, '0,84,', NULL, NULL, NULL, '亚桥租赁注册协议', 'user-protocol', '', '', '', '', 'admin', '', '高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '', '<p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">湖北亚桥机械租赁用户注册协议本协议是您与湖北亚桥机械租赁网站（简称&quot;本站&quot;）所有者（以下简称为&quot;湖北亚桥机械租赁&quot;）之间就湖北亚桥机械租赁网站服务等相关事宜所订立的契约，请您仔细阅读本注册协议，您点击&quot;同意并继续&quot;按钮后，本协议即构成对双方有约束力的法律文件。</span></p><p><strong><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br/></span></strong></p><p><strong><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">第1条 本站服务条款的确认和接纳</span></strong></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">1.1本站的各项电子服务的所有权和运作权归湖北亚桥机械租赁所有。用户同意所有注册协议条款并完成注册程序，才能成为本站的正式用户。用户确认：本协议条款是处理双方权利义务的契约，始终有效，法律另有强制性规定或双方另有特别约定的，依其规定。</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">1.2用户点击同意本协议的，即视为用户确认自己具有享受本站服务、下单购物等相应的权利能力和行为能力，能够独立承担法律责任。</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">1.3如果您在18周岁以下，您只能在父母或监护人的监护参与下才能使用本站。</span></p><p><strong><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br/></span></strong></p><p><strong><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">第2条 本站服务</span></strong></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">2.1湖北亚桥机械租赁通过互联网依法为用户提供互联网信息等服务，用户在完全同意本协议及本站规定的情况下，方有权使用本站的相关服务。2.2用户必须自行准备如下设备和承担如下开支：</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">（1）上网设备，包括并不限于电脑或者其他上网终端、调制解调器及其他必备的上网装置；</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">（2）上网开支，包括并不限于网络接入费、上网设备租用费、手机流量费等。</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br/></span></p><p><strong><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">第3条 用户信息</span></strong></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">3.1用户应自行诚信向本站提供注册资料，用户同意其提供的注册资料真实、准确、完整、合法有效，用户注册资料如有变动的，应及时更新其注册资料。如果用户提供的注册资料不合法、不真实、不准确、不详尽的，用户需承担因此引起的相应责任及后果，并且湖北亚桥机械租赁保留终止用户使用湖北亚桥机械租赁各项服务的权利。</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">3.2用户在本站进行浏览、下单购物等活动时，涉及用户真实姓名/名称、通信地址、联系电话、电子邮箱等隐私信息的，本站将予以严格保密，除非得到用户的授权或法律另有规定，本站不会向外界披露用户隐私信息。</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br/></span></p><p><strong><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">第4条 用户依法言行义务</span></strong></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">本协议</span><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">依据国家相关法律法规规章制定，用户同意严格遵守以下义务：</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">（1）不得传输或发表：煽动抗拒、破坏宪法和法律、行政法规实施的言论，煽动颠覆国家政权，推翻社会主义制度的言论，煽动分裂国家、破坏国家统一的的言论，煽动民族仇恨、民族歧视、破坏民族团结的言论；</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">（2）从中国大陆向境外传输资料信息时必须符合中国有关法规；</span></p><p><strong><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br/></span></strong></p><p><strong><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">第5条 其他</span></strong></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">5.1湖北亚桥机械租赁网站所有者是指在政府部门依法许可或备案的湖北亚桥机械租赁网站经营主体。</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">5.2您点击本协议下方的&quot;同意并继续&quot;按钮即视为您完全接受本协议，在点击之前请您再次确认已知悉并完全理解本协议的全部内容。</span></p><p><br/></p>', '', '', 1414, 900, 1488211200, 1, 0, 0, 'zh-CN', 1552201945, 1575382762),
(34, 79, 77, '0,84,77,', NULL, NULL, NULL, '2019年已过一半，下半年登高车租赁市场会怎么样？', '2019nian-yi-guo-yi-ban', '', '', '推荐', '', 'admin', '', '高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', ' 上半年国内登高车租赁市场遭遇租金下滑，租金下滑原因主要来自部分大租赁商拓展市场时采用“低价策略”。从2017年开始，每年都有个别大租赁公司的低价竞争现象，但今年对部分登高车车型的整体租金水平影响较大。', '<p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;2019年上半年已走完，下半年国内登高车租赁市场会怎么样？今天小编来复盘一下上半年登高车租赁市场，并给出下半年市场的几点预判：</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 上半年国内登高车租赁市场遭遇租金下滑，租金下滑原因主要来自部分大租赁商拓展市场时采用“低价策略”。从2017年开始，每年都有个别大租赁公司的低价竞争现象，但今年对部分登高车车型的整体租金水平影响较大。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255); text-align: center;\"><img alt=\"登高车用于工业厂房高空安装作业\" src=\"http://img888.hbyaqiao.com/cms-images/article/2019_12_01/8a15c8e1a76469a8a46dca9be7b37aed.jpg\"/></p><h2 style=\"white-space: normal; box-sizing: border-box; outline: 0px; margin: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; background-color: rgb(255, 255, 255);\"><br/>&nbsp;&nbsp;&nbsp; 登高车租金下滑，预示大租赁商拓展市场的步伐加快</h2><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 本质上，登高车租赁市场是一个典型的B2B市场，出租方都是租赁公司，承租方大多也是公司，而非个人，这与挖掘机租赁市场有很大差异。2B的市场更容易集中，更容易出现大租赁公司。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 大租赁公司的登高车租金定价成本和投资回报预期与一般中小公司差异较大，其登高车租金有较大的下浮空间，只要保障合适的出租率，获得充足的现金流，大租赁公司的投资收益将会有较好的可预期性。因此，为获得较好的出租率，低价竞争是较好的策略选择。租金的明显下滑，就是大租赁公司快速拓展市场的“号角”！</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 截止到2019年中，国内有一定规模的登高车租赁商超1000家，而目前国内登高车保有量约9.5万台，其中排名第一的租赁商宏信建发的设备台量已超1.1万台，占总体设备保有量的11%，千台以上机队规模租赁商约9家、设备约占33.7%，与国外结构相同，呈现“大头长尾”状态。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255); text-align: center;\"><img alt=\"2019年登高车租赁商市场\" src=\"http://img888.hbyaqiao.com/cms-images/article/2019_12_01/b70caf955fa8db587892c43e0b076e46.jpg\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255); text-align: center;\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\"><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 毫无疑问，到2019年末至明年，千台以上机队规模的租赁商可能将呈倍数级增长，设备保有量占比将更高，“大头”格局愈加显著。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 从各方渠道了解，今年加入登高车市场的大租赁公司数量明显增多，一类是以华铁、诚泰、蔷薇等为代表的，拥有融资租赁公司背景的，将单独成立经营性租赁公司、或投资现有租赁公司进入市场的企业；另一类是有其他设备租赁经验的和国外的大租赁公司进入登高车租赁市场。从目前登高车市场的发展来看，仍然“有利可图”，这蕴含了两方面的意思，一是登高车租赁市场潜在发展空间巨大，有需求规模存在；二是登高车租赁的毛利空间还不错。因此他们进入登高车市场是必然，而且他们所拥有的资本实力、租赁运营经验以及战略能力，决定了他们一旦进入市场，不会选择“慢慢做”的策略，出手肯定是大手笔：机队规模迅速上量、快速拓展市场提高出租率。</p><h2 style=\"white-space: normal; box-sizing: border-box; outline: 0px; margin: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; background-color: rgb(255, 255, 255);\"><br/>&nbsp;<br/>&nbsp;&nbsp;&nbsp;&nbsp; 登高车租金下滑，将推动租赁商反思现有业务模式</h2><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 租金水平是租赁行业的晴雨表，也是登高车租赁商老板的心情风向标。上半年租金下滑，引发租赁商的各种情绪反应，主要分为两类，一类是偏负面，抱怨市场存量设备太多、租金下滑幅度大、市场竞争激烈、客户忠诚度差等等，总之，就是登高车租赁没法干了！另一类是偏正面，积极应对市场变化、及时调整市场策略、加紧练内功等等，总之，就是登高车市场还有很多机会，当前遭遇的租金下滑本身也是一个机会。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 我们很容易看出两类情绪的区别，持负面情绪者更多将问题归结于客观市场环境，而持正面情绪者更多将问题归结于主观经营思路和能力。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 从发展规律来看，租赁公司最终会形成“大头长尾”的格局，位于头部的大型租赁公司将更多服务于有批量需求的、以长租为主的、全国性项目的客户，目前也是这种发展态势；而数量更多的小型租赁公司，将更多服务于属地化的、零租更多的、更小细分市场的客户。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 目前来看，大型登高车租赁公司在全国性项目的占有率越来越高，但中小租赁公司对细分市场的开发却不足。大多数租赁商及其目标客户都集中在厂房、商业综合体等非常有限的几个细分市场，用“拥挤”来形容一点儿都不为过。从租赁商谈单方式与内容也可以看出，大多租赁商做的还是非常简单和初级的“设备出租生意”，无论对设备，还是对客户，都缺乏深刻的认知，这也就是我们通常所讲的“专业能力不足”。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255); text-align: center;\"><img alt=\"2019年登高车应用领域\" src=\"http://img888.hbyaqiao.com/cms-images/article/2019_12_01/fbad2a6e61e942905a1465c43d5ac815.jpg\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 无论出于什么原因，租赁商很少开发新的细分市场，“跟风”现象突出，这样做最简单，也最安全，市场开发成本还低，但一定遭遇的是价格战。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 面对竞争，大多数租赁商除了拼价格，还能拼什么？而恰好就是“非价格因素”决定了一个租赁商真正的市场竞争力。当前绝大部分租赁公司，除了登高车，没有其他种类的设备；即使是登高车，也是集中于10M剪叉等“大路货”上。这样的机队结构在面对租金下滑时将会非常痛苦！</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 因此，除了抨击低价扰乱市场外，租赁商要开始反思现有业务模式是否有可持续性，按照目前的租金水平以及可能继续下降趋势，公司能否继续生存下去、未来的出路在哪里，租赁公司老板要能回答清楚几个问题：我的客户是谁？我的竞争对手是谁？我依靠什么去竞争？回答清楚了这几个问题，也就确定了的业务模式是什么。</p><h2 style=\"white-space: normal; box-sizing: border-box; outline: 0px; margin: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; background-color: rgb(255, 255, 255);\"><br/>&nbsp;<br/>&nbsp;&nbsp;&nbsp;&nbsp; 登高车租金下滑，将加快租赁商分化进程</h2><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 任何行业中，每一轮的价格战都是市场参与者“洗牌”的过程。虽然登高车从高速发展至今时间还很短，但作为工程机械行业非常稀有的市场前景巨大、利润空间较高的产品类别，正在吸引着越来越多的制造商、租赁商加入登高车行业，这将更快地推动行业前进，租赁商群体会逐步分化为几类。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 关于租赁商的未来类型，预测可能会有以下几种：</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;</p><h3 style=\"white-space: normal; box-sizing: border-box; outline: 0px; margin: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 第一类，以超大机队规模著称的大型登高车租赁公司。</h3><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 前述已经提到，2019年大型公司进入登高车行业的数量增多。他们将更多依靠自有或第三方资金的方式，以常用通用设备为主，快速扩张机队规模，迅速走向全国市场或覆盖若干主要省市。随着行业大租赁公司数量的增多，大租赁公司之间的竞争将会愈加激烈，与之客户重叠率高的中小型租赁公司若不调整业务模式，生存将会遇到挑战。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;</p><h3 style=\"white-space: normal; box-sizing: border-box; outline: 0px; margin: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 第二类，专注于某类特殊应用领域或特殊客户的专业登高车租赁公司。</h3><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 某些特殊应用领域，对登高车有一定需求但总量不大，对租赁公司的资质、信誉及专业能力有一定的要求；某类客户，如一些外资企业，更愿意与有外资背景的或企业文化相近的供应商合作。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 有些租赁公司从起步开始就拥有某种背景关系、老板拥有特殊的人脉资源时，公司将会逐步发展为专业的租赁公司，与一般租赁公司形成明显的差异化经营。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 由于国内市场竞争的充分性，预计专业型租赁公司的数量不会太多，除非公司有真正的“不可替代性”，否则专业租赁公司的生存空间并不会太大。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;</p><h3 style=\"white-space: normal; box-sizing: border-box; outline: 0px; margin: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 第三类，深耕本地局部市场的小登高车租赁公司。</h3><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 小租赁公司将是数量非常巨大的群体。国外的很多租赁公司都深藏在“街头巷尾”，不走近仔细看很难发现他是做什么的。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 中国地域辽阔，需求层次极其多样，再加之登高车又是应用领域很广泛的工具，未来登高车在用量少、频次低、地点分散的零租市场的开发和需求满足，要依靠小租赁公司去完成。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 小租赁公司的业务覆盖范围可能只有一个地级市的几个区、或一两个镇。他的优势在于沟通简单、服务灵活、成本低、对覆盖的小区域生态有深度了解。如同小区门口便利店和商业区大超市的不同定位，他们基本功能相同，但互不矛盾。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 上半年已过，登高车租赁商对下半年的形势如何看待呢？</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\"><br/></p>', 'cms-images/article/2019_11_05/8a15c8e1a76469a8a46dca9be7b37aed==700x434.jpg', '', 868, 893, 1533225600, 1, 0, 0, 'zh-CN', 1572962684, 1575211135),
(35, 79, 77, '0,84,77,', NULL, NULL, NULL, '以确定的能力应战不确定的未来', 'yi-que-ding-de-neng-li', '', '', '', '', 'admin', '', '高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '2018年3月29日，第二届全国高空作业平台租赁大会在江苏南京曙光国际大酒店召开！本次大会上，宏信设备总经理章春雨全面阐述了国内高空作业车租赁行业的历史发展轨迹和未来发展趋势。', '<p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">要闻：</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">2018年3月29日，第二届全国高空作业平台租赁大会在江苏南京曙光国际大酒店召开！本次大会上，宏信设备总经理章春雨全面阐述了国内高空作业车租赁行业的历史发展轨迹和未来发展趋势。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255); text-align: center;\"><img alt=\"\" src=\"http://img888.hbyaqiao.com/cms-images/article/2019_12_01/f206df928fdc8b6b06474fc5b87e917b.png\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">行业发展轨迹</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">宏信设备总经理章春雨&nbsp;演讲：</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255); text-align: center;\"><img alt=\"\" src=\"http://img888.hbyaqiao.com/cms-images/article/2019_12_01/e9d6dbd9fba56af78e614b13fa2dc4c0.png\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">我国高空作业车租赁行业的快速发展是社会经济发展的必然结果，是与制造厂商、租赁公司的共同努力分不开的，宏信设备总经理章春雨这样表述到：高空作业车是上个世纪90年代进入中国，从造船业应用起步，经历10年发展，到了2011年以后逐步被建筑施工企业所接受，行业设备保有量也加快增加，从而推动了整个行业进入快速培育期。在这个阶段，国产厂商的不断增加，设备质量持续提升，国际大品牌厂商也开始重视中国市场，设备的销售价格逐步降低。与此同时更多的租赁公司加入这个行业，纷纷以价格竞争来获取市场份额。在租赁公司的努力推广下，市场对于高空作业车的接受度持续增加，从而带动了高空作业车快速扩展到更多的应用领域。近两年市场进入繁荣期，行业参与者爆发式增长，高空作业车突破5万台，大家普遍对未来充满了乐观甚至亢奋的情绪。然而我们也看到，无序竞争、打折战在租赁行业依然存在。由于缺乏长远的发展战略规划，很多租赁公司在发展过程中往往忽视服务、无视安全及风险，寄希望赚快钱、空手套白狼的心态普遍存在，市场的无序竞争对于行业的健康发展带来了一些不确定的因素。 &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">行业发展趋势</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">1、市场维持快速增长：从长周期来看，建筑业“用工荒”、人工成本和安全成本不断提高，人工替代的趋势不可逆转，高空作业车租赁市场未来几年会保持较快增长的态势。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">2、租赁行业持续碎片化：我们认为，租赁行业具有进入门槛低、退出门槛低高、升级门槛高的特点，旺盛的市场需求会吸引大量的小型租赁公司涌入进来，但由于退出困难，升级困难，导致行业未来很长时间会以中小租赁企业为主，行业集中度低，呈现出碎片化的特征。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">3、短期波动风险可能出现：短周期来看，下游建筑市场的波动、供应的提前透支，短期波动风险可能出现，原因一是：建筑业不稳定性，宏观去杠杆，基建投资降温，制造业投资降温。原因二是：短期过度增加设备，新的厂家不断增加，租赁商不断出现，供大于求，新产能快速释放可能导致市场出现短期“供大于求”大幅波动。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">4、租赁公司定位趋于分化：高空作业车应用领域日益扩展，行业应用领域和区域越来越广，不同规模公司的目标市场和目标客户群分化，“差异化”成为竞争壁垒。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">5、行业在艰难中走向规范：&nbsp;随着行业不断发展，过往无序的经营行为和低劣的竞争手段会逐步被行业唾弃，大多数租赁公司会将自己的主要精力放在服务好客户上，行业规范度逐步得到加强。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">6、设备制造领域的竞争长期存在：行业的繁荣必然推动国产制造厂商的数量继续增加，现有高空作业车制造巨头的市场份额面临稀释。未来很长时间里，制造厂商将在保持盈利水平和扩大市场份额之间艰难抉择。</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">以确定的能力应战不确定的未来</p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; background-color: rgb(255, 255, 255);\">未来的胜负将不再仅仅取决于租赁公司与租赁公司之间的竞争，客户不仅关注设备，更关注服务，租赁商提供的不是设备，而是提供服务。未来支撑发展核心在于服务，宏信设备将坚定不移地与客户“共生、共赢”，通过设备、服务和精益管理保持服务和提供最优解决方案不断构筑领先优势，以确定的能力应战不确定的未来。矢志成为中国最具行业影响力的设备综合运营服务商。</p><p style=\"box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(45, 45, 45); font-family: &quot;microsoft yahei&quot;, STXihei; font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p>', 'cms-images/article/2019_12_01/f206df928fdc8b6b06474fc5b87e917b==596x394.png', '', 619, 992, 1543852800, 1, 0, 0, 'zh-CN', 1572962853, 1575211112),
(36, 79, 77, '0,84,77,', NULL, NULL, NULL, '吉尼高空车怎么维修保养？分享些细节给大家', 'ji-ni-gao-kong-che-zen-me-wei-xiu-bao-yang', '', '', '', '', 'admin', '', '高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '吉尼高空车前期保养好，后期维修花钱少，很多高空车的大修其实都是由于一些小问题引起得。就像是人得了小胃病，但是，保养不当，前期耽误了治疗的时 间，到后来拖成了胃癌，结果枉花了一大笔钱。所以高空车的日常保养很重要，不仅能延长高空车的使用寿命，更能为租赁商创造更多价值。', '<p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">吉尼高空车前期保养好，后期维修花钱少，很多高空车的大修其实都是由于一些小问题引起得。就像是人得了小胃病，但是，保养不当，前期耽误了治疗的时 间，到后来拖成了胃癌，结果枉花了一大笔钱。所以高空车的日常保养很重要，不仅能延长高空车的使用寿命，更能为租赁商创造更多价值。</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">高空车维修保养实用技巧</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">那吉尼高空车怎么维修保养呢？下面我们就来看看高空车维修保养的实用技巧。</p><p class=\"ql-align-center\" style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: center; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><img src=\"http://img888.hbyaqiao.com/cms-images/article/2019_12_01/74a1394fa5f5e6e7a05dc2c46ae1828e.jpeg\"/></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">关于高空车的维护保养，很多人错误的理解保养就是换机油。其实并非如此，换机油不是保养的重点，最多算日常护理。保养最大的目的在于检查，比如检查车上各部件有没有损坏或者需要调整的，这些检查时的动作将能保障你的高空车操作安全。</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">高空车的日常维修保养主要包括：电气系统、柴油机、液压系统、机械系统的保养等：</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">1．高空车退场后及时将外表及内部的泥土清洁洗净。尤其是发动机冷却水箱、油冷却器散热片上部必须洗净泥土。</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">2．保持高空车上部控制台塑料保护膜。</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">3．检查柴油油量，保证高空车在使用时有足够的用油。</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">4 . 检查发动机转速是否平稳，各部位有没漏油现象。</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">5．检查风扇皮带的松紧度，并进行调整。</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">6．检查空气滤器、电瓶电量、冷却水箱水量、机油油量(视需要更换机油)。</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">7．检查气缸盖，进、排气支管及消声器的连接紧固情况，检查并紧固发动机固定螺栓、螺母及飞轮壳螺栓。</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">8．检查柴油粗滤器及时做好清洁，保持柴油粗滤器干净通畅。放出柴油油水滤清器中的沉淀物。</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">9 . 检查上半部控制脚踏板是否完好。</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">10．检查行走马达工作情况，油平面及有无漏油现象，根据需要添加齿轮油。</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">11．检查各部位安全限位行程开关、电磁接近开关是否完好。</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">12．检查各种操作动作是否安全无误。</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">13．检查各部分油管、模块、阀件有无漏油现象。</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">14．检查各部位结构件铁板有无严重腐蚀破损现象。（视情况对损坏的铁板进行更换）</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">15．检查喇叭、指示灯、感应器、报警器等电气仪表的工作状况。</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">高空车油路系统保养更换的5个要点：</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">1 . 液压油更换 每两年或者机器运行1200个小时，更换液压油。</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">2 . 液压油滤芯更换 最初的50个小时更换液压油滤芯，往后每六个月或者机器运行300小时更换。</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">3 . 发动机机油更换 最初的50个小时更换发动机机油，在100~150小时进行第二次更换。在300小时进行第三次更换，在500小时进行第四次更换，往后机器运行每300小时更换。</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">4 . 发动机燃油滤芯更换 最初的50小时更换发动机燃油滤芯，往后机器运行每300小时更换。</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">5 . 油水分离器更换 最初的50小时更换发动机燃油滤芯，往后机器运行每300小时更换。</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">日常中定期保养高空车，不仅仅是为了业务赢取长远的回报，更是为了高空车操作的安全。不要等到高空车出现大毛病才去维修保养，到那个时候已是“亡羊补牢，为时已晚”损失一大笔的钱财。</p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p>', '', '', 618, 1091, 1564329600, 1, 0, 0, 'zh-CN', 1572963202, 1575211098);
INSERT INTO `ss_cms_article` (`id`, `columnid`, `parentid`, `parentstr`, `cateid`, `catepid`, `catepstr`, `title`, `slug`, `colorval`, `boldval`, `flag`, `source`, `author`, `linkurl`, `keywords`, `description`, `content`, `picurl`, `picarr`, `hits`, `orderid`, `posttime`, `status`, `delstate`, `deltime`, `lang`, `created_at`, `updated_at`) VALUES
(37, 79, 77, '0,84,77,', NULL, NULL, NULL, '高空作业车租赁会更挣钱吗？3个分析会让你恍然大悟 ', 'gao-kong-zuo-ye-che-zu-lin-hui-geng', '', '', '首推', '', 'admin', '', '高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '中国大陆挖掘机市场非常好，很多企业的年度销售计划超额完成了。但回想一下五年以前，挖掘机市场处于非常艰难的状态，大量设备在市场上流 通，基本到达饱和状态，让公司原有业务发展更加艰难。而此时，大家是否希望找到一个模式相对简单，并且是长期稳定的投资项目呢？如果有，那便是高空作业 车，那么高空作业车好不好赚钱？以下，小编将对高空作业车出租市场前景、投资回报率和租赁业务3个方面的优势逐一介绍。', '<p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">过去三年，中国大陆挖掘机市场非常好，很多企业的年度销售计划超额完成了。但回想一下五年以前，挖掘机市场处于非常艰难的状态，大量设备在市场上流 通，基本到达饱和状态，让公司原有业务发展更加艰难。而此时，大家是否希望找到一个模式相对简单，并且是长期稳定的投资项目呢？如果有，那便是高空作业 车，那么高空作业车好不好赚钱？以下，小编将对高空作业车出租市场前景、投资回报率和租赁业务3个方面的优势逐一介绍。</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">首先从数据上分析。北美地区，高空作业平台已超过50万台，欧洲地区也有 30 多万台，这些地区高空作业车租赁业务已经发展了几十年了，非常成熟。亚太地区尚处于发展阶段，数量最多的日本和韩国，各50000台以上，中国大陆到 2018年底45000台左右。需要重点关注的是香港，香港高空作业车出租发展了约20 年，目前保有量12000台左右。面积仅为1000km2的香港就拥有过万台高空作业平台，若中国大陆市场发展起来，数量将会是几十万甚至是上百万，可见 其巨大的发展潜力。</p><p class=\"ql-align-center\" style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: center; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><img src=\"http://img888.hbyaqiao.com/cms-images/article/2019_12_01/8ddb5c415211a6ea40edcb39575571c0.jpeg\"/></p><p class=\"ql-align-center\" style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: center; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">高空作业车用于工业厂房安装作业</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">第一，其次比较增长率。欧美地区的年增长率为 3%，中国大陆过去 3 年的年增长率大概是 30%~40%，表明中国大陆的高空作业平台市场处于快速发展阶段。</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">第二，看应用领域。很多工程机械品种，如挖掘机、起重机，功能单一，应用领域窄，但高空作业平台的应用是无限的，可以用于钢结构的建设，也可以用于室内安 装工程，还可以在外场为桥梁做一些维护或油刷工程， 除了这些典型应用外，高空作业平台还在国防、港口、码头、机场、工况企业、电力、通讯、园林等部门广泛使用，并且存在很多根据特定应用条件而设计的定制产 品。随着经济发展和工业化水平的提高，这类定制产品有着广泛的发展空间。</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">第四，从投资回报看，高空作业车出租的业务操作相对简单，客户群广，出租率高且稳定。如果通过各种融资渠道来采购设备，可以实现高现金流和高回报率。高空 作业车出租业务与挖掘机、起重机等工程机械租赁的差异主要表现在：高空作业平台是干租模式，则是使用者与装备所有方分离，人家怎么用，你看不着。所以说， 运营高空作业平台的企业有一个关键工作，就是点检。有的保证每周，有的保证十五天，收回来点检，清理；租期没完，去现场点检、保养。虽然行业远距离大批量 长租和近距离小批量短租各种情况均有，臂架剪叉不同，但运营高空作业平台这个生意，最少也要3、4百万装备配一个人。同比挖掘机，人力配比少一人而已，但 如果考虑到差旅跑动，这点优势也就没有数字上算的那么大了。</p><p class=\"ql-align-center\" style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: center; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><img src=\"http://img888.hbyaqiao.com/cms-images/article/2019_12_01/ce2421799cd9bf565058b3c3f1679900.jpeg\"/></p><p class=\"ql-align-center\" style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: center; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">直臂式高空作业车用于厂房高空作业</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">如果看好高空作业车出租业务的发展，应该如何选择一个合适的品牌作为开始？我的建议是选一个本地市场占有率、品牌、知名度都很高的品牌。这对于发展业务的 初期会有很大的帮助，同时也需要该品牌有一个稳定且经验丰富的团队去帮助你开始业务。最后，需要确定该品牌是否拥有一个稳定的商务政策去发展业务，对于发 展中市场，这一点极其重要。</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">除了上述几点，确定品牌、准备开始租赁业务的时候，还要考虑设备全生命周期成本，即采购、使用、折旧、二手机售、维保等所有的成本来计算投资回报率。</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">一般情况下，投资回报率计算，首先是收入，即设备每个月的租金，乘以当月的出租率，减去所有运营成本，包括维护、维修、人工、材料、运输等，再除以采购设 备的成本，去掉空置，这才是投资回报率。通过分析之后会发现，虽然有些品牌的采购价格很低，但是扣除维修、运输等成本之后，总成本或者是回报率却不是最好 的，因此在选择产品时要小心选择。</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">高空作业车出租挣钱吗？宏信建发作为国内高空车租赁行业的龙头企业，无论是资产规模（75亿资产） ，还是全国业务布局（目前国内营业网点超100个）方面。都可以评为行业内高空作业车出租公司中的佼佼者。可以肯定，宏信建发可以为客户提供设备全生命周 期的解决方案。从进入市场的市场信息、项目信息、经验分享，到提供高质量高空作业车出租和销售服务，以及销售时的各种融资渠道，采购登高作业车后完善的售 后与培训配套等，能帮助客户解决设备操作当中遇到的所有困难。</p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p>', 'cms-images/article/2019_12_01/8ddb5c415211a6ea40edcb39575571c0==700x434.jpeg', '', 1320, 1190, 1485187200, 1, 0, 0, 'zh-CN', 1572963266, 1575210595),
(38, 79, 77, '0,84,77,', NULL, NULL, NULL, '蜘蛛车区别升降车体现在各个方面，你清楚了吗？', 'zhi-zhu-che-qu-bie-sheng-jiang-che-ti-xian-zai-ge', '', '', '首推', '', 'admin', '', '高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '最近亚桥租赁收到了很多客户过来咨询租赁升降车，对于一些室内作业环境，比如商场购中心，我们建议使用蜘蛛车，但是客户对这种设备不太了解，常用的高空作业设备升降车由于应用较为广泛，所以易于被接受，那么对于高空作业而言，蜘蛛车区别升降车，两者之间有什么联系又有什么区别呢？今天小编就来跟大家聊聊这个话题！', '<p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">最近亚桥租赁收到了很多客户过来咨询租赁升降车，对于一些室内作业环境，比如商场购中心，我们建议使用蜘蛛车，但是客户对这种设备不太了解，常用的高空作业设备升降车由于应用较为广泛，所以易于被接受，那么对于高空作业而言，蜘蛛车区别升降车，两者之间有什么联系又有什么区别呢？今天小编就来跟大家聊聊这个话题！</p><p class=\"ql-align-center\" style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: center; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><img src=\"http://img888.hbyaqiao.com/cms-images/article/2019_12_01/412b08453af0597591045f9b84f6cee4.jpeg\"/></p><p class=\"ql-align-center\" style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: center; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">Teupen LEO50T 50米蜘蛛车</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">首先，从产品专业术语上来说，蜘蛛车指的是蜘蛛式高空作业平台，北方也叫蜘蛛机，是4种常规的高空式作业平台中的一种，由于它最大的特点莫过于具有4条独 立的蜘蛛式支腿、形似蜘蛛，所以就被人叫做蜘蛛车。而升降车严格意义上来说，就是把升降机安装在汽车上，被广泛应用于路灯维护作业中，现在客户为了叫法方 便，统一把自行走的高空作业平台和高空作业车统称为升降车，从这个角度来说，蜘蛛车就是升降车的一种。</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">其次，从产品使用上来讲，升降车是安装在汽车底盘上的，在公共场所作业时不会对其他社会车辆造成较大影响，并且可以在路面上行驶，转场方便。而蜘蛛车由于 是自行走四驱的，移动速度不可能太快，灵活性上不如升降车，所以通常在项目施工中不需要频繁的转场，只在项目作业现场小范围移动即可满足施工要求，如果转 场，则需要运输车辆协助。</p><p class=\"ql-align-center\" style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: center; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><img src=\"http://img888.hbyaqiao.com/cms-images/article/2019_12_01/9fe89dbabe14ded99d9f9ba1e645c964.jpeg\"/></p><p class=\"ql-align-center\" style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: center; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">蜘蛛车可以在土壤较松散的草地上行走</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">第三，从产品属性上来说，由于蜘蛛车的承载能力小于0.5t，在2014版特种设备目录中已经不属于特种设备了，而升降车属于特种设备，是需要特殊的操作证书的。</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">第四，从产品动力配置上来看，蜘蛛车动力源可以选择为交流电机、蓄电池（锂电池）、汽油或柴油发动机等组合方式，能适应较多复杂的场景进行工作。</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">第五，从产品作业高度来说，蜘蛛车最大工作高度覆盖12米-50米，而升降车的工作高度通常覆盖14-30米。</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">最后，从产品应用场景来说，蜘蛛车使用广泛，在机场火车站、科技馆博物馆、商场综合体、体育馆等大型建筑室内作业中，其底盘的较小宽度可保证设备进入狭窄的通道及室内狭小空间进行登高作业。而升降车更多的被应用于市政环卫、园林绿化、石油化工中。</p><p class=\"ql-align-center\" style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: center; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><img src=\"http://img888.hbyaqiao.com/cms-images/article/2019_12_01/488735abda9ebc867c8506d0e2c1a40e.jpeg\"/></p><p class=\"ql-align-center\" style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: center; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">蜘蛛车典型应用场景</p><p class=\"ql-align-center\" style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: center; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><img src=\"http://img888.hbyaqiao.com/cms-images/article/2019_12_01/fb072490dd479cb4cb301aadfc5c65d5.jpeg\"/></p><p class=\"ql-align-center\" style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: center; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">升降车典型应用场景</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">蜘蛛车区别升降车体现在以上各个方面，现在你清楚了吗？希望对高空作业环境有特殊需求的客户在设备选型中有所帮助。</p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p>', 'cms-images/article/2019_12_01/fb072490dd479cb4cb301aadfc5c65d5==700x434.jpeg', '', 474, 1289, 1570896000, 1, 0, 0, 'zh-CN', 1572963322, 1575210540),
(39, 79, 77, '0,84,77,', NULL, NULL, NULL, '亚桥租赁为武汉世界军运会成功举办保驾护航 ', 'ya-qiao-zu-lin-wei-wu-han-shi-jie-jun-yun-hui-cheng', '', '', '推荐,首推', '', 'admin', '', '', '湖北武汉天河机场一跑道上，没有往日繁忙的飞机起降，没有各大航司的工作人员，只有100余名制服整洁、眼明手快的建设者在忙碌施工，数十台 摊铺机马力全开，机器轰鸣，热火朝天。为更好地服务保障第七届世界军人运动会，天河机场跑道迎来首次大修，帮助建设后的天河机场以国际化的全新形象，迎接来自七大洲四大洋的国际友人。', '<p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">近日，湖北武汉天河机场一跑道上，没有往日繁忙的飞机起降，没有各大航司的工作人员，只有100余名制服整洁、眼明手快的建设者在忙碌施工，数十台 摊铺机马力全开，机器轰鸣，热火朝天。为更好地服务保障第七届世界军人运动会，天河机场跑道迎来首次大修，帮助建设后的天河机场以国际化的全新形象，迎接来自七大洲四大洋的国际友人。</p><p class=\"ql-align-center\" style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: center; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><img src=\"http://img888.hbyaqiao.com/cms-images/article/2019_12_01/550b2d2de5666f7197bfc3969f9e1da4.jpeg\"/></p><p class=\"ql-align-center\" style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: center; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">世界军人运动会倒计时</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">两个月后，第七届世界军人运动会将在武汉举行，赛期10天，届时将有 100 多个国家的军人代表团和数十位国家元首到汉参会。包括此前的“汉马”、健博会、世界邮展等盛会，都在武汉举行。武汉正成为全球重大赛事重大活动的“主场”。</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">众多大型体育赛事的举办对武汉这座城市的机场交通设施提出了更高达到要求，而武汉天河机场一跑道由于年久失修，机场跑道病害频发，路面维护工作量逐年增 大，严重影响道面的使用性能，为满足跑道的安全、高效运行要求，保障第七届世界军人运动会圆满成功，更好的向世界展示武汉的国际形象，宏信建发义不容辞参 与了此次军运会重点保障工程-天河机场跑道大修项目。</p><p class=\"ql-align-center\" style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: center; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><img src=\"http://img888.hbyaqiao.com/cms-images/article/2019_12_01/046b018546bc9e4a6112e3fe8b5521f0.jpeg\"/></p><p class=\"ql-align-center\" style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: center; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">亚桥租赁参建天河机场跑道大修</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">肩负天河机场跑道大修重任，时间紧任务重，为完成此次沥青铺设任务，<span style=\"text-align: center;\">亚桥租赁</span>投入沥青混凝土摊铺机7台、双钢轮压路机11台、胶轮压路机5台、铣刨机1台、清扫车1辆，各种机械操作手100余人。施工内容主要为从南向北分层实施，先完成跑道区域，再完成快速滑行道区域，最后完成道肩区域。</p><p class=\"ql-align-center\" style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: center; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><img src=\"http://img888.hbyaqiao.com/cms-images/article/2019_12_01/27ad9de581f0974178785ef719bc0cf9.jpeg\"/></p><p class=\"ql-align-center\" style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: center; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">亚桥租赁阿特拉斯双钢轮压路机进行机场沥青路面压实作业</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">此次天河机场跑道大修项目，<span style=\"text-align: center;\">亚桥租赁</span>不辱使命，经过一个月的紧张施工建设，从基础、主体两个阶段入手，加强对成品保护，最终在规定工期内，保质保量完成了项目建设，并成功通过竣工验收，为盛会添砖加瓦，献礼共和国70华诞。</p><p class=\"ql-align-center\" style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: center; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><img src=\"http://img888.hbyaqiao.com/cms-images/article/2019_12_01/16f0e1a6a3593034e0d72994ff986893.jpeg\"/></p><p class=\"ql-align-center\" style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: center; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">亚桥租赁福格勒沥青摊铺机进行机场沥青路面摊铺作业</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">借着本次武汉军运会的美好希冀，宏信建发祝愿我们的军人健儿，奋勇拼搏，夺得荣誉，为国争光；祝愿我们的武汉军运，在宏信建发作为道路设施建设合作伙伴的协助支持下，谱写和平华章，绽放耀眼的光芒！</p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p>', 'cms-images/article/2019_12_01/046b018546bc9e4a6112e3fe8b5521f0==700x434.jpeg', '', 616, 3000, 1554912000, 1, 0, 0, 'zh-CN', 1572963449, 1575211008),
(40, 79, 77, '0,84,77,', NULL, NULL, NULL, '高空作业车租赁挣钱吗? 看完这些,你就知道高空车租赁行业的真相 ', 'gao-kong-zuo-ye-che-zu-lin-zheng-qian-ma-kan', '', '', '首推', '', 'admin', '', '高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '高空作业车租赁投资回报率与“运费”、“人工” 、“仓储” 、“办公” 等各种成本都密切相关， 而不仅仅是很多新进入者眼中单纯按照“租金” 计算，“单单是成本支出就要占据年租赁收入的一半以上。此外，高空作业车也不可能全年满负荷运转， 根据行业数据，在上海、 广州等成熟租赁市场，高空作业车的年平均出租率达到80%就已经“顶天”，放到工期短的北方或不发达地区，年出租率会更低。', '<p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">当下，这种自行走式高空作业车已逐渐成为中国现代化建筑业施工作业的代名词，其在高空作业中的安全、效率越来越受到全社会的关注。 而就在几年前， 施工人员大多需要攀爬梯子或脚手架等传统高空作业工具。高空作业车租赁行业远不是人们想象的那样‘低门槛’，如果不能长期经营下去，那么退出成本一定会很 高。租赁行业就好比长跑，长期坚守者将走得更远，投机取巧者终被淘汰。高空作业车出租挣钱吗？下面小编将从高空作业车租赁的投资回报率角度来解读一下。</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">高空作业车租赁投资回报率与“运费”、“人工” 、“仓储” 、“办公” 等各种成本都密切相关， 而不仅仅是很多新进入者眼中单纯按照“租金” 计算，“单单是成本支出就要占据年租赁收入的一半以上。此外，高空作业车也不可能全年满负荷运转， 根据行业数据，在上海、 广州等成熟租赁市场，高空作业车的年平均出租率达到80%就已经“顶天”，放到工期短的北方或不发达地区，年出租率会更低。</p><p class=\"ql-align-center\" style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: center; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><img src=\"http://img888.hbyaqiao.com/cms-images/article/2019_12_01/5d04a39c6a4c3a4ba3c1f1f0c99973d4.jpeg\"/></p><p class=\"ql-align-center\" style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: center; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">JLG高空作业车租赁</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">以10米剪刀车（剪刀式高空作业车）为例，按现阶段均价每月租金3000元、年出租率75%（每年在租期9个月）计算，年租赁收入为27000元，扣除半 数以上的各项成本以及机器损耗，在理想状态下，一台采购成本大约8-9万元的机器，其平均投资回报周期为6-7年。要是再加上融资成本，回本周期可能要延 长到8-10年。</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">其中，除尽最大努力优化提升整体租金水平和出租率之外，“成本管控” 就显得尤为关键。对于租赁企业来说，成本支出无处不在，其中“大头儿” 包括了运输成本、 人工成本、仓储成本和机器损耗等琐碎且庞杂的项目。如果人员成本过高、仓库位置不好、管理又不严格，就肯定不能盈利。因此，在车辆、 人员的有力管理和高效调配，在日常运营流程的严格把控，在车辆的维保、检修和冲洗的行为规范，以及对于一线服务人员的要求等等，都应该落到实处、狠抓细 节。</p><p class=\"ql-align-center\" style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: center; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><img src=\"http://img888.hbyaqiao.com/cms-images/article/2019_12_01/2cf19ac0f6f0847e65c2cc34fb058657.jpeg\"/></p><p class=\"ql-align-center\" style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: center; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">点击查看：高空作业车租赁前景</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">“细节决定成败”。因为这不仅关乎企业的经营质量和品牌形象，更重要的是关乎客户价值。只有客户服务好，机器形象好，才能打造出高端的租赁品牌。品牌效应会聚合越来越多的优质客户，一方面保证了机器的出租率，另一方面可以减少坏账率呆账率。</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">随着中国高空作业车市场需求与日俱增，租赁行业也在发生日新月异的变化。身处其中的高空作业车租赁公司，尤其是数量众多的中小型租赁公司，其成长壮大、布 局未来的欲望日渐强烈。市场的快速增长，并不能完全掩盖国内高空作业车租赁行业存在的诸多隐忧。终端用户在产品操作和安全使用上，仍是蹒跚学步，认知匮 乏。普遍存在的问题包括对诸如凹坑保护、应急开关、充电电压等基本常识不了解而导致的停机问题； 施工现场电压不稳、 施工人员暴力操作等导致的设备故障甚至损伤；更为严重的是，很有可能导致伤亡事故的超载、超限等作业在施工现场频频出现。随着中国对于安全的关注度不断提 升，随着制造商、 租赁商以及行业协会在安全操作的共同培育， 施工现场的高空作业将更加安全、 更加规范。</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px;\">面对复杂的市场环境，高空车租赁公司如何突破瓶颈、持续发展</span></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">对于新入行高空作业车租赁公司来说，应根据自身资金实力及市场开发能力，理性购买设备，避免盲目扩张规模。市场开发中注重各细分领域的拓展，挖掘更多高利润、低风险客户;</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">由于市场竞争加剧、新入行租赁公司经验不足、原有租赁公司快速扩大规模过程中对客户的把控不足等各种原因，客户逾期情况加剧，数据显示，仅有36%的租赁 公司客户逾期面在10%以下，而这一租赁公司比例在2015年尚能保持在45%;因此租赁公司在企业发展中，应合理评估自身发展所需的客户、资金等资源， 慎重考虑客户关系维护与回款控制之间的关系，避免因市场开发而产生的回款风险。</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">而中小型高空作业车租赁公司的机队规模应逐步扩大。中小型租赁企业在扩张过程中需要量力而行，要把控好服务半径，以及人员、运输、 融资等成本，机队规模应与市场需求、服务能力尽量匹配。</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">稳步壮大的发展模式，一方面，无论是资金还是管理，都能掌控得当，另一方面，工况更好的产品和响应及时的服务将进一步提升优质客户、长租期客户的满意度，进一步强化高空作业车租赁公司的口碑。</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">对于一家规模型租赁商来说，剪刀车和臂车应有合理的比例。2019，高空作业车的市场需求尤为强劲，剪刀车与臂车的出租率都很高。按现阶段来看，剪刀车的 年均出租率可以保持在75%以上，而让人出乎意料的是，臂车也保持了同样水平，个别月份甚至能够达到80%。</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">在租赁行业中剪刀式产品趋于同质化、价格竞争愈演愈烈的当下，臂式产品无疑成为了具备一定资金实力的租赁商的“突破口”，它不仅可以强化租赁产品线的宽度和深度，同时也推动客户应用再上一个新台阶、 新高度。</p><p class=\"ql-align-center\" style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: center; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><img src=\"http://img888.hbyaqiao.com/cms-images/article/2019_12_01/e9effa8fac313365eec6570c2481fc2c.jpeg\"/></p><p class=\"ql-align-center\" style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: center; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">高空作业车租赁公司服务</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">从另外一个角度来看，把初期购买价格均摊到机器的全生命周期上，各个品牌产品之间的差异也几乎微乎其微，对于很多租赁企业关注的产品价格，目前，国际品牌正在不断加大产品本地化，产品竞争力日渐提升。</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">高空作业车租赁挣钱吗？以上就是高空车租赁行业的真相，那么竞争日益激烈的中国租赁产业，其未来格局会是什么样？对于这个老生常谈的问题，有三种租赁 企业将能够生存和发展：一，有母公司不断“输血“的大型租赁商，如有大型国有企业或集团公司或外资背景的租赁公司；二，已具备一定规模、负债率低、成本控 制好的租赁商；三，数量众多的小型个体户和家族企业。未来很长一段时间，以上三类租赁企业将长期并存，而“处于中间地带、负债率居高不下的租赁企业，将面 临更大的退出风险。相比成熟的欧美租赁行业，目前，中国高空作业车租赁行业的第一阵营的雏形仍未成型。业内负债率低、上规模的租赁企业屈指可数，最终行业 进入成熟期，租赁产业第一方阵的企业数量为10家左右。</p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p>', '', '', 539, 1400, 1571068800, 1, 0, 0, 'zh-CN', 1572963487, 1575210371),
(41, 79, 77, '0,84,77,', NULL, NULL, NULL, '高空作业车租赁公司现状是喜是忧？一文带你看懂高空车租赁市场 ', 'gao-kong-zuo-ye-che-zu-lin-gong-si-xian-zhuang', '', '', '首推', '', 'admin', '', '高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '​随着高空作业车市场的蓬勃发展，截至2019年年中，国内高空作业车租赁公司已经超过1000家，目前的租赁市场竞争可谓是残酷搏杀，犹如春秋战国时代，胜者为王，败者为寇！各个租赁公司的设备租金出现降价潮，都在疯狂抢夺客户资源，扩大租赁市场占有率，市场环境如此，那么国内高空作业车租赁公司群体的现状是喜是忧？下面宏信建发小编带你来了解整个国内高空作业车租赁公司现状。', '<p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">随着高空作业车市场的蓬勃发展，截至2019年年中，国内高空作业车租赁公司已经超过1000家，目前的租赁市场竞争可谓是残酷搏杀，犹如春秋战国时代，胜者为王，败者为寇！各个租赁公司的设备租金出现降价潮，都在疯狂抢夺客户资源，扩大租赁市场占有率，市场环境如此，那么国内高空作业车租赁公司群体的现状是喜是忧？下面宏信建发小编带你来了解整个国内高空作业车租赁公司现状。</p><p class=\"ql-align-center\" style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: center; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><img src=\"http://img888.hbyaqiao.com/cms-images/article/2019_12_01/98cd3e9ae781db1231ebf6f826000a62.jpeg\"/></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">超过一半的高空作业车租赁公司只经营高空作业车设备，占租赁公司总数的52.2%;同时经营其他设备的租赁公司，主要经营包括挖掘机等挖掘机械设备、叉车、推高车等搬运设备及脚手架、吊篮等传统高空作业设备等。</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">全部高空作业车租赁公司中,只有20%的租赁公司还处于全部剪刀车运营的阶段;62%的租赁公司剪叉设备占比超过80%;42%的租赁公司剪刀车占比为80-99%;有15%的租赁公司剪叉设备占比在60%以下。</p><p class=\"ql-align-center\" style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: center; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><img src=\"http://img888.hbyaqiao.com/cms-images/article/2019_12_01/0160fa082d57ba91b2d8873351036ada.jpeg\"/></p><p class=\"ql-align-center\" style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: center; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">点击查看：高空作业车租赁前景</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">高空作业车租赁客户主要集中在厂房/场馆建设等传统领域，机场、高铁、市政、广告、商超、酒店等领域开始逐步拓展94.6%的租赁公司涉足厂房建设领域， 表明租赁行业客户群体仍旧集中在这一传统领域;和2015年相比，涉足机场/火车站、市政工程、广告安装大型商超等领域的租赁公司占比增加，随着产品及市 场的进一步推广，更多租赁公司必然会进入更多细分领域。</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">高空作业车的利润怎么样？只有20.4%的高空作业车租赁公司毛利率不到20%，有7%的租赁公司毛利率超过50%。大部分租赁公司毛利率在20%- 40%之间;毛利率较2015年有所上升。2015年31.4%的租赁公司毛利率不到20%，而2016年毛利率不到20%的租赁公司只有 20.4%;2015年只有7.6%的租赁公司毛利率超过40%，而2016年毛利率超过40%的租赁公司达到17.8%。</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">有37%的高空作业车租赁公司业务半径在150公里以内，有28%的租赁公司业务在全省范围，此类业务客户维护成本低，服务及时性较高;有22%的租赁公司业务半径为本省及周边2-3个省，还有13%的租赁公司客户遍布全国。</p><p class=\"ql-align-center\" style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: center; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><img src=\"http://img888.hbyaqiao.com/cms-images/article/2019_12_01/5837780a4e4d826c725d4992c5f2d6ff.jpeg\"/></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">空租期在90天以上的高空作业车租赁公司只占租赁公司总数的5%，有53.8%的租赁公司空租期在30-59天，更有22.0%的租赁公司空租期在30天 以下;相比2015年，更多租赁公司空租期缩短。60天以下空租期租赁公司占到总数的75.8%，相比2015年52.5%增长了23.3%。</p><p><br/></p>', '', '', 669, 1586, 1551801600, 1, 0, 0, 'zh-CN', 1572963541, 1575210297),
(42, 79, 77, '0,84,77,', NULL, NULL, NULL, '高空车租赁公司:租赁高空作业车过程中应注意哪些事项? ', 'gao-kong-che-zu-lin-gong-si-zu-lin-gao-kong-zuo', '', '', '推荐,还看', '', 'admin', '', '高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '高空作业车正是解决高空作业施工的一个很灵活的设备，在很多的领域中都会看到它的存在，但是对于使用者来说，如何从鱼龙混杂的市场选择一家服务好的高空车出租公司才能够让自己的利益得到保障呢?针对这个问题，小编跟大家分享一下租赁高空作业车过程中应注意哪些事项?', '<p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">近几年随着我国城镇化进程加快，城市基础设施建设的高空作业需求越来越多，而高空作业车正是解决高空作业施工的一个很灵活的设备，在很多的领域中都会看到它的存在，但是对于使用者来说，如何从鱼龙混杂的市场选择一家服务好的高空车出租公司才能够让自己的利益得到保障呢?针对这个问题，小编跟大家分享一下租赁高空作业车过程中应注意哪些事项?</p><p><img width=\"100%\" src=\"http://img888.hbyaqiao.com/cms-images/article/2019_11_30/dbea392ee028d5ecd3fdc1545ba90757.jpeg\"/></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">定位自身的作业需求需要注意什么?</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">用户在租赁高空作业车前，一定要找好作业需求，对高空作业车设备做一个攻略，比如根据场地的现场条件和施工高度，需要哪种类型和型号的高空作业车? 高空作业车的价格范围等问题，这些都需要用户提前去了解，也许有些客户有疑问，为什么要提前去知道这些问题呢?去公司问不是一样吗?提前了解这些问题主要 是为了让用户享受更合适的服务，而且避免被不良出租司忽悠。</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">选择高空车租赁商需要注意什么?</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">小编认为客户在选择高空作业车租赁的时候，还要考虑到租赁商这个因素。客户向高空车出租公司咨询清楚设备的功能特点，高空车出租价格和出租流程以及租赁公司提供的服务等问题，这些都需要了解清楚，便于让用户体验到更优质的租赁服务。</p><p><img width=\"100%\" src=\"http://img888.hbyaqiao.com/cms-images/article/2019_11_30/de048bd9af630ff295f5621d0b6848d5.jpeg\"/></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">签订高空作业车租赁合同时需要注意什么?</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">在租赁高空作业车时，租赁公司都会跟客户签订一份租赁合同，当用户拿到租赁合同的时候不要急于签订，而是将合同内容都清清楚楚看一下，了解清楚租赁价格和 租赁公司所提供的哪些服务，这些都是不能忽视的问题。如果用户对高空车租赁公司拟定的合同产生异议，可以跟出租公司进行沟通，一定不要出现合同签完了再想 起哪个地方被遗漏了。</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">以上就是选择专业高空车租赁公司的方法，希望用户在租赁高空作业车的时候，一定要了解这些注意事项，验收高空作业车的时候，一定要先检查设备的质量，确保设备 的质量跟功能完好。除此之外，用户在选择的时候，货比三家，这样才能比较出高空作业车租赁公司的好坏，而且还不会由于不了解情况而被出租公司忽悠，便于客 户享受到优质的租赁服务。</p><p><br/></p>', '', '', 930, 1685, 1518883200, 1, 0, 0, 'zh-CN', 1572963580, 1575210114);
INSERT INTO `ss_cms_article` (`id`, `columnid`, `parentid`, `parentstr`, `cateid`, `catepid`, `catepstr`, `title`, `slug`, `colorval`, `boldval`, `flag`, `source`, `author`, `linkurl`, `keywords`, `description`, `content`, `picurl`, `picarr`, `hits`, `orderid`, `posttime`, `status`, `delstate`, `deltime`, `lang`, `created_at`, `updated_at`) VALUES
(43, 79, 77, '0,84,77,', NULL, NULL, NULL, '“高毛利”高空作业车营收下滑 海伦哲中期净利润降逾六成', 'gao-mao-li-gao-kong-zuo-ye-che-ying', '', '', '推荐,相关', '', 'admin', '', '高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车，海伦哲', '海伦哲成立于2005年，在2011年上市之初，主要从事高空作业车、电力保障车辆、消防车及军品的研发、制造、销售与服务。2014年，公司收购了巨能伟业100%的股权进入LED行业；2015年，公司通过收购深圳连硕自动化科技有限公司100%的股权进入智能制造领域。', '<p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; text-indent: 28px; font-size: 16px; line-height: 32px; text-align: justify; overflow-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img alt=\"null\" src=\"http://img001.turen2.com/cms-images/article/2019_11_18/a726f5655145ec6891767d6038960711.jpg\" style=\"border: 0px; max-width: 100%; display: block; margin: 0px auto; height: auto;\"/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; text-indent: 28px; font-size: 16px; line-height: 32px; text-align: justify; overflow-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">8月29日晚，海伦哲（300201）发布了2019年半年度报告称，公司上半年实现营收6.64亿元，同比增长2.73%；归属于上市公司股东净利润754万元，同比下降65.12%。</span></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; text-indent: 28px; font-size: 16px; line-height: 32px; text-align: justify; overflow-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">资料显示，海伦哲成立于2005年，在2011年上市之初，主要从事高空作业车、电力保障车辆、消防车及军品的研发、制造、销售与服务。2014年，公司收购了巨能伟业100%的股权进入LED行业；2015年，公司通过收购深圳连硕自动化科技有限公司100%的股权进入智能制造领域。</span></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; text-indent: 28px; font-size: 16px; line-height: 32px; text-align: justify; overflow-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">据悉，上半年公司营收增长而净利润下滑，一方面系军品业务的增长带来公司整体营业收入的增长，但是军品毛利率相对较低，因此对利润的增量影响较小。报告期内，由于产品销量增加而利润增加481.32万元;另一方面，公司本部毛利率较高的高空作业车产品营业收入同比减少，造成本部净利润有所下滑。</span></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; text-indent: 28px; font-size: 16px; line-height: 32px; text-align: justify; overflow-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">除此之外，报告期内公司营销投入加大，使得广告宣传、差旅、市场及招投标以及售后服务等费用同比增加；技术开发费、试验检测费、海讯高科COB项目关键阶段投入等费用，致使公司研发投入达2032万元，同比增长5.43%；而由于国际化项目的推进、环境安全的持续投入以及精益管理等项目的开展，报告期内公司管理费用达6325万元，同比增长22.01%。</span></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; text-indent: 28px; font-size: 16px; line-height: 32px; text-align: justify; overflow-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">在财务费用方面，为保证重大军品等特种车辆产品在手订单的及时交付，以及为迎接即将到来的经营旺季做必要的生产准备，公司较期初增加银行贷款1.83亿元，由于银行贷款的增加及银行贷款利率的提高，公司上半年财务费用达2075万元，同比增长47.38%。</span></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; text-indent: 28px; font-size: 16px; line-height: 32px; text-align: justify; overflow-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">综合来看，报告期内，除了高空作业车营收减少致净利润下滑外，销售费用、管理费用、财务费用的增加，均不同程度的压缩了公司盈利空间。</span></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; text-indent: 28px; font-size: 16px; line-height: 32px; text-align: justify; overflow-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">海伦哲称，受主要客户采购模式影响，公司经营有很强的季节性特征，通常情况下第一季度的营业收入和净利润低于其他季度，第四季度呈爆发式增长，第四季度的利润一般占全年的比重在45%以上。报告期内，公司第二季度生产、经营状况良好，弥补了一季度亏损的情况。</span></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; text-indent: 28px; font-size: 16px; line-height: 32px; text-align: justify; overflow-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">记者注意到，今年上半年，公司通过增资方式取得了德国施密茨66.53%的股权。据悉，赫尔曼·施密茨有限公司经营范围为研发、生产、销售和市场推广消防车和相关消防、环保、救援和通讯系统，其轻量化上装技术及车辆平衡技术均处于世界领先地位，且下属的两家公司施密茨消防救援有限公司和施密茨一七有限公司订单充足。</span></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; text-indent: 28px; font-size: 16px; line-height: 32px; text-align: justify; overflow-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">公司表示，通过引进消化吸收国外先进技术而开发出具有国际领先水平的产品，将极大地提升公司消防车产品的核心竞争力，扩大公司在高端消防车市场的份额。目前，公司与德国施密茨计划在国内设立合资公司，该事项处于正常推进中。</span></p><p><br/></p>', 'cms-images/article/2019_11_18/a726f5655145ec6891767d6038960711==400x300.jpg', '', 533, 1784, 1543507200, 1, 0, 0, 'zh-CN', 1574082923, 1575210048),
(44, 91, 77, '0,84,77,', NULL, NULL, NULL, '高空作业车如何做到安全使用？', 'gao-kong-zuo-ye-che-ru-he-zuo-dao', '', '', '首推', '', 'admin', '', '高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '高空作业车是一种个头较大，性质较为危险的特种车，那么我们在使用高空作业车时如何做到安全呢？下面给大家介绍一些高空作业车的注意事项。', '<p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">高空作业车是一种个头较大，性质较为危险的特种车，那么我们在使用高空作业车时如何做到安全呢？下面给大家介绍一些高空作业车的注意事项。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\"><br/></span></p><p><strong><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">一、高空作业的安全操作</span></strong></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">操作人员、设备、环境的要求：所谓高空作业就是人使用一定的高空作业设备在特定的环境下工作。要想保证作业的安全性：首先，我们要选用一台经过质量认证的合格的高空作业车产品，并且产品维护、保养及时，处于良好的工作状态，这是安全的保证。其次，我们要注意使用的环境。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">地面坚实与否是影响高空作业车稳定的重要因素，当地面松软，不足以支撑支脚时，必须在支脚下加垫支撑物（如厚木板），以增大支撑面积，减小对地面的压强。强烈的风会使工作平台结构过载，超过规定风速，应立即停止工作。对于绝缘车来说一定要注意环境相对湿度不能过大，否则会降低设备的绝缘效果，导致操作者生命受到威胁。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">最后，操作人员的规范化培训。高空作业车是集光机电液为一体的高技术装备，对于操作人员的要求较高，应选用专职驾驶员及操作人员，并对其进行培训，使他们掌握产品的通用知识、专用知识、操作方法、注意事项、操作禁令、维修维护等知识。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\"><br/></span></p><p><strong><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">二、产品的安全操作</span></strong></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">1.行驶安全</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">高空作业车作为专用车辆，必须遵守道路行驶方面的标准要求及交通法规。行驶安全包括行车前的检查、准备，行车时的注意事项及停车驻车时的注意事项。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">2.行车前的检查和准备</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">按底盘使用要求进行油位，水位等的检查；燃油箱，液压油箱油量的检查。重点检查工作机构是否处于行驶状态，如臂架是否落实于臂支架上、绝缘臂是否捆绑可靠、支腿是否伸出，工作斗是否有人员及物品等，以防行车时遭到破坏，也破坏了交通法规。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">3.行车注意事项</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">高空作业车属于臂架类专用作业类车辆，行使宽度大、车辆高度高、行车重心高、纵向和横向通过性差，因此，在行驶过程中应注意：</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">（1）避开空中障碍物；</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">（2）转弯速度一般不宜超过30km/h；</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">（3）装置的离地高度低，注意地面通过性；</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">（4）通过桥涵时，防止发生触顶。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">4.作业地点停车注意事项</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">（1）停车地面应坚实平整，尽量靠近作业对象，允许的最大倾斜角为5°，作业过程中地面不应下陷。当地面松软，不足以支撑支脚时，必须在支脚下加垫支撑物（如厚木板），以增大支撑面积，减小压力；</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">（2）必须拉好手刹，车轮下最好垫上三角块。总之，停车地点的选择就是要保证作业时支腿的稳定支撑，以防发生严重事故。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\"><br/></span></p><p><strong><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">三、作业前准备事项</span></strong></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">正式开始高空作业前，应对车辆的安全项目及操作人员的安全装备再进行确认。如看看天气情况有没有发生变化；作业人员有没有带好通讯工具；是否系好安全带（极为重要）；人员及工具的总重有没有超过规定载荷；有无正确着装，防止衣物被凸起物勾住；夜间工作时，是否配备了照明装置等。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">任何事故的发生都不是偶然的，除去制造因素，人为因素占了很大一部分，通过高空车的安全事故我们也可以看到这一点。高空作业车是一个复杂的高技术产品，如何让它安全、高效的为社会发展服务，不仅是制造厂要关注的问题，也是每一个使用高空车的单位、个人都要考虑的问题。使用者一定要认真了解高空车的性能，严格按照安全操作规程使用，头脑里时刻保持安全意识，才能真正的用好高空作业车，减少甚至杜绝安全事故的发生。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\"><br/></span></p><p><img alt=\"null\" src=\"http://img001.turen2.com/cms-images/article/2019_11_18/f95ee330078dc1b434dc957c785a7566.jpg\" style=\"color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif; font-size: 16px; text-align: justify; text-indent: 28px; white-space: normal; border: 0px; max-width: 100%; display: block; margin: 0px auto; height: auto;\"/></p><p><br/></p>', '', '', 1001, 1883, 1524931200, 1, 0, 0, 'zh-CN', 1574083164, 1575380052),
(45, 91, 77, '0,84,77,', NULL, NULL, NULL, '高空作业车为什么出现抖动现象？', 'shen-me-chu-xian-dou-dong-xian-xiang', '', '', '推荐,首推', '', 'admin', '', '高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '高空作业车为何会出现车身抖动?出现车身抖动情况应该如何做？下面给大家介绍一下出现抖动现象的原因及其解决的方法。', '<p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">高空作业车为何会出现车身抖动?出现车身抖动情况应该如何做？下面给大家介绍一下出现抖动现象的原因及其解决的方法</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">1、油压不稳</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">如果已经清理过发动机积碳、洗过节气门、换过油垫以及火花塞等，仍然发现怠速时车身抖动，建议您找专业人员检查燃油供油压力以及进气压力传感器等是否正常，如果油泵供油压力不正常或进气压力传感器数值错误和工作不良都会引发车身抖动。&nbsp;</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">解决办法：检查油压，必要时更换部件。&nbsp;</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">2、发动机部件老化</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">高空作业车抖动还与引擎脚老化有关。引擎脚其实是发动机的避震系统，引擎脚负责吸收发动机在运转时候的细微抖动，如果引擎脚出现问题，这些震动就会传到方向盘、驾驶室内，造成怠速时发生抖动。</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">解决办法：更换部件&nbsp;</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">3.发动机积碳严重</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">造成高空作业车抖动最常见的原因就是节气门过脏或喷油嘴积炭过多。当发动机内部的积碳过多时，冷启动喷油头喷出的汽油会被积碳大量吸收，导致冷启动的混合气过稀，使得启动困难，这种状况下，只有等到积碳吸收的汽油饱和，才容易着车，着车后吸附在积碳上的汽油又会被发动机的真空吸力吸入汽缸内燃烧，又使混合气变浓，发动机的可燃混合气时稀时浓，造成冷启动后怠速抖动。气温越低，冷启动所需要的油量越大，积碳的存在就越会影响冷启动的顺利与否。&nbsp;</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">解决办法：清洗油路，检查怠速马达是否有积碳应该清洗。</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">4.点火系统问题</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">检查一下火花塞、高压导线和点火线圈的工作状况，点火系统工作不良，火花塞跳火状况不好同样会导致这类故障现象。&nbsp;行驶时发现车身抖动&nbsp;如果在行车过程中，发现高空作业车身有轻微的抖动或偏移，一般是轮胎引起的故障。首先可能是轮胎平衡状况不佳，需要车主尽快去做一个四轮定位和动平衡，如果车辆不跑偏做一下轮胎动平衡即可。&nbsp;另一种状况则较为严重，可能是因为钢圈变形所致，这就需要车主去专业的维修店检查。这种状况一般发生在使用年限较长的车辆身上。一般汽车更换新轮胎、新钢圈时都要做一次轮胎平衡，否则配重不平均时方向盘就容易发生抖动的现象。车身抖动对行车舒适感和操控判断都会有所影响。&nbsp;第三种情况是因为传动轴变形不平衡引起，一般这种情况出现在底盘碰撞过的车比较多。</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">针对不同情况有不同的原因和不同的解决方法，当我们遇到这些情况的时候首先要判断出出现这种情况的原因，对症下药才能更好地解决问题。如果没有专业知识千万不能擅自维修以免造成更大的损失。本文给大家详细的介绍了高空作业车出现抖动情况的原因及解决方法，希望大家通过本文能有所收获，对于高空作业车有更加深刻的理解。</span></p><p><img alt=\"null\" src=\"http://img001.turen2.com/cms-images/article/2019_11_18/a432ea197f77f05cb25f004c441a317f.jpg\" style=\"border: 0px; max-width: 100%; display: block; margin: 0px auto; height: auto;\"/></p><p><br/></p>', '', '', 1269, 1982, 1493049600, 1, 0, 0, 'zh-CN', 1574083317, 1575379938),
(47, 79, 77, '0,84,77,', NULL, NULL, NULL, '海伦哲高空作业车亮相2011南京国际车展', 'hai-lun-zhe-gao-kong-zuo-ye-che-liang-xiang', '', '', '推荐,还看,相关', '卡车之家：http://www.360che.com', 'admin', '', '高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '<p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; word-break: break-all; font-family: Arial, &quot;Microsoft YaHei&quot;; font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp; 2011年9月29日，由南京市人民政府，江苏省经济和信息化委员会和中国国际贸易促进委员会江苏省分会主办的2011南京国际车展暨江苏新能源车展在南京国际博览中心盛大开幕。</p><p style=\"text-align:center;margin-top: 15px; margin-bottom: 15px; padding: 0px; word-break: break-all; font-family: Arial, &quot;Microsoft YaHei&quot;; font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);\"><a href=\"https://img5.kcimg.cn/imga/mark/0/76/76346.jpg\" target=\"_blank\" style=\"text-decoration-line: none; color: rgb(15, 84, 137);\"><img src=\"http://img888.hbyaqiao.com/cms-images/article/2019_12_03/7e9a5ee44966a94709d16edb86fa4763.jpg\" title=\"76346.jpg\" alt=\"76346.jpg\"/></a></p><p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; word-break: break-all; font-family: Arial, &quot;Microsoft YaHei&quot;; font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 海伦哲公司派出包括18米智能型伸缩臂新能源双动力高空作业车、43米智能型混合臂高空作业车、14米线杆综合作业车、400KW电源车、电力抢修车、移动布缆车、移动厢变车在等9种专用车<em class=\"goto-buy\" style=\"background-image: url(&quot;http://static.360che.com/cms/images/anchor/anchor_icon.png&quot;); background-position: -2px -95px; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; position: relative; top: 5px; width: 22px; height: 25px; display: inline-block; vertical-align: top;\"></em>辆参加展会。</p><p style=\"text-align:center;margin-top: 15px; margin-bottom: 15px; padding: 0px; word-break: break-all; font-family: Arial, &quot;Microsoft YaHei&quot;; font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"http://img888.hbyaqiao.com/cms-images/article/2019_12_03/860f838ca231ed0a08325539ab6ad4af.jpg\" title=\"76347.jpg\" alt=\"76347.jpg\"/></p><p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; word-break: break-all; font-family: Arial, &quot;Microsoft YaHei&quot;; font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 本次车展中，新能源议题成为新亮点，车展集中展示我省新能源汽车及关键零部件的研发成果。海伦哲公司18米智能型伸缩臂新能源双动力高空作业车赢得了各级领导及参观人员的一致好评。</p><p style=\"text-align:center;margin-top: 15px; margin-bottom: 15px; padding: 0px; word-break: break-all; font-family: Arial, &quot;Microsoft YaHei&quot;; font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"http://img888.hbyaqiao.com/cms-images/article/2019_12_03/6938f414675b662127c2c4b3403d525d.jpg\" title=\"76348.jpg\" alt=\"76348.jpg\"/></p><p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; word-break: break-all; font-family: Arial, &quot;Microsoft YaHei&quot;; font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 通过此次车展，海伦哲公司向全省展示了“专业成就行业领先、诚信创造社会快乐”的理念。作为高空作业车行业唯一上市公司，技术领先、制作精良的产品形象得到全面展示。</p><p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; word-break: break-all; font-family: Arial, &quot;Microsoft YaHei&quot;; font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 2011年9月29日上午10点，由省经信委副主任戴跃强主持的2011年江苏省新能源汽车展览会重大签约项目仪式在南京国际博览中心金陵会议中心扬子厅举行。海伦哲公司与江苏大学合作的车载式配电网旁路带电式作业智能化成套设备技术及其产业化项目签约，我公司张秀伟副总经理参加了签约仪式。</p><p style=\"text-align:center;margin-top: 15px; margin-bottom: 15px; padding: 0px; word-break: break-all; font-family: Arial, &quot;Microsoft YaHei&quot;; font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"http://img888.hbyaqiao.com/cms-images/article/2019_12_03/13b2ea42ffb59c6e10f9201faf43d3dd.jpg\" title=\"76349.jpg\" alt=\"76349.jpg\"/></p><p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; word-break: break-all; font-family: Arial, &quot;Microsoft YaHei&quot;; font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp; 2011年9月29日下午2点，由省汽车行业协会副会长张乐夫主持的2011年江苏省新能源汽车展览会新产品信息发布会在南京国际博览中心金陵会议中心扬子厅举行。我公司张秀伟副总经理应邀对供电负荷转移车、旁路电缆车、18米智能型伸缩臂新能源双动力高空作业车、43米智能型混合臂高空作业车四个产品进行了信息发布。</p><p><br/></p>', 'cms-images/article/2019_12_03/7e9a5ee44966a94709d16edb86fa4763==550x348.jpg', '', 158, 10, 1564588800, 1, 0, 0, 'zh-CN', 1575377088, 1576987169),
(48, 91, 77, '0,84,77,', NULL, NULL, NULL, '高空作业车租赁-云梯车出租报价 欢迎咨询', 'gao-kong-zuo-ye-che-zu-lin-yun-ti-che-chu-zu-bao', '', '', '推荐,首推', '', 'admin', '', '高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '高空作业车租赁，云梯车出租报价，湖北亚桥械租赁有限公司是一家专业的高空设备租赁公司，公司的设备品种有：自行曲臂式高空作业车、自行直臂式高空作业车、车载式高空作业车、蜘蛛式高空作业车、剪叉自行式升降平台、剪叉液压式升降平台、铝合金式升降平台等高空作业设备，施工高度范围从4米到52不等。', '<p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">高空作业车租赁，云梯车出租报价，</span><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">湖北亚桥械租赁有限公司是一家专业的高空设备租赁公司，公司的设备品种有：自行曲臂式高空作业车、自行直臂式高空作业车、车载式高空作业车、蜘蛛式高空作业车、剪叉自行式升降平台、剪叉液压式升降平台、铝合金式升降平台等高空作业设备，施工高度范围从4米到52不等。设备操作简单、安全、结构坚固、组合多样、可360度作业、安全性高等特点，能满足各种复杂条件的高空施工环境。</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">云梯车出租本公司设备广范应用于航天航空，云梯车出租、造船、汽车制造、电力、机场、港口、石油化工、酒店、会展中心等安装检验行业，以及厂房结构施工、高空管路的铺设、高架桥梁建造、各种大厦场馆的物业维护、安装维护信号灯；大厦外墙及大厅装修；电影、电视剧高空拍摄；园林树木修剪维护；广告、展览悬挂安装；工厂车间内立体作业；楼宇修缮、清洁、粉刷；消防高空抢险；高空管线建筑施工；顶棚、吊棚、吊灯线路维修等众多领域。</span></p><p><img alt=\"高空作业车租赁-云梯车出租报价,云梯车出租\" src=\"http://img888.hbyaqiao.com/cms-images/article/2019_12_03/d278d0476e516ded3f3dbdbacd9d4934.jpg\" style=\"box-sizing: border-box; word-break: break-all; overflow-wrap: break-word; margin: 5px auto; padding: 0px; border: 0px none; vertical-align: middle; max-width: 640px; display: block; max-height: 320px;\"/></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br/></span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">云梯车出租<span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">湖北亚桥械租赁有限公司</span>，主营从事高空作业车，路灯车，升降车租赁。历年来秉承着“以诚待人，健稳发展，安全高大”的服务理念，依靠着热情善良的西安人民对高师傅的信赖，充分利用在交通、园林市政、广告、高空清洗等行业的信息和资源优势，致力于高空机械的需求方提供安全高大的个性化高空升降机械租赁服务。本公司位于陕西西安市浐灞生态区,常年对外租赁高空作业车、路灯车、升降车、升降平台、吊车、发电机等机械。我们以用户需求为核心，坚持“质量到位、服务前列”的经营理念,在机械及行业设备－高空机械租赁行业获得了客户的一致认可和高度评价,我们以为客户创造价值为己任，期待为您服务！&nbsp;</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">2019任重道远，我们将始终秉承“诚信服务、尽善尽美”的服务理念为每一位客户做好比较好质的服务。近些年高师傅依靠豪爽的陕西人民，已经在家乡树立起良好的高空车租赁口碑成为广大新老高空车租赁客户值得信赖的合作伙伴。在此我们感谢所有支持高师傅的陕西乡党！我们永远坚信“安全比较”的原则，所有驾驶人员经历过成百上千的安全工时考验，面对突发事件沉着冷静、机智灵活为每一位为每一位高空作业客户打好安全的比较道屏障。高空车哪家好？到西安找老高！</span></p><p><img alt=\"高空作业车租赁-云梯车出租报价,云梯车出租\" src=\"http://img888.hbyaqiao.com/cms-images/article/2019_12_03/af736da9d9ed7d90e59059713572c865.jpg\" style=\"box-sizing: border-box; word-break: break-all; overflow-wrap: break-word; margin: 5px auto; padding: 0px; border: 0px none; vertical-align: middle; max-width: 640px; display: block; max-height: 320px;\"/></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br/></span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">云梯车出租出租升降车、高空车、曲臂升降车、蜘蛛车、剪刀车、高空作业平台。我们致力于高空作业车租赁，为各大工程输送大批可靠的高空作业车，常见的租赁车辆有自行式曲臂高空作业车、自行式直臂高空作业车、自行式剪型高空作业车、移动式高空作业车、移动式高空作业平台等。高空作业车在升降高度上从6米—50米不等，可靠，值得您的信赖。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">云梯车出租应用于工程建设、厂房搭建施工、厂房维护、市政、电力、路灯、通讯、园林、交通、清洁、工矿、工业安装、设备检修、立体仓库、影视广告拍摄、高空管路的铺设、各种场馆的物业维护、高架桥梁的建造和涂装等各种需要登高作业的场合。</span></p><p><br/></p>', 'cms-images/article/2019_12_03/d278d0476e516ded3f3dbdbacd9d4934==800x450.jpg', '', 140, 2500, 1575302400, 1, 0, 0, 'zh-CN', 1575377643, 1575377973),
(49, 91, 77, '0,84,77,', NULL, NULL, NULL, '如何保养高空作业平台轮胎？', 'ru-he-bao-yang-gao-kong-zuo-ye-ping-tai-lun-tai', '', '', '推荐,首推', '', 'admin', '', '高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '您已经为高空作业平台配备了崭新的轮胎组，以替换旧的旧橡胶条。他们很吵，每当你不得不刹车时，你就会失去牵引力。现在，您已经用血汗钱投资了高空作业平台。新轮胎在确保您旅行时的安全方面大有帮助。这是保养新轮胎的方法，以便在确保安全的前提下尽可能长地使用新轮胎。', '<p style=\"white-space: normal; text-align: center;\"><img class=\"alignnone size-full wp-image-3357\" src=\"http://img888.hbyaqiao.com/cms-images/article/2019_12_03/15e8d5fd5c74c885b1b6e5a7e006e007.jpg\" alt=\"高空作业平台\" width=\"500\" height=\"310\" style=\"border: 0px; vertical-align: middle; max-width: 100%; margin-left: auto; margin-right: auto; clear: both; margin-bottom: 10px; height: auto;\"/></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">您已经为</span><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">高空作业平台</span><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">配备了崭新的轮胎组，以替换旧的旧橡胶条。他们很吵，每当你不得不刹车时，你就会失去牵引力。现在，您已经用血汗钱投资了高空作业平台。新轮胎在确保您旅行时的安全方面大有帮助。这是保养新轮胎的方法，以便在确保安全的前提下尽可能长地使用新轮胎。</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br/><strong>定期进行轮胎旋转：</strong><br/>轮胎不可避免地会磨损。这是摩擦轮胎在路面上经历的不可避免的副产品。为了确保轮胎能持久使用并防止出现异常现象，如羽化或拔罐，请旋转轮胎。每个</span><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">高空作业平台</span><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">制造商都有根据其保养时间表设定的轮胎旋转间隔，最推荐的轮胎旋转间隔是每6000英里左右一次。请遵循轮胎旋转准则，以确保您的轮胎寿命最长。<br/>检查并调整轮胎压力经常需要进行的自检是轮胎压力调节。这是</span><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">高空作业平台</span><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">制造商根据车辆重量，重量分布，悬架和转向设计等标准制定的规格。推荐的车辆轮胎压力在驾驶员门框的黄色和白色贴纸上列出。<br/>如果您的轮胎压力低了甚至五个PSI，轮胎的外边缘磨损就会比正常情况快得多，每加仑的燃油经济性将降低几英里，停车距离将延长，并且当转弯或有风的条件下。如果胎压高到五个或五个以上PSI，则胎面中心会过度磨损，由于与道路的接触减少，停车距离将延长，悬架会更加牢固，并且道路噪音会很大。通常建议您在每次加油时检查轮胎压力。</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br/></span></p><p><strong><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">每年进行一次车轮定位：</span></strong></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">无论您在哪种类型的路面上行驶，都不会完全光滑。有减速带，坑洼，道路中断和路边石要应对。只需对路缘或大坑洼进行一次冲击，车轮定位就会超出规格。如果您的车轮定位不正确，则轮胎会过度磨损。通常，您甚至可能甚至不知道方向盘对准不合规格，因为方向盘仍可以是直的并且高空作业平台可能永远不会拉动。每年进行一次车轮定位，以应对日常驾驶的影响。</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br/></span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">正确保养轮胎会延长其使用寿命。</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">如果您怀疑磨损问题，请尽快检查轮胎。</span></p><p><br/></p>', 'cms-images/article/2019_12_03/15e8d5fd5c74c885b1b6e5a7e006e007==500x310.jpg', '', 108, 10, 1575302400, 1, 0, 0, 'zh-CN', 1575378478, 1575378492),
(50, 91, 77, '0,84,77,', NULL, NULL, NULL, '履带式高空作业平台预防措施有哪些', 'lu-dai-shi-gao-kong-zuo-ye-ping-tai-yu-fang-cuo-shi-you-na-xie', '', '', '推荐,首推', '', 'admin', '', '高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '履带式高空作业平台 （AWP）具有成本效益且易于使用。它重量轻，结构紧凑，可用于学校，教堂，仓库等。履带式高空作业平台也称为高空作业平台或高空作业车，是用于临时访问设备或人员到无法进入的地方的机械设备。通常在一个高度。\r\n\r\n这些机械装置通常用于为起重机操作员提供进入人类无法到达的地方的灵活性。它主要用于建筑墙壁/玻璃的建筑工程，维护或清洁。消防员还使用移动式升降工作平台在紧急情况下扑灭火灾。', '<p width=\"100%\" style=\"text-align:center\"><img src=\"http://img888.hbyaqiao.com/cms-images/article/2019_12_03/f9820b0231384aa1898956e4b2565ef7.jpg\" title=\"2019071701001399.jpg\" alt=\"2019071701001399.jpg\" width=\"639\" height=\"566\" style=\"width: 639px; height: 566px;\"/></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\"><br/></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">履带式高空作业平台</span><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">&nbsp;（AWP）具有成本效益且易于使用。它重量轻，结构紧凑，可用于学校，教堂，仓库等。</span><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">履带式高空作业平台</span><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">也称为高空作业平台或高空作业车，是用于临时访问设备或人员到无法进入的地方的机械设备。通常在一个高度。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">这些机械装置通常用于为起重机操作员提供进入人类无法到达的地方的灵活性。它主要用于建筑墙壁/玻璃的建筑工程，维护或清洁。消防员还使用移动式升降工作平台在紧急情况下扑灭火灾。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">航空设备的重量容量有限，通常不低于一吨。很少有升降工作平台具有更高的安全工作负荷（SWL）能力。履带式高空作业平台为大型建筑工地的内部工作提供解决方案，如高层建筑和轻型建筑用途。<br/>工作平台由坚固耐用的金属底座制成，并用笼子或导轨覆盖，以保护站在平台上的人。平台连接到机械臂，将平台升高到顶部。站在平台上的人可以使用位于那里的控制台来调节平台的下降或上升。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\"><br/></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">履带式高空作业平台的类型<br/>根据具体任务，有不同类型的高架平台，每种类型的平台都有其独特的燃料资源和工作机制。最常用的模型是EWP（高架工作平台）。这种类型的平台采用液压操作，非常类似于具有不同接头的起重机，使其能够用于上下应用。<br/>剪式升降机是另一种常用的履带式高空作业平台。它可以迅速上下移动，主要是因为它的展开系统由十字形结构制成，在需要时伸长和压缩。剪式升降机可以是液压，气动或机械化的。</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\"><br/></span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">履带式高空作业平台的预防措施：</span></p><p><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">1.根据任务要求规划您的工作，并确保操作员了解周围环境，可能存在的危险以及避免这些危险的方法。<br/>2.选择合适的履带式高空作业平台。访问平台提供的大小和方法应与您希望执行的任务类型相匹配。<br/>3.严格遵守提升工作平台前检查工作区等基本安全方法，缓慢小心地抬起平台，避免靠在扶手上，始*注意工作和平台的方向。移动。<br/>4.避免挤过高处的障碍物<br/>5.确保备用设备中有救援专家，以帮助您在发生意外事故时或在执行任务时遇到困难时获得安全保障。</span></p><p><br/></p>', 'cms-images/article/2019_12_03/f9820b0231384aa1898956e4b2565ef7==1500x1500.jpg', '', 123, 10, 1481040000, 1, 0, 0, 'zh-CN', 1575378884, 1575379062),
(51, 91, 77, '0,84,77,', NULL, NULL, NULL, '自行式高空作业平台上的限位开关有哪些作用？', 'zi-xing-shi-gao-kong-zuo-ye-ping-tai-shang-d', '', '', '推荐', '', 'admin', '', '高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '限位开关是一种与电路和小型机器结合使用的设备，其本质上是用来关闭或限制某些电流。在大多数情况下，这些是实际的开关，可以打开或关闭，尽管这种“翻转”通常是根据某些刺激自动完成的。这些开关有时是可见的，但通常也是较大设备或机器内部工作的一部分', '<p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">限位开关是一种与电路和小型机器结合使用的设备，其本质上是用来关闭或限制某些电流。在大多数情况下，这些是实际的开关，可以打开或关闭，尽管这种“翻转”通常是根据某些刺激自动完成的。这些开关有时是可见的，但通常也是较大设备或机器内部工作的一部分，这意味着不知道要寻找它们的人并不总是能立即识别出它们。它们可以是机械的也可以是离心的，这意味着可以通过某些特定的动作或特定的速度来触发它们。两者都用于家庭和工业中的各种设备。</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br/></span></p><p><strong><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">基本概念：</span></strong><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br/>这些开关有助于控制机械运动，因此安装它们的机器将能够尽可能高效地工作。通常，接通电源很容易，但是在适当的时候切断电源可能会更困难-这就是这些设备的用武之地。<br/>当电路“闭合”时，它允许通过开关的电流流到被供电的设备。当开关“断开”时，开关将断开，并且不会有任何电力通过。开关是打开还是闭合通常取决于被供电设备的位置或设备完成特定任务所需的设定时间。</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br/></span></p><p><strong><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">机械实例：</span></strong><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br/>多数限位开关本质上是机械的，这意味着它们按照一系列电脉冲和电流的方式工作，与大多数小型机器一样。这种开关跟踪特定项目的位置，并在该项目到达特定位置时打开或关闭。通过物理接触或缺少物理接触来激活该开关。例如，当其中一扇门打开时，车内的灯通常会打开。内部开关，根据门框的物理刺激，根据需要控制切断或供电。</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br/></span></p><p><strong><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">离心开关：</span></strong><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br/>离心开关的工作方式略有不同。这些仪表和被严格监控的项目的速度激活。尽管离心式开关有许多用途，但如果其速度高于或低于可接受的安全额定值，它就会广泛用作关闭设备的安全机构。这些开关通常用于小型设备和电器的引擎和电动机中。</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br/></span></p><p><strong><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">工业用途：</span></strong><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br/>通常最容易看到工业环境中的限位开关起作用。它们用于从控制自行式高空作业平台电动机到提供压力控制以确保工人安全的所有方面。开关可用于启动，停止或反向装配线；作为检测完成活动的传感器，例如阻止机械臂将超过一定高度的材料堆叠起来；或作为探测器在紧急情况下与防火门等安全设备配合使用。使用示例无穷无尽，并且示例的大小和可见性都不同。即使它们没有被立即注意到，它们几乎无处不在。</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br/></span></p><p><strong><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">在家中和社会中：</span></strong><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br/>家庭环境也使用这些设备。一个标准的车库门开启器就是一个很好的例子。开门器有两个限位开关：一个用于控制向开门器提供动力的电机的供电时间，另一个用于控制门上下移动的行程时间。当门到达某个点时，开关会打开，从而阻止门撞击顶部的电动机或撞到底部的地面。许多小家电也有它们。例如，当设定的时间过去后，他们可以关闭烤箱或微波炉，或者可以触发洗衣机的旋转周期结束。开关也经常在商店和公共建筑中使用。</span></p><p><br/></p>', 'cms-images/article/2019_12_03/a0e6c6e589c8546da6585ee55c4d29b1==744x756.jpg', '', 149, 10, 1575379385, 1, 0, 0, 'zh-CN', 1575379385, 1575379385),
(52, 91, 77, '0,84,77,', NULL, NULL, NULL, '湖北亚桥高空作业车操作需要注意事项', 'hu-bei-ya-qiao-gao-kong-zuo-ye-che-cao-zuo-xu', '', '', '推荐', '', 'admin', '', '', '', '<p><span style=\"font-size: 14px;\">1、汽车驾驶员必须持有驾驶证B证执照。</span></p><p><span style=\"font-size: 14px;\">2、辅加变速箱必须脱离液压油泵。　</span></p><p><span style=\"font-size: 14px;\">3、注意桥梁、隧道通行高度。　　</span></p><p><span style=\"font-size: 14px;\">4、车速一般不超过30公里/小时，郊区不超过40公里/小时。　　</span></p><p><span style=\"font-size: 14px;\">5、作业斗（平台）内谢绝滞留人员。&nbsp;</span></p><p><span style=\"font-size: 14px;\">&nbsp;</span></p><p style=\"text-align:center\"><img src=\"http://img888.hbyaqiao.com/cms-images/article/2019_12_03/186bb8eab7f1336f1bc230aedc9e662b.jpg\" title=\"22d5682d4f7f474f441ad136cd59a083.jpg\" alt=\"22d5682d4f7f474f441ad136cd59a083.jpg\"/></p><p><span style=\"font-size: 14px;\">&nbsp;</span></p><p><span style=\"font-size: 14px;\">6、停车位置选择应是坚实地面，整车倾斜度不大于3°，并开启警示闪灯。　</span></p><p><span style=\"font-size: 14px;\">7、作业高度与风力（鲍福特）；风力6级及以下适宜高度10米以下作业；风力5级能以下适宜高度11~20米以下作业；风力4级及以下适宜高度21~30米以下作业。</span></p><p><span style=\"font-size: 14px;\">8、起动油泵，踩下汽车离合器，拉上手刹车，变速箱挂空挡，扳动液压油泵离合拉杆，使液压油　泵处于工作状态。　</span></p><p><span style=\"font-size: 14px;\">9、液压油泵运转2~5分钟后，方可操纵各动作手柄。　　</span></p><p><span style=\"font-size: 14px;\">10、高空作业车的操作，应经培训并持有操作上岗证人员负责。　　</span></p><p><span style=\"font-size: 14px;\">11、操作人员要精神集中，防止误操作并严格禁酒后作业。　　</span></p><p><span style=\"font-size: 14px;\">12、首先放下支腿，必要时在支腿掌下放本垫，确保车辆处于水平状态。　　</span></p><p><span style=\"font-size: 14px;\">13、操作手柄时要平稳，切勿急速迅猛，以免导致作业臂惯性摆动过大及意外事故。</span></p><p><span style=\"font-size: 14px;\">14、要严格按照设备规定的技术参数及作业范围作业。　　<br/></span></p><p style=\"text-align:center\"><img src=\"http://img888.hbyaqiao.com/cms-images/article/2019_12_03/bf82ae6d87a0915a5bf1c975b431cb56.jpg\" title=\"d9ccde27e0ec7da05cb314c49c6e28e8.jpg\" alt=\"d9ccde27e0ec7da05cb314c49c6e28e8.jpg\"/></p><p><span style=\"font-size: 14px;\">15、作业斗（平台）上工作人员要系好安全带。　　</span></p><p><span style=\"font-size: 14px;\">16、升降作业斗（平台）时，应使上下臂交替动作，以保证作业斗（平台）处于最佳升幅半径状态　，严禁将作业臂作其它用途。　　</span></p><p><span style=\"font-size: 14px;\">17、作业时，操作人员要注意斗（平台 ）、臂与高低压导线、电话线及建筑物、大树、广告牌、灯　饰等物的安全距离。　　</span></p><p><span style=\"font-size: 14px;\">18、当值司机，负责地面并注意往来车辆的安全防护工作。　　</span></p><p><span style=\"font-size: 14px;\">19、使用作业高度25米以上作业车，除设置好安全标志及护栏外，地面监护人除司机外，还要设1-2人专责加强监护。　　</span></p><p><span style=\"font-size: 14px;\">20、作业过程中，若发现液压系统有异音或突然外漏油液，应即停止工作，待检查或修复后，方可　继续工作。　　</span></p><p><span style=\"font-size: 14px;\">21、液压系统出现故障，作业臂不能动作时，应设法使作业斗（平台）上工作人员安全撤离，并通　知专业维修人员处理。　　</span></p><p><span style=\"font-size: 14px;\">22、作业完毕，作业斗（平台），作业臂复位，收起支腿，并脱开液压油泵，松开手刹车，方可起　动行车。</span></p><p><br/></p>', 'cms-images/article/2019_12_03/186bb8eab7f1336f1bc230aedc9e662b==800x599.jpg', '', 144, 10, 1575379858, 1, 0, 0, 'zh-CN', 1575379858, 1575379858),
(53, 90, 84, '0,84,', NULL, NULL, NULL, '消费者保障政策', 'xiao-fei-zhe-bao-zhang-zheng-ce', '', '', '首推', '', 'admin', '', '', '', '<p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">您的信任对我们非常重要，我们深知个人信息对您的重要性，我们将按法律法规要求，采取相应安全保护措施，尽力保护您的个人信息安全可控。鉴此，我们制定本《消费者保障及隐私政策》</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">我们非常重视个人信息安全，并采取一切合理可行的措施，保护您的个人信息：</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br/>1、数据安全技术措施<br/>我们会采用符合业界标准的安全防护措施，包括建立合理的制度规范、安全技术来防止您的个人信息遭到未经授权的访问使用、修改,避免数据的损坏或丢失。<br/>我们的网络服务采取了传输层安全协议等加密技术，通过https等方式提供浏览服务，确保用户数据在传输过程中的安全。<br/>我们采取加密技术对用户个人信息进行加密保存，并通过隔离技术进行隔离。<br/>在个人信息使用时，例如个人信息展示、个人信息关联计算，我们会采用包括内容替换、SHA256在内多种数据脱敏技术增强个人信息在使用中安全性。<br/>我们采用严格的数据访问权限控制和多重身份认证技术保护个人信息，避免数据被违规使用。<br/>我们采用代码安全自动检查、数据访问日志分析技术进行个人信息安全审计。</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br/>2、我们为保护个人信息采取的其他安全措施<br/>我们通过建立数据分类分级制度、数据安全管理规范、数据安全开发规范来管理规范个人信息的存储和使用。<br/>我们通过信息接触者保密协议、监控和审计机制来对数据进行全面安全控制。<br/>我们建立数据安全委员会并下设信息保护专职部门、数据安全应急响应组织来推进和保障个人信息安全。<br/>安全认证和服务。我们存储您个人数据的底层云技术取得了数据中心联盟颁发的“可信云”认证三级认证、通过了公安部安全等级保护三级认证，同时还获得了ISO27000认证。<br/>加强安全意识。我们还会举办安全和隐私保护培训课程，加强员工对于保护个人信息重要性的认识。</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br/>3、我们仅允许有必要知晓这些信息的我们及我们关联方的员工、合作伙伴访问个人信息，并为此设置了严格的访问权限控制和监控机制。我们同时要求可能接触到您个人信息的所有人员履行相应的保密义务。如果未能履行这些义务，可能会被追究法律责任或被中止与京东的合作关系。</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br/>4、我们会采取一切合理可行的措施，确保未收集无关的个人信息。我们只会在达成本政策所述目的所需的期限内保留您的个人信息，除非需要延长保留期或受到法律的允许。</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><br/>5、我们还在用户数据保护上做了一些创造性工作<br/>在我们配送体系，采用了独特的“微笑面单”，避免用户敏感数据在配送环节的暴露，同时,大力强化对我们物流员工的数据安全培训和要求，提高物流员工保护用户隐私数据的意识。<br/><br/></span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">6、互联网并非绝对安全的环境，而且电子邮件、即时通讯、社交软件等与其他用户的交流方式无法确定是否完全加密，我们建议您使用此类工具时请使用复杂密码，并注意保护您的个人信息安全。<br/><br/></span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">7、互联网环境并非百分之百安全，我们将尽力确保或担保您发送给我们的任何信息的安全性。如果我们的物理、技术、或管理防护设施遭到破坏，导致信息被非授权访问、公开披露、篡改、或毁坏，导致您的合法权益受损，我们将承担相应的法律责任。<br/><br/></span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">8、安全事件处置<br/>在通过我们网站与第三方进行网上服务时，您不可避免的要向交易对方或潜在的交易对方披露自己的个人信息，如联络方式或者邮政地址等。请您妥善保护自己的个人信息，仅在必要的情形下向他人提供。<br/>为应对个人信息泄露、损毁和丢失等可能出现的风险，我们东制定了多项制度，明确安全事件、安全漏洞的分类分级标准及相应的处理流程。我们也为安全事件建立了专门的应急响应团队，按照安全事件处置规范要求，针对不同安全事件启动安全预案，进行止损、分析、定位、制定补救措施、联合相关部门进行溯源和打击。<br/>在不幸发生个人信息安全事件后，我们将按照法律法规的要求，及时向您告知：安全事件的基本情况和可能的影响、我们已采取或将要采取的处置措施、您可自主防范和降低风险的建议、对您的补救措施等。我们同时将及时将事件相关情况以邮件、信函、电话、推送通知等方式告知您，难以逐一告知个人信息主体时，我们会采取合理、有效的方式发布公告。同时，我们还将按照监管部门要求，主动上报个人信息安全事件的处置情况。</span></p><p><br/></p>', '', '', 100, 10, 1544544000, 1, 0, 0, 'zh-CN', 1575383302, 1575383336),
(54, 90, 84, '0,84,', NULL, NULL, NULL, '我们主要承接的业务包括与作业的方向', 'wo-men-zhu-yao-cheng-jie-de-ye-wu-bao-kuo-yu', '', '', '首推', '', 'admin', '', '高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '', '<p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">湖北亚桥机械租赁有限公司是一家专业从事武汉高空车租赁业务的正能量企业公司，我们主要承接的业务包括：高空作业车出租、登空车出租、升降车出租、路灯维修车出租、云梯车出租等。</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">现有自行式曲臂高空作业车出租、自行式直臂高空作业车出租、自行式剪型高空作业车出租、拖式曲臂高空作业车出租、移动式高空作业平台出租、臂架式高空平台出租、剪叉式作业平台出租、桅柱式作业平台出租、非标类高空平台出租、固定式液压升降台出租、固定式装卸货台出租、丝杆式升降平台出租、特殊形式升降台出租、电力安装车出租等。</span></p><p><br/></p>', '', '', 100, 10, 1528214400, 1, 0, 0, 'zh-CN', 1575383785, 1575383806),
(55, 90, 84, '0,84,', NULL, NULL, NULL, '我们的设备主要应用于哪些具体的场景？', 'wo-men-de-she-bei-zhu-yao-ying-yong-yu-na', '', '', '首推', '', 'admin', '', '高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '湖北亚桥机械租赁有限公司包括：高空作业车、高空作业平台、升降平台、电力安装车的工作高度从8m-48m不等，广范应用于工程建设、厂房施工、厂房维护、市政、电力、路灯、通讯、园林、交通、工矿、工业安装、设备检修、立体仓库、影视广告的制作拍摄、高空管路的铺设、各种场馆的物业维护、高架桥梁的建造和涂装等各种需要登高作业的场合、通过我们的服务来降低客户使用大型高端高空作业平台的门槛，减少建设和运营成本。', '<p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">湖北亚桥机械租赁有限公司包括：高空作业车、高空作业平台、升降平台、电力安装车的工作高度从8m-48m不等，广范应用于工程建设、厂房施工、厂房维护、市政、电力、路灯、通讯、园林、交通、工矿、工业安装、设备检修、立体仓库、影视广告的制作拍摄、高空管路的铺设、各种场馆的物业维护、高架桥梁的建造和涂装等各种需要登高作业的场合、通过我们的服务来降低客户使用大型高端高空作业平台的门槛，减少建设和运营成本。</span></p>', '', '', 100, 10, 1575383941, 1, 0, 0, 'zh-CN', 1575383941, 1575383941);

-- --------------------------------------------------------

--
-- Table structure for table `ss_cms_block`
--

CREATE TABLE `ss_cms_block` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '碎片数据id',
  `title` varchar(30) NOT NULL DEFAULT '' COMMENT '碎片数据名称',
  `picurl` varchar(80) NOT NULL DEFAULT '' COMMENT '碎片数据缩略图',
  `linkurl` varchar(80) NOT NULL DEFAULT '' COMMENT '碎片数据连接',
  `content` mediumtext COMMENT '碎片数据内容',
  `posttime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '发布时间',
  `lang` varchar(8) NOT NULL DEFAULT '' COMMENT '多语言',
  `created_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '添加时间',
  `updated_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '编辑时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='碎片管理表';

--
-- Dumping data for table `ss_cms_block`
--

INSERT INTO `ss_cms_block` (`id`, `title`, `picurl`, `linkurl`, `content`, `posttime`, `lang`, `created_at`, `updated_at`) VALUES
(1, '顶部滚动公告', '', '', '<p>亚桥租赁服务线上预约，更便捷的服务，更高效精准的服务，详情请咨询客服人员，现在预约还有优惠。&nbsp; &nbsp; &nbsp; &nbsp;</p>', 1546012800, 'zh-CN', 1546072780, 1570547787),
(2, '关于我们', '', '', '<p>湖北亚桥机械租赁有限公司是一家专业的高空作业设备租赁服务商是一家比较年轻、富有活力、充满生机的民营企业。公司主要服务于武汉地区，并逐渐扩展到华南地区各大中城市，各种高空设备齐全。管理高效，服务优质，能够满足广大市场客户的需要与需求。</p>', 1546012800, 'zh-CN', 1546078835, 1573909526),
(3, '联系我们', '', '', '<h2><span style=\"font-size: 14px;\">全国统一服务热线：</span></h2><h2 style=\"line-height: 1.5em;\">027-85315789</h2><p><img src=\"http://img001.turen2.com/cms-images/block/2019_11_04/cc5c256c0f6baf878a699388cdb6f1a0.png\" title=\"location.png\" alt=\"location.png\" width=\"16\" height=\"16\"/>&nbsp;武汉市江汉区京华国际B坐1806办</p><p><img src=\"http://img001.turen2.com/cms-images/block/2019_11_04/9139d83ac298203a239c2c24ef56032d.png\" title=\"phone.png\" alt=\"phone.png\" width=\"16\" height=\"16\"/>&nbsp;(+86) 13429835313&nbsp;李小姐</p><p><img src=\"http://img001.turen2.com/cms-images/block/2019_11_04/62109d84ddde25a9f5ddbd975f0f1cf2.png\" title=\"mail.png\" alt=\"mail.png\" width=\"16\" height=\"16\"/>&nbsp;lihuan@hbyaqiao.com</p><p>QQ 1072529021</p>', 1546790400, 'zh-CN', 1546862354, 1574045704),
(4, '移动底部简述', '', '', '<p>湖北亚桥机械租赁有限公司是一家专业的，富有活力，充满生机的高空作业设备租赁服务商。<br/></p>', 1576339200, 'zh-CN', 1576399486, 1576423565);

-- --------------------------------------------------------

--
-- Table structure for table `ss_cms_cate`
--

CREATE TABLE `ss_cms_cate` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '二级类别id',
  `parentid` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '类别上级id，顶级分类为0',
  `parentstr` varchar(50) NOT NULL DEFAULT '' COMMENT '类别上级id字符串',
  `catename` varchar(30) NOT NULL DEFAULT '' COMMENT '类别名称',
  `linkurl` varchar(255) NOT NULL DEFAULT '' COMMENT '跳转链接',
  `seotitle` varchar(80) NOT NULL DEFAULT '' COMMENT 'SEO标题',
  `keywords` varchar(50) NOT NULL DEFAULT '' COMMENT 'SEO关键词',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT 'SEO描述',
  `orderid` int(11) UNSIGNED NOT NULL DEFAULT '10' COMMENT '排列排序',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '审核状态',
  `lang` varchar(8) NOT NULL DEFAULT '' COMMENT '多语言',
  `created_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '添加时间',
  `updated_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '编辑时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='二级类别表';

--
-- Dumping data for table `ss_cms_cate`
--

INSERT INTO `ss_cms_cate` (`id`, `parentid`, `parentstr`, `catename`, `linkurl`, `seotitle`, `keywords`, `description`, `orderid`, `status`, `lang`, `created_at`, `updated_at`) VALUES
(8, 0, '0,', '类目是用在大型网站的，小网站用不上', '', '', '', '', 104, 1, 'zh-CN', 1556419081, 1572175338);

-- --------------------------------------------------------

--
-- Table structure for table `ss_cms_column`
--

CREATE TABLE `ss_cms_column` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '栏目id',
  `parentid` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '栏目上级id',
  `parentstr` varchar(50) NOT NULL DEFAULT '' COMMENT '栏目上级id字符串',
  `type` tinyint(1) UNSIGNED DEFAULT NULL COMMENT '栏目类型',
  `cname` varchar(30) NOT NULL DEFAULT '' COMMENT '栏目名称',
  `linkurl` varchar(255) NOT NULL DEFAULT '' COMMENT '跳转链接',
  `picurl` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图片',
  `picwidth` varchar(5) NOT NULL DEFAULT '' COMMENT '缩略图宽度',
  `picheight` varchar(5) NOT NULL DEFAULT '' COMMENT '缩略图高度',
  `seotitle` varchar(80) NOT NULL DEFAULT '' COMMENT 'SEO标题',
  `keywords` varchar(50) NOT NULL DEFAULT '' COMMENT 'SEO关键词',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT 'SEO描述',
  `orderid` int(11) UNSIGNED NOT NULL DEFAULT '10' COMMENT '排列排序',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '审核状态',
  `lang` varchar(8) NOT NULL DEFAULT '' COMMENT '多语言',
  `created_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '添加时间',
  `updated_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '编辑时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='栏目管理表';

--
-- Dumping data for table `ss_cms_column`
--

INSERT INTO `ss_cms_column` (`id`, `parentid`, `parentstr`, `type`, `cname`, `linkurl`, `picurl`, `picwidth`, `picheight`, `seotitle`, `keywords`, `description`, `orderid`, `status`, `lang`, `created_at`, `updated_at`) VALUES
(67, 84, '0,84,', 4, '业务范围', '', '', '', '', '业务范围', '曲臂式高空作业车，高空作业，高空作业平台，高空作业车出租，武汉高空车，登高车，业务范围', '湖北亚桥机械租赁有限公司是一家专业的高空作业设备租赁服务商。公司基于武汉服务于湖北各区，并逐渐扩展到华南地区各大中城市，各种高空设备齐全，高空作业车，高空车出租找亚桥。业务范围', 200, 1, 'zh-CN', 1545718035, 1576301087),
(76, 84, '0,84,', 2, '现场案例', '', '', '', '', '现场案例', '曲臂式高空作业车，高空作业，高空作业平台，高空作业车出租，武汉高空车，登高车，现场案例', '湖北亚桥机械租赁有限公司是一家专业的高空作业设备租赁服务商。公司基于武汉服务于湖北各区，并逐渐扩展到华南地区各大中城市，各种高空设备齐全，高空作业车，高空车出租找亚桥。现场案例', 120, 1, 'zh-CN', 1545719166, 1573893782),
(77, 84, '0,84,', 100, '资讯中心', '', '', '', '', '资讯中心', '曲臂式高空作业车，高空作业，高空作业平台，高空作业车出租，武汉高空车，登高车，资讯中心', '湖北亚桥机械租赁有限公司是一家专业的高空作业设备租赁服务商。公司基于武汉服务于湖北各区，并逐渐扩展到华南地区各大中城市，各种高空设备齐全，高空作业车，高空车出租找亚桥。资讯中心', 110, 1, 'zh-CN', 1545719179, 1570717868),
(79, 77, '0,84,77,', 1, '行业动态', '', '', '', '', '行业动态', '曲臂式高空作业车，高空作业，高空作业平台，高空作业车出租，武汉高空车，登高车，行业动态', '湖北亚桥机械租赁有限公司是一家专业的高空作业设备租赁服务商。公司基于武汉服务于湖北各区，并逐渐扩展到华南地区各大中城市，各种高空设备齐全，高空作业车，高空车出租找亚桥。行业动态', 80, 1, 'zh-CN', 1545719194, 1570548582),
(82, 84, '0,84,', 3, '文件管理', '', '', '', '', '文件管理', '曲臂式高空作业车，高空作业，高空作业平台，高空作业车出租，武汉高空车，登高车，文件管理', '湖北亚桥机械租赁有限公司是一家专业的高空作业设备租赁服务商。公司基于武汉服务于湖北各区，并逐渐扩展到华南地区各大中城市，各种高空设备齐全，高空作业车，高空车出租找亚桥。文件管理', 90, 1, 'zh-CN', 1546593366, 1546593380),
(83, 84, '0,84,', 5, '现场视频', '', '', '', '', '现场视频', '曲臂式高空作业车，高空作业，高空作业平台，高空作业车出租，武汉高空车，登高车，现场视频', '湖北亚桥机械租赁有限公司是一家专业的高空作业设备租赁服务商。公司基于武汉服务于湖北各区，并逐渐扩展到华南地区各大中城市，各种高空设备齐全，高空作业车，高空车出租找亚桥。现场视频', 80, 1, 'zh-CN', 1546593651, 1546593659),
(84, 0, '0,', 100, '网站主栏目', '', '', '', '', '', '', '', 500, 1, 'zh-CN', 1547376210, 1570717282),
(85, 84, '0,84,', 7, '常见问答', '', '', '', '', '问答互动', '曲臂式高空作业车，高空作业，高空作业平台，高空作业车出租，武汉高空车，登高车，问答互动', '湖北亚桥机械租赁有限公司是一家专业的高空作业设备租赁服务商。公司基于武汉服务于湖北各区，并逐渐扩展到华南地区各大中城市，各种高空设备齐全，高空作业车，高空车出租找亚桥。问答互动', 105, 1, 'zh-CN', 1547376235, 1576595626),
(90, 84, '0,84,', 1, '帮助中心', '', '', '', '', '帮助中心', '曲臂式高空作业车，高空作业，高空作业平台，高空作业车出租，武汉高空车，登高车，帮助中心', '湖北亚桥机械租赁有限公司是一家专业的高空作业设备租赁服务商。公司基于武汉服务于湖北各区，并逐渐扩展到华南地区各大中城市，各种高空设备齐全，高空作业车，高空车出租找亚桥。帮助中心', 100, 1, 'zh-CN', 1552057224, 1570717354),
(91, 77, '0,84,77,', 1, '公司新闻', '', '', '', '', '公司新闻', '曲臂式高空作业车，高空作业，高空作业平台，高空作业车出租，武汉高空车，登高车，公司新闻', '湖北亚桥机械租赁有限公司是一家专业的高空作业设备租赁服务商。公司基于武汉服务于湖北各区，并逐渐扩展到华南地区各大中城市，各种高空设备齐全，高空作业车，高空车出租找亚桥。公司新闻', 100, 1, 'zh-CN', 1570548550, 1570717113),
(92, 84, '0,84,', 100, '关于我们', '', '', '', '', '关于我们', '曲臂式高空作业车，高空作业，高空作业平台，高空作业车出租，武汉高空车，登高车，关于我们', '湖北亚桥机械租赁有限公司是一家专业的高空作业设备租赁服务商。公司基于武汉服务于湖北各区，并逐渐扩展到华南地区各大中城市，各种高空设备齐全，高空作业车，高空车出租找亚桥。关于我们', 207, 1, 'zh-CN', 1570716733, 1579508108),
(93, 92, '0,84,92,', 6, '公司荣誉', '', '', '', '', '公司荣誉', '曲臂式高空作业车，高空作业，高空作业平台，高空作业车出租，武汉高空车，登高车，公司荣誉', '湖北亚桥机械租赁有限公司是一家专业的高空作业设备租赁服务商。公司基于武汉服务于湖北各区，并逐渐扩展到华南地区各大中城市，各种高空设备齐全，高空作业车，高空车出租找亚桥。公司荣誉', 80, 1, 'zh-CN', 1570716758, 1570717056),
(94, 92, '0,84,92,', 6, '企业文化', '', '', '', '', '企业文化', '曲臂式高空作业车，高空作业，高空作业平台，高空作业车出租，武汉高空车，登高车，企业文化', '湖北亚桥机械租赁有限公司是一家专业的高空作业设备租赁服务商。公司基于武汉服务于湖北各区，并逐渐扩展到华南地区各大中城市，各种高空设备齐全，高空作业车，高空车出租找亚桥。企业文化', 70, 1, 'zh-CN', 1570716766, 1570717064),
(95, 92, '0,84,92,', 6, '企业历程', '', '', '', '', '企业历程', '曲臂式高空作业车，高空作业，高空作业平台，高空作业车出租，武汉高空车，登高车，企业历程', '湖北亚桥机械租赁有限公司是一家专业的高空作业设备租赁服务商。公司基于武汉服务于湖北各区，并逐渐扩展到华南地区各大中城市，各种高空设备齐全，高空作业车，高空车出租找亚桥。企业历程', 90, 0, 'zh-CN', 1570716774, 1574170835),
(96, 92, '0,84,92,', 6, '服务网点', '', '', '', '', '服务网点', '曲臂式高空作业车，高空作业，高空作业平台，高空作业车出租，武汉高空车，登高车，服务网点', '湖北亚桥机械租赁有限公司是一家专业的高空作业设备租赁服务商。公司基于武汉服务于湖北各区，并逐渐扩展到华南地区各大中城市，各种高空设备齐全，高空作业车，高空车出租找亚桥。服务网点', 60, 1, 'zh-CN', 1570716781, 1570717070),
(97, 92, '0,84,92,', 6, '在线反馈', '', '', '', '', '在线反馈', '曲臂式高空作业车，高空作业，高空作业平台，高空作业车出租，武汉高空车，登高车，在线反馈', '湖北亚桥机械租赁有限公司是一家专业的高空作业设备租赁服务商。公司基于武汉服务于湖北各区，并逐渐扩展到华南地区各大中城市，各种高空设备齐全，高空作业车，高空车出租找亚桥。在线反馈', 50, 1, 'zh-CN', 1570716789, 1570717080),
(99, 92, '0,84,92,', 6, '关于亚桥', '', '', '', '', '关于亚桥', '曲臂式高空作业车，高空作业，高空作业平台，高空作业车出租，武汉高空车，登高车，关于亚桥', '湖北亚桥机械租赁有限公司是一家专业的高空作业设备租赁服务商。公司基于武汉服务于湖北各区，并逐渐扩展到华南地区各大中城市，各种高空设备齐全，高空作业车，高空车出租找亚桥。关于亚桥', 100, 1, 'zh-CN', 1570716971, 1579508242),
(100, 84, '0,84,', 6, '法律申明', '', '', '', '', '法律申明', '曲臂式高空作业车，高空作业，高空作业平台，高空作业车出租，武汉高空车，登高车，法律申明', '湖北亚桥机械租赁有限公司是一家专业的高空作业设备租赁服务商。公司基于武汉服务于湖北各区，并逐渐扩展到华南地区各大中城市，各种高空设备齐全，高空作业车，高空车出租找亚桥。法律申明', 70, 1, 'zh-CN', 1570717212, 1570717307),
(101, 84, '0,84,', 6, '隐私协议', '', '', '', '', '隐私协议', '曲臂式高空作业车，高空作业，高空作业平台，高空作业车出租，武汉高空车，登高车，隐私协议', '湖北亚桥机械租赁有限公司是一家专业的高空作业设备租赁服务商。公司基于武汉服务于湖北各区，并逐渐扩展到华南地区各大中城市，各种高空设备齐全，高空作业车，高空车出租找亚桥。隐私协议', 60, 1, 'zh-CN', 1570717223, 1570717308),
(102, 84, '0,84,', 6, '企业对接', '', '', '', '', '企业对接', '曲臂式高空作业车，高空作业，高空作业平台，高空作业车出租，武汉高空车，登高车，企业对接', '湖北亚桥机械租赁有限公司是一家专业的高空作业设备租赁服务商。公司基于武汉服务于湖北各区，并逐渐扩展到华南地区各大中城市，各种高空设备齐全，高空作业车，高空车出租找亚桥。企业对接', 75, 1, 'zh-CN', 1570719430, 1570719452),
(103, 92, '0,84,92,', 6, '联系我们', '', '', '', '', '联系我们', '曲臂式高空作业车，高空作业，高空作业平台，高空作业车出租，武汉高空车，登高车，联系我们', '湖北亚桥机械租赁有限公司是一家专业的高空作业设备租赁服务商。公司基于武汉服务于湖北各区，并逐渐扩展到华南地区各大中城市，各种高空设备齐全，高空作业车，高空车出租找亚桥。联系我们', 65, 1, 'zh-CN', 1573056923, 1573056944),
(104, 84, '0,84,', 2, '车型展示', '', '', '', '', '车型展示', '曲臂式高空作业车，高空作业，高空作业平台，高空作业车出租，武汉高空车，登高车，车型展示', '湖北亚桥机械租赁有限公司是一家专业的高空作业设备租赁服务商。公司基于武汉服务于湖北各区，并逐渐扩展到华南地区各大中城市，各种高空设备齐全，高空作业车，高空车出租找亚桥。车型展示', 115, 1, 'zh-CN', 1574612354, 1574612376);

-- --------------------------------------------------------

--
-- Table structure for table `ss_cms_file`
--

CREATE TABLE `ss_cms_file` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '软件信息id',
  `columnid` int(11) UNSIGNED DEFAULT NULL COMMENT '所属栏目id',
  `parentid` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '所属栏目上级id',
  `parentstr` varchar(80) NOT NULL DEFAULT '' COMMENT '所属栏目上级id字符串',
  `cateid` int(11) UNSIGNED DEFAULT NULL COMMENT '类别id',
  `catepid` int(11) UNSIGNED DEFAULT NULL COMMENT '类别父id',
  `catepstr` varchar(80) DEFAULT NULL COMMENT '多级父id',
  `title` varchar(80) NOT NULL DEFAULT '' COMMENT '标题',
  `slug` varchar(200) NOT NULL DEFAULT '' COMMENT '访问链接',
  `colorval` char(10) NOT NULL DEFAULT '' COMMENT '字体颜色',
  `boldval` char(10) NOT NULL DEFAULT '' COMMENT '字体加粗',
  `flag` varchar(30) DEFAULT NULL COMMENT '属性',
  `source` varchar(50) NOT NULL DEFAULT '' COMMENT '文章来源',
  `author` varchar(50) NOT NULL DEFAULT '' COMMENT '作者编辑',
  `filetype` char(4) NOT NULL DEFAULT '' COMMENT '文件类型',
  `filesize` varchar(10) NOT NULL DEFAULT '' COMMENT '软件大小',
  `website` varchar(255) NOT NULL DEFAULT '' COMMENT '官方网站',
  `demourl` varchar(255) NOT NULL DEFAULT '' COMMENT '演示地址',
  `dlurl` varchar(255) NOT NULL DEFAULT '' COMMENT '下载地址',
  `linkurl` varchar(255) NOT NULL DEFAULT '' COMMENT '跳转链接',
  `keywords` varchar(50) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `content` mediumtext COMMENT '内容',
  `picurl` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图片',
  `picarr` text COMMENT '截图展示',
  `hits` mediumint(8) UNSIGNED NOT NULL DEFAULT '100' COMMENT '点击次数',
  `orderid` int(11) UNSIGNED NOT NULL DEFAULT '10' COMMENT '排列排序',
  `posttime` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '审核状态',
  `delstate` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '删除状态',
  `deltime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '删除时间',
  `lang` varchar(8) NOT NULL DEFAULT '' COMMENT '多语言',
  `created_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '添加时间',
  `updated_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '编辑时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文件管理表';

--
-- Dumping data for table `ss_cms_file`
--

INSERT INTO `ss_cms_file` (`id`, `columnid`, `parentid`, `parentstr`, `cateid`, `catepid`, `catepstr`, `title`, `slug`, `colorval`, `boldval`, `flag`, `source`, `author`, `filetype`, `filesize`, `website`, `demourl`, `dlurl`, `linkurl`, `keywords`, `description`, `content`, `picurl`, `picarr`, `hits`, `orderid`, `posttime`, `status`, `delstate`, `deltime`, `lang`, `created_at`, `updated_at`) VALUES
(1, 11, 0, '0,', 12, 15, '0,15,', '腾讯QQ', '', '', '', 'tj', '', 'admin', '.exe', '51.3', 'http://im.qq.com/', 'http://im.qq.com/', 'http://im.qq.com/', '', 'QQ,QQ2012,腾讯QQ2012', '免费的即时通讯平台，带来更多的沟通乐趣。', '<p>腾讯推出的即时通讯工具。支持在线聊天、视频电话、点对点断点续传文件、共享文件、网络硬盘、自定义面板、QQ邮箱等多种功能。免费的通讯平台，给您带来更多沟通乐趣。</p>', 'cms/2018_09_02/e90f9fb903bffba135e1459383c799bf.png', '', 132, 1, 1538668800, 1, 1, 1545465156, 'zh-CN', 0, 1542873015),
(3, 11, 0, '0,', 1, 0, '0,', '公司机密文档下载', '', '', '', 'a,f,h', '', 'admin', '', '', '', '', 'fsfsdf', '', '', '', '', '', '', 100, 10, 1538668800, 1, 1, 1545465156, 'zh-CN', 0, 1538718221),
(4, 11, 0, '0,', 1, 15, '0,15,', '公司机密文档下载002', '', '', '', 'tj', '', 'admin', '', '', '', '', 'sfasf', '', '', '', '', 'cms/2018_08_25/a54d16ff54fafb33050d265a36d3a404.jpg', '', 100, 10, 1538668800, 1, 1, 1545465156, 'zh-CN', 0, 1542870001),
(7, 11, 0, '0,', 12, 1, '0,1,', 'test', '', '', '', 'j', '', 'admin', '', '', '', '', 'ddd', '', '', '', '', 'cms/2018_08_25/a54d16ff54fafb33050d265a36d3a404.jpg', '', 100, 11, 1538668800, 1, 1, 1538723274, 'zh-CN', 1535200273, 1538718121),
(8, 11, 0, '0,', 1, 0, '0,', 'abc', '', '', '', '', '', 'admin', '', '', '', '', 'ddd', '', '', '', '', '', '', 100, 12, 1538668800, 1, 1, 1538723271, 'zh-CN', 1538720164, 1538720164),
(9, 11, 0, '0,', 1, 15, '0,15,', '8888888', '', '', '', '', '', 'admin', '', '', '', '', 'ddd', '', '', '', '', '', '', 100, 13, 1543507200, 1, 1, 1545465156, 'zh-CN', 1542165489, 1542869994),
(10, 82, 0, '0,', NULL, NULL, NULL, '实木沙发垫子，选购实木沙发垫子的技巧', 'shi-mu-sha-fa-dian', '', '', '', '百度百家号1：http://baijia.baidu.com/1', 'admin', '', '', '', '', '88888', '', '', '', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">现在很多人会在沙发上铺设一层垫子，这不光可以保护沙发，还对家装有了更好的装饰效果。实木沙发铺设垫子可以让人们有更多的舒适感。沙发垫子的材质有很多种，什么材质的沙发垫适合实木沙发？<span style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-size: 12px;\">接下来就请大家跟随装修之家小编一起来了解一下有关</span><span style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit;\">实木沙发垫子</span><span style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-size: 12px;\">的一些内容吧。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\"><img title=\"实木沙发垫子\" alt=\"实木沙发垫子\" src=\"http://img01.lingdangpet.cn/cms-images/file/2019_01_04/3319b8722c79f9c3d40105313558eef9.jpg\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">实木沙发垫子的功能：</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">1、保护沙发：沙发放在客厅面对灰尘。、很多驴子，很容易弄脏或划伤，沙发垫可以给沙发一层保护层</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">2、坐得舒服：例如，在夏天，沙发太烫不能放在垫子上，冬天，实木沙发太冷，不能放在布垫上</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">3、装饰点缀：作为柔软的装饰，沙发垫很好用，装饰点缀效果</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">实木沙发垫子-----选购实木沙发垫子的技巧</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">1、根据客厅的装修风格与实木沙发搭配，如颜色、样式、表格、大小等。这些是购买实木沙发的首选。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">如果客厅的装饰是美式风格，配有乡村风格的实木沙发，那就是不协调的。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">2、对于老年人，沙发座椅的高度应适中。如果它太低，老年人感觉不方便。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">对于新婚夫妇，将来应考虑出生后儿童的安全性和耐久性。沙发不应有锋利的棱角，颜色应鲜明亮丽。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">3、实木沙发除了使用功能外，还起到了环保的作用。因此，实木沙发的风格和颜色应与家居装饰的主要颜色一致、。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">实木沙发垫子-----沙发选择什么垫子</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">1、布艺沙发：布艺沙发通常都有可拆卸的布艺套装，所以布艺沙发，除了夏天太热，不能垫竹席沙发，没有其他时间需要填充</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">2、真皮沙发：真皮沙发，便宜的质量渣滓，昂贵的保养护理，真皮沙发，如果你不小心发现拉链等硬物，很容易刮，所以建议有一个好地毯;</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">但从美学的角度来看，真皮沙发原本是一种美观和高品质的产品，而且坐垫看起来会略显难看。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">因此，如果您打算购买真皮沙发，您必须牢记：您必须始终保持注意力，否则您必须支撑沙发垫。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\"><img title=\"实木沙发垫子\" alt=\"实木沙发垫子\" src=\"http://img01.lingdangpet.cn/cms-images/file/2019_01_04/52ae4608f93bb826c3e3d1675dd83916.jpg\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">3、实木沙发，它更加灵活，夏天可以用竹子做成，冬天可以做成面料。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">实木沙发垫子-----优质的沙发品牌</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">1、曲美沙发</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">曲美沙发是一家中国家具公司。这是一家销售、的家具公司。它致力于为消费者提供健康和尊重环境的家具产品。市场上的产品销售始终处于最前沿。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">2、韩菲尔</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">韩菲儿是Melody Furniture Network的品牌。它集成了、的产品并具有卓越的品质。经过多年的不断发展，它已得到消费者的认可。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">3、丽豪</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">丽豪沙发成立于1999年，总部位于浙江省安吉市阳光工业园区。它是最影响家具市场朋友的品牌之一。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">他一直坚持创新，进入国家并在国内赢得了许多荣誉。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">4、左右沙发</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">左右沙发已存在20多年，门店分布在170多个大中城市，产品畅销十多个国家和地区，是高级沙发的知名品牌。在中国的范围。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">5、芝华仕</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">芝华仕沙发主要以实用沙发为基础。产品采用先进的生产工艺，将沙发的功能发挥到极致。这是许多人喜欢的沙发品牌。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">6、顾家沙发</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">顾家沙发是中国领先的家具品牌。它成立于20多年前，主要从事各种家具产品的研究和生产。销量在中国处于领先地位。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">7、吉斯</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\"><img title=\"实木沙发垫子\" alt=\"实木沙发垫子\" src=\"http://img01.lingdangpet.cn/cms-images/file/2019_01_04/9b2521b964c2894f729f4377609aaf7c.jpg\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">吉斯沙发成立于1988年，是烟台吉斯家具集团有限公司的品牌，是中国十大实木沙发品牌之一，产品畅销国内外。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">以上就是小编今天为你整理的有关实木沙发垫子的一些内容，沙发是家庭中不可缺少的家具，我们在生活中经常会用到它。希望上面的内容能够对有需要的朋友带来一点帮助，感谢您的阅读，想要了解更多资讯请继续关注装修之家网。</p><p><br/></p>', 'cms-images/file/2019_01_04/52ae4608f93bb826c3e3d1675dd83916.jpg', '', 100, 14, 1546593495, 1, 0, 0, 'zh-CN', 1546593495, 1570353718);

-- --------------------------------------------------------

--
-- Table structure for table `ss_cms_flag`
--

CREATE TABLE `ss_cms_flag` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '信息标记id',
  `flag` varchar(30) NOT NULL DEFAULT '' COMMENT '标记值',
  `flagname` varchar(30) NOT NULL DEFAULT '' COMMENT '标记名称',
  `orderid` int(11) UNSIGNED NOT NULL DEFAULT '10' COMMENT '排列排序',
  `type` tinyint(2) UNSIGNED DEFAULT NULL COMMENT '所属栏目类型',
  `lang` varchar(8) NOT NULL DEFAULT '' COMMENT '多语言',
  `created_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '添加时间',
  `updated_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '编辑时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='全局标签表';

--
-- Dumping data for table `ss_cms_flag`
--

INSERT INTO `ss_cms_flag` (`id`, `flag`, `flagname`, `orderid`, `type`, `lang`, `created_at`, `updated_at`) VALUES
(15, 'test', 'test', 10, 0, 'en-US', 1538564059, 1538564059),
(16, '推荐', '推荐文章', 100, 1, 'zh-CN', 1546864636, 1546864979),
(17, '推荐', '推荐视频', 60, 5, 'zh-CN', 1546864850, 1546864992),
(18, '推荐', '推荐下载', 80, 3, 'zh-CN', 1546864861, 1546864988),
(19, '推荐', '推荐产品', 70, 4, 'zh-CN', 1546864881, 1546864996),
(20, '推荐', '推荐图片', 90, 2, 'zh-CN', 1546864909, 1546864983),
(21, '置顶', '置顶文章', 100, 1, 'zh-CN', 1546864636, 1546864979),
(22, '置顶', '置顶视频', 60, 5, 'zh-CN', 1546864850, 1546864992),
(23, '置顶', '置顶下载', 80, 3, 'zh-CN', 1546864861, 1546864988),
(24, '置首', '置顶首页', 70, 4, 'zh-CN', 1546864881, 1572175459),
(25, '置顶', '置顶图片', 90, 2, 'zh-CN', 1546864909, 1546864983),
(26, '相关', '相关文章', 100, 1, 'zh-CN', 1546864636, 1546864979),
(27, '相关', '相关视频', 60, 5, 'zh-CN', 1546864850, 1546864992),
(28, '相关', '相关下载', 80, 3, 'zh-CN', 1546864861, 1546864988),
(29, '相关', '相关产品', 70, 4, 'zh-CN', 1546864881, 1546864996),
(30, '相关', '相关图片', 90, 2, 'zh-CN', 1546864909, 1546864983),
(31, '还看', '还看文章', 100, 1, 'zh-CN', 1546864636, 1546864979),
(32, '还看', '还看视频', 60, 5, 'zh-CN', 1546864850, 1546864992),
(33, '还看', '还看下载', 80, 3, 'zh-CN', 1546864861, 1546864988),
(34, '还看', '还看产品', 70, 4, 'zh-CN', 1546864881, 1546864996),
(35, '还看', '还看图片', 90, 2, 'zh-CN', 1546864909, 1546864983),
(36, '业务问答', '业务问答', 10, 7, 'zh-CN', 1547380664, 1572174708),
(37, '最新问答', '最新问答', 10, 7, 'zh-CN', 1547380690, 1547380690),
(38, '置首', '置顶首页', 10, 2, 'zh-CN', 1551883448, 1572175486),
(39, '首推', '首页推荐', 10, 1, 'zh-CN', 1552054695, 1552054695),
(41, '幻首', '幻灯片首页', 10, 2, 'zh-CN', 1572175875, 1572175875);

-- --------------------------------------------------------

--
-- Table structure for table `ss_cms_info`
--

CREATE TABLE `ss_cms_info` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '单页id',
  `columnid` int(11) UNSIGNED DEFAULT NULL COMMENT '所属栏目id',
  `slug` varchar(200) NOT NULL DEFAULT '' COMMENT '链接别名',
  `picurl` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图片',
  `content` mediumtext COMMENT '内容',
  `posttime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '发布时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='简单页面';

--
-- Dumping data for table `ss_cms_info`
--

INSERT INTO `ss_cms_info` (`id`, `columnid`, `slug`, `picurl`, `content`, `posttime`) VALUES
(41, 99, 'guan-yu-ya-qiao-zu-lin', '', '<p><img src=\"http://img888.hbyaqiao.com/cms-images/info/2019_12_03/dacf66c40687c02c0bd424c2228788b5.jpg\" title=\"d9ccde27e0ec7da05cb314c49c6e28e8.jpg\" alt=\"d9ccde27e0ec7da05cb314c49c6e28e8.jpg\" width=\"347\" height=\"229\" style=\"width: 347px; height: 229px; float: left; margin: 10px 20px 10px 0px;\"/></p><p>湖北亚桥机械租赁有限公司是一家专业的高空作业设备租赁服务商是一家比较年轻、富有活力、充满生机的民营企业。我们管理高效，服务优质，能满足不同客户对高空作业设备种类、施工方案、设备维修和其他售后服务的需求。</p><p>可以从事LED灯安装、厂房检测、广告安装、桥梁检修、高空拍摄、太阳能安装、外墙油漆粉刷、外墙玻璃清洗、会展布景、电力安装、升旗安装、绿化修剪、监控设备安装、隧道检测、同时兼营路灯维修、庭院灯维修等高空作业项目，公司高空作业设备种类齐全，包括：曲臂式、直臂式、剪叉式、越野式、蜘蛛式、车载式、铝合金式等高空作业设备。</p><p>设备广泛应用于各类工程建设、航天航空、造船、汽车制造、电力、机场、港口、石油化工、酒店、会展中心等安装检验行业，拥有一支专业的24小时服务团队，为客户提供及时的设备使用保障服务。</p><p>湖北亚桥机械租赁自成立以来一直专注于为客户提供安全、便捷的高空作业和高压清洗系统解决方案，获得了客户的的好评，并已服务于多家企业，其中包括有万达影院、爱尔眼科、蒙牛、中国银行、永辉超市、顺丰速运、格力空调专卖店等知名企业。</p><p>目前的服务范围涵盖：武汉、黄石、宜昌、长沙、黄冈、荆州、咸宁、益阳、南昌、襄阳等湖北及周边地区，同时我们的业务在快速拓展，争取对全国范围内的客户服务。</p><p><strong>可按照客户的需求，按天、周、月等时长灵活出租，免费现场勘测，开具正规发票。</strong></p><p>1、电话给您报价，必要时安排业务员免费到现场查看。</p><p>2、确定需求后，现场签订合同，并安排车辆进场。</p><p>3、7天*24小时后续维修保养服务。</p><p><strong>合理的价格、安全快捷的服务，同时本着公平竞争的准则，欢迎您的来电！</strong></p><p>1、我们的经营范围不限于：路灯维修、外墙粉刷、机场/火车站、高空广告拍摄、幕墙安装与清洗、电子厂房、汽车厂房、机场检修、风电系统、广告安装、桥梁维护、钢结构安装、楼宇清洁、场馆建设、石化系统、房屋建设、场馆维护、游乐场、高架桥、市政工程、船舶等。</p><p>2、经营宗旨：效率求生存，信誉树品牌。</p><p>3、经营理念：为客户服务，售后无忧，追求周到。</p><p style=\"text-align:center\"><img src=\"http://img001.turen2.com/cms-images/info/2019_11_17/df0c9aa534cfbb388e57828099e9e9d6.jpg\" title=\"logo02.jpg\" alt=\"logo02.jpg\" width=\"306\" height=\"200\" style=\"width: 306px; height: 200px;\"/></p><h2 class=\"text-center\" style=\"font-family: inherit; white-space: normal; box-sizing: border-box; font-weight: 500; line-height: 1.1; color: rgb(25, 30, 40); margin-top: 0px; margin-bottom: 50px; font-size: 28px; text-align: center;\"><span style=\"font-size: 24px;color: rgb(63, 63, 63);\">用我们的设备和技术支撑客户的需求！</span></h2><p><br/></p>', 1570636800),
(42, 95, 'qi-ye-li-cheng', '', '<p>企业历程，正在提交中.....</p>', 1570636800),
(43, 93, 'gong-si-rong-yu', '', '<p style=\"text-align:center\"><br/></p><p><br/></p><p style=\"text-align:center\"><img src=\"http://img001.turen2.com/cms-images/info/2019_11_16/30fa5389835e45f5d5a520a81c5be5fc.jpg\" title=\"安全生产.jpg\" alt=\"安全生产.jpg\" style=\"width: 700px;\"/></p><p><br/></p><p style=\"text-align:center\"><img src=\"http://img001.turen2.com/cms-images/info/2019_11_16/bb3664c4be4fe8746bbb9cc0d88f3ded.jpg\" title=\"资质等级证书.jpg\" alt=\"资质等级证书.jpg\" style=\"width: 700px;\"/></p><p><br/></p><p style=\"text-align:center\"><img src=\"http://img001.turen2.com/cms-images/info/2019_11_16/3eaf827f352e1a29be7ebf6c45041892.jpg\" title=\"质量认证.jpg\" alt=\"质量认证.jpg\" style=\"width: 700px;\"/></p><p><br/></p><p style=\"text-align:center\"><img src=\"http://img001.turen2.com/cms-images/info/2019_11_16/c9a167ba0852a83ce065f3a1cd733e38.jpg\" title=\"优秀企业.jpg\" alt=\"优秀企业.jpg\" style=\"width: 700px;\"/></p><p><br/></p><p style=\"text-align:center\"><img src=\"http://img001.turen2.com/cms-images/info/2019_11_16/7ef7cd95113163a37a16dbc64b7cda82.jpg\" title=\"诚信企业.jpg\" alt=\"诚信企业.jpg\" style=\"width: 700px;\"/></p><p><br/></p>', 1570636800),
(44, 94, 'qi-ye-wen-hua', '', '<p><img src=\"http://img001.turen2.com/cms-images/info/2019_11_17/e53030f603bdd47b3a2a53ed17354958.jpg\" title=\"核心价值观.jpg\" alt=\"核心价值观.jpg\" style=\"float: left; width: 350px; margin-right: 20px; margin-bottom: 10px;\"/></p><p style=\"font-size: 14px;\">面对高空作业平台行业迅猛发展，亚桥租赁有限公司将继续坚持改赁革和创新，以优质的全方位服务，不断满足客户需求，倾力打造提升公司形象，将亚桥租赁有限公司建设成为管理决策科学、经营理念先进的一流高空作业平台行业公司，公司将一如既往秉着人和、礼貌、忠诚、努力、创新的经营理念为宗旨打好品牌战略服务客户。</p><p class=\"no-indent\"><span style=\"font-size: 14px;\">人和：以人为本，建立客户与公司的双赢局面。</span></p><p class=\"no-indent\"><span style=\"font-size: 14px;\">礼貌：以亲善有礼作为服务的最高指导原则，为企业提高整体形象。</span></p><p class=\"no-indent\"><span style=\"font-size: 14px;\">忠诚：激发全体员工的向心力，建立精神的服务团队。</span></p><p class=\"no-indent\"><span style=\"font-size: 14px;\">努力：随时强化员工的在职学能，提升企业的竞争能力。</span></p><p class=\"no-indent\"><span style=\"font-size: 14px;\">创新：跟随用户及市场变化要求，不断提高产品层次。</span></p><p class=\"no-indent\"><strong><span style=\"font-size: 14px;\">亚桥租赁宗旨：为顾客创造价值，为员工创造机会，为社会创造效益。</span></strong></p><p class=\"no-indent\"><strong><span style=\"font-size: 14px;\">亚桥租赁精神：真诚、创新、激情、勤奋。</span></strong></p><p class=\"no-indent\"><strong><span style=\"font-size: 14px;\">亚桥租赁策略：经营最好的产品，提供最好的服务，创建最好的团队。</span></strong></p><p class=\"no-indent\"><strong><span style=\"font-size: 14px;\">亚桥租赁口号：信用好、品质好、服务好。</span></strong></p><p class=\"no-indent\"><br/></p>', 1570636800),
(45, 96, 'fu-wu-wang-dian', '', '服务网点', 1570636800),
(46, 97, 'zai-xian-fan-kui', '', '在线反馈', 1570636800),
(47, 100, 'fa-lu-shen-ming', '', '<p>若要访问和使用网站，您必须不加修改地完全接受本协议中所包含的条款、条件和网站即时刊登的通告，并且遵守有关互联网及/或本网站的相关法律、规定与规则。一旦您访问、使用了 网站，即表示您同意并接受了所有该等条款、条件及通告。&nbsp;</p><p>本网站上的信息：</p><p>本网站上关于会员或他们的产品（包括但不限于公司名称、联系人及联络信息，产品的描述和说明，相关图片、视讯等）的信息均由会员自行提供，会员依法应对其提供的任何信息承担全部责任。对此等信息的准确性、完整性、合法性或真实性均不承担任何责任。此外，对任何使用或提供本网站信息的商业活动及其风险不承担任何责任。</p><p>未经合法权利人的书面许可，任何人严禁在本网站展示产品图片。任何未经授权便在本网站上使用该图片都可能违反国际法，商标法，隐私权法，通讯、通信等法律法规。</p><p>浏览者可以下载本网站上显示的资料，但这些资料只限用于个人学习研究使用，不得用于任何商业用途，无论是否在资料上明示，所有此等资料都是受到版权法的法律保护。浏览者没有获得或各自的版权所有者明确的书面同意下，不得分发、修改、散布、再使用、再传递或使用本网站的内容用于任何公众商业用途。</p><p>意见及网上论坛：</p><p>本网站表述的任何意见均属于作者个人意见，并不代表、运营商或关联公司的意见。&nbsp;&nbsp;</p><p>版权和商标：</p><p>网版权所有。所有的权利均在全世界范围内受到法律保护，除非有其他的标注或在此等条款和规则中被允许使用，本网站上可阅读和可见的所有资料都受到知识产权法的保护。</p><p>LOGO商标或标识都是公司的商品及服务商标和商号。所有其他公司没有主张权利的商标和产品名称则可能是它们各自所有权人的商标或注册商标，未获得或其他在本网站上有权使用商标的第三方的书面同意下，本网站不应理解为授权使用被展示于本网站的任何商标。</p><p>免责声明：</p><p>公司在此特别声明对如下事宜不承担任何法律责任：</p><p>（一）在此声明，对您使用网站、与本网站相关的任何内容、服务或其它链接至本网站的站点、内容均不作直接、间接、法定、约定的保证。</p><p>（二）无论在任何原因下（包括但不限于疏忽原因），对您或任何人通过使用本网站上的信息或由本网站链接的信息，或其他与本网站链接的网站信息所导致的损失或损害（包括直接、间接、特别或后果性的损失或损害，例如收入或利润之损失，电脑系统之损坏或数据丢失等后果），责任均由使用者自行承担（包括但不限于疏忽责任）&nbsp;</p><p>使用者对本网站的使用即表明同意承担浏览本网站的全部风险，由于、运营商或关联公司未参与建设、制作或发展本网站或提供内容，对使用者在本网站存取资料所导致的任何直接、相关的、后果性的、间接的或金钱上的损失不承担任何责任。</p><p><br/></p>', 1570636800),
(48, 101, 'yin-si-xie-yi', '', '<p>我们非常重视保护用户的隐私权，请您在浏览本网站以及使用本网站的特定服务之前，仔细阅读本隐私权声明。使用本网站，即视为您同意本隐私权声明并同意本网站根据本隐私权声明收集、使用、披露您的个人信息。本隐私权声明主要包括 如下内容：当您浏览本网站时，我们向您收集哪些信息；我们如何使用这些信息；我们会在何种情况下披露这些信息；以及您的选择。</p><p>本隐私权声明适用于本网站收集的关于您的个人信息。请注意本网站可能包含连接到其他网站的链接，我们对这些其他网 站的隐私权做法不承担任何责任。我们建议您仔细阅读您所浏览的其他网站的隐私权声明。</p><p>您向我们提供的信息。 如果您仅仅浏览本网站的一般性内容，我们并不要求您提供任何个人信息。在您需要使用或浏览我 们提供的特定服务或信息时（比如参加公共论坛讨论或直接联系本网站），在您的同意及确认下，我们可能会以线上或线 下注册表格的形式要求您提供如下个人资料和信息：</p><p>具体信息，比如姓名，年龄，出生日期，电子邮箱，电话号码，传真号码，手机号码，通讯地址等；</p><p>一般性信息，比如您的性别，年龄，职业，教育，收入状况，婚姻家庭状况，兴趣爱好等；</p><p>仅在特定情况下（比如您需要付费才能享有的服务或产品，或参加本网站参与或组织的抽奖或竞赛活动），我们会要求您 提供个人付款信息和身份证件信息，比如信用卡号码或身份证及护照号码。</p><p>我们自动收集的信息。 当您浏览本网站时（不管是否注册或登录），本网站可能自动收集与您相关的如下信息：</p><p>您的浏览器类型和浏览器语言、操作系统类型、宽带类型；</p><p>您的IP (Internet Protocol)地址，该地址有时可以显示您所在地理位置；</p><p>您在本网站内浏览过的页面、广告和链接；</p><p>您访问本网站时发出的访问请求及其日期、时间和引荐网址（如有）；</p><p>通过Cookie标注您的浏览器的唯一性和在本网站的账户信息（包括您访问本网站的各项活动，浏览习惯，消费习惯，账户 信息等）；</p><p>您可以通过修改浏览器设置的方式拒绝cookie，如果您拒绝cookie，您可能无法使用依赖于cookie才能提供的 本网站服务或功能；</p><p>&nbsp;我们可能会使用浏览器网络存储（包括 HTML 5）和应用程序数据缓存等机制，在您的设备上收集和 存储您所浏览过的网页信息；&nbsp;</p><p>当您使用本网站提供的具有定位功能的服务时，我们可能会收集并处理有关您实际所在位置 的信息（例如移动设备发送的 GPS 信号），我们还可能使用各种技术进行定位，例如来自您设备的传感器数据就可以提供 附近 Wi-Fi 接入点和移动运营商基站的信息。&nbsp;</p><p>请注意，本隐私权声明不适用于任何向您提供服务的第三方主体，包括那些可能向本网站披露信息的第三方。</p><p><br/></p>', 1570636800),
(49, 102, 'qi-ye-dui-jie', 'cms-images/info/2019_11_30/62e3748459dac46faf943d503b58b74e==400x170.png', '<p style=\"margin-top: 20px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; text-align: center; color: rgb(51, 51, 51); font-size: 18px; font-family: &quot;microsoft yahei&quot;, STXihei; background-color: rgb(255, 255, 255);\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">快速响应企业客户服务需求，第一时间解决客户问题</span></p><p style=\"margin-top: 20px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 18px; font-family: &quot;microsoft yahei&quot;, STXihei; background-color: rgb(255, 255, 255); text-align: center;\"><img src=\"http://img888.hbyaqiao.com/cms-images/info/2019_12_21/859ff4d6e6d8b6f24e06e19e7c66e201.jpg\" alt=\"亚桥机械设备服务车队\" style=\"color: rgb(102, 102, 102); font-size: 14px; box-sizing: border-box; outline: 0px; margin: 0px; padding: 0px; border: 0px; max-width: 100%;\"/></p><p style=\"margin-top: 20px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 18px; font-family: &quot;microsoft yahei&quot;, STXihei; background-color: rgb(255, 255, 255);\"><br/></p><h3 style=\"white-space: normal; font-family: &quot;microsoft yahei&quot;, STXihei; background-color: rgb(255, 255, 255); box-sizing: border-box; outline: 0px; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 16px; font-weight: normal; text-align: center;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><span style=\"box-sizing: border-box; outline: 0px; margin: 0px; padding: 0px; font-size: 60px; font-family: arial; position: relative; bottom: -2px; color: rgb(255, 111, 32);\">7×24</span>小时</span></h3><p style=\"margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; text-align: center;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">全天候服务于企业级需求</span></p><p style=\"margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; text-align: center;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">随时待命、迅速响应，保障设备高效运转</span></p><h3 style=\"white-space: normal; font-family: &quot;microsoft yahei&quot;, STXihei; background-color: rgb(255, 255, 255); box-sizing: border-box; outline: 0px; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 16px; font-weight: normal; text-align: center;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><span style=\"box-sizing: border-box; outline: 0px; margin: 0px; padding: 0px; font-size: 60px; font-family: arial; position: relative; bottom: -2px; color: rgb(255, 111, 32);\">90</span>辆</span></h3><p style=\"margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; text-align: center;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">各种高空服务车，打造华南地区行业第一服务品牌</span></p><p style=\"margin-top: 20px; margin-bottom: 0px; white-space: normal; box-sizing: border-box; outline: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 18px; font-family: &quot;microsoft yahei&quot;, STXihei; background-color: rgb(255, 255, 255); text-align: center;\"><br/></p><p style=\"white-space: normal; text-align: center;\"><span style=\"box-sizing: border-box; line-height: 1.5; font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">臂式高空作业平台</strong></span></p><p style=\"white-space: normal; text-align: center;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; box-sizing: border-box; line-height: 1.5;\">所有设备均可自行走，包含直臂式、曲臂式、曲臂（蜘蛛）式、直臂桥式、以及高空作业风管车等。</span></p><p style=\"white-space: normal; text-align: center;\"><span style=\"box-sizing: border-box; line-height: 1.5; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">动力类型又可分为柴油机和蓄电池两种方式。</span></p><p style=\"white-space: normal; text-align: center;\"><span style=\"box-sizing: border-box; line-height: 1.5; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"></span><img src=\"http://img888.hbyaqiao.com/cms-images/info/2019_12_21/6673299b376f96507c15bfecdaefb4ed.png\" alt=\"00120180408154974427442.png\" title=\"00120180408154974427442.png\" style=\"box-sizing: border-box; border: none; margin: 0px; padding: 0px; height: auto; overflow: hidden; max-width: 100%;\"/><span style=\"box-sizing: border-box; line-height: 1.5; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">&nbsp;<br style=\"box-sizing: border-box;\"/><br style=\"box-sizing: border-box;\"/></span></p><p style=\"white-space: normal; text-align: center;\"><span style=\"box-sizing: border-box; line-height: 1.5; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">导架爬升式高空作业平台</strong></span></p><p style=\"white-space: normal; text-align: center;\"><span style=\"box-sizing: border-box; line-height: 1.5; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">导架爬升式高空作业平台分为单桅和双桅两种类别。</span></p><p style=\"white-space: normal; text-align: center;\"><img src=\"http://img888.hbyaqiao.com/cms-images/info/2019_12_21/12d672b12b4f8db396ec810fba7e77ca.png\" alt=\"00220180408154998069806.png\" title=\"00220180408154998069806.png\" style=\"box-sizing: border-box; border: none; margin: 0px; padding: 0px; height: auto; overflow: hidden; max-width: 100%;\"/><span style=\"box-sizing: border-box; line-height: 1.5; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">&nbsp;<br style=\"box-sizing: border-box;\"/><br style=\"box-sizing: border-box;\"/></span></p><p style=\"white-space: normal; text-align: center;\"><span style=\"box-sizing: border-box; line-height: 1.5; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">剪叉式高空作业平台</strong></span></p><p style=\"white-space: normal; text-align: center;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; box-sizing: border-box; line-height: 1.5;\">剪叉式高空作业平台分为自行走越野剪叉式，自行走剪叉式，移动剪叉式三大类。</span></p><p style=\"white-space: normal; text-align: center;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; box-sizing: border-box; line-height: 1.5;\">自行走越野剪叉式为柴油驱动，其它为蓄电池驱动。</span></p><p style=\"white-space: normal; text-align: center;\"><span style=\"box-sizing: border-box; line-height: 1.5; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"></span><img src=\"http://img888.hbyaqiao.com/cms-images/info/2019_12_21/48e582ca4c16fa9f755f51ab28f5bce7.png\" alt=\"00320180408155041294129.png\" title=\"00320180408155041294129.png\" style=\"box-sizing: border-box; border: none; margin: 0px; padding: 0px; height: auto; overflow: hidden; max-width: 100%;\"/><span style=\"box-sizing: border-box; line-height: 1.5; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">&nbsp;<br style=\"box-sizing: border-box;\"/><br style=\"box-sizing: border-box;\"/></span></p><p style=\"white-space: normal; text-align: center;\"><span style=\"box-sizing: border-box; line-height: 1.5; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 16px;\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">桅柱式高空作业平台</strong></span></p><p style=\"white-space: normal; text-align: center;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; box-sizing: border-box; line-height: 1.5;\">桅柱式高空作业平台分为自行走桅柱式，移动桅柱式，自行走高空取料平台，</span></p><p style=\"white-space: normal; text-align: center;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; box-sizing: border-box; line-height: 1.5;\">移动式高空取料平台，自行走套筒式等类别。<br style=\"box-sizing: border-box;\"/>而移动桅柱式又分为双桅、单桅、旋腿式、插腿式、人货双用等不同型号。</span></p><p style=\"white-space: normal; text-align: center;\"><img src=\"http://img888.hbyaqiao.com/cms-images/info/2019_12_21/62e3748459dac46faf943d503b58b74e.png\" alt=\"00420180408155090179017.png\" title=\"00420180408155090179017.png\" style=\"box-sizing: border-box; border: none; margin: 0px; padding: 0px; height: auto; overflow: hidden; max-width: 100%;\"/><span style=\"box-sizing: border-box; line-height: 1.5; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"></span></p><p style=\"box-sizing: border-box; outline: 0px; margin: 20px 0px 0px; padding: 0px; text-align: center; color: rgb(51, 51, 51); font-size: 18px; font-family: &quot;microsoft yahei&quot;, STXihei; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p>', 1570636800),
(50, 103, 'lian-xi-wo-men', '', '<p><em style=\"color: #ff6f20;font-size: 28px;\" class=\"iconfont jia-coordinates\"></em><strong> 武汉市江汉区京华国际B坐1806办</strong></p><p><em style=\"color: #ff6f20;font-size: 28px;\" class=\"iconfont jia-tel\"></em><strong> 027-85315789</strong></p><p><em style=\"color: #ff6f20;font-size: 28px;\" class=\"iconfont jia-Phone\"></em><strong> 13429835313</strong></p><p><em style=\"color: #ff6f20;font-size: 28px;\" class=\"iconfont jia-mail\"></em><strong> lihuan@hbyaqiao.com</strong></p><p><br/></p><p>工作时间 ： 周一至周日 &nbsp; 上午：8:30—12:00 &nbsp; 下午：13:30—18:00</p><p><iframe class=\"ueditor_baidumap\" src=\"http://hbyaqiao.com/maps/dialogs/map/show.html#center=114.27378,30.631601&zoom=18&width=750&height=340&markers=114.27378,30.631601&markerStyles=l,A\" frameborder=\"0\" width=\"754\" height=\"344\"></iframe></p>', 1573056000);

-- --------------------------------------------------------

--
-- Table structure for table `ss_cms_photo`
--

CREATE TABLE `ss_cms_photo` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '图片信息id',
  `columnid` int(11) UNSIGNED DEFAULT NULL COMMENT '所属栏目id',
  `parentid` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '所属栏目上级id',
  `parentstr` varchar(80) NOT NULL DEFAULT '' COMMENT '所属栏目上级id字符串',
  `cateid` int(11) UNSIGNED DEFAULT NULL COMMENT '类别id',
  `catepid` int(11) UNSIGNED DEFAULT NULL COMMENT '类别父id',
  `catepstr` varchar(80) DEFAULT NULL COMMENT '所属类别上级id字符串',
  `title` varchar(80) NOT NULL DEFAULT '' COMMENT '标题',
  `slug` varchar(200) NOT NULL DEFAULT '' COMMENT '访问链接',
  `colorval` char(10) NOT NULL DEFAULT '' COMMENT '字体颜色',
  `boldval` char(10) NOT NULL DEFAULT '' COMMENT '字体加粗',
  `flag` varchar(30) DEFAULT NULL COMMENT '属性',
  `source` varchar(50) NOT NULL DEFAULT '' COMMENT '文章来源',
  `author` varchar(50) NOT NULL DEFAULT '' COMMENT '作者编辑',
  `linkurl` varchar(255) NOT NULL DEFAULT '' COMMENT '跳转链接',
  `keywords` varchar(50) NOT NULL DEFAULT '' COMMENT '关键词',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '摘要',
  `content` mediumtext COMMENT '详细内容',
  `picurl` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图片',
  `picarr` text COMMENT '组图',
  `hits` int(11) UNSIGNED NOT NULL DEFAULT '100' COMMENT '点击次数',
  `orderid` int(11) UNSIGNED NOT NULL DEFAULT '10' COMMENT '排列排序',
  `posttime` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '审核状态',
  `delstate` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '删除状态',
  `deltime` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '删除时间',
  `lang` varchar(8) NOT NULL DEFAULT '' COMMENT '多语言',
  `created_at` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `updated_at` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `diyfield_case_address` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='图片管理表';

--
-- Dumping data for table `ss_cms_photo`
--

INSERT INTO `ss_cms_photo` (`id`, `columnid`, `parentid`, `parentstr`, `cateid`, `catepid`, `catepstr`, `title`, `slug`, `colorval`, `boldval`, `flag`, `source`, `author`, `linkurl`, `keywords`, `description`, `content`, `picurl`, `picarr`, `hits`, `orderid`, `posttime`, `status`, `delstate`, `deltime`, `lang`, `created_at`, `updated_at`, `diyfield_case_address`) VALUES
(5, 76, 84, '0,84,', NULL, NULL, '', '武汉某一沿山公路的路灯维修与安装', 'wu-han-mou-yi-yan-gong-lu-de-lu-deng-wei-xiu-yu-an-zhuang', '', '', '推荐', '', 'admin', '', '高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '武汉某一沿山公路的路灯维修与安装，高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '<p>武汉某一沿山公路的路灯维修与安装</p>', 'cms-images/photo/2019_11_16/926096d11d3e5943fb80c2619c0d6d9d==800x600.jpg', '[{\"pic\":\"cms-images/photo/2019_11_16/926096d11d3e5943fb80c2619c0d6d9d==800x600.jpg\",\"txt\":\"亚桥高空车出租 图1\"},{\"pic\":\"cms-images/photo/2019_11_16/096c463854478d7f13ad05f3e5f3efd7==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图2\"},{\"pic\":\"cms-images/photo/2019_11_16/39f5a68e1e19125919c0f55b7b3a031c==600x800.jpg\",\"txt\":\"亚桥高空车出租 图3\"},{\"pic\":\"cms-images/photo/2019_11_16/296ce050a697efa80b15b47699a26480==600x800.jpg\",\"txt\":\"亚桥高空车出租 图4\"},{\"pic\":\"cms-images/photo/2019_11_16/ff89bdb2916acc52a13a1e48a03c25bc==600x800.jpg\",\"txt\":\"亚桥高空车出租 图5\"},{\"pic\":\"cms-images/photo/2019_11_16/45a1b6b0e8a0385b8c6492b39804da28==600x800.jpg\",\"txt\":\"亚桥高空车出租 图6\"},{\"pic\":\"cms-images/photo/2019_11_16/aff5b8ce61eb9f07600566dd79bbfea9==600x800.jpg\",\"txt\":\"亚桥高空车出租 图7\"},{\"pic\":\"cms-images/photo/2019_11_16/516fa376658854ce851728a1e211334e==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图8\"},{\"pic\":\"cms-images/photo/2019_11_16/5237d34f55759cc7abb79b9e3e99ee9f==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图9\"},{\"pic\":\"cms-images/photo/2019_11_16/f27864f0147745d387672f8d27bd0845==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图10\"},{\"pic\":\"cms-images/photo/2019_11_16/f2eaf09d1af689bfc90a82d2ba95096b==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图11\"}]', 673, 64, 1560009600, 1, 0, 1553927093, 'zh-CN', 0, 1576987938, '武汉市'),
(33, 76, 84, '0,84,', NULL, NULL, NULL, '武汉市第四医院安插小红旗', 'wu-han-shi-di-si-yi-yuan-an-cha-xiao-hong-qi', '', '', '幻首', '', 'admin', '', '高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '武汉市第四医院（武胜路院区）：湖北省武汉市硚口区汉正街473号，迎国庆，医院门口安插小红旗', '<p>武汉市第四医院（武胜路院区）：湖北省武汉市硚口区汉正街473号，迎国庆，医院门口安插小红旗</p>', 'cms-images/photo/2019_11_16/621b2cf248ec2c1588b841ce87e59fd4==1000x750.jpg', '[{\"pic\":\"cms-images/photo/2019_11_16/b62df868dc0784947225da462f8a1266==1000x750.jpg\",\"txt\":\"亚桥高空车出租 图1\"},{\"pic\":\"cms-images/photo/2019_11_16/621b2cf248ec2c1588b841ce87e59fd4==1000x750.jpg\",\"txt\":\"亚桥高空车出租 图2\"},{\"pic\":\"cms-images/photo/2019_11_16/ea1b1a2a148e4dbfb1680330f86ed64d==1000x750.jpg\",\"txt\":\"亚桥高空车出租 图3\"},{\"pic\":\"cms-images/photo/2019_11_16/200d0662ec788fa12c1259ce6f7bbd57==1000x750.jpg\",\"txt\":\"亚桥高空车出租 图4\"},{\"pic\":\"cms-images/photo/2019_11_16/daf947da7983cd76a3746aa29ccbdf2d==562x1000.png\",\"txt\":\"亚桥高空车出租 图5\"},{\"pic\":\"cms-images/photo/2019_11_16/16a75a17c887c5da5448905cd49a5413==562x1000.png\",\"txt\":\"亚桥高空车出租 图6\"}]', 550, 13, 1563638400, 1, 0, 0, 'zh-CN', 1547023943, 1576988535, '武汉市'),
(34, 76, 84, '0,84,', NULL, NULL, NULL, '武钢电线电缆的支架更换', 'wu-gang-dian-xian-dian-lan-de-zhi-jia-geng-huan', '', '', '幻首', '', 'admin', '', '高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '武汉平煤武钢联合焦化公司武钢电线电缆的支架更换，高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '<p>武汉平煤武钢联合焦化公司，武钢电线电缆的支架更换</p>', 'cms-images/photo/2019_11_16/b28d27c231ec0c16bc8cd3dd3ac090ae==750x652.jpg', '[{\"pic\":\"cms-images/photo/2019_11_16/726baf42619b0e7ac0a74864aded2220==1000x750.jpg\",\"txt\":\"亚桥高空车出租 图1\"},{\"pic\":\"cms-images/photo/2019_11_16/d5baf9ffeca673bafce0114b7426af66==1000x750.jpg\",\"txt\":\"亚桥高空车出租 图2\"},{\"pic\":\"cms-images/photo/2019_11_16/84dc4249eed9bf596c04a0a136f45008==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图3\"},{\"pic\":\"cms-images/photo/2019_11_16/ce12125417c68be9390ddf79fdb7f071==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图4\"},{\"pic\":\"cms-images/photo/2019_11_16/35ed2bbbc091dafcdf39c1ecd7ea3cf3==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图5\"},{\"pic\":\"cms-images/photo/2019_11_16/16653922616ba58c399b181b70a9abda==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图6\"},{\"pic\":\"cms-images/photo/2019_11_16/a003fd1ffebbd77083c043f93991a1ec==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图7\"}]', 751, 12, 1549555200, 1, 0, 0, 'zh-CN', 1547023910, 1576988574, '武汉市'),
(35, 76, 84, '0,84,', NULL, NULL, NULL, '新建街粉刷桥梁翻新', 'xin-jian-jie-fen-shua-qiao-liang-fan-xin', '', '', '幻首', '', 'admin', '', '高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '武汉市黄陂区，新建街粉刷桥梁翻新，高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '<p>武汉市黄陂区，新建街粉刷桥梁翻新</p>', 'cms-images/photo/2019_11_16/1d3887b14f51396002d6ed6ef11efc77==1000x750.jpg', '[{\"pic\":\"cms-images/photo/2019_11_16/c3f2329ff783511839ac95834be73905==1000x563.jpg\",\"txt\":\"亚桥高空车出租 图1\"},{\"pic\":\"cms-images/photo/2019_11_16/7db72bec0ce93cf299072283865e3cee==1000x750.jpg\",\"txt\":\"亚桥高空车出租 图2\"},{\"pic\":\"cms-images/photo/2019_11_16/9add6d84ca118602a39c989995ea5e3a==1000x750.jpg\",\"txt\":\"亚桥高空车出租 图3\"},{\"pic\":\"cms-images/photo/2019_11_16/29fc449a83cb714424a0538a7e1c7469==1000x750.jpg\",\"txt\":\"亚桥高空车出租 图4\"},{\"pic\":\"cms-images/photo/2019_11_16/1d3887b14f51396002d6ed6ef11efc77==1000x750.jpg\",\"txt\":\"亚桥高空车出租 图5\"},{\"pic\":\"cms-images/photo/2019_11_16/f82b11540c9c6303ffd6b9a4a350db69==1000x750.jpg\",\"txt\":\"亚桥高空车出租 图6\"},{\"pic\":\"cms-images/photo/2019_11_16/ab1c31b52f3dc655cf1d01f8f9138938==1000x750.jpg\",\"txt\":\"亚桥高空车出租 图7\"},{\"pic\":\"cms-images/photo/2019_11_16/943480c53486110c8e89a9a412e3ca53==1000x750.jpg\",\"txt\":\"亚桥高空车出租 图8\"},{\"pic\":\"cms-images/photo/2019_11_16/39a4024f936b03c7a77a8f66075ba780==1000x750.jpg\",\"txt\":\"亚桥高空车出租 图9\"},{\"pic\":\"cms-images/photo/2019_11_16/a330488bb97811fb1ea8bb21d0f5576e==1000x750.jpg\",\"txt\":\"亚桥高空车出租 图10\"},{\"pic\":\"cms-images/photo/2019_11_16/787dcf11bbca58b0d77daf5289063957==1000x750.jpg\",\"txt\":\"亚桥高空车出租 图11\"},{\"pic\":\"cms-images/photo/2019_11_16/6411c7f093e334222f6aeda449babd70==3264x2448.jpg\",\"txt\":\"亚桥高空车出租 图12\"},{\"pic\":\"cms-images/photo/2019_11_16/ca73017d02eb8160462ee1ae3a8fd775==1000x750.jpg\",\"txt\":\"亚桥高空车出租 图13\"},{\"pic\":\"cms-images/photo/2019_11_16/bc9ffa4d2cbc49245ceb965e77164d51==1000x750.jpg\",\"txt\":\"亚桥高空车出租 图14\"},{\"pic\":\"cms-images/photo/2019_11_16/d4e732c0bc7f80a052820bad77f3198f==1000x750.jpg\",\"txt\":\"亚桥高空车出租 图15\"},{\"pic\":\"cms-images/photo/2019_11_16/6cada044f5edde82038c427eefb8c7ed==1000x750.jpg\",\"txt\":\"亚桥高空车出租 图16\"},{\"pic\":\"cms-images/photo/2019_11_16/77e010f0a31f7e0a778716c9bf6b40a9==1000x750.jpg\",\"txt\":\"亚桥高空车出租 图17\"},{\"pic\":\"cms-images/photo/2019_11_16/4b097cbed08d2681390f4438841429df==1000x750.jpg\",\"txt\":\"亚桥高空车出租 图18\"},{\"pic\":\"cms-images/photo/2019_11_16/f72847aed15b49874209ae3ee234f765==1000x750.jpg\",\"txt\":\"亚桥高空车出租 图19\"},{\"pic\":\"cms-images/photo/2019_11_16/ac1732d1e5d895c94d27fb91832bfb3e==1000x750.jpg\",\"txt\":\"亚桥高空车出租 图20\"}]', 907, 11, 1518451200, 1, 0, 0, 'zh-CN', 1547023926, 1576988658, '武汉市'),
(37, 76, 84, '0,84,', NULL, NULL, NULL, '武汉博闻楼外墙玻璃维修', 'wu-han-bo-wen-lou-wai-qiang-bo-li-wei-xiu', '', '', '置首', '', 'admin', '', '高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '武汉博闻楼外墙玻璃维修，高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '<p>武汉博闻楼外墙玻璃维修</p>', 'cms-images/photo/2019_11_16/79a4773ea2ce6a569170347ba6aba715==1000x750.jpg', '[{\"pic\":\"cms-images/photo/2019_11_16/79a4773ea2ce6a569170347ba6aba715==1000x750.jpg\",\"txt\":\"亚桥高空车出租 图1\"},{\"pic\":\"cms-images/photo/2019_11_16/6027c03a47d65d8a5c79d7f01c12bb31==1000x750.jpg\",\"txt\":\"亚桥高空车出租 图2\"},{\"pic\":\"cms-images/photo/2019_11_16/26f2adc68f8f3b361ca12b5d67cd8d76==1000x750.jpg\",\"txt\":\"亚桥高空车出租 图3\"},{\"pic\":\"cms-images/photo/2019_11_16/ed9d48f89e3da00e3653559dde62f0e4==1000x750.jpg\",\"txt\":\"亚桥高空车出租 图4\"},{\"pic\":\"cms-images/photo/2019_11_16/bb77deca63d54e604316998aee9def92==1000x750.jpg\",\"txt\":\"亚桥高空车出租 图5\"},{\"pic\":\"cms-images/photo/2019_11_16/62e32a599ae1c5e6c275f36916d55a01==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图6\"}]', 710, 9, 1557936000, 1, 0, 0, 'zh-CN', 1547023910, 1576988276, '武汉市'),
(38, 76, 84, '0,84,', NULL, NULL, NULL, '武汉市食家酒庄玻璃安装', 'wu-han-shi-shi-jia-jiu-zhuang-bo-li-an-zhuang', '', '', '置首', '', 'admin', '', '高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '湖北省武汉市东西湖区马池路，武汉市食家酒庄，外墙玻璃安装维修', '<p>湖北省武汉市东西湖区马池路，武汉市食家酒庄，外墙玻璃安装维修</p>', 'cms-images/photo/2019_11_16/43ccfdc8b1d224c57b6e99de26b73305==750x598.jpg', '[{\"pic\":\"cms-images/photo/2019_11_16/8a5371eac229532dc1a8db839020d185==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图1\"},{\"pic\":\"cms-images/photo/2019_11_16/5dcb910759ab9f4f837d571b06210768==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图2\"},{\"pic\":\"cms-images/photo/2019_11_16/0c086661528bcd747297f51bd550762f==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图3\"},{\"pic\":\"cms-images/photo/2019_11_16/6e061e82cdffbb57d18fa986bcbd483f==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图4\"},{\"pic\":\"cms-images/photo/2019_11_16/87c8585d020e36d2d7d84ced385a239e==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图5\"},{\"pic\":\"cms-images/photo/2019_11_16/f34493d6114b9e9e5d20b917c290949c==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图6\"},{\"pic\":\"cms-images/photo/2019_11_16/f880cd806c1963478d7e6a78f02cad83==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图7\"},{\"pic\":\"cms-images/photo/2019_11_16/038b1ea9f0164ece45aa7bfd64531035==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图8\"},{\"pic\":\"cms-images/photo/2019_11_16/d8f4e18ce3c2ecc6a79442174458a13c==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图9\"}]', 1231, 14, 1490630400, 1, 0, 0, 'zh-CN', 1547023926, 1576988518, '武汉市'),
(39, 76, 84, '0,84,', NULL, NULL, NULL, '荆州一厂房内高空支架涂漆', 'jing-zhou-yi-chang-fang-nei-gao-kong-zhi-jia-tu-qi', '', '', '置首', '', 'admin', '', '高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '湖北省荆州市荆州区雨台村，厂房内高空支架涂漆，高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '<p>湖北省荆州市荆州区雨台村，厂房内高空支架涂漆</p>', 'cms-images/photo/2019_11_16/19569192b779720e252aecdd6f5ae848==1000x750.jpg', '[{\"pic\":\"cms-images/photo/2019_11_16/19569192b779720e252aecdd6f5ae848==1000x750.jpg\",\"txt\":\"亚桥高空车出租 图1\"},{\"pic\":\"cms-images/photo/2019_11_16/8e67689c84cf8778d6b5aae835122030==1000x750.jpg\",\"txt\":\"亚桥高空车出租 图2\"},{\"pic\":\"cms-images/photo/2019_11_16/b10a4fc3857616bc49095741df39474e==1000x750.jpg\",\"txt\":\"亚桥高空车出租 图3\"},{\"pic\":\"cms-images/photo/2019_11_16/282121ae7dc34b5234da6232ae582aff==1000x750.jpg\",\"txt\":\"亚桥高空车出租 图4\"},{\"pic\":\"cms-images/photo/2019_11_16/025157eb781bceadc14f84352e12f7bc==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图5\"},{\"pic\":\"cms-images/photo/2019_11_16/dae8f343cc6dd7666a130800744c8853==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图6\"},{\"pic\":\"cms-images/photo/2019_11_16/4044abc1e2515f5ae632d9bb17fa57ce==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图7\"},{\"pic\":\"cms-images/photo/2019_11_16/d607fde62045f82a510047b603bb2b3f==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图8\"}]', 613, 15, 1534608000, 1, 0, 0, 'zh-CN', 1547023943, 1576988493, '荆州市'),
(40, 76, 84, '0,84,', NULL, NULL, NULL, '汉阳区晴川桥路灯维修', 'han-yang-qu-qing-chuan-qiao-lu-deng-wei-xiu', '', '', '置首', '', 'admin', '', '高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '​武汉市汉阳区晴川大道，晴川桥路灯维修，高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '<p>武汉市汉阳区晴川大道，晴川桥路灯维修</p><p><br/></p>', 'cms-images/photo/2019_11_16/a83e91c02e854f13796eed3abe231e14==1000x750.jpg', '[{\"pic\":\"cms-images/photo/2019_11_16/a83e91c02e854f13796eed3abe231e14==1000x750.jpg\",\"txt\":\"亚桥高空车出租 图1\"},{\"pic\":\"cms-images/photo/2019_11_16/b1639f48343b150f750ec69eb87ddf6b==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图2\"},{\"pic\":\"cms-images/photo/2019_11_16/2062182e07ff1d7aa84f3288cbd0db69==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图3\"},{\"pic\":\"cms-images/photo/2019_11_16/6d5012247ff3162f4ed4a6f34ff296f3==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图4\"},{\"pic\":\"cms-images/photo/2019_11_16/3d9a4aaccb98bdcd9675cfc8fcb06bc6==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图5\"},{\"pic\":\"cms-images/photo/2019_11_16/5d9ced2c0e204ebed84a4106bac25fbe==370x456.jpg\",\"txt\":\"亚桥高空车出租 图6\"},{\"pic\":\"cms-images/photo/2019_11_16/4f45d87c5e2488b7d7437eb0c0a8d318==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图7\"},{\"pic\":\"cms-images/photo/2019_11_16/d14556c85a75d1f0ea01d436fe1c5222==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图8\"},{\"pic\":\"cms-images/photo/2019_11_16/c8f1b1f087d56db8a3af37b71c5be433==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图9\"},{\"pic\":\"cms-images/photo/2019_11_16/86a55cb79350116a2e51a9132f552860==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图10\"},{\"pic\":\"cms-images/photo/2019_11_16/76d39d763fe2f57224ef4dcd6b90ae95==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图11\"},{\"pic\":\"cms-images/photo/2019_11_16/5df0eccae00d60c19d01a1cddfb39c34==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图12\"},{\"pic\":\"cms-images/photo/2019_11_16/dc2380b19dcda63ef345f9b9485a5f54==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图13\"}]', 1038, 16, 1510761600, 1, 0, 0, 'zh-CN', 1547023910, 1576988466, '武汉汉阳'),
(41, 76, 84, '0,84,', NULL, NULL, NULL, '张之洞路修建树枝园林绿化', 'zhang-zhi-dong-lu-xiu-jian-shu-zhi-yuan-lin-lu-hua', '', '', '置首', '', 'admin', '', '高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '湖北省武汉市武昌区张之洞路268号，修建树枝，园林绿化', '<p>湖北省武汉市武昌区张之洞路268号，修建树枝，园林绿化</p>', 'cms-images/photo/2019_11_16/240afe459e5a992aed029e5df3740e83==823x760.jpg', '[{\"pic\":\"cms-images/photo/2019_11_16/dac37b8766551b967925b538a23a6c05==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图1\"},{\"pic\":\"cms-images/photo/2019_11_16/22465ace41796f7e64b11897b56f4e6e==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图2\"},{\"pic\":\"cms-images/photo/2019_11_16/884ef87c62d5e8b84eacf67b97b96467==886x1040.jpg\",\"txt\":\"亚桥高空车出租 图3\"},{\"pic\":\"cms-images/photo/2019_11_16/d88458cff8319e977108d61035f30a63==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图4\"},{\"pic\":\"cms-images/photo/2019_11_16/181dd4d06342530c0d4005598b681ebf==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图5\"},{\"pic\":\"cms-images/photo/2019_11_16/8baf99718c71e1e4bdce7f9f637a41da==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图6\"},{\"pic\":\"cms-images/photo/2019_11_16/b23782439cc9e6bd6679cd24991de67d==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图7\"},{\"pic\":\"cms-images/photo/2019_11_16/2243b9e6cc155392f04c7597f1b2f791==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图8\"},{\"pic\":\"cms-images/photo/2019_11_16/b89f0e9fb169290f7f82349b2f527ccc==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图9\"}]', 707, 17, 1553875200, 1, 0, 0, 'zh-CN', 1547023926, 1576988430, '武汉武昌'),
(42, 76, 84, '0,84,', NULL, NULL, NULL, '汉口北国际商品交易中心换广告', 'han-kou-bei-guo-ji-shang-pin-jiao-yi-zhong-xin', '', '', '置首', '', 'admin', '', '高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '汉口北国际商品交易中心：武汉市黄陂区汉口北，换户外高处广告纸', '<p>汉口北国际商品交易中心：武汉市黄陂区汉口北，换户外高处广告纸</p>', 'cms-images/photo/2019_11_16/0c5a838485d6e93d5870db55162608a2==750x758.jpg', '[{\"pic\":\"cms-images/photo/2019_11_16/9e1123c4395ba0f4589b4e662c82f0ef==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图1\"},{\"pic\":\"cms-images/photo/2019_11_16/4d49e6ad902e4140ca4c4f29da440f4c==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图2\"},{\"pic\":\"cms-images/photo/2019_11_16/35ab9bcf549a145d51d1c2255256a83e==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图3\"},{\"pic\":\"cms-images/photo/2019_11_16/66a8128b9ee11709fab3a671bdd69d0a==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图4\"},{\"pic\":\"cms-images/photo/2019_11_16/414b2f40ab353257d75343a6149966fd==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图5\"},{\"pic\":\"cms-images/photo/2019_11_16/edfbcccbc4b94b93fa22f2996705f16f==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图6\"},{\"pic\":\"cms-images/photo/2019_11_16/b6a2c7fa05c9fddd22f655179c98ba0c==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图7\"},{\"pic\":\"cms-images/photo/2019_11_16/c860ab3fb47f5c807754e8d9465a1944==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图8\"},{\"pic\":\"cms-images/photo/2019_11_16/f67e5fb45e712943db970568be3791e4==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图9\"},{\"pic\":\"cms-images/photo/2019_11_16/05ff44684ad539e60f27f18daaa74632==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图10\"},{\"pic\":\"cms-images/photo/2019_11_16/cf6f0ce26ba22b975c7d6fabff2cc21c==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图11\"}]', 732, 18, 1549123200, 1, 0, 0, 'zh-CN', 1547023943, 1576988404, '武汉汉口'),
(43, 76, 84, '0,84,', NULL, NULL, NULL, '汉阳龙阳大道厂区设备安装', 'han-yang-long-yang-da-dao-chang-qu-she-bei-an-zhuang', '', '', '', '', 'admin', '', '高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '汉阳龙阳大道一新厂区高空设备安装，高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '<p>汉阳龙阳大道一新厂区高空设备安装</p>', 'cms-images/photo/2019_11_16/c939adc03d4518068badd5932bac5323==890x1000.jpg', '[{\"pic\":\"cms-images/photo/2019_11_16/c939adc03d4518068badd5932bac5323==890x1000.jpg\",\"txt\":\"亚桥高空车出租 图1\"}]', 1094, 19, 1507737600, 1, 0, 1573893636, 'zh-CN', 1547023910, 1576988370, '武汉汉阳'),
(44, 76, 84, '0,84,', NULL, NULL, NULL, '荆州22米室外广告安装作业', 'jing-zhou22mi-shi-wai-guang-gao-an-zhuang-zuo-ye', '', '', '', '', 'admin', '', '高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '荆州22米室外广告安装作业，高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '<p>荆州22米室外广告安装作业</p>', 'cms-images/photo/2019_11_16/9a5437211058ce70002e3a6ef6f46ecf==639x477.jpg', '[{\"pic\":\"cms-images/photo/2019_11_16/9a5437211058ce70002e3a6ef6f46ecf==639x477.jpg\",\"txt\":\"亚桥高空车出租 图1\"}]', 549, 20, 1570377600, 1, 0, 1573893636, 'zh-CN', 1547023926, 1576988363, '荆州市'),
(45, 76, 84, '0,84,', NULL, NULL, NULL, '地铁汉阳段高架桥施工', 'de-tie-han-yang-duan-gao-jia-qiao-shi-gong', '', '', '', '', 'admin', '', '高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '武汉地铁汉阳段露天高架桥施工，高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '<p>武汉地铁汉阳段露天高架桥施工</p>', 'cms-images/photo/2019_11_16/70b6bc0a07d4f94cbcc1739c0fe5e561==1000x750.jpg', '[{\"pic\":\"cms-images/photo/2019_11_16/70b6bc0a07d4f94cbcc1739c0fe5e561==1000x750.jpg\",\"txt\":\"亚桥高空车出租 图1\"}]', 621, 21, 1557158400, 1, 0, 1573893636, 'zh-CN', 1547023943, 1576988358, '武汉市'),
(46, 76, 84, '0,84,', NULL, NULL, NULL, '江岸经济开发区修剪作业', 'jiang-an-jing-ji-kai-fa-qu-xiu-jian-zuo-ye', '', '', '', '', 'admin', '', '高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '武汉江岸经济开发区修剪作业，高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '<p>武汉江岸经济开发区修剪作业</p>', 'cms-images/photo/2019_11_16/fa1c32b0ad403216ddcd457bf83d2d04==1000x915.jpg', '[{\"pic\":\"cms-images/photo/2019_11_16/fa1c32b0ad403216ddcd457bf83d2d04==1000x915.jpg\",\"txt\":\"亚桥高空车出租 图1\"}]', 624, 22, 1554825600, 1, 0, 1573893636, 'zh-CN', 1547023910, 1576988352, '武汉市'),
(47, 76, 84, '0,84,', NULL, NULL, NULL, '惠民路游乐场区装修', 'hui-min-lu-you-le-chang-qu-zhuang-xiu', '', '', '', '', 'admin', '', '高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '武汉市汉阳区惠民路游乐场区装修，高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '<p>武汉市汉阳区惠民路游乐场区装修</p>', 'cms-images/photo/2019_11_16/657084b243402473026432ac4fe6b75c==920x1000.jpg', '[{\"pic\":\"cms-images/photo/2019_11_16/657084b243402473026432ac4fe6b75c==920x1000.jpg\",\"txt\":\"亚桥高空车出租 图1\"}]', 865, 23, 1530806400, 1, 0, 1573893636, 'zh-CN', 1547023926, 1576988344, '武汉市'),
(52, 76, 84, '0,84,', NULL, NULL, NULL, '武汉市某幼儿园外墙粉刷', 'wu-han-shi-mou-you-er-yuan-wai-qiang-fen-shua', '', '', '相关,推荐,还看,置顶', '', 'admin', '', '高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '武汉市某幼儿园外墙粉刷，高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '<p>武汉市某幼儿园外墙粉刷</p>', 'cms-images/photo/2019_11_16/a70c48c699a77f5efc3716fa4801d427==450x378.jpg', '[{\"pic\":\"cms-images/photo/2019_11_16/a70c48c699a77f5efc3716fa4801d427==450x378.jpg\",\"txt\":\"亚桥高空车出租 图1\"},{\"pic\":\"cms-images/photo/2019_11_16/5853caf9f246bef677349227e92ec74b==1000x750.jpg\",\"txt\":\"亚桥高空车出租 图2\"},{\"pic\":\"cms-images/photo/2019_11_16/15824b41ad512fd9e8ecdd508736220e==450x593.jpg\",\"txt\":\"亚桥高空车出租 图3\"},{\"pic\":\"cms-images/photo/2019_11_16/7673c070644190deb47efec3d0023392==450x600.jpg\",\"txt\":\"亚桥高空车出租 图4\"},{\"pic\":\"cms-images/photo/2019_11_16/a027ed9e7cb7989a177b4ce8a84ce4ad==1000x750.jpg\",\"txt\":\"亚桥高空车出租 图5\"},{\"pic\":\"cms-images/photo/2019_11_16/0e9b466f88e5097ceaf370635e3dd963==1000x750.jpg\",\"txt\":\"亚桥高空车出租 图6\"},{\"pic\":\"cms-images/photo/2019_11_16/0c97d7ad6aae135d424df974c6d288ce==1000x669.jpg\",\"txt\":\"亚桥高空车出租 图7\"},{\"pic\":\"cms-images/photo/2019_11_16/3e382a5dadd8c71ad77094b5177b4198==1000x750.jpg\",\"txt\":\"亚桥高空车出租 图8\"}]', 1368, 27, 1494950400, 1, 0, 1553927081, 'zh-CN', 1547023910, 1576988336, '武汉市'),
(75, 76, 84, '0,84,', NULL, NULL, NULL, '汉阳新厂房翻新及维修', 'han-yang-xin-chang-fang-fan-xin-ji-wei-xiu', '', '', '推荐', '', 'admin', '', '高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '武汉汉阳某新厂厂房翻新及维修，高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '<p>武汉汉阳某新厂厂房翻新及维修</p>', 'cms-images/photo/2019_11_16/454c2b382a9bc15f929f6ca081525b64==800x600.jpg', '[{\"pic\":\"cms-images/photo/2019_11_16/454c2b382a9bc15f929f6ca081525b64==800x600.jpg\",\"txt\":\"亚桥高空车出租 图1\"},{\"pic\":\"cms-images/photo/2019_11_16/c9ed5fae47b4654ac230ee7ff448dbe9==800x450.jpg\",\"txt\":\"亚桥高空车出租 图2\"},{\"pic\":\"cms-images/photo/2019_11_16/33ce0f507563fbcd3a1124dd6cf861d9==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图3\"},{\"pic\":\"cms-images/photo/2019_11_16/8e5e248edb4a6ac6138b99569093de80==600x800.jpg\",\"txt\":\"亚桥高空车出租 图4\"},{\"pic\":\"cms-images/photo/2019_11_16/b3219113fca7a98a4dba0020584ceb49==600x800.jpg\",\"txt\":\"亚桥高空车出租 图5\"},{\"pic\":\"cms-images/photo/2019_11_16/37a953c0cb973e623bd40b4186d9a983==600x800.jpg\",\"txt\":\"亚桥高空车出租 图6\"},{\"pic\":\"cms-images/photo/2019_11_16/84427f94d221fff4bf7cc8665bca095b==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图7\"},{\"pic\":\"cms-images/photo/2019_11_16/1fb2806a707361d7b60ddc2f735b0d3a==1000x750.jpg\",\"txt\":\"亚桥高空车出租 图8\"},{\"pic\":\"cms-images/photo/2019_11_16/a263b15e588753acbe5639a24341f122==1000x750.jpg\",\"txt\":\"亚桥高空车出租 图9\"},{\"pic\":\"cms-images/photo/2019_11_16/506627bfc04a8c972157b1e64dc152fe==600x800.jpg\",\"txt\":\"亚桥高空车出租 图10\"}]', 1294, 52, 1493049600, 1, 0, 1553927246, 'zh-CN', 1547023943, 1576988250, '武汉市'),
(76, 76, 84, '0,84,', NULL, NULL, NULL, '宜昌一建筑工地起吊钢材', 'yi-chang-yi-jian-zhu-gong-de-qi-diao-gang-cai', '', '', '', '', 'admin', '', '高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '正在驶向宜昌一建筑工地起吊钢材，高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '<p>正在驶向宜昌一建筑工地起吊钢材</p>', 'cms-images/photo/2019_11_16/c0ed45b689cf3289e5d5de3dc187f9fe==923x1000.jpg', '[{\"pic\":\"cms-images/photo/2019_11_16/c0ed45b689cf3289e5d5de3dc187f9fe==923x1000.jpg\",\"txt\":\"亚桥高空车出租 图1\"}]', 1435, 52, 1489161600, 1, 0, 0, 'zh-CN', 1547023910, 1576988256, '武汉市'),
(77, 76, 84, '0,84,', NULL, NULL, NULL, '汉南幸福工业园登高车厂房维修', 'han-nan-xing-fu-gong-ye-yuan-deng-gao-che-chang-fang-wei-xiu', '', '', '', '', 'admin', '', '高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '武汉汉南幸福工业园使用登高车进行厂房维修，高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '<p>武汉汉南幸福工业园使用登高车进行厂房维修</p>', 'cms-images/photo/2019_11_16/b852a4934cc5d089491f41cd1f810944==1000x750.jpg', '[{\"pic\":\"cms-images/photo/2019_11_16/b852a4934cc5d089491f41cd1f810944==1000x750.jpg\",\"txt\":\"亚桥高空车出租 图1\"}]', 698, 53, 1546272000, 1, 0, 0, 'zh-CN', 1547023926, 1576988217, '武汉市'),
(78, 76, 84, '0,84,', NULL, NULL, NULL, '武汉四环某一路段路灯抢修', 'wu-han-si-huan-mou-yi-lu-duan-lu-deng-qiang-xiu', '', '', '', '', 'admin', '', '高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '武汉四环某一路段专用路灯车抢修任务，高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '<p>武汉四环某一路段专用路灯车抢修任务</p>', 'cms-images/photo/2019_11_16/746fd4e9ad8f106342e8bad33aa4f854==1000x742.jpg', '[{\"pic\":\"cms-images/photo/2019_11_16/746fd4e9ad8f106342e8bad33aa4f854==1000x742.jpg\",\"txt\":\"亚桥高空车出租 图1\"}]', 764, 54, 1532102400, 1, 0, 0, 'zh-CN', 1547023943, 1576988210, '武汉市'),
(79, 76, 84, '0,84,', NULL, NULL, NULL, '小东门一商业楼高空玻璃检修', 'xiao-dong-men-yi-shang-ye-lou-gao-kong-bo-li-jian-xiu', '', '', '', '', 'admin', '', '高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '武汉武昌小东门一商业楼高空玻璃检修，高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '<p>武汉武昌小东门一商业楼高空玻璃检修</p>', 'cms-images/photo/2019_11_16/5bdaf1e843b22cffecf58911f6e01c52==720x837.jpg', '[{\"pic\":\"cms-images/photo/2019_11_16/5bdaf1e843b22cffecf58911f6e01c52==720x837.jpg\",\"txt\":\"亚桥高空车出租 图1\"}]', 329, 55, 1565020800, 1, 0, 0, 'zh-CN', 1547023910, 1576988203, '武汉市'),
(80, 76, 84, '0,84,', NULL, NULL, NULL, '高速路摄像头安装', 'gao-su-lu-she-xiang-tou-an-zhuang', '', '', '', '', 'admin', '', '高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '湖北沪渝高速路吴家大湾路段摄像头安装，高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '<p>湖北沪渝高速路吴家大湾路段摄像头安装</p>', 'cms-images/photo/2019_11_16/22806fedb7afb8dd2cbff8deae43dbe0==637x478.jpg', '[{\"pic\":\"cms-images/photo/2019_11_16/22806fedb7afb8dd2cbff8deae43dbe0==637x478.jpg\",\"txt\":\"亚桥高空车出租 图1\"}]', 562, 56, 1539100800, 1, 0, 0, 'zh-CN', 1547023926, 1576988194, '湖北沪渝高速'),
(81, 76, 84, '0,84,', NULL, NULL, NULL, '富士康厂房施工现场', 'fu-shi-kang-chang-fang-shi-gong-xian-chang', '', '', '', '', 'admin', '', '高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '武汉富士康施工现场高空作业车清理厂房，高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '<p>武汉富士康施工现场高空作业车清理厂房</p>', 'cms-images/photo/2019_11_16/b60eaca49def6aa7beb2729c596ee1f9==700x525.jpg', '[{\"pic\":\"cms-images/photo/2019_11_16/b60eaca49def6aa7beb2729c596ee1f9==700x525.jpg\",\"txt\":\"亚桥高空车出租 图1\"},{\"pic\":\"cms-images/photo/2019_11_16/612ccf6ae9b75822793d2ba20bd098a1==700x525.jpg\",\"txt\":\"亚桥高空车出租 图2\"}]', 685, 57, 1561046400, 1, 0, 0, 'zh-CN', 1547023943, 1576988082, '武汉市'),
(82, 76, 84, '0,84,', NULL, NULL, NULL, '江汉二桥体育训练基地维修作业', 'jiang-han-er-qiao-ti-yu-xun-lian-ji-de-wei-xiu-zuo-ye', '', '', '', '', 'admin', '', '高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '武汉市江汉二桥体育训练基地正大门顶部维修作业', '<p>武汉市江汉二桥体育训练基地正大门顶部维修作业</p>', 'cms-images/photo/2019_11_16/f09b5b88168bc92ef085d311e06b0fee==1000x750.jpg', '[{\"pic\":\"cms-images/photo/2019_11_16/f09b5b88168bc92ef085d311e06b0fee==1000x750.jpg\",\"txt\":\"亚桥高空车出租 图1\"}]', 684, 58, 1558454400, 1, 0, 1573898506, 'zh-CN', 1547023910, 1576988070, '武汉江汉'),
(83, 76, 84, '0,84,', NULL, NULL, NULL, '黄州区新城府外墙施工', 'huang-zhou-qu-xin-cheng-fu-wai-qiang-shi-gong', '', '', '推荐', '', 'admin', '', '高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '湖北黄冈市黄州区新城府外墙施工，高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '<p>湖北黄冈市黄州区新城府外墙施工</p>', 'cms-images/photo/2019_11_16/0a5bce4f457ba6751c8ce690d759ad8f==1000x750.jpg', '[{\"pic\":\"cms-images/photo/2019_11_16/0a5bce4f457ba6751c8ce690d759ad8f==1000x750.jpg\",\"txt\":\"亚桥高空车出租 图1\"},{\"pic\":\"cms-images/photo/2019_11_16/41a5db2b739f5c8b8379756aa943f7e4==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图2\"},{\"pic\":\"cms-images/photo/2019_11_16/eb9a30ff0f1e5ddcd031880822619921==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图3\"},{\"pic\":\"cms-images/photo/2019_11_16/90d869eacc4a19d266db7349b721d199==1000x750.jpg\",\"txt\":\"亚桥高空车出租 图4\"},{\"pic\":\"cms-images/photo/2019_11_16/27ad03022d9763ec869225ac8671941b==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图5\"},{\"pic\":\"cms-images/photo/2019_11_16/8d317e6ab329f598273cd5f8313af390==1000x750.jpg\",\"txt\":\"亚桥高空车出租 图6\"},{\"pic\":\"cms-images/photo/2019_11_16/1a2dc9f49dd6e6b8abf66cb3f47180f8==1000x750.jpg\",\"txt\":\"亚桥高空车出租 图7\"},{\"pic\":\"cms-images/photo/2019_11_16/fe9d218dea3065a90ddcf57704676120==1000x750.jpg\",\"txt\":\"亚桥高空车出租 图8\"},{\"pic\":\"cms-images/photo/2019_11_16/5a76dc56d0f863101ff206a01a6a5404==1000x750.jpg\",\"txt\":\"亚桥高空车出租 图9\"},{\"pic\":\"cms-images/photo/2019_11_16/e40d795bb407fd9404c525e3259a27f1==1000x750.jpg\",\"txt\":\"亚桥高空车出租 图10\"},{\"pic\":\"cms-images/photo/2019_11_16/5483d8f934ed4ef1e40d74ea2a7eceee==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图11\"},{\"pic\":\"cms-images/photo/2019_11_16/f20452ba0ded1cba86911f2a99b449a7==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图12\"}]', 674, 59, 1539187200, 1, 0, 0, 'zh-CN', 1547023926, 1576988063, '黄冈市'),
(84, 76, 84, '0,84,', NULL, NULL, NULL, '黄石阳新世荣御野外墙施工', 'huang-shi-yang-xin-shi-rong-yu-ye-wai-qiang-shi-gong', '', '', '相关,推荐,还看', '', 'admin', '', '高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '湖北黄石阳新世荣御野售楼部外墙施工，高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '<p>湖北黄石阳新世荣御野售楼部外墙施工</p>', 'cms-images/photo/2019_11_16/1c60e2835341d6ef0743fe93f4935196==1000x750.jpg', '[{\"pic\":\"cms-images/photo/2019_11_16/1c60e2835341d6ef0743fe93f4935196==1000x750.jpg\",\"txt\":\"亚桥高空车出租 图1\"},{\"pic\":\"cms-images/photo/2019_11_16/e5d8fe7e561186ea0c494949c33a1862==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图2\"},{\"pic\":\"cms-images/photo/2019_11_16/1485d4e71116f9ba9259f670c49b752a==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图3\"},{\"pic\":\"cms-images/photo/2019_11_16/e926431556e2c182d0ecfd8b27f93131==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图4\"},{\"pic\":\"cms-images/photo/2019_11_16/f3159f32be8db3d5791f51a6603d0920==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图5\"},{\"pic\":\"cms-images/photo/2019_11_16/0ec68a5c2d289d6e0c68274d102e60c1==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图6\"},{\"pic\":\"cms-images/photo/2019_11_16/005415b39a842124ee54e17a880b5424==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图7\"},{\"pic\":\"cms-images/photo/2019_11_16/3ee14bb0ccc9a24a800b11a83909b6b9==750x1000.jpg\",\"txt\":\"亚桥高空车出租 图8\"}]', 1239, 60, 1494604800, 1, 0, 0, 'zh-CN', 1547023943, 1576988019, '黄石市'),
(85, 76, 84, '0,84,', NULL, NULL, NULL, '黄陂区盘龙城厂房维修', 'huang-bei-qu-pan-long-cheng-chang-fang-wei-xiu', '', '', '', '', 'admin', '', '高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '武汉市黄陂区盘龙城厂房维修，高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '<p>武汉市黄陂区盘龙城厂房维修</p>', 'cms-images/photo/2019_11_16/71e5eb3a36da7ae1e06d4fcec0d79b5d==886x864.jpg', '[{\"pic\":\"cms-images/photo/2019_11_16/71e5eb3a36da7ae1e06d4fcec0d79b5d==886x864.jpg\",\"txt\":\"亚桥高空车出租 图1\"},{\"pic\":\"cms-images/photo/2019_11_16/b6e5bdb27771bf1365c49b0143753183==886x1144.jpg\",\"txt\":\"亚桥高空车出租 图2\"},{\"pic\":\"cms-images/photo/2019_11_16/006120648f1080f1fad5ebf1c793c4d9==1579x886.jpg\",\"txt\":\"亚桥高空车出租 图3\"}]', 1214, 61, 1492272000, 1, 0, 0, 'zh-CN', 1547023910, 1576987989, '武汉黄陂'),
(86, 76, 84, '0,84,', NULL, NULL, NULL, '盘龙城卓尔社区广告牌安装', 'pan-long-cheng-zhuo-er-she-qu-guang-gao-pai-an-zhuang', '', '', '相关,推荐', '', 'admin', '', '高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '武汉市黄陂区盘龙城卓尔社区广告牌安装，高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '<p>武汉市黄陂区盘龙城卓尔社区广告牌安装</p>', 'cms-images/photo/2019_11_16/5dce544db1fec4d24e7462243484c3f8==1440x1080.jpg', '[{\"pic\":\"cms-images/photo/2019_11_16/5dce544db1fec4d24e7462243484c3f8==1440x1080.jpg\",\"txt\":\"亚桥高空车出租 图1\"},{\"pic\":\"cms-images/photo/2019_11_16/f4ab398510dde5b020ccf8ffe9989401==1080x1440.jpg\",\"txt\":\"亚桥高空车出租 图2\"},{\"pic\":\"cms-images/photo/2019_11_16/36185a4cd9da1ef5833308eb313aab93==1080x1440.jpg\",\"txt\":\"亚桥高空车出租 图3\"},{\"pic\":\"cms-images/photo/2019_11_16/6125d33f093a1cc10a5acd225e7d6da2==1080x1440.jpg\",\"txt\":\"亚桥高空车出租 图4\"},{\"pic\":\"cms-images/photo/2019_11_16/ab5f59b9a184658f192903054c4770c8==1080x1440.jpg\",\"txt\":\"亚桥高空车出租 图5\"}]', 1260, 62, 1515168000, 1, 0, 1553927157, 'zh-CN', 1547023926, 1576987976, '武汉黄陂'),
(87, 76, 84, '0,84,', NULL, NULL, NULL, '江汉路M+广场广告纸安装', 'jiang-han-lumguang-chang-guang-gao-zhi-an-zhuang', '', '', '', '', 'admin', '', '高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '武汉市江汉路M+广场广告纸安装，高空作业车出租，登高车出租，亚桥租赁，亚桥高空车，桥梁检测车，云梯车，自行式直臂高空车', '<p>武汉市江汉路M+广场广告纸安装</p>', 'cms-images/photo/2019_11_16/d5b1465c03cddfe88211607e1f4a8401==1080x1052.jpg', '[{\"pic\":\"cms-images/photo/2019_11_16/d5b1465c03cddfe88211607e1f4a8401==1080x1052.jpg\",\"txt\":\"亚桥高空车出租 图1\"},{\"pic\":\"cms-images/photo/2019_11_16/44e841b00949141968f53894d0236516==1080x1440.jpg\",\"txt\":\"亚桥高空车出租 图2\"}]', 820, 63, 1505404800, 1, 0, 1553927106, 'zh-CN', 1547023943, 1576987952, '武汉江汉'),
(89, 104, 84, '0,84,', NULL, NULL, NULL, '直臂自行式升降车', 'zhi-bi-zi-xing-shi-sheng-jiang-che', '', '', '相关,推荐,还看,置顶', '', 'admin', '', '', '直臂自行式升降车', '<p><strong><span style=\"font-size: 14px;\">直臂式高空车</span></strong></p><p><span style=\"font-size: 14px;\">直臂式高空作业车均为柴油发动机驱动，动力强劲，四轮驱动，且车身地盘较高，便于在粗糙地面上行驶。紧急下降装置保证工作人员的安全可靠。设计耐用，可靠，易于维修和维护。先进的ADE控制系统和PLUS功能保证提供最佳的生产效益，同时平台和底座处的插入式分析仪便于维护和维修。</span></p><p><span style=\"font-size: 14px;\">特点</span></p><p><span style=\"font-size: 14px;\">* 转动平台可以连续360度的旋转，工作平台可转动45--180度，工作灵活。</span></p><p><span style=\"font-size: 14px;\">* 现金的ADE控制系统，保证平台的快速升降，提高工作效益。</span></p><p><span style=\"font-size: 14px;\">* 强大的越野性能，爬坡能力高达45%，采用平衡摆动轴，牵引力更佳。</span></p><p><span style=\"font-size: 14px;\">* 工作平台配有AC电源，方便携带各种工装。</span></p><p><span style=\"font-size: 14px;\">* 更快的直臂伸出速度。</span></p>', 'cms-images/photo/2019_11_25/039f237a53ef3dfe0da8ef47d1ef90d3==346x348.jpg', '[{\"pic\":\"cms-images/photo/2019_11_25/3b5076ff2800386f8cede71ef36452bb==457x457.jpg\",\"txt\":\"亚桥高空车出租 图1\"}]', 720, 98, 1553184000, 1, 0, 0, 'zh-CN', 1574694019, 1576987735, NULL),
(90, 104, 84, '0,84,', NULL, NULL, NULL, '18m直臂车载式高空车', '18m-zhi-bi-che-zai-shi-gao-kong-che', '', '', '相关,推荐,还看,置首', '', 'admin', '', '', '', '<p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">18m直臂车载式高空车原装进口关键件，性能优良，可靠性高，使用寿命长双工位操作，单手柄实现双向动作，操作方便，平稳舒服电脑控制自动限幅，全程自动监控工作状态上下车自动互锁，有效防止误操作，安全可靠设有应急动力源，有效应对突发故障液压助力转向，装有空调工作斗后置(±70°回转），方便进出，降低整车重心，提高行驶性能。</span></p>', 'cms-images/photo/2019_11_25/63c1743142f0aafda6087715aa6799ae==697x514.png', '[{\"pic\":\"cms-images/photo/2019_11_25/63c1743142f0aafda6087715aa6799ae==697x514.png\",\"txt\":\"亚桥高空车出租 图1\"},{\"pic\":\"cms-images/photo/2019_11_25/0d3bbba9f4c4096de4f1c7d1da9d4c4b==666x499.jpg\",\"txt\":\"亚桥高空车出租 图2\"}]', 811, 97, 1538582400, 1, 0, 0, 'zh-CN', 1574694320, 1576987744, NULL),
(91, 104, 84, '0,84,', NULL, NULL, NULL, '14.7m直臂高空作业车', '147m-zhi-bi-gao-kong-zuo-ye-che', '', '', '相关,推荐,还看', '', 'admin', '', '', '', '<p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">原装进口关键件，稳定可靠全方位考虑设计提供更加人性化操作平台全伸缩工作臂，结构紧凑，运行灵活迅捷双工位操作，方便快捷、平稳舒适电脑控制自动限幅，全程自动监控工作状态上下车自动互锁，防止误操作，安全可靠设有应急动力源，有效应对突发故障。</span></p>', 'cms-images/photo/2019_11_25/50c66b1a2e9e85234160bf6367b9aa5e==697x514.png', '[{\"pic\":\"cms-images/photo/2019_11_25/50c66b1a2e9e85234160bf6367b9aa5e==697x514.png\",\"txt\":\"亚桥高空车出租 图1\"},{\"pic\":\"cms-images/photo/2019_11_25/da86ba365b4c1d1059bea7a7bd77628a==666x500.jpg\",\"txt\":\"亚桥高空车出租 图2\"}]', 443, 95, 1576339200, 1, 0, 0, 'zh-CN', 1574694394, 1576987753, NULL),
(92, 104, 84, '0,84,', NULL, NULL, NULL, '17.8m直臂车载式升降车', '178m-zhi-bi-che-zai-shi-sheng-jiang-che', '', '', '相关,推荐,还看', '', 'admin', '', '', '', '<p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">17.8m直臂车载式升降车上装部分全套意大利原装进口结构紧凑机动性好工作斗后置，方便进出，降低整车重心，提高行驶性能双工位操作，方便快捷、平稳舒适电脑控制自动限幅，全程自动监控工作状态上下车自动互锁，防止误操作，安全可靠设有应急动力源，有效应对突发故障。</span></p>', 'cms-images/photo/2019_11_25/0d82c5c5daa53759203e1732597b3f85==697x514.png', '[{\"pic\":\"cms-images/photo/2019_11_25/0d82c5c5daa53759203e1732597b3f85==697x514.png\",\"txt\":\"亚桥高空车出租 图1\"},{\"pic\":\"cms-images/photo/2019_11_25/0d82c5c5daa53759203e1732597b3f85==697x514.png\",\"txt\":\"亚桥高空车出租 图2\"}]', 996, 93, 1546531200, 1, 0, 0, 'zh-CN', 1574694469, 1576987759, NULL),
(93, 104, 84, '0,84,', NULL, NULL, NULL, '16.2m直臂车载式升降车', '162m-zhi-bi-che-zai-shi-sheng-jiang-che', '', '', '相关,推荐,还看,置首', '', 'admin', '', '', '', '<p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">16.2m伸缩臂高空作业车原装进口关键件，稳定可靠全方位考虑设计提供更加人性化操作平台全伸缩工作臂，结构紧凑，运行灵活迅捷双工位操作，方便快捷、平稳舒适电脑控制自动限幅，全程自动监控工作状态上下车自动互锁，防止误操作，安全可靠设有应急动力源，有效应对突发故障北京利宇佳的高空作业设备种类齐全，包括：曲臂式、直臂式、剪叉式、越野式、蜘蛛式、车载式、铝合金式等高空作业设备。设备广泛应用于各类工程建设、航天航空、造船、汽车制造、电力、机场、港口、石油化工、酒店、会展中心等安装检验行业。北京利宇佳拥有一支专业的24小时服务团队，为客户提供专业及时的设备使用保障服务。</span></p>', 'cms-images/photo/2019_11_25/5b5ae26e34649465f3a3b98555e7366c==697x514.png', '[{\"pic\":\"cms-images/photo/2019_11_25/5b5ae26e34649465f3a3b98555e7366c==697x514.png\",\"txt\":\"亚桥高空车出租 图1\"},{\"pic\":\"cms-images/photo/2019_11_25/0d3bbba9f4c4096de4f1c7d1da9d4c4b==666x499.jpg\",\"txt\":\"亚桥高空车出租 图2\"}]', 917, 90, 1524412800, 1, 0, 0, 'zh-CN', 1574694567, 1576987778, NULL),
(94, 104, 84, '0,84,', NULL, NULL, NULL, '17.6m曲臂车载式升降车', '21m-zhe-die-bi-gao-kong-zuo-ye-che', '', '', '相关,推荐', '', 'admin', '', '', '', '<p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">17.6m曲臂车载式升降车电液比例控制，关键件进口，无级调速，微动性好转台工作斗双工位操作，人性化高，方便快捷外置拉杆式平衡机构限位功能，危险工况报警，安全性能卓越有线遥控，无限跨越技术参数。</span></p>', 'cms-images/photo/2019_11_25/159d7b16f3d9352b680d490eb254b028==697x514.png', '[{\"pic\":\"cms-images/photo/2019_11_25/159d7b16f3d9352b680d490eb254b028==697x514.png\",\"txt\":\"亚桥高空车出租 图1\"},{\"pic\":\"cms-images/photo/2019_11_25/aeb3eef9684f420f2524869cfeb3333f==666x499.jpg\",\"txt\":\"亚桥高空车出租 图2\"}]', 1099, 89, 1523376000, 1, 0, 0, 'zh-CN', 1574695216, 1576987785, NULL),
(95, 104, 84, '0,84,', NULL, NULL, NULL, '15.2m 曲臂车载式升降车', '152m-qu-bi-che-zai-shi-sheng-jiang-che', '', '', '相关', '', 'admin', '', '', '', '<p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">15.2m 曲臂车载式升降车：三节折叠臂，跨越障碍能力强双工位操作，方便快捷、平稳舒适电液比例控制，关键件进口，无级调速，微动性好内置防侧翻平衡机构限位功能，危险工况报警，安全性能卓越。</span></p>', 'cms-images/photo/2019_11_25/ad0bb7ceb226e7d4ab5849be537ea1cb==697x514.png', '[{\"pic\":\"cms-images/photo/2019_11_25/ad0bb7ceb226e7d4ab5849be537ea1cb==697x514.png\",\"txt\":\"亚桥高空车出租 图1\"},{\"pic\":\"cms-images/photo/2019_11_25/a9e68a223184125202dd0c453edb313c==666x499.jpg\",\"txt\":\"亚桥高空车出租 图2\"}]', 898, 88, 1547049600, 1, 0, 0, 'zh-CN', 1574695277, 1576987791, NULL),
(96, 104, 84, '0,84,', NULL, NULL, NULL, '9.6m曲臂高空作业车', '96m-qu-bi-gao-kong-zuo-ye-che', '', '', '相关,置首', '', 'admin', '', '', '', '<p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">9.6m曲臂高空作业车用途：</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">工作高度从6m-50m不等，广范应用于LED灯安装、厂房检测、广告牌安装、太阳能安装、外墙油漆粉刷、外墙玻璃清洗、会展布景、电力安装、国旗安装、树枝修剪、监控设备安装、隧道检测、同时兼营路灯维修、庭院灯维修、工程建设、厂房施工、厂房维护、市政、电力、路灯、通讯、园林、交通、工矿、工业安装、设备检修、立体仓库、影视广告拍摄、高空管路的铺设、各种场馆的物业维护、高架桥梁的建造和涂装等各种需要登高作业的场合。</span></p><p><br/></p>', 'cms-images/photo/2019_11_25/9fe67e8774a90a1569ba5ae6297b6081==697x514.png', '[{\"pic\":\"cms-images/photo/2019_11_25/9fe67e8774a90a1569ba5ae6297b6081==697x514.png\",\"txt\":\"亚桥高空车出租 图1\"},{\"pic\":\"cms-images/photo/2019_11_25/be76a074cc50b897799593854b19cae1==666x499.jpg\",\"txt\":\"亚桥高空车出租 图2\"}]', 1059, 86, 1499875200, 1, 0, 0, 'zh-CN', 1574695343, 1576987797, NULL),
(97, 104, 84, '0,84,', NULL, NULL, NULL, '21m折叠臂高空作业车', '21m-zhe-die-bi-gao-kong-zuo-ye-che', '', '', '相关,置首', '', 'admin', '', '', '', '<p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">21m折叠臂高空作业车电液比例控制，关键件进口，无级调速，微动性好双工位操作，上下车互锁支腿跨距大，稳定性好，可同时或单独操作限位功能，危险工况报警，安全性能卓越工作斗载荷大，三节折臂，作业范围更大。</span></p>', 'cms-images/photo/2019_11_25/b4e1746461b8f0fc6c61e16e6d338f14==697x514.png', '{\"2\":{\"pic\":\"cms-images/photo/2019_11_25/b4e1746461b8f0fc6c61e16e6d338f14==697x514.png\",\"txt\":\"亚桥高空车出租 图1\"},\"3\":{\"pic\":\"cms-images/photo/2019_11_25/3a1cfecc125c448113d4949aa66c316a==666x499.jpg\",\"txt\":\"亚桥高空车出租 图2\"}}', 905, 120, 1524240000, 1, 0, 0, 'zh-CN', 1574695481, 1576987589, NULL),
(98, 104, 84, '0,84,', NULL, NULL, NULL, '18.5m折叠臂高空作业车', '185m-zhe-die-bi-gao-kong-zuo-ye-che', '', '', '相关,置首', '', 'admin', '', '', '', '<p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">产品特点电液比例控制，关键件进口，无级调速，微动性好转台工作斗双工位操作，人性化高，方便快捷内置防侧翻平衡机构限位功能，危险工况报警，安全性能卓越三节折臂，作业范围更大。</span></p>', 'cms-images/photo/2019_11_25/159d7b16f3d9352b680d490eb254b028==697x514.png', '[{\"pic\":\"cms-images/photo/2019_11_25/159d7b16f3d9352b680d490eb254b028==697x514.png\",\"txt\":\"亚桥高空车出租 图1\"},{\"pic\":\"cms-images/photo/2019_11_25/d20a223216cb1309706f81423fdb7397==666x499.jpg\",\"txt\":\"亚桥高空车出租 图2\"}]', 971, 82, 1510156800, 1, 0, 0, 'zh-CN', 1574695549, 1576987804, NULL),
(99, 104, 84, '0,84,', NULL, NULL, NULL, '14m折叠臂高空升降车', '14m-zhe-die-bi-gao-kong-sheng-jiang-che', '', '', '相关,置首', '', 'admin', '', '', '', '<p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">14m折叠臂高空升降车原装进口关键件，性能优良，使用寿命长结构紧凑机动性好支腿跨距大，稳定性好，可同时或单独操作双工位操作，方便快捷，平稳舒适限位功能，危险工况报警，安全性能卓越。</span></p>', 'cms-images/photo/2019_11_25/d42fc5fe0c7c86d1857dcbee46eeeb9a==697x514.png', '[{\"pic\":\"cms-images/photo/2019_11_25/d42fc5fe0c7c86d1857dcbee46eeeb9a==697x514.png\",\"txt\":\"亚桥高空车出租 图1\"},{\"pic\":\"cms-images/photo/2019_11_25/be76a074cc50b897799593854b19cae1==666x499.jpg\",\"txt\":\"亚桥高空车出租 图2\"}]', 1389, 80, 1488902400, 1, 0, 0, 'zh-CN', 1574695611, 1576987810, NULL),
(100, 104, 84, '0,84,', NULL, NULL, NULL, '剪叉式高空作业平台对外租赁实车图', 'jian-cha-shi-gao-kong-zuo-ye-ping-tai-dui-wai-zu-lin-shi-che-tu', '', '', '相关', '', 'admin', '', '', '', '<p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">剪叉式高空作业平台是国内开发最早、性能最稳定、普及率最高的理想高空作业设备。尤其适用于厂房、工地、宾馆、车站等高大建筑的设备安装、检修、清洁等高空作业场合。此外在电力设备维护、高架管道检修、起吊机械保养等场合也有着非常广泛的应用，快速高效、方便快捷。</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">（1）专业的剪叉式机构设计，具有卓越的稳定性和安全性；</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">（2）主体结构采用高强度Q345B锰钢矩形管制作，结构坚固，经久耐用；</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">（3）数控加工的零部件，保证足够的精度和极小的偏摆量；</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">（4）装有安全防爆阀，即使油管爆裂等极端特殊情况，平台不会坠落；</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">（5）平台承载量大，可多人同时作业，有效提升工作效率；</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">（6）上下两处控制，操作简便、快捷；</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">（7）液压系统设置超载保护功能，使用更安全；</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">（8）设置停电状态下应急下降装置，保障应急安全；</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">（9）可选装移出台面、防爆系统、手动升降等装置，满足特殊工况需求。</span></p><p><br/></p>', 'cms-images/photo/2019_11_25/b6d1b6d3324ef6baa3145376560b5d60==500x500.png', '[{\"pic\":\"cms-images/photo/2019_11_25/b6d1b6d3324ef6baa3145376560b5d60==500x500.png\",\"txt\":\"亚桥高空车出租 图1\"},{\"pic\":\"cms-images/photo/2019_11_25/76c5202e9eeba849cffd17d78b162f16==340x453.jpg\",\"txt\":\"亚桥高空车出租 图2\"}]', 527, 76, 1565539200, 1, 0, 0, 'zh-CN', 1574695750, 1576987817, NULL),
(101, 104, 84, '0,84,', NULL, NULL, NULL, '全向自行剪叉式升降平台', 'quan-xiang-zi-xing-jian-cha-shi-sheng-jiang-ping-tai', '', '', '相关', '', 'admin', '', '', '', '<p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">SDOFAN全向自行剪叉式高空作业平台是专门为大型车间、仓库等场所量身定制的一种用于在高达十米的高空工作的全向移动式升降工作平台，电动前伸出平台提供了更大面积的工作区域，方便对接作业点，实现精确定位、装配，大大简化了装配工艺，增强了操作性，降低了装配风险，提高了生产效率；此平台在传统的高空作业平台的基础上融入了麦克纳姆轮的全向驱动技术，实现在平面内任意方向前进、后退、平移、侧向移动、原地旋转等优势，使许多困难危险的工作变得更加容易化，例如：室内外清洁(天花板，幕墙，玻璃窗，屋檐，雨蓬，烟囱等)，广告牌的装置和维护，路灯和交通标志的装置和维护等。这种高空升降平台的特点是小巧灵活，方便快捷。可以用一部升降平台代替脚手架来达到您需要的高度，解决您的难题。同时，还可以节省您的费用和宝贵的时间。</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">产品用途：SDOFAN全向自行剪叉式高空作业平台为上下控制，电动升降，这种高空升降平台的特点是小巧灵活，方便快捷，可以用一部升降平台代替脚手架来达到您需要的高度，解决您的难题。同时，还可以节省您的费用和宝贵的时间。该系列升降机广泛用于市政、电力、路灯、公路、码头、广告、园林、小区物业、厂矿企业车间等行业范围升降作业。</span></p><p><br/></p>', 'cms-images/photo/2019_11_25/dab455c83304a330f4efe15ff76b4823==750x562.jpg', '[{\"pic\":\"cms-images/photo/2019_11_25/dab455c83304a330f4efe15ff76b4823==750x562.jpg\",\"txt\":\"亚桥高空车出租 图1\"}]', 222, 75, 1572883200, 1, 0, 0, 'zh-CN', 1574695847, 1576987824, NULL),
(102, 104, 84, '0,84,', NULL, NULL, NULL, '移动式剪刀叉升降机货物举升机手动平台车液压提升机货梯云梯', 'shou-dong-ping-tai-che-ye-ya-ti-sheng-ji-huo-ti-yun-ti', '', '', '相关', '', 'admin', '', '', '', '<p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">剪叉式高空作业平台是国内开发最早、性能最稳定、普及率最高的理想高空作业设备。尤其适用于厂房、工地、宾馆、车站等高大建筑的设备安装、检修、清洁等高空作业场合。此外在电力设备维护、高架管道检修、起吊机械保养等场合也有着非常广泛的应用，快速高效、方便快捷。</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">（1）专业的剪叉式机构设计，具有卓越的稳定性和安全性；</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">（2）主体结构采用高强度Q345B锰钢矩形管制作，结构坚固，经久耐用；</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">（3）数控加工的零部件，保证足够的精度和极小的偏摆量；</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">（4）装有安全防爆阀，即使油管爆裂等极端特殊情况，平台不会坠落；</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">（5）平台承载量大，可多人同时作业，有效提升工作效率；</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">（6）上下两处控制，操作简便、快捷；</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">（7）液压系统设置超载保护功能，使用更安全；</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">（8）设置停电状态下应急下降装置，保障应急安全；</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">（9）可选装移出台面、防爆系统、手动升降等装置，满足特殊工况需求。</span></p><p><br/></p>', 'cms-images/photo/2019_11_25/8992c190864890bafae85f78d0a56ac1==580x650.jpg', '[{\"pic\":\"cms-images/photo/2019_11_25/8992c190864890bafae85f78d0a56ac1==580x650.jpg\",\"txt\":\"亚桥高空车出租 图1\"},{\"pic\":\"cms-images/photo/2019_11_25/bd92cd3271fdcb735849c1a15cbe832e==577x598.jpg\",\"txt\":\"亚桥高空车出租 图2\"}]', 749, 72, 1534521600, 1, 0, 0, 'zh-CN', 1574695933, 1576987833, NULL),
(103, 104, 84, '0,84,', NULL, NULL, NULL, '直臂式高空作业平台', 'zhi-bi-shi-gao-kong-zuo-ye-ping-tai', '', '', '相关,置首', '', 'admin', '', '', '', '<p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">直臂式高空作业车是高空作业车的一种，一般工作高度从14.20米到43米，主要采用自动调平工作平台功能及霍尔效应的全比例控制手柄以及12伏直流辅助电源 。能够提供平台快速升降功能 。</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">自行走直臂式高空作业平台</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">主要规格</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">● 工作高度－不受限：43.00m</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">● 最大水平伸距－不受限：24.00m</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">● 工作载荷－不受限：450kg</span></p><p><br/></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">重要特色</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">● 四轮驱动，四轮转向使其具备灵活的机动性</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">● 全自动伸展轮轴</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">● 40%的爬坡能力</span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">● 小臂回转缩短整机长度，便于设备运输</span></p><p><br/></p>', 'cms-images/photo/2019_11_25/199e297fb86078ead798fc8a3ec54afa==500x500.jpg', '[{\"pic\":\"cms-images/photo/2019_11_25/199e297fb86078ead798fc8a3ec54afa==500x500.jpg\",\"txt\":\"亚桥高空车出租 图1\"},{\"pic\":\"cms-images/photo/2019_11_25/1acac12eb4ad8208e7dc638293b8e685==500x500.jpg\",\"txt\":\"亚桥高空车出租 图2\"}]', 1054, 70, 1516032000, 1, 0, 0, 'zh-CN', 1574696057, 1576987840, NULL),
(104, 104, 84, '0,84,', NULL, NULL, NULL, '蜘蛛式高空作业平台', 'zhi-zhu-shi-gao-kong-zuo-ye-ping-tai', '', '', '相关', '', 'admin', '', '', '', '', 'cms-images/photo/2019_11_25/de89f255b74606612ea98ae759b4b942==800x800.jpg', '[{\"pic\":\"cms-images/photo/2019_11_25/de89f255b74606612ea98ae759b4b942==800x800.jpg\",\"txt\":\"亚桥高空车出租 图1\"},{\"pic\":\"cms-images/photo/2019_11_25/274b7373b1c7afa6a85ad6e4858d017f==800x800.jpg\",\"txt\":\"亚桥高空车出租 图2\"}]', 1306, 65, 1493913600, 1, 0, 0, 'zh-CN', 1574696250, 1576987886, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ss_cms_src`
--

CREATE TABLE `ss_cms_src` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '来源id',
  `srcname` varchar(50) NOT NULL DEFAULT '' COMMENT '来源名称',
  `linkurl` varchar(150) NOT NULL DEFAULT '' COMMENT '来源地址',
  `orderid` int(11) UNSIGNED NOT NULL DEFAULT '10' COMMENT '来源排序',
  `lang` varchar(8) NOT NULL DEFAULT '' COMMENT '多语言',
  `created_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '添加时间',
  `updated_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '编辑时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='信息来源表';

--
-- Dumping data for table `ss_cms_src`
--

INSERT INTO `ss_cms_src` (`id`, `srcname`, `linkurl`, `orderid`, `lang`, `created_at`, `updated_at`) VALUES
(58, '中国路面机械网', 'https://www.lmjx.net/', 52, 'zh-CN', 0, 0),
(63, '卡车之家', 'http://www.360che.com', 20, 'zh-CN', 1575376963, 1575376963);

-- --------------------------------------------------------

--
-- Table structure for table `ss_cms_tag`
--

CREATE TABLE `ss_cms_tag` (
  `tag_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL DEFAULT '' COMMENT 'tag名称',
  `frequency` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '权重',
  `slug` varchar(128) NOT NULL DEFAULT '',
  `lang` varchar(8) NOT NULL DEFAULT '' COMMENT '多语言'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='cms标签表';

--
-- Dumping data for table `ss_cms_tag`
--

INSERT INTO `ss_cms_tag` (`tag_id`, `name`, `frequency`, `slug`, `lang`) VALUES
(72, '直臂车载式高空车', 4, '', 'zh-CN'),
(73, '曲臂车载式升降车', 3, '', 'zh-CN'),
(74, '折叠臂高空作业车', 2, '', 'zh-CN'),
(75, '剪叉式高空作业平台', 3, '', 'zh-CN'),
(80, '直臂式高空作业平台', 1, '', 'zh-CN'),
(81, '蜘蛛式高空作业平台', 1, '', 'zh-CN');

-- --------------------------------------------------------

--
-- Table structure for table `ss_cms_tag_assign`
--

CREATE TABLE `ss_cms_tag_assign` (
  `ta_id` int(11) UNSIGNED NOT NULL,
  `class` varchar(128) NOT NULL DEFAULT '',
  `item_id` int(11) UNSIGNED DEFAULT NULL,
  `tag_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='cms标签分配表';

--
-- Dumping data for table `ss_cms_tag_assign`
--

INSERT INTO `ss_cms_tag_assign` (`ta_id`, `class`, `item_id`, `tag_id`) VALUES
(9, 'Help', 83, 58),
(74, 'Photo', 97, 74),
(75, 'Photo', 90, 72),
(76, 'Photo', 91, 72),
(77, 'Photo', 92, 72),
(78, 'Photo', 93, 72),
(79, 'Photo', 94, 73),
(80, 'Photo', 95, 73),
(81, 'Photo', 96, 73),
(82, 'Photo', 98, 74),
(83, 'Photo', 100, 75),
(84, 'Photo', 101, 75),
(85, 'Photo', 102, 75),
(86, 'Photo', 103, 80),
(87, 'Photo', 104, 81);

-- --------------------------------------------------------

--
-- Table structure for table `ss_cms_video`
--

CREATE TABLE `ss_cms_video` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '视频信息id',
  `columnid` int(11) UNSIGNED DEFAULT NULL COMMENT '所属栏目id',
  `parentid` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '所属栏目上级id',
  `parentstr` varchar(80) NOT NULL DEFAULT '' COMMENT '所属栏目上级id字符串',
  `cateid` int(11) UNSIGNED DEFAULT NULL COMMENT '所属类别id',
  `catepid` int(11) UNSIGNED DEFAULT NULL COMMENT '所属类别上级id',
  `catepstr` varchar(80) DEFAULT NULL COMMENT '所属类别上级id字符串',
  `title` varchar(80) NOT NULL DEFAULT '' COMMENT '标题',
  `slug` varchar(200) NOT NULL DEFAULT '' COMMENT '访问链接',
  `colorval` char(10) NOT NULL DEFAULT '' COMMENT '字体颜色',
  `boldval` char(10) NOT NULL DEFAULT '' COMMENT '字体加粗',
  `flag` varchar(30) DEFAULT NULL COMMENT '属性',
  `source` varchar(50) NOT NULL DEFAULT '' COMMENT '文章来源',
  `author` varchar(50) NOT NULL DEFAULT '' COMMENT '作者编辑',
  `linkurl` varchar(255) NOT NULL DEFAULT '' COMMENT '跳转链接',
  `keywords` varchar(50) NOT NULL DEFAULT '' COMMENT '关键词',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '摘要',
  `content` mediumtext COMMENT '详细内容',
  `picurl` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略视频',
  `videolink` text COMMENT '视频地址',
  `hits` int(11) UNSIGNED NOT NULL DEFAULT '100' COMMENT '点击次数',
  `orderid` int(11) UNSIGNED NOT NULL DEFAULT '10' COMMENT '排列排序',
  `posttime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '审核状态',
  `delstate` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '删除状态',
  `deltime` int(10) UNSIGNED NOT NULL COMMENT '删除时间',
  `lang` varchar(8) NOT NULL DEFAULT '' COMMENT '多语言',
  `created_at` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `updated_at` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='视频管理表';

--
-- Dumping data for table `ss_cms_video`
--

INSERT INTO `ss_cms_video` (`id`, `columnid`, `parentid`, `parentstr`, `cateid`, `catepid`, `catepstr`, `title`, `slug`, `colorval`, `boldval`, `flag`, `source`, `author`, `linkurl`, `keywords`, `description`, `content`, `picurl`, `videolink`, `hits`, `orderid`, `posttime`, `status`, `delstate`, `deltime`, `lang`, `created_at`, `updated_at`) VALUES
(6, 50, 48, '0,48,', 14, 15, '0,15,', 'dddefef', '', '#3366CC', 'bold', 'gd', '', 'admin', '', '', '', '', 'cms/2018_08_25/8d83eb275c6e175e3673c7f6d900ce2d.jpg', 'sdfsf', 100, 10, 1540310400, 1, 1, 1545465164, 'zh-CN', 1535188408, 1542873190),
(7, 50, 48, '0,48,', 16, 12, '0,12,', 'dddddddddddddddddddd', '', '', '', 'gd', '', 'admin', '', '', '', '', '', 'dfdfdf', 100, 11, 1542816000, 1, 1, 1545465164, 'zh-CN', 1542873075, 1542873175),
(8, 83, 0, '0,', NULL, NULL, NULL, '十大pvc地板品牌，如何选购pvc地板', 'shi-dapvc-de-ban-pin-pai-ru-he', '', '', '', '', 'admin', '', '', '', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">PVC地板是一种用于地板装饰的新型轻质材料，在市场上很受欢迎。它具有防滑耐磨的优点，吸收声音、抗噪声，并广泛应用于国内学校、超市等地。那么，pvc地板有什么品牌?如何选购pvc地板?接下来就请大家跟随装修之家小编一起来了解一下有关<span style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit;\">十大pvc地板品牌</span>的一些内容吧。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\"><img title=\"十大pvc地板品牌\" alt=\"十大pvc地板品牌\" src=\"http://img01.lingdangpet.cn/cms-images/video/2019_01_04/ef1e18a178b01d3c1cadbf8dbd19e731.jpg\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">十大pvc地板品牌</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">1、 博尼尔 Bonie</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">Bonier属于Bonnie建材科技国际集团有限公司的品牌，该公司是pvc地板的知名制造商。它主要生产、并出售、的装饰材料。许多人生产的塑料地板是很多人的最爱。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">2、 德嘉 Targett</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">Dejia成立于1872年，是法国着名的塑料地板制造商，也是商业弹性地板市场的领导者。其产品畅销多个国家和地区。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">3、LG Hausys</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">LG Hausys是原LG集团的一个部门，是韩国最大的装饰建材制造商之一。生产的PVC地板质量优良，在中国销量很好。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">4、 洁福 Gerflor</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">Jiefu成立于1937年，是法国着名的PVC地板品牌，也是世界上专业的PVC运动地板制造商之一。它在弹性塑料地板领域中是已知的。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">5、 保丽 Polyflor</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">宝利成立于1915年，是英国着名的PVC地板品牌。他一直致力于生产高品质的橡胶地板，并在全球塑料地板领域享有一定的声誉。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">6、阿姆斯壮</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">Armstrong成立于1860年，是美国着名的PVC地板品牌。它也是世界着名的屋顶和弹性地板制造商。它在全国市场上销售量很大。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">7、肯迪亚</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">Kendia是江苏肯迪木业有限公司的品牌。它是中国着名的PVC地板生产商。这是我的环境标志认证产品，也是中国500个最有价值的品牌之一。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">8、 丽宝第</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">利宝是中国国家建材集团的品牌，也是中国最大的优质塑料地板生产商之一。它是中国PVC地板的领先品牌，其产品质量得到了很多人的认可。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">9、 福尔波 forbo</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">福尔波成立于1928年，是世界知名的坚固地板解决方案供应商，生产和销售地板。市场销售一直处于前列。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">10、 韩华 HANWHAHanwha</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">成立于1952年，是韩国着名的塑料加工品牌。它在家用面板领域享有一定的声誉，产品畅销国内市场，质量上乘。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\"><img title=\"十大pvc地板品牌\" alt=\"十大pvc地板品牌\" src=\"http://img01.lingdangpet.cn/cms-images/video/2019_01_04/85247b211c93da98574aa1a623da9b93.jpg\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">十大pvc地板品牌----购买pvc地板的注意事项</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">1.质量：pvc材料也更轻。它与普通地板非常不同。不仅颜色丰富，而且表面经过特殊处理，因此具有良好的耐磨性和耐污性。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">2.施工：在整个施工过程和安装质量直接影响到地板的使用寿命地板安装是非常重要的。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">PVC地板有自己的专业施工队伍，施工人员都是经过专业培训，所以其效设备无法媲美的其他楼层。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">3.服务：服务是安装后维护地板，这也是一个非常重要的问题。因此，在购买时，你应该选择一个公司具有完善的售后服务和良好的信誉，以确保未来的使用。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">十大pvc地板品牌----pvc地板有哪些优点?</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">1.环保</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">pvc土壤的原料是聚氯乙烯，也是一种生态材料，也是一种可再生材料。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">其次，PVC材料也存在于其它行业，如包装袋用于输液管、表，所以你可以不用担心环保。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">2.超强防滑、阻燃</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">性能防火PVC地板是很不错的，指标是B1级和消防安全石头后面。其次，PVC材料不仅不会燃烧而且还会阻碍火焰。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">即使在被动点火的情况下，由此产生的烟雾也不会影响人体。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">3.防水防潮和噪音预防</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">乙烯基树脂是PVC地板的主要成分，并且该组分不吸收水，因此PVC地板是防水的。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">虽然PVC地板未浸在水中很长一段时间，也不会被损坏和在潮湿环境中不会引起生锈。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">其次，PVC地板具有吸音和隔音吸收良好的效果可高达20个分贝，这是非常适合电影和电视库。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">4.超轻超薄结构、很简单</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">PVC地板的厚度仅为2至3mm，重量只有4 kg至每平方米6公斤重量的其它地板材料的重量的十分之一。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\"><img title=\"十大pvc地板品牌\" alt=\"十大pvc地板品牌\" src=\"http://img01.lingdangpet.cn/cms-images/video/2019_01_04/2f0d3b2d866203c65d3bcc8ad6c7d6de.jpg\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">降低建筑物的重要性不仅重要，而且在高层建筑中也非常高。节省空间二，pvc地板建造也非常方便，操作简便。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; border: 0px; box-sizing: inherit; font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255); text-indent: 2em;\">以上就是小编今天为你整理的有关十大pvc地板品牌的一些内容，pvc地板是一种很不错的装饰建材，大家在选购之前应该先了解一些建材知识。希望上面的内容能够对有需要的朋友带来一点帮助，感谢您的阅读，想要了解更多资讯请继续关注装修之家网。</p><p><br/></p>', 'cms-images/video/2019_01_04/2f0d3b2d866203c65d3bcc8ad6c7d6de.jpg', 'test', 100, 12, 1546593754, 1, 0, 0, 'zh-CN', 1546593754, 1546593754);

-- --------------------------------------------------------

--
-- Table structure for table `ss_diymodel_faqs`
--

CREATE TABLE `ss_diymodel_faqs` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'ID',
  `title` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '标题',
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '访问链接',
  `colorval` char(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '字体颜色',
  `boldval` char(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '字体加粗',
  `columnid` int(11) UNSIGNED NOT NULL COMMENT '栏目ID',
  `parentid` int(11) UNSIGNED NOT NULL COMMENT '栏目父ID',
  `parentstr` varchar(80) COLLATE utf8_unicode_ci NOT NULL COMMENT '栏目父ID列表',
  `cateid` int(11) UNSIGNED DEFAULT NULL COMMENT '类别ID',
  `catepid` int(11) UNSIGNED DEFAULT NULL COMMENT '类别父ID',
  `catepstr` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '类别父ID列表',
  `flag` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '标记',
  `picurl` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '缩略图',
  `lang` varchar(8) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '多语言',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '状态',
  `orderid` int(11) UNSIGNED NOT NULL DEFAULT '10' COMMENT '排序',
  `posttime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '发布时间',
  `updated_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `created_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '添加时间',
  `diyfield_ask_content` mediumtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='问答表';

--
-- Dumping data for table `ss_diymodel_faqs`
--

INSERT INTO `ss_diymodel_faqs` (`id`, `title`, `slug`, `colorval`, `boldval`, `columnid`, `parentid`, `parentstr`, `cateid`, `catepid`, `catepstr`, `flag`, `picurl`, `lang`, `status`, `orderid`, `posttime`, `updated_at`, `created_at`, `diyfield_ask_content`) VALUES
(16, '租赁设备可以提供技术/人员支持吗？', 'zu-lin-she-bei-ke-yi-ti-gong-ji-shuren', '', '', 85, 84, '0,84,', NULL, NULL, NULL, '最新问答', '', 'zh-CN', 1, 10, 1557465101, 1574171634, 1574171544, '<p><span style=\"color: rgb(102, 102, 102); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, arial, Tahoma, SimSun, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">可以的，需要另外按照市场价收取费用，如果工程量大可以折扣。</span></p>'),
(17, '租赁需要押金吗？多少钱？', 'zu-lin-xu-yao-ya-jin-ma-duo-shao-qian', '', '', 85, 84, '0,84,', NULL, NULL, NULL, '最新问答', '', 'zh-CN', 1, 10, 1553848174, 1574171892, 1574171764, '<p><span style=\"color: rgb(102, 102, 102); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, arial, Tahoma, SimSun, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">我们公司不需要押金，签订协议后，工程完成一起支付租赁费用即可，工程较大需要进行现场考查。另外，受理各种包台班、包天、包月、包年业务。</span></p>'),
(18, '晚上9点之后方便派人过来吗？', 'wan-shang9dian-zhi-hou-fang-bian-pai-ren-guo', '', '', 85, 84, '0,84,', NULL, NULL, NULL, '业务问答', '', 'zh-CN', 1, 10, 1556116491, 1574171851, 1574171851, '<p><span style=\"font-size: 14px;\">可以，我们随时可加班，八名驾驶员分为两班制，有效避免驾驶员因疲劳驾驶造成工期拖延的状况发生。&nbsp;</span></p>'),
(19, '租赁期间设备出现故障，如何判定责任方？', 'zu-lin-qi-jian-she-bei-chu-xian-gu-zhang-ru-he-pan-ding-ze-ren-fang', '', '', 85, 84, '0,84,', NULL, NULL, NULL, '业务问答', '', 'zh-CN', 1, 10, 1567153121, 1574171995, 1574171995, '<p><span style=\"font-size: 14px;\">这个需要视具体情况根据现场查看，前提是以客户服务为中心，一定会站在客户的角度考虑问题。</span></p>'),
(20, '除了租金还有其他收费吗？', 'chu-le-zu-jin-hai-you-qi-ta-shou-fei-ma', '', '', 85, 84, '0,84,', NULL, NULL, NULL, '业务问答', '', 'zh-CN', 1, 10, 1511152484, 1574174414, 1574172099, '<p><span style=\"font-size: 14px;\">没有的，车辆费用、油费、人员费用全包，而且在达成合作之前会告诉客户明确的费用及组成，没有其他额外费用。</span></p>'),
(21, '你们的高空车作业范围是什么？', 'ni-men-de-gao-kong-che-zuo-ye-fan-wei', '', '', 85, 84, '0,84,', NULL, NULL, NULL, '业务问答,最新问答', '', 'zh-CN', 1, 10, 1575123955, 1575123955, 1575123955, '<p><span style=\"font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, arial, Tahoma, SimSun, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">亚桥机械租赁拥有数十台5-50米高度不等的高空作业车，随时可加班，八名驾驶员分为两班制，有效避免驾驶员因疲劳驾驶造成工期拖延的状况发生。&nbsp;</span></p>'),
(22, '我们需要走对公账户，你们开发票吗？', 'wo-men-xu-yao-zou-dui-gong-zhang', '', '', 85, 84, '0,84,', NULL, NULL, NULL, '业务问答,最新问答', '', 'zh-CN', 1, 10, 1575124099, 1575124099, 1575124099, '<p><span style=\"font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, arial, Tahoma, SimSun, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">您好，我们是正规机械租赁，有合规的从业资质，我司可开增值税发票（普票，专票）的规模化专营高空作业车租赁公司。&nbsp;</span></p>'),
(23, '你好，我们需要高空拍摄，目前考虑的是吊篮车但不确定，请问你们出方案吗？', 'ni-hao-wo-men-xu-yao-gao-kong-pai-she-mu', '', '', 85, 84, '0,84,', NULL, NULL, NULL, '业务问答,最新问答', '', 'zh-CN', 1, 10, 1575124314, 1575124314, 1575124314, '<p><span style=\"font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, arial, Tahoma, SimSun, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">湖北亚桥机械租赁有限公司是一家专业从事高空车出租、登高车出租、云梯车出租、吊篮车出租、路灯车出租的租赁公司，我们可以在线沟通或者直接电话咨询具体情况，可以的话我们还可以上门考察，保证给客户提供最优施工方案。</span></p>');

-- --------------------------------------------------------

--
-- Table structure for table `ss_diy_field`
--

CREATE TABLE `ss_diy_field` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '自定义字段ID',
  `fd_column_type` tinyint(5) UNSIGNED DEFAULT NULL COMMENT '所属模型类型',
  `columnid_list` varchar(30) NOT NULL DEFAULT '' COMMENT '所属栏目列表',
  `fd_name` varchar(30) NOT NULL DEFAULT '' COMMENT '字段名称',
  `fd_title` varchar(30) NOT NULL DEFAULT '' COMMENT '字段标题',
  `fd_desc` varchar(255) NOT NULL DEFAULT '' COMMENT '字段提示',
  `fd_type` varchar(30) NOT NULL DEFAULT '' COMMENT '字段类型',
  `fd_long` varchar(10) NOT NULL DEFAULT '1' COMMENT '字段长度',
  `fd_value` varchar(255) NOT NULL DEFAULT '' COMMENT '字段选项值',
  `fd_check` varchar(80) NOT NULL DEFAULT '' COMMENT '校验正则',
  `fd_tips` varchar(30) NOT NULL DEFAULT '' COMMENT '未通过提示',
  `orderid` int(11) UNSIGNED NOT NULL DEFAULT '10' COMMENT '排列排序',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '是否生效',
  `list_status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否显示在列表（自定义模型专用）',
  `created_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '添加时间',
  `updated_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '编辑时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='自定义列';

--
-- Dumping data for table `ss_diy_field`
--

INSERT INTO `ss_diy_field` (`id`, `fd_column_type`, `columnid_list`, `fd_name`, `fd_title`, `fd_desc`, `fd_type`, `fd_long`, `fd_value`, `fd_check`, `fd_tips`, `orderid`, `status`, `list_status`, `created_at`, `updated_at`) VALUES
(1, 7, '85', 'ask_content', '回答内容', '必填项', 'mediumtext', '0', '默认文本（注意清空）', 'required', '回答内容不能为空', 10, 1, 0, 1547380162, 1547380402),
(2, 4, '67', 'service_item', '服务范围', '', 'mediumtext', '0', '', 'required', '必须输入的字段', 10, 1, 0, 1553253076, 1553253076),
(3, 4, '67', 'service_price', '服务价格', '请使用表格编辑', 'mediumtext', '0', '', 'required', '必须输入的字段', 10, 1, 0, 1553253169, 1553253169),
(4, 2, '76', 'case_address', '作业地址（市/区）', '必填选项', 'varchar', '50', '', 'required', '必须输入的字段', 10, 1, 0, 1576324037, 1576324037);

-- --------------------------------------------------------

--
-- Table structure for table `ss_diy_model`
--

CREATE TABLE `ss_diy_model` (
  `dm_id` int(11) UNSIGNED NOT NULL COMMENT '自定义模型id',
  `dm_title` varchar(30) NOT NULL DEFAULT '' COMMENT '模型标题',
  `dm_name` varchar(30) NOT NULL DEFAULT '' COMMENT '模型名称',
  `dm_tbname` varchar(30) NOT NULL DEFAULT '' COMMENT '模型表名',
  `orderid` int(11) UNSIGNED NOT NULL DEFAULT '10' COMMENT '排列排序',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '审核状态',
  `created_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '添加时间',
  `updated_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='自定义模型';

--
-- Dumping data for table `ss_diy_model`
--

INSERT INTO `ss_diy_model` (`dm_id`, `dm_title`, `dm_name`, `dm_tbname`, `orderid`, `status`, `created_at`, `updated_at`) VALUES
(7, '问答列表', 'FaqsModel', 'faqs', 10, 1, 1547365815, 1555906016);

-- --------------------------------------------------------

--
-- Table structure for table `ss_ext_ad`
--

CREATE TABLE `ss_ext_ad` (
  `id` int(5) UNSIGNED NOT NULL COMMENT '信息id',
  `ad_type_id` int(5) UNSIGNED DEFAULT NULL COMMENT '投放范围(广告位)',
  `parentid` int(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT '所属广告位父id',
  `parentstr` varchar(80) NOT NULL DEFAULT '' COMMENT '所属广告位父id字符串',
  `title` varchar(30) NOT NULL DEFAULT '' COMMENT '广告标识',
  `admode` char(10) NOT NULL DEFAULT '' COMMENT '展示模式',
  `picurl` varchar(100) NOT NULL DEFAULT '' COMMENT '上传内容地址',
  `adtext` text COMMENT '展示内容',
  `linkurl` varchar(255) NOT NULL DEFAULT '' COMMENT '跳转链接',
  `orderid` int(5) UNSIGNED NOT NULL DEFAULT '10' COMMENT '排列排序',
  `posttime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '提交时间',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '审核状态',
  `lang` varchar(8) NOT NULL DEFAULT '' COMMENT '多语言',
  `created_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '添加时间',
  `updated_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '编辑时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='广告管理表';

--
-- Dumping data for table `ss_ext_ad`
--

INSERT INTO `ss_ext_ad` (`id`, `ad_type_id`, `parentid`, `parentstr`, `title`, `admode`, `picurl`, `adtext`, `linkurl`, `orderid`, `posttime`, `status`, `lang`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '0,1,', '企业合作', 'image', 'cms-images/ad/2019_10_08/89eb0ff9f1f714dd1e6dab9e20da39d6==860x370.jpg', '', '', 100, 1546704000, 1, 'zh-CN', 1546778671, 1574000053),
(3, 2, 1, '0,1,', '专业租赁高空机械设备', 'image', 'cms-images/ad/2019_11_17/1c22c679c8a420469aaddb1c5e30b1b8==860x370.jpg', '专业租赁高空机械设备', '', 150, 1548086400, 1, 'zh-CN', 1548147063, 1574000032),
(4, 3, 1, '0,1,', '万达影城', 'image', 'cms-images/ad/2019_10_08/f7cbbe3184f51da5ca88144ea9ef3b29==170x60.png', '', '', 230, 1551801600, 1, 'zh-CN', 1551847028, 1570543921),
(5, 3, 1, '0,1,', '中国农业银行', 'image', 'cms-images/ad/2019_10_08/ba6bba08dbb16a3dbcfb186443e9bfa1==170x60.png', '', '', 50, 1551801600, 1, 'zh-CN', 1551847028, 1570543954),
(6, 3, 1, '0,1,', '中信银行', 'image', 'cms-images/ad/2019_10_08/93c164d46240cdae73d5eecd523a8c4b==170x60.png', '', '', 180, 1551801600, 1, 'zh-CN', 1551847028, 1570543965),
(7, 3, 1, '0,1,', '万科 金域华府', 'image', 'cms-images/ad/2019_10_08/bdee02cb8bcba883c86adae1161b981c==170x60.png', '', '', 13, 1551801600, 1, 'zh-CN', 1551847028, 1570543987),
(8, 3, 1, '0,1,', '爱尔眼科', 'image', 'cms-images/ad/2019_10_08/457bedb7a4ba6ced133039aedcda00df==170x60.png', '', '', 220, 1551801600, 1, 'zh-CN', 1551847028, 1570544005),
(9, 3, 1, '0,1,', '蒙牛', 'image', 'cms-images/ad/2019_10_08/abdf8c93609ef6dbcb2a111827d66479==170x60.png', '', '', 190, 1551801600, 1, 'zh-CN', 1551847028, 1570544020),
(10, 3, 1, '0,1,', '百联奥特莱斯', 'image', 'cms-images/ad/2019_10_08/dffd9bdbefcaa85305e8a11e71da95b1==170x60.png', '', '', 210, 1551801600, 1, 'zh-CN', 1551847028, 1570544052),
(11, 3, 1, '0,1,', '花嫁丽舍', 'image', 'cms-images/ad/2019_10_08/c8f18208a4298529142eb583c937bde5==170x60.png', '', '', 200, 1551801600, 1, 'zh-CN', 1551847028, 1570544234),
(12, 3, 1, '0,1,', '古井贡酒', 'image', 'cms-images/ad/2019_10_08/b756de1a33a09d2f93abab3662fcc379==170x60.png', '', '', 13, 1551801600, 1, 'zh-CN', 1551847028, 1570544254),
(13, 3, 1, '0,1,', '永辉超市', 'image', 'cms-images/ad/2019_10_09/285ae6a1b884357e89e4d79a896a61c1==290x102.jpg', '', '', 13, 1551801600, 1, 'zh-CN', 1551847028, 1570626606),
(14, 3, 1, '0,1,', '顺丰速运', 'image', 'cms-images/ad/2019_10_09/7c4c8436cf76b5c2820a77bec50a83ed==284x100.jpg', '', '', 13, 1551801600, 1, 'zh-CN', 1551847028, 1570626587),
(15, 3, 1, '0,1,', '格力电器', 'image', 'cms-images/ad/2019_10_09/da10440a4b1bc4181fcaf30b86a1680b==438x155.jpg', '', '', 13, 1551801600, 1, 'zh-CN', 1551847028, 1570626676),
(26, 4, 1, '0,1,', '武汉李总对我们的满意度', 'image', 'cms-images/ad/2019_03_08/0ab1a1b8b0429267e22794c5664aa6f5==468x312.png', '{\"say_content\":\"为庆祝国庆和武汉军运会一起来临，我们公司为了配合城市美化工作，进行厂房高空外墙的修复。恰巧这这段时间市场对高空作业车的需求比较大，叫车难严重卡住了我们的进度。亚桥租赁帮了大忙，不仅价格合理没有太大浮动，而且开工快，几天就完成了上级交待的任务，非常感谢。\",\"sub_title1\":\"施工迅速，价格合理\",\"sub_title2\":\"随叫随到适合长期合作\"}', '', 16, 1551974400, 1, 'zh-CN', 1552041972, 1574084751),
(27, 4, 1, '0,1,', '汉正街第四医院对我们的认可', 'image', 'cms-images/ad/2019_03_08/f1dbd30404c0f67066387629c454004c==468x312.png', '{\"say_content\":\"负责医院大楼高空广告牌安装的高先生告诉我们，医院在汉正街这边，车辆进来时候会有些麻烦，但是亚桥的员工们还是想尽一切办法，将任务按时完成。由衷的感谢亚桥机械租赁有限公司。果然，高空车作业省时省力省钱还安全。比预期的情况好太多了\",\"sub_title1\":\"立足武汉，覆盖湖北\",\"sub_title2\":\"一通电话，全国用车\"}', '', 16, 1551974400, 1, 'zh-CN', 1552041972, 1574085079),
(28, 4, 1, '0,1,', '亚桥租赁企业级解决方案03', 'image', 'cms-images/ad/2019_03_08/379f75c6c8a024ab340220f77c0b00c0==468x312.png', '{\"say_content\":\"李总，精密仪器加工厂老板，每天需要拉两三趟货往不同的下游工厂，李总与一家物流公司签订了合同，即使单趟也按来回双程收费，受制于物流公司只有4.2米或以上货车，即时出货量不多，也无可奈何赔上大车价格。“运输成本下不来，赚再多也是赔。”李总说。\",\"sub_title1\":\"全国布局100+城市99，一二三线城市全覆盖\",\"sub_title2\":\"一个账户，全国用车\"}', '', 16, 1551974400, 0, 'zh-CN', 1552041972, 1574085146),
(29, 4, 1, '0,1,', '黄冈黄州一超市老板', 'image', 'cms-images/ad/2019_03_08/610a0306ccbc7e29d7bc893c5117020c==468x312.png', '{\"say_content\":\"客户是个有耐心的美女。因为超市在二楼第一次接触高空作业，我在百度上找到亚桥机械租赁有限公司，是小李接待我的，我问了很多关于这方面的问题，她都很耐心、很详细的回答了我，并且给我提供了一份合理的报价，所以我选择了亚桥租赁。为亚桥租赁打call, 推荐！\",\"sub_title1\":\"专业给您放心\",\"sub_title2\":\"方案让您省心\"}', '', 16, 1551974400, 1, 'zh-CN', 1552041972, 1574085315),
(30, 7, 1, '0,1,', '格局决定未来', 'image', 'cms-images/ad/2019_11_17/98675ee4dbd86ca066dc70772cc3ca76==582x496.jpg', '格局决定未来', '', 17, 1552320000, 1, 'zh-CN', 1552398117, 1574003316),
(31, 7, 1, '0,1,', '亚桥高空作业车租赁', 'image', 'cms-images/ad/2019_11_17/e622b4ba5fb8fe3c91eacb222bde4613==582x496.jpg', '亚桥高空作业车租赁', '', 18, 1552320000, 1, 'zh-CN', 1552398132, 1574001075),
(34, 2, 1, '0,1,', '全自动升降平台', 'image', 'cms-images/ad/2019_11_17/f853c48a060f8eebe2eacca6be554098==860x370.jpg', '全自动升降平台', '', 50, 1570291200, 1, 'zh-CN', 1570358723, 1574000107),
(35, 2, 1, '0,1,', '高空租赁，升降平台出租', 'image', 'cms-images/ad/2019_11_17/2e3c307f5ad884501255698527d57433==860x370.jpg', '高空租赁，升降平台出租', '', 500, 1574000156, 1, 'zh-CN', 1574000156, 1574000156),
(36, 2, 1, '0,1,', '亚桥高空作业设备租赁', 'image', 'cms-images/ad/2019_11_17/91adb541498172d3d7853150d60e629f==860x370.jpg', '亚桥高空作业设备租赁', '', 300, 1574000497, 1, 'zh-CN', 1574000497, 1574000497);

-- --------------------------------------------------------

--
-- Table structure for table `ss_ext_ad_type`
--

CREATE TABLE `ss_ext_ad_type` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '广告位id',
  `parentid` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '上级id',
  `parentstr` varchar(50) NOT NULL DEFAULT '' COMMENT '上级id字符串',
  `typename` varchar(30) NOT NULL DEFAULT '' COMMENT '广告位名称',
  `width` smallint(5) UNSIGNED NOT NULL DEFAULT '100' COMMENT '广告位宽度',
  `height` smallint(5) UNSIGNED NOT NULL DEFAULT '100' COMMENT '广告位高度',
  `orderid` int(11) UNSIGNED NOT NULL DEFAULT '10' COMMENT '排列顺序',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '审核状态',
  `lang` varchar(8) NOT NULL DEFAULT '' COMMENT '多语言',
  `created_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '添加时间',
  `updated_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '编辑时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='广告组表';

--
-- Dumping data for table `ss_ext_ad_type`
--

INSERT INTO `ss_ext_ad_type` (`id`, `parentid`, `parentstr`, `typename`, `width`, `height`, `orderid`, `status`, `lang`, `created_at`, `updated_at`) VALUES
(1, 0, '0,', '租赁业务广告位', 0, 0, 10, 1, 'zh-CN', 1546778656, 1570631839),
(2, 1, '0,1,', '首页：主幻灯广告', 860, 370, 200, 1, 'zh-CN', 1546778662, 1570632027),
(3, 1, '0,1,', '首页：重要合作客户', 180, 55, 160, 1, 'zh-CN', 1551845951, 1570632027),
(4, 1, '0,1,', '首页：客户好评', 468, 312, 170, 1, 'zh-CN', 1551846499, 1571671866),
(7, 1, '0,1,', '登录/注册页广告位', 582, 496, 150, 1, 'zh-CN', 1552398083, 1570632026);

-- --------------------------------------------------------

--
-- Table structure for table `ss_ext_job`
--

CREATE TABLE `ss_ext_job` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '招聘信息id',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '位岗名称',
  `jobplace` varchar(80) NOT NULL DEFAULT '' COMMENT '工作地点',
  `jobdescription` varchar(50) NOT NULL DEFAULT '' COMMENT '工作性质',
  `employ` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT '招聘人数',
  `jobsex` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '性别要求，1为男',
  `treatment` varchar(50) NOT NULL DEFAULT '' COMMENT '工资待遇',
  `usefullife` varchar(50) NOT NULL DEFAULT '' COMMENT '有效期',
  `experience` varchar(50) NOT NULL DEFAULT '' COMMENT '工作经验',
  `education` varchar(80) NOT NULL DEFAULT '' COMMENT '学历要求',
  `joblang` varchar(50) NOT NULL DEFAULT '' COMMENT '言语能力',
  `workdesc` mediumtext COMMENT '职位描述',
  `content` mediumtext COMMENT '职位要求',
  `orderid` mediumint(8) UNSIGNED NOT NULL DEFAULT '10' COMMENT '排列排序',
  `posttime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '审核状态',
  `lang` varchar(8) NOT NULL DEFAULT '' COMMENT '多语言',
  `created_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '添加时间',
  `updated_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '编辑时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='招聘管理表';

--
-- Dumping data for table `ss_ext_job`
--

INSERT INTO `ss_ext_job` (`id`, `title`, `jobplace`, `jobdescription`, `employ`, `jobsex`, `treatment`, `usefullife`, `experience`, `education`, `joblang`, `workdesc`, `content`, `orderid`, `posttime`, `status`, `lang`, `created_at`, `updated_at`) VALUES
(1, '高空车司机，B2驾照司机', '武汉（需要出差）', '', 3, 1, '工资面议', '', '2年', '', '', '<p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 0px; box-sizing: border-box; font-size: 14px; color: rgb(68, 68, 68); line-height: 26px; font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; background-color: rgb(255, 255, 255);\"><span style=\"font-family: sans-serif;\">1、根据客户的要求，把车按时按点地开到指定的位置；</span><br/></p><p><span style=\"font-size: 14px;\">2、规范操作升降斗篮，打支腿垫稳支腿，保证高空斗篮上的操作人员的安全；</span></p><p><span style=\"font-size: 14px;\">3、车子日常的卫生、维修保养、年检；</span></p>', '<p><span style=\"font-size: 14px;\">1、B2司机，已婚男性，年龄在23-50岁中间，为人正直诚信，勤奋好学，积极向上；</span></p><p><span style=\"font-size: 14px;\">2、有开过大车经验者优先考虑，胆大心细，有强烈的团队意识；</span></p><p><span style=\"font-size: 14px;\">3、善于沟通交流者优先；</span></p>', 100, 1551888000, 1, 'zh-CN', 1551963757, 1573921978),
(5, '客服专员', '', '', 2, 1, '', '', '', '', '', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; box-sizing: border-box; font-size: 14px; color: rgb(68, 68, 68); line-height: 26px; font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">1、学习公司业务体系，为客户提供专业的服务，对于客户遇到的问题给出专业的回复；</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; box-sizing: border-box; font-size: 14px; color: rgb(68, 68, 68); line-height: 26px; font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">2、独立推进完成自己遇到的问题；</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; box-sizing: border-box; font-size: 14px; color: rgb(68, 68, 68); line-height: 26px; font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">3、回访已完成服务的用户，确认满意度；</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; box-sizing: border-box; font-size: 14px; color: rgb(68, 68, 68); line-height: 26px; font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">4、维护老客户，提高复购率；</p>', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; box-sizing: border-box; font-size: 14px; color: rgb(68, 68, 68); line-height: 26px; font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">1、20-35岁，高中及以上学历，热爱客服岗位；</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; box-sizing: border-box; font-size: 14px; color: rgb(68, 68, 68); line-height: 26px; font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">2、有丰富的客服和电话销售经验优先，勤奋敬业、责任心强，思路清晰；</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; box-sizing: border-box; font-size: 14px; color: rgb(68, 68, 68); line-height: 26px; font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">3、普通话标准，懂得消费者心理，语言表达能力强，擅于沟通，有团队合作精神；</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; box-sizing: border-box; font-size: 14px; color: rgb(68, 68, 68); line-height: 26px; font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">4、电脑使用熟练，打字速度每分钟60字以上，熟悉办公软件；</p>', 50, 1551888000, 1, 'zh-CN', 1551963865, 1573921961),
(6, '客户中心专员', '', '', 2, 1, '', '', '', '', '', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; box-sizing: border-box; font-size: 14px; color: rgb(68, 68, 68); line-height: 26px; font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">1、处理客户（个人和企业）发起的需求，及时跟进<span style=\"color: rgb(68, 68, 68); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">客户</span>，协调服务团队共同完成签约；</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; box-sizing: border-box; font-size: 14px; color: rgb(68, 68, 68); line-height: 26px; font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">2、根据签约<span style=\"color: rgb(68, 68, 68); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">客户</span>的需求，协调服务团队为<span style=\"color: rgb(68, 68, 68); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">客户</span>进行服务；</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; box-sizing: border-box; font-size: 14px; color: rgb(68, 68, 68); line-height: 26px; font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">3、定期回访<span style=\"color: rgb(68, 68, 68); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(68, 68, 68); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">客户</span></span>，了解<span style=\"color: rgb(68, 68, 68); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">客户</span>体验，及时处理<span style=\"color: rgb(68, 68, 68); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">客户</span>反馈，以改进服务体验；</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; box-sizing: border-box; font-size: 14px; color: rgb(68, 68, 68); line-height: 26px; font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">4、遵从公司相关制度和标准流程，达成每日业绩指标KPI，完成设定的各种目标；</p>', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; box-sizing: border-box; font-size: 14px; color: rgb(68, 68, 68); line-height: 26px; font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">1、高中及以上学历，具备良好的职业素质；</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; box-sizing: border-box; font-size: 14px; color: rgb(68, 68, 68); line-height: 26px; font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">2、具备2年左右销售及客户服务经验，有良好的销售能力和客户维护能力；</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; box-sizing: border-box; font-size: 14px; color: rgb(68, 68, 68); line-height: 26px; font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">3、良好的沟通能力、抗压力，愿意接受挑战；</p>', 45, 1551888000, 1, 'zh-CN', 1551963892, 1573922068);

-- --------------------------------------------------------

--
-- Table structure for table `ss_ext_link`
--

CREATE TABLE `ss_ext_link` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '友情链接id',
  `link_type_id` int(11) UNSIGNED DEFAULT NULL COMMENT '所属类别id',
  `parentid` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '所属类别父id',
  `parentstr` varchar(80) NOT NULL DEFAULT '' COMMENT '所属类别父id字符串',
  `webname` varchar(30) NOT NULL DEFAULT '' COMMENT '网站名称',
  `webnote` varchar(200) NOT NULL DEFAULT '' COMMENT '网站描述',
  `picurl` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图片',
  `linkurl` varchar(255) NOT NULL DEFAULT '' COMMENT '跳转链接',
  `orderid` int(11) UNSIGNED NOT NULL DEFAULT '10' COMMENT '排列排序',
  `posttime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '审核状态',
  `lang` varchar(8) NOT NULL DEFAULT '' COMMENT '多语言',
  `created_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '添加时间',
  `updated_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '编辑时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='友情链接表';

--
-- Dumping data for table `ss_ext_link`
--

INSERT INTO `ss_ext_link` (`id`, `link_type_id`, `parentid`, `parentstr`, `webname`, `webnote`, `picurl`, `linkurl`, `orderid`, `posttime`, `status`, `lang`, `created_at`, `updated_at`) VALUES
(9, 1, 0, '0,', '法律申明', '', '', '/info/fa-lu-shen-ming.html', 9, 1546704000, 1, 'zh-CN', 1546774656, 1570718736),
(10, 1, 0, '0,', '人才招募', '', '', '/jobs.html', 8, 1546704000, 1, 'zh-CN', 1546775605, 1573054377),
(11, 1, 0, '0,', '企业文化', '', '', '/info/qi-ye-wen-hua.html', 12, 1546704000, 1, 'zh-CN', 1546775628, 1572177772),
(12, 1, 0, '0,', '在线反馈', '', '', '', 7, 1546704000, 1, 'zh-CN', 1546775640, 1572177792),
(14, 1, 0, '0,', '常见问题', '', '', '/faqs.html', 5, 1546704000, 1, 'zh-CN', 1546775661, 1573054408),
(15, 1, 0, '0,', '隐私协议', '', '', '/info/yin-si-xie-yi.html', 10, 1546704000, 1, 'zh-CN', 1546775670, 1570718622),
(16, 1, 0, '0,', '车型识别', '', '', '/chexing.html', 2, 1546704000, 1, 'zh-CN', 1546775678, 1547360347),
(17, 1, 0, '0,', '查询黄历', '', '', 'calendar.html', 10, 1575384489, 1, 'zh-CN', 1575384489, 1575384750);

-- --------------------------------------------------------

--
-- Table structure for table `ss_ext_link_type`
--

CREATE TABLE `ss_ext_link_type` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '友情链接类型id',
  `parentid` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '类别父id',
  `parentstr` varchar(50) NOT NULL DEFAULT '' COMMENT '类别父id字符串',
  `typename` varchar(30) NOT NULL DEFAULT '' COMMENT '类别名称',
  `orderid` int(11) UNSIGNED NOT NULL DEFAULT '10' COMMENT '排列顺序',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '审核状态',
  `lang` varchar(8) NOT NULL DEFAULT '' COMMENT '多语言',
  `created_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '添加时间',
  `updated_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '编辑时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='友情链接组表';

--
-- Dumping data for table `ss_ext_link_type`
--

INSERT INTO `ss_ext_link_type` (`id`, `parentid`, `parentstr`, `typename`, `orderid`, `status`, `lang`, `created_at`, `updated_at`) VALUES
(1, 0, '0,', '了解我们', 10, 1, 'zh-CN', 1546774601, 1570624875);

-- --------------------------------------------------------

--
-- Table structure for table `ss_ext_nav`
--

CREATE TABLE `ss_ext_nav` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '导航id',
  `parentid` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '导航分类',
  `parentstr` varchar(80) NOT NULL DEFAULT '' COMMENT '导航分类父id字符串',
  `menuname` varchar(30) NOT NULL DEFAULT '' COMMENT '导航名称',
  `linkurl` varchar(255) NOT NULL DEFAULT '' COMMENT '跳转链接',
  `picurl` varchar(100) NOT NULL DEFAULT '' COMMENT '导航图片',
  `target` varchar(30) NOT NULL DEFAULT '' COMMENT '打开方式',
  `orderid` int(11) UNSIGNED NOT NULL DEFAULT '10' COMMENT '排列排序',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '导航状态',
  `lang` varchar(8) NOT NULL DEFAULT '' COMMENT '多语言',
  `created_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '添加时间',
  `updated_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '编辑时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单表';

--
-- Dumping data for table `ss_ext_nav`
--

INSERT INTO `ss_ext_nav` (`id`, `parentid`, `parentstr`, `menuname`, `linkurl`, `picurl`, `target`, `orderid`, `status`, `lang`, `created_at`, `updated_at`) VALUES
(41, 0, '0,', 'PC网站主菜单', '#', '', '', 70, 1, 'zh-CN', 1545467804, 1576423369),
(43, 41, '0,41,', '业务范围', '/service.html', 'cms-images/nav/2018_12_30/af8b8103b1ac43abaaf092052d6efc0b.gif', '', 90, 1, 'zh-CN', 1545643172, 1572185238),
(45, 41, '0,41,', '案例展示', '/case.html', '', '', 70, 1, 'zh-CN', 1545643259, 1545643352),
(46, 41, '0,41,', '资讯中心', '/news.html', '', '', 60, 1, 'zh-CN', 1545643273, 1572184614),
(47, 46, '0,41,46,', '公司新闻', '/company.html', 'cms-images/nav/2019_03_24/7669f97702ed7e1c452dc9558d165687==180x180.png', '', 40, 1, 'zh-CN', 1545643287, 1572178062),
(48, 46, '0,41,46,', '行业动态', '/news.html', 'cms-images/nav/2019_03_24/458448910767bad41baf3a62c3438c6d==180x180.png', '', 50, 1, 'zh-CN', 1545643295, 1553438539),
(50, 43, '0,41,43,', '市政工程', '/service/shi-zheng-gong-cheng.html', 'cms-images/nav/2019_10_10/519617870c07104553b546547b804035==1030x581.jpeg', '', 50, 1, 'zh-CN', 1545647034, 1570720559),
(51, 43, '0,41,43,', '广告安装', '/service/guang-gao-an-zhuang.html', 'cms-images/nav/2019_10_10/b803b83c3073db16b7df6ec5b32e0552==300x320.png', '', 45, 1, 'zh-CN', 1545647044, 1570720551),
(52, 43, '0,41,43,', '楼宇清理', '/service/lou-yu-qing-jie.html', 'cms-images/nav/2019_10_10/5c43319a9c8920892691985351948dbe==300x225.png', '', 40, 1, 'zh-CN', 1545647051, 1570720629),
(53, 43, '0,41,43,', '钢结构安装', '/service/gang-jie-gou-an-zhuang.html', 'cms-images/nav/2019_10_10/00970781d0f64de6ee078224c9f5894e==385x306.png', '', 35, 1, 'zh-CN', 1545647065, 1570720525),
(54, 43, '0,41,43,', '桥梁维护与建设', '/service/qiao-liang-wei-hu.html', 'cms-images/nav/2019_10_10/5812fb36ac3a7bf8122f22beb7151142==1030x709.jpg', '', 30, 1, 'zh-CN', 1545647072, 1570720516),
(55, 43, '0,41,43,', '机场检修', '/service/ji-chang-jian-xiu.html', 'cms-images/nav/2019_10_10/bc6ae7451367a1656491b4f07050f2de==385x306.png', '', 25, 1, 'zh-CN', 1545647078, 1570720506),
(59, 46, '0,41,46,', '常见问答', '/faqs.html', 'cms-images/nav/2019_03_27/59dc383a450102e01eef2c283fdff655==180x180.png', '', 30, 1, 'zh-CN', 1546168728, 1553688080),
(60, 0, '0,', 'PC网站底部菜单', '#', '', '', 60, 1, 'zh-CN', 1546772769, 1576423370),
(61, 60, '0,60,', '首页', '/', '', '', 100, 1, 'zh-CN', 1546772804, 1576398733),
(62, 60, '0,60,', '关于亚桥', '/info/guan-yu-ya-qiao-zu-lin.html', '', '', 90, 1, 'zh-CN', 1546772821, 1570719272),
(64, 60, '0,60,', '人才招聘', '/jobs.html', '', '', 70, 1, 'zh-CN', 1546772846, 1570625526),
(65, 60, '0,60,', '联系我们', '/info/lian-xi-wo-men.html', '', '', 60, 1, 'zh-CN', 1546772862, 1546772956),
(66, 60, '0,60,', '企业对接', '/info/qi-ye-dui-jie.html', '', '', 50, 1, 'zh-CN', 1546772873, 1570719354),
(67, 60, '0,60,', '帮助中心', '/help.html', '', '_blank', 40, 1, 'zh-CN', 1546772887, 1572182065),
(68, 60, '0,60,', '在线客服', '#', '', '', 30, 1, 'zh-CN', 1546772895, 1546772956),
(69, 60, '0,60,', '手机版访问', 'http://m.hbyaqiao.com?t=pc', '', '_blank', 20, 1, 'zh-CN', 1546772918, 1573904068),
(71, 41, '0,41,', '关于我们', '/info/guan-yu-ya-qiao-zu-lin.html', '', '', 10, 1, 'zh-CN', 1551672243, 1573057802),
(73, 43, '0,41,43,', '场馆建设', '/service/chang-guan-jian-she.html', 'cms-images/nav/2019_10_10/84d80f73f37c5fd96f8fa46f08223c78==1030x773.jpg', '', 121, 1, 'zh-CN', 1553156972, 1570720567),
(74, 43, '0,41,43,', '电子厂房', '/service/dian-zi-chang-fang.html', 'cms-images/nav/2019_10_10/b44363c019ec7fb2c7abbb047a063f31==355x255.png', '', 122, 1, 'zh-CN', 1553157034, 1570720576),
(75, 41, '0,41,', '车型介绍', '/chexing.html', '', '', 28, 1, 'zh-CN', 1570718892, 1573054451),
(76, 41, '0,41,', '企业对接', '/info/qi-ye-dui-jie.html', '', '', 20, 1, 'zh-CN', 1570719416, 1573054451),
(77, 43, '0,41,43,', '更多业务', '/service.html', 'cms-images/nav/2019_10_10/e69c9902fe648e637288233f6c9cbb3e==180x180.png', '', 20, 1, 'zh-CN', 1570721056, 1573057645),
(78, 41, '0,41,', '人才招募', '/jobs.html', '', '', 15, 1, 'zh-CN', 1573054815, 1573054840),
(79, 71, '0,41,71,', '关于亚桥', '/info/guan-yu-ya-qiao-zu-lin.html', 'cms-images/nav/2019_11_14/94baee7d647a6b92af8b70303067a06b==314x180.jpg', '', 100, 1, 'zh-CN', 1573055066, 1573742478),
(80, 71, '0,41,71,', '企业历程', '/info/qi-ye-li-cheng.html', 'cms-images/nav/2019_11_14/ecfd1542b99c30b24a3a1c613947df09==474x270.jpg', '', 90, 0, 'zh-CN', 1573055104, 1574170962),
(81, 71, '0,41,71,', '公司荣誉', '/info/gong-si-rong-yu.html', 'cms-images/nav/2019_11_14/4d1a72c22f965ba4ce42d9b072e508aa==314x180.jpg', '', 70, 1, 'zh-CN', 1573055113, 1573742544),
(82, 71, '0,41,71,', '企业文化', '/info/qi-ye-wen-hua.html', 'cms-images/nav/2019_11_14/b887e1a04b9be1c32304f8bbf322e1a7==314x180.jpg', '', 80, 1, 'zh-CN', 1573055124, 1573741991),
(84, 71, '0,41,71,', '联系我们', '/info/lian-xi-wo-men.html', 'cms-images/nav/2019_11_14/bc7f8063627e09333df5931bd35bc3ab==527x320.jpg', '', 50, 1, 'zh-CN', 1573055144, 1573742194),
(85, 0, '0,', 'PC网站关于我们导航', '#', '', '', 50, 1, 'zh-CN', 1573227930, 1576423370),
(86, 85, '0,85,', '关于亚桥', '/info/guan-yu-ya-qiao-zu-lin.html', '', '', 200, 1, 'zh-CN', 1573227982, 1573228094),
(87, 85, '0,85,', '企业历程', '/info/qi-ye-li-cheng.html', '', '', 190, 0, 'zh-CN', 1573228001, 1574170977),
(88, 85, '0,85,', '企业文化', '/info/qi-ye-wen-hua.html', '', '', 180, 1, 'zh-CN', 1573228011, 1573228094),
(89, 85, '0,85,', '公司荣誉', '/info/gong-si-rong-yu.html', '', '', 170, 1, 'zh-CN', 1573228021, 1573228094),
(90, 85, '0,85,', '联系我们', '/info/lian-xi-wo-men.html', '', '', 160, 1, 'zh-CN', 1573228030, 1573228094),
(91, 85, '0,85,', '人才招募', '/jobs.html', '', '', 165, 1, 'zh-CN', 1573228575, 1573228575),
(92, 85, '0,85,', '企业对接', '/info/qi-ye-dui-jie.html', '', '', 163, 1, 'zh-CN', 1573228752, 1573228752),
(93, 0, '0,', '移动端主菜单', '#', '', '', 40, 1, 'zh-CN', 1576393759, 1576423369),
(95, 93, '0,93,', '车型展示', '/chexing.html', 'cms-images/nav/2019_12_15/be618509255d67530870f4b3772d3d8c==47x47.png', '', 90, 1, 'zh-CN', 1576393906, 1576948473),
(96, 93, '0,93,', '现场案例', '/case.html', 'cms-images/nav/2019_12_15/8eb4cfe6649f9e5ce2a9e67594573c4d==38x47.png', '', 105, 1, 'zh-CN', 1576393939, 1576948473),
(97, 93, '0,93,', '行业动态', '/news.html', 'cms-images/nav/2019_12_15/9434d9543cfa6fda5ab2d1d432057a2a==45x47.png', '', 80, 1, 'zh-CN', 1576393988, 1576394482),
(98, 93, '0,93,', '常见问答', '/faqs.html', 'cms-images/nav/2019_12_15/e1f7fbb9ebbd3a5f81742c4061bef291==48x47.png', '', 70, 1, 'zh-CN', 1576394021, 1576394482),
(99, 93, '0,93,', '关于我们', '/info/guan-yu-ya-qiao-zu-lin.html', 'cms-images/nav/2019_12_15/67f8d56faa300671601080d54a230a40==59x47.png', '', 60, 1, 'zh-CN', 1576394070, 1576394482),
(100, 93, '0,93,', '人才招募', '/jobs.html', 'cms-images/nav/2019_12_15/f33e072cc4d8cc3fee97e67b56723dea==49x47.png', '', 50, 1, 'zh-CN', 1576394150, 1576394482),
(101, 93, '0,93,', '企业对接', '/info/qi-ye-dui-jie.html', 'cms-images/nav/2019_12_15/5869124eeaee9304b589d421548447b7==47x47.png', '', 40, 1, 'zh-CN', 1576394227, 1576394482),
(102, 93, '0,93,', '企业文化', '/info/qi-ye-wen-hua.html', 'cms-images/nav/2019_12_15/599d6ea90c443d39ea0397f3cd8c87fa==48x47.png', '', 30, 1, 'zh-CN', 1576394264, 1576394482),
(103, 93, '0,93,', '公司荣誉', '/info/gong-si-rong-yu.html', 'cms-images/nav/2019_12_15/599d6ea90c443d39ea0397f3cd8c87fa==48x47.png', '', 20, 1, 'zh-CN', 1576394382, 1576394482),
(104, 93, '0,93,', '联系我们', '/info/lian-xi-wo-men.html', 'cms-images/nav/2019_12_15/599d6ea90c443d39ea0397f3cd8c87fa==48x47.png', '', 10, 1, 'zh-CN', 1576394411, 1576394482),
(105, 93, '0,93,', '业务范围', '/service.html', 'cms-images/nav/2019_12_15/be618509255d67530870f4b3772d3d8c==47x47.png', '', 100, 1, 'zh-CN', 1576395271, 1576948473),
(106, 0, '0,', '移动关于我们导航', '#', '', '', 20, 1, 'zh-CN', 1576397418, 1576423369),
(107, 0, '0,', '移动底部导航', '#', '', '', 30, 1, 'zh-CN', 1576397433, 1576423369),
(108, 107, '0,107,', '首页', '/', '', '', 50, 1, 'zh-CN', 1576398756, 1576398854),
(109, 107, '0,107,', '关于亚桥', '/info/guan-yu-ya-qiao-zu-lin.html', '', '', 40, 1, 'zh-CN', 1576398780, 1576398854),
(110, 107, '0,107,', '人才招聘', '/jobs.html', '', '', 30, 1, 'zh-CN', 1576398803, 1576398854),
(111, 107, '0,107,', '联系我们', '/info/lian-xi-wo-men.html', '', '', 20, 1, 'zh-CN', 1576398821, 1576398853),
(112, 106, '0,106,', '关于亚桥', '/info/guan-yu-ya-qiao-zu-lin.html', '', '', 204, 1, 'zh-CN', 1576401124, 1576401124),
(113, 106, '0,106,', '企业文化', '/info/qi-ye-wen-hua.html', '', '', 204, 1, 'zh-CN', 1576401142, 1576401142),
(114, 106, '0,106,', '企业对接', '/info/qi-ye-dui-jie.html', '', '', 204, 1, 'zh-CN', 1576401158, 1576401158),
(115, 106, '0,106,', '联系我们', '/info/lian-xi-wo-men.html', '', '', 204, 1, 'zh-CN', 1576401171, 1576401171),
(116, 93, '0,93,', '首页', '/', 'cms-images/nav/2019_12_19/e6d2ef8c2d8d58a2fc1330ae17304126==50x50.png', '', 205, 1, 'zh-CN', 1576762581, 1576763403);

-- --------------------------------------------------------

--
-- Table structure for table `ss_ext_vote`
--

CREATE TABLE `ss_ext_vote` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '投票id',
  `title` varchar(30) NOT NULL DEFAULT '' COMMENT '投票标题',
  `content` text COMMENT '投票描述',
  `starttime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '开始时间',
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '结束时间',
  `isguest` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '游客投票',
  `isview` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '查看投票',
  `intval` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '投票间隔',
  `isradio` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '是否多选',
  `orderid` int(11) UNSIGNED NOT NULL DEFAULT '10' COMMENT '排列排序',
  `posttime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '审核状态',
  `lang` varchar(8) NOT NULL DEFAULT '' COMMENT '多语言',
  `created_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '添加时间',
  `updated_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '编辑时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='投票表';

--
-- Dumping data for table `ss_ext_vote`
--

INSERT INTO `ss_ext_vote` (`id`, `title`, `content`, `starttime`, `endtime`, `isguest`, `isview`, `intval`, `isradio`, `orderid`, `posttime`, `status`, `lang`, `created_at`, `updated_at`) VALUES
(1, '您是从哪得知本站的？', '<p>茫茫网海，您的来访让我们深感高兴。</p>', 1553788800, 1553788800, 1, 1, 60, 2, 1, 1326816000, 1, 'zh-CN', 0, 1553859068),
(4, '你平时最喜欢做的事情是什么？', '', 1553788800, 1553788800, 1, 1, 0, 1, 2, 1532793600, 1, 'zh-CN', 1532867171, 1553859062),
(7, '测试投票，001', '<p>测试投票，001</p>', 1538323200, 1538409600, 1, 1, 0, 1, 40, 1538496000, 1, 'zh-CN', 1533058361, 1568213157);

-- --------------------------------------------------------

--
-- Table structure for table `ss_ext_vote_data`
--

CREATE TABLE `ss_ext_vote_data` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '投票数据id',
  `voteid` int(11) UNSIGNED DEFAULT NULL COMMENT '投票id',
  `optionid` text COMMENT '选票id',
  `memberid` int(11) UNSIGNED DEFAULT NULL COMMENT '投票人id',
  `posttime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '投票时间',
  `ip` varchar(30) NOT NULL DEFAULT '' COMMENT '投票ip'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='投票数据表';

-- --------------------------------------------------------

--
-- Table structure for table `ss_ext_vote_option`
--

CREATE TABLE `ss_ext_vote_option` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '投票选项id',
  `voteid` int(11) UNSIGNED DEFAULT NULL COMMENT '投票id',
  `options` varchar(30) NOT NULL DEFAULT '' COMMENT '投票选项'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='投票选项表';

--
-- Dumping data for table `ss_ext_vote_option`
--

INSERT INTO `ss_ext_vote_option` (`id`, `voteid`, `options`) VALUES
(1, 1, '88888'),
(24, 4, '');

-- --------------------------------------------------------

--
-- Table structure for table `ss_like`
--

CREATE TABLE `ss_like` (
  `id` int(11) UNSIGNED NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'UP' COMMENT '同意：UP，不同意：DOWN，收藏/关注：FOLLOW',
  `user_id` int(11) UNSIGNED DEFAULT NULL COMMENT '用户id，如果有的话',
  `model` varchar(50) NOT NULL COMMENT '必填，模型的全路径类',
  `model_id` int(11) UNSIGNED NOT NULL COMMENT '模型对应的id',
  `md5` varchar(32) NOT NULL DEFAULT '' COMMENT '唯一控制标记',
  `lang` varchar(8) NOT NULL DEFAULT '' COMMENT '多语言',
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户行为表';

--
-- Dumping data for table `ss_like`
--

INSERT INTO `ss_like` (`id`, `type`, `user_id`, `model`, `model_id`, `md5`, `lang`, `created_at`) VALUES
(98, 'UP', NULL, 'common\\models\\cms\\Photo', 78, '205a6fbeb575357ac70fa002cefcb04e', 'zh-CN', 1575099043),
(99, 'DOWN', NULL, 'common\\models\\cms\\Photo', 78, '80d1dcd3219f9991ea23619de4a68ec1', 'zh-CN', 1575099045),
(100, 'UP', NULL, 'common\\models\\cms\\Photo', 89, 'cfc1d53180eb1c95ce85692f98312f99', 'zh-CN', 1575103357),
(101, 'UP', NULL, 'common\\models\\cms\\Photo', 93, '3cc5987f8b23e5e7b4e1ac745eeff321', 'zh-CN', 1575104437),
(102, 'DOWN', NULL, 'common\\models\\cms\\Photo', 90, 'b7bfeee33875c152584d6e88cd7475f0', 'zh-CN', 1575104479),
(103, 'UP', NULL, 'common\\models\\cms\\Photo', 79, 'dfb50996d91cdc91c70407a4a65f9858', 'zh-CN', 1575106557),
(104, 'UP', NULL, 'common\\models\\cms\\Photo', 78, 'fdaa21f6e3325b5dbf76abdfc354a52d', 'zh-CN', 1575106596),
(105, 'UP', NULL, 'common\\models\\cms\\Photo', 77, '2c9f891de4e3e1ba5b5cd4a9bd10c9a8', 'zh-CN', 1575106608),
(106, 'DOWN', NULL, 'common\\models\\cms\\Photo', 77, 'ab8ab7da0f9bcd7692d8c68a52cba583', 'zh-CN', 1575106610),
(107, 'UP', NULL, 'common\\models\\cms\\Photo', 76, '44abe103518bc10d101dc9c140d5049f', 'zh-CN', 1575106684),
(108, 'UP', NULL, 'common\\models\\cms\\Photo', 75, '896c566dc070bbc999604f9e19b0a5a4', 'zh-CN', 1575106786),
(109, 'UP', NULL, 'common\\models\\cms\\Photo', 90, '1e950e3e79bf68c32d2b3cab031fc19c', 'zh-CN', 1575172890),
(110, 'UP', NULL, 'common\\models\\cms\\Article', 45, '6377dca7ad197f2dae92e66dff29213b', 'zh-CN', 1575212313),
(111, 'UP', NULL, 'common\\models\\cms\\Article', 44, '306843952f00abf88eef7df45a4d9b74', 'zh-CN', 1575212317),
(112, 'UP', NULL, 'common\\models\\cms\\Article', 39, '463b2fd88c9d7a6ac42f87a392a2cb7f', 'zh-CN', 1575212322),
(113, 'UP', NULL, 'common\\models\\cms\\Article', 43, '70c2e5b3a31434fbee2afee4cf5ccb64', 'zh-CN', 1575212325),
(114, 'UP', NULL, 'common\\models\\cms\\Article', 42, 'c8e8de3ad67d6a4837951edbc2e2546a', 'zh-CN', 1575212328),
(115, 'UP', NULL, 'common\\models\\cms\\Article', 41, 'ed2a64e1a56e7c6c282ea5c686106dab', 'zh-CN', 1575212331),
(116, 'UP', NULL, 'common\\models\\cms\\Article', 38, '17361760a949f0fa366b846e17c463e8', 'zh-CN', 1575212336),
(117, 'UP', NULL, 'common\\models\\cms\\Article', 37, 'cb216f137d521904d1ea0e78c36dea29', 'zh-CN', 1575212340),
(118, 'UP', NULL, 'common\\models\\cms\\Article', 36, 'd098b8b80300d776c4175cc53c2d1e11', 'zh-CN', 1575212342),
(119, 'UP', NULL, 'common\\models\\cms\\Article', 50, '3d4889e9e477ae8af6b6237d02074632', 'zh-CN', 1575379042),
(120, 'UP', NULL, 'common\\models\\cms\\Article', 44, 'daee36d936b1e5656e26fdb654836569', 'zh-CN', 1575380067),
(121, 'UP', NULL, 'common\\models\\cms\\Photo', 76, '951689230ff670c1b778cdd46b201cb7', 'zh-CN', 1575619478),
(122, 'UP', NULL, 'common\\models\\cms\\Photo', 77, '95358f5168dd9c775a7c3fa26ee95bc1', 'zh-CN', 1575619504),
(123, 'UP', NULL, 'common\\models\\cms\\Photo', 75, '012d126391423b26e8b611e1aa395464', 'zh-CN', 1575619542),
(124, 'UP', NULL, 'common\\models\\cms\\Photo', 78, '947d69bc6a6894410c5040e69915d523', 'zh-CN', 1575989793),
(125, 'UP', NULL, 'common\\models\\cms\\Article', 46, '7d50fedc47d0b6dd95ba07969c97059a', 'zh-CN', 1576592817),
(126, 'UP', NULL, 'common\\models\\cms\\Article', 43, '43f410f6ea148f5aac948a773de79c69', 'zh-CN', 1576592897),
(127, 'UP', NULL, 'common\\models\\cms\\Photo', 44, '486b1e004c556ca85699bf6a8027d1fb', 'zh-CN', 1576677978),
(128, 'UP', NULL, 'common\\models\\cms\\Photo', 42, '5f6f561232895b57270951b3d0a2e369', 'zh-CN', 1576678380),
(129, 'UP', NULL, 'common\\models\\cms\\Photo', 45, '98567f35b2686fb63d07841372a380de', 'zh-CN', 1576678620),
(130, 'UP', NULL, 'common\\models\\cms\\Photo', 91, '8ba5e9677cf70ffb786e9d7e75ba14d5', 'zh-CN', 1576680822),
(131, 'UP', NULL, 'common\\models\\cms\\Photo', 101, '51cf5afac027983fcf52f26c8e559319', 'zh-CN', 1576681063),
(132, 'UP', NULL, 'common\\models\\cms\\Photo', 95, 'd7d5c3ce716c2220cf1a3576f0244fb8', 'zh-CN', 1576761922),
(133, 'UP', NULL, 'common\\models\\cms\\Photo', 5, '11d212c3da0d79d6bc6143b8d29c1843', 'zh-CN', 1576905353),
(134, 'UP', NULL, 'common\\models\\cms\\Article', 35, '82ffaa1c2db6e609eb99f4172878bf4a', 'zh-CN', 1576947908),
(135, 'UP', NULL, 'common\\models\\cms\\Photo', 79, '9da7742beef56e932b1a12e8e76e3df7', 'zh-CN', 1576947918),
(136, 'UP', NULL, 'common\\models\\cms\\Article', 46, '54baaec580056d07943352e3c7b027f1', 'zh-CN', 1576978617),
(137, 'UP', NULL, 'common\\models\\cms\\Article', 42, '773879081d8944bf2581d47f26f1876f', 'zh-CN', 1576978712),
(138, 'UP', NULL, 'common\\models\\cms\\Article', 43, '5558dc4ceb57f6a9e06619f918bba40d', 'zh-CN', 1576979446),
(139, 'UP', NULL, 'common\\models\\cms\\Article', 41, 'd3dda33c5988440b5b8c399059816f92', 'zh-CN', 1576979460),
(140, 'UP', NULL, 'common\\models\\cms\\Article', 40, '779934267f62d5ce303b1ef332d821e9', 'zh-CN', 1576979468),
(141, 'UP', NULL, 'common\\models\\cms\\Article', 39, '6ebee1cbd19fc58036b3a65a87f4b4a1', 'zh-CN', 1576979473),
(142, 'UP', NULL, 'common\\models\\cms\\Article', 38, '9cdfd41f9257e2ecee105a47d369d4e8', 'zh-CN', 1576979480),
(143, 'UP', NULL, 'common\\models\\cms\\Article', 37, '3826b775365bbe51c6dec36df3f8c5ad', 'zh-CN', 1576979485),
(144, 'UP', NULL, 'common\\models\\cms\\Article', 36, 'f326b5c61f8f595da6ee9ff5e854dd34', 'zh-CN', 1576979493),
(145, 'UP', NULL, 'common\\models\\cms\\Article', 35, '834852457d7e94fe30ad20ccc3033d1b', 'zh-CN', 1576979497),
(146, 'UP', NULL, 'common\\models\\cms\\Article', 34, '9c9b55fbd92c2c61ac514a8b809be62a', 'zh-CN', 1576979506),
(147, 'UP', NULL, 'common\\models\\cms\\Photo', 44, 'db65eca1035512cea715e3bf94e3aaff', 'zh-CN', 1576979516),
(148, 'UP', NULL, 'common\\models\\cms\\Photo', 43, 'dcaec460766cb4b39e824b222c613791', 'zh-CN', 1576979525),
(149, 'UP', NULL, 'common\\models\\cms\\Photo', 42, '0505071a317c1147c63be08fe1294f37', 'zh-CN', 1576979538),
(150, 'UP', NULL, 'common\\models\\cms\\Photo', 41, 'b1b53ac56661d9775ace28a4bcf8fa8f', 'zh-CN', 1576979544),
(151, 'UP', NULL, 'common\\models\\cms\\Photo', 40, 'e3ac087f3a4effd17803a3cd99f2b37c', 'zh-CN', 1576979551),
(152, 'UP', NULL, 'common\\models\\cms\\Photo', 39, '1140781179e1ca04a9df6eb883314b3f', 'zh-CN', 1576979556),
(153, 'UP', NULL, 'common\\models\\cms\\Photo', 38, '06f87bc1e1e4a34330c4fdb60401ce29', 'zh-CN', 1576979561),
(154, 'UP', NULL, 'common\\models\\cms\\Photo', 37, 'df504b200af3ad06f486e59d59b1e52e', 'zh-CN', 1576979565),
(155, 'UP', NULL, 'common\\models\\cms\\Photo', 35, 'bdb1707271e4e8b0c5a0b7d04d6b8280', 'zh-CN', 1576979584),
(156, 'UP', NULL, 'common\\models\\cms\\Photo', 34, 'd96807ce3426847f1def455bcae2dd1f', 'zh-CN', 1576979589),
(157, 'UP', NULL, 'common\\models\\cms\\Photo', 33, '9a4b8559a29c8b39e3fe24dad222b949', 'zh-CN', 1576979593),
(158, 'UP', NULL, 'common\\models\\cms\\Photo', 5, '4061c30c3f0474ccc9762626b7c05394', 'zh-CN', 1576979600),
(159, 'UP', NULL, 'common\\models\\cms\\Photo', 94, 'dd095463a4fdc1d4ff542d55d35e124d', 'zh-CN', 1576980670),
(160, 'UP', NULL, 'common\\models\\cms\\Photo', 93, '9a3ad1ee2366c42701552ec48af684d5', 'zh-CN', 1576980675),
(161, 'UP', NULL, 'common\\models\\cms\\Photo', 92, '25c64fc5f9c1e32b04738d13a1ddb92e', 'zh-CN', 1576980679),
(162, 'UP', NULL, 'common\\models\\cms\\Photo', 91, 'cb85a162b9ead6bc191b762bc21354a6', 'zh-CN', 1576980684),
(163, 'UP', NULL, 'common\\models\\cms\\Photo', 90, '5add697553fc08d79ec3e6c3cd1549c7', 'zh-CN', 1576980688),
(164, 'UP', NULL, 'common\\models\\cms\\Photo', 89, '2e139f2b5f38d441cfc74acf4b55e793', 'zh-CN', 1576980691),
(165, 'UP', NULL, 'common\\models\\cms\\Photo', 93, '7ca7c41317cc0d7135c1a8fdb1117796', 'zh-CN', 1576980800),
(166, 'UP', NULL, 'common\\models\\cms\\Photo', 94, '24ce2d9d11fb80ea125c2ac70c87ce78', 'zh-CN', 1576980805),
(167, 'UP', NULL, 'common\\models\\cms\\Photo', 95, '0bf11b83fd6550493fd452ddf64b7a23', 'zh-CN', 1576980808),
(168, 'UP', NULL, 'common\\models\\cms\\Photo', 96, '59dd63d8376c5db77326f250abe4c2d2', 'zh-CN', 1576980811),
(169, 'UP', NULL, 'common\\models\\cms\\Photo', 91, 'd111199cc41236fb89d5d7bde47f8bbf', 'zh-CN', 1576983422),
(170, 'UP', NULL, 'common\\models\\cms\\Article', 52, '5600b3892382c11cb268964cf97935e9', 'zh-CN', 1576983574),
(171, 'UP', NULL, 'common\\models\\cms\\Article', 51, '02c142c10fc8eb2e95352c97d00020da', 'zh-CN', 1576983582),
(172, 'UP', NULL, 'common\\models\\cms\\Article', 50, 'd9963d6a4d2bed453653ea6929338703', 'zh-CN', 1576983589),
(173, 'UP', NULL, 'common\\models\\cms\\Article', 49, '650bb64293116a5197422facda36f537', 'zh-CN', 1576983593),
(174, 'UP', NULL, 'common\\models\\cms\\Article', 48, '3a1cb14a3988086537515dc4c3a51adf', 'zh-CN', 1576983597),
(175, 'UP', NULL, 'common\\models\\cms\\Article', 45, 'dad02467bbc218b39575c51f51d73735', 'zh-CN', 1576983601),
(176, 'UP', NULL, 'common\\models\\cms\\Article', 44, '44cda15c5d04c4e864a675b8805ef5dd', 'zh-CN', 1576983605),
(177, 'UP', NULL, 'common\\models\\cms\\Photo', 79, '67e031c17ba877eaecefb16ad0b41340', 'zh-CN', 1576984254),
(178, 'UP', NULL, 'common\\models\\cms\\Photo', 78, '443624de0dedc8ec584b9f768e443f7d', 'zh-CN', 1576984260),
(179, 'UP', NULL, 'common\\models\\cms\\Photo', 77, '9a4904ff8ef6e4a68416a5bebbe02ff1', 'zh-CN', 1576984263),
(180, 'UP', NULL, 'common\\models\\cms\\Photo', 76, '4fa4ec478eccd4c5114fa62c244b0145', 'zh-CN', 1576984266),
(181, 'UP', NULL, 'common\\models\\cms\\Photo', 75, '7a57ef0e1da3bf5c6b8ca9adef1d1bf9', 'zh-CN', 1576984272),
(182, 'UP', NULL, 'common\\models\\cms\\Photo', 52, '38fa9477c55845700b262aa9e1ad6afd', 'zh-CN', 1576984278),
(183, 'UP', NULL, 'common\\models\\cms\\Photo', 47, '2fb0701ba5e21d8776a09830abe36bb5', 'zh-CN', 1576984282),
(184, 'UP', NULL, 'common\\models\\cms\\Photo', 46, 'f2ed8305473928275b36c01b502227a9', 'zh-CN', 1576984286),
(185, 'UP', NULL, 'common\\models\\cms\\Photo', 45, '7995c5f35ebfa07f7e7307244eb10add', 'zh-CN', 1576984289),
(186, 'UP', NULL, 'common\\models\\cms\\Photo', 44, 'b925bed88239646a9f48d357a666c6e6', 'zh-CN', 1576984294),
(187, 'UP', NULL, 'common\\models\\cms\\Photo', 43, '63bd1ebe9afc752844838858e8cd83d6', 'zh-CN', 1576984296),
(188, 'UP', NULL, 'common\\models\\cms\\Photo', 42, '3f114bca3f45e9f7fc401941c7bae382', 'zh-CN', 1576984304),
(189, 'UP', NULL, 'common\\models\\cms\\Photo', 41, '315fe72205d85b52ce5f46cca70a1fe0', 'zh-CN', 1576984311),
(190, 'UP', NULL, 'common\\models\\cms\\Photo', 40, '6de18c07acec94070a859b3a047bdf39', 'zh-CN', 1576984318),
(191, 'UP', NULL, 'common\\models\\cms\\Photo', 39, '15865f550cd02f92209368340c6e0992', 'zh-CN', 1576984322),
(192, 'UP', NULL, 'common\\models\\cms\\Photo', 38, '6a15bf2a319cb2f94f7f56239c2286a6', 'zh-CN', 1576984327),
(193, 'UP', NULL, 'common\\models\\cms\\Photo', 37, 'cea84645aa5438ab6f914add2f8fcb4c', 'zh-CN', 1576984331),
(194, 'UP', NULL, 'common\\models\\cms\\Photo', 35, 'e8cf96ab6e5ff5bd0bc04a856c610947', 'zh-CN', 1576984339),
(195, 'UP', NULL, 'common\\models\\cms\\Photo', 34, 'ca8aa3a1df58a5c45e862526378b21de', 'zh-CN', 1576984343),
(196, 'UP', NULL, 'common\\models\\cms\\Photo', 33, 'd82c5a85df0f6fa9d210ee123e0af664', 'zh-CN', 1576984351),
(197, 'UP', NULL, 'common\\models\\cms\\Photo', 5, '6e3780b11584790ad880d90e360faf9a', 'zh-CN', 1576984357),
(198, 'UP', NULL, 'common\\models\\cms\\Photo', 34, 'e550d388b03e3ca9b7047a34546332e8', 'zh-CN', 1576986335),
(199, 'UP', NULL, 'common\\models\\cms\\Article', 46, 'd140f218345e7b929dbb11202753969a', 'zh-CN', 1576986601),
(200, 'UP', NULL, 'common\\models\\cms\\Article', 38, 'ce336c1057ae489b57ad1753a273ec03', 'zh-CN', 1576986658),
(201, 'UP', NULL, 'common\\models\\cms\\Article', 38, 'c466114e7c46db818dc27171c32f2211', 'zh-CN', 1576988746),
(202, 'UP', NULL, 'common\\models\\cms\\Photo', 81, '3f90fd19f4c034a909b38d2a189fe934', 'zh-CN', 1577010562),
(203, 'UP', NULL, 'common\\models\\cms\\Photo', 80, '901fef8193a0b13c14f40bd22309398a', 'zh-CN', 1577010575),
(204, 'UP', NULL, 'common\\models\\cms\\Photo', 79, '9cc2b23acb424539c883ea5066869c37', 'zh-CN', 1577010580),
(205, 'UP', NULL, 'common\\models\\cms\\Photo', 78, '3b0f11759510be80ed3a3138815db25a', 'zh-CN', 1577010583),
(206, 'UP', NULL, 'common\\models\\cms\\Photo', 77, '0a91046d53760262d314abf6c5214ee3', 'zh-CN', 1577010586),
(207, 'UP', NULL, 'common\\models\\cms\\Photo', 76, '5cb71235d3da3a23c40cda93e81a5467', 'zh-CN', 1577010601),
(208, 'UP', NULL, 'common\\models\\cms\\Photo', 75, '4afb76c775216e5e4072d4008a022199', 'zh-CN', 1577010609),
(209, 'UP', NULL, 'common\\models\\cms\\Photo', 52, 'f759b59c022f7e2dc5d5f01ac555847f', 'zh-CN', 1577010613),
(210, 'UP', NULL, 'common\\models\\cms\\Photo', 47, 'b70f09f175642dd360885007b15e4381', 'zh-CN', 1577010618),
(211, 'UP', NULL, 'common\\models\\cms\\Photo', 39, '994c98bfa97d7fc30cc5433fe968dd22', 'zh-CN', 1577022678),
(212, 'UP', NULL, 'common\\models\\cms\\Photo', 38, 'c0f3073e6672f06fdd21b94bfd0c353e', 'zh-CN', 1577071155),
(213, 'UP', NULL, 'common\\models\\cms\\Photo', 94, '105ff1535713691c214538e666b2d2b4', 'zh-CN', 1577762157),
(214, 'UP', NULL, 'common\\models\\cms\\Photo', 42, 'e0875727c0c9b5f535019f5afca924ee', 'zh-CN', 1577932243),
(215, 'UP', NULL, 'common\\models\\cms\\Photo', 82, '8b6ad70b317d8e523a8985b04322dcd1', 'zh-CN', 1577932267),
(216, 'UP', NULL, 'common\\models\\cms\\Photo', 44, '295a021ac2c78ac556781a44924836ba', 'zh-CN', 1578627570),
(217, 'UP', NULL, 'common\\models\\cms\\Photo', 44, 'ff30a2808fb4d1cec6828c578a0369e9', 'zh-CN', 1578627571),
(218, 'UP', NULL, 'common\\models\\cms\\Article', 38, '7f798dc415a2deab847a7a1199fb8ba1', 'zh-CN', 1579400909),
(219, 'UP', NULL, 'common\\models\\cms\\Article', 47, '6f97f1c7039083658cdfda49603d4690', 'zh-CN', 1579421359),
(220, 'UP', NULL, 'common\\models\\cms\\Photo', 33, '04ce739ce6342589c83c4fb1b6c71aa1', 'zh-CN', 1579507259);

-- --------------------------------------------------------

--
-- Table structure for table `ss_migration`
--

CREATE TABLE `ss_migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='数据库升降级管理表';

--
-- Dumping data for table `ss_migration`
--

INSERT INTO `ss_migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1483498037),
('m140506_102106_rbac_init', 1483499806),
('m140602_111327_create_menu_table', 1483498039),
('m160312_050000_create_user', 1483498039),
('m160313_153426_session_init', 1483517003),
('yii\\queue\\db\\migrations\\M161119140200Queue', 1555334215),
('yii\\queue\\db\\migrations\\M170307170300Later', 1555334215),
('yii\\queue\\db\\migrations\\M170509001400Retry', 1555334215),
('yii\\queue\\db\\migrations\\M170601155600Priority', 1555334215);

-- --------------------------------------------------------

--
-- Table structure for table `ss_queue`
--

CREATE TABLE `ss_queue` (
  `id` int(11) NOT NULL,
  `channel` varchar(255) NOT NULL,
  `job` blob NOT NULL,
  `pushed_at` int(11) NOT NULL,
  `ttr` int(11) NOT NULL,
  `delay` int(11) NOT NULL DEFAULT '0',
  `priority` int(11) UNSIGNED NOT NULL DEFAULT '1024',
  `reserved_at` int(11) DEFAULT NULL,
  `attempt` int(11) DEFAULT NULL,
  `done_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统队列表';

--
-- Dumping data for table `ss_queue`
--

INSERT INTO `ss_queue` (`id`, `channel`, `job`, `pushed_at`, `ttr`, `delay`, `priority`, `reserved_at`, `attempt`, `done_at`) VALUES
(290, 'sms_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c416c69736d734a6f62222c2270686f6e654e756d626572223a223133373235353134353234222c227369676e4e616d65223a225c75346539615c75363836355c75363733615c75363862305c75373964665c7538643431222c2274656d706c617465436f6465223a22534d535f313738343636343937222c2274656d706c617465506172616d73223a7b226e616d65223a225c75353930665c75353134385c7537353166222c226576656e74223a225c75396164385c75363762365c7536383635227d7d, 1574602380, 10, 0, 1024, 1574602382, 1, 1574602383),
(291, 'mail_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c536d74704d61696c4a6f62222c2274656d706c617465223a227a682d434e5c2f6e6f74696679222c22706172616d73223a7b225c75346531615c75353261315c75376337625c7535373862223a225c75396164385c75363762365c7536383635222c225c75373966305c7535343763223a225c75353930665c75353134385c7537353166222c225c75373533355c7538626464223a223133373235353134353234227d2c2273656e64546f223a223938303532323535374071712e636f6d222c2266726f6d223a7b22786961796f757169616f32303038403136332e636f6d223a225c75396164385c75376137615c75346635635c75346531615c75363237655c75346539615c7536383635227d2c227375626a656374223a225c75363730395c75363562305c75373638345c75393838345c7537656136202d2d205c75396164385c75376137615c75346635635c75346531615c75363237655c75346539615c7536383635227d, 1574602380, 10, 0, 1024, 1574602380, 1, 1574602384),
(292, 'sms_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c416c69736d734a6f62222c2270686f6e654e756d626572223a223138353839303830303234222c227369676e4e616d65223a225c75346539615c75363836355c75363733615c75363862305c75373964665c7538643431222c2274656d706c617465436f6465223a22534d535f313738343531343235222c2274656d706c617465506172616d73223a7b226e616d65223a225c75353930665c75353134385c7537353166222c2270686f6e65223a223133373235353134353234222c226576656e74223a225c75396164385c75363762365c7536383635227d7d, 1574602380, 10, 0, 1024, 1574602383, 1, 1574602383),
(293, 'sms_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c416c69736d734a6f62222c2270686f6e654e756d626572223a223133373235353134353234222c227369676e4e616d65223a225c75346539615c75363836355c75363733615c75363862305c75373964665c7538643431222c2274656d706c617465436f6465223a22534d535f313738343636343937222c2274656d706c617465506172616d73223a7b226e616d65223a226a6f727279222c226576656e74223a225c75353931365c75353839395c75376338395c7535323337227d7d, 1574614446, 10, 0, 1024, 1574614449, 1, 1574614449),
(294, 'mail_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c536d74704d61696c4a6f62222c2274656d706c617465223a227a682d434e5c2f6e6f74696679222c22706172616d73223a7b225c75346531615c75353261315c75376337625c7535373862223a225c75353931365c75353839395c75376338395c7535323337222c225c75373966305c7535343763223a226a6f727279222c225c75373533355c7538626464223a223133373235353134353234227d2c2273656e64546f223a223938303532323535374071712e636f6d222c2266726f6d223a7b22786961796f757169616f32303038403136332e636f6d223a225c75396164385c75376137615c75346635635c75346531615c75363237655c75346539615c7536383635227d2c227375626a656374223a225c75363730395c75363562305c75373638345c75393838345c7537656136202d2d205c75396164385c75376137615c75346635635c75346531615c75363237655c75346539615c7536383635227d, 1574614446, 10, 0, 1024, 1574614448, 1, 1574614448),
(295, 'sms_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c416c69736d734a6f62222c2270686f6e654e756d626572223a223138353839303830303234222c227369676e4e616d65223a225c75346539615c75363836355c75363733615c75363862305c75373964665c7538643431222c2274656d706c617465436f6465223a22534d535f313738343531343235222c2274656d706c617465506172616d73223a7b226e616d65223a226a6f727279222c2270686f6e65223a223133373235353134353234222c226576656e74223a225c75353931365c75353839395c75376338395c7535323337227d7d, 1574614446, 10, 0, 1024, 1574614449, 1, 1574614449),
(296, 'sms_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c416c69736d734a6f62222c2270686f6e654e756d626572223a223133373235353134353234222c227369676e4e616d65223a225c75346539615c75363836355c75363733615c75363862305c75373964665c7538643431222c2274656d706c617465436f6465223a22534d535f313738343636343937222c2274656d706c617465506172616d73223a7b226e616d65223a225c75353930665c75353134385c7537353166222c226576656e74223a225c75373766335c75353331365c75376366625c7537656466227d7d, 1574648695, 10, 0, 1024, 1574648696, 1, 1574648697),
(297, 'mail_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c536d74704d61696c4a6f62222c2274656d706c617465223a227a682d434e5c2f6e6f74696679222c22706172616d73223a7b225c75346531615c75353261315c75376337625c7535373862223a225c75373766335c75353331365c75376366625c7537656466222c225c75373966305c7535343763223a225c75353930665c75353134385c7537353166222c225c75373533355c7538626464223a223133373235353134353234227d2c2273656e64546f223a223938303532323535374071712e636f6d222c2266726f6d223a7b22786961796f757169616f32303038403136332e636f6d223a225c75396164385c75376137615c75346635635c75346531615c75363237655c75346539615c7536383635227d2c227375626a656374223a225c75363730395c75363562305c75373638345c75393838345c7537656136202d2d205c75396164385c75376137615c75346635635c75346531615c75363237655c75346539615c7536383635227d, 1574648695, 10, 0, 1024, 1574648696, 1, 1574648697),
(298, 'sms_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c416c69736d734a6f62222c2270686f6e654e756d626572223a223138353839303830303234222c227369676e4e616d65223a225c75346539615c75363836355c75363733615c75363862305c75373964665c7538643431222c2274656d706c617465436f6465223a22534d535f313738343531343235222c2274656d706c617465506172616d73223a7b226e616d65223a225c75353930665c75353134385c7537353166222c2270686f6e65223a223133373235353134353234222c226576656e74223a225c75373766335c75353331365c75376366625c7537656466227d7d, 1574648695, 10, 0, 1024, 1574648697, 1, 1574648697),
(299, 'sms_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c416c69736d734a6f62222c2270686f6e654e756d626572223a223133373235353134353234222c227369676e4e616d65223a225c75346539615c75363836355c75363733615c75363862305c75373964665c7538643431222c2274656d706c617465436f6465223a22534d535f313738343636343937222c2274656d706c617465506172616d73223a7b226e616d65223a2267676767222c226576656e74223a225c75366533385c75346535305c7535373361227d7d, 1574944796, 10, 0, 1024, 1574944796, 1, 1574944797),
(300, 'mail_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c536d74704d61696c4a6f62222c2274656d706c617465223a227a682d434e5c2f6e6f74696679222c22706172616d73223a7b225c75346531615c75353261315c75376337625c7535373862223a225c75366533385c75346535305c7535373361222c225c75373966305c7535343763223a2267676767222c225c75373533355c7538626464223a223133373235353134353234227d2c2273656e64546f223a223938303532323535374071712e636f6d222c2266726f6d223a7b22786961796f757169616f32303038403136332e636f6d223a225c75396164385c75376137615c75346635635c75346531615c75363237655c75346539615c7536383635227d2c227375626a656374223a225c75363730395c75363562305c75373638345c75393838345c7537656136202d2d205c75396164385c75376137615c75346635635c75346531615c75363237655c75346539615c7536383635227d, 1574944796, 10, 0, 1024, 1574944796, 1, 1574944799),
(301, 'sms_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c416c69736d734a6f62222c2270686f6e654e756d626572223a223138353839303830303234222c227369676e4e616d65223a225c75346539615c75363836355c75363733615c75363862305c75373964665c7538643431222c2274656d706c617465436f6465223a22534d535f313738343531343235222c2274656d706c617465506172616d73223a7b226e616d65223a2267676767222c2270686f6e65223a223133373235353134353234222c226576656e74223a225c75366533385c75346535305c7535373361227d7d, 1574944796, 10, 0, 1024, 1574944797, 1, 1574944797),
(302, 'sms_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c416c69736d734a6f62222c2270686f6e654e756d626572223a223138353839303830303234222c227369676e4e616d65223a225c75346539615c75363836355c75363733615c75363862305c75373964665c7538643431222c2274656d706c617465436f6465223a22534d535f313738343636343937222c2274656d706c617465506172616d73223a7b226e616d65223a22616263222c226576656e74223a225c75356530325c75363533665c75356465355c7537613062227d7d, 1574954000, 10, 0, 1024, 1574954002, 1, 1574954003),
(303, 'mail_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c536d74704d61696c4a6f62222c2274656d706c617465223a227a682d434e5c2f6e6f74696679222c22706172616d73223a7b225c75346531615c75353261315c75376337625c7535373862223a225c75356530325c75363533665c75356465355c7537613062222c225c75373966305c7535343763223a22616263222c225c75373533355c7538626464223a223138353839303830303234227d2c2273656e64546f223a223938303532323535374071712e636f6d222c2266726f6d223a7b22786961796f757169616f32303038403136332e636f6d223a225c75396164385c75376137615c75346635635c75346531615c75363237655c75346539615c7536383635227d2c227375626a656374223a225c75363730395c75363562305c75373638345c75393838345c7537656136202d2d205c75396164385c75376137615c75346635635c75346531615c75363237655c75346539615c7536383635227d, 1574954000, 10, 0, 1024, 1574954003, 1, 1574954004),
(304, 'sms_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c416c69736d734a6f62222c2270686f6e654e756d626572223a223138353839303830303234222c227369676e4e616d65223a225c75346539615c75363836355c75363733615c75363862305c75373964665c7538643431222c2274656d706c617465436f6465223a22534d535f313738343531343235222c2274656d706c617465506172616d73223a7b226e616d65223a22616263222c2270686f6e65223a223138353839303830303234222c226576656e74223a225c75356530325c75363533665c75356465355c7537613062227d7d, 1574954000, 10, 0, 1024, 1574954003, 1, 1574954003),
(305, 'sms_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c416c69736d734a6f62222c2270686f6e654e756d626572223a223133373235353134353234222c227369676e4e616d65223a225c75346539615c75363836355c75363733615c75363862305c75373964665c7538643431222c2274656d706c617465436f6465223a22534d535f313738343531343237222c2274656d706c617465506172616d73223a7b22636f6465223a22343938373936227d7d, 1575121580, 10, 0, 98, 1575121580, 1, 1575121581),
(306, 'sms_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c416c69736d734a6f62222c2270686f6e654e756d626572223a223138353839303830303234222c227369676e4e616d65223a225c75346539615c75363836355c75363733615c75363862305c75373964665c7538643431222c2274656d706c617465436f6465223a22534d535f313738343636343937222c2274656d706c617465506172616d73223a7b226e616d65223a225c75356330665c7537333862222c226576656e74223a225c75363937635c75356238375c75366530355c7536643031227d7d, 1575132437, 10, 0, 1024, 1575132437, 1, 1575132438),
(307, 'mail_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c536d74704d61696c4a6f62222c2274656d706c617465223a227a682d434e5c2f6e6f74696679222c22706172616d73223a7b225c75346531615c75353261315c75376337625c7535373862223a225c75363937635c75356238375c75366530355c7536643031222c225c75373966305c7535343763223a225c75356330665c7537333862222c225c75373533355c7538626464223a223138353839303830303234227d2c2273656e64546f223a223938303532323535374071712e636f6d222c2266726f6d223a7b22786961796f757169616f32303038403136332e636f6d223a225c75396164385c75376137615c75346635635c75346531615c75363237655c75346539615c7536383635227d2c227375626a656374223a225c75363730395c75363562305c75373638345c75393838345c7537656136202d2d205c75396164385c75376137615c75346635635c75346531615c75363237655c75346539615c7536383635227d, 1575132437, 10, 0, 1024, 1575132439, 1, 1575132440),
(308, 'sms_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c416c69736d734a6f62222c2270686f6e654e756d626572223a223138353839303830303234222c227369676e4e616d65223a225c75346539615c75363836355c75363733615c75363862305c75373964665c7538643431222c2274656d706c617465436f6465223a22534d535f313738343531343235222c2274656d706c617465506172616d73223a7b226e616d65223a225c75356330665c7537333862222c2270686f6e65223a223138353839303830303234222c226576656e74223a225c75363937635c75356238375c75366530355c7536643031227d7d, 1575132437, 10, 0, 1024, 1575132438, 1, 1575132438),
(309, 'sms_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c416c69736d734a6f62222c2270686f6e654e756d626572223a223133373235353134353234222c227369676e4e616d65223a225c75346539615c75363836355c75363733615c75363862305c75373964665c7538643431222c2274656d706c617465436f6465223a22534d535f313738343531343237222c2274656d706c617465506172616d73223a7b22636f6465223a22303330343636227d7d, 1575209416, 10, 0, 98, 1575209418, 1, 1575209418),
(310, 'sms_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c416c69736d734a6f62222c2270686f6e654e756d626572223a223133373235353134353238222c227369676e4e616d65223a225c75346539615c75363836355c75363733615c75363862305c75373964665c7538643431222c2274656d706c617465436f6465223a22534d535f313738343636343937222c2274656d706c617465506172616d73223a7b226e616d65223a225c75363734655c7535333465222c226576656e74223a225c75363233665c75356334625c75356566615c7538626265227d7d, 1575355776, 10, 0, 1024, 1575355778, 1, 1575355779),
(311, 'mail_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c536d74704d61696c4a6f62222c2274656d706c617465223a227a682d434e5c2f6e6f74696679222c22706172616d73223a7b225c75346531615c75353261315c75376337625c7535373862223a225c75363233665c75356334625c75356566615c7538626265222c225c75373966305c7535343763223a225c75363734655c7535333465222c225c75373533355c7538626464223a223133373235353134353238227d2c2273656e64546f223a223938303532323535374071712e636f6d222c2266726f6d223a7b22786961796f757169616f32303038403136332e636f6d223a225c75396164385c75376137615c75346635635c75346531615c75363237655c75346539615c7536383635227d2c227375626a656374223a225c75363730395c75363562305c75373638345c75393838345c7537656136202d2d205c75396164385c75376137615c75346635635c75346531615c75363237655c75346539615c7536383635227d, 1575355776, 10, 0, 1024, 1575355778, 1, 1575355781),
(312, 'sms_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c416c69736d734a6f62222c2270686f6e654e756d626572223a223138353839303830303234222c227369676e4e616d65223a225c75346539615c75363836355c75363733615c75363862305c75373964665c7538643431222c2274656d706c617465436f6465223a22534d535f313738343531343235222c2274656d706c617465506172616d73223a7b226e616d65223a225c75363734655c7535333465222c2270686f6e65223a223133373235353134353238222c226576656e74223a225c75363233665c75356334625c75356566615c7538626265227d7d, 1575355776, 10, 0, 1024, 1575355779, 1, 1575355779),
(313, 'sms_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c416c69736d734a6f62222c2270686f6e654e756d626572223a223133373235353134353234222c227369676e4e616d65223a225c75346539615c75363836355c75363733615c75363862305c75373964665c7538643431222c2274656d706c617465436f6465223a22534d535f313738353735313232222c2274656d706c617465506172616d73223a7b22636f6465223a22353637323630227d7d, 1575380716, 10, 0, 98, 1575380717, 1, 1575380718),
(314, 'sms_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c416c69736d734a6f62222c2270686f6e654e756d626572223a223133373235353134353234222c227369676e4e616d65223a225c75346539615c75363836355c75363733615c75363862305c75373964665c7538643431222c2274656d706c617465436f6465223a22534d535f313738353735313230222c2274656d706c617465506172616d73223a7b22636f6465223a22383434313733227d7d, 1575380843, 10, 0, 98, 1575380844, 1, 1575380845),
(315, 'sms_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c416c69736d734a6f62222c2270686f6e654e756d626572223a223133373235353134353234222c227369676e4e616d65223a225c75346539615c75363836355c75363733615c75363862305c75373964665c7538643431222c2274656d706c617465436f6465223a22534d535f313738353735313230222c2274656d706c617465506172616d73223a7b22636f6465223a22313930323933227d7d, 1575380956, 10, 0, 98, 1575380959, 1, 1575380959),
(316, 'sms_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c416c69736d734a6f62222c2270686f6e654e756d626572223a223133373235353134353234222c227369676e4e616d65223a225c75346539615c75363836355c75363733615c75363862305c75373964665c7538643431222c2274656d706c617465436f6465223a22534d535f313738353735313230222c2274656d706c617465506172616d73223a7b22636f6465223a22363238343236227d7d, 1575381192, 10, 0, 98, 1575381194, 1, 1575381194),
(317, 'sms_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c416c69736d734a6f62222c2270686f6e654e756d626572223a223133373235353134353234222c227369676e4e616d65223a225c75346539615c75363836355c75363733615c75363862305c75373964665c7538643431222c2274656d706c617465436f6465223a22534d535f313738353735313230222c2274656d706c617465506172616d73223a7b22636f6465223a22333334373430227d7d, 1575381327, 10, 0, 98, 1575381330, 1, 1575381330),
(318, 'sms_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c416c69736d734a6f62222c2270686f6e654e756d626572223a223133373235353134353234222c227369676e4e616d65223a225c75346539615c75363836355c75363733615c75363862305c75373964665c7538643431222c2274656d706c617465436f6465223a22534d535f313738343531343237222c2274656d706c617465506172616d73223a7b22636f6465223a22343932373631227d7d, 1575381390, 10, 0, 98, 1575381390, 1, 1575381391),
(319, 'sms_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c416c69736d734a6f62222c2270686f6e654e756d626572223a223133373235353134353234222c227369676e4e616d65223a225c75346539615c75363836355c75363733615c75363862305c75373964665c7538643431222c2274656d706c617465436f6465223a22534d535f313738343531343237222c2274656d706c617465506172616d73223a7b22636f6465223a22383633343938227d7d, 1575381572, 10, 0, 98, 1575381611, 4, 1575381611),
(320, 'sms_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c416c69736d734a6f62222c2270686f6e654e756d626572223a223138353839303830303234222c227369676e4e616d65223a225c75346539615c75363836355c75363733615c75363862305c75373964665c7538643431222c2274656d706c617465436f6465223a22534d535f313738343636343937222c2274656d706c617465506172616d73223a7b226e616d65223a225c75393634385c75353134385c7537353166222c226576656e74223a225c75363233665c75356334625c75356566615c7538626265227d7d, 1575438113, 10, 0, 1024, 1575438115, 1, 1575438116),
(321, 'mail_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c536d74704d61696c4a6f62222c2274656d706c617465223a227a682d434e5c2f6e6f74696679222c22706172616d73223a7b225c75346531615c75353261315c75376337625c7535373862223a225c75363233665c75356334625c75356566615c7538626265222c225c75373966305c7535343763223a225c75393634385c75353134385c7537353166222c225c75373533355c7538626464223a223138353839303830303234227d2c2273656e64546f223a223938303532323535374071712e636f6d222c2266726f6d223a7b22786961796f757169616f32303038403136332e636f6d223a225c75396164385c75376137615c75346635635c75346531615c75363237655c75346539615c7536383635227d2c227375626a656374223a225c75363730395c75363562305c75373638345c75393838345c7537656136202d2d205c75396164385c75376137615c75346635635c75346531615c75363237655c75346539615c7536383635227d, 1575438113, 10, 0, 1024, 1575438114, 1, 1575438115),
(322, 'mail_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c536d74704d61696c4a6f62222c2274656d706c617465223a227a682d434e5c2f6e6f74696679222c22706172616d73223a7b225c75346531615c75353261315c75376337625c7535373862223a225c75363233665c75356334625c75356566615c7538626265222c225c75373966305c7535343763223a225c75393634385c75353134385c7537353166222c225c75373533355c7538626464223a223138353839303830303234227d2c2273656e64546f223a22313037323532393032314071712e636f6d222c2266726f6d223a7b22786961796f757169616f32303038403136332e636f6d223a225c75396164385c75376137615c75346635635c75346531615c75363237655c75346539615c7536383635227d2c227375626a656374223a225c75363730395c75363562305c75373638345c75393838345c7537656136202d2d205c75396164385c75376137615c75346635635c75346531615c75363237655c75346539615c7536383635227d, 1575438113, 10, 0, 1024, 1575438115, 1, 1575438115),
(323, 'sms_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c416c69736d734a6f62222c2270686f6e654e756d626572223a223138353839303830303234222c227369676e4e616d65223a225c75346539615c75363836355c75363733615c75363862305c75373964665c7538643431222c2274656d706c617465436f6465223a22534d535f313738343531343235222c2274656d706c617465506172616d73223a7b226e616d65223a225c75393634385c75353134385c7537353166222c2270686f6e65223a223138353839303830303234222c226576656e74223a225c75363233665c75356334625c75356566615c7538626265227d7d, 1575438113, 10, 0, 1024, 1575438116, 1, 1575438116),
(324, 'sms_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c416c69736d734a6f62222c2270686f6e654e756d626572223a223133343239383335333133222c227369676e4e616d65223a225c75346539615c75363836355c75363733615c75363862305c75373964665c7538643431222c2274656d706c617465436f6465223a22534d535f313738343531343235222c2274656d706c617465506172616d73223a7b226e616d65223a225c75393634385c75353134385c7537353166222c2270686f6e65223a223138353839303830303234222c226576656e74223a225c75363233665c75356334625c75356566615c7538626265227d7d, 1575438113, 10, 0, 1024, 1575438116, 1, 1575438116),
(325, 'sms_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c416c69736d734a6f62222c2270686f6e654e756d626572223a223133373235353134353234222c227369676e4e616d65223a225c75346539615c75363836355c75363733615c75363862305c75373964665c7538643431222c2274656d706c617465436f6465223a22534d535f313738343636343937222c2274656d706c617465506172616d73223a7b226e616d65223a225c75353930665c75353134385c7537353166222c226576656e74223a225c75363937635c75356238375c75366530355c7536643031227d7d, 1576928099, 10, 0, 1024, 1576928100, 1, 1576928100),
(326, 'mail_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c536d74704d61696c4a6f62222c2274656d706c617465223a227a682d434e5c2f6e6f74696679222c22706172616d73223a7b225c75346531615c75353261315c75376337625c7535373862223a225c75363937635c75356238375c75366530355c7536643031222c225c75373966305c7535343763223a225c75353930665c75353134385c7537353166222c225c75373533355c7538626464223a223133373235353134353234227d2c2273656e64546f223a223938303532323535374071712e636f6d222c2266726f6d223a7b22786961796f757169616f32303038403136332e636f6d223a225c75396164385c75376137615c75346635635c75346531615c75363237655c75346539615c7536383635227d2c227375626a656374223a225c75363730395c75363562305c75373638345c75393838345c7537656136202d2d205c75396164385c75376137615c75346635635c75346531615c75363237655c75346539615c7536383635227d, 1576928100, 10, 0, 1024, 1576928100, 1, 1576928100),
(327, 'mail_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c536d74704d61696c4a6f62222c2274656d706c617465223a227a682d434e5c2f6e6f74696679222c22706172616d73223a7b225c75346531615c75353261315c75376337625c7535373862223a225c75363937635c75356238375c75366530355c7536643031222c225c75373966305c7535343763223a225c75353930665c75353134385c7537353166222c225c75373533355c7538626464223a223133373235353134353234227d2c2273656e64546f223a22313037323532393032314071712e636f6d222c2266726f6d223a7b22786961796f757169616f32303038403136332e636f6d223a225c75396164385c75376137615c75346635635c75346531615c75363237655c75346539615c7536383635227d2c227375626a656374223a225c75363730395c75363562305c75373638345c75393838345c7537656136202d2d205c75396164385c75376137615c75346635635c75346531615c75363237655c75346539615c7536383635227d, 1576928100, 10, 0, 1024, 1576928100, 1, 1576928101),
(328, 'sms_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c416c69736d734a6f62222c2270686f6e654e756d626572223a223138353839303830303234222c227369676e4e616d65223a225c75346539615c75363836355c75363733615c75363862305c75373964665c7538643431222c2274656d706c617465436f6465223a22534d535f313738343531343235222c2274656d706c617465506172616d73223a7b226e616d65223a225c75353930665c75353134385c7537353166222c2270686f6e65223a223133373235353134353234222c226576656e74223a225c75363937635c75356238375c75366530355c7536643031227d7d, 1576928100, 10, 0, 1024, 1576928100, 1, 1576928100),
(329, 'sms_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c416c69736d734a6f62222c2270686f6e654e756d626572223a223133343239383335333133222c227369676e4e616d65223a225c75346539615c75363836355c75363733615c75363862305c75373964665c7538643431222c2274656d706c617465436f6465223a22534d535f313738343531343235222c2274656d706c617465506172616d73223a7b226e616d65223a225c75353930665c75353134385c7537353166222c2270686f6e65223a223133373235353134353234222c226576656e74223a225c75363937635c75356238375c75366530355c7536643031227d7d, 1576928100, 10, 0, 1024, 1576928100, 1, 1576928101),
(330, 'sms_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c416c69736d734a6f62222c2270686f6e654e756d626572223a223138353839303830303234222c227369676e4e616d65223a225c75346539615c75363836355c75363733615c75363862305c75373964665c7538643431222c2274656d706c617465436f6465223a22534d535f313738343636343937222c2274656d706c617465506172616d73223a7b226e616d65223a225c75383065315c75353134385c7537353166222c226576656e74223a225c75353137365c7535623833227d7d, 1576938247, 10, 0, 1024, 1576938248, 1, 1576938248),
(331, 'mail_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c536d74704d61696c4a6f62222c2274656d706c617465223a227a682d434e5c2f6e6f74696679222c22706172616d73223a7b225c75346531615c75353261315c75376337625c7535373862223a225c75353137365c7535623833222c225c75373966305c7535343763223a225c75383065315c75353134385c7537353166222c225c75373533355c7538626464223a223138353839303830303234227d2c2273656e64546f223a223938303532323535374071712e636f6d222c2266726f6d223a7b22786961796f757169616f32303038403136332e636f6d223a225c75396164385c75376137615c75346635635c75346531615c75363237655c75346539615c7536383635227d2c227375626a656374223a225c75363730395c75363562305c75373638345c75393838345c7537656136202d2d205c75396164385c75376137615c75346635635c75346531615c75363237655c75346539615c7536383635227d, 1576938247, 10, 0, 1024, 1576938248, 1, 1576938249),
(332, 'mail_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c536d74704d61696c4a6f62222c2274656d706c617465223a227a682d434e5c2f6e6f74696679222c22706172616d73223a7b225c75346531615c75353261315c75376337625c7535373862223a225c75353137365c7535623833222c225c75373966305c7535343763223a225c75383065315c75353134385c7537353166222c225c75373533355c7538626464223a223138353839303830303234227d2c2273656e64546f223a22313037323532393032314071712e636f6d222c2266726f6d223a7b22786961796f757169616f32303038403136332e636f6d223a225c75396164385c75376137615c75346635635c75346531615c75363237655c75346539615c7536383635227d2c227375626a656374223a225c75363730395c75363562305c75373638345c75393838345c7537656136202d2d205c75396164385c75376137615c75346635635c75346531615c75363237655c75346539615c7536383635227d, 1576938247, 10, 0, 1024, 1576938249, 1, 1576938250),
(333, 'sms_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c416c69736d734a6f62222c2270686f6e654e756d626572223a223138353839303830303234222c227369676e4e616d65223a225c75346539615c75363836355c75363733615c75363862305c75373964665c7538643431222c2274656d706c617465436f6465223a22534d535f313738343531343235222c2274656d706c617465506172616d73223a7b226e616d65223a225c75383065315c75353134385c7537353166222c2270686f6e65223a223138353839303830303234222c226576656e74223a225c75353137365c7535623833227d7d, 1576938247, 10, 0, 1024, 1576938248, 1, 1576938249),
(334, 'sms_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c416c69736d734a6f62222c2270686f6e654e756d626572223a223133343239383335333133222c227369676e4e616d65223a225c75346539615c75363836355c75363733615c75363862305c75373964665c7538643431222c2274656d706c617465436f6465223a22534d535f313738343531343235222c2274656d706c617465506172616d73223a7b226e616d65223a225c75383065315c75353134385c7537353166222c2270686f6e65223a223138353839303830303234222c226576656e74223a225c75353137365c7535623833227d7d, 1576938247, 10, 0, 1024, 1576938249, 1, 1576938249),
(335, 'sms_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c416c69736d734a6f62222c2270686f6e654e756d626572223a223133373235353134353234222c227369676e4e616d65223a225c75346539615c75363836355c75363733615c75363862305c75373964665c7538643431222c2274656d706c617465436f6465223a22534d535f313738343636343937222c2274656d706c617465506172616d73223a7b226e616d65223a226a6f727279222c226576656e74223a225c75363736355c75383165615c75363234625c75363733615c75376635315c7537616439227d7d, 1576941084, 10, 0, 1024, 1576941086, 1, 1576941086),
(336, 'mail_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c536d74704d61696c4a6f62222c2274656d706c617465223a227a682d434e5c2f6e6f74696679222c22706172616d73223a7b225c75346531615c75353261315c75376337625c7535373862223a225c75363736355c75383165615c75363234625c75363733615c75376635315c7537616439222c225c75373966305c7535343763223a226a6f727279222c225c75373533355c7538626464223a223133373235353134353234227d2c2273656e64546f223a223938303532323535374071712e636f6d222c2266726f6d223a7b22786961796f757169616f32303038403136332e636f6d223a225c75396164385c75376137615c75346635635c75346531615c75363237655c75346539615c7536383635227d2c227375626a656374223a225c75363730395c75363562305c75373638345c75393838345c7537656136202d2d205c75396164385c75376137615c75346635635c75346531615c75363237655c75346539615c7536383635227d, 1576941084, 10, 0, 1024, 1576941086, 1, 1576941087),
(337, 'mail_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c536d74704d61696c4a6f62222c2274656d706c617465223a227a682d434e5c2f6e6f74696679222c22706172616d73223a7b225c75346531615c75353261315c75376337625c7535373862223a225c75363736355c75383165615c75363234625c75363733615c75376635315c7537616439222c225c75373966305c7535343763223a226a6f727279222c225c75373533355c7538626464223a223133373235353134353234227d2c2273656e64546f223a22313037323532393032314071712e636f6d222c2266726f6d223a7b22786961796f757169616f32303038403136332e636f6d223a225c75396164385c75376137615c75346635635c75346531615c75363237655c75346539615c7536383635227d2c227375626a656374223a225c75363730395c75363562305c75373638345c75393838345c7537656136202d2d205c75396164385c75376137615c75346635635c75346531615c75363237655c75346539615c7536383635227d, 1576941084, 10, 0, 1024, 1576941087, 1, 1576941094),
(338, 'sms_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c416c69736d734a6f62222c2270686f6e654e756d626572223a223138353839303830303234222c227369676e4e616d65223a225c75346539615c75363836355c75363733615c75363862305c75373964665c7538643431222c2274656d706c617465436f6465223a22534d535f313738343531343235222c2274656d706c617465506172616d73223a7b226e616d65223a226a6f727279222c2270686f6e65223a223133373235353134353234222c226576656e74223a225c75363736355c75383165615c75363234625c75363733615c75376635315c7537616439227d7d, 1576941084, 10, 0, 1024, 1576941086, 1, 1576941087),
(339, 'sms_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c416c69736d734a6f62222c2270686f6e654e756d626572223a223133343239383335333133222c227369676e4e616d65223a225c75346539615c75363836355c75363733615c75363862305c75373964665c7538643431222c2274656d706c617465436f6465223a22534d535f313738343531343235222c2274656d706c617465506172616d73223a7b226e616d65223a226a6f727279222c2270686f6e65223a223133373235353134353234222c226576656e74223a225c75363736355c75383165615c75363234625c75363733615c75376635315c7537616439227d7d, 1576941084, 10, 0, 1024, 1576941087, 1, 1576941087),
(340, 'sms_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c416c69736d734a6f62222c2270686f6e654e756d626572223a223133373235353134353234222c227369676e4e616d65223a225c75346539615c75363836355c75363733615c75363862305c75373964665c7538643431222c2274656d706c617465436f6465223a22534d535f313738343636343937222c2274656d706c617465506172616d73223a7b226e616d65223a225c75353930665c75353134385c7537353166222c226576656e74223a225c75363736355c75383165615c75363234625c75363733615c75376635315c7537616439227d7d, 1576945379, 10, 0, 1024, 1576945384, 1, 1576945385),
(341, 'mail_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c536d74704d61696c4a6f62222c2274656d706c617465223a227a682d434e5c2f6e6f74696679222c22706172616d73223a7b225c75346531615c75353261315c75376337625c7535373862223a225c75363736355c75383165615c75363234625c75363733615c75376635315c7537616439222c225c75373966305c7535343763223a225c75353930665c75353134385c7537353166222c225c75373533355c7538626464223a223133373235353134353234227d2c2273656e64546f223a223938303532323535374071712e636f6d222c2266726f6d223a7b22786961796f757169616f32303038403136332e636f6d223a225c75396164385c75376137615c75346635635c75346531615c75363237655c75346539615c7536383635227d2c227375626a656374223a225c75363730395c75363562305c75373638345c75393838345c7537656136202d2d205c75396164385c75376137615c75346635635c75346531615c75363237655c75346539615c7536383635227d, 1576945379, 10, 0, 1024, 1576945382, 1, 1576945387),
(342, 'mail_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c536d74704d61696c4a6f62222c2274656d706c617465223a227a682d434e5c2f6e6f74696679222c22706172616d73223a7b225c75346531615c75353261315c75376337625c7535373862223a225c75363736355c75383165615c75363234625c75363733615c75376635315c7537616439222c225c75373966305c7535343763223a225c75353930665c75353134385c7537353166222c225c75373533355c7538626464223a223133373235353134353234227d2c2273656e64546f223a22313037323532393032314071712e636f6d222c2266726f6d223a7b22786961796f757169616f32303038403136332e636f6d223a225c75396164385c75376137615c75346635635c75346531615c75363237655c75346539615c7536383635227d2c227375626a656374223a225c75363730395c75363562305c75373638345c75393838345c7537656136202d2d205c75396164385c75376137615c75346635635c75346531615c75363237655c75346539615c7536383635227d, 1576945379, 10, 0, 1024, 1576945387, 1, 1576945392),
(343, 'sms_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c416c69736d734a6f62222c2270686f6e654e756d626572223a223138353839303830303234222c227369676e4e616d65223a225c75346539615c75363836355c75363733615c75363862305c75373964665c7538643431222c2274656d706c617465436f6465223a22534d535f313738343531343235222c2274656d706c617465506172616d73223a7b226e616d65223a225c75353930665c75353134385c7537353166222c2270686f6e65223a223133373235353134353234222c226576656e74223a225c75363736355c75383165615c75363234625c75363733615c75376635315c7537616439227d7d, 1576945379, 10, 0, 1024, 1576945385, 1, 1576945385),
(344, 'sms_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c416c69736d734a6f62222c2270686f6e654e756d626572223a223133343239383335333133222c227369676e4e616d65223a225c75346539615c75363836355c75363733615c75363862305c75373964665c7538643431222c2274656d706c617465436f6465223a22534d535f313738343531343235222c2274656d706c617465506172616d73223a7b226e616d65223a225c75353930665c75353134385c7537353166222c2270686f6e65223a223133373235353134353234222c226576656e74223a225c75363736355c75383165615c75363234625c75363733615c75376635315c7537616439227d7d, 1576945379, 10, 0, 1024, 1576945385, 1, 1576945385),
(345, 'sms_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c416c69736d734a6f62222c2270686f6e654e756d626572223a223138363230383235343036222c227369676e4e616d65223a225c75346539615c75363836355c75363733615c75363862305c75373964665c7538643431222c2274656d706c617465436f6465223a22534d535f313738343636343937222c2274656d706c617465506172616d73223a7b226e616d65223a225c7536373465222c226576656e74223a225c75363736355c75383165615c75363234625c75363733615c75376635315c7537616439227d7d, 1576948212, 10, 0, 1024, 1576948212, 1, 1576948214),
(346, 'mail_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c536d74704d61696c4a6f62222c2274656d706c617465223a227a682d434e5c2f6e6f74696679222c22706172616d73223a7b225c75346531615c75353261315c75376337625c7535373862223a225c75363736355c75383165615c75363234625c75363733615c75376635315c7537616439222c225c75373966305c7535343763223a225c7536373465222c225c75373533355c7538626464223a223138363230383235343036227d2c2273656e64546f223a223938303532323535374071712e636f6d222c2266726f6d223a7b22786961796f757169616f32303038403136332e636f6d223a225c75396164385c75376137615c75346635635c75346531615c75363237655c75346539615c7536383635227d2c227375626a656374223a225c75363730395c75363562305c75373638345c75393838345c7537656136202d2d205c75396164385c75376137615c75346635635c75346531615c75363237655c75346539615c7536383635227d, 1576948212, 10, 0, 1024, 1576948213, 1, 1576948214),
(347, 'mail_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c536d74704d61696c4a6f62222c2274656d706c617465223a227a682d434e5c2f6e6f74696679222c22706172616d73223a7b225c75346531615c75353261315c75376337625c7535373862223a225c75363736355c75383165615c75363234625c75363733615c75376635315c7537616439222c225c75373966305c7535343763223a225c7536373465222c225c75373533355c7538626464223a223138363230383235343036227d2c2273656e64546f223a22313037323532393032314071712e636f6d222c2266726f6d223a7b22786961796f757169616f32303038403136332e636f6d223a225c75396164385c75376137615c75346635635c75346531615c75363237655c75346539615c7536383635227d2c227375626a656374223a225c75363730395c75363562305c75373638345c75393838345c7537656136202d2d205c75396164385c75376137615c75346635635c75346531615c75363237655c75346539615c7536383635227d, 1576948212, 10, 0, 1024, 1576948214, 1, 1576948214),
(348, 'sms_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c416c69736d734a6f62222c2270686f6e654e756d626572223a223138353839303830303234222c227369676e4e616d65223a225c75346539615c75363836355c75363733615c75363862305c75373964665c7538643431222c2274656d706c617465436f6465223a22534d535f313738343531343235222c2274656d706c617465506172616d73223a7b226e616d65223a225c7536373465222c2270686f6e65223a223138363230383235343036222c226576656e74223a225c75363736355c75383165615c75363234625c75363733615c75376635315c7537616439227d7d, 1576948212, 10, 0, 1024, 1576948215, 1, 1576948215),
(349, 'sms_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c416c69736d734a6f62222c2270686f6e654e756d626572223a223133343239383335333133222c227369676e4e616d65223a225c75346539615c75363836355c75363733615c75363862305c75373964665c7538643431222c2274656d706c617465436f6465223a22534d535f313738343531343235222c2274656d706c617465506172616d73223a7b226e616d65223a225c7536373465222c2270686f6e65223a223138363230383235343036222c226576656e74223a225c75363736355c75383165615c75363234625c75363733615c75376635315c7537616439227d7d, 1576948212, 10, 0, 1024, 1576948215, 1, 1576948215),
(350, 'sms_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c416c69736d734a6f62222c2270686f6e654e756d626572223a223138363230383235343036222c227369676e4e616d65223a225c75346539615c75363836355c75363733615c75363862305c75373964665c7538643431222c2274656d706c617465436f6465223a22534d535f313738343636343937222c2274656d706c617465506172616d73223a7b226e616d65223a225c7536373465222c226576656e74223a225c75363736355c75383165615c75363234625c75363733615c75376635315c7537616439227d7d, 1576948273, 10, 0, 1024, 1576948275, 1, 1576948276),
(351, 'mail_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c536d74704d61696c4a6f62222c2274656d706c617465223a227a682d434e5c2f6e6f74696679222c22706172616d73223a7b225c75346531615c75353261315c75376337625c7535373862223a225c75363736355c75383165615c75363234625c75363733615c75376635315c7537616439222c225c75373966305c7535343763223a225c7536373465222c225c75373533355c7538626464223a223138363230383235343036227d2c2273656e64546f223a223938303532323535374071712e636f6d222c2266726f6d223a7b22786961796f757169616f32303038403136332e636f6d223a225c75396164385c75376137615c75346635635c75346531615c75363237655c75346539615c7536383635227d2c227375626a656374223a225c75363730395c75363562305c75373638345c75393838345c7537656136202d2d205c75396164385c75376137615c75346635635c75346531615c75363237655c75346539615c7536383635227d, 1576948273, 10, 0, 1024, 1576948275, 1, 1576948275),
(352, 'mail_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c536d74704d61696c4a6f62222c2274656d706c617465223a227a682d434e5c2f6e6f74696679222c22706172616d73223a7b225c75346531615c75353261315c75376337625c7535373862223a225c75363736355c75383165615c75363234625c75363733615c75376635315c7537616439222c225c75373966305c7535343763223a225c7536373465222c225c75373533355c7538626464223a223138363230383235343036227d2c2273656e64546f223a22313037323532393032314071712e636f6d222c2266726f6d223a7b22786961796f757169616f32303038403136332e636f6d223a225c75396164385c75376137615c75346635635c75346531615c75363237655c75346539615c7536383635227d2c227375626a656374223a225c75363730395c75363562305c75373638345c75393838345c7537656136202d2d205c75396164385c75376137615c75346635635c75346531615c75363237655c75346539615c7536383635227d, 1576948273, 10, 0, 1024, 1576948275, 1, 1576948279),
(353, 'sms_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c416c69736d734a6f62222c2270686f6e654e756d626572223a223138353839303830303234222c227369676e4e616d65223a225c75346539615c75363836355c75363733615c75363862305c75373964665c7538643431222c2274656d706c617465436f6465223a22534d535f313738343531343235222c2274656d706c617465506172616d73223a7b226e616d65223a225c7536373465222c2270686f6e65223a223138363230383235343036222c226576656e74223a225c75363736355c75383165615c75363234625c75363733615c75376635315c7537616439227d7d, 1576948273, 10, 0, 1024, 1576948276, 1, 1576948276),
(354, 'sms_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c416c69736d734a6f62222c2270686f6e654e756d626572223a223133343239383335333133222c227369676e4e616d65223a225c75346539615c75363836355c75363733615c75363862305c75373964665c7538643431222c2274656d706c617465436f6465223a22534d535f313738343531343235222c2274656d706c617465506172616d73223a7b226e616d65223a225c7536373465222c2270686f6e65223a223138363230383235343036222c226576656e74223a225c75363736355c75383165615c75363234625c75363733615c75376635315c7537616439227d7d, 1576948273, 10, 0, 1024, 1576948276, 1, 1576948276),
(355, 'sms_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c416c69736d734a6f62222c2270686f6e654e756d626572223a223135333737303837333138222c227369676e4e616d65223a225c75346539615c75363836355c75363733615c75363862305c75373964665c7538643431222c2274656d706c617465436f6465223a22534d535f313738343636343937222c2274656d706c617465506172616d73223a7b226e616d65223a225c75356639305c75383030315c7535653038222c226576656e74223a225c75363736355c75383165615c75363234625c75363733615c75376635315c7537616439227d7d, 1578124537, 10, 0, 1024, 1578124538, 1, 1578124538),
(356, 'mail_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c536d74704d61696c4a6f62222c2274656d706c617465223a227a682d434e5c2f6e6f74696679222c22706172616d73223a7b225c75346531615c75353261315c75376337625c7535373862223a225c75363736355c75383165615c75363234625c75363733615c75376635315c7537616439222c225c75373966305c7535343763223a225c75356639305c75383030315c7535653038222c225c75373533355c7538626464223a223135333737303837333138227d2c2273656e64546f223a223938303532323535374071712e636f6d222c2266726f6d223a7b22786961796f757169616f32303038403136332e636f6d223a225c75396164385c75376137615c75346635635c75346531615c75363237655c75346539615c7536383635227d2c227375626a656374223a225c75363730395c75363562305c75373638345c75393838345c7537656136202d2d205c75396164385c75376137615c75346635635c75346531615c75363237655c75346539615c7536383635227d, 1578124537, 10, 0, 1024, 1578124538, 1, 1578124546),
(357, 'mail_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c536d74704d61696c4a6f62222c2274656d706c617465223a227a682d434e5c2f6e6f74696679222c22706172616d73223a7b225c75346531615c75353261315c75376337625c7535373862223a225c75363736355c75383165615c75363234625c75363733615c75376635315c7537616439222c225c75373966305c7535343763223a225c75356639305c75383030315c7535653038222c225c75373533355c7538626464223a223135333737303837333138227d2c2273656e64546f223a22313037323532393032314071712e636f6d222c2266726f6d223a7b22786961796f757169616f32303038403136332e636f6d223a225c75396164385c75376137615c75346635635c75346531615c75363237655c75346539615c7536383635227d2c227375626a656374223a225c75363730395c75363562305c75373638345c75393838345c7537656136202d2d205c75396164385c75376137615c75346635635c75346531615c75363237655c75346539615c7536383635227d, 1578124537, 10, 0, 1024, 1578124546, 1, 1578124547),
(358, 'sms_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c416c69736d734a6f62222c2270686f6e654e756d626572223a223138353839303830303234222c227369676e4e616d65223a225c75346539615c75363836355c75363733615c75363862305c75373964665c7538643431222c2274656d706c617465436f6465223a22534d535f313738343531343235222c2274656d706c617465506172616d73223a7b226e616d65223a225c75356639305c75383030315c7535653038222c2270686f6e65223a223135333737303837333138222c226576656e74223a225c75363736355c75383165615c75363234625c75363733615c75376635315c7537616439227d7d, 1578124537, 10, 0, 1024, 1578124539, 1, 1578124539),
(359, 'sms_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c416c69736d734a6f62222c2270686f6e654e756d626572223a223133343239383335333133222c227369676e4e616d65223a225c75346539615c75363836355c75363733615c75363862305c75373964665c7538643431222c2274656d706c617465436f6465223a22534d535f313738343531343235222c2274656d706c617465506172616d73223a7b226e616d65223a225c75356639305c75383030315c7535653038222c2270686f6e65223a223135333737303837333138222c226576656e74223a225c75363736355c75383165615c75363234625c75363733615c75376635315c7537616439227d7d, 1578124537, 10, 0, 1024, 1578124539, 1, 1578124539),
(360, 'sms_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c416c69736d734a6f62222c2270686f6e654e756d626572223a223133383836303039383932222c227369676e4e616d65223a225c75346539615c75363836355c75363733615c75363862305c75373964665c7538643431222c2274656d706c617465436f6465223a22534d535f313738343636343937222c2274656d706c617465506172616d73223a7b226e616d65223a225c7537376633222c226576656e74223a225c75363736355c75383165615c75363234625c75363733615c75376635315c7537616439227d7d, 1578817272, 10, 0, 1024, 1578817274, 1, 1578817274),
(361, 'mail_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c536d74704d61696c4a6f62222c2274656d706c617465223a227a682d434e5c2f6e6f74696679222c22706172616d73223a7b225c75346531615c75353261315c75376337625c7535373862223a225c75363736355c75383165615c75363234625c75363733615c75376635315c7537616439222c225c75373966305c7535343763223a225c7537376633222c225c75373533355c7538626464223a223133383836303039383932227d2c2273656e64546f223a223938303532323535374071712e636f6d222c2266726f6d223a7b22786961796f757169616f32303038403136332e636f6d223a225c75396164385c75376137615c75346635635c75346531615c75363237655c75346539615c7536383635227d2c227375626a656374223a225c75363730395c75363562305c75373638345c75393838345c7537656136202d2d205c75396164385c75376137615c75346635635c75346531615c75363237655c75346539615c7536383635227d, 1578817272, 10, 0, 1024, 1578817274, 1, 1578817275),
(362, 'mail_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c536d74704d61696c4a6f62222c2274656d706c617465223a227a682d434e5c2f6e6f74696679222c22706172616d73223a7b225c75346531615c75353261315c75376337625c7535373862223a225c75363736355c75383165615c75363234625c75363733615c75376635315c7537616439222c225c75373966305c7535343763223a225c7537376633222c225c75373533355c7538626464223a223133383836303039383932227d2c2273656e64546f223a22313037323532393032314071712e636f6d222c2266726f6d223a7b22786961796f757169616f32303038403136332e636f6d223a225c75396164385c75376137615c75346635635c75346531615c75363237655c75346539615c7536383635227d2c227375626a656374223a225c75363730395c75363562305c75373638345c75393838345c7537656136202d2d205c75396164385c75376137615c75346635635c75346531615c75363237655c75346539615c7536383635227d, 1578817272, 10, 0, 1024, 1578817275, 1, 1578817280),
(363, 'sms_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c416c69736d734a6f62222c2270686f6e654e756d626572223a223138353839303830303234222c227369676e4e616d65223a225c75346539615c75363836355c75363733615c75363862305c75373964665c7538643431222c2274656d706c617465436f6465223a22534d535f313738343531343235222c2274656d706c617465506172616d73223a7b226e616d65223a225c7537376633222c2270686f6e65223a223133383836303039383932222c226576656e74223a225c75363736355c75383165615c75363234625c75363733615c75376635315c7537616439227d7d, 1578817272, 10, 0, 1024, 1578817274, 1, 1578817275),
(364, 'sms_channel', 0x7b22636c617373223a22636f6e736f6c655c5c71756575655c5c416c69736d734a6f62222c2270686f6e654e756d626572223a223133343239383335333133222c227369676e4e616d65223a225c75346539615c75363836355c75363733615c75363862305c75373964665c7538643431222c2274656d706c617465436f6465223a22534d535f313738343531343235222c2274656d706c617465506172616d73223a7b226e616d65223a225c7537376633222c2270686f6e65223a223133383836303039383932222c226576656e74223a225c75363736355c75383165615c75363234625c75363733615c75376635315c7537616439227d7d, 1578817272, 10, 0, 1024, 1578817275, 1, 1578817275);

-- --------------------------------------------------------

--
-- Table structure for table `ss_session`
--

CREATE TABLE `ss_session` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL COMMENT '管理员id',
  `ip` varchar(128) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '访客ip',
  `is_trusted` tinyint(1) DEFAULT '1' COMMENT '是否受信',
  `expire` int(11) DEFAULT NULL,
  `data` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Session表';

--
-- Dumping data for table `ss_session`
--

INSERT INTO `ss_session` (`id`, `user_id`, `ip`, `is_trusted`, `expire`, `data`) VALUES
('11dp7m5uhadf8ilj4smhbp3u7o', NULL, '', 1, 1577937409, 0x5f5f666c6173687c613a303a7b7d5f5f696e69745f706172616d737c613a323a7b733a31373a22636f6e6669675f696e69745f6c616e6773223b613a323a7b693a303b733a353a227a682d434e223b693a313b733a353a22656e2d5553223b7d733a32343a22636f6e6669675f696e69745f64656661756c745f6c616e67223b733a353a227a682d434e223b7d5f5f72657475726e5f75726c7c733a32363a22687474703a2f2f61646d696e2e686279617169616f2e636f6d2f223b5f5f636170746368612f736974652f61646d696e2f636170746368617c733a343a2266676d65223b5f5f636170746368612f736974652f61646d696e2f63617074636861636f756e747c693a313b),
('2ctdf3p7p0h73fcm4mi67dfp5d', NULL, '', 1, 1579516659, 0x5f5f666c6173687c613a303a7b7d5f5f696e69745f706172616d737c613a323a7b733a31373a22636f6e6669675f696e69745f6c616e6773223b613a323a7b693a303b733a353a227a682d434e223b693a313b733a353a22656e2d5553223b7d733a32343a22636f6e6669675f696e69745f64656661756c745f6c616e67223b733a353a227a682d434e223b7d5f5f636170746368612f736974652f61646d696e2f636170746368617c733a343a2272737a62223b5f5f636170746368612f736974652f61646d696e2f63617074636861636f756e747c693a313b),
('4i8k882doqju7e70uin0f1e66l', NULL, '', 1, 1580777806, 0x5f5f666c6173687c613a303a7b7d5f5f696e69745f706172616d737c613a323a7b733a31373a22636f6e6669675f696e69745f6c616e6773223b613a323a7b693a303b733a353a227a682d434e223b693a313b733a353a22656e2d5553223b7d733a32343a22636f6e6669675f696e69745f64656661756c745f6c616e67223b733a353a227a682d434e223b7d5f5f72657475726e5f75726c7c733a32363a22687474703a2f2f61646d696e2e686279617169616f2e636f6d2f223b5f5f636170746368612f736974652f61646d696e2f636170746368617c733a343a2261756d6f223b5f5f636170746368612f736974652f61646d696e2f63617074636861636f756e747c693a313b),
('5p07o43op4tuvhm6e14gj8uh1h', NULL, '', 1, 1579512007, 0x5f5f666c6173687c613a303a7b7d5f5f69647c693a31303b5f5f696e69745f706172616d737c613a323a7b733a31373a22636f6e6669675f696e69745f6c616e6773223b613a323a7b693a303b733a353a227a682d434e223b693a313b733a353a22656e2d5553223b7d733a32343a22636f6e6669675f696e69745f64656661756c745f6c616e67223b733a353a227a682d434e223b7d5f5f72657475726e5f75726c5f726f7574657c733a33333a222f696e6465782e7068703f723d636d73253246636f6c756d6e253246696e646578223b),
('8qhmpv8v4shts586evpeh8qr0v', NULL, '', 1, 1581335872, 0x5f5f666c6173687c613a303a7b7d5f5f696e69745f706172616d737c613a323a7b733a31373a22636f6e6669675f696e69745f6c616e6773223b613a323a7b693a303b733a353a227a682d434e223b693a313b733a353a22656e2d5553223b7d733a32343a22636f6e6669675f696e69745f64656661756c745f6c616e67223b733a353a227a682d434e223b7d5f5f636170746368612f736974652f61646d696e2f636170746368617c733a343a22766f6b62223b5f5f636170746368612f736974652f61646d696e2f63617074636861636f756e747c693a313b5f5f69647c693a31303b5f5f72657475726e5f75726c5f726f7574657c733a36303a222f747572656e2d636d732f6170702f6261636b656e642f7765622f696e6465782e7068703f723d73697465253246686f6d6525324664656661756c74223b),
('aglj2n4u8bvl5veph1ut6l2602', NULL, '', 1, 1577944553, 0x5f5f666c6173687c613a303a7b7d5f5f696e69745f706172616d737c613a323a7b733a31373a22636f6e6669675f696e69745f6c616e6773223b613a323a7b693a303b733a353a227a682d434e223b693a313b733a353a22656e2d5553223b7d733a32343a22636f6e6669675f696e69745f64656661756c745f6c616e67223b733a353a227a682d434e223b7d5f5f636170746368612f736974652f61646d696e2f636170746368617c733a343a22766c6275223b5f5f636170746368612f736974652f61646d696e2f63617074636861636f756e747c693a313b),
('c88sq46aunmhf8goll000eteso', NULL, '', 1, 1577937404, 0x5f5f666c6173687c613a303a7b7d5f5f696e69745f706172616d737c613a323a7b733a31373a22636f6e6669675f696e69745f6c616e6773223b613a323a7b693a303b733a353a227a682d434e223b693a313b733a353a22656e2d5553223b7d733a32343a22636f6e6669675f696e69745f64656661756c745f6c616e67223b733a353a227a682d434e223b7d5f5f72657475726e5f75726c7c733a32363a22687474703a2f2f61646d696e2e686279617169616f2e636f6d2f223b),
('db9e1hc8g5qju8nfml7ejk12ba', NULL, '', 1, 1577937406, 0x5f5f666c6173687c613a303a7b7d5f5f696e69745f706172616d737c613a323a7b733a31373a22636f6e6669675f696e69745f6c616e6773223b613a323a7b693a303b733a353a227a682d434e223b693a313b733a353a22656e2d5553223b7d733a32343a22636f6e6669675f696e69745f64656661756c745f6c616e67223b733a353a227a682d434e223b7d5f5f72657475726e5f75726c7c733a32363a22687474703a2f2f61646d696e2e686279617169616f2e636f6d2f223b),
('ertobe9hoa5bmi2nks36js48ut', NULL, '', 1, 1577937413, 0x5f5f666c6173687c613a303a7b7d5f5f696e69745f706172616d737c613a323a7b733a31373a22636f6e6669675f696e69745f6c616e6773223b613a323a7b693a303b733a353a227a682d434e223b693a313b733a353a22656e2d5553223b7d733a32343a22636f6e6669675f696e69745f64656661756c745f6c616e67223b733a353a227a682d434e223b7d5f5f636170746368612f736974652f61646d696e2f636170746368617c733a343a226875706f223b5f5f636170746368612f736974652f61646d696e2f63617074636861636f756e747c693a313b),
('fj6e67lciqum3irhfirupg7a49', NULL, '', 1, 1576996504, 0x5f5f666c6173687c613a303a7b7d5f5f696e69745f706172616d737c613a323a7b733a31373a22636f6e6669675f696e69745f6c616e6773223b613a323a7b693a303b733a353a227a682d434e223b693a313b733a353a22656e2d5553223b7d733a32343a22636f6e6669675f696e69745f64656661756c745f6c616e67223b733a353a227a682d434e223b7d5f5f69647c693a31303b5f5f72657475726e5f75726c5f726f7574657c733a33353a222f696e6465782e7068703f723d737973253246636f6e66696725324673657474696e67223b),
('g11ctlg8ilim208v3ascc284h6', NULL, '', 1, 1577944553, 0x5f5f666c6173687c613a303a7b7d5f5f696e69745f706172616d737c613a323a7b733a31373a22636f6e6669675f696e69745f6c616e6773223b613a323a7b693a303b733a353a227a682d434e223b693a313b733a353a22656e2d5553223b7d733a32343a22636f6e6669675f696e69745f64656661756c745f6c616e67223b733a353a227a682d434e223b7d5f5f72657475726e5f75726c7c733a32363a22687474703a2f2f61646d696e2e686279617169616f2e636f6d2f223b),
('g4v647bg9n64rg1e1ovkn0vknl', NULL, '', 1, 1579516658, 0x5f5f666c6173687c613a303a7b7d5f5f696e69745f706172616d737c613a323a7b733a31373a22636f6e6669675f696e69745f6c616e6773223b613a323a7b693a303b733a353a227a682d434e223b693a313b733a353a22656e2d5553223b7d733a32343a22636f6e6669675f696e69745f64656661756c745f6c616e67223b733a353a227a682d434e223b7d5f5f636170746368612f736974652f61646d696e2f636170746368617c733a343a2262756861223b5f5f636170746368612f736974652f61646d696e2f63617074636861636f756e747c693a313b),
('h9m1n6s9riihkacd98p2qnchpf', NULL, '', 1, 1578456260, 0x5f5f666c6173687c613a303a7b7d5f5f696e69745f706172616d737c613a323a7b733a31373a22636f6e6669675f696e69745f6c616e6773223b613a323a7b693a303b733a353a227a682d434e223b693a313b733a353a22656e2d5553223b7d733a32343a22636f6e6669675f696e69745f64656661756c745f6c616e67223b733a353a227a682d434e223b7d5f5f636170746368612f736974652f61646d696e2f636170746368617c733a343a2263756375223b5f5f636170746368612f736974652f61646d696e2f63617074636861636f756e747c693a313b),
('ikrmr40ge7bk9d2fkcmvp7snhh', NULL, '', 1, 1577937413, 0x5f5f666c6173687c613a303a7b7d5f5f696e69745f706172616d737c613a323a7b733a31373a22636f6e6669675f696e69745f6c616e6773223b613a323a7b693a303b733a353a227a682d434e223b693a313b733a353a22656e2d5553223b7d733a32343a22636f6e6669675f696e69745f64656661756c745f6c616e67223b733a353a227a682d434e223b7d5f5f72657475726e5f75726c7c733a33333a22687474703a2f2f61646d696e2e686279617169616f2e636f6d2f6164732e747874223b),
('kiltcj0u0ve99kigc54vn4kq9p', NULL, '', 1, 1577944555, 0x5f5f666c6173687c613a303a7b7d5f5f696e69745f706172616d737c613a323a7b733a31373a22636f6e6669675f696e69745f6c616e6773223b613a323a7b693a303b733a353a227a682d434e223b693a313b733a353a22656e2d5553223b7d733a32343a22636f6e6669675f696e69745f64656661756c745f6c616e67223b733a353a227a682d434e223b7d5f5f636170746368612f736974652f61646d696e2f636170746368617c733a343a22686f6a65223b5f5f636170746368612f736974652f61646d696e2f63617074636861636f756e747c693a313b),
('m4nlskfk276v41thjgfejbmbb6', NULL, '', 1, 1577937408, 0x5f5f666c6173687c613a303a7b7d5f5f696e69745f706172616d737c613a323a7b733a31373a22636f6e6669675f696e69745f6c616e6773223b613a323a7b693a303b733a353a227a682d434e223b693a313b733a353a22656e2d5553223b7d733a32343a22636f6e6669675f696e69745f64656661756c745f6c616e67223b733a353a227a682d434e223b7d5f5f636170746368612f736974652f61646d696e2f636170746368617c733a343a2271616674223b5f5f636170746368612f736974652f61646d696e2f63617074636861636f756e747c693a313b),
('n6cbnaop6gr40d9ni32dpt5tj4', NULL, '', 1, 1578456258, 0x5f5f666c6173687c613a303a7b7d5f5f696e69745f706172616d737c613a323a7b733a31373a22636f6e6669675f696e69745f6c616e6773223b613a323a7b693a303b733a353a227a682d434e223b693a313b733a353a22656e2d5553223b7d733a32343a22636f6e6669675f696e69745f64656661756c745f6c616e67223b733a353a227a682d434e223b7d5f5f72657475726e5f75726c7c733a32363a22687474703a2f2f61646d696e2e686279617169616f2e636f6d2f223b),
('o5mo48kjp0994bhi4nvhbcs4kq', NULL, '', 1, 1579516658, 0x5f5f666c6173687c613a303a7b7d5f5f696e69745f706172616d737c613a323a7b733a31373a22636f6e6669675f696e69745f6c616e6773223b613a323a7b693a303b733a353a227a682d434e223b693a313b733a353a22656e2d5553223b7d733a32343a22636f6e6669675f696e69745f64656661756c745f6c616e67223b733a353a227a682d434e223b7d5f5f72657475726e5f75726c7c733a32363a22687474703a2f2f61646d696e2e686279617169616f2e636f6d2f223b),
('p9ussmo8afmto10jjr895bmg0e', NULL, '', 1, 1576996497, 0x5f5f666c6173687c613a303a7b7d5f5f696e69745f706172616d737c613a323a7b733a31373a22636f6e6669675f696e69745f6c616e6773223b613a323a7b693a303b733a353a227a682d434e223b693a313b733a353a22656e2d5553223b7d733a32343a22636f6e6669675f696e69745f64656661756c745f6c616e67223b733a353a227a682d434e223b7d5f5f69647c693a31303b5f5f72657475726e5f75726c5f726f7574657c733a33353a222f696e6465782e7068703f723d737973253246636f6e66696725324673657474696e67223b),
('pm7koj5r5mkg5h0h8fu71gd6b7', NULL, '', 1, 1580777804, 0x5f5f666c6173687c613a303a7b7d5f5f696e69745f706172616d737c613a323a7b733a31373a22636f6e6669675f696e69745f6c616e6773223b613a323a7b693a303b733a353a227a682d434e223b693a313b733a353a22656e2d5553223b7d733a32343a22636f6e6669675f696e69745f64656661756c745f6c616e67223b733a353a227a682d434e223b7d5f5f72657475726e5f75726c7c733a32363a22687474703a2f2f61646d696e2e686279617169616f2e636f6d2f223b5f5f636170746368612f736974652f61646d696e2f636170746368617c733a343a22776f7469223b5f5f636170746368612f736974652f61646d696e2f63617074636861636f756e747c693a313b),
('v2aq9t0bvoh4b0fbu88hejnj60', NULL, '', 1, 1578456259, 0x5f5f666c6173687c613a303a7b7d5f5f696e69745f706172616d737c613a323a7b733a31373a22636f6e6669675f696e69745f6c616e6773223b613a323a7b693a303b733a353a227a682d434e223b693a313b733a353a22656e2d5553223b7d733a32343a22636f6e6669675f696e69745f64656661756c745f6c616e67223b733a353a227a682d434e223b7d5f5f636170746368612f736974652f61646d696e2f636170746368617c733a343a22666c6e75223b5f5f636170746368612f736974652f61646d696e2f63617074636861636f756e747c693a313b),
('vcg7u6hkuafi67eod02d8tm984', NULL, '', 1, 1577937405, 0x5f5f666c6173687c613a303a7b7d5f5f696e69745f706172616d737c613a323a7b733a31373a22636f6e6669675f696e69745f6c616e6773223b613a323a7b693a303b733a353a227a682d434e223b693a313b733a353a22656e2d5553223b7d733a32343a22636f6e6669675f696e69745f64656661756c745f6c616e67223b733a353a227a682d434e223b7d5f5f636170746368612f736974652f61646d696e2f636170746368617c733a343a227a657165223b5f5f636170746368612f736974652f61646d696e2f63617074636861636f756e747c693a313b);

-- --------------------------------------------------------

--
-- Table structure for table `ss_shop_attribute`
--

CREATE TABLE `ss_shop_attribute` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '商品属性id',
  `pcateid` int(11) UNSIGNED DEFAULT NULL COMMENT '所属分类',
  `attrname` varchar(30) NOT NULL DEFAULT '' COMMENT '属性名称',
  `type` varchar(12) NOT NULL DEFAULT 'text' COMMENT '值有：text、select、checkbox、radio',
  `typetext` varchar(255) NOT NULL DEFAULT '' COMMENT '默认可选值',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '审核状态',
  `lang` varchar(8) NOT NULL DEFAULT '' COMMENT '多语言',
  `orderid` int(11) UNSIGNED NOT NULL DEFAULT '10' COMMENT '排列排序',
  `created_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '添加时间',
  `updated_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '编辑时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品属性表';

--
-- Dumping data for table `ss_shop_attribute`
--

INSERT INTO `ss_shop_attribute` (`id`, `pcateid`, `attrname`, `type`, `typetext`, `status`, `lang`, `orderid`, `created_at`, `updated_at`) VALUES
(17, 36, '机身颜色', 'select', '红色|绿色|蓝色|白色|黑色|透明', 1, 'zh-CN', 10, 1539528575, 1540030538),
(18, 36, '商品产地', 'text', '深圳市', 1, 'zh-CN', 11, 1539528578, 1540030429),
(19, 34, 'fff', 'text', 'dddddd', 1, 'zh-CN', 12, 1539529314, 1539529314),
(20, 36, '是否税', 'radio', '完税|未税', 1, 'zh-CN', 13, 1540028523, 1540034737),
(21, 36, '产品特点', 'checkbox', '通用性|男女通用|自动伸缩|智能记录', 1, 'zh-CN', 14, 1540028991, 1540030885),
(22, 36, '机身厚度', 'text', '', 1, 'zh-CN', 15, 1540030525, 1540030624),
(23, 36, '运行内存', 'select', '2G|3G|4G|6G|8G|10G', 1, 'zh-CN', 16, 1540030580, 1540030580);

-- --------------------------------------------------------

--
-- Table structure for table `ss_shop_brand`
--

CREATE TABLE `ss_shop_brand` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '品牌id',
  `bname` varchar(30) NOT NULL DEFAULT '' COMMENT '品牌名称',
  `slug` varchar(200) NOT NULL DEFAULT '' COMMENT '访问链接',
  `picurl` varchar(100) NOT NULL DEFAULT '' COMMENT '品牌图片',
  `bnote` text COMMENT '品牌介绍',
  `linkurl` varchar(255) NOT NULL DEFAULT '' COMMENT '跳转链接',
  `orderid` int(11) UNSIGNED NOT NULL DEFAULT '10' COMMENT '排列排序',
  `lang` varchar(8) NOT NULL DEFAULT '' COMMENT '多语言',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '审核状态',
  `created_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '添加时间',
  `updated_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '编辑时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品品牌表';

--
-- Dumping data for table `ss_shop_brand`
--

INSERT INTO `ss_shop_brand` (`id`, `bname`, `slug`, `picurl`, `bnote`, `linkurl`, `orderid`, `lang`, `status`, `created_at`, `updated_at`) VALUES
(4, '亚桥租赁', 'yaqiao-zulin', 'cms-images/brand/2019_10_09/e9f666f46fa00b265e40a0f01ec65259==368x100.png', '<p>品牌介绍</p>', '', 10, 'zh-CN', 1, 1545722467, 1570628333);

-- --------------------------------------------------------

--
-- Table structure for table `ss_shop_getmode`
--

CREATE TABLE `ss_shop_getmode` (
  `id` smallint(5) UNSIGNED NOT NULL COMMENT '货到方式id',
  `classname` varchar(30) NOT NULL DEFAULT '' COMMENT '货到方式名称',
  `orderid` smallint(5) UNSIGNED NOT NULL DEFAULT '10' COMMENT '排列排序',
  `checkinfo` enum('true','false') NOT NULL COMMENT '审核状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配送方式表';

--
-- Dumping data for table `ss_shop_getmode`
--

INSERT INTO `ss_shop_getmode` (`id`, `classname`, `orderid`, `checkinfo`) VALUES
(1, '送货上门', 1, 'true'),
(2, '用户自取', 2, 'true');

-- --------------------------------------------------------

--
-- Table structure for table `ss_shop_order`
--

CREATE TABLE `ss_shop_order` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '商品订单id',
  `username` varchar(30) NOT NULL DEFAULT '' COMMENT '会员用户名',
  `attrstr` text COMMENT '商品列表',
  `truename` varchar(30) NOT NULL DEFAULT '' COMMENT '收货人姓名',
  `telephone` varchar(30) NOT NULL DEFAULT '' COMMENT '电话',
  `idcard` varchar(30) NOT NULL DEFAULT '' COMMENT '证件号码',
  `zipcode` varchar(30) NOT NULL DEFAULT '' COMMENT '邮编',
  `postarea_prov` varchar(10) NOT NULL DEFAULT '' COMMENT '配送地区_省',
  `postarea_city` varchar(10) NOT NULL DEFAULT '' COMMENT '配送地区_市',
  `postarea_country` varchar(10) NOT NULL DEFAULT '' COMMENT '配送地区_县',
  `address` varchar(80) NOT NULL DEFAULT '' COMMENT '地址',
  `postmode` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT '配送方式',
  `paymode` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT '支付方式',
  `getmode` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT '货到方式',
  `ordernum` varchar(30) NOT NULL DEFAULT '' COMMENT '订单号',
  `postid` varchar(30) NOT NULL DEFAULT '' COMMENT '运单号',
  `weight` varchar(10) NOT NULL DEFAULT '' COMMENT '物品重量',
  `cost` varchar(10) NOT NULL DEFAULT '' COMMENT '商品运费',
  `amount` varchar(10) NOT NULL DEFAULT '' COMMENT '订单金额',
  `integral` int(8) UNSIGNED NOT NULL DEFAULT '0' COMMENT '积分点数',
  `buyremark` text COMMENT '购物备注',
  `sendremark` text COMMENT '发货方备注',
  `posttime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '订单时间',
  `orderid` int(11) UNSIGNED NOT NULL DEFAULT '10' COMMENT '排列排序',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '审核状态',
  `core` set('true') NOT NULL COMMENT '是否加星',
  `delstate` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '删除状态',
  `deltime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '删除时间',
  `created_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '添加时间',
  `updated_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '编辑时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品订单表';

-- --------------------------------------------------------

--
-- Table structure for table `ss_shop_payment`
--

CREATE TABLE `ss_shop_payment` (
  `pay_id` smallint(5) UNSIGNED NOT NULL COMMENT '支付方式id',
  `pay_name` varchar(30) NOT NULL COMMENT '支付方式名称',
  `orderid` smallint(5) UNSIGNED NOT NULL COMMENT '排列排序',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '审核状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='支付方式表';

--
-- Dumping data for table `ss_shop_payment`
--

INSERT INTO `ss_shop_payment` (`pay_id`, `pay_name`, `orderid`, `status`) VALUES
(1, '在线支付', 1, 1),
(2, '货到付款', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ss_shop_product`
--

CREATE TABLE `ss_shop_product` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '商品id',
  `columnid` int(11) UNSIGNED NOT NULL COMMENT '所属栏目',
  `pcateid` int(11) UNSIGNED NOT NULL COMMENT '产品分类id',
  `pcatepid` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '产品分类父id',
  `pcatepstr` varchar(80) NOT NULL DEFAULT '' COMMENT '所有产品分类的上级id字符串',
  `attrtext` text COMMENT '属性json值',
  `brand_id` int(11) UNSIGNED NOT NULL COMMENT '商品品牌id',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '商品名称',
  `slug` varchar(200) NOT NULL DEFAULT '' COMMENT '访问链接',
  `colorval` char(10) NOT NULL DEFAULT '' COMMENT '标题颜色',
  `boldval` char(10) NOT NULL DEFAULT '' COMMENT '标题加粗',
  `subtitle` varchar(150) DEFAULT '' COMMENT '副标题',
  `keywords` varchar(30) NOT NULL DEFAULT '' COMMENT '关键词',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '摘要',
  `flag` varchar(30) DEFAULT NULL COMMENT '属性',
  `sku` varchar(100) NOT NULL DEFAULT '' COMMENT '产品SKU',
  `product_sn` varchar(30) NOT NULL DEFAULT '' COMMENT '货号',
  `weight` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '重量',
  `market_price` float(10,2) NOT NULL DEFAULT '0.00' COMMENT '市场价格',
  `sales_price` float(10,2) NOT NULL DEFAULT '0.00' COMMENT '销售价格',
  `is_promote` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否促销',
  `promote_price` decimal(10,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT '促销价',
  `promote_start_date` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '促销开始日期',
  `promote_end_date` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '促销结束日期',
  `stock` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT '库存数量',
  `warn_num` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT '警告数量，如果为0则不警告',
  `is_shipping` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '是否配送',
  `point` int(8) NOT NULL DEFAULT '0' COMMENT '返点积分',
  `linkurl` varchar(255) NOT NULL DEFAULT '' COMMENT '跳转链接',
  `content` mediumtext COMMENT '详细内容',
  `picurl` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图片',
  `picarr` text COMMENT '组图',
  `is_best` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '最爱',
  `is_new` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '新品',
  `is_hot` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '最热',
  `hits` int(11) UNSIGNED NOT NULL DEFAULT '100' COMMENT '点击次数',
  `author` varchar(20) NOT NULL DEFAULT '' COMMENT '上传者',
  `orderid` int(11) UNSIGNED NOT NULL DEFAULT '10' COMMENT '排列排序',
  `posttime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '上架时间',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '上下架状态',
  `delstate` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '删除状态',
  `deltime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '删除时间',
  `lang` varchar(8) NOT NULL DEFAULT '' COMMENT '多语言',
  `created_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '添加时间',
  `updated_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '编辑时间',
  `diyfield_service_item` mediumtext,
  `diyfield_service_price` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品表';

--
-- Dumping data for table `ss_shop_product`
--

INSERT INTO `ss_shop_product` (`id`, `columnid`, `pcateid`, `pcatepid`, `pcatepstr`, `attrtext`, `brand_id`, `title`, `slug`, `colorval`, `boldval`, `subtitle`, `keywords`, `description`, `flag`, `sku`, `product_sn`, `weight`, `market_price`, `sales_price`, `is_promote`, `promote_price`, `promote_start_date`, `promote_end_date`, `stock`, `warn_num`, `is_shipping`, `point`, `linkurl`, `content`, `picurl`, `picarr`, `is_best`, `is_new`, `is_hot`, `hits`, `author`, `orderid`, `posttime`, `status`, `delstate`, `deltime`, `lang`, `created_at`, `updated_at`, `diyfield_service_item`, `diyfield_service_price`) VALUES
(4, 67, 37, 0, '0,', '', 4, '路灯维修', 'lu-deng-wei-xiu', '', '', '车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车', '居民搬家关键词测试', '车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车，路灯维修', '', '', '', '0.00', 0.00, 100.00, 0, '0.00', 1546531200, 1546531200, 10, 0, 1, 0, '', '<p>添加</p>', 'cms-images/product/2019_11_17/49b23be669d24c54e28900a92fe31d4e==570x400.jpg', '', 0, 0, 0, 315, '', 200, 1570021786, 1, 0, 0, 'zh-CN', 1546595772, 1574592079, '<p><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-size: 14px;\">当前业务：<strong><em>路灯维修</em></strong></span></span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">1、专业承接武汉/黄石/十堰/宜昌/襄阳/鄂州/随州/孝感/咸宁/黄冈/荆门/荆州/<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">长沙/<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">益阳/南昌及周边</span></span>地区！</span></p><p><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-size: 14px;\">2、提供直臂车载式升降车、曲臂车载式升降车、剪叉式高空作业平台、直臂式高空作业车、蜘蛛式高空作业平台、铝合金升降机、曲臂自行式升降车、直臂自行式升降车等特殊车辆。</span></span></p><p><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-size: 14px;\">3、作业范围包括但不限于<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">LED灯安装、厂房检测、广告安装、桥梁检修、高空拍摄、太阳能安装、外墙油漆粉刷、外墙玻璃清洗、会展布景、电力安装、升旗安装、绿化修剪、监控设备安装、隧道检测、同时兼营路灯维修、庭院灯维修等，更多应用场景持续开发中。</span></span></span></p>', '<p style=\"text-align: left;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">1、高空车种类较多，我司提供：车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车等。</span></p><p style=\"text-align: left;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">2、因其适应性好，方便灵活，作业范围广泛，可满足不同客户的需求，如：工程建设、厂房施工、厂房维护、市政、电力、路灯、通讯、园林、交通、工矿、工业安装、设备检修、立体仓库、影视广告的制作拍摄、高空管路的铺设、各种场馆的物业维护、高架桥梁的建造和涂装等各种需要登高作业的场合。</span></p><p style=\"text-align: left;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><strong><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">报价因场景不同差异较大，需要客服与客户沟通做方案，暂不提供在线报价表。谢谢体谅！</span></strong></span></p><p><br/></p>'),
(5, 67, 37, 0, '0,', '', 4, '外墙粉刷', 'wai-qiang-fen-shua', '', '', '车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车', '', '车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车，外墙粉刷', '', '', '', '0.00', 200.00, 100.00, 0, '0.00', 1546531200, 1546531200, 10, 0, 1, 0, '', '<p>后台添加</p>', 'cms-images/product/2019_11_17/db9555a4971e89794ede47849d1dacc8==570x380.jpg', '', 0, 0, 0, 1393, '', 190, 1490670181, 1, 0, 1554010881, 'zh-CN', 1546595772, 1574592087, '<p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">当前业务：</span><strong style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal;\"><em>外墙粉刷</em></strong></span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">1、专业承接武汉/黄石/十堰/宜昌/襄阳/鄂州/随州/孝感/咸宁/黄冈/荆门/荆州/<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">长沙/<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">益阳/南昌及周边</span></span>地区！</span></p><p><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-size: 14px;\">2、提供直臂车载式升降车、曲臂车载式升降车、剪叉式高空作业平台、直臂式高空作业车、蜘蛛式高空作业平台、铝合金升降机、曲臂自行式升降车、直臂自行式升降车等特殊车辆。</span></span></p><p><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-size: 14px;\">3、作业范围包括但不限于<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">LED灯安装、厂房检测、广告安装、桥梁检修、高空拍摄、太阳能安装、外墙油漆粉刷、外墙玻璃清洗、会展布景、电力安装、升旗安装、绿化修剪、监控设备安装、隧道检测、同时兼营路灯维修、庭院灯维修等，更多应用场景持续开发中。</span></span></span></p>', '<p style=\"text-align: left;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">1、高空车种类较多，我司提供：车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车等。</span></p><p style=\"text-align: left;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">2、因其适应性好，方便灵活，作业范围广泛，可满足不同客户的需求，如：工程建设、厂房施工、厂房维护、市政、电力、路灯、通讯、园林、交通、工矿、工业安装、设备检修、立体仓库、影视广告的制作拍摄、高空管路的铺设、各种场馆的物业维护、高架桥梁的建造和涂装等各种需要登高作业的场合。</span></p><p style=\"text-align: left;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><strong><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">报价因场景不同差异较大，需要客服与客户沟通做方案，暂不提供在线报价表。谢谢体谅！</span></strong></span></p><p><br/></p>'),
(6, 67, 37, 0, '0,', '', 4, '机场/火车站', 'ji-changhuo-che-zhan', '', '', '车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车', '', '车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车，机场/火车站', '', '', '', '0.00', 0.00, 100.00, 0, '0.00', 1546531200, 1546531200, 10, 0, 1, 0, '', '<p>请上传服务详情</p>', 'cms-images/product/2019_11_17/7d4a68f24158edff98c658c9cb8fedc6==570x400.jpg', '', 0, 0, 0, 700, '', 140, 1550562977, 1, 0, 0, 'zh-CN', 1546595772, 1574592160, '<p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\">当前业务：</span><span style=\"margin: 0px; padding: 0px; box-sizing: border-box; font-weight: bolder; color: rgb(102, 102, 102); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\"><em style=\"margin: 0px; padding: 0px; box-sizing: border-box;\"></em></span><em><strong>机场火车站</strong></em></span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">1、专业承接武汉/黄石/十堰/宜昌/襄阳/鄂州/随州/孝感/咸宁/黄冈/荆门/荆州/<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">长沙/<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">益阳/南昌及周边</span></span>地区！</span></p><p><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-size: 14px;\">2、提供直臂车载式升降车、曲臂车载式升降车、剪叉式高空作业平台、直臂式高空作业车、蜘蛛式高空作业平台、铝合金升降机、曲臂自行式升降车、直臂自行式升降车等特殊车辆。</span></span></p><p><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-size: 14px;\">3、作业范围包括但不限于<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">LED灯安装、厂房检测、广告安装、桥梁检修、高空拍摄、太阳能安装、外墙油漆粉刷、外墙玻璃清洗、会展布景、电力安装、升旗安装、绿化修剪、监控设备安装、隧道检测、同时兼营路灯维修、庭院灯维修等，更多应用场景持续开发中。</span></span></span></p>', '<p style=\"text-align: left;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">1、高空车种类较多，我司提供：车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车等。</span></p><p style=\"text-align: left;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">2、因其适应性好，方便灵活，作业范围广泛，可满足不同客户的需求，如：工程建设、厂房施工、厂房维护、市政、电力、路灯、通讯、园林、交通、工矿、工业安装、设备检修、立体仓库、影视广告的制作拍摄、高空管路的铺设、各种场馆的物业维护、高架桥梁的建造和涂装等各种需要登高作业的场合。</span></p><p style=\"text-align: left;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><strong><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">报价因场景不同差异较大，需要客服与客户沟通做方案，暂不提供在线报价表。谢谢体谅！</span></strong></span></p><p><br/></p>'),
(7, 67, 37, 0, '0,', '', 4, '高空广告拍摄', 'gao-kong-guang-gao-pai-she', '', '', '车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车', '', '车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车，高空广告拍摄', '', '', '', '0.00', 0.00, 100.00, 0, '0.00', 1546531200, 1546531200, 10, 0, 1, 0, '', '<p>请上传服务详情</p>', 'cms-images/product/2019_11_17/2704497154b2c1f589e13fd643664a2e==570x400.gif', '', 0, 0, 0, 570, '', 110, 1553003223, 1, 0, 0, 'zh-CN', 1546595772, 1574592174, '<p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\">当前业务：</span><span style=\"margin: 0px; padding: 0px; box-sizing: border-box; font-weight: bolder; color: rgb(102, 102, 102); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\"><em style=\"margin: 0px; padding: 0px; box-sizing: border-box;\"></em></span><em><strong>高空广告拍摄</strong></em></span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">1、专业承接武汉/黄石/十堰/宜昌/襄阳/鄂州/随州/孝感/咸宁/黄冈/荆门/荆州/<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">长沙/<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">益阳/南昌及周边</span></span>地区！</span></p><p><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-size: 14px;\">2、提供直臂车载式升降车、曲臂车载式升降车、剪叉式高空作业平台、直臂式高空作业车、蜘蛛式高空作业平台、铝合金升降机、曲臂自行式升降车、直臂自行式升降车等特殊车辆。</span></span></p><p><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-size: 14px;\">3、作业范围包括但不限于<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">LED灯安装、厂房检测、广告安装、桥梁检修、高空拍摄、太阳能安装、外墙油漆粉刷、外墙玻璃清洗、会展布景、电力安装、升旗安装、绿化修剪、监控设备安装、隧道检测、同时兼营路灯维修、庭院灯维修等，更多应用场景持续开发中。</span></span></span></p>', '<p style=\"text-align: left;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">1、高空车种类较多，我司提供：车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车等。</span></p><p style=\"text-align: left;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">2、因其适应性好，方便灵活，作业范围广泛，可满足不同客户的需求，如：工程建设、厂房施工、厂房维护、市政、电力、路灯、通讯、园林、交通、工矿、工业安装、设备检修、立体仓库、影视广告的制作拍摄、高空管路的铺设、各种场馆的物业维护、高架桥梁的建造和涂装等各种需要登高作业的场合。</span></p><p style=\"text-align: left;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><strong><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">报价因场景不同差异较大，需要客服与客户沟通做方案，暂不提供在线报价表。谢谢体谅！</span></strong></span></p><p><br/></p>'),
(8, 67, 37, 0, '0,', '', 4, '幕墙安装与清洗', 'mu-qiang-an-zhuang-yu-qing-xi', '', '', '车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车', '', '车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车，幕墙安装与清洗', '', '', '', '0.00', 0.00, 100.00, 0, '0.00', 1546531200, 1546531200, 10, 0, 1, 0, '', '<p>请上传服务详情</p>', 'cms-images/product/2019_11_17/e5991e6d8f42fe44cb4648f6724f1fd7==570x400.jpg', '', 0, 0, 0, 1471, '', 100, 1487736621, 1, 0, 0, 'zh-CN', 1546595772, 1574592172, '<p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\">当前业务：</span></span><em><strong style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">幕墙安装与清洗</strong></em></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">1、专业承接武汉/黄石/十堰/宜昌/襄阳/鄂州/随州/孝感/咸宁/黄冈/荆门/荆州/<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">长沙/<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">益阳/南昌及周边</span></span>地区！</span></p><p><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-size: 14px;\">2、提供直臂车载式升降车、曲臂车载式升降车、剪叉式高空作业平台、直臂式高空作业车、蜘蛛式高空作业平台、铝合金升降机、曲臂自行式升降车、直臂自行式升降车等特殊车辆。</span></span></p><p><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-size: 14px;\">3、作业范围包括但不限于<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">LED灯安装、厂房检测、广告安装、桥梁检修、高空拍摄、太阳能安装、外墙油漆粉刷、外墙玻璃清洗、会展布景、电力安装、升旗安装、绿化修剪、监控设备安装、隧道检测、同时兼营路灯维修、庭院灯维修等，更多应用场景持续开发中。</span></span></span></p>', '<p style=\"text-align: left;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">1、高空车种类较多，我司提供：车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车等。</span></p><p style=\"text-align: left;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">2、因其适应性好，方便灵活，作业范围广泛，可满足不同客户的需求，如：工程建设、厂房施工、厂房维护、市政、电力、路灯、通讯、园林、交通、工矿、工业安装、设备检修、立体仓库、影视广告的制作拍摄、高空管路的铺设、各种场馆的物业维护、高架桥梁的建造和涂装等各种需要登高作业的场合。</span></p><p style=\"text-align: left;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><strong><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">报价因场景不同差异较大，需要客服与客户沟通做方案，暂不提供在线报价表。谢谢体谅！</span></strong></span></p><p><br/></p>'),
(9, 67, 37, 0, '0,', '', 4, '电子厂房', 'dian-zi-chang-fang', '', '', '车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车', '', '车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车，电子厂房', '置首', '', '', '0.00', 0.00, 100.00, 0, '0.00', 1546531200, 1546531200, 10, 0, 1, 0, '', '<p>请上传服务详情</p>', 'cms-images/product/2019_10_21/763b8a944d30f8f0a4f39195711b27ed==285x190.png', '', 0, 0, 0, 989, '', 150, 1526205478, 1, 0, 0, 'zh-CN', 1546595772, 1574592156, '<p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\">当前业务：</span></span><strong><em>电子厂房</em></strong></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">1、专业承接武汉/黄石/十堰/宜昌/襄阳/鄂州/随州/孝感/咸宁/黄冈/荆门/荆州/<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">长沙/<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">益阳/南昌及周边</span></span>地区！</span></p><p><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-size: 14px;\">2、提供直臂车载式升降车、曲臂车载式升降车、剪叉式高空作业平台、直臂式高空作业车、蜘蛛式高空作业平台、铝合金升降机、曲臂自行式升降车、直臂自行式升降车等特殊车辆。</span></span></p><p><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-size: 14px;\">3、作业范围包括但不限于<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">LED灯安装、厂房检测、广告安装、桥梁检修、高空拍摄、太阳能安装、外墙油漆粉刷、外墙玻璃清洗、会展布景、电力安装、升旗安装、绿化修剪、监控设备安装、隧道检测、同时兼营路灯维修、庭院灯维修等，更多应用场景持续开发中。</span></span></span></p>', '<p style=\"text-align: left;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">1、高空车种类较多，我司提供：车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车等。</span></p><p style=\"text-align: left;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">2、因其适应性好，方便灵活，作业范围广泛，可满足不同客户的需求，如：工程建设、厂房施工、厂房维护、市政、电力、路灯、通讯、园林、交通、工矿、工业安装、设备检修、立体仓库、影视广告的制作拍摄、高空管路的铺设、各种场馆的物业维护、高架桥梁的建造和涂装等各种需要登高作业的场合。</span></p><p style=\"text-align: left;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><strong><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">报价因场景不同差异较大，需要客服与客户沟通做方案，暂不提供在线报价表。谢谢体谅！</span></strong></span></p><p><br/></p>'),
(10, 67, 37, 0, '0,', '', 4, '汽车厂房', 'qi-che-chang-fang', '', '', '车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车', '', '车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车，汽车厂房', '', '', '', '0.00', 0.00, 100.00, 0, '0.00', 1546531200, 1546531200, 10, 0, 1, 0, '', '<p>请上传服务详情</p>', 'cms-images/product/2019_11_17/5ac92d657877c57158832d78f6e14174==570x400.jpg', '', 0, 0, 0, 858, '', 90, 1551356513, 1, 0, 0, 'zh-CN', 1546595772, 1574592169, '<p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\">当前业务：</span><span style=\"margin: 0px; padding: 0px; box-sizing: border-box; font-weight: bolder; color: rgb(102, 102, 102); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\"><em style=\"margin: 0px; padding: 0px; box-sizing: border-box;\"></em></span><em><strong>汽车厂房</strong></em></span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">1、专业承接武汉/黄石/十堰/宜昌/襄阳/鄂州/随州/孝感/咸宁/黄冈/荆门/荆州/<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">长沙/<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">益阳/南昌及周边</span></span>地区！</span></p><p><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-size: 14px;\">2、提供直臂车载式升降车、曲臂车载式升降车、剪叉式高空作业平台、直臂式高空作业车、蜘蛛式高空作业平台、铝合金升降机、曲臂自行式升降车、直臂自行式升降车等特殊车辆。</span></span></p><p><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-size: 14px;\">3、作业范围包括但不限于<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">LED灯安装、厂房检测、广告安装、桥梁检修、高空拍摄、太阳能安装、外墙油漆粉刷、外墙玻璃清洗、会展布景、电力安装、升旗安装、绿化修剪、监控设备安装、隧道检测、同时兼营路灯维修、庭院灯维修等，更多应用场景持续开发中。</span></span></span></p>', '<p style=\"text-align: left;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">1、高空车种类较多，我司提供：车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车等。</span></p><p style=\"text-align: left;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">2、因其适应性好，方便灵活，作业范围广泛，可满足不同客户的需求，如：工程建设、厂房施工、厂房维护、市政、电力、路灯、通讯、园林、交通、工矿、工业安装、设备检修、立体仓库、影视广告的制作拍摄、高空管路的铺设、各种场馆的物业维护、高架桥梁的建造和涂装等各种需要登高作业的场合。</span></p><p style=\"text-align: left;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><strong><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">报价因场景不同差异较大，需要客服与客户沟通做方案，暂不提供在线报价表。谢谢体谅！</span></strong></span></p><p><br/></p>'),
(11, 67, 37, 0, '0,', '', 4, '机场检修', 'ji-chang-jian-xiu', '', '', '车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车', '', '车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车，机场检修', '置首', '', '', '0.00', 0.00, 100.00, 0, '0.00', 1546531200, 1546531200, 10, 0, 1, 0, '', '<p>请上传服务详情</p>', 'cms-images/product/2019_10_21/35d7f99aed562587144844022b73010c==285x190.png', '', 0, 0, 0, 360, '', 155, 1568207242, 1, 0, 0, 'zh-CN', 1546595772, 1574592152, '<p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\">当前业务：</span><span style=\"margin: 0px; padding: 0px; box-sizing: border-box; font-weight: bolder; color: rgb(102, 102, 102); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\"><em style=\"margin: 0px; padding: 0px; box-sizing: border-box;\"></em></span><em><strong>机场检修</strong></em></span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">1、专业承接武汉/黄石/十堰/宜昌/襄阳/鄂州/随州/孝感/咸宁/黄冈/荆门/荆州/<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">长沙/<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">益阳/南昌及周边</span></span>地区！</span></p><p><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-size: 14px;\">2、提供直臂车载式升降车、曲臂车载式升降车、剪叉式高空作业平台、直臂式高空作业车、蜘蛛式高空作业平台、铝合金升降机、曲臂自行式升降车、直臂自行式升降车等特殊车辆。</span></span></p><p><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-size: 14px;\">3、作业范围包括但不限于<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">LED灯安装、厂房检测、广告安装、桥梁检修、高空拍摄、太阳能安装、外墙油漆粉刷、外墙玻璃清洗、会展布景、电力安装、升旗安装、绿化修剪、监控设备安装、隧道检测、同时兼营路灯维修、庭院灯维修等，更多应用场景持续开发中。</span></span></span></p>', '<p style=\"text-align: left;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">1、高空车种类较多，我司提供：车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车等。</span></p><p style=\"text-align: left;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">2、因其适应性好，方便灵活，作业范围广泛，可满足不同客户的需求，如：工程建设、厂房施工、厂房维护、市政、电力、路灯、通讯、园林、交通、工矿、工业安装、设备检修、立体仓库、影视广告的制作拍摄、高空管路的铺设、各种场馆的物业维护、高架桥梁的建造和涂装等各种需要登高作业的场合。</span></p><p style=\"text-align: left;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><strong><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">报价因场景不同差异较大，需要客服与客户沟通做方案，暂不提供在线报价表。谢谢体谅！</span></strong></span></p><p><br/></p>'),
(12, 67, 37, 0, '0,', '', 4, '风电系统', 'feng-dian-xi-tong', '', '', '车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车', '', '车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车，风电系统', '', '', '', '0.00', 0.00, 100.00, 0, '0.00', 1546531200, 1546531200, 10, 0, 1, 0, '', '<p>请上传服务详情</p>', 'cms-images/product/2019_11_17/e25ffc9848423f1f2626af7ab81de9d8==570x400.jpg', '', 0, 0, 0, 1275, '', 170, 1489563398, 1, 0, 0, 'zh-CN', 1546595772, 1574592092, '<p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\">当前业务：</span><span style=\"margin: 0px; padding: 0px; box-sizing: border-box; font-weight: bolder; color: rgb(102, 102, 102); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\"><em style=\"margin: 0px; padding: 0px; box-sizing: border-box;\">风电系统</em></span></span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">1、专业承接武汉/黄石/十堰/宜昌/襄阳/鄂州/随州/孝感/咸宁/黄冈/荆门/荆州/<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">长沙/<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">益阳/南昌及周边</span></span>地区！</span></p><p><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-size: 14px;\">2、提供直臂车载式升降车、曲臂车载式升降车、剪叉式高空作业平台、直臂式高空作业车、蜘蛛式高空作业平台、铝合金升降机、曲臂自行式升降车、直臂自行式升降车等特殊车辆。</span></span></p><p><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-size: 14px;\">3、作业范围包括但不限于<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">LED灯安装、厂房检测、广告安装、桥梁检修、高空拍摄、太阳能安装、外墙油漆粉刷、外墙玻璃清洗、会展布景、电力安装、升旗安装、绿化修剪、监控设备安装、隧道检测、同时兼营路灯维修、庭院灯维修等，更多应用场景持续开发中。</span></span></span></p>', '<p style=\"text-align: left;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">1、高空车种类较多，我司提供：车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车等。</span></p><p style=\"text-align: left;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">2、因其适应性好，方便灵活，作业范围广泛，可满足不同客户的需求，如：工程建设、厂房施工、厂房维护、市政、电力、路灯、通讯、园林、交通、工矿、工业安装、设备检修、立体仓库、影视广告的制作拍摄、高空管路的铺设、各种场馆的物业维护、高架桥梁的建造和涂装等各种需要登高作业的场合。</span></p><p style=\"text-align: left;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><strong><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">报价因场景不同差异较大，需要客服与客户沟通做方案，暂不提供在线报价表。谢谢体谅！</span></strong></span></p><p><br/></p>'),
(13, 67, 37, 0, '0,', '', 4, '广告安装', 'guang-gao-an-zhuang', '', '', '车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车', '', '车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车，广告安装', '置首,推荐', '', '', '0.00', 0.00, 100.00, 0, '0.00', 1546531200, 1546531200, 10, 0, 1, 0, '', '<p>请上传服务详情</p>', 'cms-images/product/2019_11_17/a2dc56170a8203a176cc07e77ceac6b1==570x400.jpg', '', 0, 0, 0, 1045, '', 120, 1510122929, 1, 0, 0, 'zh-CN', 1546595772, 1574592165, '<p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\">当前业务：</span><span style=\"margin: 0px; padding: 0px; box-sizing: border-box; font-weight: bolder; color: rgb(102, 102, 102); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\"><em style=\"margin: 0px; padding: 0px; box-sizing: border-box;\"></em></span><em><strong>广告安装</strong></em></span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">1、专业承接武汉/黄石/十堰/宜昌/襄阳/鄂州/随州/孝感/咸宁/黄冈/荆门/荆州/<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">长沙/<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">益阳/南昌及周边</span></span>地区！</span></p><p><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-size: 14px;\">2、提供直臂车载式升降车、曲臂车载式升降车、剪叉式高空作业平台、直臂式高空作业车、蜘蛛式高空作业平台、铝合金升降机、曲臂自行式升降车、直臂自行式升降车等特殊车辆。</span></span></p><p><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-size: 14px;\">3、作业范围包括但不限于<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">LED灯安装、厂房检测、广告安装、桥梁检修、高空拍摄、太阳能安装、外墙油漆粉刷、外墙玻璃清洗、会展布景、电力安装、升旗安装、绿化修剪、监控设备安装、隧道检测、同时兼营路灯维修、庭院灯维修等，更多应用场景持续开发中。</span></span></span></p>', '<p style=\"text-align: left;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">1、高空车种类较多，我司提供：车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车等。</span></p><p style=\"text-align: left;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">2、因其适应性好，方便灵活，作业范围广泛，可满足不同客户的需求，如：工程建设、厂房施工、厂房维护、市政、电力、路灯、通讯、园林、交通、工矿、工业安装、设备检修、立体仓库、影视广告的制作拍摄、高空管路的铺设、各种场馆的物业维护、高架桥梁的建造和涂装等各种需要登高作业的场合。</span></p><p style=\"text-align: left;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><strong><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">报价因场景不同差异较大，需要客服与客户沟通做方案，暂不提供在线报价表。谢谢体谅！</span></strong></span></p><p><br/></p>'),
(14, 67, 37, 0, '0,', '', 4, '桥梁维护', 'qiao-liang-wei-hu', '', '', '车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车', '', '车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车，桥梁维护', '置首', '', '', '0.00', 0.00, 100.00, 0, '0.00', 1546531200, 1546531200, 10, 0, 1, 0, '', '<p>请上传服务详情</p>', 'cms-images/product/2019_10_21/ccc610d8648f63f2ee79c512e9ec214a==285x190.jpg', '', 0, 0, 0, 1510, '', 130, 1483745732, 1, 0, 0, 'zh-CN', 1546595772, 1574592163, '<p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\">当前业务：</span><span style=\"margin: 0px; padding: 0px; box-sizing: border-box; font-weight: bolder; color: rgb(102, 102, 102); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\"><em style=\"margin: 0px; padding: 0px; box-sizing: border-box;\"></em></span><em><strong>桥梁维护</strong></em></span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">1、专业承接武汉/黄石/十堰/宜昌/襄阳/鄂州/随州/孝感/咸宁/黄冈/荆门/荆州/<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">长沙/<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">益阳/南昌及周边</span></span>地区！</span></p><p><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-size: 14px;\">2、提供直臂车载式升降车、曲臂车载式升降车、剪叉式高空作业平台、直臂式高空作业车、蜘蛛式高空作业平台、铝合金升降机、曲臂自行式升降车、直臂自行式升降车等特殊车辆。</span></span></p><p><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-size: 14px;\">3、作业范围包括但不限于<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">LED灯安装、厂房检测、广告安装、桥梁检修、高空拍摄、太阳能安装、外墙油漆粉刷、外墙玻璃清洗、会展布景、电力安装、升旗安装、绿化修剪、监控设备安装、隧道检测、同时兼营路灯维修、庭院灯维修等，更多应用场景持续开发中。</span></span></span></p>', '<p style=\"text-align: left;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">1、高空车种类较多，我司提供：车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车等。</span></p><p style=\"text-align: left;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">2、因其适应性好，方便灵活，作业范围广泛，可满足不同客户的需求，如：工程建设、厂房施工、厂房维护、市政、电力、路灯、通讯、园林、交通、工矿、工业安装、设备检修、立体仓库、影视广告的制作拍摄、高空管路的铺设、各种场馆的物业维护、高架桥梁的建造和涂装等各种需要登高作业的场合。</span></p><p style=\"text-align: left;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><strong><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">报价因场景不同差异较大，需要客服与客户沟通做方案，暂不提供在线报价表。谢谢体谅！</span></strong></span></p><p><br/></p>'),
(15, 67, 37, 0, '0,', '', 4, '钢结构安装', 'gang-jie-gou-an-zhuang', '', '', '车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车', '', '车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车，钢结构安装', '置首,推荐', '', '', '0.00', 0.00, 100.00, 0, '0.00', 1546531200, 1546531200, 10, 0, 1, 0, '', '<p>请上传服务详情</p>', 'cms-images/product/2019_10_21/9052d6f0bc4d768e18e532241c361688==285x190.png', '', 0, 0, 0, 950, '', 160, 1505518394, 1, 0, 0, 'zh-CN', 1546595772, 1574592103, '<p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\">当前业务：</span><span style=\"margin: 0px; padding: 0px; box-sizing: border-box; font-weight: bolder; color: rgb(102, 102, 102); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\"><em style=\"margin: 0px; padding: 0px; box-sizing: border-box;\"></em></span><em><strong>钢结构安装</strong></em></span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">1、专业承接武汉/黄石/十堰/宜昌/襄阳/鄂州/随州/孝感/咸宁/黄冈/荆门/荆州/<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">长沙/<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">益阳/南昌及周边</span></span>地区！</span></p><p><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-size: 14px;\">2、提供直臂车载式升降车、曲臂车载式升降车、剪叉式高空作业平台、直臂式高空作业车、蜘蛛式高空作业平台、铝合金升降机、曲臂自行式升降车、直臂自行式升降车等特殊车辆。</span></span></p><p><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-size: 14px;\">3、作业范围包括但不限于<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">LED灯安装、厂房检测、广告安装、桥梁检修、高空拍摄、太阳能安装、外墙油漆粉刷、外墙玻璃清洗、会展布景、电力安装、升旗安装、绿化修剪、监控设备安装、隧道检测、同时兼营路灯维修、庭院灯维修等，更多应用场景持续开发中。</span></span></span></p>', '<p style=\"text-align: left;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">1、高空车种类较多，我司提供：车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车等。</span></p><p style=\"text-align: left;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">2、因其适应性好，方便灵活，作业范围广泛，可满足不同客户的需求，如：工程建设、厂房施工、厂房维护、市政、电力、路灯、通讯、园林、交通、工矿、工业安装、设备检修、立体仓库、影视广告的制作拍摄、高空管路的铺设、各种场馆的物业维护、高架桥梁的建造和涂装等各种需要登高作业的场合。</span></p><p style=\"text-align: left;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><strong><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">报价因场景不同差异较大，需要客服与客户沟通做方案，暂不提供在线报价表。谢谢体谅！</span></strong></span></p><p><br/></p>'),
(16, 67, 37, 0, '0,', '', 4, '楼宇清洁', 'lou-yu-qing-jie', '', '', '车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车', '', '车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车，楼宇清洁', '置首,推荐', '', '', '0.00', 0.00, 100.00, 0, '0.00', 1546531200, 1546531200, 10, 0, 1, 0, '', '<p>请上传服务详情</p>', 'cms-images/product/2019_10_21/c4c8809390df698876a069b0f6d7dab9==285x190.png', '', 0, 0, 0, 234, '', 160, 1572326242, 1, 0, 0, 'zh-CN', 1546595772, 1574592107, '<p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\">当前业务：</span><span style=\"margin: 0px; padding: 0px; box-sizing: border-box; font-weight: bolder; color: rgb(102, 102, 102); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\"><em style=\"margin: 0px; padding: 0px; box-sizing: border-box;\"></em></span><strong><em>楼宇清洁</em></strong></span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">1、专业承接武汉/黄石/十堰/宜昌/襄阳/鄂州/随州/孝感/咸宁/黄冈/荆门/荆州/<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">长沙/<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">益阳/南昌及周边</span></span>地区！</span></p><p><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-size: 14px;\">2、提供直臂车载式升降车、曲臂车载式升降车、剪叉式高空作业平台、直臂式高空作业车、蜘蛛式高空作业平台、铝合金升降机、曲臂自行式升降车、直臂自行式升降车等特殊车辆。</span></span></p><p><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-size: 14px;\">3、作业范围包括但不限于<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">LED灯安装、厂房检测、广告安装、桥梁检修、高空拍摄、太阳能安装、外墙油漆粉刷、外墙玻璃清洗、会展布景、电力安装、升旗安装、绿化修剪、监控设备安装、隧道检测、同时兼营路灯维修、庭院灯维修等，更多应用场景持续开发中。</span></span></span></p>', '<p style=\"text-align: left;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">1、高空车种类较多，我司提供：车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车等。</span></p><p style=\"text-align: left;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">2、因其适应性好，方便灵活，作业范围广泛，可满足不同客户的需求，如：工程建设、厂房施工、厂房维护、市政、电力、路灯、通讯、园林、交通、工矿、工业安装、设备检修、立体仓库、影视广告的制作拍摄、高空管路的铺设、各种场馆的物业维护、高架桥梁的建造和涂装等各种需要登高作业的场合。</span></p><p style=\"text-align: left;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><strong><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">报价因场景不同差异较大，需要客服与客户沟通做方案，暂不提供在线报价表。谢谢体谅！</span></strong></span></p><p><br/></p>'),
(17, 67, 37, 0, '0,', '', 4, '场馆建设', 'chang-guan-jian-she', '', '', '车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车', '', '车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车，场馆建设', '推荐', '', '', '0.00', 0.00, 100.00, 0, '0.00', 1546531200, 1546531200, 10, 0, 1, 0, '', '<p>请上传服务详情</p>', 'cms-images/product/2019_11_17/0e7c13f860a60c1135e5b5efda0ab1d9==570x400.jpg', '', 0, 0, 0, 1048, '', 160, 1506143999, 1, 0, 0, 'zh-CN', 1546595772, 1574592117, '<p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\">当前业务：</span><span style=\"margin: 0px; padding: 0px; box-sizing: border-box; font-weight: bolder; color: rgb(102, 102, 102); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\"><em style=\"margin: 0px; padding: 0px; box-sizing: border-box;\"></em></span><em><strong>场馆建设</strong></em></span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">1、专业承接武汉/黄石/十堰/宜昌/襄阳/鄂州/随州/孝感/咸宁/黄冈/荆门/荆州/<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">长沙/<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">益阳/南昌及周边</span></span>地区！</span></p><p><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-size: 14px;\">2、提供直臂车载式升降车、曲臂车载式升降车、剪叉式高空作业平台、直臂式高空作业车、蜘蛛式高空作业平台、铝合金升降机、曲臂自行式升降车、直臂自行式升降车等特殊车辆。</span></span></p><p><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-size: 14px;\">3、作业范围包括但不限于<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">LED灯安装、厂房检测、广告安装、桥梁检修、高空拍摄、太阳能安装、外墙油漆粉刷、外墙玻璃清洗、会展布景、电力安装、升旗安装、绿化修剪、监控设备安装、隧道检测、同时兼营路灯维修、庭院灯维修等，更多应用场景持续开发中。</span></span></span></p>', '<p style=\"text-align: left;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">1、高空车种类较多，我司提供：车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车等。</span></p><p style=\"text-align: left;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">2、因其适应性好，方便灵活，作业范围广泛，可满足不同客户的需求，如：工程建设、厂房施工、厂房维护、市政、电力、路灯、通讯、园林、交通、工矿、工业安装、设备检修、立体仓库、影视广告的制作拍摄、高空管路的铺设、各种场馆的物业维护、高架桥梁的建造和涂装等各种需要登高作业的场合。</span></p><p style=\"text-align: left;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><strong><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">报价因场景不同差异较大，需要客服与客户沟通做方案，暂不提供在线报价表。谢谢体谅！</span></strong></span></p><p><br/></p>'),
(18, 67, 37, 0, '0,', '', 4, '石化系统', 'shi-hua-xi-tong', '', '', '车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车', '', '车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车，石化系统', '推荐', '', '', '0.00', 0.00, 100.00, 0, '0.00', 1546531200, 1546531200, 10, 0, 1, 0, '', '<p>请上传服务详情</p>', 'cms-images/product/2019_11_17/5ab6f0542a1d1c6f36e3c057fcb58bc1==570x400.jpg', '', 0, 0, 0, 663, '', 160, 1542368313, 1, 0, 0, 'zh-CN', 1546595772, 1574592140, '<p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\">当前业务：</span><span style=\"margin: 0px; padding: 0px; box-sizing: border-box; font-weight: bolder; color: rgb(102, 102, 102); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\"><em style=\"margin: 0px; padding: 0px; box-sizing: border-box;\"></em></span><em><strong>石化系统</strong></em></span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">1、专业承接武汉/黄石/十堰/宜昌/襄阳/鄂州/随州/孝感/咸宁/黄冈/荆门/荆州/<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">长沙/<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">益阳/南昌及周边</span></span>地区！</span></p><p><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-size: 14px;\">2、提供直臂车载式升降车、曲臂车载式升降车、剪叉式高空作业平台、直臂式高空作业车、蜘蛛式高空作业平台、铝合金升降机、曲臂自行式升降车、直臂自行式升降车等特殊车辆。</span></span></p><p><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-size: 14px;\">3、作业范围包括但不限于<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">LED灯安装、厂房检测、广告安装、桥梁检修、高空拍摄、太阳能安装、外墙油漆粉刷、外墙玻璃清洗、会展布景、电力安装、升旗安装、绿化修剪、监控设备安装、隧道检测、同时兼营路灯维修、庭院灯维修等，更多应用场景持续开发中。</span></span></span></p>', '<p style=\"text-align: left;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">1、高空车种类较多，我司提供：车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车等。</span></p><p style=\"text-align: left;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">2、因其适应性好，方便灵活，作业范围广泛，可满足不同客户的需求，如：工程建设、厂房施工、厂房维护、市政、电力、路灯、通讯、园林、交通、工矿、工业安装、设备检修、立体仓库、影视广告的制作拍摄、高空管路的铺设、各种场馆的物业维护、高架桥梁的建造和涂装等各种需要登高作业的场合。</span></p><p style=\"text-align: left;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><strong><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">报价因场景不同差异较大，需要客服与客户沟通做方案，暂不提供在线报价表。谢谢体谅！</span></strong></span></p><p><br/></p>'),
(19, 67, 37, 0, '0,', '', 4, '房屋建设', 'fang-wu-jian-she', '', '', '车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车', '', '车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车，房屋建设', '', '', '', '0.00', 0.00, 100.00, 0, '0.00', 1546531200, 1546531200, 10, 0, 1, 0, '', '<p>请上传服务详情</p>', 'cms-images/product/2019_11_17/775f15d24bd569506047699f74985ee5==570x400.jpg', '', 0, 0, 0, 1317, '', 160, 1484316884, 1, 0, 0, 'zh-CN', 1546595772, 1574592112, '<p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\">当前业务：</span><span style=\"margin: 0px; padding: 0px; box-sizing: border-box; font-weight: bolder; color: rgb(102, 102, 102); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\"><em style=\"margin: 0px; padding: 0px; box-sizing: border-box;\"></em></span><em><strong>房屋建设</strong></em></span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">1、专业承接武汉/黄石/十堰/宜昌/襄阳/鄂州/随州/孝感/咸宁/黄冈/荆门/荆州/<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">长沙/<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">益阳/南昌及周边</span></span>地区！</span></p><p><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-size: 14px;\">2、提供直臂车载式升降车、曲臂车载式升降车、剪叉式高空作业平台、直臂式高空作业车、蜘蛛式高空作业平台、铝合金升降机、曲臂自行式升降车、直臂自行式升降车等特殊车辆。</span></span></p><p><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-size: 14px;\">3、作业范围包括但不限于<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">LED灯安装、厂房检测、广告安装、桥梁检修、高空拍摄、太阳能安装、外墙油漆粉刷、外墙玻璃清洗、会展布景、电力安装、升旗安装、绿化修剪、监控设备安装、隧道检测、同时兼营路灯维修、庭院灯维修等，更多应用场景持续开发中。</span></span></span></p>', '<p style=\"text-align: left;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">1、高空车种类较多，我司提供：车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车等。</span></p><p style=\"text-align: left;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">2、因其适应性好，方便灵活，作业范围广泛，可满足不同客户的需求，如：工程建设、厂房施工、厂房维护、市政、电力、路灯、通讯、园林、交通、工矿、工业安装、设备检修、立体仓库、影视广告的制作拍摄、高空管路的铺设、各种场馆的物业维护、高架桥梁的建造和涂装等各种需要登高作业的场合。</span></p><p style=\"text-align: left;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><strong><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">报价因场景不同差异较大，需要客服与客户沟通做方案，暂不提供在线报价表。谢谢体谅！</span></strong></span></p><p><br/></p>');
INSERT INTO `ss_shop_product` (`id`, `columnid`, `pcateid`, `pcatepid`, `pcatepstr`, `attrtext`, `brand_id`, `title`, `slug`, `colorval`, `boldval`, `subtitle`, `keywords`, `description`, `flag`, `sku`, `product_sn`, `weight`, `market_price`, `sales_price`, `is_promote`, `promote_price`, `promote_start_date`, `promote_end_date`, `stock`, `warn_num`, `is_shipping`, `point`, `linkurl`, `content`, `picurl`, `picarr`, `is_best`, `is_new`, `is_hot`, `hits`, `author`, `orderid`, `posttime`, `status`, `delstate`, `deltime`, `lang`, `created_at`, `updated_at`, `diyfield_service_item`, `diyfield_service_price`) VALUES
(20, 67, 37, 0, '0,', '', 4, '场馆维护', 'chang-guan-wei-hu', '', '', '车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车', '', '车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车，场馆维护', '置首', '', '', '0.00', 0.00, 100.00, 0, '0.00', 1546531200, 1546531200, 10, 0, 1, 0, '', '<p>请上传服务详情</p>', 'cms-images/product/2019_10_21/0d8343cd6e5ba4c89a5b4c4fe510f074==285x190.jpg', '', 0, 0, 0, 1429, '', 160, 1490408944, 1, 0, 0, 'zh-CN', 1546595772, 1574592100, '<p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\">当前业务：</span><span style=\"margin: 0px; padding: 0px; box-sizing: border-box; font-weight: bolder; color: rgb(102, 102, 102); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\"><em style=\"margin: 0px; padding: 0px; box-sizing: border-box;\"></em></span><em><strong>场馆维护</strong></em></span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">1、专业承接武汉/黄石/十堰/宜昌/襄阳/鄂州/随州/孝感/咸宁/黄冈/荆门/荆州/<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">长沙/<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">益阳/南昌及周边</span></span>地区！</span></p><p><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-size: 14px;\">2、提供直臂车载式升降车、曲臂车载式升降车、剪叉式高空作业平台、直臂式高空作业车、蜘蛛式高空作业平台、铝合金升降机、曲臂自行式升降车、直臂自行式升降车等特殊车辆。</span></span></p><p><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-size: 14px;\">3、作业范围包括但不限于<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">LED灯安装、厂房检测、广告安装、桥梁检修、高空拍摄、太阳能安装、外墙油漆粉刷、外墙玻璃清洗、会展布景、电力安装、升旗安装、绿化修剪、监控设备安装、隧道检测、同时兼营路灯维修、庭院灯维修等，更多应用场景持续开发中。</span></span></span></p>', '<p style=\"text-align: left;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">1、高空车种类较多，我司提供：车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车等。</span></p><p style=\"text-align: left;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">2、因其适应性好，方便灵活，作业范围广泛，可满足不同客户的需求，如：工程建设、厂房施工、厂房维护、市政、电力、路灯、通讯、园林、交通、工矿、工业安装、设备检修、立体仓库、影视广告的制作拍摄、高空管路的铺设、各种场馆的物业维护、高架桥梁的建造和涂装等各种需要登高作业的场合。</span></p><p style=\"text-align: left;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><strong><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">报价因场景不同差异较大，需要客服与客户沟通做方案，暂不提供在线报价表。谢谢体谅！</span></strong></span></p><p><br/></p>'),
(21, 67, 37, 0, '0,', '', 4, '游乐场', 'you-le-chang', '', '', '车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车', '', '车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车，游乐场', '', '', '', '0.00', 0.00, 100.00, 0, '0.00', 1546531200, 1546531200, 10, 0, 1, 0, '', '<p>请上传服务详情</p>', 'cms-images/product/2019_11_17/702438a174a5a02ea05f58a07f614c97==570x400.jpg', '', 0, 0, 0, 1208, '', 160, 1486956480, 1, 0, 0, 'zh-CN', 1546595772, 1574592133, '<p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\">当前业务：</span><span style=\"margin: 0px; padding: 0px; box-sizing: border-box; font-weight: bolder; color: rgb(102, 102, 102); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\"><em style=\"margin: 0px; padding: 0px; box-sizing: border-box;\"></em></span><em><strong>游乐场</strong></em></span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">1、专业承接武汉/黄石/十堰/宜昌/襄阳/鄂州/随州/孝感/咸宁/黄冈/荆门/荆州/<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">长沙/<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">益阳/南昌及周边</span></span>地区！</span></p><p><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-size: 14px;\">2、提供直臂车载式升降车、曲臂车载式升降车、剪叉式高空作业平台、直臂式高空作业车、蜘蛛式高空作业平台、铝合金升降机、曲臂自行式升降车、直臂自行式升降车等特殊车辆。</span></span></p><p><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-size: 14px;\">3、作业范围包括但不限于<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">LED灯安装、厂房检测、广告安装、桥梁检修、高空拍摄、太阳能安装、外墙油漆粉刷、外墙玻璃清洗、会展布景、电力安装、升旗安装、绿化修剪、监控设备安装、隧道检测、同时兼营路灯维修、庭院灯维修等，更多应用场景持续开发中。</span></span></span></p>', '<p style=\"text-align: left;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">1、高空车种类较多，我司提供：车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车等。</span></p><p style=\"text-align: left;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">2、因其适应性好，方便灵活，作业范围广泛，可满足不同客户的需求，如：工程建设、厂房施工、厂房维护、市政、电力、路灯、通讯、园林、交通、工矿、工业安装、设备检修、立体仓库、影视广告的制作拍摄、高空管路的铺设、各种场馆的物业维护、高架桥梁的建造和涂装等各种需要登高作业的场合。</span></p><p style=\"text-align: left;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><strong><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">报价因场景不同差异较大，需要客服与客户沟通做方案，暂不提供在线报价表。谢谢体谅！</span></strong></span></p><p><br/></p>'),
(22, 67, 37, 0, '0,', '', 4, '高架桥', 'gao-jia-qiao', '', '', '车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车', '', '车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车，高架桥', '推荐', '', '', '0.00', 0.00, 100.00, 0, '0.00', 1546531200, 1546531200, 10, 0, 1, 0, '', '<p>请上传服务详情</p>', 'cms-images/product/2019_11_17/c6bb11c3f681e695616ce98b1363ab1f==570x400.jpg', '', 0, 0, 0, 643, '', 160, 1559400872, 1, 0, 0, 'zh-CN', 1546595772, 1574592145, '<p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\">当前业务：</span><em><strong>高架桥</strong></em></span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">1、专业承接武汉/黄石/十堰/宜昌/襄阳/鄂州/随州/孝感/咸宁/黄冈/荆门/荆州/<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">长沙/<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">益阳/南昌及周边</span></span>地区！</span></p><p><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-size: 14px;\">2、提供直臂车载式升降车、曲臂车载式升降车、剪叉式高空作业平台、直臂式高空作业车、蜘蛛式高空作业平台、铝合金升降机、曲臂自行式升降车、直臂自行式升降车等特殊车辆。</span></span></p><p><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-size: 14px;\">3、作业范围包括但不限于<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">LED灯安装、厂房检测、广告安装、桥梁检修、高空拍摄、太阳能安装、外墙油漆粉刷、外墙玻璃清洗、会展布景、电力安装、升旗安装、绿化修剪、监控设备安装、隧道检测、同时兼营路灯维修、庭院灯维修等，更多应用场景持续开发中。</span></span></span></p>', '<p style=\"text-align: left;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">1、高空车种类较多，我司提供：车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车等。</span></p><p style=\"text-align: left;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">2、因其适应性好，方便灵活，作业范围广泛，可满足不同客户的需求，如：工程建设、厂房施工、厂房维护、市政、电力、路灯、通讯、园林、交通、工矿、工业安装、设备检修、立体仓库、影视广告的制作拍摄、高空管路的铺设、各种场馆的物业维护、高架桥梁的建造和涂装等各种需要登高作业的场合。</span></p><p style=\"text-align: left;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><strong><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">报价因场景不同差异较大，需要客服与客户沟通做方案，暂不提供在线报价表。谢谢体谅！</span></strong></span></p><p><br/></p>'),
(23, 67, 37, 0, '0,', '', 4, '市政工程', 'shi-zheng-gong-cheng', '', '', '车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车', '', '车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车，市政工程', '置首', '', '', '0.00', 0.00, 100.00, 0, '0.00', 1546531200, 1546531200, 10, 0, 1, 0, '', '<p>请上传服务详情</p>', 'cms-images/product/2019_10_21/470f38ef2be7a854b0a077aec6e23379==285x190.jpeg', '', 0, 0, 0, 1032, '', 160, 1524566803, 1, 0, 0, 'zh-CN', 1546595772, 1574592095, '<p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\">当前业务：</span><span style=\"margin: 0px; padding: 0px; box-sizing: border-box; font-weight: bolder; color: rgb(102, 102, 102); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\"><em style=\"margin: 0px; padding: 0px; box-sizing: border-box;\"></em></span><em><strong>市政工程</strong></em></span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">1、专业承接武汉/黄石/十堰/宜昌/襄阳/鄂州/随州/孝感/咸宁/黄冈/荆门/荆州/<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">长沙/<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">益阳/南昌及周边</span></span>地区！</span></p><p><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-size: 14px;\">2、提供直臂车载式升降车、曲臂车载式升降车、剪叉式高空作业平台、直臂式高空作业车、蜘蛛式高空作业平台、铝合金升降机、曲臂自行式升降车、直臂自行式升降车等特殊车辆。</span></span></p><p><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-size: 14px;\">3、作业范围包括但不限于<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">LED灯安装、厂房检测、广告安装、桥梁检修、高空拍摄、太阳能安装、外墙油漆粉刷、外墙玻璃清洗、会展布景、电力安装、升旗安装、绿化修剪、监控设备安装、隧道检测、同时兼营路灯维修、庭院灯维修等，更多应用场景持续开发中。</span></span></span></p>', '<p style=\"text-align: left;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">1、高空车种类较多，我司提供：车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车等。</span></p><p style=\"text-align: left;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">2、因其适应性好，方便灵活，作业范围广泛，可满足不同客户的需求，如：工程建设、厂房施工、厂房维护、市政、电力、路灯、通讯、园林、交通、工矿、工业安装、设备检修、立体仓库、影视广告的制作拍摄、高空管路的铺设、各种场馆的物业维护、高架桥梁的建造和涂装等各种需要登高作业的场合。</span></p><p style=\"text-align: left;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><strong><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">报价因场景不同差异较大，需要客服与客户沟通做方案，暂不提供在线报价表。谢谢体谅！</span></strong></span></p><p><br/></p>'),
(24, 67, 37, 0, '0,', '', 4, '船舶', 'chuan-bo', '', '', '车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车', '', '车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车，船舶', '', '', '', '0.00', 0.00, 100.00, 0, '0.00', 1546531200, 1546531200, 10, 0, 1, 0, '', '<p>请上传服务详情</p>', 'cms-images/product/2019_11_17/4f41981cf38048b1a0b3a7f8af466e8b==570x400.png', '', 0, 0, 0, 940, '', 160, 1515289893, 1, 0, 0, 'zh-CN', 1546595772, 1574592150, '<p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\">当前业务：</span><em><strong>船舶</strong></em></span></p><p><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">1、专业承接武汉/黄石/十堰/宜昌/襄阳/鄂州/随州/孝感/咸宁/黄冈/荆门/荆州/<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">长沙/<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">益阳/南昌及周边</span></span>地区！</span></p><p><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-size: 14px;\">2、提供直臂车载式升降车、曲臂车载式升降车、剪叉式高空作业平台、直臂式高空作业车、蜘蛛式高空作业平台、铝合金升降机、曲臂自行式升降车、直臂自行式升降车等特殊车辆。</span></span></p><p><span style=\"font-family:微软雅黑, Microsoft YaHei\"><span style=\"font-size: 14px;\">3、作业范围包括但不限于<span style=\"color: rgb(51, 51, 51); font-family: -apple-system, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">LED灯安装、厂房检测、广告安装、桥梁检修、高空拍摄、太阳能安装、外墙油漆粉刷、外墙玻璃清洗、会展布景、电力安装、升旗安装、绿化修剪、监控设备安装、隧道检测、同时兼营路灯维修、庭院灯维修等，更多应用场景持续开发中。</span></span></span></p>', '<p style=\"text-align: left;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">1、高空车种类较多，我司提供：车载高空车、自行式高空车、剪叉升降平台、云梯车、叉车、高空吊车等。</span></p><p style=\"text-align: left;\"><span style=\"font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">2、因其适应性好，方便灵活，作业范围广泛，可满足不同客户的需求，如：工程建设、厂房施工、厂房维护、市政、电力、路灯、通讯、园林、交通、工矿、工业安装、设备检修、立体仓库、影视广告的制作拍摄、高空管路的铺设、各种场馆的物业维护、高架桥梁的建造和涂装等各种需要登高作业的场合。</span></p><p style=\"text-align: left;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\"><strong><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px;\">报价因场景不同差异较大，需要客服与客户沟通做方案，暂不提供在线报价表。谢谢体谅！</span></strong></span></p><p><br/></p>');

-- --------------------------------------------------------

--
-- Table structure for table `ss_shop_product_cate`
--

CREATE TABLE `ss_shop_product_cate` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '商品类型id',
  `parentid` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '类型上级id',
  `parentstr` varchar(50) NOT NULL DEFAULT '' COMMENT '类型上级id字符串',
  `cname` varchar(30) NOT NULL DEFAULT '' COMMENT '类别名称',
  `ctext` text COMMENT '链接集合',
  `picurl` varchar(255) NOT NULL DEFAULT '' COMMENT '缩略图片',
  `linkurl` varchar(255) NOT NULL DEFAULT '' COMMENT '跳转链接',
  `orderid` int(11) UNSIGNED NOT NULL DEFAULT '10' COMMENT '排列顺序',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '是否显示',
  `lang` varchar(8) NOT NULL DEFAULT '' COMMENT '多语言',
  `created_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '添加时间',
  `updated_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '编辑时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品分类表';

--
-- Dumping data for table `ss_shop_product_cate`
--

INSERT INTO `ss_shop_product_cate` (`id`, `parentid`, `parentstr`, `cname`, `ctext`, `picurl`, `linkurl`, `orderid`, `status`, `lang`, `created_at`, `updated_at`) VALUES
(37, 0, '0,', '租赁服务类别', '', '', '', 10, 1, 'zh-CN', 1545717584, 1570631683);

-- --------------------------------------------------------

--
-- Table structure for table `ss_shop_shipping`
--

CREATE TABLE `ss_shop_shipping` (
  `ship_id` smallint(5) UNSIGNED NOT NULL COMMENT '配送方式id',
  `ship_name` varchar(30) NOT NULL COMMENT '配送方式',
  `ship_price` varchar(10) NOT NULL COMMENT '配送价格',
  `orderid` smallint(5) UNSIGNED NOT NULL COMMENT '排列排序',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '审核状态',
  `created_at` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `updated_at` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='快递公司管理表';

--
-- Dumping data for table `ss_shop_shipping`
--

INSERT INTO `ss_shop_shipping` (`ship_id`, `ship_name`, `ship_price`, `orderid`, `status`, `created_at`, `updated_at`) VALUES
(1, '申通', '15', 1, 1, 0, 0),
(2, '中通', '15', 2, 1, 0, 0),
(3, '圆通', '15', 3, 1, 0, 0),
(4, '顺丰', '22', 4, 1, 0, 0),
(5, 'EMS', '20', 5, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ss_site_face_config`
--

CREATE TABLE `ss_site_face_config` (
  `cfg_name` varchar(100) NOT NULL DEFAULT '' COMMENT '变量名称',
  `cfg_value` text COMMENT '变量值',
  `lang` varchar(8) NOT NULL DEFAULT '' COMMENT '多语言'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='前台界面配置表';

--
-- Dumping data for table `ss_site_face_config`
--

INSERT INTO `ss_site_face_config` (`cfg_name`, `cfg_value`, `lang`) VALUES
('config_face_cn_about_us_id', '99', 'zh-CN'),
('config_face_cn_about_us_nav_id', '85', 'zh-CN'),
('config_face_cn_bottom_link_type_id', '1', 'zh-CN'),
('config_face_cn_bottom_nav_id', '60', 'zh-CN'),
('config_face_cn_case_column_flag', '', 'zh-CN'),
('config_face_cn_case_column_id', '76', 'zh-CN'),
('config_face_cn_chexing_column_flag', '', 'zh-CN'),
('config_face_cn_chexing_column_id', '104', 'zh-CN'),
('config_face_cn_company_column_flag', '', 'zh-CN'),
('config_face_cn_company_column_id', '91', 'zh-CN'),
('config_face_cn_faqs_column_id', '85', 'zh-CN'),
('config_face_cn_help_center_column_id', '90', 'zh-CN'),
('config_face_cn_home_case_column_flag', '推荐', 'zh-CN'),
('config_face_cn_home_case_column_id', '76', 'zh-CN'),
('config_face_cn_home_case_slide_column_flag', '幻首', 'zh-CN'),
('config_face_cn_home_case_slide_column_id', '76', 'zh-CN'),
('config_face_cn_home_company_column_flag', '首推', 'zh-CN'),
('config_face_cn_home_company_column_id', '91', 'zh-CN'),
('config_face_cn_home_conment_ad_type_id', '4', 'zh-CN'),
('config_face_cn_home_help_column_flag', '首推', 'zh-CN'),
('config_face_cn_home_help_column_id', '90', 'zh-CN'),
('config_face_cn_home_main_ad_type_id', '2', 'zh-CN'),
('config_face_cn_home_news_column_flag', '首推', 'zh-CN'),
('config_face_cn_home_news_column_id', '79', 'zh-CN'),
('config_face_cn_home_service_column_flag', '置首', 'zh-CN'),
('config_face_cn_home_service_column_id', '67', 'zh-CN'),
('config_face_cn_home_service_company_ad_type_id', '3', 'zh-CN'),
('config_face_cn_left_bottom_block_id', '2', 'zh-CN'),
('config_face_cn_left_top_block_id', '1', 'zh-CN'),
('config_face_cn_login_signup_ad_type_id', '7', 'zh-CN'),
('config_face_cn_main_nav_id', '41', 'zh-CN'),
('config_face_cn_news_column_flag', '', 'zh-CN'),
('config_face_cn_news_column_id', '79', 'zh-CN'),
('config_face_cn_product_column_flag', '', 'zh-CN'),
('config_face_cn_product_column_id', '67', 'zh-CN'),
('config_face_cn_sidebox_contact_us_block_id', '3', 'zh-CN'),
('config_face_cn_sidebox_current_article_column_flag', '推荐', 'zh-CN'),
('config_face_cn_sidebox_current_file_column_flag', '推荐', 'zh-CN'),
('config_face_cn_sidebox_current_photo_column_flag', '推荐', 'zh-CN'),
('config_face_cn_sidebox_current_product_column_flag', '推荐', 'zh-CN'),
('config_face_cn_sidebox_current_video_column_flag', '推荐', 'zh-CN'),
('config_face_mobile_cn_about_nav_id', '106', 'zh-CN'),
('config_face_mobile_cn_bottom_block_id', '4', 'zh-CN'),
('config_face_mobile_cn_bottom_nav_id', '107', 'zh-CN'),
('config_face_mobile_cn_home_chexing_slide_column_flag', '置首', 'zh-CN'),
('config_face_mobile_cn_home_chexing_slide_column_id', '104', 'zh-CN'),
('config_face_mobile_cn_main_nav_id', '93', 'zh-CN');

-- --------------------------------------------------------

--
-- Table structure for table `ss_site_help`
--

CREATE TABLE `ss_site_help` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '列表信息id',
  `cateid` int(11) UNSIGNED DEFAULT NULL COMMENT '类别id',
  `catepid` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '类别父id',
  `catepstr` varchar(80) NOT NULL DEFAULT '' COMMENT '所属类别上级id字符串',
  `title` varchar(80) NOT NULL DEFAULT '' COMMENT '标题',
  `colorval` char(10) NOT NULL DEFAULT '' COMMENT '字体颜色',
  `boldval` char(10) NOT NULL DEFAULT '' COMMENT '字体加粗',
  `flag` varchar(30) DEFAULT NULL COMMENT '属性',
  `author` varchar(50) NOT NULL DEFAULT '' COMMENT '作者编辑',
  `linkurl` varchar(255) NOT NULL DEFAULT '' COMMENT '跳转链接',
  `keywords` varchar(50) NOT NULL DEFAULT '' COMMENT '关键词',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '摘要',
  `content` mediumtext COMMENT '详细内容',
  `picurl` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图片',
  `picarr` text COMMENT '组图',
  `hits` mediumint(8) UNSIGNED NOT NULL DEFAULT '100' COMMENT '点击次数',
  `orderid` int(10) UNSIGNED NOT NULL DEFAULT '10' COMMENT '排列排序',
  `posttime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '审核状态',
  `created_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '添加时间',
  `updated_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '编辑时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统帮助表';

--
-- Dumping data for table `ss_site_help`
--

INSERT INTO `ss_site_help` (`id`, `cateid`, `catepid`, `catepstr`, `title`, `colorval`, `boldval`, `flag`, `author`, `linkurl`, `keywords`, `description`, `content`, `picurl`, `picarr`, `hits`, `orderid`, `posttime`, `status`, `created_at`, `updated_at`) VALUES
(82, 16, 0, '0,', 'sssss', '', '', '', 'admin', '', '', '', '', '', '', 100, 10, 1538755200, 1, 1538809349, 1539010078),
(83, 17, 16, '0,16,', 'bbbbb', '', '', '', 'admin', 'd', 'd', 'ddd', '<p>dfdsfd</p>', 'cms-images/help/2018_11_22/90f00808c6fda3b448c62acd82cdbc7c.jpg', '', 100, 11, 1538928000, 1, 1539009777, 1542877750),
(84, 16, 0, '0,', 'ccccc', '', '', '', 'admin', '', '', '', '', '', '', 100, 12, 1538928000, 1, 1539009782, 1539009782),
(85, 16, 0, '0,', 'aaaaaa', '', '', '', 'admin', '', '', '', '', '', '', 100, 13, 1538928000, 1, 1539009788, 1539009788),
(86, 16, 0, '0,', 'dddddee', '', '', '', 'admin', '', '', '', '', '', '', 100, 14, 1538928000, 1, 1539009794, 1539009794),
(87, 16, 0, '0,', 'gggggg', '', '', '', 'admin', '', '', '', '', '', '', 100, 15, 1538928000, 1, 1539009800, 1539009800),
(88, 16, 0, '0,', 'eeeeeee', '', '', '', 'admin', '', '', '', '', '', '', 100, 16, 1538928000, 1, 1539009806, 1539009806),
(89, 17, 16, '0,16,', 'ddddd', '', '', 'ht,hd', 'admin', '', '', '', '', '', '', 100, 170, 1542879340, 1, 1542879340, 1542879340),
(90, 16, 0, '0,', 'fsdf', '', '', 'ht', 'admin', '', '', '', '', '', '', 100, 171, 1542879507, 1, 1542879507, 1542879507);

-- --------------------------------------------------------

--
-- Table structure for table `ss_site_help_cate`
--

CREATE TABLE `ss_site_help_cate` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '二级类别id',
  `parentid` int(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT '类别上级id',
  `parentstr` varchar(50) NOT NULL DEFAULT '' COMMENT '类别上级id字符串',
  `catename` varchar(30) NOT NULL DEFAULT '' COMMENT '类别名称',
  `linkurl` varchar(255) NOT NULL DEFAULT '' COMMENT '跳转链接',
  `seotitle` varchar(80) NOT NULL DEFAULT '' COMMENT 'SEO标题',
  `keywords` varchar(50) NOT NULL DEFAULT '' COMMENT 'SEO关键词',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT 'SEO描述',
  `orderid` int(11) UNSIGNED NOT NULL DEFAULT '10' COMMENT '排列排序',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '审核状态',
  `created_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '添加时间',
  `updated_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '编辑时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统帮助分类表';

--
-- Dumping data for table `ss_site_help_cate`
--

INSERT INTO `ss_site_help_cate` (`id`, `parentid`, `parentstr`, `catename`, `linkurl`, `seotitle`, `keywords`, `description`, `orderid`, `status`, `created_at`, `updated_at`) VALUES
(15, 0, '0,', '栏目内容管理', '', '', '', '', 80, 1, 1538805598, 1539005298),
(16, 0, '0,', '快速入门', '', '', '', '', 100, 1, 1538805736, 1539005292),
(17, 16, '0,16,', '前言', '', '', '', '', 10, 1, 1538805741, 1539182410),
(18, 0, '0,', '常见问题', '', '', '', '', 90, 1, 1538805744, 1539181072),
(19, 18, '0,18,', '系统使用问题', '', '', '', '', 102, 1, 1538990504, 1539182395),
(20, 18, '0,18,', '域名空间问题', '', '', '', '', 101, 1, 1538990513, 1539182402),
(21, 0, '0,', '扩展模块', '', '', '', '', 70, 1, 1538990642, 1539005299),
(22, 0, '0,', '服务与订单', '', '', '', '', 60, 1, 1538990649, 1540540421),
(23, 0, '0,', '系统管理', '', '', '', '', 400, 1, 1538990655, 1540537911),
(24, 0, '0,', '辅助工具', '', '', '', '', 400, 1, 1538990662, 1540537890);

-- --------------------------------------------------------

--
-- Table structure for table `ss_site_help_flag`
--

CREATE TABLE `ss_site_help_flag` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '信息标记id',
  `flag` varchar(30) NOT NULL DEFAULT '' COMMENT '标记值',
  `flagname` varchar(30) NOT NULL DEFAULT '' COMMENT '标记名称',
  `orderid` int(11) UNSIGNED NOT NULL DEFAULT '10' COMMENT '排列排序',
  `created_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '添加时间',
  `updated_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '编辑时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统帮助标签表';

--
-- Dumping data for table `ss_site_help_flag`
--

INSERT INTO `ss_site_help_flag` (`id`, `flag`, `flagname`, `orderid`, `created_at`, `updated_at`) VALUES
(19, 'tj', '推荐', 74, 1539960409, 1540006509),
(20, 'hd', '幻灯', 75, 1539960429, 1539960429),
(21, 'ht', '帮助标签测试01', 78, 1542876574, 1554009718),
(22, '系统问题', '系统问题', 50, 1554009450, 1554009994);

-- --------------------------------------------------------

--
-- Table structure for table `ss_site_lnk`
--

CREATE TABLE `ss_site_lnk` (
  `lnk_id` smallint(5) UNSIGNED NOT NULL COMMENT '快捷方式id',
  `lnk_name` varchar(30) NOT NULL DEFAULT '' COMMENT '快捷方式名称',
  `lnk_link` varchar(100) NOT NULL DEFAULT '' COMMENT '跳转链接',
  `lnk_ico` varchar(50) NOT NULL DEFAULT '' COMMENT 'ico地址',
  `orderid` smallint(5) UNSIGNED NOT NULL DEFAULT '10' COMMENT '排列排序',
  `created_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='后台快捷键表，后面拓展为跟随管理员';

--
-- Dumping data for table `ss_site_lnk`
--

INSERT INTO `ss_site_lnk` (`lnk_id`, `lnk_name`, `lnk_link`, `lnk_ico`, `orderid`, `created_at`) VALUES
(1, '栏目管理', 'http://localhost/turen/app/backend/web/index.php?r=cms%2Fcolumn%2Findex', '<i class=\"fa fa-chain-broken\"></i>', 4, 0),
(2, '列表管理', 'http://localhost/turen/app/backend/web/index.php?r=cms%2Farticle%2Findex', '<i class=\"fa fa-chain-broken\"></i>', 6, 0),
(3, '图片管理', 'http://localhost/turen/app/backend/web/index.php?r=cms%2Fphoto%2Findex', '<i class=\"fa fa-chain-broken\"></i>', 5, 0),
(4, '系统教程', 'http://localhost/turen/app/backend/web/index.php?r=site%2Fhelp%2Findex', '<i class=\"fa fa-chain-broken\"></i>', 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ss_sys_admin`
--

CREATE TABLE `ss_sys_admin` (
  `id` smallint(5) UNSIGNED NOT NULL COMMENT '信息id',
  `username` varchar(30) NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` char(32) NOT NULL DEFAULT '' COMMENT '昵称',
  `question` tinyint(1) UNSIGNED DEFAULT NULL COMMENT '登录提问',
  `answer` varchar(50) DEFAULT NULL COMMENT '登录回答',
  `loginip` char(20) NOT NULL DEFAULT '' COMMENT '登录IP',
  `logintime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '登录时间',
  `auth_key` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password_reset_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '手机号码',
  `status` tinyint(5) UNSIGNED NOT NULL DEFAULT '1',
  `role_id` tinyint(5) UNSIGNED DEFAULT NULL COMMENT '角色',
  `favorite_menu` text COMMENT '快捷菜单',
  `created_at` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `updated_at` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员表';

--
-- Dumping data for table `ss_sys_admin`
--

INSERT INTO `ss_sys_admin` (`id`, `username`, `nickname`, `question`, `answer`, `loginip`, `logintime`, `auth_key`, `password_hash`, `password_reset_token`, `phone`, `status`, `role_id`, `favorite_menu`, `created_at`, `updated_at`) VALUES
(10, 'admin', '夏又桥', 2, '4524', '127.0.0.1', 1576395529, '7uPZ6Pj1lz3Kr96ezMXuKLqXl43N22Dy', '$2y$13$f78ok.XSOBBI1TrZLHRSUu1FSi7EbTqP7fQPX2qgSl6E9TEknuSJm', NULL, '13725514524', 1, 7, '', 1528623688, 1581332232),
(62, '叶键', '叶键', NULL, '', '116.77.73.184', 1555904185, '4727TOzXJ4lQZNx6NwTtD6B6mo0uEV0D', '$2y$13$i/42wz1jczuMA7G66U3ydeIToG6u7N9CdxldxenkNgjz31hWKyE0i', NULL, '13728797679', 1, 6, NULL, 1555903620, 1555911977),
(63, '周建', '周建', NULL, '', '', 0, 'wy5NXgVC8X6cfO2US9_xUCUK83buTha5', '$2y$13$FkKpyEvLqyO03EZdEoowf.p2CpNEa.oA0S5C.zTcUBQ4SBaIFtf4K', NULL, '13530378360', 1, 6, NULL, 1555904309, 1555904309),
(64, '冯亮', '冯亮', NULL, '', '220.112.192.21', 1555904333, 'f6Z5UF2ag5vT-JN5adtKYddsurWten1Z', '$2y$13$X6HTtVXG81NiowukkScMdO7caywAwurO4ievGf8O88kLn5x6iz3wi', NULL, '15118815075', 1, 6, NULL, 1555904333, 1555943178),
(65, '李航', '李航', NULL, '', '', 0, 'VhdSdPupPcF_8oyRshMYZycnO-Zw12XW', '$2y$13$wJ43bRSYlxQcw3ORRDujKO1Ip7uIYFJe0dnARy5W9nnXETcuf6GUa', NULL, '13590125438', 1, 6, NULL, 1555904354, 1555904354),
(66, '程小宝', '程小宝', NULL, '', '113.89.188.107', 1555904369, 'niFPPmkkGNekzQJPp8JVuJkaHXFUxX8B', '$2y$13$dc9wEyKwGzi8wP658YLlvu9W8UgkJa24lvn59HnyABWHi5Pv0ZkHK', NULL, '18576611717', 1, 6, NULL, 1555904369, 1555905210);

-- --------------------------------------------------------

--
-- Table structure for table `ss_sys_config`
--

CREATE TABLE `ss_sys_config` (
  `cfg_id` smallint(5) UNSIGNED NOT NULL,
  `varname` varchar(50) NOT NULL DEFAULT '' COMMENT '变量名称',
  `varinfo` varchar(80) NOT NULL DEFAULT '' COMMENT '参数说明',
  `vargroup` tinyint(5) UNSIGNED NOT NULL COMMENT '所属组',
  `vartype` char(12) NOT NULL DEFAULT 'string' COMMENT '变量类型',
  `varvalue` text COMMENT '变量值',
  `vardefault` varchar(150) NOT NULL DEFAULT '' COMMENT '默认参考值',
  `orderid` smallint(5) UNSIGNED NOT NULL DEFAULT '10' COMMENT '排列排序',
  `lang` varchar(8) NOT NULL DEFAULT '' COMMENT '多语言',
  `visible` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '是否直接可视操作'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统配置表';

--
-- Dumping data for table `ss_sys_config`
--

INSERT INTO `ss_sys_config` (`cfg_id`, `varname`, `varinfo`, `vargroup`, `vartype`, `varvalue`, `vardefault`, `orderid`, `lang`, `visible`) VALUES
(1, 'config_site_name', '站点名称', 0, 'text', '高空作业找亚桥', '', 97, 'zh-CN', 1),
(2, 'config_site_url', '网站地址，尾部不加“/”', 0, 'text', 'http://www.hbyaqiao.com', '', 90, 'zh-CN', 1),
(3, 'config_author', '网站作者', 0, 'text', '进激的中年', '', 82, 'zh-CN', 1),
(4, 'config_seo_title', 'SEO标题', 0, 'text', '湖北亚桥机械租赁有限公司是一家专业的高空作业设备租赁服务商', '', 78, 'zh-CN', 1),
(5, 'config_seo_keyword', '关键字设置', 0, 'text', '高空作业车，高空车出租、高空作业车价格，曲臂式高空作业车，高空作业，海伦哲，云梯车，高空作业平台，湖北亚桥，高空作业车出租，湖北高空车，武汉高空车，登高车', '', 75, 'zh-CN', 1),
(6, 'config_seo_description', '网站描述', 0, 'textarea', '湖北亚桥机械租赁有限公司是一家专业的高空作业设备租赁服务商。公司基于武汉服务于湖北各区，并逐渐扩展到华南地区各大中城市，各种高空设备齐全，高空作业车，高空车出租找亚桥。', '', 72, 'zh-CN', 1),
(7, 'config_copyright', '版权信息', 0, 'text', '湖北亚桥机械租赁有限公司', '', 68, 'zh-CN', 1),
(8, 'config_hotline', '公司座机', 0, 'text', '027-85315789', '', 66, 'zh-CN', 1),
(9, 'config_icp_code', '备案编号', 0, 'text', '<a href=\"http://www.miitbeian.gov.cn\" target=\"_blank\">鄂ICP备19022938号-1</a>', '', 63, 'zh-CN', 1),
(10, 'config_open_site', '是否启用站点', 0, 'radio', '1', '1=>启用|0=>关闭', 60, 'zh-CN', 1),
(11, 'config_close_note', '关闭说明', 0, 'textarea', '对不起，网站维护，请稍后登录。\r\n网站维护期间对您造成的不便，请谅解！', '', 55, 'zh-CN', 1),
(12, 'config_upload_image_type', '上传图片类型', 1, 'text', 'gif|png|jpg|bmp', '', 96, 'zh-CN', 1),
(13, 'config_upload_file_type', '上传下载文件类型', 1, 'text', 'zip|gz|rar|iso|doc|xls|ppt|wps|txt', '', 85, 'zh-CN', 1),
(14, 'config_upload_media_type', '上传媒体类型', 1, 'text', 'swf|flv|mpg|mp3|rm|rmvb|wmv|wma|wav', '', 74, 'zh-CN', 1),
(15, 'config_max_file_size', '上传文件大小', 1, 'text', '2097152', '', 63, 'zh-CN', 1),
(16, 'config_image_resize', '自动缩略图方式　<br />(是\"裁切\",否\"填充\")', 1, 'radio', '1', '1=>自动裁剪|0=>不处理', 52, 'zh-CN', 1),
(17, 'config_count_code', 'PC流量统计代码', 1, 'textarea', '<script>\r\nvar _hmt = _hmt || [];\r\n(function() {\r\n  var hm = document.createElement(\"script\");\r\n  hm.src = \"https://hm.baidu.com/hm.js?6e74fb7809c0ee092ac709d5f87edb75\";\r\n  var s = document.getElementsByTagName(\"script\")[0]; \r\n  s.parentNode.insertBefore(hm, s);\r\n})();\r\n</script>\r\n\r\n', '', 41, 'zh-CN', 1),
(18, 'config_qq_code', '在线QQ　<br />(多个用\",\"分隔)', 1, 'textarea', '', '', 30, 'zh-CN', 1),
(19, 'config_page_size', '每页显示记录数', 2, 'text', '15', '', 79, 'zh-CN', 1),
(20, 'config_open_comment', '开启文章评论', 2, 'radio', '1', '1=>开启评论|0=>不开启', 21, 'zh-CN', 1),
(28, 'config_frontend_logo', '网站前台logo', 4, 'text', 'cms-images/config/2019_10_06/fc0acbc19250e6d7c3b3e984b2983128==368x100.png', '', 99, 'zh-CN', 0),
(29, 'config_backend_logo', '后台登录界面logo', 4, 'text', 'cms-images/config/2019_10_06/fc0acbc19250e6d7c3b3e984b2983128==368x100.png', '', 85, 'zh-CN', 0),
(121, 'config_stock_warning', '产品库存警告', 5, 'text', '10', '', 80, 'zh-CN', 1),
(122, 'config_product_to_points', '成交1元返积分', 5, 'text', '10', '', 70, 'zh-CN', 1),
(123, 'config_weight_unit_name', '重量单位', 5, 'select', 'g', 'g=>克|kg=>千克', 100, 'zh-CN', 1),
(124, 'config_login_mode', '登录注册模式', 3, 'radio', '1', '1=>只启用手机号|2=>只启用邮箱', 200, 'zh-CN', 1),
(197, 'config_site_url_suffix', '链接后缀名', 0, 'text', '.html', '', 85, 'zh-CN', 1),
(208, 'config_email_notify_signup', '新用户注册邮件通知', 6, 'textarea', '', '', 90, 'zh-CN', 1),
(209, 'config_email_notify_online_call_price', '在线报价邮件通知', 6, 'textarea', '980522557@qq.com\r\n1072529021@qq.com', '', 75, 'zh-CN', 1),
(210, 'config_email_notify_jijiaqi', '计价器邮件通知', 6, 'textarea', '', '', 50, 'zh-CN', 1),
(211, 'config_email_notify_new_question', '有新提问邮件通知', 6, 'textarea', '980522557@qq.com\r\nhuan91@foxmail.com', '', 35, 'zh-CN', 1),
(212, 'config_sms_notify_signup', '新用户注册短信通知', 6, 'textarea', '', '', 80, 'zh-CN', 1),
(213, 'config_sms_notify_online_call_price', '在线报价短信通知', 6, 'textarea', '18589080024\r\n13429835313', '', 65, 'zh-CN', 1),
(214, 'config_sms_notify_jijiaqi', '计价器短信通知', 6, 'textarea', '', '', 40, 'zh-CN', 1),
(215, 'config_sms_notify_new_question', '有新提问短信通知', 6, 'textarea', '18589080024\r\n13429835313\r\n13766837011', '', 25, 'zh-CN', 1),
(217, 'config_mobile_qr', '手机站二维码', 4, 'text', 'cms-images/config/2019_11_16/079d67594af4ab32529163cab8a408c4==400x400.png', '', 75, 'zh-CN', 0),
(218, 'config_service_qr', '浮动框客服二维码', 4, 'text', 'cms-images/config/2019_11_16/2cc03a8204265805ca744a08c96e967c==571x571.jpg', '', 65, 'zh-CN', 0),
(219, 'config_online_service_link', '浮动框在线客服链接', 1, 'text', 'javascript:$(\'body\').find(\'#newBridge .nb-icon-inner-wrap\').click();', '', 20, 'zh-CN', 1),
(220, 'config_site_name', '站点名称', 0, 'text', '高空作业找亚桥', '', 97, 'en-US', 1),
(221, 'config_site_url', '网站地址，尾部不加“/”', 0, 'text', 'http://www.hbyaqiao.com', '', 96, 'en-US', 1),
(222, 'config_author', '网站作者', 0, 'text', '进激的中年', '', 95, 'en-US', 1),
(223, 'config_seo_title', 'SEO标题', 0, 'text', '湖北亚桥机械租赁有限公司', '', 94, 'en-US', 1),
(224, 'config_seo_keyword', '关键字设置', 0, 'text', '湖北亚桥机械租赁有限公司', '', 93, 'en-US', 1),
(225, 'config_seo_description', '网站描述', 0, 'textarea', '湖北亚桥机械租赁有限公司是一家专业的高空作业设备租赁服务商是一家比较年轻、富有活力、充满生机的民营企业。公司主要服务于武汉地区，并逐渐扩展到华南地区各大中城市，各种高空设备齐全。管理高效，服务优质，能够满足广大市场客户的需要与需求。', '', 92, 'en-US', 1),
(226, 'config_copyright', '版权信息', 0, 'text', '©版权所有：湖北亚桥机械租赁有限公司', '', 91, 'en-US', 1),
(227, 'config_hotline', '公司座机', 0, 'text', '400-800-8888', '', 90, 'en-US', 1),
(228, 'config_icp_code', '备案编号', 0, 'text', '<a href=\"http://www.miitbeian.gov.cn\" target=\"_blank\">鄂ICP备19022938号-1</a>', '', 89, 'en-US', 1),
(229, 'config_open_site', '是否启用站点', 0, 'radio', '1', '1=>启用|0=>关闭', 88, 'en-US', 1),
(230, 'config_close_note', '关闭说明', 0, 'textarea', '对不起，网站维护，请稍后登录。\r\n网站维护期间对您造成的不便，请谅解！', '', 87, 'en-US', 1),
(231, 'config_upload_image_type', '上传图片类型', 1, 'text', 'gif|png|jpg|bmp', '', 86, 'en-US', 1),
(232, 'config_upload_file_type', '上传下载文件类型', 1, 'text', 'zip|gz|rar|iso|doc|xls|ppt|wps|txt', '', 85, 'en-US', 1),
(233, 'config_upload_media_type', '上传媒体类型', 1, 'text', 'swf|flv|mpg|mp3|rm|rmvb|wmv|wma|wav', '', 84, 'en-US', 1),
(234, 'config_max_file_size', '上传文件大小', 1, 'text', '2097152', '', 83, 'en-US', 1),
(235, 'config_image_resize', '自动缩略图方式　<br />(是\"裁切\",否\"填充\")', 1, 'radio', '1', '1=>自动裁剪|0=>不处理', 82, 'en-US', 1),
(236, 'config_count_code', 'PC流量统计代码', 1, 'textarea', '<script>\r\nvar _hmt = _hmt || [];\r\n(function() {\r\n  var hm = document.createElement(\"script\");\r\n  hm.src = \"https://hm.baidu.com/hm.js?300eb21c4e749b781790a2fd5826d040\";\r\n  var s = document.getElementsByTagName(\"script\")[0]; \r\n  s.parentNode.insertBefore(hm, s);\r\n})();\r\n</script>\r\n', '', 81, 'en-US', 1),
(237, 'config_qq_code', '在线QQ　<br />(多个用\",\"分隔)', 1, 'textarea', '', '', 80, 'en-US', 1),
(238, 'config_page_size', '每页显示记录数', 2, 'text', '15', '', 79, 'en-US', 1),
(239, 'config_open_comment', '开启文章评论', 2, 'radio', '1', '1=>开启评论|0=>不开启', 21, 'en-US', 1),
(240, 'config_frontend_logo', '网站前台logo', 4, 'text', 'cms-images/config/2019_10_06/fc0acbc19250e6d7c3b3e984b2983128==368x100.png', '', 99, 'en-US', 0),
(241, 'config_backend_logo', '后台登录界面logo', 4, 'text', 'cms-images/config/2019_10_06/fc0acbc19250e6d7c3b3e984b2983128==368x100.png', '', 95, 'en-US', 0),
(242, 'config_stock_warning', '产品库存警告', 5, 'text', '10', '', 10, 'en-US', 1),
(243, 'config_product_to_points', '成交1元返积分', 5, 'text', '10', '', 10, 'en-US', 1),
(244, 'config_weight_unit_name', '重量单位', 5, 'select', 'g', 'g=>克|kg=>千克', 100, 'en-US', 1),
(245, 'config_login_mode', '登录注册模式', 3, 'radio', '1', '1=>只启用手机号|2=>只启用邮箱', 200, 'en-US', 1),
(246, 'config_site_url_suffix', '链接后缀名', 0, 'text', '.html', '', 96, 'en-US', 1),
(247, 'config_email_notify_signup', '新用户注册邮件通知', 6, 'textarea', '', '', 50, 'en-US', 1),
(248, 'config_email_notify_online_call_price', '在线报价邮件通知', 6, 'textarea', '', '', 45, 'en-US', 1),
(249, 'config_email_notify_jijiaqi', '计价器邮件通知', 6, 'textarea', '', '', 40, 'en-US', 1),
(250, 'config_email_notify_new_question', '有新提问邮件通知', 6, 'textarea', '', '', 35, 'en-US', 1),
(251, 'config_sms_notify_signup', '新用户注册短信通知', 6, 'textarea', '', '', 50, 'en-US', 1),
(252, 'config_sms_notify_online_call_price', '在线报价短信通知', 6, 'textarea', '', '', 45, 'en-US', 1),
(253, 'config_sms_notify_jijiaqi', '计价器短信通知', 6, 'textarea', '', '', 40, 'en-US', 1),
(254, 'config_sms_notify_new_question', '有新提问短信通知', 6, 'textarea', '', '', 35, 'en-US', 1),
(255, 'config_mobile_qr', '手机站二维码', 4, 'text', 'cms-images/config/2019_11_16/079d67594af4ab32529163cab8a408c4==400x400.png', '', 95, 'en-US', 0),
(256, 'config_service_qr', '浮动框客服二维码', 4, 'text', 'cms-images/config/2019_11_16/2cc03a8204265805ca744a08c96e967c==571x571.jpg', '', 95, 'en-US', 0),
(257, 'config_online_service_link', '浮动框在线客服链接', 1, 'text', '', '', 70, 'en-US', 1),
(258, 'config_site_telephone', '业务手机号', 0, 'text', '13429835313', '', 65, 'zh-CN', 1),
(259, 'config_mobile_count_code', '移动流量统计代码', 1, 'textarea', '<script> var _hmt = _hmt || []; (function() { var hm = document.createElement(\"script\"); hm.src = \"https://hm.baidu.com/hm.js?e189eb6395b23759c8866995930fde4a\"; var s = document.getElementsByTagName(\"script\")[0]; s.parentNode.insertBefore(hm, s); })(); \r\n</script>', '', 35, 'zh-CN', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ss_sys_devlog`
--

CREATE TABLE `ss_sys_devlog` (
  `log_id` int(10) UNSIGNED NOT NULL,
  `log_name` varchar(50) NOT NULL DEFAULT '' COMMENT '更新描述',
  `log_code` varchar(50) NOT NULL DEFAULT '' COMMENT '更新编码，与v版本号有关V+T',
  `log_note` text COMMENT '更新详情',
  `log_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间，手动选择，用于展示',
  `created_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '实际增加时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='开发日志表';

--
-- Dumping data for table `ss_sys_devlog`
--

INSERT INTO `ss_sys_devlog` (`log_id`, `log_name`, `log_code`, `log_note`, `log_time`, `created_at`) VALUES
(1, '系统开发愿景', 'v1.2.1.20181005130302', '<p>-优化&nbsp;我作为一名开发者与他们这群非程序员都意识到我们之间应该有一个桥梁将我们连接起来，于是展开了一些讨论。</p><p>-优化&nbsp;本项目起源于几个高中同学的想法：开发一个营销性系统在网上做点什么。</p><p>-优化&nbsp;我是yii框架的粉丝，也热衷于使用此框架技术解决工作中的问题，也积累了一些开发经验带过各种中小型项目。</p><p>-优化&nbsp;本系统于2017年5月份开始构思，当年下半年与同学们展开讨论，边工作边开发，到2018年初突然发现系统存在极大的效率问题。</p><p>-优化&nbsp;又于2018年3月份决定重新开发，取名为：土人开源系统。定位为标准CMS内容系统+简单电商解决方案。</p><p>-优化&nbsp;直到写此开发日志时，已经7个月了，每天下班主要内容就是干这个，时间非常少，一天大概1小时左右，周末全天开发，重在坚持。</p>', 1538409600, 1538409600),
(2, '优化体验开发新功能跟进开发进度', 'v1.2.1.20181003124425', '<p>-新增 403、404页面显示提高操作体验</p><p>-新增&nbsp;开发日志展示功能有利于用户跟踪开发进度</p><p>-优化&nbsp;头部css将重点操作显示的更明显</p>', 1538496000, 1538496000),
(3, '统一全系统javascript为JWF模块', 'v1.2.1.20181005125814', '<p>-新增&nbsp;重点将后台js模块化提高开发效率、避免重复造轮子</p><p>-新增&nbsp;帮助系统：包括操作帮助和开发帮助，前期重点在操作上</p><p>-新增&nbsp;用户菜单，即创始人菜单和用户（包括普通权限受限用户和超级管理员）共用的权限菜单</p><p>-新增&nbsp;快捷菜单使用常用的操作汇集在后台首页，方便用户高效操作</p>', 1538668800, 1538668800),
(4, '分类过滤器前端优化用户菜单等优化', 'v1.2.1.20181006153753', '<p>-新增 实现CMS内容分类过滤</p><p>-优化&nbsp;前端css，js等代码的精简</p><p>-优化&nbsp;可视模板使用状态</p><p>-新增 增加用户菜单</p><p>-修复&nbsp;修改角色配置信息，操作日志信息</p><p>-新增&nbsp;专题功能</p><p>-新增&nbsp;界面管理</p>', 1538755200, 1538811718);

-- --------------------------------------------------------

--
-- Table structure for table `ss_sys_log`
--

CREATE TABLE `ss_sys_log` (
  `log_id` int(11) UNSIGNED NOT NULL,
  `admin_id` int(11) UNSIGNED DEFAULT NULL COMMENT '管理员id',
  `username` varchar(80) NOT NULL DEFAULT '' COMMENT '管理员名',
  `route` varchar(100) NOT NULL DEFAULT '' COMMENT '操作的路由',
  `name` varchar(150) NOT NULL DEFAULT '' COMMENT '记录详情',
  `method` varchar(10) NOT NULL DEFAULT '' COMMENT '操作方法',
  `get_data` text COMMENT 'get数据',
  `post_data` text COMMENT '改变的数据',
  `ip` varchar(50) NOT NULL DEFAULT '' COMMENT '操作IP地址',
  `agent` text,
  `md5` varchar(40) NOT NULL DEFAULT '',
  `lang` varchar(8) NOT NULL DEFAULT '' COMMENT '多语言',
  `created_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='操作日志表';

-- --------------------------------------------------------

--
-- Table structure for table `ss_sys_multilang`
--

CREATE TABLE `ss_sys_multilang` (
  `id` smallint(5) UNSIGNED NOT NULL COMMENT '站点ID',
  `lang_name` varchar(30) NOT NULL DEFAULT '' COMMENT '站点名称：简体中文、English、xxx子网站',
  `lang_sign` varchar(50) NOT NULL DEFAULT '' COMMENT '站点语言包，此语言包必须要有模板的支持',
  `key` varchar(30) NOT NULL DEFAULT '' COMMENT '站点标识，用于站点访问链接优化标识',
  `back_default` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否后台默认',
  `front_default` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否前台默认',
  `orderid` int(10) UNSIGNED NOT NULL DEFAULT '10' COMMENT '排序',
  `is_visible` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '是否显示在前台站点切换'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='多语言管理表';

--
-- Dumping data for table `ss_sys_multilang`
--

INSERT INTO `ss_sys_multilang` (`id`, `lang_name`, `lang_sign`, `key`, `back_default`, `front_default`, `orderid`, `is_visible`) VALUES
(1, '简体中文', 'zh-CN', 'zh', 1, 1, 100, 1),
(3, 'English', 'en-US', 'en', 0, 0, 22, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ss_sys_role`
--

CREATE TABLE `ss_sys_role` (
  `role_id` tinyint(5) UNSIGNED NOT NULL COMMENT '角色id',
  `role_name` varchar(30) NOT NULL DEFAULT '' COMMENT '角色名称',
  `note` text COMMENT '角色描述',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '角色状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色管理表';

--
-- Dumping data for table `ss_sys_role`
--

INSERT INTO `ss_sys_role` (`role_id`, `role_name`, `note`, `status`) VALUES
(6, '站点管理员', '站点管理员', 1),
(7, '文章发布员', '文章发布员', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ss_sys_role_item`
--

CREATE TABLE `ss_sys_role_item` (
  `id` int(11) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL COMMENT '所属管理组id',
  `route` varchar(50) NOT NULL DEFAULT '' COMMENT '路由',
  `role_params` varchar(100) NOT NULL DEFAULT '' COMMENT '拓展参数'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色项表';

--
-- Dumping data for table `ss_sys_role_item`
--

INSERT INTO `ss_sys_role_item` (`id`, `role_id`, `route`, `role_params`) VALUES
(1, 5, 'site/home/default', ''),
(2, 5, 'site/face-config/setting', ''),
(3, 5, 'site/face-config/batch', ''),
(4, 5, 'site/topic/index', ''),
(5, 5, 'site/topic/create', ''),
(6, 5, 'site/topic/delete', ''),
(7, 5, 'site/topic/update', ''),
(8, 5, 'site/topic/check', ''),
(9, 5, 'site/topic/batch', ''),
(10, 5, 'cms/column/index', ''),
(11, 5, 'cms/column/create', ''),
(12, 5, 'cms/column/delete', ''),
(13, 5, 'cms/column/update', ''),
(14, 5, 'cms/column/check', ''),
(15, 5, 'cms/column/quick-move', ''),
(16, 5, 'cms/column/batch', ''),
(17, 5, 'cms/column/fileupload', ''),
(18, 5, 'cms/cate/index', ''),
(19, 5, 'cms/cate/create', ''),
(20, 5, 'cms/cate/delete', ''),
(21, 5, 'cms/cate/update', ''),
(22, 5, 'cms/cate/check', ''),
(23, 5, 'cms/cate/quick-move', ''),
(24, 5, 'cms/cate/batch', ''),
(25, 5, 'cms/info/index', ''),
(26, 5, 'cms/info/delete', ''),
(27, 5, 'cms/info/update', ''),
(28, 5, 'cms/info/fileupload', ''),
(29, 5, 'cms/info/ueditor', ''),
(30, 5, 'cms/article/index', ''),
(31, 5, 'cms/article/create', ''),
(32, 5, 'cms/article/delete', ''),
(33, 5, 'cms/article/update', ''),
(34, 5, 'cms/article/check', ''),
(35, 5, 'cms/article/edit-item', ''),
(36, 5, 'cms/article/batch', ''),
(37, 5, 'cms/article/fileupload', ''),
(38, 5, 'cms/article/multiple-fileupload', ''),
(39, 5, 'cms/article/ueditor', ''),
(40, 5, 'cms/article/get-tags', ''),
(41, 5, 'cms/article/recycle', ''),
(42, 5, 'cms/photo/index', ''),
(43, 5, 'cms/photo/create', ''),
(44, 5, 'cms/photo/delete', ''),
(45, 5, 'cms/photo/update', ''),
(46, 5, 'cms/photo/check', ''),
(47, 5, 'cms/photo/edit-item', ''),
(48, 5, 'cms/photo/batch', ''),
(49, 5, 'cms/photo/fileupload', ''),
(50, 5, 'cms/photo/multiple-fileupload', ''),
(51, 5, 'cms/photo/ueditor', ''),
(52, 5, 'cms/photo/get-tags', ''),
(53, 5, 'cms/photo/recycle', ''),
(54, 5, 'cms/video/index', ''),
(55, 5, 'cms/video/create', ''),
(56, 5, 'cms/video/delete', ''),
(57, 5, 'cms/video/update', ''),
(58, 5, 'cms/video/check', ''),
(59, 5, 'cms/video/edit-item', ''),
(60, 5, 'cms/video/batch', ''),
(61, 5, 'cms/video/fileupload', ''),
(62, 5, 'cms/video/ueditor', ''),
(63, 5, 'cms/video/get-tags', ''),
(64, 5, 'cms/video/recycle', ''),
(65, 5, 'cms/file/index', ''),
(66, 5, 'cms/file/create', ''),
(67, 5, 'cms/file/delete', ''),
(68, 5, 'cms/file/update', ''),
(69, 5, 'cms/file/check', ''),
(70, 5, 'cms/file/edit-item', ''),
(71, 5, 'cms/file/batch', ''),
(72, 5, 'cms/file/fileupload', ''),
(73, 5, 'cms/file/multiple-fileupload', ''),
(74, 5, 'cms/file/ueditor', ''),
(75, 5, 'cms/file/get-tags', ''),
(76, 5, 'cms/file/recycle', ''),
(77, 5, 'cms/block/index', ''),
(78, 5, 'cms/block/create', ''),
(79, 5, 'cms/block/delete', ''),
(80, 5, 'cms/block/update', ''),
(81, 5, 'cms/block/check', ''),
(82, 5, 'cms/block/batch', ''),
(83, 5, 'cms/block/fileupload', ''),
(84, 5, 'cms/block/ueditor', ''),
(85, 5, 'cms/flag/index', ''),
(86, 5, 'cms/flag/create', ''),
(87, 5, 'cms/flag/delete', ''),
(88, 5, 'cms/flag/update', ''),
(89, 5, 'cms/flag/check', ''),
(90, 5, 'cms/flag/quick-move', ''),
(91, 5, 'cms/flag/batch', ''),
(92, 5, 'cms/src/index', ''),
(93, 5, 'cms/src/delete', ''),
(94, 5, 'cms/src/batch', ''),
(95, 5, 'cms/src/quick-move', ''),
(96, 5, 'cms/diy-model/index', ''),
(97, 5, 'cms/diy-model/create', ''),
(98, 5, 'cms/diy-model/delete', ''),
(99, 5, 'cms/diy-model/update', ''),
(100, 5, 'cms/diy-model/check', ''),
(101, 5, 'cms/diy-model/validate-name', ''),
(102, 5, 'cms/diy-model/validate-tbname', ''),
(103, 5, 'cms/diy-model/validate-title', ''),
(104, 5, 'cms/diy-field/index', ''),
(105, 5, 'cms/diy-field/create', ''),
(106, 5, 'cms/diy-field/delete', ''),
(107, 5, 'cms/diy-field/update', ''),
(108, 5, 'cms/diy-field/check', ''),
(109, 5, 'cms/diy-field/quick-move', ''),
(110, 5, 'cms/diy-field/batch', ''),
(111, 5, 'cms/diy-field/column-check-box-list', ''),
(112, 5, 'cms/diy-field/validate-name', ''),
(113, 5, 'cms/diy-field/validate-title', ''),
(114, 5, 'cms/master-model/index', 'mid=7'),
(115, 5, 'cms/master-model/create', 'mid=7'),
(116, 5, 'cms/master-model/delete', 'mid=7'),
(117, 5, 'cms/master-model/update', 'mid=7'),
(118, 5, 'cms/master-model/check', 'mid=7'),
(119, 5, 'cms/master-model/edit-item', 'mid=7'),
(120, 5, 'cms/master-model/quick-move', 'mid=7'),
(121, 5, 'cms/master-model/batch', 'mid=7'),
(122, 5, 'cms/master-model/get-tags', 'mid=7'),
(123, 5, 'cms/master-model/fileupload', 'mid=7'),
(124, 5, 'cms/master-model/multiple-fileupload', 'mid=7'),
(125, 5, 'cms/master-model/ueditor', 'mid=7'),
(126, 5, 'ext/nav/index', ''),
(127, 5, 'ext/nav/create', ''),
(128, 5, 'ext/nav/delete', ''),
(129, 5, 'ext/nav/update', ''),
(130, 5, 'ext/nav/check', ''),
(131, 5, 'ext/nav/quick-move', ''),
(132, 5, 'ext/nav/batch', ''),
(133, 5, 'ext/nav/fileupload', ''),
(134, 5, 'ext/ad-type/index', ''),
(135, 5, 'ext/ad-type/create', ''),
(136, 5, 'ext/ad-type/delete', ''),
(137, 5, 'ext/ad-type/update', ''),
(138, 5, 'ext/ad-type/check', ''),
(139, 5, 'ext/ad-type/quick-move', ''),
(140, 5, 'ext/ad-type/batch', ''),
(141, 5, 'ext/ad/index', ''),
(142, 5, 'ext/ad/create', ''),
(143, 5, 'ext/ad/delete', ''),
(144, 5, 'ext/ad/update', ''),
(145, 5, 'ext/ad/check', ''),
(146, 5, 'ext/ad/edit-item', ''),
(147, 5, 'ext/ad/batch', ''),
(148, 5, 'ext/ad/fileupload', ''),
(149, 5, 'ext/link-type/index', ''),
(150, 5, 'ext/link-type/create', ''),
(151, 5, 'ext/link-type/delete', ''),
(152, 5, 'ext/link-type/update', ''),
(153, 5, 'ext/link-type/check', ''),
(154, 5, 'ext/link-type/quick-move', ''),
(155, 5, 'ext/link-type/batch', ''),
(156, 5, 'ext/link/index', ''),
(157, 5, 'ext/link/create', ''),
(158, 5, 'ext/link/delete', ''),
(159, 5, 'ext/link/update', ''),
(160, 5, 'ext/link/check', ''),
(161, 5, 'ext/link/edit-item', ''),
(162, 5, 'ext/link/batch', ''),
(163, 5, 'ext/link/fileupload', ''),
(164, 5, 'ext/job/index', ''),
(165, 5, 'ext/job/create', ''),
(166, 5, 'ext/job/delete', ''),
(167, 5, 'ext/job/update', ''),
(168, 5, 'ext/job/check', ''),
(169, 5, 'ext/job/edit-item', ''),
(170, 5, 'ext/job/batch', ''),
(171, 5, 'ext/job/ueditor', ''),
(172, 5, 'ext/vote/index', ''),
(173, 5, 'ext/vote/create', ''),
(174, 5, 'ext/vote/delete', ''),
(175, 5, 'ext/vote/update', ''),
(176, 5, 'ext/vote/check', ''),
(177, 5, 'ext/vote/edit-item', ''),
(178, 5, 'ext/vote/batch', ''),
(179, 5, 'ext/vote/ueditor', ''),
(180, 5, 'shop/product-cate/index', ''),
(181, 5, 'shop/product-cate/create', ''),
(182, 5, 'shop/product-cate/delete', ''),
(183, 5, 'shop/product-cate/update', ''),
(184, 5, 'shop/product-cate/check', ''),
(185, 5, 'shop/product-cate/batch', ''),
(186, 5, 'shop/product-cate/fileupload', ''),
(187, 5, 'shop/product/index', ''),
(188, 5, 'shop/product/create', ''),
(189, 5, 'shop/product/delete', ''),
(190, 5, 'shop/product/update', ''),
(191, 5, 'shop/product/check', ''),
(192, 5, 'shop/product/batch', ''),
(193, 5, 'shop/product/edit-item', ''),
(194, 5, 'shop/product/fileupload', ''),
(195, 5, 'shop/product/multiple-fileupload', ''),
(196, 5, 'shop/product/ueditor', ''),
(197, 5, 'shop/product/recycle', ''),
(198, 5, 'shop/attribute/index', ''),
(199, 5, 'shop/attribute/create', ''),
(200, 5, 'shop/attribute/delete', ''),
(201, 5, 'shop/attribute/update', ''),
(202, 5, 'shop/attribute/check', ''),
(203, 5, 'shop/attribute/batch', ''),
(204, 5, 'shop/attribute/edit-item', ''),
(205, 5, 'shop/brand/index', ''),
(206, 5, 'shop/brand/create', ''),
(207, 5, 'shop/brand/delete', ''),
(208, 5, 'shop/brand/update', ''),
(209, 5, 'shop/brand/check', ''),
(210, 5, 'shop/brand/batch', ''),
(211, 5, 'shop/brand/edit-item', ''),
(212, 5, 'shop/brand/fileupload', ''),
(213, 5, 'shop/brand/ueditor', ''),
(214, 5, 'user/user/index', ''),
(215, 5, 'user/user/create', ''),
(216, 5, 'user/user/delete', ''),
(217, 5, 'user/user/update', ''),
(218, 5, 'user/user/check', ''),
(219, 5, 'user/user/batch', ''),
(220, 5, 'user/user/fileupload', ''),
(221, 5, 'user/user/recycle', ''),
(222, 5, 'user/favorite/index', ''),
(223, 5, 'user/favorite/delete', ''),
(224, 5, 'user/favorite/batch', ''),
(225, 5, 'user/comment/index', ''),
(226, 5, 'user/comment/create', ''),
(227, 5, 'user/comment/delete', ''),
(228, 5, 'user/comment/update', ''),
(229, 5, 'user/comment/check', ''),
(230, 5, 'user/comment/batch', ''),
(231, 5, 'user/comment/ueditor', ''),
(232, 5, 'user/inquiry/index', ''),
(233, 5, 'user/inquiry/view', ''),
(234, 5, 'user/inquiry/edit', ''),
(235, 5, 'sys/admin/index', ''),
(236, 5, 'sys/admin/create', ''),
(237, 5, 'sys/admin/delete', ''),
(238, 5, 'sys/admin/update', ''),
(239, 5, 'sys/admin/check', ''),
(240, 5, 'sys/config/setting', ''),
(241, 5, 'sys/config/batch', ''),
(242, 5, 'sys/config/create', ''),
(243, 5, 'sys/config/fileupload', ''),
(244, 5, 'sys/role/index', ''),
(245, 5, 'sys/role/create', ''),
(246, 5, 'sys/role/delete', ''),
(247, 5, 'sys/role/update', ''),
(248, 5, 'sys/role/check', ''),
(249, 5, 'sys/multilang-tpl/index', ''),
(250, 5, 'sys/multilang-tpl/create', ''),
(251, 5, 'sys/multilang-tpl/delete', ''),
(252, 5, 'sys/multilang-tpl/update', ''),
(253, 5, 'sys/multilang-tpl/check', ''),
(254, 5, 'sys/multilang-tpl/quick-move', ''),
(255, 5, 'sys/multilang-tpl/batch', ''),
(256, 5, 'sys/template/index', ''),
(257, 5, 'sys/template/create', ''),
(258, 5, 'sys/template/delete', ''),
(259, 5, 'sys/template/update', ''),
(260, 5, 'sys/template/template-select', ''),
(261, 5, 'sys/template/fileupload', ''),
(262, 5, 'sys/template/multiple-fileupload', ''),
(263, 5, 'sys/template/ueditor', ''),
(264, 5, 'tool/selector/*', ''),
(265, 5, 'tool/seo/*', ''),
(266, 5, 'tool/spider/*', ''),
(267, 5, 'com/link/pinyin', ''),
(268, 5, 'site/lnk/index', ''),
(269, 5, 'site/lnk/delete', ''),
(270, 5, 'site/lnk/batch', ''),
(271, 5, 'site/lnk/quick-move', ''),
(272, 5, 'sys/log/index', ''),
(273, 5, 'sys/log/view', ''),
(274, 5, 'sys/dev-log/index', ''),
(275, 5, 'sys/dev-log/create', ''),
(276, 5, 'sys/dev-log/ueditor', ''),
(277, 5, 'site/help-cate/index', ''),
(278, 5, 'site/help-cate/create', ''),
(279, 5, 'site/help-cate/delete', ''),
(280, 5, 'site/help-cate/update', ''),
(281, 5, 'site/help-cate/check', ''),
(282, 5, 'site/help-cate/quick-move', ''),
(283, 5, 'site/help-cate/batch', ''),
(284, 5, 'site/help/index', ''),
(285, 5, 'site/help/create', ''),
(286, 5, 'site/help/delete', ''),
(287, 5, 'site/help/update', ''),
(288, 5, 'site/help/check', ''),
(289, 5, 'site/help/batch', ''),
(290, 5, 'site/help/edit-item', ''),
(291, 5, 'site/help/fileupload', ''),
(292, 5, 'site/help/multiple-fileupload', ''),
(293, 5, 'site/help/ueditor', ''),
(294, 5, 'site/help/get-tags', ''),
(295, 5, 'site/help-flag/index', ''),
(296, 5, 'site/help-flag/delete', ''),
(297, 5, 'site/help-flag/batch', ''),
(298, 5, 'site/help-flag/quick-move', ''),
(840, 6, 'site/home/default', ''),
(841, 6, 'site/face-config/setting', ''),
(842, 6, 'site/topic/index', ''),
(843, 6, 'site/topic/create', ''),
(844, 6, 'site/topic/delete', ''),
(845, 6, 'site/topic/update', ''),
(846, 6, 'site/topic/check', ''),
(847, 6, 'site/topic/batch', ''),
(848, 6, 'cms/cate/index', ''),
(849, 6, 'cms/cate/create', ''),
(850, 6, 'cms/cate/delete', ''),
(851, 6, 'cms/cate/update', ''),
(852, 6, 'cms/cate/check', ''),
(853, 6, 'cms/cate/quick-move', ''),
(854, 6, 'cms/cate/batch', ''),
(855, 6, 'cms/info/index', ''),
(856, 6, 'cms/info/update', ''),
(857, 6, 'cms/info/fileupload', ''),
(858, 6, 'cms/info/ueditor', ''),
(859, 6, 'cms/article/index', ''),
(860, 6, 'cms/article/create', ''),
(861, 6, 'cms/article/delete', ''),
(862, 6, 'cms/article/update', ''),
(863, 6, 'cms/article/check', ''),
(864, 6, 'cms/article/edit-item', ''),
(865, 6, 'cms/article/batch', ''),
(866, 6, 'cms/article/fileupload', ''),
(867, 6, 'cms/article/multiple-fileupload', ''),
(868, 6, 'cms/article/ueditor', ''),
(869, 6, 'cms/article/get-tags', ''),
(870, 6, 'cms/article/recycle', ''),
(871, 6, 'cms/photo/index', ''),
(872, 6, 'cms/photo/create', ''),
(873, 6, 'cms/photo/delete', ''),
(874, 6, 'cms/photo/update', ''),
(875, 6, 'cms/photo/check', ''),
(876, 6, 'cms/photo/edit-item', ''),
(877, 6, 'cms/photo/batch', ''),
(878, 6, 'cms/photo/fileupload', ''),
(879, 6, 'cms/photo/multiple-fileupload', ''),
(880, 6, 'cms/photo/ueditor', ''),
(881, 6, 'cms/photo/get-tags', ''),
(882, 6, 'cms/photo/recycle', ''),
(883, 6, 'cms/video/index', ''),
(884, 6, 'cms/video/create', ''),
(885, 6, 'cms/video/delete', ''),
(886, 6, 'cms/video/update', ''),
(887, 6, 'cms/video/check', ''),
(888, 6, 'cms/video/edit-item', ''),
(889, 6, 'cms/video/batch', ''),
(890, 6, 'cms/video/fileupload', ''),
(891, 6, 'cms/video/ueditor', ''),
(892, 6, 'cms/video/get-tags', ''),
(893, 6, 'cms/video/recycle', ''),
(894, 6, 'cms/file/index', ''),
(895, 6, 'cms/file/create', ''),
(896, 6, 'cms/file/delete', ''),
(897, 6, 'cms/file/update', ''),
(898, 6, 'cms/file/check', ''),
(899, 6, 'cms/file/edit-item', ''),
(900, 6, 'cms/file/batch', ''),
(901, 6, 'cms/file/fileupload', ''),
(902, 6, 'cms/file/multiple-fileupload', ''),
(903, 6, 'cms/file/ueditor', ''),
(904, 6, 'cms/file/get-tags', ''),
(905, 6, 'cms/file/recycle', ''),
(906, 6, 'cms/block/index', ''),
(907, 6, 'cms/block/create', ''),
(908, 6, 'cms/block/delete', ''),
(909, 6, 'cms/block/update', ''),
(910, 6, 'cms/block/check', ''),
(911, 6, 'cms/block/batch', ''),
(912, 6, 'cms/block/fileupload', ''),
(913, 6, 'cms/block/ueditor', ''),
(914, 6, 'cms/flag/index', ''),
(915, 6, 'cms/flag/create', ''),
(916, 6, 'cms/flag/delete', ''),
(917, 6, 'cms/flag/update', ''),
(918, 6, 'cms/flag/check', ''),
(919, 6, 'cms/flag/quick-move', ''),
(920, 6, 'cms/flag/batch', ''),
(921, 6, 'cms/src/index', ''),
(922, 6, 'cms/src/delete', ''),
(923, 6, 'cms/src/batch', ''),
(924, 6, 'cms/src/quick-move', ''),
(925, 6, 'cms/master-model/index', 'mid=7'),
(926, 6, 'cms/master-model/create', 'mid=7'),
(927, 6, 'cms/master-model/delete', 'mid=7'),
(928, 6, 'cms/master-model/update', 'mid=7'),
(929, 6, 'cms/master-model/check', 'mid=7'),
(930, 6, 'cms/master-model/edit-item', 'mid=7'),
(931, 6, 'cms/master-model/quick-move', 'mid=7'),
(932, 6, 'cms/master-model/batch', 'mid=7'),
(933, 6, 'cms/master-model/get-tags', 'mid=7'),
(934, 6, 'cms/master-model/fileupload', 'mid=7'),
(935, 6, 'cms/master-model/multiple-fileupload', 'mid=7'),
(936, 6, 'cms/master-model/ueditor', 'mid=7'),
(937, 6, 'ext/nav/index', ''),
(938, 6, 'ext/nav/create', ''),
(939, 6, 'ext/nav/delete', ''),
(940, 6, 'ext/nav/update', ''),
(941, 6, 'ext/nav/check', ''),
(942, 6, 'ext/nav/quick-move', ''),
(943, 6, 'ext/nav/batch', ''),
(944, 6, 'ext/nav/fileupload', ''),
(945, 6, 'ext/ad-type/index', ''),
(946, 6, 'ext/ad-type/create', ''),
(947, 6, 'ext/ad-type/delete', ''),
(948, 6, 'ext/ad-type/update', ''),
(949, 6, 'ext/ad-type/check', ''),
(950, 6, 'ext/ad-type/quick-move', ''),
(951, 6, 'ext/ad-type/batch', ''),
(952, 6, 'ext/ad/index', ''),
(953, 6, 'ext/ad/create', ''),
(954, 6, 'ext/ad/delete', ''),
(955, 6, 'ext/ad/update', ''),
(956, 6, 'ext/ad/check', ''),
(957, 6, 'ext/ad/edit-item', ''),
(958, 6, 'ext/ad/batch', ''),
(959, 6, 'ext/ad/fileupload', ''),
(960, 6, 'ext/link-type/index', ''),
(961, 6, 'ext/link-type/create', ''),
(962, 6, 'ext/link-type/delete', ''),
(963, 6, 'ext/link-type/update', ''),
(964, 6, 'ext/link-type/check', ''),
(965, 6, 'ext/link-type/quick-move', ''),
(966, 6, 'ext/link-type/batch', ''),
(967, 6, 'ext/link/index', ''),
(968, 6, 'ext/link/create', ''),
(969, 6, 'ext/link/delete', ''),
(970, 6, 'ext/link/update', ''),
(971, 6, 'ext/link/check', ''),
(972, 6, 'ext/link/edit-item', ''),
(973, 6, 'ext/link/batch', ''),
(974, 6, 'ext/link/fileupload', ''),
(975, 6, 'ext/job/index', ''),
(976, 6, 'ext/job/create', ''),
(977, 6, 'ext/job/delete', ''),
(978, 6, 'ext/job/update', ''),
(979, 6, 'ext/job/check', ''),
(980, 6, 'ext/job/edit-item', ''),
(981, 6, 'ext/job/batch', ''),
(982, 6, 'ext/job/ueditor', ''),
(983, 6, 'ext/vote/index', ''),
(984, 6, 'ext/vote/create', ''),
(985, 6, 'ext/vote/delete', ''),
(986, 6, 'ext/vote/update', ''),
(987, 6, 'ext/vote/check', ''),
(988, 6, 'ext/vote/edit-item', ''),
(989, 6, 'ext/vote/batch', ''),
(990, 6, 'ext/vote/ueditor', ''),
(991, 6, 'shop/product-cate/index', ''),
(992, 6, 'shop/product-cate/create', ''),
(993, 6, 'shop/product-cate/delete', ''),
(994, 6, 'shop/product-cate/update', ''),
(995, 6, 'shop/product-cate/check', ''),
(996, 6, 'shop/product-cate/batch', ''),
(997, 6, 'shop/product-cate/fileupload', ''),
(998, 6, 'shop/product/index', ''),
(999, 6, 'shop/product/create', ''),
(1000, 6, 'shop/product/delete', ''),
(1001, 6, 'shop/product/update', ''),
(1002, 6, 'shop/product/check', ''),
(1003, 6, 'shop/product/batch', ''),
(1004, 6, 'shop/product/edit-item', ''),
(1005, 6, 'shop/product/fileupload', ''),
(1006, 6, 'shop/product/multiple-fileupload', ''),
(1007, 6, 'shop/product/ueditor', ''),
(1008, 6, 'shop/product/recycle', ''),
(1009, 6, 'shop/attribute/index', ''),
(1010, 6, 'shop/attribute/create', ''),
(1011, 6, 'shop/attribute/delete', ''),
(1012, 6, 'shop/attribute/update', ''),
(1013, 6, 'shop/attribute/check', ''),
(1014, 6, 'shop/attribute/batch', ''),
(1015, 6, 'shop/attribute/edit-item', ''),
(1016, 6, 'shop/brand/index', ''),
(1017, 6, 'shop/brand/create', ''),
(1018, 6, 'shop/brand/delete', ''),
(1019, 6, 'shop/brand/update', ''),
(1020, 6, 'shop/brand/check', ''),
(1021, 6, 'shop/brand/batch', ''),
(1022, 6, 'shop/brand/edit-item', ''),
(1023, 6, 'shop/brand/fileupload', ''),
(1024, 6, 'shop/brand/ueditor', ''),
(1025, 6, 'user/user/index', ''),
(1026, 6, 'user/user/create', ''),
(1027, 6, 'user/user/delete', ''),
(1028, 6, 'user/user/update', ''),
(1029, 6, 'user/user/check', ''),
(1030, 6, 'user/user/batch', ''),
(1031, 6, 'user/user/fileupload', ''),
(1032, 6, 'user/user/recycle', ''),
(1033, 6, 'user/favorite/index', ''),
(1034, 6, 'user/favorite/delete', ''),
(1035, 6, 'user/favorite/batch', ''),
(1036, 6, 'user/comment/index', ''),
(1037, 6, 'user/comment/create', ''),
(1038, 6, 'user/comment/delete', ''),
(1039, 6, 'user/comment/update', ''),
(1040, 6, 'user/comment/check', ''),
(1041, 6, 'user/comment/batch', ''),
(1042, 6, 'user/comment/ueditor', ''),
(1043, 6, 'user/inquiry/index', ''),
(1044, 6, 'user/inquiry/view', ''),
(1045, 6, 'user/inquiry/edit', ''),
(1046, 6, 'tool/selector/*', ''),
(1047, 6, 'tool/seo/*', ''),
(1048, 6, 'tool/spider/*', ''),
(1049, 6, 'com/link/pinyin', ''),
(1050, 6, 'site/lnk/index', ''),
(1051, 6, 'site/lnk/delete', ''),
(1052, 6, 'site/lnk/batch', ''),
(1053, 6, 'site/lnk/quick-move', ''),
(1054, 6, 'sys/log/index', ''),
(1055, 6, 'sys/log/view', ''),
(1056, 6, 'sys/dev-log/index', ''),
(1057, 6, 'sys/dev-log/create', ''),
(1058, 6, 'sys/dev-log/ueditor', ''),
(1059, 6, 'site/help-cate/index', ''),
(1060, 6, 'site/help-cate/create', ''),
(1061, 6, 'site/help-cate/delete', ''),
(1062, 6, 'site/help-cate/update', ''),
(1063, 6, 'site/help-cate/check', ''),
(1064, 6, 'site/help-cate/quick-move', ''),
(1065, 6, 'site/help-cate/batch', ''),
(1066, 6, 'site/help/index', ''),
(1067, 6, 'site/help/create', ''),
(1068, 6, 'site/help/delete', ''),
(1069, 6, 'site/help/update', ''),
(1070, 6, 'site/help/check', ''),
(1071, 6, 'site/help/batch', ''),
(1072, 6, 'site/help/edit-item', ''),
(1073, 6, 'site/help/fileupload', ''),
(1074, 6, 'site/help/multiple-fileupload', ''),
(1075, 6, 'site/help/ueditor', ''),
(1076, 6, 'site/help/get-tags', ''),
(1077, 6, 'site/help-flag/index', ''),
(1078, 6, 'site/help-flag/delete', ''),
(1079, 6, 'site/help-flag/batch', ''),
(1080, 6, 'site/help-flag/quick-move', ''),
(1081, 7, 'site/home/default', ''),
(1082, 7, 'site/face-config/setting', ''),
(1083, 7, 'site/face-config/batch', ''),
(1084, 7, 'site/topic/index', ''),
(1085, 7, 'site/topic/create', ''),
(1086, 7, 'site/topic/delete', ''),
(1087, 7, 'site/topic/update', ''),
(1088, 7, 'site/topic/check', ''),
(1089, 7, 'site/topic/batch', ''),
(1090, 7, 'cms/column/index', ''),
(1091, 7, 'cms/column/create', ''),
(1092, 7, 'cms/column/delete', ''),
(1093, 7, 'cms/column/update', ''),
(1094, 7, 'cms/column/check', ''),
(1095, 7, 'cms/column/quick-move', ''),
(1096, 7, 'cms/column/batch', ''),
(1097, 7, 'cms/column/fileupload', ''),
(1098, 7, 'cms/cate/index', ''),
(1099, 7, 'cms/cate/create', ''),
(1100, 7, 'cms/cate/delete', ''),
(1101, 7, 'cms/cate/update', ''),
(1102, 7, 'cms/cate/check', ''),
(1103, 7, 'cms/cate/quick-move', ''),
(1104, 7, 'cms/cate/batch', ''),
(1105, 7, 'cms/info/index', ''),
(1106, 7, 'cms/info/delete', ''),
(1107, 7, 'cms/info/update', ''),
(1108, 7, 'cms/info/fileupload', ''),
(1109, 7, 'cms/info/ueditor', ''),
(1110, 7, 'cms/article/index', ''),
(1111, 7, 'cms/article/create', ''),
(1112, 7, 'cms/article/delete', ''),
(1113, 7, 'cms/article/update', ''),
(1114, 7, 'cms/article/check', ''),
(1115, 7, 'cms/article/edit-item', ''),
(1116, 7, 'cms/article/batch', ''),
(1117, 7, 'cms/article/fileupload', ''),
(1118, 7, 'cms/article/multiple-fileupload', ''),
(1119, 7, 'cms/article/ueditor', ''),
(1120, 7, 'cms/article/get-tags', ''),
(1121, 7, 'cms/article/recycle', ''),
(1122, 7, 'cms/photo/index', ''),
(1123, 7, 'cms/photo/create', ''),
(1124, 7, 'cms/photo/delete', ''),
(1125, 7, 'cms/photo/update', ''),
(1126, 7, 'cms/photo/check', ''),
(1127, 7, 'cms/photo/edit-item', ''),
(1128, 7, 'cms/photo/batch', ''),
(1129, 7, 'cms/photo/fileupload', ''),
(1130, 7, 'cms/photo/multiple-fileupload', ''),
(1131, 7, 'cms/photo/ueditor', ''),
(1132, 7, 'cms/photo/get-tags', ''),
(1133, 7, 'cms/photo/recycle', ''),
(1134, 7, 'cms/video/index', ''),
(1135, 7, 'cms/video/create', ''),
(1136, 7, 'cms/video/delete', ''),
(1137, 7, 'cms/video/update', ''),
(1138, 7, 'cms/video/check', ''),
(1139, 7, 'cms/video/edit-item', ''),
(1140, 7, 'cms/video/batch', ''),
(1141, 7, 'cms/video/fileupload', ''),
(1142, 7, 'cms/video/ueditor', ''),
(1143, 7, 'cms/video/get-tags', ''),
(1144, 7, 'cms/video/recycle', ''),
(1145, 7, 'cms/file/index', ''),
(1146, 7, 'cms/file/create', ''),
(1147, 7, 'cms/file/delete', ''),
(1148, 7, 'cms/file/update', ''),
(1149, 7, 'cms/file/check', ''),
(1150, 7, 'cms/file/edit-item', ''),
(1151, 7, 'cms/file/batch', ''),
(1152, 7, 'cms/file/fileupload', ''),
(1153, 7, 'cms/file/multiple-fileupload', ''),
(1154, 7, 'cms/file/ueditor', ''),
(1155, 7, 'cms/file/get-tags', ''),
(1156, 7, 'cms/file/recycle', ''),
(1157, 7, 'cms/block/index', ''),
(1158, 7, 'cms/block/create', ''),
(1159, 7, 'cms/block/delete', ''),
(1160, 7, 'cms/block/update', ''),
(1161, 7, 'cms/block/check', ''),
(1162, 7, 'cms/block/batch', ''),
(1163, 7, 'cms/block/fileupload', ''),
(1164, 7, 'cms/block/ueditor', ''),
(1165, 7, 'cms/flag/index', ''),
(1166, 7, 'cms/flag/create', ''),
(1167, 7, 'cms/flag/delete', ''),
(1168, 7, 'cms/flag/update', ''),
(1169, 7, 'cms/flag/check', ''),
(1170, 7, 'cms/flag/quick-move', ''),
(1171, 7, 'cms/flag/batch', ''),
(1172, 7, 'cms/src/index', ''),
(1173, 7, 'cms/src/delete', ''),
(1174, 7, 'cms/src/batch', ''),
(1175, 7, 'cms/src/quick-move', ''),
(1176, 7, 'cms/master-model/index', 'mid=7'),
(1177, 7, 'cms/master-model/create', 'mid=7'),
(1178, 7, 'cms/master-model/delete', 'mid=7'),
(1179, 7, 'cms/master-model/update', 'mid=7'),
(1180, 7, 'cms/master-model/check', 'mid=7'),
(1181, 7, 'cms/master-model/edit-item', 'mid=7'),
(1182, 7, 'cms/master-model/quick-move', 'mid=7'),
(1183, 7, 'cms/master-model/batch', 'mid=7'),
(1184, 7, 'cms/master-model/get-tags', 'mid=7'),
(1185, 7, 'cms/master-model/fileupload', 'mid=7'),
(1186, 7, 'cms/master-model/multiple-fileupload', 'mid=7'),
(1187, 7, 'cms/master-model/ueditor', 'mid=7'),
(1188, 7, 'ext/nav/index', ''),
(1189, 7, 'ext/nav/create', ''),
(1190, 7, 'ext/nav/delete', ''),
(1191, 7, 'ext/nav/update', ''),
(1192, 7, 'ext/nav/check', ''),
(1193, 7, 'ext/nav/quick-move', ''),
(1194, 7, 'ext/nav/batch', ''),
(1195, 7, 'ext/nav/fileupload', ''),
(1196, 7, 'ext/ad-type/index', ''),
(1197, 7, 'ext/ad-type/create', ''),
(1198, 7, 'ext/ad-type/delete', ''),
(1199, 7, 'ext/ad-type/update', ''),
(1200, 7, 'ext/ad-type/check', ''),
(1201, 7, 'ext/ad-type/quick-move', ''),
(1202, 7, 'ext/ad-type/batch', ''),
(1203, 7, 'ext/ad/index', ''),
(1204, 7, 'ext/ad/create', ''),
(1205, 7, 'ext/ad/delete', ''),
(1206, 7, 'ext/ad/update', ''),
(1207, 7, 'ext/ad/check', ''),
(1208, 7, 'ext/ad/edit-item', ''),
(1209, 7, 'ext/ad/batch', ''),
(1210, 7, 'ext/ad/fileupload', ''),
(1211, 7, 'ext/link-type/index', ''),
(1212, 7, 'ext/link-type/create', ''),
(1213, 7, 'ext/link-type/delete', ''),
(1214, 7, 'ext/link-type/update', ''),
(1215, 7, 'ext/link-type/check', ''),
(1216, 7, 'ext/link-type/quick-move', ''),
(1217, 7, 'ext/link-type/batch', ''),
(1218, 7, 'ext/link/index', ''),
(1219, 7, 'ext/link/create', ''),
(1220, 7, 'ext/link/delete', ''),
(1221, 7, 'ext/link/update', ''),
(1222, 7, 'ext/link/check', ''),
(1223, 7, 'ext/link/edit-item', ''),
(1224, 7, 'ext/link/batch', ''),
(1225, 7, 'ext/link/fileupload', ''),
(1226, 7, 'ext/job/index', ''),
(1227, 7, 'ext/job/create', ''),
(1228, 7, 'ext/job/delete', ''),
(1229, 7, 'ext/job/update', ''),
(1230, 7, 'ext/job/check', ''),
(1231, 7, 'ext/job/edit-item', ''),
(1232, 7, 'ext/job/batch', ''),
(1233, 7, 'ext/job/ueditor', ''),
(1234, 7, 'ext/vote/index', ''),
(1235, 7, 'ext/vote/create', ''),
(1236, 7, 'ext/vote/delete', ''),
(1237, 7, 'ext/vote/update', ''),
(1238, 7, 'ext/vote/check', ''),
(1239, 7, 'ext/vote/edit-item', ''),
(1240, 7, 'ext/vote/batch', ''),
(1241, 7, 'ext/vote/ueditor', ''),
(1242, 7, 'shop/product-cate/index', ''),
(1243, 7, 'shop/product-cate/create', ''),
(1244, 7, 'shop/product-cate/delete', ''),
(1245, 7, 'shop/product-cate/update', ''),
(1246, 7, 'shop/product-cate/check', ''),
(1247, 7, 'shop/product-cate/batch', ''),
(1248, 7, 'shop/product-cate/fileupload', ''),
(1249, 7, 'shop/product/index', ''),
(1250, 7, 'shop/product/create', ''),
(1251, 7, 'shop/product/delete', ''),
(1252, 7, 'shop/product/update', ''),
(1253, 7, 'shop/product/check', ''),
(1254, 7, 'shop/product/batch', ''),
(1255, 7, 'shop/product/edit-item', ''),
(1256, 7, 'shop/product/fileupload', ''),
(1257, 7, 'shop/product/multiple-fileupload', ''),
(1258, 7, 'shop/product/ueditor', ''),
(1259, 7, 'shop/product/recycle', ''),
(1260, 7, 'shop/attribute/index', ''),
(1261, 7, 'shop/attribute/create', ''),
(1262, 7, 'shop/attribute/delete', ''),
(1263, 7, 'shop/attribute/update', ''),
(1264, 7, 'shop/attribute/check', ''),
(1265, 7, 'shop/attribute/batch', ''),
(1266, 7, 'shop/attribute/edit-item', ''),
(1267, 7, 'shop/brand/index', ''),
(1268, 7, 'shop/brand/create', ''),
(1269, 7, 'shop/brand/delete', ''),
(1270, 7, 'shop/brand/update', ''),
(1271, 7, 'shop/brand/check', ''),
(1272, 7, 'shop/brand/batch', ''),
(1273, 7, 'shop/brand/edit-item', ''),
(1274, 7, 'shop/brand/fileupload', ''),
(1275, 7, 'shop/brand/ueditor', ''),
(1276, 7, 'user/user/index', ''),
(1277, 7, 'user/user/create', ''),
(1278, 7, 'user/user/delete', ''),
(1279, 7, 'user/user/update', ''),
(1280, 7, 'user/user/check', ''),
(1281, 7, 'user/user/batch', ''),
(1282, 7, 'user/user/fileupload', ''),
(1283, 7, 'user/user/recycle', ''),
(1284, 7, 'user/favorite/index', ''),
(1285, 7, 'user/favorite/delete', ''),
(1286, 7, 'user/favorite/batch', ''),
(1287, 7, 'user/comment/index', ''),
(1288, 7, 'user/comment/create', ''),
(1289, 7, 'user/comment/delete', ''),
(1290, 7, 'user/comment/update', ''),
(1291, 7, 'user/comment/check', ''),
(1292, 7, 'user/comment/batch', ''),
(1293, 7, 'user/comment/ueditor', ''),
(1294, 7, 'user/inquiry/index', ''),
(1295, 7, 'user/inquiry/view', ''),
(1296, 7, 'user/inquiry/edit', ''),
(1297, 7, 'tool/selector/*', ''),
(1298, 7, 'tool/seo/*', ''),
(1299, 7, 'tool/spider/*', ''),
(1300, 7, 'com/link/pinyin', ''),
(1301, 7, 'site/lnk/index', ''),
(1302, 7, 'site/lnk/delete', ''),
(1303, 7, 'site/lnk/batch', ''),
(1304, 7, 'site/lnk/quick-move', '');

-- --------------------------------------------------------

--
-- Table structure for table `ss_user`
--

CREATE TABLE `ss_user` (
  `user_id` int(10) UNSIGNED NOT NULL COMMENT '用户id',
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '用户名',
  `email` varchar(40) NOT NULL DEFAULT '' COMMENT '电子邮件',
  `phone` varchar(20) NOT NULL DEFAULT '' COMMENT '手机',
  `password` varchar(32) DEFAULT NULL COMMENT '密码（明文）',
  `password_hash` varchar(255) DEFAULT NULL COMMENT '密文',
  `password_reset_token` varchar(255) DEFAULT NULL COMMENT '改密码token',
  `auth_key` varchar(32) DEFAULT NULL,
  `level_id` tinyint(5) DEFAULT '-1' COMMENT '会员等级',
  `ug_id` tinyint(5) DEFAULT '-1' COMMENT '会员组',
  `avatar` varchar(100) NOT NULL DEFAULT '' COMMENT '头像',
  `sex` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '性别',
  `company` varchar(100) NOT NULL DEFAULT '' COMMENT '公司名称',
  `trade` varchar(10) NOT NULL DEFAULT '' COMMENT '行业',
  `license` varchar(150) NOT NULL DEFAULT '' COMMENT '公司执照',
  `telephone` varchar(20) NOT NULL DEFAULT '' COMMENT '公司固定电话',
  `intro` text COMMENT '备注说明',
  `address_prov` varchar(10) NOT NULL DEFAULT '' COMMENT '通信地址_省',
  `address_city` varchar(10) NOT NULL DEFAULT '' COMMENT '通信地址_市',
  `address_country` varchar(15) NOT NULL DEFAULT '' COMMENT '通信地址_区',
  `address` varchar(100) NOT NULL DEFAULT '' COMMENT '通信地址',
  `zipcode` varchar(10) NOT NULL DEFAULT '' COMMENT '邮编',
  `point` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '积分',
  `reg_ip` varchar(20) NOT NULL DEFAULT '' COMMENT '注册IP',
  `login_ip` varchar(20) NOT NULL DEFAULT '' COMMENT '登录IP',
  `qq_id` varchar(32) NOT NULL DEFAULT '' COMMENT '绑定QQ',
  `weibo_id` varchar(32) NOT NULL DEFAULT '' COMMENT '绑定微博',
  `weixin_id` varchar(32) NOT NULL DEFAULT '' COMMENT '绑定微信',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '状态，1为正常，0为黑名单',
  `delstate` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '删除状态',
  `deltime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '删除时间',
  `login_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '登录时间',
  `reg_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '注册时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户管理表';

-- --------------------------------------------------------

--
-- Table structure for table `ss_user_comment`
--

CREATE TABLE `ss_user_comment` (
  `uc_id` int(11) UNSIGNED NOT NULL COMMENT '评论id',
  `uc_pid` int(10) NOT NULL DEFAULT '-1' COMMENT '回复的主评论id，自己是主评论时，值为-1',
  `uc_typeid` tinyint(5) UNSIGNED NOT NULL COMMENT '信息类型',
  `uc_model_id` int(11) UNSIGNED NOT NULL COMMENT '信息id',
  `uid` int(11) NOT NULL DEFAULT '-1' COMMENT '用户id',
  `username` varchar(30) NOT NULL COMMENT '用户名',
  `uc_note` varchar(255) NOT NULL COMMENT '评论内容',
  `uc_reply` varchar(255) NOT NULL COMMENT '回复内容',
  `uc_link` varchar(130) NOT NULL COMMENT '评论网址',
  `uc_ip` varchar(30) NOT NULL COMMENT '评论ip',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否前台显示',
  `lang` varchar(8) NOT NULL COMMENT '多语言',
  `reply_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '回复时间',
  `created_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '发表评论的时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户评论表';

-- --------------------------------------------------------

--
-- Table structure for table `ss_user_favorite`
--

CREATE TABLE `ss_user_favorite` (
  `uf_id` int(10) UNSIGNED NOT NULL COMMENT '收藏ID',
  `uf_typeid` tinyint(5) UNSIGNED NOT NULL COMMENT '对象类型',
  `uf_model_id` int(10) UNSIGNED NOT NULL COMMENT '收藏对象',
  `uf_data` varchar(255) NOT NULL COMMENT '附加数据，如：产品降价至多少提醒',
  `uid` int(10) NOT NULL DEFAULT '-1' COMMENT '用户id',
  `uf_link` varchar(200) NOT NULL COMMENT '当前网址',
  `uf_star` tinyint(2) UNSIGNED NOT NULL DEFAULT '5' COMMENT '收藏的星级：1~5星',
  `uf_ip` varchar(30) NOT NULL COMMENT 'IP地址',
  `lang` varchar(8) NOT NULL COMMENT '多语言',
  `created_at` int(10) UNSIGNED NOT NULL COMMENT '收藏时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户收藏表';

--
-- Dumping data for table `ss_user_favorite`
--

INSERT INTO `ss_user_favorite` (`uf_id`, `uf_typeid`, `uf_model_id`, `uf_data`, `uid`, `uf_link`, `uf_star`, `uf_ip`, `lang`, `created_at`) VALUES
(5, 1, 79, '50', 1, 'http://www.baidu.com', 5, '127.0.0.1', 'zh-CN', 1594967295),
(6, 1, 79, '50', 1, 'http://www.baidu.com', 5, '127.0.0.1', 'zh-CN', 1594967295),
(8, 1, 79, '50', 1, 'http://www.baidu.com', 5, '127.0.0.1', 'zh-CN', 1594967295),
(9, 1, 79, '50', 1, 'http://www.baidu.com', 5, '127.0.0.1', 'zh-CN', 1594967295),
(10, 1, 79, '50', 1, 'http://www.baidu.com', 5, '127.0.0.1', 'zh-CN', 1594967295),
(11, 1, 79, '50', 1, 'http://www.baidu.com', 5, '127.0.0.1', 'zh-CN', 1594967295),
(12, 1, 79, '50', 1, 'http://www.baidu.com', 5, '127.0.0.1', 'zh-CN', 1594967295),
(13, 1, 79, '50', 1, 'http://www.baidu.com', 5, '127.0.0.1', 'zh-CN', 1594967295),
(14, 1, 79, '50', 1, 'http://www.baidu.com', 5, '127.0.0.1', 'zh-CN', 1594967295),
(15, 1, 79, '50', 1, 'http://www.baidu.com', 5, '127.0.0.1', 'zh-CN', 1594967295),
(16, 1, 79, '50', 1, 'http://www.baidu.com', 5, '127.0.0.1', 'zh-CN', 1594967295),
(17, 1, 79, '50', 1, 'http://www.baidu.com', 5, '127.0.0.1', 'zh-CN', 1594967295),
(18, 1, 79, '50', 1, 'http://www.baidu.com', 5, '127.0.0.1', 'zh-CN', 1594967295),
(19, 1, 79, '50', 1, 'http://www.baidu.com', 5, '127.0.0.1', 'zh-CN', 1594967295),
(20, 1, 79, '50', 1, 'http://www.baidu.com', 5, '127.0.0.1', 'zh-CN', 1594967295),
(21, 1, 79, '50', 1, 'http://www.baidu.com', 5, '127.0.0.1', 'zh-CN', 1594967295),
(22, 1, 79, '50', 1, 'http://www.baidu.com', 5, '127.0.0.1', 'zh-CN', 1594967295),
(23, 1, 79, '50', 1, 'http://www.baidu.com', 5, '127.0.0.1', 'zh-CN', 1594967295),
(24, 1, 79, '50', 1, 'http://www.baidu.com', 5, '127.0.0.1', 'zh-CN', 1594967295),
(25, 1, 79, '50', 1, 'http://www.baidu.com', 5, '127.0.0.1', 'zh-CN', 1594967295),
(26, 1, 79, '50', 1, 'http://www.baidu.com', 5, '127.0.0.1', 'zh-CN', 1594967295),
(27, 1, 79, '50', 1, 'http://www.baidu.com', 5, '127.0.0.1', 'zh-CN', 1594967295),
(28, 1, 79, '50', 1, 'http://www.baidu.com', 5, '127.0.0.1', 'zh-CN', 1594967295),
(29, 1, 79, '50', 1, 'http://www.baidu.com', 5, '127.0.0.1', 'zh-CN', 1594967295),
(30, 1, 79, '50', 1, 'http://www.baidu.com', 5, '127.0.0.1', 'zh-CN', 1594967295),
(31, 1, 79, '50', 1, 'http://www.baidu.com', 5, '127.0.0.1', 'zh-CN', 1594967295),
(32, 1, 79, '50', 1, 'http://www.baidu.com', 5, '127.0.0.1', 'zh-CN', 1594967295),
(33, 1, 79, '50', 1, 'http://www.baidu.com', 5, '127.0.0.1', 'zh-CN', 1594967295),
(34, 1, 79, '50', 1, 'http://www.baidu.com', 5, '127.0.0.1', 'zh-CN', 1594967295),
(35, 1, 79, '50', 1, 'http://www.baidu.com', 5, '127.0.0.1', 'zh-CN', 1594967295),
(36, 1, 79, '50', 1, 'http://www.baidu.com', 5, '127.0.0.1', 'zh-CN', 1594967295),
(37, 1, 79, '50', 1, 'http://www.baidu.com', 5, '127.0.0.1', 'zh-CN', 1594967295),
(38, 1, 79, '50', 1, 'http://www.baidu.com', 5, '127.0.0.1', 'zh-CN', 1594967295),
(39, 1, 79, '50', 1, 'http://www.baidu.com', 5, '127.0.0.1', 'zh-CN', 1594967295),
(40, 1, 79, '50', 1, 'http://www.baidu.com', 5, '127.0.0.1', 'zh-CN', 1594967295),
(41, 1, 79, '50', 1, 'http://www.baidu.com', 5, '127.0.0.1', 'zh-CN', 1594967295),
(42, 1, 79, '50', 1, 'http://www.baidu.com', 5, '127.0.0.1', 'zh-CN', 1594967295),
(43, 1, 79, '50', 1, 'http://www.baidu.com', 5, '127.0.0.1', 'zh-CN', 1594967295),
(44, 1, 79, '50', 1, 'http://www.baidu.com', 5, '127.0.0.1', 'zh-CN', 1594967295),
(45, 1, 79, '50', 1, 'http://www.baidu.com', 5, '127.0.0.1', 'zh-CN', 1594967295),
(46, 1, 79, '50', 1, 'http://www.baidu.com', 5, '127.0.0.1', 'zh-CN', 1594967295);

-- --------------------------------------------------------

--
-- Table structure for table `ss_user_feedback`
--

CREATE TABLE `ss_user_feedback` (
  `fk_id` int(11) UNSIGNED NOT NULL COMMENT '留言id',
  `fk_user_id` int(11) UNSIGNED DEFAULT NULL COMMENT '关联用户id',
  `fk_nickname` varchar(30) NOT NULL DEFAULT '' COMMENT '用户昵称',
  `fk_contact` varchar(50) NOT NULL DEFAULT '' COMMENT '联系方式',
  `fk_content` text COMMENT '留言内容',
  `fk_show` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否置顶在前台展示',
  `fk_type_id` tinyint(6) UNSIGNED DEFAULT NULL,
  `fk_ip` varchar(50) NOT NULL DEFAULT '' COMMENT '留言IP',
  `fk_review` text COMMENT '回复内容',
  `fk_retime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '回复时间',
  `fk_sms` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否自动给客户发短信',
  `fk_email` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否自动给客户发邮件',
  `lang` varchar(8) NOT NULL DEFAULT '' COMMENT '多语言',
  `orderid` int(11) UNSIGNED NOT NULL DEFAULT '10' COMMENT '排列排序',
  `created_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updated_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='联系我们反馈表';

--
-- Dumping data for table `ss_user_feedback`
--

INSERT INTO `ss_user_feedback` (`fk_id`, `fk_user_id`, `fk_nickname`, `fk_contact`, `fk_content`, `fk_show`, `fk_type_id`, `fk_ip`, `fk_review`, `fk_retime`, `fk_sms`, `fk_email`, `lang`, `orderid`, `created_at`, `updated_at`) VALUES
(2, 5, '夏又桥', '13725514524', '<p>测试一个意见反馈。。</p>', 0, 1, '127.0.0.1', '<p>gfff</p>', 1556380800, 0, 0, 'zh-CN', 121, 1556367275, 1556430936),
(9, 21, '夏又桥', '13725514524', '这是一个意见，希望你们能给我回复，发到我的邮件或者手机短信上来，或者我的消息中心里面去，我需要详细的解答。', 0, 1, '127.0.0.1', '', 0, 0, 0, 'zh-CN', 10, 1556434257, 0),
(10, 21, 'abc', '13725514524', '测试意见反馈测试意见反馈测试意见反馈测试意见反馈测试意见反馈', 0, 1, '127.0.0.1', '', 0, 0, 0, 'zh-CN', 10, 1556545390, 0),
(11, NULL, 'jorry', '137254585', '相当好啊，天啦，我日啊', 0, 1, '127.0.0.1', NULL, 0, 0, 0, 'zh-CN', 100, 1570545059, 0),
(12, 21, 'jorry', '13725514524', 'WFAFAWRFSFASF', 0, 1, '127.0.0.1', NULL, 0, 0, 0, 'zh-CN', 10, 1572184501, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ss_user_feedback_type`
--

CREATE TABLE `ss_user_feedback_type` (
  `fkt_id` int(11) UNSIGNED NOT NULL,
  `fkt_form_name` varchar(50) NOT NULL DEFAULT '' COMMENT '表单显示名',
  `fkt_form_show` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否显示在提交表单',
  `fkt_list_name` varchar(50) NOT NULL DEFAULT '' COMMENT '展示列表标题',
  `fkt_list_show` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否展示在展示列表',
  `lang` varchar(8) NOT NULL DEFAULT '' COMMENT '多语言',
  `orderid` int(10) UNSIGNED NOT NULL DEFAULT '10' COMMENT '排序',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '启用状态',
  `is_default` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否为默认组',
  `created_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updated_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='反馈类型表';

--
-- Dumping data for table `ss_user_feedback_type`
--

INSERT INTO `ss_user_feedback_type` (`fkt_id`, `fkt_form_name`, `fkt_form_show`, `fkt_list_name`, `fkt_list_show`, `lang`, `orderid`, `status`, `is_default`, `created_at`, `updated_at`) VALUES
(1, '意见反馈', 1, '意见反馈', 1, 'zh-CN', 130, 1, 1, 4294967295, 1556424708),
(2, '投诉举报', 1, '投诉举报', 0, 'zh-CN', 110, 1, 0, 4294967295, 1556426951),
(3, '业务咨询', 1, '业务咨询', 0, 'zh-CN', 120, 1, 0, 4294967295, 1556426947);

-- --------------------------------------------------------

--
-- Table structure for table `ss_user_group`
--

CREATE TABLE `ss_user_group` (
  `ug_id` smallint(5) UNSIGNED NOT NULL COMMENT '用户组id',
  `ug_name` varchar(50) NOT NULL COMMENT '用户组名称',
  `orderid` int(11) UNSIGNED NOT NULL DEFAULT '10',
  `lang` varchar(8) NOT NULL COMMENT '多语言',
  `is_default` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户级表';

--
-- Dumping data for table `ss_user_group`
--

INSERT INTO `ss_user_group` (`ug_id`, `ug_name`, `orderid`, `lang`, `is_default`) VALUES
(6, '2018双十一营销活动', 10, 'zh-CN', 1),
(8, '测试组', 11, 'zh-CN', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ss_user_info`
--

CREATE TABLE `ss_user_info` (
  `user_id` int(11) UNSIGNED NOT NULL COMMENT '用户id',
  `last_login_at` int(10) UNSIGNED NOT NULL COMMENT '最后登录时间',
  `last_login_ip` int(10) UNSIGNED NOT NULL COMMENT '最后登录ip',
  `reg_ip` int(10) UNSIGNED NOT NULL COMMENT '注册ip地址',
  `comment_count` mediumint(8) UNSIGNED NOT NULL DEFAULT '0' COMMENT '留言总数',
  `favorite_count` smallint(6) UNSIGNED NOT NULL DEFAULT '0' COMMENT '收藏总数',
  `website` varchar(100) NOT NULL DEFAULT '' COMMENT '推广地址',
  `about` varchar(255) NOT NULL DEFAULT '' COMMENT '关于说明'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户概要表';

-- --------------------------------------------------------

--
-- Table structure for table `ss_user_inquiry`
--

CREATE TABLE `ss_user_inquiry` (
  `ui_id` int(11) UNSIGNED NOT NULL COMMENT '留言id',
  `ui_service_num` varchar(20) DEFAULT NULL COMMENT '服务单号',
  `ui_title` varchar(30) NOT NULL DEFAULT '' COMMENT '预约标题',
  `ui_content` text COMMENT '预约内容',
  `user_id` int(11) UNSIGNED DEFAULT NULL COMMENT '关系用户',
  `ui_ipaddress` varchar(100) NOT NULL COMMENT '来源地址',
  `ui_browser` text COMMENT '客户端信息',
  `ui_remark` text COMMENT '备注（给自己看的）',
  `ui_submit_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '预约提交时间',
  `ui_remark_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '备注时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='预约、询盘等服务';

--
-- Dumping data for table `ss_user_inquiry`
--

INSERT INTO `ss_user_inquiry` (`ui_id`, `ui_service_num`, `ui_title`, `ui_content`, `user_id`, `ui_ipaddress`, `ui_browser`, `ui_remark`, `ui_submit_time`, `ui_remark_time`) VALUES
(116, 'FU191124213300116', '快捷预约 2019-11-24', '{\"service\":\"高架桥\",\"name\":\"夏先生\",\"phone\":\"13725514524\"}', NULL, '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', NULL, 1574602380, 0),
(118, 'FU191125102455118', '快捷预约 2019-11-25', '{\"service\":\"石化系统\",\"name\":\"夏先生\",\"phone\":\"13725514524\"}', NULL, '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', NULL, 1574648695, 0),
(121, 'FU191201004717121', '快捷预约 2019-12-01', '{\"service\":\"楼宇清洁\",\"name\":\"小王\",\"phone\":\"18589080024\"}', NULL, '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', NULL, 1575132437, 0),
(122, 'FU191203144936122', '快捷预约 2019-12-03', '{\"service\":\"房屋建设\",\"name\":\"李华\",\"phone\":\"13725514528\"}', NULL, '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', NULL, 1575355776, 0),
(123, 'FU191204134153123', '快捷预约 2019-12-04', '{\"service\":\"房屋建设\",\"name\":\"陈先生\",\"phone\":\"18589080024\"}', NULL, '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', NULL, 1575438113, 0),
(124, 'FU191221193459124', '快捷预约 2019-12-21', '{\"service\":\"楼宇清洁\",\"name\":\"夏先生\",\"phone\":\"13725514524\"}', NULL, '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', NULL, 1576928099, 0),
(125, 'FU191221222407125', '快捷预约 2019-12-21', '{\"service\":\"其它\",\"name\":\"胡先生\",\"phone\":\"18589080024\"}', NULL, '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', NULL, 1576938247, 0),
(130, 'FU191222002259130', '快捷预约 2019-12-22', '{\"service\":\"来自手机网站\",\"name\":\"夏先生\",\"phone\":\"13725514524\"}', NULL, '', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Mobile Safari/537.36', NULL, 1576945379, 0),
(131, 'FU191222011012131', '快捷预约 2019-12-22', '{\"service\":\"来自手机网站\",\"name\":\"李\",\"phone\":\"18620825406\"}', NULL, '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_4_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 MicroMessenger/7.0.8(0x17000820) NetType/4G Language/zh_CN', NULL, 1576948212, 0),
(132, 'FU191222011113132', '快捷预约 2019-12-22', '{\"service\":\"来自手机网站\",\"name\":\"李\",\"phone\":\"18620825406\"}', NULL, '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_4_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 MicroMessenger/7.0.8(0x17000820) NetType/4G Language/zh_CN', NULL, 1576948273, 0),
(133, 'FU200104155537133', '快捷预约 2020-01-04', '{\"service\":\"来自手机网站\",\"name\":\"徐老师\",\"phone\":\"15377087318\"}', NULL, '', 'Mozilla/5.0 (Linux; Android 9; JKM-AL00a Build/HUAWEIJKM-AL00a; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/76.0.3809.89 Mobile Safari/537.36 T7/11.18 SP-engine/2.14.0 baiduboxapp/11.18.0.12 (Baidu; P1 9) NABar/1.1', NULL, 1578124537, 0),
(134, 'FU200112162112134', '快捷预约 2020-01-12', '{\"service\":\"来自手机网站\",\"name\":\"石\",\"phone\":\"13886009892\"}', NULL, '', 'Mozilla/5.0 (Linux; Android 9; VCE-AL00 Build/HUAWEIVCE-AL00; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/63.0.3239.83 Mobile Safari/537.36 T7/11.1 lite baiduboxapp/4.3.5.11 (Baidu; P1 9)', NULL, 1578817272, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ss_user_level`
--

CREATE TABLE `ss_user_level` (
  `level_id` smallint(5) UNSIGNED NOT NULL COMMENT '用户组id',
  `level_name` varchar(30) NOT NULL DEFAULT '' COMMENT '用户组名称',
  `level_expval_min` int(11) UNSIGNED NOT NULL COMMENT '用户组经验介于a',
  `level_expval_max` int(11) UNSIGNED NOT NULL COMMENT '用户组经验介于b',
  `lang` varchar(8) NOT NULL COMMENT '多语言',
  `orderid` int(11) UNSIGNED NOT NULL DEFAULT '10' COMMENT '排序',
  `is_default` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否默认'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户等级表';

--
-- Dumping data for table `ss_user_level`
--

INSERT INTO `ss_user_level` (`level_id`, `level_name`, `level_expval_min`, `level_expval_max`, `lang`, `orderid`, `is_default`) VALUES
(4, '中级会员', 201, 500, 'zh-CN', 14, 1),
(5, '测试等级', 10, 100, 'zh-CN', 15, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ss_user_msg`
--

CREATE TABLE `ss_user_msg` (
  `msg_id` int(11) UNSIGNED NOT NULL COMMENT 'ID',
  `msg_content` varchar(255) DEFAULT NULL COMMENT '消息内容，以json格式存储',
  `msg_type` tinyint(2) UNSIGNED NOT NULL DEFAULT '1' COMMENT '消息类型，1反馈通知，2优惠促销，3服务消息',
  `msg_user_id` int(11) UNSIGNED DEFAULT NULL COMMENT '用户id',
  `msg_readtime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '读取时间',
  `msg_deltime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '删除时间',
  `lang` varchar(8) NOT NULL DEFAULT '' COMMENT '多语言',
  `orderid` int(11) UNSIGNED NOT NULL DEFAULT '10' COMMENT '排序',
  `created_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updated_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='消息表？？？';

--
-- Dumping data for table `ss_user_msg`
--

INSERT INTO `ss_user_msg` (`msg_id`, `msg_content`, `msg_type`, `msg_user_id`, `msg_readtime`, `msg_deltime`, `lang`, `orderid`, `created_at`, `updated_at`) VALUES
(177, '{\"question\":\"问题反馈问题反馈问题反馈问题反馈问题反馈\",\"answer\":\"问题回答问题回答问题回答问题回答问题回答问题回答问题回答问题回答\"}', 1, 21, 1556544069, 0, 'zh-CN', 10, 1556502375, 1556502375),
(178, '{\"content\":\"优惠消息优惠消息优惠消息<a href=\\\"\\\">优惠消息</a>优惠消息优惠消息优惠消息优惠消息优惠消息\"}', 2, 21, 1556525664, 1556525676, 'zh-CN', 10, 1556502375, 1556502375),
(179, '{\"question\":\"问题反馈问题反馈问题反馈问题反馈问题反馈\",\"answer\":\"问题回答问题回答问题回答问题回答问题回答问题回答问题回答问题回答\"}', 1, 21, 1556544069, 0, 'zh-CN', 10, 1556524960, 1556524960),
(180, '{\"content\":\"优惠消息优惠消息优惠消息<a href=\\\"\\\">优惠消息</a>优惠消息优惠消息优惠消息优惠消息优惠消息\"}', 2, 21, 1556544054, 0, 'zh-CN', 10, 1556524960, 1556524960),
(181, '{\"question\":\"问题反馈问题反馈问题反馈问题反馈问题反馈\",\"answer\":\"问题回答问题回答问题回答问题回答问题回答问题回答问题回答问题回答\"}', 1, 21, 1556592005, 0, 'zh-CN', 10, 1556525775, 1556525775),
(182, '{\"content\":\"优惠消息优惠消息优惠消息<a href=\\\"\\\">优惠消息</a>优惠消息优惠消息优惠消息优惠消息优惠消息\"}', 2, 21, 1556592007, 0, 'zh-CN', 10, 1556525775, 1556525775);

-- --------------------------------------------------------

--
-- Table structure for table `ss_user_qq`
--

CREATE TABLE `ss_user_qq` (
  `uid` varchar(64) NOT NULL COMMENT '就是openid',
  `nickname` varchar(50) NOT NULL COMMENT '用户在QQ空间的昵称。',
  `gender` varchar(5) NOT NULL COMMENT '性别',
  `province` varchar(20) NOT NULL COMMENT '省份',
  `city` varchar(20) NOT NULL COMMENT '城市',
  `year` int(5) NOT NULL COMMENT '出生年',
  `figureurl` varchar(200) NOT NULL COMMENT '大小为30×30像素的QQ空间头像URL。',
  `figureurl_1` varchar(200) NOT NULL COMMENT '大小为50×50像素的QQ空间头像URL。',
  `figureurl_2` varchar(200) NOT NULL COMMENT '大小为100×100像素的QQ空间头像URL。',
  `figureurl_qq_1` varchar(200) NOT NULL COMMENT '大小为40×40像素的QQ头像URL。',
  `figureurl_qq_2` varchar(200) NOT NULL COMMENT '大小为100×100像素的QQ头像URL。需要注意，不是所有的用户都拥有QQ的100x100的头像，但40x40像素则是一定会有。'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='qq登录信息userinfo';

--
-- Dumping data for table `ss_user_qq`
--

INSERT INTO `ss_user_qq` (`uid`, `nickname`, `gender`, `province`, `city`, `year`, `figureurl`, `figureurl_1`, `figureurl_2`, `figureurl_qq_1`, `figureurl_qq_2`) VALUES
('1000575620D51C90FA96DA0E0DA919BC', 'jorry有桥', '男', '广东', '深圳', 1986, 'http://qzapp.qlogo.cn/qzapp/101829909/1000575620D51C90FA96DA0E0DA919BC/30', 'http://qzapp.qlogo.cn/qzapp/101829909/1000575620D51C90FA96DA0E0DA919BC/50', 'http://qzapp.qlogo.cn/qzapp/101829909/1000575620D51C90FA96DA0E0DA919BC/100', 'http://thirdqq.qlogo.cn/g?b=oidb&k=84l6HSVsayzlt45ia1W6v8g&s=40&t=1554277707', 'http://thirdqq.qlogo.cn/g?b=oidb&k=84l6HSVsayzlt45ia1W6v8g&s=100&t=1554277707'),
('EA875B0AE310B4D2DA718E9A6F70E3B5', 'jorry有桥', '男', '广东', '深圳', 1986, 'http://qzapp.qlogo.cn/qzapp/101557951/EA875B0AE310B4D2DA718E9A6F70E3B5/30', 'http://qzapp.qlogo.cn/qzapp/101557951/EA875B0AE310B4D2DA718E9A6F70E3B5/50', 'http://qzapp.qlogo.cn/qzapp/101557951/EA875B0AE310B4D2DA718E9A6F70E3B5/100', 'http://thirdqq.qlogo.cn/g?b=oidb&k=84l6HSVsayzlt45ia1W6v8g&s=40', 'http://thirdqq.qlogo.cn/g?b=oidb&k=84l6HSVsayzlt45ia1W6v8g&s=100');

-- --------------------------------------------------------

--
-- Table structure for table `ss_user_ticket`
--

CREATE TABLE `ss_user_ticket` (
  `t_id` int(11) UNSIGNED NOT NULL COMMENT 'ID',
  `t_ticket_num` varchar(20) NOT NULL DEFAULT '' COMMENT '工单号',
  `t_title` varchar(200) NOT NULL DEFAULT '' COMMENT '工单标题',
  `t_files` text COMMENT '主题相关文件',
  `t_content` mediumtext COMMENT '工单互动内容（数组序列化）',
  `t_relate_id` int(11) UNSIGNED DEFAULT NULL COMMENT '关联对象，服务单id/预约单id',
  `t_phone` varchar(11) NOT NULL DEFAULT '' COMMENT '手机通知',
  `t_email` varchar(30) NOT NULL DEFAULT '' COMMENT '邮件通知',
  `t_user_id` int(10) UNSIGNED DEFAULT NULL COMMENT '工单所属',
  `t_status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '工单状态，1待处理，2有新回复，3待回复，4待您评价，5已关闭',
  `t_star` tinyint(3) UNSIGNED NOT NULL DEFAULT '5' COMMENT '结单星级',
  `t_is_finish` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '结单是否解决',
  `t_finish_comment` varchar(200) NOT NULL DEFAULT '' COMMENT '结单评价',
  `finished_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '完成时间',
  `lang` varchar(8) NOT NULL DEFAULT '' COMMENT '多语言',
  `created_at` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updated_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户工单表';

--
-- Dumping data for table `ss_user_ticket`
--

INSERT INTO `ss_user_ticket` (`t_id`, `t_ticket_num`, `t_title`, `t_files`, `t_content`, `t_relate_id`, `t_phone`, `t_email`, `t_user_id`, `t_status`, `t_star`, `t_is_finish`, `t_finish_comment`, `finished_at`, `lang`, `created_at`, `updated_at`) VALUES
(22, 'GD19050418485622', '测试工单004主题', 'bbbb.jpg', NULL, 88877, '13785584784', '999999@qq.com', 21, 1, 5, 1, '', 0, 'zh-CN', 1556966936, 1556966936),
(23, 'GD19050418512223', '工单005主题', 'ccccc.jpg', NULL, 88877, '13784878544', '8485784@qq.com', 21, 1, 5, 1, '', 0, 'zh-CN', 1556967082, 1556967082);

-- --------------------------------------------------------

--
-- Table structure for table `ss_user_weibo`
--

CREATE TABLE `ss_user_weibo` (
  `uid` varchar(64) NOT NULL COMMENT '用户UID',
  `screen_name` varchar(60) DEFAULT NULL COMMENT '用户昵称',
  `name` varchar(60) DEFAULT NULL COMMENT '友好显示名称',
  `province` int(10) UNSIGNED DEFAULT NULL COMMENT '用户所在省级ID',
  `city` int(10) DEFAULT NULL COMMENT '用户所在城市ID',
  `location` varchar(30) DEFAULT NULL COMMENT '用户所在地',
  `description` varchar(255) DEFAULT NULL COMMENT '用户个人描述',
  `profile_image_url` varchar(255) DEFAULT NULL COMMENT '用户头像地址（中图），50×50像素',
  `profile_url` varchar(100) DEFAULT NULL,
  `gender` varchar(2) DEFAULT NULL COMMENT '性别，m：男、f：女、n：未知',
  `verified` tinyint(1) DEFAULT NULL COMMENT '是否是微博认证用户，即加V用户，1：是，0：否',
  `avatar_large` varchar(255) DEFAULT NULL COMMENT '用户头像地址（大图），180×180像素',
  `avatar_hd` varchar(255) DEFAULT NULL COMMENT '用户头像地址（高清），高清头像原图'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微博登录信息userinfo';

--
-- Dumping data for table `ss_user_weibo`
--

INSERT INTO `ss_user_weibo` (`uid`, `screen_name`, `name`, `province`, `city`, `location`, `description`, `profile_image_url`, `profile_url`, `gender`, `verified`, `avatar_large`, `avatar_hd`) VALUES
('2272816532', 'Jorry08', 'Jorry08', 44, 3, '广东 深圳', '沉淀。', 'http://tva3.sinaimg.cn/crop.0.0.149.149.50/87786d94gw1em1e0yqenjj2046046dfs.jpg', 'u/2272816532', 'm', 0, 'http://tva3.sinaimg.cn/crop.0.0.149.149.180/87786d94gw1em1e0yqenjj2046046dfs.jpg', 'http://tva3.sinaimg.cn/crop.0.0.149.149.1024/87786d94gw1em1e0yqenjj2046046dfs.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `ss_user_wx`
--

CREATE TABLE `ss_user_wx` (
  `uid` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信登录信息userinfo';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ss_cascade`
--
ALTER TABLE `ss_cascade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_cascade_data`
--
ALTER TABLE `ss_cascade_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_cms_article`
--
ALTER TABLE `ss_cms_article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_cms_block`
--
ALTER TABLE `ss_cms_block`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idlang` (`id`,`lang`) USING BTREE,
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `ss_cms_cate`
--
ALTER TABLE `ss_cms_cate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_cms_column`
--
ALTER TABLE `ss_cms_column`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_cms_file`
--
ALTER TABLE `ss_cms_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_cms_flag`
--
ALTER TABLE `ss_cms_flag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_cms_info`
--
ALTER TABLE `ss_cms_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_cms_photo`
--
ALTER TABLE `ss_cms_photo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_cms_src`
--
ALTER TABLE `ss_cms_src`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_cms_tag`
--
ALTER TABLE `ss_cms_tag`
  ADD PRIMARY KEY (`tag_id`),
  ADD UNIQUE KEY `name` (`name`) USING BTREE;

--
-- Indexes for table `ss_cms_tag_assign`
--
ALTER TABLE `ss_cms_tag_assign`
  ADD PRIMARY KEY (`ta_id`),
  ADD KEY `class` (`class`) USING BTREE,
  ADD KEY `item_tag` (`item_id`,`tag_id`) USING BTREE;

--
-- Indexes for table `ss_cms_video`
--
ALTER TABLE `ss_cms_video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_diymodel_faqs`
--
ALTER TABLE `ss_diymodel_faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_diy_field`
--
ALTER TABLE `ss_diy_field`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_diy_model`
--
ALTER TABLE `ss_diy_model`
  ADD PRIMARY KEY (`dm_id`);

--
-- Indexes for table `ss_ext_ad`
--
ALTER TABLE `ss_ext_ad`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_ext_ad_type`
--
ALTER TABLE `ss_ext_ad_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_ext_job`
--
ALTER TABLE `ss_ext_job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_ext_link`
--
ALTER TABLE `ss_ext_link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_ext_link_type`
--
ALTER TABLE `ss_ext_link_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_ext_nav`
--
ALTER TABLE `ss_ext_nav`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_ext_vote`
--
ALTER TABLE `ss_ext_vote`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_ext_vote_data`
--
ALTER TABLE `ss_ext_vote_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_ext_vote_option`
--
ALTER TABLE `ss_ext_vote_option`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_like`
--
ALTER TABLE `ss_like`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_model_id` (`model`,`model_id`,`type`),
  ADD KEY `fk_user_type_id` (`user_id`,`type`);

--
-- Indexes for table `ss_migration`
--
ALTER TABLE `ss_migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `ss_queue`
--
ALTER TABLE `ss_queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `channel` (`channel`) USING BTREE,
  ADD KEY `reserved_at` (`reserved_at`) USING BTREE,
  ADD KEY `priority` (`priority`) USING BTREE;

--
-- Indexes for table `ss_session`
--
ALTER TABLE `ss_session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_shop_attribute`
--
ALTER TABLE `ss_shop_attribute`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_shop_brand`
--
ALTER TABLE `ss_shop_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_shop_getmode`
--
ALTER TABLE `ss_shop_getmode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_shop_order`
--
ALTER TABLE `ss_shop_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_shop_payment`
--
ALTER TABLE `ss_shop_payment`
  ADD PRIMARY KEY (`pay_id`);

--
-- Indexes for table `ss_shop_product`
--
ALTER TABLE `ss_shop_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_shop_product_cate`
--
ALTER TABLE `ss_shop_product_cate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_shop_shipping`
--
ALTER TABLE `ss_shop_shipping`
  ADD PRIMARY KEY (`ship_id`);

--
-- Indexes for table `ss_site_face_config`
--
ALTER TABLE `ss_site_face_config`
  ADD PRIMARY KEY (`cfg_name`);

--
-- Indexes for table `ss_site_help`
--
ALTER TABLE `ss_site_help`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_site_help_cate`
--
ALTER TABLE `ss_site_help_cate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_site_help_flag`
--
ALTER TABLE `ss_site_help_flag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_site_lnk`
--
ALTER TABLE `ss_site_lnk`
  ADD PRIMARY KEY (`lnk_id`);

--
-- Indexes for table `ss_sys_admin`
--
ALTER TABLE `ss_sys_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_sys_config`
--
ALTER TABLE `ss_sys_config`
  ADD PRIMARY KEY (`cfg_id`);

--
-- Indexes for table `ss_sys_devlog`
--
ALTER TABLE `ss_sys_devlog`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `ss_sys_log`
--
ALTER TABLE `ss_sys_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `ss_sys_multilang`
--
ALTER TABLE `ss_sys_multilang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_sys_role`
--
ALTER TABLE `ss_sys_role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `ss_sys_role_item`
--
ALTER TABLE `ss_sys_role_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_user`
--
ALTER TABLE `ss_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `ss_user_comment`
--
ALTER TABLE `ss_user_comment`
  ADD PRIMARY KEY (`uc_id`);

--
-- Indexes for table `ss_user_favorite`
--
ALTER TABLE `ss_user_favorite`
  ADD PRIMARY KEY (`uf_id`);

--
-- Indexes for table `ss_user_feedback`
--
ALTER TABLE `ss_user_feedback`
  ADD PRIMARY KEY (`fk_id`);

--
-- Indexes for table `ss_user_feedback_type`
--
ALTER TABLE `ss_user_feedback_type`
  ADD PRIMARY KEY (`fkt_id`);

--
-- Indexes for table `ss_user_group`
--
ALTER TABLE `ss_user_group`
  ADD PRIMARY KEY (`ug_id`);

--
-- Indexes for table `ss_user_info`
--
ALTER TABLE `ss_user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `ss_user_inquiry`
--
ALTER TABLE `ss_user_inquiry`
  ADD PRIMARY KEY (`ui_id`);

--
-- Indexes for table `ss_user_level`
--
ALTER TABLE `ss_user_level`
  ADD PRIMARY KEY (`level_id`);

--
-- Indexes for table `ss_user_msg`
--
ALTER TABLE `ss_user_msg`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `ss_user_qq`
--
ALTER TABLE `ss_user_qq`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `ss_user_ticket`
--
ALTER TABLE `ss_user_ticket`
  ADD PRIMARY KEY (`t_id`);

--
-- Indexes for table `ss_user_weibo`
--
ALTER TABLE `ss_user_weibo`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `ss_user_wx`
--
ALTER TABLE `ss_user_wx`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ss_cascade`
--
ALTER TABLE `ss_cascade`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '级联组id';

--
-- AUTO_INCREMENT for table `ss_cascade_data`
--
ALTER TABLE `ss_cascade_data`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '级联数据id';

--
-- AUTO_INCREMENT for table `ss_cms_article`
--
ALTER TABLE `ss_cms_article`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '列表信息id', AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `ss_cms_block`
--
ALTER TABLE `ss_cms_block`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '碎片数据id', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ss_cms_cate`
--
ALTER TABLE `ss_cms_cate`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '二级类别id', AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ss_cms_column`
--
ALTER TABLE `ss_cms_column`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '栏目id', AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `ss_cms_file`
--
ALTER TABLE `ss_cms_file`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '软件信息id', AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ss_cms_flag`
--
ALTER TABLE `ss_cms_flag`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '信息标记id', AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `ss_cms_info`
--
ALTER TABLE `ss_cms_info`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '单页id', AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `ss_cms_photo`
--
ALTER TABLE `ss_cms_photo`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '图片信息id', AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `ss_cms_src`
--
ALTER TABLE `ss_cms_src`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '来源id', AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `ss_cms_tag`
--
ALTER TABLE `ss_cms_tag`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `ss_cms_tag_assign`
--
ALTER TABLE `ss_cms_tag_assign`
  MODIFY `ta_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `ss_cms_video`
--
ALTER TABLE `ss_cms_video`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '视频信息id', AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ss_diymodel_faqs`
--
ALTER TABLE `ss_diymodel_faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `ss_diy_field`
--
ALTER TABLE `ss_diy_field`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自定义字段ID', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ss_diy_model`
--
ALTER TABLE `ss_diy_model`
  MODIFY `dm_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自定义模型id', AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ss_ext_ad`
--
ALTER TABLE `ss_ext_ad`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '信息id', AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `ss_ext_ad_type`
--
ALTER TABLE `ss_ext_ad_type`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '广告位id', AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ss_ext_job`
--
ALTER TABLE `ss_ext_job`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '招聘信息id', AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ss_ext_link`
--
ALTER TABLE `ss_ext_link`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '友情链接id', AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `ss_ext_link_type`
--
ALTER TABLE `ss_ext_link_type`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '友情链接类型id', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ss_ext_nav`
--
ALTER TABLE `ss_ext_nav`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '导航id', AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `ss_ext_vote`
--
ALTER TABLE `ss_ext_vote`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '投票id', AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ss_ext_vote_data`
--
ALTER TABLE `ss_ext_vote_data`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '投票数据id';

--
-- AUTO_INCREMENT for table `ss_ext_vote_option`
--
ALTER TABLE `ss_ext_vote_option`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '投票选项id', AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `ss_like`
--
ALTER TABLE `ss_like`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT for table `ss_queue`
--
ALTER TABLE `ss_queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=365;

--
-- AUTO_INCREMENT for table `ss_shop_attribute`
--
ALTER TABLE `ss_shop_attribute`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '商品属性id', AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `ss_shop_brand`
--
ALTER TABLE `ss_shop_brand`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '品牌id', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ss_shop_getmode`
--
ALTER TABLE `ss_shop_getmode`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '货到方式id', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ss_shop_order`
--
ALTER TABLE `ss_shop_order`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '商品订单id';

--
-- AUTO_INCREMENT for table `ss_shop_payment`
--
ALTER TABLE `ss_shop_payment`
  MODIFY `pay_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '支付方式id', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ss_shop_product`
--
ALTER TABLE `ss_shop_product`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '商品id', AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `ss_shop_product_cate`
--
ALTER TABLE `ss_shop_product_cate`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '商品类型id', AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `ss_shop_shipping`
--
ALTER TABLE `ss_shop_shipping`
  MODIFY `ship_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '配送方式id', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ss_site_help`
--
ALTER TABLE `ss_site_help`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '列表信息id', AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `ss_site_help_cate`
--
ALTER TABLE `ss_site_help_cate`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '二级类别id', AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `ss_site_help_flag`
--
ALTER TABLE `ss_site_help_flag`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '信息标记id', AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `ss_site_lnk`
--
ALTER TABLE `ss_site_lnk`
  MODIFY `lnk_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '快捷方式id', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ss_sys_admin`
--
ALTER TABLE `ss_sys_admin`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '信息id', AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `ss_sys_config`
--
ALTER TABLE `ss_sys_config`
  MODIFY `cfg_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=260;

--
-- AUTO_INCREMENT for table `ss_sys_devlog`
--
ALTER TABLE `ss_sys_devlog`
  MODIFY `log_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ss_sys_log`
--
ALTER TABLE `ss_sys_log`
  MODIFY `log_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ss_sys_multilang`
--
ALTER TABLE `ss_sys_multilang`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '站点ID', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ss_sys_role`
--
ALTER TABLE `ss_sys_role`
  MODIFY `role_id` tinyint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '角色id', AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ss_sys_role_item`
--
ALTER TABLE `ss_sys_role_item`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1305;

--
-- AUTO_INCREMENT for table `ss_user`
--
ALTER TABLE `ss_user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户id', AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `ss_user_comment`
--
ALTER TABLE `ss_user_comment`
  MODIFY `uc_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '评论id';

--
-- AUTO_INCREMENT for table `ss_user_favorite`
--
ALTER TABLE `ss_user_favorite`
  MODIFY `uf_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '收藏ID', AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `ss_user_feedback`
--
ALTER TABLE `ss_user_feedback`
  MODIFY `fk_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '留言id', AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ss_user_feedback_type`
--
ALTER TABLE `ss_user_feedback_type`
  MODIFY `fkt_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ss_user_group`
--
ALTER TABLE `ss_user_group`
  MODIFY `ug_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户组id', AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ss_user_inquiry`
--
ALTER TABLE `ss_user_inquiry`
  MODIFY `ui_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '留言id', AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `ss_user_level`
--
ALTER TABLE `ss_user_level`
  MODIFY `level_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户组id', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ss_user_msg`
--
ALTER TABLE `ss_user_msg`
  MODIFY `msg_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT for table `ss_user_ticket`
--
ALTER TABLE `ss_user_ticket`
  MODIFY `t_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
