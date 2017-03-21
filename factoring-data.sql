-- phpMyAdmin SQL Dump
-- version 4.4.15
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-03-21 17:23:45
-- 服务器版本： 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `factoring`
--

-- --------------------------------------------------------

--
-- 表的结构 `hd_admin`
--

CREATE TABLE IF NOT EXISTS `hd_admin` (
  `uid` int(10) unsigned NOT NULL,
  `username` varchar(10) NOT NULL DEFAULT '',
  `passwd` char(32) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hd_admin`
--

INSERT INTO `hd_admin` (`uid`, `username`, `passwd`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- 表的结构 `hd_article`
--

CREATE TABLE IF NOT EXISTS `hd_article` (
  `aid` int(10) unsigned NOT NULL,
  `title` varchar(155) NOT NULL DEFAULT '',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `thumb` varchar(200) NOT NULL DEFAULT '',
  `content` text,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `info` varchar(155) NOT NULL DEFAULT '',
  `cid` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hd_article`
--

INSERT INTO `hd_article` (`aid`, `title`, `time`, `thumb`, `content`, `type`, `info`, `cid`) VALUES
(56, '热烈祝贺盛龙保理为北京科技产业联盟执行秘书长单位', 1478327411, '14900831147077.jpg', '<p style="text-indent:32px"><span style="font-size:14px">2016</span><span style="font-size:14px;font-family:Microsoft YaHei">年</span><span style="font-size:14px">11</span><span style="font-size:14px;font-family:Microsoft YaHei">月</span><span style="font-size:14px">5</span><span style="font-size:14px;font-family:Microsoft YaHei">日，在中关村石景山科技园企业创新中心，盛龙创实保理有限公司董事长郭音龙在园区领导的见证下，接过了北京科技产业联盟的聘书，成为北京科技产业联盟执行秘书长，盛龙创实保理有限公司成为北京科技产业联盟执行秘书长单位。</span></p><p><span style="font-size:14px;font-family:Microsoft YaHei">北京科技产业联盟是经民政局、科委批准登记成立的社团法人单位，批号为社证字第</span><span style="font-size:14px">0810095</span><span style="font-size:14px;font-family:Microsoft YaHei">号，是区域性的科技服务行业协会组织。产业联盟的宗旨是，宣传贯彻北京市有关科技服务政策法规、研究科技服务领域中的重大理论和实际问题、培训科技服务行业专门人才、加强科技服务行业规范和企业自律管理，保护科技服务机构和被服务机构的合法权益，构建科技服务机构和被服务企业与政府主管部门之间、科技服务机构</span><span style="font-size:14px">/</span><span style="font-size:14px;font-family:Microsoft YaHei">被服务企业之间联系交流合作的桥梁与纽带，推动本地科技产业的快速健康发展。</span></p><p><span style="font-size:14px;font-family:Microsoft YaHei">盛龙创实保理公司成为联盟执行秘书长单位，将积极利用自身的金融服务属性，利用公司在银行获得的授信额度，深度服务联盟和联盟会员企业，为科技企业提供保理、短融、信用融资等金融服务。特别是在软件租赁、知识产权租赁领域，盛龙创实保理成为全国首家提出科技保理商业保理公司，也是第一家将科技行业的保理业务作为主要发展方向的保理公司。</span></p><p><span style="font-size:14px;font-family:Microsoft YaHei">盛龙创实秉承金融服务实业、金融服务科技的理念，以成为科技产业联盟执行秘书长为契机，进一步服务好科技创新企业，践行自己的商业理念！</span></p><p><br/></p>', 0, '公司新闻  科技产业联盟执行秘书长单位', 18),
(58, '盛龙保理获得哈尔滨银行五亿元综合授信', 1489048211, '14900831815636.jpg', '<p><span style="font-size:14px"> 2017</span><span style="font-size:14px;font-family:Microsoft YaHei">年</span><span style="font-size:14px">3</span><span style="font-size:14px;font-family:Microsoft YaHei">月</span><span style="font-size:14px">9</span><span style="font-size:14px;font-family:Microsoft YaHei">日，盛龙创实保理有限公司董事长郭音龙与哈尔滨银行天津分行对公业务部总经理王强在哈尔滨银行天津分行签署协议，盛龙创实公司获得哈尔滨银行五亿元综合授信。</span></p><p><span style="font-size:14px;font-family:Microsoft YaHei">盛龙创实公司将继续扩大在上市公司、国有企业、地方政府三类客户中的保理业务量，积极为客户提供优质高效的金融服务。</span></p><p><br/></p>', 0, '公司新闻  哈尔滨银行授信', 18),
(59, '盛龙保理与包商银行开展战略合作获得银行授信', 1488090611, '14900832534780.jpg', '<p><span style="font-size:14px">2017</span><span style="font-size:14px;font-family:Microsoft YaHei">年</span><span style="font-size:14px">2</span><span style="font-size:14px;font-family:Microsoft YaHei">月</span><span style="font-size:14px">26</span><span style="font-size:14px;font-family:Microsoft YaHei">日，盛龙创实保理有限公司董事长郭音龙与包商银行北京方庄支行副行长孙洪峰在包商银行方庄支行会议室签署合作协议，同时获得包商银行两亿元授信额度。</span></p><p><span style="font-size:14px;font-family:Microsoft YaHei">作为全国科技保理第一品牌，盛龙创实将把这两亿元银行授信全部用于支持科技创新企业的发展，为科技企业提供无抵押纯信用融资服务。首批服务企业将优先从北京科技产业联盟会员企业中选拔，真正将科技保理落到实处。</span></p><p><br/></p>', 0, '公司新闻 包商银行战略合作', 27),
(62, '国内保理业务进入规范调整期', 1482301811, '14900835319928.jpg', '<p><span style="color: rgb(65, 65, 65); font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;">《中国银行业保理业务规范》由中国银行业协会保理专业委员会正式发布。该规范旨在引导商业银行建立保理业务理念，规范操作流程，防范业务风险，促进保理业务健康发展。我国商业保理自2012年试点至今发展迅猛，新注册商业保理企业数量、业务量、融资量余额连续3年成倍增长。相比之下，受信用风险上升影响，我国银行保理业务规模则继续收缩，自2013年达到3万亿元高点后，2014年、2015年连续两年下跌，进入调整期。</span></p><p><span style="color: rgb(65, 65, 65); font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;">所谓商业银行保理业务，是指债权人将其应收账款转让给商业银行，由银行向其提供集应收账款催收、管理、坏账担保、融资于一体的综合性金融服务。</span></p><p><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; color: rgb(65, 65, 65); font-size: 14px;">我国保理业务起步虽晚但发展稳健。我国保理业务起步于上世纪80年代中期，经历10多年的市场探索，在2000年进入高速发展阶段。自2011年起，我国保理业务量连续4年位居全球首位。</span></p><p><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 14px; color: rgb(65, 65, 65);">专业人士表示，近10多年来，我国保理业务实现了“三个转变”。一是从国际保理业务到国际与国内并步保理业务发展的转变；二是从卖方保理业务逐步实现我国企业“走出去”到买方保理业务的转变；三是从国际规则的遵循者到影响国际规则制定的直接参与者的转变。特别是，2009年中国银行业协会成立保理专业委员会，这是我国保理业务发展史上的一个里程碑。</span></p><p><span style="color: rgb(65, 65, 65); font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;">2014年以来，随着我国经济进入新常态，全球经济的复苏势头减弱，部分主要经济体增长乏力，大宗商品价格波动加剧，国内经济下行压力进一步加大。在这种形势下，企业应收账款规模持续上升，回收周期不断延长，应收账款拖欠和坏账风险明显加大。宏观经济放缓，且行业基数已发展到一定规模，我国保理业务增长2015年开始有所下滑。保理专业委员会统计数据显示，2015年，保理专业委员会全体成员单位保理业务量合计2.87万亿元，同比下降1.71%；2016年上半年，保理业务量1.03万亿元，其中，国际保理业务量618亿美元，国内保理业务量6200亿元，同比继续下降。</span></p><p><span style="color: rgb(65, 65, 65); font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;">尽管我国经济发展进入了新常态，但对于逆周期的综合信用服务的保理行业来说，仍然有诸多发展机遇和增长潜力。</span></p><p><span style="color: rgb(65, 65, 65); font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;">报告显示，尽管银行保理业务量下降，但银行保理业务仍然在中国保理行业中占据主导地位，尤其是商业保理规模高速增长。</span></p><p><span style="color: rgb(65, 65, 65); font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;">与银行相比，商业保理公司在市场细分、客户服务、数据处理等方面具有独特优势。</span></p><p><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; color: rgb(65, 65, 65); font-size: 14px;">“与银行不同，商业保理公司往往更专注于某个行业，尤其是直接服务于集团平台的商业保理公司，更容易纵向挖掘细分行业、渗透产业链，能更细致地了解行业情况、交易特点、业务流程，从而提升风险辨别和控制能力。这也使得商业保理更贴合保理业务的本质，更看重对应收账款质量的评估，明显有别于传统信贷方式。”</span></p><p><span style="color: rgb(65, 65, 65); font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;">在保理业务发展过程中，风险问题不容回避。目前，保理行业的风险包括信用风险、操作风险、法律及合规风险等，既有外生因素，也有内生因素。随着经济增长的不确定性增强，保理业务面临的风险因素日益复杂化。</span></p><p><span style="color: rgb(65, 65, 65); font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;">此外，由于商业保理行业定位不清，监管缺失，造成一些商业保理公司业务模式出现偏差，竞相以“融资”作为主营业务甚至唯一业务，与行业内外的竞争对手进行恶性竞争，常常又因为资金来源匮乏而捉襟见肘，因为利润微薄而面临生存和发展危机。</span></p><p><span style="color: rgb(65, 65, 65); font-size: 14px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;">中国银行业协会党委书记、专职副会长潘光伟表示，在这样的背景下，中国银监会先后出台《中国银监会关于加强银行保理融资业务管理的通知》和《商业银行保理业务管理暂行办法》，监管部门出台的系统性、全局性的指导文件，对保理业务的发展提出了新的监管要求。《商业银行保理业务管理暂行办法》特别强调要求中国银行业协会充分发挥自律、协调、规范的职能，建立并持续完善银行保理业务的行业自律机制。对此，中国银行业协会保理专业委员会也完成修订《中国银行业保理业务规范》，进一步规范银行业保理业务的开展和实施，共同维护健康良好的市场环境。</span></p><p><br/></p>', 1, '行业动态 规范调整', 27);

-- --------------------------------------------------------

--
-- 表的结构 `hd_banner`
--

CREATE TABLE IF NOT EXISTS `hd_banner` (
  `bid` int(11) NOT NULL,
  `src` varchar(100) NOT NULL COMMENT '图片名称',
  `words` varchar(200) NOT NULL COMMENT '图片描述说明'
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hd_banner`
--

INSERT INTO `hd_banner` (`bid`, `src`, `words`) VALUES
(9, '14899959458115.png', '全国商业保理服务第一家'),
(10, '14899960682939.png', '全国商业保理服务第一家'),
(11, '14899960852740.png', '全国商业保理服务第一家');

-- --------------------------------------------------------

--
-- 表的结构 `hd_cases`
--

CREATE TABLE IF NOT EXISTS `hd_cases` (
  `caid` int(11) NOT NULL COMMENT '主键',
  `title` varchar(160) NOT NULL COMMENT '标题',
  `time` int(10) NOT NULL COMMENT '发表时间',
  `thumb` varchar(200) NOT NULL COMMENT '图片',
  `content` text NOT NULL COMMENT '内容',
  `type` varchar(20) NOT NULL COMMENT '标签',
  `info` varchar(100) NOT NULL COMMENT '第二标签'
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hd_cases`
--

INSERT INTO `hd_cases` (`caid`, `title`, `time`, `thumb`, `content`, `type`, `info`) VALUES
(8, '经典案例', 1487668933, '14900817377553.jpg', '<p>2017年3月，盛龙保理完成了地方政府工程保理项目。< 项目背景><实施方案><项目流程><br/></p>', '工程保理', 'PPP项目'),
(9, '经典案例', 1488446533, '14900817585015.jpg', '<p>盛龙保理参与的某国内知名药企应收账款管理项目。具体项目介绍如下。</p>', '医疗保理', '应收账款管理'),
(10, '经典案例', 1490081689, '14900816898802.jpg', '<p>盛龙保理为国高新技术企业、瞪羚企业等优质科技企业提供快速保理服务通道。</p>', '科技保理', '瞪羚企业融资服务');

-- --------------------------------------------------------

--
-- 表的结构 `hd_category`
--

CREATE TABLE IF NOT EXISTS `hd_category` (
  `cid` int(10) unsigned NOT NULL,
  `cname` varchar(15) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hd_category`
--

INSERT INTO `hd_category` (`cid`, `cname`) VALUES
(18, '奇闻'),
(25, '搞笑'),
(26, '趣事'),
(27, '行业');

-- --------------------------------------------------------

--
-- 表的结构 `hd_company`
--

CREATE TABLE IF NOT EXISTS `hd_company` (
  `coid` int(11) NOT NULL,
  `info` text NOT NULL COMMENT '简介',
  `culture` text NOT NULL COMMENT '优势',
  `preone` varchar(200) NOT NULL COMMENT '预留'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hd_company`
--

INSERT INTO `hd_company` (`coid`, `info`, `culture`, `preone`) VALUES
(1, '深圳盛龙创实保理有限公司（简称“盛龙创实”）是注册在深圳前海的商业保理公司，办公总部设在北京，办公地址位于北京CBD核心区，目前在北京、武汉设有分公司。盛龙创实为中国服务贸易协会商业保理专业委员会（CFEC）、北京商业保理协会会员单位，中关村科技产业联盟执行秘书长单位，在保理业务中首次提出并践行科技保理业务，为全国科技保理第一家。<br><br>\r\n盛龙创实的常规保理业务主要服务上市公司、国有企业和地方政府，公司使用自有资金和银行授信额度，为客户提供应收/付账款融资、工程垫资、贸易垫资、租赁保理、应收账款催收等综合金融服务。盛龙创实努力用金融业务平滑贸易链和供应链中的各个环节，促进贸易成交，促进实体经济发展。<br><br>\r\n同时，盛龙创实在北京市科委的领导下，立足中关村园区，为园区科技创业企业在信用融资、知识产权租赁、软硬件租赁等领域提供不高于500万元人民币的科技保理金融服务。解决中小科技企业在资金使用上的燃眉之急，不再是锦上添花，而力求雪中送炭。\r\n盛龙创实保理，科技保理第一家！\r\n金融服务实业，金融服务科技！', '<b>符合市场需求的保理产品及服务</b>\r\n<br>在目前开展的保理业务模式的基础上，不断根据宏观政策和市场需求，持续开发新的保理业务模式，进一步强化内部管理机制，提升服务水平。\r\n<br><br>\r\n<b>\r\n强大的金融机构资金渠道支持</b>\r\n<br>盛龙保理的业务模式获得廊坊银行、哈尔滨银行、恒丰银行、中信银行、包商银行、平安银行、浦发银行、中信证券、中信建投证券、平安信托、方正证券、国药保理等国内国际金融机构的认可和支持，保理产品已在金融市场间交易。\r\n<br><br>\r\n\r\n<b>金融、保理、资产管理等行业资深专家团队</b>\r\n<br>团队主要由资深的银行专家、投资专家、财务专家、风险管理及企业专家组成，拥有较丰富的金融市场运作和管理经验。\r\n<br><br>\r\n<b>\r\n政府扶植及政府支持</b>\r\n<br>盛龙保理最主要的目标客户群为成长型的中小企业，致力于为实体经济领域的中小企业提供中短期贸易融资，完全符合国家的信贷政策走向；盛龙保理落户深圳，获得深圳市政府在财政、税收政策方面支持。\r\n<br><br>\r\n\r\n<b>完善的风险管控体系\r\n</b><br>将客户开发、风险识别、资金使用、监管等环节分别独立，各部门既分工合作又分权制约，任何一个部门均不具备业务决定权，均按照业务流程要求完成各自工作。', '');

-- --------------------------------------------------------

--
-- 表的结构 `hd_contact`
--

CREATE TABLE IF NOT EXISTS `hd_contact` (
  `usid` int(11) NOT NULL,
  `tel` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `other` varchar(200) NOT NULL COMMENT '其他说明'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hd_contact`
--

INSERT INTO `hd_contact` (`usid`, `tel`, `email`, `address`, `other`) VALUES
(1, '010 5957-6563', 'shinnor@163.com', '北京市东城区银河SOHO B20911', 'nothing');

-- --------------------------------------------------------

--
-- 表的结构 `hd_partner`
--

CREATE TABLE IF NOT EXISTS `hd_partner` (
  `pid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL COMMENT '合作伙伴名称',
  `url` varchar(100) NOT NULL COMMENT '链接地址',
  `logo` varchar(200) NOT NULL COMMENT 'logo',
  `preone` varchar(50) NOT NULL,
  `pretwo` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hd_partner`
--

INSERT INTO `hd_partner` (`pid`, `name`, `url`, `logo`, `preone`, `pretwo`) VALUES
(28, 'ddd', 'www.aaa.com', '14900652426639.png', '', ''),
(29, 'ddd', 'www.aaa.com', '14900652547461.png', '', ''),
(30, 'ddd', 'www.aaa.com', '14900652666888.png', '', ''),
(31, 'ddd', 'www.aaa.com', '14900652788350.png', '', ''),
(32, 'ddd', 'www.aaa.com', '14900652909306.png', '', ''),
(33, 'ddd', 'www.aaa.com', '14900653058047.png', '', ''),
(34, 'd', 'www.aaa.com', '14900653157874.png', '', ''),
(35, 'ddd', 'www.aaa.com', '14900653291375.png', '', ''),
(36, 'ddd', 'www.aaa.com', '14900653422771.png', '', ''),
(37, 'ddd', 'www.aaa.com', '14900654013544.png', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `hd_user`
--

CREATE TABLE IF NOT EXISTS `hd_user` (
  `uid` int(11) NOT NULL,
  `name` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `company` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(300) NOT NULL COMMENT '信息',
  `time` int(11) NOT NULL COMMENT '提交时间'
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `hd_user`
--

INSERT INTO `hd_user` (`uid`, `name`, `email`, `phone`, `company`, `subject`, `message`, `time`) VALUES
(103, 'name', '413961180@qq.com', '18210788250', 'baidu', 'obj', 'message', 0),
(104, 'name', '413961180@qq.com', '18210788250', 'baidu', 'obj', 'message', 0),
(105, 'name', '413961180@qq.com', '18210788250', 'baidu', 'obj', 'message', 0),
(106, 'name', '413961180@qq.com', '18210788250', 'baidu', 'obj', 'message', 0),
(107, 'name', '413961180@qq.com', '18210788250', 'baidu', 'obj', 'message', 0),
(108, 'name', '413961180@qq.com', '18210788250', 'baidu', 'obj', 'message', 0),
(109, 'name', '413961180@qq.com', '18210788250', 'baidu', 'obj', 'message', 0),
(111, 'name', '413961180@qq.com', '18210788250', 'baidu', 'obj', 'message', 0),
(112, 'name', '413961180@qq.com', '18210788250', 'baidu', 'obj', 'message', 0),
(113, 'name', '413961180@qq.com', '18210788250', 'baidu', 'obj', 'message', 0),
(114, 'name', '413961180@qq.com', '18210788250', 'baidu', 'obj', 'message', 0),
(115, 'name', '413961180@qq.com', '18210788250', 'baidu', 'obj', 'message', 0),
(116, 'name', '413961180@qq.com', '18210788250', 'baidu', 'obj', 'message', 0),
(117, 'name', '413961180@qq.com', '18210788250', 'baidu', 'obj', 'message', 0),
(118, 'name', '413961180@qq.com', '18210788250', 'baidu', 'obj', 'message', 0),
(119, 'name', '413961180@qq.com', '18210788250', 'baidu', 'obj', 'message', 0),
(120, 'name', '413961180@qq.com', '18210788250', 'baidu', 'obj', 'message', 0),
(121, 'name', '413961180@qq.com', '18210788250', 'baidu', 'obj', 'message', 0),
(122, 'name', '413961180@qq.com', '18210788250', 'baidu', 'obj', 'message', 0),
(123, 'name', '413961180@qq.com', '18210788250', 'baidu', 'obj', 'message', 0),
(124, 'name', '413961180@qq.com', '18210788250', 'baidu', 'obj', 'message', 0),
(125, 'name', '413961180@qq.com', '18210788250', 'baidu', 'obj', 'message', 0),
(126, '郜元宝', '1309877947@qq.com', '15693966593', '', 'd', '你好你好你好你好信息干哪啊还是用', 1489477148),
(127, '呢啦啦啦', 'yoht-ar@163.com', '15693966593', 'sssssss', '11111', 'sssssssssssssssssssssssssssse', 1489477209);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hd_admin`
--
ALTER TABLE `hd_admin`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `hd_article`
--
ALTER TABLE `hd_article`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `hd_banner`
--
ALTER TABLE `hd_banner`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `hd_cases`
--
ALTER TABLE `hd_cases`
  ADD PRIMARY KEY (`caid`);

--
-- Indexes for table `hd_category`
--
ALTER TABLE `hd_category`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `hd_company`
--
ALTER TABLE `hd_company`
  ADD PRIMARY KEY (`coid`);

--
-- Indexes for table `hd_contact`
--
ALTER TABLE `hd_contact`
  ADD PRIMARY KEY (`usid`);

--
-- Indexes for table `hd_partner`
--
ALTER TABLE `hd_partner`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `hd_user`
--
ALTER TABLE `hd_user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hd_admin`
--
ALTER TABLE `hd_admin`
  MODIFY `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `hd_article`
--
ALTER TABLE `hd_article`
  MODIFY `aid` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `hd_banner`
--
ALTER TABLE `hd_banner`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `hd_cases`
--
ALTER TABLE `hd_cases`
  MODIFY `caid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `hd_category`
--
ALTER TABLE `hd_category`
  MODIFY `cid` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `hd_company`
--
ALTER TABLE `hd_company`
  MODIFY `coid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `hd_contact`
--
ALTER TABLE `hd_contact`
  MODIFY `usid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `hd_partner`
--
ALTER TABLE `hd_partner`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `hd_user`
--
ALTER TABLE `hd_user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=128;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
