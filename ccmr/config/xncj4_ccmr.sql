-- phpMyAdmin SQL Dump
-- version 4.6.4deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 2017-05-02 16:40:55
-- 服务器版本： 5.7.15-1
-- PHP Version: 7.0.12-2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xncj4_ccmr`
--

-- --------------------------------------------------------

--
-- 表的结构 `achievement`
--

CREATE TABLE `achievement` (
  `id` int(11) NOT NULL,
  `author` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '作者',
  `subject` text COLLATE utf8_bin NOT NULL COMMENT '论文题目',
  `periodical` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '期刊/会议名称',
  `year` year(4) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `serial_number` text COLLATE utf8_bin COMMENT '卷期页码',
  `ei` text COLLATE utf8_bin,
  `hint` text COLLATE utf8_bin COMMENT '备注',
  `publish_at` date DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `achievement`
--

INSERT INTO `achievement` (`id`, `author`, `subject`, `periodical`, `year`, `address`, `serial_number`, `ei`, `hint`, `publish_at`, `create_at`) VALUES
(1, '	 Xiao-Yuan Jing, Shi Ying, Zhiwu Zhang,  Shanshan Wu, Jin Liu', 'Dictionary learning based software defect prediction', 'ICSE 2014', NULL, '', 'P414-423, 2014 ', '', 'CCF A类', NULL, '0000-00-00 00:00:00'),
(2, '杨曦，王宏霞', '基于GIF动态图像的自适应隐写方案', '中国密码学会2013年会', 2013, '福州', '福州, 2013.', '', '', '2012-06-12', '0000-00-00 00:00:00'),
(3, '王宏霞, 范明泉', '基于质心的混合域半脆弱音频水印算法', '中国科学：信息科学', NULL, '', '2010, 40 (2): 313-326', '', '', NULL, '0000-00-00 00:00:00'),
(4, 'H. Y. Zhao, H. X. Wang', 'Quadruple watermarking against geometrical attacks based on searching for vertexes', 'IEICE Trans. on fundamentals', NULL, '', '2007, E90-A(6): 1244-1247', 'SCI: 188BC', 'SCI: 188BC', '2013-06-04', '0000-00-00 00:00:00'),
(5, 'Z. H. Liu, H. X. Wang', 'Pseudo-zernike moments-based audio content authentication algorithm robust against feature-analysed substitution attack', 'Multimedia Tools and Applications', NULL, '', 'DOI 10.1007/s11042-012-1235-5, 2012, pp.1-21(SCI)', '', '', NULL, '0000-00-00 00:00:00'),
(6, 'Chen Yang, Peng Liang', 'Automated Software Architectural Synthesis using\r\n\r\n Patterns: A Cooperative Coevolution Approach', 'SEKE 2014', NULL, '', '2014:308–313', '', 'CCF C类', '2012-11-30', '2016-07-20 14:43:48');

-- --------------------------------------------------------

--
-- 表的结构 `action`
--

CREATE TABLE `action` (
  `id` int(11) NOT NULL,
  `content` text COLLATE utf8_bin NOT NULL,
  `author` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `brivery` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `pic` text COLLATE utf8_bin,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `level` smallint(6) DEFAULT '10',
  `title` varchar(100) COLLATE utf8_bin NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('学生', '3', 1467670048),
('教师', '3', 1470886644),
('管理员', '2', 1468911276),
('账户控制', '3', 1467670417),
('超管', '1', 1470900118);

-- --------------------------------------------------------

--
-- 表的结构 `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `rule_name` varchar(64) DEFAULT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('*', 1, NULL, NULL, NULL, 1467665607, 1467665607),
('/*', 2, NULL, NULL, NULL, 1467666508, 1467666508),
('/achievement/*', 2, NULL, NULL, NULL, 1469001253, 1469001253),
('/achievement/create', 2, NULL, NULL, NULL, 1469001259, 1469001259),
('/achievement/delete', 2, NULL, NULL, NULL, 1469001256, 1469001256),
('/achievement/index', 2, NULL, NULL, NULL, 1469001261, 1469001261),
('/achievement/list', 2, NULL, NULL, NULL, 1469088384, 1469088384),
('/achievement/update', 2, NULL, NULL, NULL, 1469001258, 1469001258),
('/achievement/view', 2, NULL, NULL, NULL, 1469001260, 1469001260),
('/admin/*', 2, NULL, NULL, NULL, 1467329405, 1467329405),
('/admin/assignment/*', 2, NULL, NULL, NULL, 1467618635, 1467618635),
('/admin/assignment/index', 2, NULL, NULL, NULL, 1467619512, 1467619512),
('/admin/default/*', 2, NULL, NULL, NULL, 1467618632, 1467618632),
('/admin/default/index', 2, NULL, NULL, NULL, 1467618786, 1467618786),
('/admin/menu/*', 2, NULL, NULL, NULL, 1467618630, 1467618630),
('/admin/menu/index', 2, NULL, NULL, NULL, 1467619865, 1467619865),
('/admin/permission/*', 2, NULL, NULL, NULL, 1467618627, 1467618627),
('/admin/permission/index', 2, NULL, NULL, NULL, 1467619256, 1467619256),
('/admin/role/*', 2, NULL, NULL, NULL, 1467618615, 1467618615),
('/admin/role/index', 2, NULL, NULL, NULL, 1467619399, 1467619399),
('/admin/route/*', 2, NULL, NULL, NULL, 1467618618, 1467618618),
('/admin/route/index', 2, NULL, NULL, NULL, 1467619090, 1467619090),
('/admin/rule/*', 2, NULL, NULL, NULL, 1467618620, 1467618620),
('/admin/user/*', 2, NULL, NULL, NULL, 1467618623, 1467618623),
('/cate/*', 2, NULL, NULL, NULL, 1467329424, 1467329424),
('/cate/create', 2, NULL, NULL, NULL, 1467778747, 1467778747),
('/cate/delete', 2, NULL, NULL, NULL, 1467778749, 1467778749),
('/cate/index', 2, NULL, NULL, NULL, 1467778730, 1467778730),
('/cate/update', 2, NULL, NULL, NULL, 1467778746, 1467778746),
('/cate/view', 2, NULL, NULL, NULL, 1467778744, 1467778744),
('/dashboard/*', 2, NULL, NULL, NULL, 1467471367, 1467471367),
('/dashboard/index', 2, NULL, NULL, NULL, 1467471299, 1467471299),
('/debug/*', 2, NULL, NULL, NULL, 1469111456, 1469111456),
('/debug/default/*', 2, NULL, NULL, NULL, 1469378605, 1469378605),
('/document/*', 2, NULL, NULL, NULL, 1467669187, 1467669187),
('/document/create', 2, NULL, NULL, NULL, 1468922802, 1468922802),
('/document/delete', 2, NULL, NULL, NULL, 1468922810, 1468922810),
('/document/index', 2, NULL, NULL, NULL, 1467667212, 1467667212),
('/document/list', 2, NULL, NULL, NULL, 1468922808, 1468922808),
('/document/ueditor', 2, NULL, NULL, NULL, 1479985176, 1479985176),
('/document/update', 2, NULL, NULL, NULL, 1468922805, 1468922805),
('/document/upload', 2, NULL, NULL, NULL, 1468922811, 1468922811),
('/document/view', 2, NULL, NULL, NULL, 1468922801, 1468922801),
('/frontend/*', 2, NULL, NULL, NULL, 1468924280, 1468924280),
('/gii/*', 2, NULL, NULL, NULL, 1467329415, 1467329415),
('/news/*', 2, NULL, NULL, NULL, 1491965080, 1491965080),
('/pic/*', 2, NULL, NULL, NULL, 1476963633, 1476963633),
('/pic/index', 2, NULL, NULL, NULL, 1478293130, 1478293130),
('/report/*', 2, NULL, NULL, NULL, 1468549427, 1468549427),
('/report/create', 2, NULL, NULL, NULL, 1468549433, 1468549433),
('/report/delete', 2, NULL, NULL, NULL, 1468549443, 1468549443),
('/report/index', 2, NULL, NULL, NULL, 1468549438, 1468549438),
('/report/list-all', 2, NULL, NULL, NULL, 1468549431, 1468549431),
('/report/update', 2, NULL, NULL, NULL, 1468549441, 1468549441),
('/report/upload', 2, NULL, NULL, NULL, 1469348010, 1469348010),
('/report/view', 2, NULL, NULL, NULL, 1468549437, 1468549437),
('/rest/chat/*', 2, NULL, NULL, NULL, 1469551683, 1469551683),
('/rest/chat/create', 2, NULL, NULL, NULL, 1469551694, 1469551694),
('/rest/chat/delete', 2, NULL, NULL, NULL, 1469551694, 1469551694),
('/rest/chat/index', 2, NULL, NULL, NULL, 1469551692, 1469551692),
('/rest/chat/options', 2, NULL, NULL, NULL, 1469551694, 1469551694),
('/rest/chat/update', 2, NULL, NULL, NULL, 1469551694, 1469551694),
('/rest/chat/view', 2, NULL, NULL, NULL, 1469551694, 1469551694),
('/rest/user/*', 2, NULL, NULL, NULL, 1469608694, 1469608694),
('/site/*', 2, NULL, NULL, NULL, 1467666516, 1467666516),
('/site/index', 2, NULL, NULL, NULL, 1467666518, 1467666518),
('/site/ydyl', 2, NULL, NULL, NULL, 1491952539, 1491952539),
('/social/*', 2, NULL, NULL, NULL, 1470481164, 1470481164),
('/staff/*', 2, NULL, NULL, NULL, 1491860821, 1491860821),
('/user/*', 2, NULL, NULL, NULL, 1467669858, 1467669858),
('/user/admin/*', 2, NULL, NULL, NULL, 1467326412, 1467326412),
('/user/admin/assignments', 2, NULL, NULL, NULL, 1467670515, 1467670515),
('/user/admin/block', 2, NULL, NULL, NULL, 1467326869, 1467326869),
('/user/admin/confirm', 2, NULL, NULL, NULL, 1467325739, 1467325739),
('/user/admin/create', 2, NULL, NULL, NULL, 1467171775, 1467171775),
('/user/admin/delete', 2, NULL, NULL, NULL, 1467670514, 1467670514),
('/user/admin/index', 2, NULL, NULL, NULL, 1467171882, 1467171882),
('/user/profile/*', 2, NULL, NULL, NULL, 1467670508, 1467670508),
('/user/profile/index', 2, NULL, NULL, NULL, 1467669866, 1467669866),
('/user/profile/show', 2, NULL, NULL, NULL, 1467670510, 1467670510),
('/user/recovery/*', 2, NULL, NULL, NULL, 1467619211, 1467619211),
('/user/recovery/request', 2, NULL, NULL, NULL, 1467670453, 1467670453),
('/user/recovery/reset', 2, NULL, NULL, NULL, 1467670455, 1467670455),
('/user/registration/*', 2, NULL, NULL, NULL, 1467670498, 1467670498),
('/user/registration/confirm', 2, NULL, NULL, NULL, 1467670501, 1467670501),
('/user/registration/connect', 2, NULL, NULL, NULL, 1467670503, 1467670503),
('/user/registration/register', 2, NULL, NULL, NULL, 1467670504, 1467670504),
('/user/registration/resend', 2, NULL, NULL, NULL, 1467670500, 1467670500),
('/user/security/*', 2, NULL, NULL, NULL, 1467670482, 1467670482),
('/user/security/auth', 2, NULL, NULL, NULL, 1467670474, 1467670474),
('/user/security/login', 2, NULL, NULL, NULL, 1467670479, 1467670479),
('/user/security/logout', 2, NULL, NULL, NULL, 1467670481, 1467670481),
('/user/settings/*', 2, NULL, NULL, NULL, 1467670496, 1467670496),
('/user/settings/account', 2, NULL, NULL, NULL, 1467670489, 1467670489),
('/user/settings/confirm', 2, NULL, NULL, NULL, 1467670487, 1467670487),
('/user/settings/disconnect', 2, NULL, NULL, NULL, 1467670494, 1467670494),
('/user/settings/networks', 2, NULL, NULL, NULL, 1467670492, 1467670492),
('/user/settings/profile', 2, NULL, NULL, NULL, 1467670491, 1467670491),
('/user/settings/profile/upload', 2, NULL, NULL, NULL, 1469350105, 1469350105),
('/user/settings/upload', 2, NULL, NULL, NULL, 1469350060, 1469350060),
('document/update', 2, '创建[document/update]权限', NULL, NULL, 1466452896, 1466452896),
('guest', 1, '游客，未登录', NULL, NULL, 1467474422, 1468922534),
('item/index', 2, '创建[item/index]权限', NULL, NULL, 1462721081, 1462794125),
('个人信息设置', 2, NULL, NULL, NULL, 1469350503, 1469350503),
('发布信息', 2, NULL, NULL, NULL, 1467556903, 1467556903),
('发布报告', 2, NULL, NULL, NULL, 1468566875, 1468921526),
('学生', 1, NULL, NULL, NULL, 1467556297, 1467556297),
('宣传图管理', 2, NULL, NULL, NULL, 1476963667, 1476963667),
('操作报告', 2, NULL, '报告', NULL, 1468921333, 1468921377),
('教师', 1, NULL, NULL, NULL, 1467556306, 1467556306),
('添加学生', 2, NULL, NULL, NULL, 1467556971, 1467556971),
('管理员', 1, '创建[管理员]角色', NULL, NULL, 1466452807, 1467161695),
('管理报告', 2, '改，删', NULL, NULL, 1468926684, 1468926684),
('账户控制', 2, NULL, NULL, NULL, 1467669944, 1467669944),
('超管', 1, NULL, NULL, NULL, 1467329457, 1467329457);

-- --------------------------------------------------------

--
-- 表的结构 `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('超管', '/achievement/*'),
('guest', '/achievement/list'),
('超管', '/admin/*'),
('超管', '/cate/*'),
('超管', '/dashboard/*'),
('学生', '/debug/*'),
('超管', '/debug/*'),
('guest', '/debug/default/*'),
('学生', '/debug/default/*'),
('发布信息', '/document/*'),
('超管', '/document/*'),
('guest', '/document/list'),
('发布信息', '/document/ueditor'),
('发布信息', '/document/update'),
('*', '/document/view'),
('guest', '/document/view'),
('guest', '/frontend/*'),
('超管', '/gii/*'),
('超管', '/news/*'),
('宣传图管理', '/pic/*'),
('使用报告', '/report/create'),
('发布报告', '/report/create'),
('使用报告', '/report/delete'),
('增改删报告', '/report/delete'),
('操作报告', '/report/delete'),
('发布报告', '/report/index'),
('使用报告', '/report/list-all'),
('发布报告', '/report/list-all'),
('使用报告', '/report/update'),
('增改删报告', '/report/update'),
('操作报告', '/report/update'),
('发布报告', '/report/upload'),
('使用报告', '/report/view'),
('发布报告', '/report/view'),
('超管', '/rest/chat/*'),
('*', '/rest/user/*'),
('超管', '/rest/user/*'),
('guest', '/site/*'),
('学生', '/social/*'),
('超管', '/staff/*'),
('超管', '/user/admin/*'),
('添加学生', '/user/admin/create'),
('添加学生', '/user/admin/index'),
('账户控制', '/user/profile/index'),
('guest', '/user/profile/show'),
('guest', '/user/registration/*'),
('个人信息设置', '/user/settings/*'),
('账户控制', '/user/settings/account'),
('账户控制', '/user/settings/profile'),
('管理员', 'document/index'),
('管理员', 'document/list'),
('guest', '个人信息设置'),
('学生', '个人信息设置'),
('学生', '使用报告'),
('管理员', '使用报告'),
('管理员', '发布信息'),
('学生', '发布报告'),
('教师', '发布报告'),
('管理员', '发布报告'),
('管理员', '增改删报告'),
('管理员', '学生'),
('管理员', '宣传图管理'),
('学生', '操作报告'),
('管理员', '教师'),
('超管', '管理员'),
('管理员', '管理报告'),
('学生', '账户控制');

-- --------------------------------------------------------

--
-- 表的结构 `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `auth_rule`
--

INSERT INTO `auth_rule` (`name`, `data`, `created_at`, `updated_at`) VALUES
('common\\components\\ReportRule', 'O:28:"common\\components\\ReportRule":3:{s:4:"name";s:28:"common\\components\\ReportRule";s:9:"createdAt";i:1468921333;s:9:"updatedAt";i:1468921333;}', 1468921333, 1468921333),
('报告', 'O:28:"common\\components\\ReportRule":3:{s:4:"name";s:6:"报告";s:9:"createdAt";i:1468908573;s:9:"updatedAt";i:1468908573;}', 1468908573, 1468908573);

-- --------------------------------------------------------

--
-- 表的结构 `cate`
--

CREATE TABLE `cate` (
  `id` int(11) NOT NULL,
  `cindex` varchar(250) NOT NULL COMMENT '唯一标识',
  `name` varchar(250) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `model` text,
  `view_index` tinytext,
  `pre_cate` int(11) DEFAULT NULL,
  `level` smallint(6) DEFAULT '10',
  `status` tinyint(4) DEFAULT '1',
  `uri` tinytext COMMENT 'uri',
  `icon` varchar(250) DEFAULT NULL,
  `type` smallint(9) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cate`
--

INSERT INTO `cate` (`id`, `cindex`, `name`, `create_time`, `model`, `view_index`, `pre_cate`, `level`, `status`, `uri`, `icon`, `type`) VALUES
(1, '', '顶部栏目', '2016-11-12 07:51:58', NULL, NULL, 0, 240, 1, '/document/42', '', 2),
(2, '', '图片栏目', '2016-11-12 08:39:54', NULL, NULL, 0, 6, 1, '', '', 2),
(3, '', '底部栏目', '2016-11-12 08:40:59', NULL, NULL, 0, 16, 1, '', '', 2),
(4, '', '其他栏目', '2017-01-18 00:33:02', NULL, NULL, 0, NULL, 1, '', '', 2),
(5, '教学研究人员', '教学研究人员', '2016-01-04 21:52:28', '["1"]', '', 28, 1, 1, '/document/list?cate=5', '', 1),
(14, 'shiyanshidongtai', '宏观要闻', '2016-02-21 14:49:48', '["1","2","3"]', 'News/index', 1, 2, 1, '/document/list?cate=14', '', 1),
(28, 'About RIEM', '企业动态', '2016-06-19 23:14:39', '', '', 1, 3, 1, '', '', 2),
(29, 'test', '测试', '2016-07-01 20:16:56', '', '', NULL, 3, 1, '', '', 1),
(31, 'lecture', '专题研究', '2016-07-07 03:01:23', '', '', 28, 1, 1, '', '', 1),
(32, 'tongzhigonggao', '通知公告', '2016-07-20 05:39:30', '', '{\r\n\'precate\':\'document\',\r\n‘route’:\'document/index\',\r\n \'date\':{\r\n          \'search\':\'DocumentSearch\'\r\n          }\r\n }', 52, 2, 1, '/document/list?cate=32', '', 1),
(34, 'home', '首页', '2016-07-20 11:11:03', '', '/site/index', 1, 1, 1, '/site/index', '/site/index', 3),
(37, 'keyanduiwu', '机构设置', '2016-07-21 15:42:04', '', '', 28, 5, 1, '/document/66', '', 4),
(39, 'index-pic', '首页滚动图片', '2016-11-04 23:04:53', '', '', 2, 1, 1, '', '', 2),
(41, 'bottompic', '首页底部图片', '2016-11-08 22:24:25', '', '', 2, 2, 1, '', '', 3),
(46, '', '首页底部链接', '2016-11-12 09:44:48', NULL, NULL, 3, 1, 1, '', '', 2),
(47, '', '西南财经大学', '2016-11-13 02:37:24', NULL, NULL, 46, 1, 1, 'http://e.swufe.edu.cn/', '', 3),
(48, '', '四川省外事侨务办公室', '2016-11-13 04:00:09', NULL, NULL, 46, 2, 1, 'http://www.scwqb.gov.cn/', '', 3),
(49, '', 'China Scholarship Council', '2016-11-13 08:52:16', NULL, NULL, 46, 3, 1, 'http://en.csc.edu.cn/', '', 3),
(51, '', '国家外国专家局', '2016-12-06 12:21:03', NULL, NULL, 46, 4, 1, 'http://www.safea.gov.cn/', '', 3),
(56, '', '经济与管理研究院', '2017-01-18 00:54:35', NULL, NULL, 46, NULL, 1, 'http://international.swufe.edu.cn/', '', 3),
(57, '', '成都市公安局出入境管理局', '2017-01-18 00:59:39', NULL, NULL, 46, NULL, 1, 'http://www.cdcrj.gov.cn/exitentry/', '', 3),
(60, '', '专业硕士研究生', '2017-03-26 22:53:00', NULL, NULL, 53, NULL, 1, '/frontend/info?id=79', '', 4),
(61, '', '科学硕士研究生', '2017-03-26 22:54:12', NULL, NULL, 53, NULL, 1, '/frontend/info?id=80', '', 4),
(62, '', '博士研究生', '2017-03-26 22:54:53', NULL, NULL, 53, NULL, 1, '/frontend/info?id=81', '', 4),
(63, '', '研究生会', '2017-03-26 22:55:31', NULL, NULL, 40, NULL, 1, '/frontend/info?id=82', '', 4),
(64, '', '职业发展', '2017-03-26 22:56:05', NULL, NULL, 40, NULL, 1, NULL, '', 4),
(65, '', '日常工作', '2017-03-26 22:56:29', NULL, NULL, 40, NULL, 1, '/document/list?cate=65', '', 1),
(66, '', '校友工作', '2017-03-26 22:56:59', NULL, NULL, 40, NULL, 1, '/document/list?cate=66', '', 1),
(67, '', '党建工作', '2017-03-26 23:09:09', NULL, NULL, 52, NULL, 1, '/document/list?cate=67', '', 1),
(68, '', '一带一路国家投资信息平台', '2017-03-27 02:16:30', NULL, NULL, 1, 4, 1, '/site/ydyl', '', 3),
(69, '', '学院领导', '2017-04-07 02:42:08', NULL, NULL, 10, 3, 1, NULL, '', 4),
(76, '', '行政机构', '2017-04-10 20:09:44', NULL, NULL, 10, 3, 1, '', '', 4),
(77, '', '联系我们', '2017-04-10 20:10:54', NULL, NULL, 10, 4, 1, '', '', 4),
(82, '', '在读博士生', '2017-04-10 20:23:36', NULL, NULL, 75, 1, 1, '', '', 4),
(83, '', '本科生培养', '2017-04-10 20:24:02', NULL, NULL, 75, 2, 1, '', '', 1),
(85, '', '党总支', '2017-04-10 20:31:25', NULL, NULL, 53, 1, 1, '', '', 1),
(86, '', '团总支', '2017-04-10 20:31:40', NULL, NULL, 53, 2, 1, '', '', 1),
(87, '', '学生活动及服务', '2017-04-10 20:32:12', NULL, NULL, 53, 3, 1, '', '', 1),
(88, '', '下载中心', '2017-04-10 20:32:38', NULL, NULL, 53, 4, 1, '', '', 3),
(89, '', '校友风采', '2017-04-10 20:34:24', NULL, NULL, 70, 1, 1, '', '', 1),
(90, '', '校友活动', '2017-04-10 20:35:20', NULL, NULL, 70, 2, 1, '', '', 1),
(91, '中国一带一路网', '中国一带一路网', '2017-04-12 02:24:00', NULL, NULL, 46, NULL, 1, 'https://www.yidaiyilu.gov.cn/', '', 3),
(92, '', '中国家庭金融中心', '2017-04-12 02:24:57', NULL, NULL, 46, NULL, 1, '', '', 3),
(93, '当地数据', '当地数据', '2017-04-12 11:35:21', NULL, NULL, 4, 2, 1, '', '', 1);

-- --------------------------------------------------------

--
-- 表的结构 `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `cindex_id` int(11) NOT NULL COMMENT '目录引索id',
  `user_id` int(11) NOT NULL COMMENT '发布者id',
  `content` tinytext NOT NULL COMMENT '内容',
  `recieve_id` int(11) DEFAULT NULL COMMENT '回复帖id',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `document`
--

CREATE TABLE `document` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `breviary` tinytext,
  `content` text NOT NULL,
  `author` varchar(100) DEFAULT NULL COMMENT '编辑',
  `cate` int(11) NOT NULL,
  `view` varchar(250) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `level` smallint(6) NOT NULL DEFAULT '10',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pic` text,
  `create_by` int(11) DEFAULT NULL COMMENT '编写者'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `document`
--

INSERT INTO `document` (`id`, `title`, `breviary`, `content`, `author`, `cate`, `view`, `status`, `level`, `create_at`, `pic`, `create_by`) VALUES
(19, 'Feel the Fire burning in my veins, the lightning strikes at my command', '', '', '', 29, NULL, 1, 10, '0000-00-00 00:00:00', NULL, NULL),
(25, '西南交通大学数学建模竞', '西南交通大学数学建模竞赛是我校的一项传统赛事，其目的是通过数学建模提高我校学生的数学应用能力与综合创新能力，是我校学生数学创新素质的检验平台。同时，竞赛也是我校参加每年9', '&lt;p&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;一、竞赛意义：&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-indent:24pt;&quot;&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;西南交通大学数学建模竞赛是我校的一项传统赛事，其目的是通过数学建模提高我校学生的数学应用能力与综合创新能力，是我校学生数学创新素质的检验平台。同时，竞赛也是我校参加每年9月份的全国“高教社杯”大学生数学建模竞赛的选拔赛，成绩优秀者将在暑期强化培训以后代表学校参加今年的全国大学生数学建模竞赛，本次竞赛是获得参加国赛资格的重要依据。 &lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;二、参赛对象： &lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;&amp;nbsp;&amp;nbsp; &amp;nbsp;3&lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;名西南交通大学在读本科生组队参赛 &lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;三、竞赛时间安排： &lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;发题时间：4月11日上午9：00 （见教务网） &lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;竞赛时间：4月11日上午9：00至4月18日中午12：00 &lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;四、竞赛报名&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;竞赛报名采取网上报名的方式，参加校赛的同学可以登录赛氪网填写队伍的信息，报名时间为2016年03月06日&lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt; &lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;00&lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;时&lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;00&lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;分——&lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;2016&lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;年&lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;03&lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;月&lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;13&lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;日&lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt; &lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;23&lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;时&lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;59&lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;分&lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;。（具体网址http://www.saikr.com/swjtu/mathm/2016）&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;五、竞赛题目： &lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;竞赛题目分A、B、C三题，参赛者任选其中一题在规定的时间内完成。 &lt;/span&gt;&lt;/p&gt;&lt;p&gt;\r\n	六、竞赛论文提交方法：&lt;/p&gt;&lt;p&gt;\r\n	&amp;nbsp; 竞赛以论文的形式作为最后的比赛成果，需要同时提交电子版和纸质版，两者内容应完全一致。论文必须使用竞赛专用封面模板。论文具体书写格式要求请参见附件。请参赛队伍按时提交论文：&lt;/p&gt;&lt;p&gt;\r\n	1、电子档论文：主要用于论文答辩及程序验证，请于竞赛结束前发送到swjtumathm@126.com并在报名网站提交。邮件主题请注明所选题号及队员名字，例如：2016校赛_A题（张三、李四、王五）。&lt;/p&gt;&lt;p&gt;\r\n	2、纸档论文：主要用于竞赛阅卷评分，请于4月18日12:30—13:00提交至犀浦校区5401教室。&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;七、竞赛答辩和验证程序阶段 &lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;对拟获奖的队伍，将进行抽样答辩及验证论文程序等，具体细则见附件。答辩日期和地点另行通知。请答辩队伍准备相关材料，在答辩日叙述论文思路、主要内容等，并回答老师有关问题。 &lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;八、竞赛评奖： &lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;由于题目有难度差异，获奖指标向难题倾斜。本次比赛设置一等奖、二等奖及三等奖若干，获奖队伍均可获校级证书。 &lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;九、竞赛相关事宜咨询 &lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;本次比赛交流QQ群号 467542593 &lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-indent:18pt;&quot;&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;关于竞赛的后续安排敬请关注数学建模协会：&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-indent:18pt;&quot;&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;微信平台：swjtu_jianmo &lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-indent:18pt;&quot;&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;新浪微博：http://weibo.com/u/3513944273 &lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-indent:18pt;&quot;&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-indent:18pt;&quot;&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;相关事宜咨询： &lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-indent:18pt;&quot;&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;张同学：18328409348&amp;nbsp; 刘同学：18328037282 &lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;十、本次比赛其余细则请见4月11日发题通知。 &lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;主办方：西南交大教务处 西南交大实验室及设备管理处 西南交大数学学院&amp;nbsp; 西南交通大学学生社团联合会 &lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;承办方：西南交大数学建模协会&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '发布单位:教务处', 29, NULL, 0, 10, '0000-00-00 00:00:00', NULL, NULL),
(26, '哈佛哈', '', '<p>是の2确认发</p>', '发布单位:教务处', 5, NULL, 0, 10, '0000-00-00 00:00:00', '', NULL),
(27, '西南交通大学2016年春季大学生电子设计竞赛通知', 's', '&lt;p style=&quot;text-align:left;text-indent: 24pt;&quot;&gt;&lt;span style=&quot;font-size: 12pt; font-family: 宋体; line-height: 150%;&quot;&gt;为\r\n加强我校大学生科技实践能力，进一步提高大学生的综合素质，更好地为大学生提供创新实践的舞台和展示自己的机会，为今年“四川省大学生电子设计竞赛”和明\r\n年“全国大学生电子设计竞赛”选拔优秀学生，教务处决定组织我校秋季大学生电子设计竞赛，现将有关事项通知如下，望各学院和全体学生予以重视，并能够积极\r\n组织、支持和参与。&lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align:left;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 12pt; font-family: 宋体; line-height: 150%;&quot;&gt;竞赛组织：水电费敢死队&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align:left;text-indent: 23.5pt;&quot;&gt;&lt;span style=&quot;font-size: 12pt; font-family: 宋体; line-height: 150%;&quot;&gt;本次竞赛由西南交大教务处主办，电气工程学院、信息科学与技术学院联合承办，由电气电气工程学院&lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;大学生科技活动中心组织工作。由教务处电子创新基地及相关教师组成竞赛组委会，并由组委会负责组织、评测、竞赛等工作。望各学院积极配合（提供实验室、机房等资源），为学生参加竞赛提供方便，提高资源使用效率。 &lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align:left;text-indent: 23.5pt;&quot;&gt;&lt;span style=&quot;font-size: 12pt; font-family: 宋体; line-height: 150%;&quot;&gt;本次竞赛得到了美国德州仪器（TI公司）中国大学计划部的支持和赞助，提供了MSP430 LauchPad单片机学习板（自带USB下载器），在此表示感谢！&lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt; &lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align:left;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 12pt; font-family: 宋体; line-height: 150%;&quot;&gt;报名事宜：&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt; &lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align:left;text-indent: 18pt;&quot;&gt;&lt;span style=&quot;font-size: 12pt; font-family: 宋体; line-height: 150%;&quot;&gt;1&lt;/span&gt;&lt;span style=&quot;font-size: 12pt; font-family: 宋体; line-height: 150%;&quot;&gt;、报名的对象：我校在籍统招本科生，以2013、2014级为主，欢迎对电子电路有兴趣的2015级新生参加。参加过校级电子竞赛获得一等奖、二等奖或参加过省级、国家级电子信息类竞赛（如电子设计、智能车等）并获奖的同学不能参加此次竞赛。&lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt; &lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align:left;text-indent: 18pt;&quot;&gt;&lt;span style=&quot;font-size: 12pt; font-family: 宋体; line-height: 150%;&quot;&gt;2&lt;/span&gt;&lt;span style=&quot;font-size: 12pt; font-family: 宋体; line-height: 150%;&quot;&gt;、报名时间：2016&lt;span style=&quot;color:windowtext;&quot;&gt;年3月14日&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;-3月22日&lt;/span&gt;&lt;span style=&quot;font-size: 12pt; font-family: 宋体; line-height: 150%;&quot;&gt;；&lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt; &lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align:left;text-indent: 18pt;&quot;&gt;&lt;span style=&quot;font-size: 12pt; font-family: 宋体; line-height: 150%;&quot;&gt;3&lt;/span&gt;&lt;span style=&quot;font-size: 12pt; font-family: 宋体; line-height: 150%;&quot;&gt;、报名方式：&lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt; &lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align:left;text-indent: 18.05pt;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 12pt; font-family: 宋体; line-height: 150%;&quot;&gt;先发送电子稿到指定邮箱，再将纸质报名表交至&lt;/span&gt;&lt;/strong&gt;&lt;strong&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;color:red;line-height:150%;&quot;&gt;X4411&lt;/span&gt;&lt;/strong&gt;&lt;strong&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;color:red;line-height:150%;&quot;&gt;。&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;color:red;line-height:150%;&quot;&gt; &lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align:left;text-indent: 24pt;&quot;&gt;&lt;span style=&quot;font-size: 12pt; font-family: 宋体; line-height: 150%;&quot;&gt;（1）报名以组为单位&lt;strong&gt;（1人一组）&lt;/strong&gt;，独立完成作品。下载附件1中报名表，填写完成后发送到：&lt;/span&gt;&lt;strong&gt;&lt;span style=&quot;font-size:14pt;font-family:宋体;color:red;line-height:150%;&quot;&gt;dxskjhdzx@126.com&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 12pt; font-family: 宋体; line-height: 150%;&quot;&gt;，邮件主题和附件均以“学号+姓名+电子设计春季赛”命名。&lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align:left;text-indent: 24pt;&quot;&gt;&lt;span style=&quot;font-size: 12pt; font-family: 宋体; line-height: 150%;&quot;&gt;（2）提交纸质报名表（附件1）至&lt;/span&gt;&lt;strong&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;color:red;line-height:150%;&quot;&gt;X4411&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 12pt; font-family: 宋体; line-height: 150%;&quot;&gt;，以便于核查。提交时间：2016年&lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;color:red;line-height:150%;&quot;&gt;3&lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;color:red;line-height:150%;&quot;&gt;月14日-3月22日晚上19：00-21：30。 &lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align:left;text-indent: 24pt;&quot;&gt;&lt;span style=&quot;font-size: 12pt; font-family: 宋体; line-height: 150%;&quot;&gt;4&lt;/span&gt;&lt;span style=&quot;font-size: 12pt; font-family: 宋体; line-height: 150%;&quot;&gt;、学习板领取：&lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt; &lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align:left;text-indent: 24pt;&quot;&gt;&lt;span style=&quot;font-size: 12pt; font-family: 宋体; line-height: 150%;&quot;&gt;本次竞赛统一使用MSP430 LauchPad单片机学习板，每组参赛同学可在规定时间内领取MSP430单片机学习板一块。&lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt; &lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align:left;text-indent: 24pt;&quot;&gt;&lt;span style=&quot;font-size: 12pt; font-family: 宋体; line-height: 150%;&quot;&gt;（1）领取时间：&lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;2016&lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;年3月14日-3月22日 晚上19:00-21:30 &lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align:left;text-indent: 24pt;&quot;&gt;&lt;span style=&quot;font-size: 12pt; font-family: 宋体; line-height: 150%;&quot;&gt;（2）领取地点：&lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;X4411&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align:left;text-indent: 24pt;&quot;&gt;&lt;span style=&quot;font-size: 12pt; font-family: 宋体; line-height: 150%;&quot;&gt;（3）领取说明：每组成员只能领取一块MSP430单片机学习板。&lt;/span&gt;&lt;strong&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;color:red;line-height:150%;&quot;&gt;领取学习板时需交付50元押金，组织方会提供押金单，便于赛后退还；&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 12pt; font-family: 宋体; line-height: 150%;&quot;&gt;对于领取学习板并顺利参加测评的同学，赛后可凭押金单直接领回押金，无需退还学习板。对于领取学习板后未能参加测评的同学，赛后需凭押金单和学习板领取押金，否则不退。&lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align:left;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 12pt; font-family: 宋体; line-height: 150%;&quot;&gt;竞赛事宜：&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt; &lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align:left;text-indent: 18pt;&quot;&gt;&lt;span style=&quot;font-size: 12pt; font-family: 宋体; line-height: 150%;&quot;&gt;1&lt;/span&gt;&lt;span style=&quot;font-size: 12pt; font-family: 宋体; line-height: 150%;&quot;&gt;、竞赛形式：由校电子设计竞赛委员会统一出题。参赛小组自行设计、制作安装。&lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align:left;text-indent: 18pt;&quot;&gt;&lt;span style=&quot;font-size: 12pt; font-family: 宋体; line-height: 150%;&quot;&gt;2&lt;/span&gt;&lt;span style=&quot;font-size: 12pt; font-family: 宋体; line-height: 150%;&quot;&gt;、作品提交：最终提交的作品包括电路作品（能够通电运行）与设计报告（含功能指标、方案比较、理论设计、电路板设计、安装调试问题及解决、操作说明等）。&lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt; &lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align:left;text-indent: 18pt;&quot;&gt;&lt;span style=&quot;font-size: 12pt; font-family: 宋体; line-height: 150%;&quot;&gt;3&lt;/span&gt;&lt;span style=&quot;font-size: 12pt; font-family: 宋体; line-height: 150%;&quot;&gt;、作品制作时间：2016年3月14日-2016年5月7日。&lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt; &lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align:left;text-indent: 18pt;&quot;&gt;&lt;span style=&quot;font-size: 12pt; font-family: 宋体; line-height: 150%;&quot;&gt;4&lt;/span&gt;&lt;span style=&quot;font-size: 12pt; font-family: 宋体; line-height: 150%;&quot;&gt;、作品评审：竞赛组委会组织相关教师进行评审，参赛队参加答辩。时间&lt;/span&gt;&lt;strong&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;color:red;line-height:150%;&quot;&gt;2016&lt;/span&gt;&lt;/strong&gt;&lt;strong&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;color:red;line-height:150%;&quot;&gt;年5月7日&lt;/span&gt;&lt;/strong&gt;&lt;strong&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;color:red;line-height:150%;&quot;&gt;8:30&lt;/span&gt;&lt;/strong&gt;&lt;strong&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;color:red;line-height:150%;&quot;&gt;～12:00&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 12pt; font-family: 宋体; line-height: 150%;&quot;&gt;，地点:&lt;/span&gt;&lt;strong&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;color:red;line-height:150%;&quot;&gt;X6403&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 12pt; font-family: 宋体; line-height: 150%;&quot;&gt;，各参赛队最迟9点以前必须签到（X6403）等候评审。每组答辩10分钟，不需要准备ppt。&lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align:left;text-indent: 18pt;&quot;&gt;&lt;span style=&quot;font-size: 12pt; font-family: 宋体; line-height: 150%;&quot;&gt;作品评审后，产生一、二、三等奖，并根据竞赛的获奖情况&lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;，确定参加全国大学生电子竞赛培训的名单，为参赛队配备指导老师。 &lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align:left;text-indent: 18pt;&quot;&gt;&lt;span style=&quot;font-size: 12pt; font-family: 宋体; line-height: 150%;&quot;&gt;5&lt;/span&gt;&lt;span style=&quot;font-size: 12pt; font-family: 宋体; line-height: 150%;&quot;&gt;、指导教师：校竞赛不指定指导老师，待培训名单确定后，再另行安排。&lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt; &lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align:left;text-indent: 18pt;&quot;&gt;&lt;span style=&quot;font-size: 12pt; font-family: 宋体; line-height: 150%;&quot;&gt;6&lt;/span&gt;&lt;span style=&quot;font-size: 12pt; font-family: 宋体; line-height: 150%;&quot;&gt;、奖励：学校将颁发证书并根据获奖等级给予鼓励。&lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt; &lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align:left;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 12pt; font-family: 宋体; line-height: 150%;&quot;&gt;竞赛题目：&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 12pt; font-family: 宋体; line-height: 150%;&quot;&gt;见附件2&lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt; &lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align:left;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 12pt; font-family: 宋体; line-height: 150%;&quot;&gt;注意事项：&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt; &lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align:left;text-indent: 6pt;&quot;&gt;&lt;span style=&quot;font-size: 12pt; font-family: 宋体; line-height: 150%;&quot;&gt;（1）参加最终测评的作品，要求完成硬件制作和通电运行；&lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt; &lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align:left;text-indent: 6pt;&quot;&gt;&lt;span style=&quot;font-size: 12pt; font-family: 宋体; line-height: 150%;&quot;&gt;（2）具有同样的功能和指标，成本较低的作品可获得较高分；&lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt; &lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align:left;text-indent: 6pt;&quot;&gt;&lt;span style=&quot;font-size: 12pt; font-family: 宋体; line-height: 150%;&quot;&gt;（3）作品不得购买现成的产品或请人代做及抄袭，一经发现，取消参赛资格，并上报教务处备案。&lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align:left;text-indent: 6pt;&quot;&gt;&lt;span style=&quot;font-size: 12pt; font-family: 宋体; line-height: 150%;&quot;&gt;（4）作品费用不报销。&lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt; &lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align:left;&quot;&gt;&lt;span style=&quot;font-size: 12pt; font-family: 宋体; line-height: 150%;&quot;&gt;附件1：&lt;a href=&quot;http://202.115.67.4/download/news/file/20160311170644_693.xls&quot; target=&quot;_blank&quot;&gt;2016年秋季西南交通大学大学生电子设计竞赛报名表 &lt;/a&gt;&lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;&quot;&gt;附件2：&lt;a href=&quot;http://202.115.67.4/download/news/file/20160311170700_510.doc&quot; target=&quot;_blank&quot;&gt;2016春季校电子竞赛题目-低频功率放大器&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '发布单位:教务处', 29, NULL, 0, 10, '0000-00-00 00:00:00', NULL, NULL),
(28, '第七届中国大学生服务外包创新创业大赛校内报名通知', '', '&lt;p&gt;\r\n	各位同学：&lt;/p&gt;&lt;p&gt;\r\n	&amp;nbsp;&amp;nbsp;“第七届中国大学生服务外包创新创业大赛”报名已经开始，我校将选拔若干只支参赛团队参加全国比赛（&lt;strong&gt;&lt;span style=&quot;color:#E53333;&quot;&gt;其中标准类、创业实践类题目不限团队，自主类题目中文组、英文组各一组&lt;/span&gt;&lt;/strong&gt;）。&amp;nbsp;&lt;/p&gt;&lt;p&gt;\r\n	&amp;nbsp; &lt;strong&gt;大赛简介：&lt;/strong&gt; &lt;/p&gt;&lt;p&gt;\r\n	&amp;nbsp; \r\n中国大学生服务外包创新创业大赛是由教育部、商务部、无锡市联合举办的一项大学生学科竞赛，赛题和评委均来自于国内知名企业，要求参赛团队不仅有完善的技\r\n术解决方案及技术实现，同时还要求有详细的商业方案等，通过最终决赛答辩与现场演示进行评比，由于对技术产品、服务、财务、项目等综合能力的要求，对参赛\r\n选手综合素质要求较高，被称为“高校企业联系最为紧密的大赛”。&lt;/p&gt;&lt;p&gt;\r\n	&amp;nbsp; \r\n中国大学生服务外包创新创业大赛的主题是服务经济、信息技术、创意创新创业、应用导向和产学互动。也就是说只要是和这些主题紧密相关的方案或任务，都可以\r\n作为服创大赛的赛题内容。具体的，参赛团队会有两种竞赛方式：一种是选择来自企业的命题参赛（A类标准命题）；另一种是自选符合上述主题的题目参赛（B类\r\n上报赛题，分中文、英文组），以及自选创业类项目题目参赛（C类上报赛题）。&lt;/p&gt;&lt;p&gt;\r\n	&amp;nbsp; \r\n中国大学生服务外包创新创业大赛从2010年起已连续成功举办了六届，是服务外包行业唯一的国家级品牌赛事，已成为促进全国服务外包人才交流合作的重要平\r\n台。第六届中国大学生服务外包创新创业大赛吸引了来自含清华大学、上海交通大学、中南大学、北京邮电大学、西安交通大学、台湾中山大学、台湾中央大学、印\r\n度NIIT大学等在内309所高校889支团队参加。我校已连续参加五届，曾获得一等奖5项、二等奖7项、三等奖1项的优异成绩，特别是2015年我校获\r\n得全国一等奖2项、二等奖4项，不论获奖总数还是获奖质量均为全国最好。2016年中国大学生服务外包创新创业大赛将于8月份在无锡举行，我们非常期待你\r\n能加入到我们竞赛团队中，为荣誉和理想一起奋斗！&lt;/p&gt;&lt;p&gt;\r\n	&amp;nbsp; &lt;strong&gt;报名方式：&lt;/strong&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;\r\n	&amp;nbsp; 我校将不举办预赛，由同学自由组队报名，报名后根据个人陈述和相关考核后确定最终参赛团队。&amp;nbsp;&lt;/p&gt;&lt;p&gt;\r\n	&amp;nbsp; 请按照团队材料或个人材料进行报名，材料不提供模板，但材料至少应包括个人学号姓名、简单介绍、主要特长、参赛期望等信息。&lt;strong&gt;&lt;span style=&quot;color:#E53333;&quot;&gt;于2015年3月30日前统一将电子报名材料发送到576343920@qq.com，并将打印的书面报名材料交至X6408，联系人：董梦瑶同学 。&lt;/span&gt;&lt;/strong&gt; &lt;/p&gt;&lt;p&gt;\r\n	&amp;nbsp; &lt;strong&gt;基本要求：&lt;/strong&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;\r\n	&amp;nbsp; 本项赛事不限参赛专业和类别，在校本科生和研究生均可报名，每队不超过5人（其中研究生不超过2人）。&lt;/p&gt;&lt;p&gt;\r\n	&amp;nbsp; 参赛需要有较好的JAVA、C、C#编程或web、Android、ios开发技术，数据库技术、美术设计（UI和用户体验方向）、财务基础及项目管理中的任何一项技能，良好的团队协作。&lt;/p&gt;&lt;p&gt;\r\n	&amp;nbsp; 基于实际情况的考虑，建议大学二年级以上同学报名为宜。&lt;/p&gt;&lt;p&gt;\r\n	&amp;nbsp; &lt;strong&gt;预赛：&lt;/strong&gt;5月初-7月中旬，这期间将完成产品设计、项目书、产品方案、商业策划、视频录制及相关材料。&amp;nbsp;&lt;/p&gt;&lt;p&gt;\r\n	&amp;nbsp; &lt;strong&gt;决赛：&lt;/strong&gt;8月下旬，无锡 （修改方案、现场答辩、演示、答问）&amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;\r\n	&amp;nbsp; &lt;strong&gt;指导教师：&lt;/strong&gt;尹帮旭&amp;nbsp; 杨柳 &amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '发布单位:教务处', 29, NULL, 1, 10, '0000-00-00 00:00:00', NULL, NULL),
(33, '2016年西南交大数学建模创新团队报名通知', '', '&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;为了更好的准备2016年全国数学建模竞赛，特举行交大数学建模创新团队选拔，具体要求如下： &lt;/span&gt;&lt;/p&gt;&lt;p&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/strong&gt;&lt;strong&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;一、报名资格 &lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;三人组队报名，其中至少两人曾获得各类校级及以上建模竞赛奖项（二等奖及以上）。 &lt;/span&gt;&lt;/p&gt;&lt;p&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/strong&gt;&lt;strong&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;二、报名方式 &lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;填写附件表格，请于2016年3月12日之前发送至邮箱swjtumathm@126.com，过时不候。 &lt;/span&gt;&lt;/p&gt;&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;交大建模协会在第三周周末通知入选的同学。入选队伍将配备指导教师，必须参加本学期周末举行的各类建模讲座活动，同时参加各类建模竞赛（五一竞赛、交大校赛等），以此作为参加国赛的重要选拔依据。 &lt;/span&gt;&lt;/p&gt;&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;未入选同学也可参加上述各类建模活动，同时也应参加5月的苏北、华东、华中、交大校赛和mathorcup等各种类型建模比赛，以此作为今年参加国赛的重要参考依据。 &lt;/span&gt;&lt;/p&gt;&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;&amp;nbsp; &amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;其余相关咨询： &lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-indent:18pt;&quot;&gt;\r\n	&lt;span style=&quot;font-size: 12pt; font-family: 宋体; line-height: 150%;&quot;&gt;张同学：18328049348&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 刘同学：18328037282&lt;/span&gt;&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;&amp;nbsp; &lt;/span&gt;&lt;/p&gt;&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;附件一：&lt;a href=&quot;http://202.115.67.4/download/news/file/20160308102021_195.xls&quot; target=&quot;_blank&quot;&gt;报名表 &lt;/a&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;\r\n	&lt;span style=&quot;font-size:12pt;font-family:宋体;line-height:150%;&quot;&gt;附件二：&lt;a href=&quot;http://202.115.67.4/download/news/file/20160308102049_313.doc&quot; target=&quot;_blank&quot;&gt;2016年数学建模创新讲座安排&amp;nbsp;&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 'jiaowu', 29, NULL, 1, 10, '0000-00-00 00:00:00', NULL, NULL),
(35, '习近平:让"上海精神"更加深入人心 发扬光大', '习近平主席关于上海合作组织发展的重要论述：让“上海精神”更加深入人心、发扬光大', '<p style="margin-top: 28px; margin-bottom: 0px; padding: 0px; text-indent: 2em; font-stretch: normal; line-height: 28px; font-family: &#39;Microsoft Yahei&#39;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);"><img src="/images/upload/20161124/1479996768459960.jpg" title="1479996768459960.jpg" alt="0fd15b40756f2479ad6cc1f238a78574_b.jpg"/>习近平主席即将出席在塔什干举行的上海合作组织成员国元首理事会第十六次会议。这将是习近平就任国家主席以来第四次出席上合峰会，他多次深入阐述中方对上合组织发展的主张，强调成员国要继续弘扬“上海精神”，牢固树立命运共同体和利益共同体意识。</p><p style="margin-top: 28px; margin-bottom: 0px; padding: 0px; text-indent: 2em; font-stretch: normal; line-height: 28px; font-family: &#39;Microsoft Yahei&#39;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);"><strong>1.结成紧密的命运共同体和利益共同体</strong></p><p style="margin-top: 28px; margin-bottom: 0px; padding: 0px; text-indent: 2em; font-stretch: normal; line-height: 28px; font-family: &#39;Microsoft Yahei&#39;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);">上海合作组织成立12年来，成员国结成紧密的命运共同体和利益共同体。面对复杂的国际和地区形势，维护地区安全稳定和促进成员国共同发展，过去、现在乃至将来相当长时期内都是上海合作组织的首要任务和目标。</p><p style="margin-top: 28px; margin-bottom: 0px; padding: 0px; text-indent: 2em; font-stretch: normal; line-height: 28px; font-family: &#39;Microsoft Yahei&#39;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);">——2013年9月，接受土、俄、哈、乌、吉五国媒体联合采访</p><p style="margin-top: 28px; margin-bottom: 0px; padding: 0px; text-indent: 2em; font-stretch: normal; line-height: 28px; font-family: &#39;Microsoft Yahei&#39;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);"><strong>2.发扬一种精神，搞好两个建设，办好三件实事</strong></p><p style="margin-top: 28px; margin-bottom: 0px; padding: 0px; text-indent: 2em; font-stretch: normal; line-height: 28px; font-family: &#39;Microsoft Yahei&#39;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);">我认为，推动上海合作组织发展要继续发扬一种精神，即互信、互利、平等、协商、尊重多样文明、谋求共同发展的“上海精神”。要搞好两个建设，一是加强自身建设，练好“内功”，提升合作效率和水平；二是加强伙伴网络建设，切实推进同观察员、对话伙伴合作，共谋地区发展大计。要办好三件实事，即《上海合作组织中期发展战略规划》所确定的维护安全、发展经济、改善民生的任务，造福成员国人民。</p><p style="margin-top: 28px; margin-bottom: 0px; padding: 0px; text-indent: 2em; font-stretch: normal; line-height: 28px; font-family: &#39;Microsoft Yahei&#39;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);">——2013年9月，接受土、俄、哈、乌、吉五国媒体联合采访</p><p style="margin-top: 28px; margin-bottom: 0px; padding: 0px; text-indent: 2em; font-stretch: normal; line-height: 28px; font-family: &#39;Microsoft Yahei&#39;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);"><strong>3.加强合作，联合自强</strong></p><p style="margin-top: 28px; margin-bottom: 0px; padding: 0px; text-indent: 2em; font-stretch: normal; line-height: 28px; font-family: &#39;Microsoft Yahei&#39;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);">当前，上海合作组织发展既面临难得机遇，也面临严峻挑战。“三股势力”、贩毒、跨国有组织犯罪威胁着本地区安全稳定。受国际金融危机影响，各国经济发展都不同程度遇到困难，进入调整期和恢复期。</p><p style="margin-top: 28px; margin-bottom: 0px; padding: 0px; text-indent: 2em; font-stretch: normal; line-height: 28px; font-family: &#39;Microsoft Yahei&#39;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);">对这些挑战，任何一个国家都难以独自应对。我们必须加强合作，联合自强。</p><p style="margin-top: 28px; margin-bottom: 0px; padding: 0px; text-indent: 2em; font-stretch: normal; line-height: 28px; font-family: &#39;Microsoft Yahei&#39;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);">——2013年9月13日，在比什凯克举行的上海合作组织成员国元首理事会第十三次会议上发表讲话</p><p style="margin-top: 28px; margin-bottom: 0px; padding: 0px; text-indent: 2em; font-stretch: normal; line-height: 28px; font-family: &#39;Microsoft Yahei&#39;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);"><strong>4.把丝绸之路精神发扬光大</strong></p><p style="margin-top: 28px; margin-bottom: 0px; padding: 0px; text-indent: 2em; font-stretch: normal; line-height: 28px; font-family: &#39;Microsoft Yahei&#39;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);">务实合作是上海合作组织发展的物质基础和原动力。上海合作组织6个成员国和5个观察员国都位于古丝绸之路沿线。作为上海合作组织成员国和观察员国，我们有责任把丝绸之路精神传承下去，发扬光大。</p><p style="margin-top: 28px; margin-bottom: 0px; padding: 0px; text-indent: 2em; font-stretch: normal; line-height: 28px; font-family: &#39;Microsoft Yahei&#39;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);">——2013年9月13日，在比什凯克举行的上海合作组织成员国元首理事会第十三次会议上发表讲话</p><p style="margin-top: 28px; margin-bottom: 0px; padding: 0px; text-indent: 2em; font-stretch: normal; line-height: 28px; font-family: &#39;Microsoft Yahei&#39;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);"><strong>5.开创了结伴而不结盟的国际关系新模式</strong></p><p style="margin-top: 28px; margin-bottom: 0px; padding: 0px; text-indent: 2em; font-stretch: normal; line-height: 28px; font-family: &#39;Microsoft Yahei&#39;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);">在上合组织框架内，我们同其他成员国一道，积极践行互信、互利、平等、协商、尊重多样文明、谋求共同发展的“上海精神”，确立了长期睦邻友好合作关系，以实际行动开创了结伴而不结盟的国际关系新模式。</p><p style="margin-top: 28px; margin-bottom: 0px; padding: 0px; text-indent: 2em; font-stretch: normal; line-height: 28px; font-family: &#39;Microsoft Yahei&#39;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);">——2014年9月10日，在塔吉克斯坦《人民报》和“霍瓦尔”国家通讯社同时发表题为《让中塔友好像雄鹰展翅》的署名文章</p><p style="margin-top: 28px; margin-bottom: 0px; padding: 0px; text-indent: 2em; font-stretch: normal; line-height: 28px; font-family: &#39;Microsoft Yahei&#39;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);"><strong>6.共同创新区域合作和南南合作模式</strong></p><p style="margin-top: 28px; margin-bottom: 0px; padding: 0px; text-indent: 2em; font-stretch: normal; line-height: 28px; font-family: &#39;Microsoft Yahei&#39;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);">目前，丝绸之路经济带建设正进入务实合作新阶段，中方制定的规划基本成形。欢迎上海合作组织成员国、观察员国、对话伙伴积极参与，共商大计、共建项目、共享收益，共同创新区域合作和南南合作模式，促进上海合作组织地区互联互通和新型工业化进程。</p><p style="margin-top: 28px; margin-bottom: 0px; padding: 0px; text-indent: 2em; font-stretch: normal; line-height: 28px; font-family: &#39;Microsoft Yahei&#39;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);">——2014年9月12日，在杜尚别举行的上海合作组织成员国元首理事会第十四次会议上发表讲话</p><p style="margin-top: 28px; margin-bottom: 0px; padding: 0px; text-indent: 2em; font-stretch: normal; line-height: 28px; font-family: &#39;Microsoft Yahei&#39;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);"><strong>7.集体之力、团结之力、合作之力</strong></p><p style="margin-top: 28px; margin-bottom: 0px; padding: 0px; text-indent: 2em; font-stretch: normal; line-height: 28px; font-family: &#39;Microsoft Yahei&#39;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);">在当前国际格局调整变革之际，上海合作组织发展面临重大机遇和光明前景。作为本组织大家庭中的一员，我们应该坚守合作共赢理念，坚持互信、互利、平等、协商、尊重多样文明、谋求共同发展的“上海精神”，践行共同、综合、合作、可持续的亚洲安全观，以集体之力、团结之力、合作之力，携手应对威胁挑战，共同推动上海合作组织得到更大发展。</p><p style="margin-top: 28px; margin-bottom: 0px; padding: 0px; text-indent: 2em; font-stretch: normal; line-height: 28px; font-family: &#39;Microsoft Yahei&#39;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);">——2014年9月12日，在杜尚别举行的上海合作组织成员国元首理事会第十四次会议上发表讲话</p><p style="margin-top: 28px; margin-bottom: 0px; padding: 0px; text-indent: 2em; font-stretch: normal; line-height: 28px; font-family: &#39;Microsoft Yahei&#39;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);"><strong>8.成为精神纽带</strong></p><p style="margin-top: 28px; margin-bottom: 0px; padding: 0px; text-indent: 2em; font-stretch: normal; line-height: 28px; font-family: &#39;Microsoft Yahei&#39;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);">今天，“上海精神”仍然具有时代意义。我们要继续以“上海精神”为指引，坚持上海合作组织一贯秉持的国际关系准则，维护国际公平正义，倡导多边主义和开放主义，相互尊重彼此利益，不干涉别国内政，以和平方式解决分歧争端，以共赢理念促进发展繁荣。要让“上海精神”在本地区更加深入人心、发扬光大，成为本组织成员国打造命运共同体、共建和谐家园的精神纽带。</p><p style="margin-top: 28px; margin-bottom: 0px; padding: 0px; text-indent: 2em; font-stretch: normal; line-height: 28px; font-family: &#39;Microsoft Yahei&#39;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);">——2015年7月10日，在乌法举行的上海合作组织成员国元首理事会第十五次会议上发表讲话</p><p style="margin-top: 28px; margin-bottom: 0px; padding: 0px; text-indent: 2em; font-stretch: normal; line-height: 28px; font-family: &#39;Microsoft Yahei&#39;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);"><strong>9.绝不允许任何人歪曲历史、践踏和平</strong></p><p style="margin-top: 28px; margin-bottom: 0px; padding: 0px; text-indent: 2em; font-stretch: normal; line-height: 28px; font-family: &#39;Microsoft Yahei&#39;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);">战争的惨痛教训不容忘记。今年是世界反法西斯战争胜利和联合国成立70周年。本组织成员国都经历了第二次世界大战血与火的考验，为战争胜利付出了巨大牺牲。</p><p style="margin-top: 28px; margin-bottom: 0px; padding: 0px; text-indent: 2em; font-stretch: normal; line-height: 28px; font-family: &#39;Microsoft Yahei&#39;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);">我们要继续做捍卫第二次世界大战胜利成果的坚定力量，绝不允许任何人歪曲历史、践踏和平。</p><p style="margin-top: 28px; margin-bottom: 0px; padding: 0px; text-indent: 2em; font-stretch: normal; line-height: 28px; font-family: &#39;Microsoft Yahei&#39;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);">——2015年7月10日，在乌法举行的上海合作组织成员国元首理事会第十五次会议上发表讲话</p><p style="margin-top: 28px; margin-bottom: 0px; padding: 0px; text-indent: 2em; font-stretch: normal; line-height: 28px; font-family: &#39;Microsoft Yahei&#39;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);"><strong>10.新生力量的加入将注入新动力</strong></p><p style="margin-top: 28px; margin-bottom: 0px; padding: 0px; text-indent: 2em; font-stretch: normal; line-height: 28px; font-family: &#39;Microsoft Yahei&#39;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);">中方相信，新生力量的加入将给上海合作组织各领域合作注入新动力。我们要支持本组织继续扩大对外交往，密切同联合国、独联体、欧亚经济联盟、集安条约组织、东盟、亚信等国际和地区多边机制的联系和合作，交流互鉴，取长补短。</p><p style="margin-top: 28px; margin-bottom: 0px; padding: 0px; text-indent: 2em; font-stretch: normal; line-height: 28px; font-family: &#39;Microsoft Yahei&#39;; color: rgb(64, 64, 64); text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);">——2015年7月10日，在乌法举行的上海合作组织成员国元首理事会第十五次会议上发表讲话</p><p><br/></p>', '人民网(北京)', 14, NULL, 1, 2, '2016-06-16 20:17:24', '/images/upload/20160704/1467635065546313.jpg', 12312),
(36, '中国银行：构建“一带一路”金融大动脉', '截至2016年末，中国银行在“一带一路”沿线共跟进境外重大项目约420个，项目总投资额超过4000亿美元；两年来，中国银行完成对“一带一路”沿线国家各类授信支持近600亿美元。', '<p style="text-align:center;padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;"><img src="https://www.yidaiyilu.gov.cn/wcm.files/upload/CMSydylgw/201703/201703021036008.jpg" alt="" width="500" style="border: 0px;"/></p><p style="text-align:center;padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;"><span style="font-family: KaiTi_GB2312;">（资料图）</span></p><p style="padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">截至2016年末，中国银行在“一带一路”沿线共跟进境外重大项目约420个，项目总投资额超过4000亿美元；两年来，中国银行完成对“一带一路”沿线国家各类授信支持近600亿美元。</p><p style="padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">中国银行董事长田国立提出要打造“一带一路”金融大动脉这一战略要求，推动中国银行成为“一带一路”资金融通方面的主干线、主渠道、主动脉。经过两年多来的努力，中国银行“一带一路”金融大动脉建设已初见成效。</p><p style="padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;"><strong>助力“一带一路”资金融通</strong></p><p style="padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">中国银行积极响应国家“一带一路”倡议，发挥全球化网络、多元化平台以及专业化产品优势，为“一带一路”提供包括商业银行、投资银行、保险、股权投资、基金、航空租赁等在内的多元化金融产品及服务，直接助力“一带一路”沿线重大项目建设。</p><p style="padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">2015年以来，中国银行在支持“一带一路”建设的不少领域走在同业前列。在全球首创推出“中银中小企业跨境投资撮合服务”，为全球中小企业搭建了一个互联互通的平台，累计在五大洲举办了28场跨境撮合活动，吸引了来自多个国家和地区的15000余家中外企业参加，达成合作意向5000多项。2015年12月，中国银行发布了全球金融市场上第一个跟踪人民币与“一带一路”地区有效汇率变动的综合性指数，帮助企业提前采取保值锁定措施，降低非经营性风险。此外，还在全球市场筹措资金支持“一带一路”建设，在国际金融市场上发行了第一笔以“一带一路”为主题的债券。中国银行还组织了国内首个以面向“一带一路”国家政府部门为主的高级研修班，有力促进了双边经贸合作和人文交流。</p><p style="padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;"><strong>推进人民币国际化</strong></p><p style="padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">为支持“一带一路”建设，中国银行一直致力于推进人民币国际化。在人民银行指定的23家离岸人民币清算行中，中国银行获得11家，在境外参加行开立人民币清算账户数方面保持同业领先。“一带一路”沿线马来西亚、匈牙利的中国银行机构作为人民币清算行，为面向“一带一路”国家提供全面的清算合作服务奠定了良好的基础。在“一带一路”区域，中国银行继续巩固和发挥跨境人民币业务优势。对于一些大型“走出去”项目及当地重大项目，中国银行积极引导企业和当地业主使用人民币，扩大人民币贷款规模。2016年中国银行就参与了中俄之间最大的人民币授信合作项目，有效促进了人民币跨境融资业务在俄罗斯市场发展。</p><p style="padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">中国银行多措并举，既筑牢自身的风险屏障，也帮助企业提升风险化解能力。通过引进各类信用担保机构，缓释和化解部分国家较高的国别风险；通过推动国际银团贷款、资产证券化等业务发展，提升风险分担水平。中国银行还积极开发各类金融衍生品，包括风险互换、掉期等产品，帮助企业规避在交易中的各类汇率和利率风险。</p><p style="padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;"><strong>发挥桥梁纽带作用</strong></p><p style="padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">近年来，中国银行多家海内外机构联合地方政府举办了多场中外企业洽谈会和对接会。他们主动对接国家有关部委、各级地方政府、沿线各国政府相关机构等“一带一路”建设的主导力量，积极挖掘合作潜力。中国银行相关负责人表示，中国银行就是要充分发挥金融媒介和桥梁作用，努力聚合外部各方力量，为“一带一路”境内外的企业交流合作提供便利、可靠的平台，形成支持“一带一路”建设的合力。</p><p style="padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">为了形成内外合力，中国银行不断加强与金融同业的合作，对政策性银行主导的“一带一路”重大项目，中国银行在参与融资的同时积极做好配套的商业金融服务；对于亚投行、金砖银行等新成立的机构以及丝路基金、欧亚基金等外向型产业投资基金，中国银行积极寻找和创造合作机会；通过与国际多边金融机构、国外ECA、外资同业合作，中国银行帮助项目进一步提升了国际化、专业化运作水平。</p><p style="padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">田国立表示，2017年中国银行将继续以服务国家战略为己任，深入推进“一带一路”金融大动脉各项工作，为沿线国家的共同繁荣发展，贡献中国金融力量。</p><p style="padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">（原标题：中国银行跟进境外沿线420个重大项目 构建“一带一路”金融大动脉）</p><p>编辑：王沥慷</p><p><br/></p>', '付聪', 14, NULL, 1, 15, '2016-06-16 20:42:59', '/images/upload/20170411/1491950878688669.jpg', NULL),
(37, '「ONE PIECE」エース&ルフィ オリジナル3Dジャケットカードを封入!', '初回生产限定盘は冲撃の「ONE PIECE」エース&ルフィ オリジナル3Dジャケットカードを封入!\r\n　　コミック最新巻310万部、通巻1亿8560万部(日本记录)、TVアニメ视聴率2位と大ブレイク中のアニメ', '<p>初回生产限定盘は冲撃の「ONE PIECE」エース&amp;ルフィ オリジナル3Dジャケットカードを封入!<br style="white-space: normal;"/>　　コミック最新巻310万部、通巻1亿8560万部(日本记录)、TVアニメ视聴率2位と大ブレイク中のアニメ「ONE PIECE」主题歌!!</p>', '', 29, NULL, 1, 0, '2016-07-01 20:18:57', '', NULL),
(38, 'One day', 'One day', '<p><span property="v:summary">■「ONE PIECE」エース&amp;ルフィ オリジナル3Dジャケットカード(名称仮)<br/>　　フジテレビ系アニメ「ONE PIECE」主题歌で着うた(R)は早くも大ヒット中のThe ROOTLESS、いよいよCDテ゛ヒ゛ュー!<br/>　　初回生产限定盘は冲撃の「ONE PIECE」エース&amp;ルフィ オリジナル3Dジャケットカードを封入!<br/>　　コミック最新巻310万部、通巻1亿8560万部(日本记录)、TVアニメ视聴率2位と大ブレイク中のアニメ「ONE PIECE」主题歌!!<br/>　　「ONE PIECE」フリークのTHE ROOTLESSがメンバー全员で20回以上も作り直して完成したロック・バラード「One day」<br/>　　■「One day」:フジテレビ系アニメ「ONE PIECE」主题歌</span></p>', '', 29, NULL, 1, 1, '2016-07-01 20:19:42', '', NULL),
(39, 'Class yii\\widgets\\Menu', 'Class yii\\widgets\\Menu', '<p><strong>Menu displays a multi-level menu using nested HTML lists.</strong></p><p>The main property of Menu is <a href="http://www.yiichina.com/doc/api/2.0/yii-widgets-menu#$items-detail">$items</a>, which specifies the possible items in the menu.\r\nA menu item can contain sub-items which specify the sub-menu under that menu item.</p><p>Menu checks the current route and request parameters to toggle certain menu items\r\nwith active state.</p><p>Note that Menu only renders the HTML tags about the menu. It does do any styling.\r\nYou are responsible to provide CSS styles to make it look like a real menu.</p><p>The following example shows how to use Menu:</p><pre>echo&nbsp;Menu::widget([\r\n&nbsp;&nbsp;&nbsp;&nbsp;&#39;items&#39;&nbsp;=&gt;&nbsp;[\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//&nbsp;Important:&nbsp;you&nbsp;need&nbsp;to&nbsp;specify&nbsp;url&nbsp;as&nbsp;&#39;controller/action&#39;,\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//&nbsp;not&nbsp;just&nbsp;as&nbsp;&#39;controller&#39;&nbsp;even&nbsp;if&nbsp;default&nbsp;action&nbsp;is&nbsp;used.\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[&#39;label&#39;&nbsp;=&gt;&nbsp;&#39;Home&#39;,&nbsp;&#39;url&#39;&nbsp;=&gt;&nbsp;[&#39;site/index&#39;]],\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//&nbsp;&#39;Products&#39;&nbsp;menu&nbsp;item&nbsp;will&nbsp;be&nbsp;selected&nbsp;as&nbsp;long&nbsp;as&nbsp;the&nbsp;route&nbsp;is&nbsp;&#39;product/index&#39;\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[&#39;label&#39;&nbsp;=&gt;&nbsp;&#39;Products&#39;,&nbsp;&#39;url&#39;&nbsp;=&gt;&nbsp;[&#39;product/index&#39;],&nbsp;&#39;items&#39;&nbsp;=&gt;&nbsp;[\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[&#39;label&#39;&nbsp;=&gt;&nbsp;&#39;New&nbsp;Arrivals&#39;,&nbsp;&#39;url&#39;&nbsp;=&gt;&nbsp;[&#39;product/index&#39;,&nbsp;&#39;tag&#39;&nbsp;=&gt;&nbsp;&#39;new&#39;]],\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[&#39;label&#39;&nbsp;=&gt;&nbsp;&#39;Most&nbsp;Popular&#39;,&nbsp;&#39;url&#39;&nbsp;=&gt;&nbsp;[&#39;product/index&#39;,&nbsp;&#39;tag&#39;&nbsp;=&gt;&nbsp;&#39;popular&#39;]],\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;]],\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[&#39;label&#39;&nbsp;=&gt;&nbsp;&#39;Login&#39;,&nbsp;&#39;url&#39;&nbsp;=&gt;&nbsp;[&#39;site/login&#39;],&nbsp;&#39;visible&#39;&nbsp;=&gt;&nbsp;Yii::$app-&gt;user-&gt;isGuest],\r\n&nbsp;&nbsp;&nbsp;&nbsp;],\r\n]);</pre><p>&nbsp; &nbsp;</p><p><a name="properties"></a></p><h2></h2><p><br/></p>', '', 29, NULL, 1, 3, '2016-07-01 20:20:41', '', NULL);
INSERT INTO `document` (`id`, `title`, `breviary`, `content`, `author`, `cate`, `view`, `status`, `level`, `create_at`, `pic`, `create_by`) VALUES
(40, '方法详情', '', '<p>$params &nbsp; &nbsp; &nbsp; &nbsp;<span class="detailHeaderTag small">\r\n &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;public &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;property &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span>\r\n &nbsp; &nbsp;</p><p><a href="http://www.php.net/language.types.array">array</a> <a href="http://www.yiichina.com/doc/api/2.0/yii-widgets-menu#$params-detail">$params</a> <span style="color: #0000BB"></span><span style="color: #007700">=&nbsp;</span><span style="color: #0000BB">null</span></p><p>The parameters used to determine if a menu item is active or not.\r\nIf not set, it will use <code>$_GET</code>.</p><p>See also:</p><ul class=" list-paddingleft-2"><li><p><a href="http://www.yiichina.com/doc/api/2.0/yii-widgets-menu#$route-detail">$route</a></p></li><li><p><a href="http://www.yiichina.com/doc/api/2.0/yii-widgets-menu#isItemActive%28%29-detail">isItemActive()</a></p></li></ul><p><a href="http://www.yiichina.com/doc/api/2.0/yii-widgets-menu#" class="tool-link" title="go to top"><span class="glyphicon glyphicon-arrow-up"></span></a>\r\n &nbsp; &nbsp; &nbsp; &nbsp;<a class="tool-link hash" href="http://www.yiichina.com/doc/api/2.0/yii-widgets-menu#$route-detail" title="direct link to this method"><span class="glyphicon icon-hash"></span></a>\r\n &nbsp; &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp; &nbsp;$route &nbsp; &nbsp; &nbsp; &nbsp;<span class="detailHeaderTag small">\r\n &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;public &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;property &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span>\r\n &nbsp; &nbsp;</p><p><a href="http://www.php.net/language.types.string">string</a> <a href="http://www.yiichina.com/doc/api/2.0/yii-widgets-menu#$route-detail">$route</a> <span style="color: #0000BB"></span><span style="color: #007700">=&nbsp;</span><span style="color: #0000BB">null</span></p><p>The route used to determine if a menu item is active or not.\r\nIf not set, it will use the route of the current request.</p><p>See also:</p><ul class=" list-paddingleft-2"><li><p><a href="http://www.yiichina.com/doc/api/2.0/yii-widgets-menu#$params-detail">$params</a></p></li><li><p><a href="http://www.yiichina.com/doc/api/2.0/yii-widgets-menu#isItemActive%28%29-detail">isItemActive()</a></p></li></ul><p><a href="http://www.yiichina.com/doc/api/2.0/yii-widgets-menu#" class="tool-link" title="go to top"><span class="glyphicon glyphicon-arrow-up"></span></a>\r\n &nbsp; &nbsp; &nbsp; &nbsp;<a class="tool-link hash" href="http://www.yiichina.com/doc/api/2.0/yii-widgets-menu#$submenuTemplate-detail" title="direct link to this method"><span class="glyphicon icon-hash"></span></a>\r\n &nbsp; &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp; &nbsp;$submenuTemplate &nbsp; &nbsp; &nbsp; &nbsp;<span class="detailHeaderTag small">\r\n &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;public &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;property &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span>\r\n &nbsp; &nbsp;</p><p><a href="http://www.php.net/language.types.string">string</a> <a href="http://www.yiichina.com/doc/api/2.0/yii-widgets-menu#$submenuTemplate-detail">$submenuTemplate</a> <span style="color: #0000BB"></span><span style="color: #007700">=&nbsp;</span><span style="color: #DD0000">&quot;\\n&lt;ul&gt;\\n{items}\\n&lt;/ul&gt;\\n&quot;</span></p><p>The template used to render a list of sub-menus.\r\nIn this template, the token <code>{items}</code> will be replaced with the renderer sub-menu items.</p><h2>方法详情</h2><p><a href="http://www.yiichina.com/doc/api/2.0/yii-widgets-menu#" class="tool-link" title="go to top"><span class="glyphicon glyphicon-arrow-up"></span></a>\r\n &nbsp; &nbsp; &nbsp; &nbsp;<a class="tool-link hash" href="http://www.yiichina.com/doc/api/2.0/yii-widgets-menu#isItemActive%28%29-detail" title="direct link to this method"><span class="glyphicon icon-hash"></span></a>\r\n &nbsp; &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp; &nbsp;isItemActive() &nbsp; &nbsp; &nbsp; &nbsp;<span class="detail-header-tag small">\r\n &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;protected &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;method &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span>\r\n &nbsp; &nbsp;</p><p><strong>Checks whether a menu item is active.</strong></p><p>This is done by checking if <a href="http://www.yiichina.com/doc/api/2.0/yii-widgets-menu#$route-detail">$route</a> and <a href="http://www.yiichina.com/doc/api/2.0/yii-widgets-menu#$params-detail">$params</a> match that specified in the <code>url</code> option of the menu item.\r\nWhen the <code>url</code> option of a menu item is specified in terms of an array, its first element is treated\r\nas the route for the item and the rest of the elements are the associated parameters.\r\nOnly when its route and parameters match <a href="http://www.yiichina.com/doc/api/2.0/yii-widgets-menu#$route-detail">$route</a> and <a href="http://www.yiichina.com/doc/api/2.0/yii-widgets-menu#$params-detail">$params</a>, respectively, will a menu item\r\nbe considered active.</p><table class="detail-table table table-striped table-bordered table-hover"><tbody><tr class="firstRow"><td colspan="3" class="signature"><a href="http://www.php.net/language.types.boolean">boolean</a> <strong><a href="http://www.yiichina.com/doc/api/2.0/yii-widgets-menu#isItemActive%28%29-detail">isItemActive</a></strong><span style="color: #0000BB"></span><span style="color: #007700">(&nbsp;</span><span style="color: #0000BB">$item&nbsp;</span><span style="color: #007700">)</span></td></tr><tr><td class="param-name-col"><span style="color: #0000BB">$item</span></td><td class="param-type-col"><a href="http://www.php.net/language.types.array">array</a></td><td class="param-desc-col"><p>The menu item to be checked</p></td></tr><tr><th class="param-name-col">return</th><td class="param-type-col"><a href="http://www.php.net/language.types.boolean">boolean</a></td><td class="param-desc-col"><p>Whether the menu item is active</p></td></tr></tbody></table><p><a href="http://www.yiichina.com/doc/api/2.0/yii-widgets-menu#" class="tool-link" title="go to top"><span class="glyphicon glyphicon-arrow-up"></span></a>\r\n &nbsp; &nbsp; &nbsp; &nbsp;<a class="tool-link hash" href="http://www.yiichina.com/doc/api/2.0/yii-widgets-menu#normalizeItems%28%29-detail" title="direct link to this method"><span class="glyphicon icon-hash"></span></a>\r\n &nbsp; &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp; &nbsp;normalizeItems() &nbsp; &nbsp; &nbsp; &nbsp;<span class="detail-header-tag small">\r\n &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;protected &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;method &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span></p><p><br/></p>', '', 29, NULL, 1, 10, '2016-07-01 20:24:42', '', NULL),
(41, '中国电动巴士打开澳市场', '工商管理学院2013级越南籍博士研究生THUONG PHAT TANG在“2016年度中国政府优秀来华留学生奖学金”评选中脱颖而出，成为我校第二位获得此殊荣的留学生。', '<p><span style="box-sizing: border-box; font-size: 20px;">接国家留学基金管理委员会通知，经专家评审，我校工商管理学院2013级越南籍博士研究生THUONG PHAT TANG在“2016年度中国政府优秀来华留学生奖学金”评选中脱颖而出，成为我校第二位获得此殊荣的留学生。<br style="box-sizing: border-box;"/>THUONG PHAT TANG同学于2013年获得中国政府奖学金资助来我校攻读企业管理专业博士学位。在校学习和生活中，他刻苦好学、全面发展，积极参加校内外各类学生活动，曾以较高分数通过了汉语水平HSK6级考试。该同学科研能力突出，在A级刊物《科研管理》上分别合作发表了《<a href="http://jour.blyun.com/views/specific/3004/JourDetail.jsp?dxNumber=100232037081&d=530678D65E8FD91F84684F3C2830CCBE&s=%E4%BB%98%E6%99%93%E8%93%89&ecode=utf-8" target="_blank" style="box-sizing: border-box; background-color: transparent; color: rgb(51, 51, 51); text-decoration: none;">零售商品牌线上线下的信任整合研究</a>》、《长期关系中渠道冲突对企业创新能力的影响研究》两篇论文，成绩斐然。<br style="box-sizing: border-box;"/>“中国政府优秀来华留学生奖学金”是教育部设立的专项奖学金项目，旨在激励在华留学生勤奋学习、努力进取，以此提升来华留学整体水平，从而扩大中国政府奖学金的辐射面和影响力，培养更多知华、友华的国际优秀人才。2016年度，“中国政府优秀来华留学生奖学金”面向全国高校共提供600个奖励名额。THUONG PHAT TANG同学是从全国各大高校中层层筛选出来的优秀代表，此次获奖充分反映了我校在来华留学生教育管理工作方面取得的突出成果。今后，我校将进一步加强留学生管理服务，为来华留学教育提质增效。（国际教育学院、工商管理学院）<br style="box-sizing: border-box;"/><br style="box-sizing: border-box;"/><img alt="" src="http://international.swufe.edu.cn/international/uploads/allimg/170113/2-1F113161T9622.png" style="box-sizing: border-box; border: 0px; vertical-align: middle; width: 545px; height: 734px;"/></span><br style="box-sizing: border-box;"/><br style="box-sizing: border-box;"/></p><ul style="list-style-type: none;" class=" list-paddingleft-2"></ul><p><br/></p>', '', 14, NULL, 1, 10, '2016-07-02 04:53:45', '/images/upload/20170411/1491951044553836.jpg', NULL),
(42, '简介擦擦擦', '', '<p style="text-indent:2em">&nbsp; &nbsp;西南交通大学信息科学与技术学院是随着时代和国家战略需求发展起来的学院，其发展历史可追溯到二十世纪六十年代初，学校创办了计算技术、自动化和无线电技 术3个专业，是国内较早开设电子与信息类专业的单位。1981年计算机及应用专业在国内首批获得硕士学位授予权（是当年四川省仅有的2个授权点之 一），1985年成立计算机科学与工程系，1993年成立计算机与通信工程学院，2005年更名为信息科学与技术学院。历经五十余载的建设与发展，学院形 成了以计算机、通信、控制、电子为主干学科的覆盖电子信息整个领域的学科体系，成为信息技术人才培养和科学研究基地。</p><p style="text-indent:2em"><br/> </p><p style="text-align:center"><img src="http://sist.swjtu.edu.cn/attached/image/20160523/20160523095518_787.jpg" alt=""/> &nbsp;</p><p style="text-align:center;text-indent:2em">图2：学院专业建设</p><p style="text-align:center;text-indent:2em"><br/> </p><p style="text-indent:2em">学院拥有10个教学型实验室、12个研究型实验、10个共建实验室，1个计算机实训基地、2个国家级实验示范中心和1个国家国际科技合作基地，并建成国内 唯一集通信网络与信息安全系统为一体的“现代通信网络与信息安全实验平台”，拥有国内一流实践教学条件，建立了12个校内外实习基地，并与多个IT类企业 和成都地铁建立了定制培养班。学生在校期间可根据自己的兴趣选择进入实验室、创新中心和研究所参与科研项目。</p><p style="text-align:center"><img src="http://sist.swjtu.edu.cn/attached/image/20160523/20160523102633_906.jpg" alt=""/> &nbsp;</p><p style="text-align:center;text-indent:2em">图3：学院实验室、平台、团队</p><p style="text-align:center;text-indent:2em"><br/> </p><p style="text-indent:2em">学院的学历教育涵盖博士研究生、硕士研究生、重点本科生、留学生（博士、硕士研究生，本科生）等多个层次。现拥有5个一级学科博士点、9个二级学科博士 点、1个一级学科硕士点（电子科学与技术）；13个二级学科硕士点，以及6个工程硕士点和若干高师硕士点；同时学院还拥有3个博士后科研流动站。</p><p style="text-indent:2em"><br/> </p><p style="text-align:center"><img alt="" src="http://sist.swjtu.edu.cn/attached/image/20141002/20141002095211_392.png" width="635" height="426" style="width: 635px; height: 426px;"/> &nbsp;</p><p style="text-align:center;text-indent:2em">图4：学院学科建设</p><p style="text-indent:2em"><br/> </p><p style="text-indent:2em">学院重视学科建设工作，在拥有的众多学科里，含国家重点学科1个、一级学科省级重点学科3个、二级学科省部级重点学科1个、铁道部重点学科1个、以及1个国家“长江学者奖励计划”特聘教授岗位学科。</p><p style="text-indent:2em">学院师资力量雄厚，现有教职工180人，其中教授39人，副教授48人，博士生导师37人，国内外兼职教授38人，教师中绝大多数具有博士学位，是一支由具备国际竞争力的学科领军人物领衔的高水平教学科研团队。</p><p style="text-indent:2em"><br/> </p><p style="text-align:center"><img src="http://sist.swjtu.edu.cn/attached/image/20160523/20160523103520_37.jpg" alt=""/> &nbsp;</p><p style="text-align:center;text-indent:2em">图5：学院师资队伍建设</p><p style="text-align:center;text-indent:2em"><br/> </p><p style="text-indent:2em">目前学院有各类在校学生近4000名，其中博士研究生超过200人，硕士研究生1000余人。近年来，学院培养学生在“全国电子设计大赛”、“国际数学建 模竞赛”、“ACM国际大学生程序设计竞赛”等国内外顶级大学生创新竞赛中屡获佳绩，全面培养了学生科技创新能力和综合素质。</p><p style="text-indent:2em">近年来，学院科研工作发展迅猛，承担了包括国家杰出青年基金项目、国家自然科学基金（重点、面上、青年、国际合作等）项目“973”计划项目、“863” 计划项目、国家科技重大专项、“111”计划项目，国家“211”工程建设项目和国家优势学科创新平台建设项目（特色“985”），科技部、教育部、四川 省和铁道部，以及来自行业、地方和企业的各类科技开发项目数百项，数十项科研成果获国家和省、部级奖励。在国内外本领域顶级学术刊物上发表了一大批高水平 学术论文，出版了多部在国内外具有影响力的中英文学术专著和教材。</p><p style="text-indent:2em">学院具有宽广的国际化视野，超过一半的教师具有海外经历。拥有IET fellow 、IEEE Distinguished &nbsp;Lecture、高水平学术刊物客座编辑等学术任职。学院积极培养国际学生，培养了或正在培养来自法国、巴基斯坦、越南等十余个国家的各类留学生400余 名。</p><p style="text-indent:2em">我国高新技术的快速发展为信息学科的发展提供了良好的发展前景和机遇，学院已培养了一大批信息科学与技术的高级专门人才，毕业生遍及海内外，其中不少已成 为国内外知名专家、学者，行业领军人物和骨干。信息科学与技术学院广大师生将继续秉承学校“竢实扬华，自强不息”的精神，锐意进取，迎接挑战，为把学院建 设成为高水平研究型学院而努力！&nbsp;</p><p><br/></p>', '', 30, NULL, 1, 10, '2016-07-06 02:04:55', '/images/upload/20160706/1467770946104909.jpg', NULL),
(43, '学院领导', '', '<p><br/><span id="lblArticleContent" class="content14"><p><strong><img alt="" src="http://glxy.swjtu.edu.cn/UpLoadFiles/images/2015-03-23/20150823100840.jpg" style="width: 324px; height: 217px"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img alt="" src="http://glxy.swjtu.edu.cn/UpLoadFiles/images/2011/09/02/20115002035012.jpg" style="width: 324px; height: 217px"/></strong></p><p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 院长 黄登仕 教授 博导 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;党委书记 李军 教授 博导&nbsp;&nbsp; </strong></p><p>&nbsp;<strong>学院领导：</strong></p><p>名誉院长：贾建民</p><p>院 &nbsp; &nbsp;长：黄登仕</p><p>书 &nbsp; &nbsp;记：李&nbsp;&nbsp;&nbsp; 军</p><p>党委副书记、纪委书记：夏显波</p><p>副院长：朱宏泉，李&nbsp;&nbsp;&nbsp;&nbsp;杰，郭&nbsp;&nbsp;&nbsp;&nbsp;强，耿黎辉</p><p>工会主席、副处级调研员：罗映新</p><p>院长助理：周嘉南，武&nbsp;&nbsp; &nbsp;俊</p><p>&nbsp;<strong>党政联席会成员：（按姓氏拼音排序）</strong></p><p>耿黎辉，郭&nbsp;&nbsp;&nbsp; 强，黄登仕，李&nbsp;&nbsp;&nbsp; 杰，李&nbsp;&nbsp;&nbsp; 军，罗映新，夏显波，朱宏泉，周嘉南，武&nbsp;&nbsp;&nbsp; 俊</p><p><strong>学院领导班子分工</strong></p><p><strong>黄登仕&nbsp;&nbsp; &nbsp;院长&nbsp; </strong></p><p>主持行政全面工作。分管财务、校友工作。</p><p><strong>李&nbsp; 军&nbsp;&nbsp; &nbsp;书记&nbsp; </strong></p><p>主持党委全面工作。分管人事工作。</p><p><strong>朱宏泉&nbsp;&nbsp; &nbsp;副院长 </strong></p><p>分管科研、外事、学科建设、学术型硕士研究生、博士研究生教学以及研究型实验室建设工作。</p><p>主管学院研究生教育中心、科研发展与国际认证中心。</p><p><strong>李&nbsp; 杰&nbsp;&nbsp; &nbsp;副院长</strong></p><p>分管教学实验室建设，主管后勤保障中心（实验室管理中心）。</p><p><strong>郭&nbsp; 强&nbsp;&nbsp; &nbsp;副院长</strong></p><p>分管学院教育培训工作、招生工作，主管教育培训中心。</p><p><strong>耿黎辉&nbsp;&nbsp; &nbsp;副院长</strong></p><p>分管学院专业硕士研究生、本科生教学工作，主管本科教育中心，专业硕士学位教育中心。</p><p><strong>夏显波&nbsp;&nbsp;&nbsp; 副书记、纪委书记</strong></p><p>主持学院纪委工作。分管学院学生工作，主管学生工作中心（学生工作组）。</p><p><strong>罗映新&nbsp;&nbsp;&nbsp; 工会主席、副调研员</strong></p><p>主持学院工会工作。</p><p><strong>周嘉南&nbsp;&nbsp;&nbsp; 院长助理 </strong></p><p>分管学院国际认证工作，兼任科研发展与国际认证中心主任。</p><p><strong>武&nbsp; 俊&nbsp;&nbsp;&nbsp; 院长助理</strong></p><p>分管学院办公室、后勤保障工作，兼任学院办公室主任、后勤保障中心（实验室管理中心）主任。</p></span></p>', '', 28, NULL, 1, 10, '2016-07-06 02:11:05', '', NULL),
(44, 'RIEM\'s Undergraduate Program', '为激励全国信息安全领域的研究生积极进取、勇于创新，促进人才成长，培养德才兼备的高素质创新型人才，信息安全国家重点实验室（以下简称实验室）面向全国高等学校、科研院所和其它相', '<table width="86%" cellpadding="0" cellspacing="0"><tbody><tr class="firstRow"><td style=";font-family: Arial;font-size: 14px;color: rgb(66, 66, 66);line-height: 26px"><p style=";border: none;text-indent: 29px"><span style=";font-family: 仿宋_GB2312;font-size: 16px"><span style=";font-family: 宋体, Arial;font-size: 12px"><span style=";font-size: 16px">为<span style=";font-size: 16px;color: black">激励全国信息安全领域的研究生积极进取、勇于创新，</span>促进人才成长，<span style=";font-size: 16px;color: black">培养德才兼备的高素质创新型人才，信息安全国家重点实验室（以下简称实验室）面向全国高等学校、科研院所和其它相关机构的研究生设立奖学金。</span></span></span></span></p><p style="margin: 16px 0 0;border: none"><strong style=";padding: 0px;border: none"><span style=";font-family: 仿宋_GB2312;font-size: 16px;color: black"><span style=";font-family: 宋体, Arial;font-size: 12px;color: rgb(51, 51, 51)"><span style=";font-size: 16px">一、基本条件：</span></span></span></strong></p><p style=";border: none;text-indent: 29px"><span style=""><span style=";font-size: 16px"><span style=";font-family: 仿宋_GB2312;font-size: 16px;color: black">1.&nbsp;</span><span style=";font-family: 仿宋_GB2312;font-size: 16px;color: black">全国高等学校、科研院所和其它相关机构按照国家招生计划录取的、接受研究生学历教育的全日制在学研究生；</span></span></span></p><p style=";border: none;text-indent: 29px"><span style=""><span style=";font-size: 16px"><span style=";font-family: 仿宋_GB2312;font-size: 16px;color: black">2.&nbsp;</span><span style=";font-family: 仿宋_GB2312;font-size: 16px;color: black">热爱祖国，遵纪守法，品行端正，诚实守信，乐于奉献；</span></span></span></p><p style=";border: none;text-indent: 29px"><span style=""><span style=";font-size: 16px"><span style=";font-family: 仿宋_GB2312;font-size: 16px;color: black">3.&nbsp;</span><span style=";font-family: 仿宋_GB2312;font-size: 16px;color: black">对密码学及相关领域的研究工作有浓厚兴趣，在学习和研究中取得优秀成绩；</span></span></span></p><p style=";border: none;text-indent: 29px"><span style=""><span style=";font-size: 16px"><span style=";font-family: 仿宋_GB2312;font-size: 16px;color: black">4.&nbsp;</span><span style=";font-family: 仿宋_GB2312;font-size: 16px;color: black">勇于创新，科研能力显著，发展潜力突出；</span></span></span></p><p style=";border: none;text-indent: 29px"><span style=""><span style=";font-size: 16px"><span style=";font-family: 仿宋_GB2312;font-size: 16px;color: black">5.&nbsp;</span><span style=";font-family: 仿宋_GB2312;font-size: 16px;color: black">在学期间未受过纪律处分。</span></span></span></p><p style="margin: 16px 0 0;border: none"><strong style=";padding: 0px;border: none"><span style=";font-family: 仿宋_GB2312;font-size: 16px;color: black"><span style=";font-family: 宋体, Arial;font-size: 12px;color: rgb(51, 51, 51)"><span style=";font-size: 16px">二、资助领域：</span></span></span></strong></p><p style=";border: none;text-indent: 29px"><span style=""><span style=";font-size: 16px"><span style=";font-family: 仿宋_GB2312;font-size: 16px;color: black">1.&nbsp;</span><span style=";font-family: 仿宋_GB2312;font-size: 16px;color: black">密码学相关数学理论与方法；</span></span></span></p><p style=";border: none;text-indent: 29px"><span style=""><span style=";font-size: 16px"><span style=";font-family: 仿宋_GB2312;font-size: 16px;color: black">2.&nbsp;</span><span style=";font-family: 仿宋_GB2312;font-size: 16px;color: black">密码理论与算法；</span></span></span></p><p style=";border: none;text-indent: 29px"><span style=""><span style=";font-size: 16px"><span style=";font-family: 仿宋_GB2312;font-size: 16px;color: black">3.&nbsp;</span><span style=";font-family: 仿宋_GB2312;font-size: 16px;color: black">密码算法检测评估方法与实现技术；</span></span></span></p><p style=";border: none;text-indent: 29px"><span style=""><span style=";font-size: 16px"><span style=";font-family: 仿宋_GB2312;font-size: 16px;color: black">4.&nbsp;</span><span style=";font-family: 仿宋_GB2312;font-size: 16px;color: black">新型密码理论与技术。<strong style=";font-family: 宋体, Arial;font-size: 16px;color: rgb(51, 51, 51);padding: 0px;border: none"></strong></span></span></span></p><p style="margin: 16px 0 0;border: none"><strong style=";padding: 0px;border: none"><span style=";font-family: 仿宋_GB2312;font-size: 16px;color: black"><span style=";font-family: 宋体, Arial;font-size: 12px;color: rgb(51, 51, 51)"><span style=";font-size: 16px">三、奖励标准及名额：</span></span></span></strong></p><p style=";border: none;text-indent: 29px"><span style=";font-family: 仿宋_GB2312;font-size: 16px;color: black"><span style=";font-family: 宋体, Arial;font-size: 12px;color: rgb(51, 51, 51)"><span style=";font-size: 16px">奖学金奖励标准为博士生每人每月<span style=";font-size: 16px">2000</span>元，硕士生每人每月<span style=";font-size: 16px">1000</span>元。奖学金按月发放，最长发放期限为一年，学生毕业、休学或退学自动终止。<span style=";font-size: 16px">2014-2015</span>年度拟奖励博士研究生<span style=";font-size: 16px">10</span>名，硕士研究生<span style=";font-size: 16px">10</span>名，并由信息安全国家重点实验室统一颁发荣誉证书。</span></span></span></p><p style="margin: 16px 0 0;border: none"><strong style=";padding: 0px;border: none"><span style=";font-family: 仿宋_GB2312;font-size: 16px;color: black"><span style=";font-family: 宋体, Arial;font-size: 12px;color: rgb(51, 51, 51)"><span style=";font-size: 16px">四、申报方式：</span></span></span></strong></p><p style=";border: none;text-indent: 29px"><span style=";font-family: 仿宋_GB2312;font-size: 16px;color: black"><span style=";font-family: 宋体, Arial;font-size: 12px;color: rgb(51, 51, 51)"><span style=";font-size: 16px">申请受理的截止日期为<span style=";font-size: 16px">2015</span>年<span style=";font-size: 16px">1</span>月<span style=";font-size: 16px">7</span>日。申请人必须按规定填写《信息安全国家重点实验室研究生奖学金申请表》，并提供两名具有高级职称的同行专家推荐意见（其中一名须为申请者当前的指导教师），纸质版一式<span style=";font-size: 16px">2</span>份，及相关证明材料复印件<span style=";font-size: 16px">1</span>份，于截止日期之前，邮寄到下面的通讯地址。电子版及附属材料发送至<span style=";font-size: 16px">sklois@iie.ac.cn&nbsp;</span>。证明材料包括：成绩单、获奖证书、论文首页、专利证书等。</span></span></span></p><p style=";border: none;text-indent: 29px"><span style=";font-family: 仿宋_GB2312;font-size: 16px;color: black"><span style=";font-size: 16px">&nbsp;</span></span></p><p style=";border: none"><span style=";font-family: 仿宋_GB2312;font-size: 16px;color: black"><span style=";font-family: 宋体, Arial;font-size: 12px;color: rgb(51, 51, 51)"><span style=";font-size: 16px">联系人：刘峰、耿娇娇　　　　联系电话：<span style=";font-size: 16px">010-82546611</span></span></span></span></p><p style=";border: none"><span style=";font-family: 仿宋_GB2312;font-size: 16px;color: black"><span style=";font-family: 宋体, Arial;font-size: 12px;color: rgb(51, 51, 51)"><span style=";font-size: 16px">邮箱<span style=";font-size: 16px">:liufeng@iie.ac.cn,<span style=";font-size: 16px">&nbsp;&nbsp;</span>gengjiaojiao@iie.ac.cn</span></span></span></span></p><p style=";border: none"><span style=";font-family: 仿宋_GB2312;font-size: 16px;color: black"><span style=";font-family: 宋体, Arial;font-size: 12px;color: rgb(51, 51, 51)"><span style=";font-size: 16px">通讯地址：北京市海淀区闵庄路甲<span style=";font-size: 16px">89</span>号<span style=";font-size: 16px">,</span>中国科学院信息工程研究所<span style=";font-size: 16px">,</span>信息安全国家重点实验室</span></span></span></p><p style=";border: none;text-align: right;text-indent: 29px"><span style=";font-family: 仿宋_GB2312;font-size: 16px;color: black"><span style=";font-family: 宋体, Arial;font-size: 12px;color: rgb(51, 51, 51)"><span style=";font-size: 16px">信息安全国家重点实验室</span></span></span></p><p style=";border: none;text-align: right;text-indent: 29px"><span style=""><span style=";font-size: 16px"><span style=";font-family: 仿宋_GB2312;font-size: 16px;color: black">2014</span><span style=";font-family: 仿宋_GB2312;font-size: 16px;color: black">年<span style=";font-family: 宋体, Arial;font-size: 16px;color: rgb(51, 51, 51)">12</span>月<span style=";font-family: 宋体, Arial;font-size: 16px;color: rgb(51, 51, 51)">10</span>日</span></span></span></p></td></tr><tr><td id="kongge">附件下载：2014-2015学年信息安全国家重点实验室研究生奖学金申请指南.pdf信息安全国家重点实验室研究生奖学金管理办法（暂行）.pdf附件1：信息安全国家重点实验室研究生奖学金申请表.docx</td></tr></tbody></table><p><br/></p>', '信息安全国家重点实验室', 31, NULL, 1, 10, '2016-07-15 04:59:19', '/images/upload/20170118/1484700497881332.png', NULL),
(45, 'RIEM\'s Master Program', '讲座时间：2016-06-21  14:00-15:30 讲座嘉宾：马淑琴', '<table id="table1" width="645" cellpadding="0" cellspacing="0"><tbody><tr class="firstRow"><td height="35"><strong>讲座时间：</strong>2016-06-21&nbsp; 14:00-15:30</td></tr><tr><td height="35"><strong>讲座地点：</strong>犀浦校区5331</td></tr><tr><td height="35"><strong>讲座嘉宾</strong>：马淑琴</td></tr><tr><td height="30"><strong>嘉宾简介：</strong></td></tr><tr><td style="line-height: 170%;word-break:break-all;" height="60">\r\n			心理中心教师。副教授			</td></tr><tr><td height="30"><strong>讲座内容：</strong></td></tr><tr><td style="line-height: 170%;word-break:break-all;" height="60">游戏，前所未有的占据和改变了我们的生活，它是如何击中了人类幸福的核心，提供现实世界中匮乏的奖励、挑战和宏大胜利的？游戏可以弥补现实世界的不足和缺陷，游戏化可以让现实变得更美好，并用大量实践告诉我们该如何驾驭游戏的力量，解决现实问题，并提升幸福感。</td></tr></tbody></table><p><br/></p>', '教务处', 31, NULL, 1, 10, '2016-07-15 05:25:18', '/images/upload/20170118/1484700507553503.png', NULL),
(55, '博士生', '', '<table style="width: 656px;" width="100%" cellpadding="0" cellspacing="0"><tbody><tr class="firstRow"><td height="469" width="2%"><br/></td><td style="line-height: 25px" valign="top" width="93%"><h1 style="width: 688.75px;text-align: center;line-height: 50px;font-size: 16px">武汉大学软件工程协同创新团队招聘启事</h1>来源：&nbsp;&nbsp;&nbsp;&nbsp;浏览量：1525&nbsp;&nbsp;&nbsp;&nbsp;发布时间：2015-04-28 10:04:59<p style="line-height: 24px;text-align: center">武汉大学软件工程协同创新中心</p><p style="line-height: 24px;text-align: center"><strong>招聘启事</strong></p><p style="line-height: 24px">&nbsp;</p><p style="line-height: 24px;text-indent: 32px">为了进一步提升武汉大学软件工程研究的整体水平，发挥我校在软件工程研究领域的优势，进一步巩固和加强我国在该领域的国际竞争力，依据“武汉大学协同创新平台与团队发展计划”的总体规划，按照“国家急需、世界一流”的要求和标准，聚集拔尖创新人才等创新要素和资源，打造国际一流的高水平人才队伍，武汉大学决定启动武汉大学软件工程协同创新中心2015年人才招聘工作。</p><p style="line-height: 24px;text-indent: 32px">武汉大学软件工程协同创新中心依托软件工程国家重点实验室与计算机学院，将按照以软件工程为主体、以数据管理与信息安全为两翼（即“一体两翼”）的发展思路，以软件工程及相关学科的应用基础研究为主、兼顾基本理论、方法、工具与环境的应用，拟在软件工程及相关领域组建若干创新团队。中心计划在未来四年内面向国内外招聘30多名研究人员，包括资深研究员、高级研究员和研究员。</p><p style="line-height: 24px">&nbsp;&nbsp;&nbsp;&nbsp; 武汉大学软件工程协同创新中心2015年的招聘计划如下：</p><p style="line-height: 24px">一、招聘岗位及人数</p><p style="line-height: 24px;text-indent: 32px">（1）主任研究员 &nbsp;5-10名</p><p style="line-height: 24px;text-indent: 32px">（2）研究员&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;5-15名</p><p style="line-height: 24px;text-indent: 32px">（3）副研究员&nbsp;&nbsp;&nbsp; 5-10名</p><p style="line-height: 24px">二、应聘条件及职责</p><p style="line-height: 24px;text-indent: 32px">（1）具有博士学位或正高级专业技术职称，身体健康，年龄一般不超过55岁、特殊情况不得超过58岁(院士、校外兼职应聘者和国际知名学者年龄可适当放宽)。</p><p style="line-height: 24px;text-indent: 32px">（2）在软件工程或相关学科领域具有一定的学术造诣，在国际著名或知名杂志上发表过具有较高水平的学术论文。50岁以上的应聘者应在国内外同行中具有一定知名度，得到国内同行的认可。</p><p style="line-height: 24px;text-indent: 32px">（3）德才兼备，具有高度的敬业精神。</p><p style="line-height: 24px;text-indent: 32px">（4）欢迎应聘者全职应聘，特别优秀的应聘者也可以兼职应聘。</p><p style="line-height: 24px;text-indent: 32px">（5）全职应聘者享受武汉大学教师的所有待遇。中心将全力支持全职应聘者晋升或破格晋升各类职称，申请申报千人计划（包括青年千人计划）、国家杰出青年科学基金、长江学者等各类人才计划。</p><p style="line-height: 24px;text-indent: 32px">（6）兼职应聘者可以根据其在原单位工作情况在中心弹性工作，与中心签订在中心的具体工作月数，明确工作目标和考核指标，确定薪水与生活待遇，按照实际工作月数领取薪水。超额完成任务的根据具体超额情况给予奖励。</p><p style="line-height: 24px">二、工作条件及待遇</p><p style="line-height: 24px;text-indent: 32px">（1）中心和学校根据应聘者的资历、学术成绩、国内外影响、未来工作需求与目标等与应聘者商定工作条件（包括科研启动费、科研用房等）、年薪与住房等其它生活待遇。</p><p style="line-height: 24px;text-indent: 32px">（2）各类岗位的年薪参照标准（院士以及特别杰出的优秀人才可以有所突破，兼职人员按实际兼职月数发放）：</p><p style="line-height: 24px;text-indent: 82px">岗位类别&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;年薪（万元）</p><p style="line-height: 24px;text-indent: 82px">主任研究员&nbsp; &nbsp;&nbsp;30-60万/人</p><p style="line-height: 24px;text-indent: 82px">研究员 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;20-45万/人</p><p style="line-height: 24px;text-indent: 82px">副研究员&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;10-35万/人</p><p style="line-height: 24px">三、联系方式及聘期</p><p style="line-height: 24px;text-indent: 32px">（1）本招聘启事常年有效，有意应聘者可以随时应聘。</p><p style="line-height: 24px;text-indent: 32px">（2）聘期可以根据各个应聘者的实际情况具体商定。</p><p style="line-height: 24px;text-indent: 32px">（3）有意者请提交个人简历、学术成就（包括论文列表等）给指定联系人。在应聘成功前本中心负责对应聘情况保密。应聘联系方式：</p><p style="line-height: 24px;text-indent: 82px">联系人：吴闽泉</p><p style="line-height: 24px;text-indent: 82px">地址：武汉大学软件工程国家重点实验室</p><p style="line-height: 24px;text-indent: 82px">电话：&nbsp;68775519，139-9567-6013&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 传真：&nbsp;68776837</p><p style="line-height: 24px;text-indent: 82px">Email：&nbsp;rjgc@whu.edu.cn</p><p style="line-height: 24px">&nbsp;</p><p style="line-height: 24px">&nbsp;</p><p style="line-height: 24px;text-align: right">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;武汉大学</p><p style="line-height: 24px;text-align: right">2015年4月28日</p><p style="line-height: 24px"><span style="font-size: 14px"><br/><br/></span></p><br/><p style="line-height: 24px"><br/></p></td><td width="5%"><br/></td></tr></tbody></table><p><br/></p>', '', 18, NULL, 0, 10, '2016-07-21 08:16:49', '/images/upload/20160724/1469347712278006.jpg', NULL);
INSERT INTO `document` (`id`, `title`, `breviary`, `content`, `author`, `cate`, `view`, `status`, `level`, `create_at`, `pic`, `create_by`) VALUES
(56, '研究生招生', '', '<table cellspacing="0" cellpadding="0" width="946" style="width: 610px;"><tbody><tr class="firstRow"><td width="36" style="border-width: 1px;border-color: windowtext"><br/></td><td width="263" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px;text-align: center"><strong>论文题目</strong></p></td><td width="239" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px;text-align: center"><strong>作者</strong></p></td><td width="216" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px;text-align: center"><strong>期刊/会议名称</strong></p></td><td width="113" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px;text-align: center"><strong>卷期页码</strong></p></td><td width="79" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px;text-align: center"><strong>备注</strong></p></td></tr><tr><td width="36" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px;text-align: center">1</p></td><td width="263" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">Cooperative Secret Key Generation from Phase Estimation in Narrowband Fading Channels</p></td><td width="239" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px"><strong>Wang, Q（王骞）</strong>, Xu, KH, Ren, K</p></td><td width="216" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">IEEE JOURNAL ON SELECTED AREAS IN COMMUNICATIONS</p></td><td width="113" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">2012, 30(9):1666-1674</p></td><td width="79" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px;text-align: center">CCF A类</p><p style="line-height: 24px;text-align: center">网络</p></td></tr><tr><td width="36" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px;text-align: center">2</p></td><td width="263" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">Processing and Evaluating Partial Tree Queries on XML data</p></td><td width="239" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px"><strong>Xiaoying Wu(吴小莹)</strong>, Stefanos Souldatos, Dimitri Theodoratos, Theodore Dalamagas, Yannis Vassiliou, Timos Sellis</p></td><td width="216" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">IEEE Transactions on Knowledge and Data Engineering (TKDE)</p></td><td width="113" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">2012, 24(12): 2244-2259,</p></td><td width="79" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px;text-align: center">CCF A类</p><p style="line-height: 24px;text-align: center">数据库</p></td></tr><tr><td width="36" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px;text-align: center">3</p></td><td width="263" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">Supervised and Unsupervised Parallel Subspace Learning for Large-Scale Image Recognition</p></td><td width="239" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px"><strong>Jing, XY（荆晓远）</strong>; Li, S; Zhang, D; Yang, J; Yang, JY</p></td><td width="216" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">IEEE Transactions on Circuits and Systems for Video Technology</p></td><td width="113" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">2012, 22(5):1497-1511</p></td><td width="79" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px;text-align: center">CCF B类</p><p style="line-height: 24px;text-align: center">图像</p></td></tr><tr><td width="36" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px;text-align: center">4</p></td><td width="263" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px"><a style="color: rgb(78, 91, 102)" name="OLE_LINK1"></a>The Shortest Path Problem on a Fuzzy Time-Dependent Network</p></td><td width="239" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">Huang Wei,&nbsp;<strong>Ding Lixin（丁立新）</strong></p></td><td width="216" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">IEEE Transactions on Communications</p></td><td width="113" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">2012, 60 (11): 3376-3385</p></td><td width="79" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px;text-align: center">CCF B类</p><p style="line-height: 24px;text-align: center">网络</p></td></tr><tr><td width="36" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px;text-align: center">5</p></td><td width="263" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">Evolvable hardware design based on a novel simulated annealing in an embedded system</p></td><td width="239" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px"><strong>Guoliang He（何国良）</strong>, Naixue Xiong, Laurence T Yang, Tai-hoon Kim, Ching Hsien Hsu, Yuanxiang Li and Ting Hu</p></td><td width="216" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">Concurrency and Computation: Practice and Experience</p></td><td width="113" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">2012, 24:352-368</p></td><td width="79" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px;text-align: center">CCF B类</p><p style="line-height: 24px;text-align: center">体系结构</p></td></tr><tr><td width="36" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px;text-align: center">6</p></td><td width="263" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">Supervised and Unsupervised Parallel Subspace Learning for Large-scale Image Recognition</p></td><td width="239" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px"><strong>Xiao-Yuan Jing（荆晓远）</strong>, Sheng Li, David Zhang, Jian Yang, Jingyu Yang</p></td><td width="216" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">IEEE Trans. Circuits and Systems for Video Technology</p></td><td width="113" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">2012, 22(10), pp. 1497-1511</p></td><td width="79" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px;text-align: center">CCF B类</p><p style="line-height: 24px;text-align: center">图像</p></td></tr><tr><td width="36" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px;text-align: center">7</p></td><td width="263" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">Optimal subset-division based discrimination and its kernelization for face and palmprint recognition</p></td><td width="239" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px"><strong>Xiao-Yuan Jing（荆晓远）</strong>, Sheng Li, David Zhang, Chao Lan, Jingyu Yang</p></td><td width="216" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">Pattern&nbsp;Recognition</p></td><td width="113" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">2012, 45(10), pp. 3590-3602</p></td><td width="79" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px;text-align: center">CCF B类</p><p style="line-height: 24px;text-align: center">人工智能</p></td></tr><tr><td width="36" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px;text-align: center">8</p></td><td width="263" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">Mining&nbsp;high&nbsp;utility&nbsp;itemsets&nbsp;without&nbsp;candidate&nbsp;generation</p></td><td width="239" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px"><strong>Mengchi&nbsp;Liu（刘梦赤）</strong>, Jun-Feng&nbsp;Qu</p></td><td width="216" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">CIKM&nbsp;2012</p></td><td width="113" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">2012:&nbsp;55-64</p></td><td width="79" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px;text-align: center">CCF B类</p><p style="line-height: 24px;text-align: center">数据库</p></td></tr><tr><td width="36" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px;text-align: center">9</p></td><td width="263" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">A family of dynamic description logics for representing and reasoning about actions</p></td><td width="239" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px"><strong>Liang Chang（常亮）</strong>, Zhongzhi Shi, Tianlong Gu, Lingzhong Zhao</p></td><td width="216" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">Journal of Automated Reasoning</p></td><td width="113" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">2012, 49(1): 1-52</p></td><td width="79" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px;text-align: center">CCF B类</p><p style="line-height: 24px;text-align: center">人工智能</p><p style="line-height: 24px;text-align: center"><span style="color: rgb(255, 0, 0)">开放课题</span></p></td></tr><tr><td width="36" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px;text-align: center">10</p></td><td width="263" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">MULTI-GRANULARITY KNOWLEDGE MINING ON THE WEB</p></td><td width="239" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px"><strong>Xie, M（谢铭）</strong></p></td><td width="216" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">INTERNATIONAL JOURNAL OF SOFTWARE ENGINEERING AND KNOWLEDGE ENGINEERING</p></td><td width="113" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">2012, 22(1):1-16</p></td><td width="79" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px;text-align: center">CCF C类</p><p style="line-height: 24px;text-align: center">软件工程</p></td></tr><tr><td width="36" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px;text-align: center">11</p></td><td width="263" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">Reputation rating modeling for open environment lack of communication by using online social cognition</p></td><td width="239" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">Jiang Lei,<strong>&nbsp;Ding Lixin（丁立新）</strong>, Liu Jianxun, Chen Jinjun</p></td><td width="216" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">Journal of Network and Computer Applications</p></td><td width="113" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">2012, 35 (3): 881-891</p></td><td width="79" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px;text-align: center">CCF C类</p><p style="line-height: 24px;text-align: center">网络</p></td></tr><tr><td width="36" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px;text-align: center">12</p></td><td width="263" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">Feature extraction using maximum variance sparse mapping</p></td><td width="239" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px"><strong>Jin Liu（刘进）</strong>, Bo Li, Wensheng Zhang</p></td><td width="216" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">Neural Computing and Applications</p></td><td width="113" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">2012, 21(8): 1827-1833</p></td><td width="79" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px;text-align: center">CCF C类</p><p style="line-height: 24px;text-align: center">人工智能</p></td></tr><tr><td width="36" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px;text-align: center">13</p></td><td width="263" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">Data field-based mechanism for three-dimensional thresholding</p></td><td width="239" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px"><strong>Wu, T（吴涛）</strong>, Qin, K</p></td><td width="216" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">NEUROCOMPUTING</p></td><td width="113" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">2012, 97：278-296</p></td><td width="79" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px;text-align: center">CCF C类</p><p style="line-height: 24px;text-align: center">人工智能</p><p style="line-height: 24px;text-align: center"><span style="color: rgb(255, 0, 0)">开放课题</span></p></td></tr><tr><td width="36" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px;text-align: center">14</p></td><td width="263" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">Irregular community discovery for cloud service improvement</p></td><td width="239" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px"><strong>Jin Liu（刘进）</strong>, Jing Zhou, Junfeng Wang, Feng Zhang, Fei Liu</p></td><td width="216" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">Journal of Supercomputing</p></td><td width="113" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">2012, 61(2): 317-336</p></td><td width="79" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px;text-align: center">CCF C类</p><p style="line-height: 24px;text-align: center">高性能计算</p></td></tr><tr><td width="36" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px;text-align: center">15</p></td><td width="263" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">Face Feature Extraction and Recognition based on Discriminant Subclass-center Manifold Preserving Projection</p></td><td width="239" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px"><strong>Xiao-Yuan Jing（荆晓远）</strong>, Chao Lan, David Zhang, Jingyu Yang, Min Li, Sheng Li</p></td><td width="216" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">Pattern Recognition Letters</p></td><td width="113" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">2012，33(6), pp. 709-717</p></td><td width="79" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px;text-align: center">CCF-C类</p><p style="line-height: 24px;text-align: center">人工智能</p></td></tr><tr><td width="36" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px;text-align: center">16</p></td><td width="263" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">DRE-Specific Wikis for Distributed Requirements Engineering: A Review</p></td><td width="239" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px"><strong>Rong Peng（彭蓉）</strong>, Han Lai</p></td><td width="216" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">APSEC2012</p></td><td width="113" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">2012: 47-54</p></td><td width="79" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px;text-align: center">CCF C类</p><p style="line-height: 24px;text-align: center">软件工程</p></td></tr><tr><td width="36" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px;text-align: center">17</p></td><td width="263" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">Stock Market Volatility Prediction: A Service-Oriented Multi-kernel Learning Approach</p></td><td width="239" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px"><strong>Feng Wang（王峰）</strong>, Ling Liu, Chenxiao Dou. Stock Market Volatility Prediction</p></td><td width="216" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">SCC2012</p></td><td width="113" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">2012: 49-56</p></td><td width="79" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px;text-align: center">CCF C类</p><p style="line-height: 24px;text-align: center">软件工程</p></td></tr><tr><td width="36" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px;text-align: center">18</p></td><td width="263" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">CCRA: Cloud Computing Reference Architecture</p></td><td width="239" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px"><strong>Jing Liu</strong><strong>（刘婧）</strong>, Liangjie Zhang, Keqing He</p></td><td width="216" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">SCC 2012</p></td><td width="113" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">2012:</p></td><td width="79" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px;text-align: center">CCF C类</p><p style="line-height: 24px;text-align: center">软件工程</p></td></tr><tr><td width="36" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px;text-align: center">19</p></td><td width="263" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">A New Approach for Date Sharing and Recommendation in Social Web</p></td><td width="239" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">Dawen Jia,&nbsp;<strong>Cheng Zeng(</strong><strong>曾承</strong><strong>)</strong>，Wenhui Nie, Zhihao Li, Zhiyong Peng</p></td><td width="216" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">DEXA 2012</p></td><td width="113" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">2012</p></td><td width="79" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px;text-align: center">CCF C类</p><p style="line-height: 24px;text-align: center">数据库</p></td></tr><tr><td width="36" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px;text-align: center">20</p></td><td width="263" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">A&nbsp;Fast&nbsp;Algorithm&nbsp;for&nbsp;Frequent&nbsp;Itemset&nbsp;Mining&nbsp;Using&nbsp;Patricia*&nbsp;Structures</p></td><td width="239" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">Jun-Feng&nbsp;Qu,&nbsp;<strong>Mengchi&nbsp;Liu</strong><strong>（刘梦赤）</strong></p></td><td width="216" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">DEXA 2012</p></td><td width="113" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">2012:&nbsp;453-467</p></td><td width="79" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px;text-align: center">CCF C类</p><p style="line-height: 24px;text-align: center">数据库</p></td></tr><tr><td width="36" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px;text-align: center">21</p></td><td width="263" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">A&nbsp;High-Performance&nbsp;Algorithm&nbsp;for&nbsp;Frequent&nbsp;Itemset&nbsp;Mining</p></td><td width="239" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">Jun-Feng&nbsp;Qu,&nbsp;<strong>Mengchi&nbsp;Liu</strong><strong>（刘梦赤）</strong></p></td><td width="216" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">WAIM&nbsp;2012</p></td><td width="113" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">2012:&nbsp;71-82&nbsp;</p></td><td width="79" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px;text-align: center">CCF C类</p><p style="line-height: 24px;text-align: center">数据库</p></td></tr><tr><td width="36" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px;text-align: center">22</p></td><td width="263" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">Leveraging Network Structure for Incremental Document Clustering</p></td><td width="239" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px"><strong>Tieyun Qian</strong><strong>（钱铁云）</strong>, Jianfeng Si, Qing Li, Qian Yu</p></td><td width="216" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">APWeb 2012</p></td><td width="113" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">2012: 342-353</p></td><td width="79" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px;text-align: center">CCF C类</p><p style="line-height: 24px;text-align: center">数据库</p></td></tr><tr><td width="36" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px;text-align: center">23</p></td><td width="263" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">Context-Aware Role Mining for Mobile Service Recommendation</p></td><td width="239" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px"><strong>Jian Wang</strong><strong>（王健）</strong>, Cheng Zeng, Chuan He, Liang Hong, Liang Zhou,Raymond K. Wong, Jilei Tian</p></td><td width="216" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">SAC 2012</p></td><td width="113" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">2012:173-178</p></td><td width="79" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px;text-align: center">CCF C类</p><p style="line-height: 24px;text-align: center">信息安全</p></td></tr><tr><td width="36" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px;text-align: center">24</p></td><td width="263" valign="top" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px;text-align: center"><span style="font-size: 9px"></span></p><p style="line-height: 24px">Palmprint and Face Multi-Modal Biometric Recognition Based on SDA-GSVD and Its Kemelization</p></td><td width="239" valign="top" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px"><strong>Xiao-Yuan Jing</strong><strong>（荆晓远）</strong>, Sheng Li, Wenqian Li, Yongfang Yao, Chao Lan, Jiasen Lu and Jingyu Yang</p></td><td width="216" valign="top" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">Sensors</p></td><td width="113" valign="top" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px">2012, 12(5), pp. 5551-5571</p></td><td width="79" valign="top" style="border-width: 1px;border-color: windowtext"><p style="line-height: 24px;text-align: center">SCI&nbsp;二区</p></td></tr></tbody></table><p style="line-height: 24px;color: rgb(101, 100, 100);font-family: Arial, Helvetica, sans-serif;font-size: 12px;white-space: normal;background-color: rgb(255, 255, 255)">&nbsp;</p><p><br/></p>', '', 18, NULL, 1, 10, '2016-07-21 08:50:43', '', NULL),
(58, '机构设置', '', '<p><img src="http://civil.swjtu.edu.cn/civil/images/leader/dept2.jpg"/></p>', '', 28, NULL, 1, 10, '2016-07-21 15:39:35', '', NULL),
(61, '关于加强期中考试工作的通知', '', '<p style="text-align:left;margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; font-size: 14px; line-height: 28px; font-family: Arial, Helvetica, sans-serif; white-space: normal; background-color: rgb(241, 241, 241);"><span style="margin: 0px; padding: 0px; border: 0px; font-family: 宋体; font-size: 12pt;">根据《西南交通大学考试管理实施细则》的要求，本学期开设的必（限）修课程应由任课教师在第九周（一年级课程可顺延到第十一周）安排期中考试，前八周结束课程应在第九周安排考试。现将相关事项强调如下：</span></p><p><span style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 28px; background-color: rgb(241, 241, 241);"></span><span style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 28px; background-color: rgb(241, 241, 241);"></span></p><p style="text-align:left;margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; font-size: 14px; line-height: 28px; font-family: Arial, Helvetica, sans-serif; white-space: normal; text-indent: 24pt; background-color: rgb(241, 241, 241);"><span style="margin: 0px; padding: 0px; border: 0px; font-family: 宋体; font-size: 12pt;">1</span><span style="margin: 0px; padding: 0px; border: 0px; font-family: 宋体; font-size: 12pt;">、期中考试是课堂教学质量考核的重要环节之一，是平时成绩的主要组成部分及参考依据。平时成绩包含期中考试、作业、阶段小测验、上课表现等，所占比例原则上应不低于该课程总成绩的<span style="margin: 0px; padding: 0px; border: 0px;">30%</span>。<span style="margin: 0px; padding: 0px; border: 0px;"><br/>2</span>、期中考试可根据教学要求采用随堂考试、测验、大作业等形式进行，公共课程可进行集中考试。<span style="margin: 0px; padding: 0px; border: 0px;"><br/>3</span>、前八周结束的课程如需在第九周安排期末考试，需到犀浦校区综合楼<span style="margin: 0px; padding: 0px; border: 0px;">222</span>办理教室借用手续。<span style="margin: 0px; padding: 0px; border: 0px;"><br/>4</span>、请任课老师将期中考试或期末考试（前八周结束课程）安排报所在学院，由学院汇总统一报教务处备案。<span style="margin: 0px; padding: 0px; border: 0px;"><br/>5</span>、期中考试试卷直接到犀浦校区<span style="margin: 0px; padding: 0px; border: 0px;">2</span>号教学楼<span style="margin: 0px; padding: 0px; border: 0px;">X2117</span>办理印制手续。</span><span style="margin: 0px; padding: 0px; border: 0px; font-family: 宋体; font-size: 9pt;"></span></p><p><span style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 28px; background-color: rgb(241, 241, 241);"></span><span style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 28px; background-color: rgb(241, 241, 241);"></span></p><p style="text-align:left;margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; font-size: 14px; line-height: 28px; font-family: Arial, Helvetica, sans-serif; white-space: normal; text-indent: 24pt; background-color: rgb(241, 241, 241);"><span style="margin: 0px; padding: 0px; border: 0px; font-family: 宋体; font-size: 12pt;">请各系认真做好期中考试的相关工作，基于保密因素不得请学生代为办理。</span><span style="margin: 0px; padding: 0px; border: 0px; font-family: 宋体; font-size: 9pt;"></span></p><p><span style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 28px; background-color: rgb(241, 241, 241);"></span><span style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 28px; background-color: rgb(241, 241, 241);"></span></p><p style="text-align:left;margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; font-size: 14px; line-height: 28px; font-family: Arial, Helvetica, sans-serif; white-space: normal; background-color: rgb(241, 241, 241);"><span style="margin: 0px; padding: 0px; border: 0px; font-family: 宋体; font-size: 12pt;">&nbsp;<span style="margin: 0px; padding: 0px; border: 0px;">&nbsp;&nbsp;</span></span><span style="margin: 0px; padding: 0px; border: 0px; font-family: 宋体; font-size: 12pt;">教务处试卷验签、印刷厂承印地点：犀浦校区二号教学楼<span style="margin: 0px; padding: 0px; border: 0px;">X2117</span>，<span style="margin: 0px; padding: 0px; border: 0px;">66368457</span></span><span style="margin: 0px; padding: 0px; border: 0px; font-family: 宋体; font-size: 9pt;"></span></p><p><span style="margin: 0px; padding: 0px; border: 0px; font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 28px; background-color: rgb(241, 241, 241);"></span><span style="margin: 0px; padding: 0px; border: 0px; line-height: 28px; font-family: 宋体; font-size: 12pt; background-color: rgb(241, 241, 241);">教务处排课与考试中心：犀浦校区综合楼<span style="margin: 0px; padding: 0px; border: 0px;">222</span>，<span style="margin: 0px; padding: 0px; border: 0px;">66367209</span>、<span style="margin: 0px; padding: 0px; border: 0px;">66366253</span>。</span></p><p><br/></p>', '', 10, NULL, 1, 10, '2016-11-05 00:07:53', '', NULL),
(62, '欢迎来到西南交', '', '<p style="text-indent: 18.75px;margin-bottom: 0;line-height: 100%">&nbsp;西南交通大学（<span style="font-family:Calibri, serif"><span style="font-family:Times New Roman, serif">SWJTU</span></span>）成立于<span style="font-family:Calibri, serif"><span style="font-family:Times New Roman, serif">1896</span></span>年，是中国最早成立的大学之一，被誉为“中国铁路工程师摇篮”和“东方康奈尔”。如今，西南交通大学已经发展成了一个以工科见长，工科、理科、经济管理、人文社科、法学等多学科发展的综合性大学。学校拥有三个校区：两个位于四川省省会成都市，一个位于拥有联合国教科文组织世界文化和自然遗产的峨眉山市。</p><p style="text-indent: 18.75px;margin-bottom: 0;line-height: 100%">西南交通</p><p><br/></p>', '', 40, NULL, 1, 10, '2016-11-25 11:47:05', '', NULL),
(63, '欢迎来到西南交', '', '<p style="text-indent: 18.75px; margin-bottom: 0px; line-height: 1.75em;">&nbsp;西南交通大学（<span style="font-family:Calibri, serif"><span style="font-family:Times New Roman, serif">SWJTU</span></span>）成立于<span style="font-family:Calibri, serif"><span style="font-family:Times New Roman, serif">1896</span></span>年，是中国最早成立的大学之一，被誉为“中国铁路工程师摇篮”和“东方康奈尔”。如今，西南交通大学已经发展成了一个以工科见长，工科、理科、经济管理、人文社科、法学等多学科发展的综合性大学。学校拥有三个校区：两个位于四川省省会成都市，一个位于拥有联合国教科文组织世界文化和自然遗产的峨眉山市。</p><p style="text-indent: 18.75px; margin-bottom: 0px; line-height: 1.75em;">西南交通</p><p style="line-height: 1.75em;">dsgd<br/></p><p style="line-height: 1.75em;">fsf</p>', '', 40, NULL, 1, 10, '2016-11-25 11:47:47', '', NULL),
(64, 'fsd', '', '<p>hgfh</p><p><br/></p><p>fghfh</p><p>fhfgh</p><p>hfgh</p>', '', 40, NULL, 1, 10, '2016-11-25 11:48:13', '', NULL),
(65, '简介hahahh', '', '<p style="white-space: normal; text-indent: 2em;">西南交通大学信息科学与技术学院是随着时代和国家战略需求发展起来的学院，其发展历史可追溯到二十世纪六十年代初，学校创办了计算技术、自动化和无线电技 术3个专业，是国内较早开设电子与信息类专业的单位。1981年计算机及应用专业在国内首批获得硕士学位授予权（是当年四川省仅有的2个授权点之 一），1985年成立计算机科学与工程系，1993年成立计算机与通信工程学院，2005年更名为信息科学与技术学院。历经五十余载的建设与发展，学院形 成了以计算机、通信、控制、电子为主干学科的覆盖电子信息整个领域的学科体系，成为信息技术人才培养和科学研究基地。</p><p><br/></p>', '', 30, NULL, 1, 10, '2016-11-26 07:58:05', '', NULL),
(66, 'ccc', 'ccc', '<p>ccc</p>', '', 37, NULL, 1, 10, '2016-11-27 09:10:18', '', NULL),
(67, '擦擦擦擦擦擦擦擦擦', '', '<p>的房东身份</p>', '', 50, NULL, 1, 10, '2016-11-27 15:18:18', '', NULL),
(68, '没有', '', '<p>没有</p>', '', 35, NULL, 1, 10, '2016-12-06 18:11:26', '', NULL),
(69, 'cc', 'c', '<p>ccc</p>', '', 36, NULL, 1, 10, '2016-12-06 18:28:24', '', NULL),
(72, 'China Household Finance Survey', '', '<p>China Household Finance Survey</p>', '', 31, NULL, 1, 10, '2017-01-18 00:38:13', '/images/upload/20170118/1484700677949248.png', NULL),
(73, '中国银行：构建“一带一路”金融大动脉', '', '<p>China Household Finance Survey</p>', '', 31, NULL, 1, 10, '2017-01-18 00:38:59', '/images/upload/20170118/1484699938670456.png', NULL),
(74, '习近平会见挪威首相 强调在“一带一路”框架内开展合作', '', '<p><img src="https://www.yidaiyilu.gov.cn/wcm.files/upload/CMSydylgw/201704/201704110952022.jpg" width="500" alt="" style="border: 0px;"/><br/></p><p style="padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 34px; text-align: center;"><span style="font-family: KaiTi_GB2312;">4月10日，国家主席习近平在北京人民大会堂会见挪威首相索尔贝格。新华社记者姚大伟摄</span><span style="font-family: KaiTi_GB2312;"></span></p><p style="padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 34px;"><br/></p><p style="padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 34px;"><br/></p><p style="padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">国家主席习近平10日在人民大会堂会见挪威首相索尔贝格。</p><p style="padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">习近平指出，挪威是最早承认中华人民共和国的西方国家之一，也是最早承认中国市场经济地位的欧洲国家之一。中挪建交63年来，友好和合作一直是两国关系主流。我赞赏首相女士和挪威政府为中挪关系实现正常化作出的积极努力。相信只要双方坚持相互尊重、平等相待的原则，照顾和尊重彼此核心利益和重大关切，中挪关系和双方务实合作就将迎来广阔前景。中挪关系持续健康稳定发展，不仅符合两国和两国人民根本利益，而且对推动构建以合作共赢为核心的新型国际关系也具有现实意义。</p><p style="padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">习近平强调，我们应该从战略高度和长远角度把握好中挪关系发展方向，推动中挪关系不断迈上新台阶。双方要增进政治互信，加强高层交往，为双边关系发展做好前瞻性、战略性规划，密切各层级人员交流，在重大国际和地区问题上保持协调。双方要深化互利合作，利用两国经济互补性强、合作基础深厚的条件，重点推进双方优势领域合作。挪威积极响应中方提出的“一带一路”倡议，是亚洲基础设施投资银行创始成员国。双方可以在“一带一路”框架内开展合作，共同促进欧亚大陆互联互通和共同发展。中方愿同挪方深化在北极科研、资源开发、地区环境保护等领域合作，维护并促进北极地区稳定和可持续发展。希望挪方为推动中国－北欧合作发挥更加积极的作用。双方要丰富人文交流。中国将举办2022年冬奥会，愿同挪方加强在冬季运动领域交流，分享冬季运动赛事举办经验。两国主管部门应为两国民众赴对方国家旅游创造更加便利的条件。</p><p style="padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">索尔贝格表示，很高兴再次来华访问，我对中国发展取得的巨大成就深感钦佩。去年12月挪中双方就两国关系正常化发表的联合声明为我们两国关系恢复和发展提供了重要保障。挪方将恪守这一声明，坚持一个中国政策，高度重视中方的核心利益和重大关切，将以实际行动维护好两国关系发展的政治基础。挪方愿同中方密切两国高层交往，在新起点上推动双边关系发展。挪方支持中方提出的“一带一路”倡议，愿拓展两国包括北极事务在内的各领域互利合作，密切国际事务中的沟通协调。</p><p style="padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">两国领导人还就国际形势和共同关心的问题交换了看法。</p><p style="padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">国务委员杨洁篪等参加会见。</p><p style="padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">（原标题：习近平会见挪威首相索尔贝格）</p><p style="padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 34px;"><br/></p><p>编辑：王沥慷</p><p><br/></p>', '', 32, NULL, 1, 10, '2017-03-14 21:09:43', '', NULL),
(75, '习近平同缅甸总统会谈 见证《中缅原油管道运输协议》签署', '4月10日，国家主席习近平在北京人民大会堂同缅甸总统吴廷觉举行会谈。会谈前，习近平在人民大会堂东门外广场为吴廷觉举行欢迎仪式。', '<p style="text-align:center;padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 34px;"><img src="https://www.yidaiyilu.gov.cn/wcm.files/upload/CMSydylgw/201704/201704111037055.jpg" alt="" style="border: 0px;"/></p><p style="padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;"><span style="font-family: KaiTi_GB2312;">4月10日，国家主席习近平在北京人民大会堂同缅甸总统吴廷觉举行会谈。会谈前，习近平在人民大会堂东门外广场为吴廷觉举行欢迎仪式。（图片来源：新华社 张铎摄）</span></p><p style="padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">国家主席习近平10日在人民大会堂同缅甸总统吴廷觉举行会谈。两国元首一致同意，坚持风雨同舟、患难与共的优良传统，坚持相互尊重、互利共赢的合作方针，推动中缅关系持续健康稳定发展，给两国人民带来更多福祉。</p><p style="padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">会谈中习近平强调，中方赞赏缅方积极支持和参与“一带一路”倡议，愿同缅方加强发展战略对接，统筹推进各领域合作，推动皎漂经济特区等双方重点合作及有关互联互通项目早日实施。</p><p style="padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">吴廷觉表示，缅甸坚持一个中国政策，支持并愿积极参与“一带一路”建设，加强双方在基础设施建设、边境经济合作区等领域的重点项目合作，深化两国人民友谊，密切国际地区事务中协调合作。</p><p style="padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">会谈后，两国元首共同见证了两国经济技术、医疗、体育、交通、林业、文物等领域双边合作文件的签署。</p><p style="padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">双方发表了《中华人民共和国和缅甸联邦共和国联合新闻公报》。</p><p style="text-align:center;padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 34px;"><img src="https://www.yidaiyilu.gov.cn/wcm.files/upload/CMSydylgw/201704/201704111042001.jpg" alt="" style="border: 0px;"/></p><p style="padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;"><span style="font-family: KaiTi_GB2312;">4月10日，在缅甸马德岛港，工作人员帮助卸油臂与油轮原油管口对接。运载14万吨原油的“苏伊士”型油轮10日在缅甸马德岛港开始卸油，中缅原油管道工程宣告正式投入运行。（图片来源：</span><span style="font-family: KaiTi_GB2312;">新华社 庄北宁摄</span><span style="font-family: KaiTi_GB2312;">）</span></p><p style="padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">此外，在中缅两国元首的共同见证下，《中缅原油管道运输协议》10日在北京正式签署。当天晚上，运载14万吨原油的苏伊士型“联合动力号”油轮成功靠泊中缅原油管道起点——马德岛港并开始卸油，中缅原油管道工程正式投入运营。</p><p style="padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">中缅原油管道由中国石油和缅甸油气公司合资建设，起点位于缅甸西海岸马德岛，全长771公里，设置站场5座，设计年输量2200万吨，并建设一座规模为30万吨级的原油码头。中缅油气管道项目是中缅两国建交60周年的重要成果和结晶，于2010年6月在两国总理共同见证下开工。项目由天然气管道项目和原油管道项目组成，目的是为了开辟新的能源通道，缓解中国西南地区缺油少气的局面。</p><p style="padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">目前天然气管道项目已经安全平稳运行到第5个年头，原油管道项目投运后每年可为缅甸下载200万吨原油。中缅原油管道工程投运不仅会带动中国西南地区经济发展，对于缅甸的经济发展也起到了积极推动作用。</p><p style="padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">有分析指出，中缅原油管道工程投运后，中国开辟印度洋能源通道、实现油气进口多元化的构想，已经变为现实。这使得中国的油气进口在一定程度上减轻了对马六甲海峡的依赖，对中国的能源安全有着重要意义。中缅原油管道工程项目也成为“孟中印缅经济走廊”和中国与东盟国家开展互联互通基础设施建设的重要标志。</p><p style="padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">（综合《人民日报》、《光明日报》、《环球日报》报道）</p><p>编辑：曹家宁</p><p><br/></p>', '', 32, NULL, 1, 10, '2017-03-14 21:11:05', '', NULL),
(76, '白俄罗斯钾肥公司与中国中化集团签署钾肥供应备忘录', '白俄罗斯钾肥公司表示，习近平主席访白期间，白钾肥公司与中国中化集团签署了合作备忘录，拟在未来5年内对华供应钾肥400万吨，按现行价格计算，总金额约13亿美元。', '<p style="padding: 0px; margin-top: 15px; margin-bottom: 0px; text-align: center; text-indent: 2em;"><strong><img src="https://www.yidaiyilu.gov.cn/wcm.files/upload/CMSydylgw/201703/201703070237034.png" alt="" style="border: 0px;"/><br/></strong></p><p style="padding: 0px; margin-top: 15px; margin-bottom: 0px; text-align: center; text-indent: 2em;"><span style="font-family: KaiTi_GB2312;">刘德树董事长与BPC总经理Elena Kudryavets女士签署合作备忘录</span><span style="font-family: KaiTi_GB2312;"></span></p><p style="padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">白俄罗斯钾肥公司表示，习近平主席访白期间，白钾肥公司与中国中化集团签署了合作备忘录，拟在未来5年内对华供应钾肥400万吨，按现行价格计算，总金额约13亿美元，具体供货价格双方将另行商定。<span style="line-height: 1.5;">（来源：商务部网站）</span></p><p style="padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">2015年5月10日，在中华人民共和国主席习近平和白俄罗斯共和国总统卢卡申科的见证下，中国中化集团公司（中化集团）董事长刘德树与白俄罗斯钾肥公司（BPC）总经理Elena Kudryavets女士在白俄罗斯首都明斯克，共同签署了中化集团与BPC2015-2019五年合作备忘录（MOU），采购钾肥贸易总量约400万吨（含选择量），贸易额约13亿美元。该MOU将由中化化肥负责执行。此次MOU的签订，将进一步加深中化与BPC的战略合作，促进中国与白俄罗斯两国的经贸交流，为中国农业生产提供优质的钾肥货源保障，为“一带一路”战略实施打下坚实基础。对此，中化集团董事长刘德树先生表示：“中化集团与BPC之间有着长期友好的战略性的合作关系，双方在市场上、产品上有互补性，存在很好的合作基础和广阔的前景。我们相信，本着互惠互利的原则，我们一定会不断深化双方的合作，发展双方的友谊，共同为中国的农业发展和粮食安全提供支持与保障，为积极响应习主席提出的“一带一路”的战略构想做出我们坚实的努力。”白俄罗斯钾肥公司总裁Elena Kudryavets指出了所签署文档的重要性，同时强调称：“我们非常重视中化集团和BPC之间基于和谐、平衡市场发展所建立的互敬、互信关系。我们向中国供应钾肥的记录显示，BPC将继续是这一市场上的领导者。我们希望进一步合作，以促进两个公司的发展并对总体上白中关系的进展产生积极影响。”<span style="line-height: 1.5;"></span></p><p style="padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;"><span style="line-height: 1.5;">（综合新华网、商务部网站报道）<br/></span></p><p>编辑：王沥慷</p><p><br/></p>', '', 14, NULL, 1, 10, '2017-03-14 21:11:52', '/images/upload/20170411/1491950985599067.png', NULL),
(77, '学院简介', '', '<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; border: 0px; font-size: 12px; vertical-align: baseline; font-family: Simsun; color: rgb(119, 119, 119); white-space: normal; line-height: 22px; background-color: rgb(250, 250, 250);"><span style="font-size: 14px;">西南财经大学经济与管理研究院是西南财大为适应国际化发展趋势，改革经济学与管理学人才培养模式、转换科学研究范式，于2006 年新成立的专门吸收海外经济、金融与管理领域的博士毕业生和研究人员的教学、研究机构。我们的目标是努力创立一个国内一流、国际知名的经济与管理研究中心，成为祖国西部地区乃至全国的重要思想库和智囊中心。</span></p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; border: 0px; font-size: 12px; vertical-align: baseline; font-family: Simsun; color: rgb(119, 119, 119); white-space: normal; line-height: 22px; background-color: rgb(250, 250, 250);"><span style="font-size: 14px;">西南财大经济与管理研究院目前已有40余名来自海外的经济学者，并且仍继续在海外大规模招聘。很多成员已在主流的英文经济和管理领域的期刊上发表过论文。成员的研究领域广泛，涵盖计量经济学、微观经济学、宏观经济学、金融学、产业组织理论、城市与房地产经济学、环境经济学、管理经济学、数理经济学等，非常有利于进行经济学理论和实证的交叉学科合作研究。由于成员们多数已于出国留学前取得国内硕士或学士学位，不少成员在中文核心期刊上发表过论文或出版过中文论著，因此既熟悉中国国情，又长于运用现代经济学方法来研究中国现实问题。</span></p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; border: 0px; font-size: 12px; vertical-align: baseline; font-family: Simsun; color: rgb(119, 119, 119); white-space: normal; line-height: 22px; background-color: rgb(250, 250, 250);"><span style="font-size: 14px;">研究院以北美知名大学的经济学与管理学博士培养方案为主要参照模式，设有硕博连读班，教学全程采用英语原版教材、运用双语教学。凭借研究院教师之海外学术背景，同时立足本土，培养既有经济学与管理学系统知识，又能运用现代经济学分析方法研究、解决实际问题的高素质人才。&nbsp;&nbsp;</span></p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px; border: 0px; font-size: 12px; vertical-align: baseline; font-family: Simsun; color: rgb(119, 119, 119); white-space: normal; line-height: 22px; background-color: rgb(250, 250, 250);"><span style="font-size: 14px;">研究院将有计划、有重点地分批建设若干个研究所（中心），承接国内外重大科研项目。研究院组织定期的学术讨论会，邀请国内相关研究领域的知名学者介绍最新研究进展。</span></p><p><br/></p>', '', 58, NULL, 1, 10, '2017-03-26 22:48:21', '', NULL),
(78, '教师介绍', '', '<p><br/></p><p><span style=";font-family:宋体;font-size:14px">教师介绍</span></p><p><br/></p>', '', 59, NULL, 1, 10, '2017-03-26 22:49:16', '', NULL),
(79, 'test', '', '<p>test</p>', '', 60, NULL, 1, 10, '2017-03-26 22:53:43', '', NULL),
(80, '科学硕士研究生', '', '<p>test</p>', '', 61, NULL, 1, 10, '2017-03-26 22:54:29', '', NULL),
(81, '博士研究生', '', '<p>test</p>', '', 62, NULL, 1, 10, '2017-03-26 22:54:59', '', NULL),
(82, '研究生会', '', '<p><br/></p><p><span style=";font-family:宋体;font-size:14px">研究生会</span></p><p><br/></p>', '', 63, NULL, 1, 10, '2017-03-26 22:55:42', '', NULL),
(83, ' 关于学习贯彻全国高校思想政治工作会议精神心得体会征稿的通知', '', '<p style="background:white;">\r\n	<strong><span style="font-size:14pt;font-family:仿宋;font-weight:normal;color:#111111;">学院各位老师、同学们：</span></strong><span style="color:#111111;"></span></p><p style="background:white;text-indent:28pt;">\r\n	<strong><span style="font-size:14pt;font-family:仿宋;font-weight:normal;color:#111111;">为\r\n深入学习贯彻落实全国高校思想政治工作会议精神和习近平总书记在会上的重要讲话精神，营造良好氛围，运用新媒体新技术切实增强学校思想政治工作时代感和吸\r\n引力。学校将在专题网站、官方微信、《西南财大报》等策划推出《贯彻落实全国高校思想政治工作会议精神——西财人有话说》栏目，邀请学校思政工作干部、党\r\n支部书记、辅导员、思政课教师、专业课教师、学生等撰写体会、碰撞思想、开展交流。接有关通知如下：</span></strong><span style="font-size:14pt;font-family:仿宋;color:#111111;"> </span></p><p style="background:white;">\r\n	<strong><span style="font-size:14pt;font-family:仿宋;font-weight:normal;color:#111111;">一、栏目宗旨</span></strong><span style="font-size:14pt;font-family:仿宋;color:#111111;"></span></p><p style="background:white;text-indent:28pt;">\r\n	<strong><span style="font-size:14pt;font-family:仿宋;font-weight:normal;color:#111111;">推\r\n动全体西财人深化对做好高校思想政治工作重大意义的思想认识，提升扎根中国大地办大学的教育自信，把思想和行动统一到中央决策部署上来，把力量和智慧凝聚\r\n到落实会议提出的各项任务上来，以思想政治工作的新成效为培养又红又专、德才兼备、全面发展的中国特色社会主义合格建设者和可靠接班人贡献西财力量。</span></strong><span style="font-size:14pt;font-family:仿宋;color:#111111;"></span></p><p style="background:white;">\r\n	<strong><span style="font-size:14pt;font-family:仿宋;font-weight:normal;color:#111111;">二、栏目设置</span></strong><span style="font-size:14pt;font-family:仿宋;color:#111111;"></span></p><p style="background:white;">\r\n	<strong><span style="font-size:14pt;font-family:仿宋;font-weight:normal;color:#111111;">1.</span></strong><strong><span style="font-size:14pt;font-family:仿宋;font-weight:normal;color:#111111;">“学习贯彻全国高校思想政治工作会议精神——辅导员有话说”</span></strong><span style="font-size:14pt;font-family:仿宋;color:#111111;"></span></p><p style="background:white;">\r\n	<strong><span style="font-size:14pt;font-family:仿宋;font-weight:normal;color:#111111;">2.</span></strong><strong><span style="font-size:14pt;font-family:仿宋;font-weight:normal;color:#111111;">“学习贯彻全国高校思想政治工作会议精神——思政干部有话说”</span></strong><span style="font-size:14pt;font-family:仿宋;color:#111111;"></span></p><p style="background:white;">\r\n	<strong><span style="font-size:14pt;font-family:仿宋;font-weight:normal;color:#111111;">3</span></strong><strong><span style="font-size:14pt;font-family:仿宋;font-weight:normal;color:#111111;">．“学习贯彻全国高校思想政治工作会议精神——教师有话说”</span></strong><span style="font-size:14pt;font-family:仿宋;color:#111111;"></span></p><p style="background:white;">\r\n	<strong><span style="font-size:14pt;font-family:仿宋;font-weight:normal;color:#111111;">4.</span></strong><strong><span style="font-size:14pt;font-family:仿宋;font-weight:normal;color:#111111;">“学习贯彻全国高校思想政治工作会议精神——学生有话说”</span></strong><span style="font-size:14pt;font-family:仿宋;color:#111111;"></span></p><p style="background:white;">\r\n	<strong><span style="font-size:14pt;font-family:仿宋;font-weight:normal;color:#111111;">三、具体要求</span></strong><span style="font-size:14pt;font-family:仿宋;color:#111111;"></span></p><p style="background:white;">\r\n	<strong><span style="font-size:14pt;font-family:仿宋;font-weight:normal;color:#111111;">1</span></strong><strong><span style="font-size:14pt;font-family:仿宋;font-weight:normal;color:#111111;">．学院各党支部要扎实开展体系式学习、广泛开展融合式讨论，在此基础上深入学习贯彻全国高校思想政治工作会议精神，畅谈心得体会，为做好学校思想政治工作建言献策。</span></strong><strong><span style="font-size:14pt;font-family:仿宋;font-weight:normal;color:#111111;"></span></strong></p><p style="background:white;">\r\n	<strong><span style="font-size:14pt;font-family:仿宋;font-weight:normal;color:#111111;">2.</span></strong><strong><span style="font-size:14pt;font-family:仿宋;font-weight:normal;color:#111111;">文章须紧扣全国高校思想政治工作会议和习近平总书记在会上的重要讲话精神，以及赵德武书记在学校深入学习贯彻全国高校思想政治工作会议精神专题学习与研讨会（班）上的专题报告精神，联系学校思政工作实际，观点正确，文字凝练，文风平实。</span></strong><span style="font-size:14pt;font-family:仿宋;color:#111111;"></span></p><p style="background:white;">\r\n	<strong><span style="font-size:14pt;font-family:仿宋;font-weight:normal;color:#111111;">3.</span></strong><strong><span style="font-size:14pt;font-family:仿宋;font-weight:normal;color:#111111;">每篇心得体会字数原则上控制在800</span></strong><strong><span style="font-size:14pt;font-family:仿宋;font-weight:normal;color:#111111;">—</span></strong><strong><span style="font-size:14pt;font-family:仿宋;font-weight:normal;color:#111111;">1000</span></strong><strong><span style="font-size:14pt;font-family:仿宋;font-weight:normal;color:#111111;">字。</span></strong><span style="font-size:14pt;font-family:仿宋;color:#111111;"></span></p><p style="background:white;">\r\n	<strong><span style="font-size:14pt;font-family:仿宋;font-weight:normal;color:#111111;">4.</span></strong><strong><span style="font-size:14pt;font-family:仿宋;font-weight:normal;color:#111111;">征文时间为2017年3月13日—4月10日。</span></strong><span style="font-size:14pt;font-family:仿宋;color:#111111;"></span></p><p style="background:white;">\r\n	<strong><span style="font-size:14pt;font-family:仿宋;font-weight:normal;color:#111111;">5.</span></strong><strong><span style="font-size:14pt;font-family:仿宋;font-weight:normal;color:#111111;">请将心得体会电子版发送至</span></strong><span style="font-size: 14pt; font-family: 仿宋;"><a href="mailto:gsdangjianzuzhibu@163.com">gsdangjianzuzhibu@163.com</a></span><strong><span style="font-size:14pt;font-family:仿宋;font-weight:normal;color:#111111;">，邮件主题标明支部、班级或个人姓名投稿。</span></strong><span style="font-size:14pt;font-family:仿宋;color:#111111;"></span></p><p style="text-align:right;background:white;margin-left:36pt;text-indent:31.35pt;">\r\n	<strong><span style="font-size:14pt;font-family:仿宋;font-weight:normal;color:#111111;">工商管理学院分党委</span></strong><span style="font-size:14pt;font-family:仿宋;color:#111111;"></span></p><p style="text-align:right;background:white;text-indent:31.35pt;">\r\n	<strong><span style="font-size:14pt;font-family:&quot;Calibri&quot;,sans-serif;font-weight:normal;color:#111111;">&nbsp;&nbsp;&nbsp; &nbsp;</span></strong><strong><span style="font-size:14pt;font-family:仿宋;font-weight:normal;color:#111111;">2017</span></strong><strong><span style="font-size:14pt;font-family:仿宋;font-weight:normal;color:#111111;">年3月13日</span></strong></p><p><br/></p>', '', 67, NULL, 1, 10, '2017-03-26 23:10:28', '', NULL),
(84, '工商管理学院分党委2016-2017学年第二学期拟发展党员名单公示', '', '<p>\r\n					</p><p style="text-indent:28.0pt;">\r\n	<span style="font-family: FangSong_GB2312;">经学院学生各党支部综合推荐，学院分党委研究决定，本学期拟发展党员</span><span style="font-family: FangSong_GB2312;">42</span><span style="font-family: FangSong_GB2312;">人，现将其基本情况予以公示（具体名单请见附件）。公示时间为</span><span style="font-family: FangSong_GB2312;">2017</span><span style="font-family: FangSong_GB2312;">年</span><span style="font-family: FangSong_GB2312;">3</span><span style="font-family: FangSong_GB2312;">月</span><span style="font-family: FangSong_GB2312;">10</span><span style="font-family: FangSong_GB2312;">日至</span><span style="font-family: FangSong_GB2312;">3</span><span style="font-family: FangSong_GB2312;">月</span><span style="font-family: FangSong_GB2312;">14</span><span style="font-family: FangSong_GB2312;">日。\r\n在公示期内，党员和群众可来电、来信、来访，反映其在理想信念、政治立场、思想作风、工作表现、群众观念、廉洁自律等方面的情况和问题。反映问题应实事求\r\n是、客观公正。以个人名义反映问题的，要签署本人真实姓名。党支部及分党委将对反映人和反映问题严格保密，对反映问题进行调查核实，弄清事实真相，并以适\r\n当方式向反映人反馈。办公地址：通博楼</span><span style="font-family: FangSong_GB2312;">A109</span><span style="font-family: FangSong_GB2312;">，联系电话：</span><span style="font-family: FangSong_GB2312;">87092640</span><span style="font-family: FangSong_GB2312;">。</span></p><p style="text-align:left;">\r\n	<br/></p><p style="text-align:left;">\r\n	</p><p style="text-align:left;">\r\n		附<a href="http://gs.swufe.edu.cn/uploads/201611/25/20161125164510_31656.xlsx" target="_blank">件：</a><a href="http://gs.swufe.edu.cn/uploads/201703/10/20170310135444_57740.xlsx" target="_blank">工商管理学院分党委2016-2017年第二学期拟发展党员名单 </a>\r\n	</p><p><br/></p><p style="text-align:right;">\r\n	<span style="font-family: FangSong_GB2312;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;工商管理学院分党委</span></p><p style="text-align:right;">\r\n	<span style="font-family: FangSong_GB2312;">2017年</span><span style="font-family: FangSong_GB2312;">03</span><span style="font-family: FangSong_GB2312;">月</span><span style="font-family: FangSong_GB2312;">10</span><span style="font-family: FangSong_GB2312;">日</span></p><p><br/></p>', '', 67, NULL, 1, 10, '2017-03-26 23:14:00', '', NULL);
INSERT INTO `document` (`id`, `title`, `breviary`, `content`, `author`, `cate`, `view`, `status`, `level`, `create_at`, `pic`, `create_by`) VALUES
(85, '李克强：中新将加强“一带一路”合作 实现经济发展战略对接', '', '<p style="text-align:center;padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">当地时间3月28日中午，正在新西兰进行正式访问的国务院总理李克强在奥克兰下榻饭店与新西兰总理英格利希共同出席新西兰各界欢迎宴会并发表演讲。以下为演讲全文：</p><p style="text-align:center;padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;"><strong>让中新友谊与合作开创更多新的第一</strong></p><p style="text-align:center;padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">(2017年3月28日，奥克兰)</p><p style="text-align:center;padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">中华人民共和国国务院总理　李克强</p><p style="text-align:left;padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">尊敬的英格利希总理，</p><p style="text-align:left;padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">女士们，先生们:</p><p style="text-align:left;padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">科伊阿-奥拉（大家好）！很高兴在美丽的奥克兰与各位新老朋友相聚一堂。我谨代表中国政府，对新西兰政府给予中方代表团的热情接待和周到安排表示衷心感谢，向长期以来关心、支持中新关系发展的各界人士致以崇高敬意！</p><p style="text-align:left;padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">这是我第三次来到新西兰。新西兰素有“百分之百纯净”、“长白云之乡”的美誉，自然风景美不胜收。到这里来访问，工作任务再重，也会感到心旷神怡！</p><p style="text-align:left;padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">中新两国分处南北两个半球，但万里之遥阻挡不住双方人民的友好交往。早在1866年，1000多名华工穿越惊涛骇浪，到达新西兰达尼丁市。长期以来，在新华人用自己的辛勤劳动，为当地发展作出了积极贡献。1927年，路易·艾黎先生远赴中国，同中国人民同甘共苦60年，是中新人民友好的象征。</p><p style="text-align:left;padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">中新建交45年来，两国关系一直稳定健康发展，目前处于历史最好时期，各领域合作达到前所未有的广度和深度。政治上，两国高层交往密切，政治互信不断深化。2014年11月，习近平主席成功访问新西兰，中新关系提升为全面战略伙伴关系，两国关系进入新的发展阶段。经济上，中国是新西兰第一大贸易伙伴。国际金融危机爆发8年多来，两国贸易逆势上扬，年均增幅超过　12%，去年贸易规模接近120亿美元。中国1/3的进口乳制品来自新西兰。双向投资日趋活跃，两国相互累计投资额超过80亿美元。人文上，双方交流合作硕果累累。目前有近6万中国留学生在新西兰求学，中国是新西兰最大的海外留学生来源地。中国来新西兰旅游突破40万人次，成为新西兰第二大海外游客市场。两国还独具特色地开创了由一所中国东部地区大学、一所西部地区大学和一所新西兰大学组成的“三兄弟合作伙伴关系”，是中新人文交流的一大亮点。两国友好省州和城市增加到34对。新西兰“汉语热”持续升温，已建立3家孔子学院和29个孔子课堂，越来越多的新方学校开设汉语课程。</p><p style="text-align:left;padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">新西兰在发展对华关系上一直走在西方发达国家前列，是第一个与中国结束“入世”双边谈判、第一个承认中国完全市场经济地位、第一个同中国签署双边自贸协定、第一个成为亚洲基础设施投资银行创始成员国的西方发达国家。这些“第一”彰显中新关系的开拓性、特殊性、示范性，为两国人民带来了实实在在的利益。</p><p style="text-align:left;padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">中新友好的实践证明，国家体量大小、地理距离远近、社会制度和文化传统的差异，都不是国家关系发展的障碍。只要坚持相互尊重、平等相待，坚信对方发展带来的是机遇而不是挑战，各国就完全可以求同存异、聚同化异，成为相互理解和信任的好朋友、好伙伴。我们坚信，中新两国的友谊与合作会像太平洋一样，潜力无限、永不干涸！</p><p style="text-align:left;padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">女士们、先生们！</p><p style="text-align:left;padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">以贸易和投资自由化便利化为代表的经济全球化，是过去数十年世界经济快速发展的重要动力。新西兰成功的秘诀之一，就是坚持贸易立国，坚定投身经济全球化浪潮，敢于在国际竞争的汪洋大海中游泳。中国过去30多年的快速发展，也得益于对外开放。中新两国的发展历程表明，惟有开放包容，国家才能兴旺发达。</p><p style="text-align:left;padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">当前，世界政治经济格局正在经历深刻复杂变化。“逆全球化”思潮和孤立主义抬头，保护主义升温，既有国际经济秩序和体系面临挑战。多哈回合谈判历时15年之久，成果远不及预期。区域经济一体化遭遇寒流，一些国家政策内顾倾向明显。这些都给本来脆弱的世界经济蒙上了浓厚的阴影。经济全球化何去何从，不少人充满忧虑。</p><p style="text-align:left;padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">中新两国既是经济全球化的受益者，也是重要贡献者。两国在经济全球化问题上的立场是相同的，行动是一致的。无论国际环境如何变化，无论发展到什么阶段，中国都坚定不移地扩大对外开放，开放的大门只会越开越大。我们愿与新西兰等国一道，共商共筑人类命运共同体，共同完善全球经济治理体系，使经济全球化惠及更多国家、更多人群。共同维护多边贸易体制的权威性和有效性，积极参与多边贸易谈判，恪守世贸组织规则。我们主张建设开放透明的区域自由贸易安排，愿加快区域全面经济伙伴关系协定谈判，推进亚太自贸区建设。对其他有利于促进区域经济一体化的自由贸易安排，中方也持开放态度。中国倡导自由贸易，同样主张公平贸易。自由贸易与公平贸易不是对立的，而是辩证统一的。自由贸易是公平贸易的前提，没有自由贸易，公平贸易无从谈起。不能因为自由贸易过程中出现逆差等一些问题，就否定自由贸易。关起门来解决不了问题，只会损人不利己。虽然中国对新西兰的贸易存在逆差，但中方不搞贸易保护，而是坚持相互扩大市场开放、做大共同利益“蛋糕”的正确之道。各国都应旗帜鲜明反对保护主义，克制使用贸易救济措施，不把贸易摩擦政治化、扩大化。“贸易战”只会损害贸易自由，不会带来贸易公平。</p><p style="text-align:left;padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">经济全球化与和平、发展、合作多位一体、密不可分。如果没有近70年总体和平的国际环境，经济全球化不可能有今天的局面。当前，地缘政治风险增加，地区热点升温，恐怖主义、难民危机等非传统安全问题持续蔓延，侵蚀着和平与发展的基础。中新两国都是亚太国家，亚太的和平稳定与两国休戚相关。地区国家无论大小，都有责任维护地区和平稳定。当前，朝鲜半岛局势复杂敏感，中方希望有关各方避免相互刺激和加剧矛盾的言行，把紧张的气氛缓和下来，回到对话的轨道上来。至于南海有关问题，中方一贯主张通过直接当事方协商谈判解决，希望域外国家多做有利于维护南海和平稳定的事情。南海的航行和飞越自由从来就不是问题。中国和东盟国家正在全面有效落实《南海各方行为宣言》的框架下，积极推进“南海行为准则”磋商进程，目前进展顺利，形势正朝着积极方向发展，这有利于地区及世界的和平与稳定。中国人民曾经饱受战祸和动乱之苦，深知和平与稳定的珍贵。中国将始终不渝走和平发展道路，国强必霸不适合中国。</p><p style="text-align:left;padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">女士们、先生们！</p><p style="text-align:left;padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">我这次访问新西兰，既是友谊之旅，也是合作之旅。昨天，我同英格利希总理举行了会谈，达成一系列重要共识和成果。我们一致认为，发展中新全面战略伙伴关系，符合双方的根本利益。越是形势复杂多变，越要坚定地站在一起，以发展与合作的稳定性应对外部环境的不确定性。</p><p style="text-align:left;padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">——我们要深化政治互信。互信是国与国关系顺利发展的前提，也是45年来中新关系健康发展的根本保障。要充分发挥高层交往的政治引领作用，继续就事关两国发展的重大问题及时交换意见，推动中新全面战略伙伴关系深化发展。加强政府部门、立法机构、政党、地方间交往，用好各领域、各层级对话磋商机制。推进司法执法合作，探讨商签双边引渡条约，更好地打击跨国犯罪。继续在联合国、亚太经合组织、东亚峰会等多边机制内保持良好沟通协调，维护共同利益。</p><p style="text-align:left;padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">——我们要实现经济发展战略对接。中新两国经济议程契合点很多，做好经济发展战略对接有利于明确合作方向和重点<strong>。新西兰所处的南太平洋地区是21世纪海上丝绸之路的自然延伸，双方签署了加强“一带一路”倡议合作的文件，将重点推进基础设施建设、互联互通合作。中方鼓励信誉好、实力强的企业，以多种方式参与惠灵顿、奥克兰、克赖斯特彻奇等地基础设施建设。我们也欢迎更多新方企业到中国投资兴业，特别是到广大中西部地区大显身手。</strong></p><p style="text-align:left;padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">——我们要推动双边贸易扩容升级。中新两国产品各具特色，只要相互开放市场，双边贸易额完全可以在未来几年内达到300亿新元甚至更高。这次访问期间，两国政府共同宣布举行首轮中新自贸协定升级谈判。这是两国经贸合作向更高水平迈进的重大标志，也是促进全球贸易自由化便利化的积极信号。希望双方以此为契机，构建更高水平的农业合作伙伴关系，同时就服务贸易、竞争政策等议题达成新的共识。农牧产品贸易占两国贸易的半壁江山，中方愿从新西兰进口更多优质农牧产品，为新方冰鲜牛羊肉输华提供便利，也希望新方进口更多中国农牧产品。双方可加强农业技术、农场管理、食品安全等方面交流，提升农业合作层次。</p><p style="text-align:left;padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">——我们要继续密切人文交流。世界各国各民族的文化都是世界文明百花园的花朵，人类文明因多样而精彩。文明要发展进步，就必须开放包容、兼收并蓄。中国和新西兰都致力于推动多元文化交流融合。我们应坚定维护文明多样性，促进文明之间相互交流、相互学习、相互借鉴，而不是相互隔阂、相互排斥、相互取代。中方愿与新方一道促进留学生双向交流，加强高层次人才培养、职业教育等领域合作，提升“三兄弟合作伙伴关系”项目层次。此访期间，双方同意在奥克兰设立中国文化中心，新西兰将成为第一个同时设立两个中国文化中心的西方发达国家。双方宣布2019年为“中新旅游年”。中方欢迎新方向中国公民实行机场便捷通关项目，并发放五年多次签证，这必将促进两国人员往来。我们要发挥好孔子学院、中新市长论坛等平台的作用，共同培育“欢乐春节”等人文交流品牌项目，鼓励两国高校、智库、媒体、青年开展更多交往，让中新友好深入人心、世代相传。</p><p style="text-align:left;padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">女士们、先生们！</p><p style="text-align:left;padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">在座朋友关心中国经济形势，我愿作个简单介绍。过去的一年，世界经济形势极为严峻复杂，中国经济也受到较大影响，下行压力较大。在这样的情况下，我们没有搞“大水漫灌”式强刺激，而是紧紧依靠改革创新来稳增长、调结构、防风险。经过艰苦努力，不仅稳住了经济，而且经济运行呈现更多积极变化。全年国内生产总值增长6.7%，名列世界前茅，对世界经济增长的贡献率超过30%。今年前两个月，中国经济保持稳中有进、稳中向好的态势，工业用电量、铁路公路水路货运量、民间投资、进出口增速都进一步提升，企业利润、财政收入也加快增长。</p><p style="text-align:left;padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">今年中国经济增长的预期目标是6.5%左右，我们在实际工作中会争取更好结果。确定这样的增长目标，主要是为了引导各方面把工作重点更多放在推进供给侧结构性改革上来，提高经济增长的质量和效益。现在中国经济每增长1个百分点，增量相当于5年前1.5个百分点、10年前2个百分点。今年6.5%的增量，比去年6.7%的增量还大。</p><p style="text-align:left;padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">中国发展得益于对外开放。面对国际环境新变化和国内发展新要求，我们将以“一带一路”建设为统领，推进更深层次更高水平的对外开放，与世界各国实现双赢、多赢、共赢。预计未来5年，中国进口总额将达到8万亿美元，利用外资总额将达到6000亿美元，对外投资总额将达到7500亿美元，出境旅游将达到7亿人次。这必将给包括新西兰在内的世界各国带来巨大商机。</p><p style="text-align:left;padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">女士们、先生们！</p><p style="text-align:left;padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">新西兰著名登山家希拉里爵士有一句富含哲理的名言，“我们要征服的不是高山，而是自己”。中新关系已经创造了许多第一，一定还会创造更多第一。让我们以两国建交45周年为契机，携手并肩，推动中新关系更好更快发展，为两国人民开创更加美好的明天！</p><p style="text-align:left;padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">谢谢！</p><p style="text-align:left;padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">（原标题：让中新友谊与合作开创更多新的第一——在新西兰各界欢迎宴会上的演讲）</p><p>编辑：刘梦</p><p><br/></p>', '', 32, NULL, 1, 10, '2017-04-11 22:46:15', '', NULL),
(86, '2013至2016年中国累计引进外资4894.2亿美元', '', '<h1 class="main_content_title" style="padding: 0px 100px; margin: 0px 0px 45px; color: rgb(51, 51, 51); font-size: 38px; font-weight: normal; text-align: center; font-family: 微软雅黑, 宋体; white-space: normal;">2013至2016年中国累计引进外资4894.2亿美元</h1><p><br/></p>', '', 32, NULL, 1, 10, '2017-04-12 03:08:43', '', NULL),
(87, '亚行报告：亚洲基础设施年需求有望达1.7万亿美元', '', '<h1 class="main_content_title" style="padding: 0px 100px; margin: 0px 0px 45px; color: rgb(51, 51, 51); font-size: 38px; font-weight: normal; text-align: center; font-family: 微软雅黑, 宋体; white-space: normal;">亚行报告：亚洲基础设施年需求有望达1.7万亿美元</h1><p><br/></p>', '', 32, NULL, 1, 10, '2017-04-12 03:09:08', '', NULL),
(88, '“一带一路”主要国家非官方汇率', '', '<p>“一带一路”主要国家非官方汇率</p><p><br/></p>', '', 93, NULL, 1, 10, '2017-04-12 11:35:38', '', NULL),
(89, '“一带一路”主要国家生活用品价格', '', '<p>“一带一路”主要国家生活用品价格</p><p><br/></p>', '', 93, NULL, 1, 10, '2017-04-12 11:36:00', '', NULL),
(90, '“一带一路”主要国家食品短缺状况', '', '<p>“一带一路”主要国家食品短缺状况</p><p><br/></p>', '', 93, NULL, 1, 10, '2017-04-12 11:36:20', '', NULL),
(91, '“一带一路”主要国家基础设施运营现状', '', '<p>“一带一路”主要国家基础设施运营现状</p><p><br/></p>', '', 93, NULL, 1, 10, '2017-04-12 11:36:35', '', NULL),
(93, '星展银行布局“一带一路”', '伴随着中国“一带一路”国家战略的深入，各家银行也在加快储备相关地区基础设施领域的融资项目，助推中国企业“走出去”。', '<p style="padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">伴随着中国“一带一路”国家战略的深入，各家银行也在加快储备相关地区基础设施领域的融资项目，助推中国企业“走出去”。</p><p style="padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">《经济参考报》记者日前从星展银行首届“亚洲电力新机遇”研讨会上获悉，在“一带一路”沿线的亚洲地区，在电力基础设施领域，星展银行正在推进多个中国企业的融资项目。星展银行同时表示，作为基础设施项目最有效的融资方式之一，项目融资未来也将被更多的中国企业所运用。</p><p style="padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">星展银行项目融资主管林伟胜称，在可预见的未来，亚洲地区电力基础设施投资必将获得有效增长。“目前，在东盟地区和南亚地区，我们都有支持中国企业的项目在做。”他告诉《经济参考报》记者。</p><p style="padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">林伟胜还表示，在中国企业走出去的过程中，项目融资也将被更多的中国企业所运用。据记者了解，项目融资与传统融资的主要区别在于，按照传统的融资方式，贷款人把资金贷给借款人，然后由借款人把借来的资金投资于兴建的某个项目，偿还债款的义务由借款人承担。但按照项目融资的方式，工程项目的主办人或主办单位一般都专门为该项目的筹资而成立一家新的项目公司，由贷款人把资金直接贷给工程项目公司，而不是贷给项目的主办人，在这种情况下，偿还贷款的义务是由该工程项目公司来承担，而不是由承办人来承担。</p><p style="padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">星展银行（中国）有限公司首席执行官葛甘牛表示，虽然项目融资数额大、时限长、涉及面广，其融资结构和程序也相对复杂，却是基础设施项目最有效的融资方式之一。“在普通的企业融资中，业主承担全部项目风险。如项目遭遇失败，项目主办单位承担所有投资损失，这一损失可达100%的项目建设成本。而在项目融资中，项目主办单位承担部分项目风险。如项目遭遇失败，损失仅限于其股本投入，通常为项目成本20%至30％。”</p><p style="padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">林伟胜表示，“一带一路”沿线国家主权信用评级较低，大部分低于投资级或者没有被评级，需要如中信保这样的进出口信贷机构或如世行这样的多边投资担保机构参与，以降低国家风险。“这是控制贷款政治风险的一种主要方式。”他还表示，在贷款中，如果是外币贷款，需考虑外汇风险。而为了规避利率风险，也需选择合适的对冲工具。</p><p style="padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;"><img src="https://www.yidaiyilu.gov.cn/wcm.files/upload/CMSydylgw/201703/201703071111034.png" alt="" style="border: 0px;"/></p><p style="padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;"><span style="font-family: KaiTi_GB2312;">星展银行（星展）是亚洲领先的金融服务集团，拥有超过280间分行，业务遍及18个市场。星展总部位于新加坡，也是新加坡上市公司，其业务在亚洲迅速发展，主要围绕三大增长主轴，即大中华区、东南亚和南亚地区。星展的资本充裕性，以及高达AA-和Aa1的信用评级，引领亚太地区银行业前沿。2012年，星展银行获英国《金融时报》属下的《银行家》杂志（The Banker）评选为“亚洲最佳银行”，以及于2014年获《环球金融》杂志（Global Finance）评选为“亚太区最佳银行”。此外，星展自2009年至今，连续七年在《环球金融》杂志（Global Finance）排名中位列“亚洲最安全银行”。（资料来源网络）</span><span style="font-family: KaiTi_GB2312;"></span></p><p style="padding: 0px; margin-top: 15px; margin-bottom: 0px; text-indent: 2em;">（原标题：星展银行布局“一带一路”电力项目融资）</p><p>编辑：王沥慷</p><p><br/></p>', '', 14, NULL, 1, 10, '2017-04-12 11:39:06', '/images/upload/20170412/1491997095448662.jpg', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `friend`
--

CREATE TABLE `friend` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `friend_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `friend`
--

INSERT INTO `friend` (`id`, `user_id`, `friend_id`, `created_at`) VALUES
(6, 1, 1, '2016-08-06 19:22:58'),
(7, 1, 2, '2016-08-06 19:23:07'),
(8, 1, 3, '2016-08-06 19:23:12');

-- --------------------------------------------------------

--
-- 表的结构 `lecture`
--

CREATE TABLE `lecture` (
  `id` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `address` varchar(255) COLLATE utf8_bin NOT NULL,
  `subject` varchar(255) COLLATE utf8_bin NOT NULL,
  `content` text COLLATE utf8_bin,
  `lecturer` varchar(255) COLLATE utf8_bin NOT NULL,
  `lecturer_info` text COLLATE utf8_bin,
  `hint` text COLLATE utf8_bin,
  `poster` text COLLATE utf8_bin,
  `icon` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `manager`
--

CREATE TABLE `manager` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `icon` tinytext NOT NULL COMMENT 'icon_url',
  `IP` char(15) NOT NULL,
  `signature` varchar(60) NOT NULL COMMENT '签名档'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `manager`
--

INSERT INTO `manager` (`id`, `name`, `icon`, `IP`, `signature`) VALUES
(1, '99', '', '', ''),
(2, '33', '', '', ''),
(3, '张三', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `menu`
--

INSERT INTO `menu` (`id`, `name`, `parent`, `route`, `order`, `data`) VALUES
(2, '控制台', NULL, '/dashboard/index', 20, '{"icon": "fa  fa-laptop"}'),
(3, '添加用户', 7, '/user/admin/create', NULL, NULL),
(6, '信息发布', NULL, '/document/index', 15, '{"submenu":"CategoryWidget","icon": "fa fa-bullhorn"}'),
(7, '用户管理', NULL, '/user/admin/index', 21, '{"icon": "fa fa-users"}\r\n'),
(8, '列表', 7, '/user/admin/index', NULL, NULL),
(9, '管理员操作', NULL, '/admin/default/index', 30, '{"icon": "fa fa-television"}\r\n'),
(10, '路由', 9, '/admin/route/index', NULL, NULL),
(11, '权限', 9, '/admin/permission/index', NULL, NULL),
(12, '角色', 9, '/admin/role/index', NULL, NULL),
(13, '分配', 9, '/admin/assignment/index', NULL, NULL),
(15, '菜单', 9, '/admin/menu/index', NULL, NULL),
(17, '信息设置', 18, '/user/settings/profile', NULL, NULL),
(18, '设置', NULL, '/user/settings/profile', 5, '{"icon": "fa  fa-gears "}\r\n'),
(19, '账户设置', 18, '/user/settings/account', NULL, NULL),
(20, '栏目控制', NULL, '/cate/index', 4, NULL),
(21, '学术活动', NULL, '/dashboard/index', 4, '{"submenu":"CategoryWidget","icon": "fa fa-graduation-cap"}'),
(22, '汇报&交流', 21, '/report/list-all', NULL, NULL),
(23, '成果发布', NULL, '/achievement/index', 16, '{"icon": "fa  fa-trophy"}'),
(24, '宣传图', NULL, '/pic/index', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `message`
--

CREATE TABLE `message` (
  `id` bigint(20) NOT NULL,
  `to_user` int(11) NOT NULL,
  `from_user` int(11) NOT NULL,
  `content` text COLLATE utf8_bin,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1',
  `type` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) COLLATE utf8_bin NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1465834144),
('m130524_201442_init', 1465847458),
('m140209_132017_init', 1465835021),
('m140403_174025_create_account_table', 1465835022),
('m140504_113157_update_tables', 1465835024),
('m140504_130429_create_token_table', 1465835024),
('m140602_111327_create_menu_table', 1467149872),
('m140830_171933_fix_ip_field', 1465835025),
('m140830_172703_change_account_table_name', 1465835025),
('m141222_110026_update_ip_field', 1465835025),
('m141222_135246_alter_username_length', 1465835025),
('m150614_103145_update_social_account_table', 1465835026),
('m150623_212711_fix_username_notnull', 1465835026),
('m160312_050000_create_user', 1467149872),
('m160613_194413_create_status_table', 1465847495);

-- --------------------------------------------------------

--
-- 表的结构 `mind`
--

CREATE TABLE `mind` (
  `id` int(11) NOT NULL,
  `username` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `content` text COLLATE utf8_bin NOT NULL,
  `user_id` int(11) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `img` text COLLATE utf8_bin NOT NULL,
  `status` mediumint(9) NOT NULL DEFAULT '1',
  `likes` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `pic`
--

CREATE TABLE `pic` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `url` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `savepath` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `savename` tinytext CHARACTER SET utf8 COLLATE utf8_bin,
  `title` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `createtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `size` int(11) DEFAULT NULL,
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `ext` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `status` int(11) NOT NULL,
  `category` int(11) DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pic`
--

INSERT INTO `pic` (`id`, `content`, `url`, `savepath`, `savename`, `title`, `createtime`, `size`, `type`, `ext`, `status`, `category`, `level`) VALUES
(4, '', '', '/images/upload/20170411/1491950328736346.jpg', '', '', NULL, NULL, '', '', 1, 39, 0),
(5, '', '/frontend/info?id=57&precate=18', '/images/upload/20170412/1491964482823404.jpg', NULL, NULL, '2016-11-12 03:03:41', NULL, NULL, NULL, 1, 41, 0),
(6, '', 'http://www.swufe.edu.cn/', '/images/upload/20170412/1491964034644891.jpg', NULL, NULL, '2016-11-12 03:15:00', NULL, NULL, NULL, 1, 41, 0),
(7, '', '', '/images/upload/20170412/1491963974694583.jpg', NULL, NULL, '2016-11-12 03:15:11', NULL, NULL, NULL, 1, 41, 0),
(8, '', '', '/images/upload/20170315/1489615738391882.jpg', NULL, NULL, '2016-11-12 03:16:05', NULL, NULL, NULL, 1, 41, 0),
(9, '', '', '/images/upload/20170412/1491966807957849.png', NULL, NULL, '2017-03-14 17:23:31', NULL, NULL, NULL, 1, 39, 0),
(10, '', '', '/images/upload/20170326/1490571016421586.jpg', NULL, NULL, '2017-03-26 23:28:50', NULL, NULL, NULL, 1, 1, 0),
(11, '', '', '/images/upload/20170410/1491854404777584.jpg', NULL, NULL, '2017-04-10 19:56:50', NULL, NULL, NULL, 1, 39, 0);

-- --------------------------------------------------------

--
-- 表的结构 `profile`
--

CREATE TABLE `profile` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `public_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_email` text COLLATE utf8_unicode_ci,
  `gravatar_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `profile`
--

INSERT INTO `profile` (`user_id`, `name`, `public_email`, `gravatar_email`, `gravatar_id`, `location`, `website`, `bio`) VALUES
(1, '张逊桥', '', '/images/upload/160814/6349887597.png', '11ffdd1a7781bf1bcd4b501bcf56f2f8', '俄罗斯. 索契 ', 'http://www.gearblade.com', '祝你身体健康 ，工作顺利，哈哈哈'),
(3, '王二锤', '9527@gearblade.cc', '/images/upload/160809/5070540500.png', 'ce798135265e7111aa6a6748c5d11461', '日本，东京，原宿', '', '挂个球'),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `report`
--

CREATE TABLE `report` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(250) COLLATE utf8_bin NOT NULL,
  `subject` varchar(250) COLLATE utf8_bin NOT NULL,
  `content` text COLLATE utf8_bin,
  `score` float NOT NULL,
  `start_at` timestamp NULL DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pic` text COLLATE utf8_bin,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `report`
--

INSERT INTO `report` (`id`, `user_id`, `username`, `subject`, `content`, `score`, `start_at`, `create_at`, `update_at`, `pic`, `status`) VALUES
(2, 1, 'xq1024', '数据格式器', '当一次要在一个页面上显示很多数据时，通过需要将其分为几部分，每个部分都包含一些数据 列表并且一次只显示一部分。这些部分在网页上被称为 分页。', 0, '2016-07-21 08:10:00', '2016-07-24 08:21:59', '2016-07-13 11:55:20', '/images/upload/20160724/1469348511982725.jpg', 0),
(3, 1, 'xq1024', '在上面的多个规则的参数中， =0 意味着 n 的值是 0 ，=1 意味着 n 的值是 1 ， 而 other 则是对于其它值， # 会被 n 中的值给替代。 ', '在上面的多个规则的参数中， =0 意味着 n 的值是 0 ，=1 意味着 n 的值是 1 ， 而 other 则是对于其它值， # 会被 n 中的值给替代。\r\n\r\n复数形式可以是某些非常复杂的语言。下面以俄罗斯为例，=1 完全匹配 n = 1， 而 one 匹配 21 或 101：', 0, '2016-07-28 06:30:00', '2016-07-15 00:31:09', '0000-00-00 00:00:00', '', 0),
(4, 1, 'xq1024', '据苏群老师说柯凡之所以希望勇士赢主要是打一场就飞实在太累了', '据苏群老师说柯凡之所以希望勇士赢主要是打一场就飞实在太累了？呵呵。若真如此，那我更加的质疑柯凡的职业素养。\r\n1、柯凡去美国到底是干什么去了？不就是去解说比赛吗？\r\n2、隔一天飞一次太累？累别去啊！你飞美国之前就知道赛程了吧！\r\n3、你知道累，就更应该尊重球员了吧。别忘了，你是坐飞机，球员可是基本上隔一天打一场比赛啊！你对他们有一点尊重吗？\r\n4、解释了这么多，柯凡，有一个问题都没帮你解释：作为腾讯解说员，你为什么骂詹姆斯猩猩？也是因为累吗？\r\n5、柯凡，如果是男人就站出来自己说话。让别人一层一层帮洗，洗的次数越多，越显得你脸皮厚！', 0, '2016-07-29 14:00:00', '2016-07-15 01:03:55', '0000-00-00 00:00:00', '', 0),
(5, 1, 'xq1024', '算法非常看重的指标就是访问停留（View Duration）。', '访问停留就是用户会花多长时间停留在单个视频页面。这个变量的权重很高，我们的数据中能看到一个明显的引爆点。Frederator其中一个频道，前30天内，平均访问时长8分钟的视频，比平均5分钟的要多350%的访问量。下图表明，Frederator的一个频道的视频访问量，与平均访问停留时长的关系。', 0, '2016-10-27 02:00:00', '2016-07-15 02:33:23', '0000-00-00 00:00:00', '', 0),
(6, 3, '9527', '两名中国维和人员牺牲的南苏丹，为何内乱不断？', '最近，中国维和部队的安危成为国人关注的焦点。7月8日开始，南苏丹首都朱巴爆发激烈交战，中国维和部队的一辆装甲车遭炮击，2名维和人员牺牲，2人重伤，3人轻伤。在哀悼逝者，要求逞凶的同时，很多人也有疑问：在一个国家的首都，战争为何说来就来？为何还能伤及维和人员？', 0, '2016-07-11 10:10:00', '2016-07-15 07:16:15', '0000-00-00 00:00:00', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `report_signup`
--

CREATE TABLE `report_signup` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `report_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `social_account`
--

CREATE TABLE `social_account` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '姓名',
  `public_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '公邮',
  `icon` text COLLATE utf8_unicode_ci COMMENT '头像',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '职称',
  `position` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '地址',
  `tel` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '电话',
  `education` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '学历',
  `resume` text COLLATE utf8_unicode_ci COMMENT '履历',
  `achievement` text COLLATE utf8_unicode_ci COMMENT '成果',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `staff`
--

INSERT INTO `staff` (`id`, `type`, `name`, `public_email`, `icon`, `title`, `position`, `location`, `tel`, `education`, `resume`, `achievement`, `created_at`, `status`) VALUES
(2, '全职教师', '测试', '536@cc.com', '/images/upload/20170410/1491866120615533.png', '副教授', NULL, '9527', '24601', '西南财经大学', 'test', 'test', '2017-04-10 23:16:03', 1);

-- --------------------------------------------------------

--
-- 表的结构 `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `message` text COLLATE utf8_bin NOT NULL,
  `permissions` smallint(6) NOT NULL DEFAULT '0',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `student_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `student`
--

INSERT INTO `student` (`id`, `student_id`, `name`, `email`, `created_at`, `status`) VALUES
(1, '113020104102', 'MASOUD SALEH ISSA', 'njiwali@hotmail.com', '2017-03-18 21:09:35', 1),
(2, '113020104103', 'MARTINA GOTTWALD-BELINIC', 'm.gottwald-belinic@accenture.com', '2017-03-18 21:09:35', 1),
(3, '115020104901', 'MEHMET AKIF GUNDOGDU', 'magunca@hotmail.com', '2017-03-18 21:09:35', 1),
(4, '115020104904', 'UMER JAVEID', 'uj_qau@yahoo.com', '2017-03-18 21:09:35', 1),
(5, '115020204903', 'KARIM BENBOUAZZA', 'karim.benbouazza@gmail.com', '2017-03-18 21:09:35', 1),
(6, '116020204909', 'MOUMBARK TOURE', 'touremoubarak7@yahoo.fr', '2017-03-18 21:09:35', 1),
(7, '116020205902', 'JAPHET MTATURU', 'japhetmtaturu@yahoo.com', '2017-03-18 21:09:35', 1),
(8, '116020104902', 'LUE ZHAN', 'umzhan@myumanitoba.ca', '2017-03-18 21:09:35', 1),
(9, '116020204902', 'ABDISALAN SALAD WARSAME', 'salaamsw@yahoo.com', '2017-03-18 21:09:35', 1),
(10, '116020204901', 'AJMAL, MUHAMMAD MOBEEN', 'mobeen.ajmal12@gmail.com', '2017-03-18 21:09:35', 1),
(11, '116020205901', 'ABALOU OMAR EOULAM', 'omalams@yahoo.fr', '2017-03-18 21:09:35', 1),
(12, '116020205903', 'MOHAMED MOUMEN', 'xiaoyujia0428@163.com', '2017-03-18 21:09:35', 1),
(13, '213025100902', 'JOSEPH NIIFIO TETTEH', 'josephniifio@yahoo.com', '2017-03-18 21:09:35', 1),
(14, '214020104904', 'AUGUSTINE MWAPE', 'zedboy54@gmail.com', '2017-03-18 21:09:35', 1),
(15, '2141202Z1902', 'ELBEK KHALMATOV', 'elbek.khalmatov@yahoo.com', '2017-03-18 21:09:35', 1),
(16, '2141202Z7902', 'ANTOINETTE PEEN WAYLEA', 'waylea.ant@gmail.com', '2017-03-18 21:09:35', 1),
(17, '215020204901', 'MWEEMBE MULEYA MUDENDA', 'mweembemudenda@yahoo.co.uk', '2017-03-18 21:09:35', 1),
(18, '216020104902', 'MIKE MACKENZIE KACHING\'ONA', '2314350043@qq.com', '2017-03-18 21:09:35', 1),
(19, '216020204904', 'JUNIOR OFFEI YIRENKYI', 'study@cuecc.com', '2017-03-18 21:09:35', 1),
(20, '216020104905', 'COSMAS SAMALLE MWARIA', 'cosmasmwaria@gmail.com', '2017-03-18 21:09:35', 1),
(21, '216020204902', 'JAKOB LAWRENCE WELLS', '2978119306@qq.com', '2017-03-18 21:09:35', 1),
(22, '216020104906', 'JUDITH NIEMANN', 'theasmails@gmail.com', '2017-03-18 21:09:35', 1),
(23, '216020204901', 'VIOLETA RENDEVSKA', 'vrendevska@163.com', '2017-03-18 21:09:35', 1),
(24, '216020104904', 'STEPHEN KISSOON', 'stephenkissoon2@gmail.com', '2017-03-18 21:09:35', 1),
(25, '216020104903', 'MARIA MOUZOURI', 'mmouzouri13@gmail.com', '2017-03-18 21:09:35', 1),
(26, '216020104907', 'AYELE MATHILDE AJAVON', 'mathilde.ajavon@gmail.com', '2017-03-18 21:09:35', 1),
(27, '51100013', 'SHAHEER KHAN', 'shaheertanveer@yahoo.com', '2017-03-18 21:09:35', 1),
(28, '51100026', 'MUHAMMAD ARBAB ALI', 'rb-ali@live.com', '2017-03-18 21:09:35', 1),
(29, '51200009', 'ALBERTO CALBET', '', '2017-03-18 21:09:35', 1),
(30, '51200012', 'IS-HAQ SALUM SHAMTE', 'ishamte@yahoo.com', '2017-03-18 21:09:35', 1),
(31, '51200039', 'NIMESH PRASAD SHRESTHA', 'nimesh1005@yahoo.com', '2017-03-18 21:09:35', 1),
(32, '51300008', 'PEKINS ADU PARKO', 'pekrace2010@gmail.com', '2017-03-18 21:09:35', 1),
(33, '51300010', 'MEWIKA PIMPAT', 'mu_may555@hotmail.com', '2017-03-18 21:09:35', 1),
(34, '51300011', 'JAMES PETER LOUDERBACK', 'jameslouderback@foxmail.com', '2017-03-18 21:09:35', 1),
(35, '51300012', 'EGGY ERNANDO PAWANE', 'eggypawane@yahoo.com', '2017-03-18 21:09:35', 1),
(36, '51300013', 'ADRIAN SIMBARASHE JIRI', 'adrianjiri@gmail.com', '2017-03-18 21:09:35', 1),
(37, '51300014', 'JENNY BAK', 'bak.genni@icloud.com', '2017-03-18 21:09:35', 1),
(38, '51300015', 'IBRAHIM ABDI MOHAMED', '', '2017-03-18 21:09:35', 1),
(39, '51300016', 'ROGER GAO', 'rgrgao@icloud.com', '2017-03-18 21:09:35', 1),
(40, '51300017', 'ASSEM KALIBAYEVA', 'Assem.finance@gmail.com', '2017-03-18 21:09:35', 1),
(41, '51300018', 'INES CHENNOUFI', 'inesschennoufi@gmail.com', '2017-03-18 21:09:35', 1),
(42, '51300019', 'RUTH  LISA CARVALHO ALVARENGA', 'yutilija@hotmail.com', '2017-03-18 21:09:35', 1),
(43, '51300020', 'JAEMIN LEE', 'jm940621@naver.com', '2017-03-18 21:09:35', 1),
(44, '51300021', 'MARIA NYANGOMA KYABEGA', 'kyabegamaria@gmail.com', '2017-03-18 21:09:35', 1),
(45, '51300022', 'THOMAS SILVANUS MANDE', 'mandethomas54@yahoo.com ', '2017-03-18 21:09:35', 1),
(46, '51300024', 'SULEIMAN NATITI', 'natiti.investment@yahoo.com', '2017-03-18 21:09:35', 1),
(47, '51300026', 'MARY LUFF MARGARET', 'mail2megluff@yahoo.com', '2017-03-18 21:09:35', 1),
(48, '51300027', 'SAMUEL KALU ABUCHI', 'Sammybello101@hotmail.com', '2017-03-18 21:09:35', 1),
(49, '51300032', 'ANDREAS COUTROUPIS', '', '2017-03-18 21:09:35', 1),
(50, '51300033', 'RUTH KAKUNDU', 'ruthkakundu@gmail.com', '2017-03-18 21:09:35', 1),
(51, '51300065', 'DAVID GBOGOU', 'gmichee@hotmail.com', '2017-03-18 21:09:35', 1),
(52, '51300067', 'USAMA ZOBAYER', 'usamazobayer@hotmail.com', '2017-03-18 21:09:35', 1),
(53, '51400035', 'JUAN CARLOS CUESTAS', 'jccuestas@att.net', '2017-03-18 21:09:35', 1),
(54, '51400045', 'FLORENCE  SILVANUS MANDE', 'silvanusflora@gmail.com', '2017-03-18 21:09:35', 1),
(55, '51400073', 'SANAT DAVRONOV', 'sanatdavronov@yahoo.com', '2017-03-18 21:09:35', 1),
(56, '51400091', 'GALVANISH  PREFINA MVOUMBI  TCHIFOUNA', 'prefinamvoumbi@yahoo.fr', '2017-03-18 21:09:35', 1),
(57, '51400092', 'PATHIRAGE RAKHITHA NUWAN PERERA', 'rakhithaperera222@gmail.com', '2017-03-18 21:09:35', 1),
(58, '51400096', 'UWAIFIOSE JUNIOR IGENE', 'opiathon1@yahoo.com', '2017-03-18 21:09:35', 1),
(59, '51400108', 'LUKE SIKUTEKA SIAZILO', 'lukesiazilo@gmail.com', '2017-03-18 21:09:35', 1),
(60, '51400110', 'JUBRIL ADETOKUNBO LAWAL', 'misterjubrillawal@yahoo.com', '2017-03-18 21:09:35', 1),
(61, '51500010', 'NISHA KAUMADI WIJEKOON WIJEKOON MUDIYANSELAGE', 'Kaumadiwijekoon195@gmail.com', '2017-03-18 21:09:35', 1),
(62, '51500011', 'ASHEN GAYANTHA HALLOLUWA ARACHCHIGE', 'kethakeeandaraweera@ymail.com', '2017-03-18 21:09:35', 1),
(63, '51500012', 'JAHUN KOO', 'koojahun92@yahoo.com', '2017-03-18 21:09:35', 1),
(64, '51500020', 'THENNAKOON MUDIYANSELAGE ISHAN KAWMINA BANDARANAYAKE', 'ishankawmina@gmail.com ', '2017-03-18 21:09:35', 1),
(65, '51500022', 'PULASTHI GAURAWAWANSA STEPHEN', 'stephen_0510@yahoo.com', '2017-03-18 21:09:35', 1),
(66, '51500024', 'CHAMODI DINENDRA NISHAMANI GUNATHILAKE PALUGAMA VIDANALE', 'gunathilakec@yahoo.com', '2017-03-18 21:09:35', 1),
(67, '51500026', 'JILL IVY KOMUGISA', 'ivy17122012@yahoo.co.uk', '2017-03-18 21:09:35', 1),
(68, '51500029', 'SIDDHARTHA SANATHU', 'sidsanathu@gmail.com', '2017-03-18 21:09:35', 1),
(69, '51500030', 'MELISSA KIBAWA', 'melissa.kibawa@hotmail.com', '2017-03-18 21:09:35', 1),
(70, '51500032', 'NETHMI RUWANKA JAYATHILAKE', 'nethmi.jayathilake@yahoo.com', '2017-03-18 21:09:35', 1),
(71, '51500064', 'DAVID AMOATENG', 'davidsamoateng@web.de', '2017-03-18 21:09:35', 1),
(72, '51500074', 'ANDRE ALMEIDA', 'almeida.f.andre@gmail.com', '2017-03-18 21:09:35', 1),
(73, '51500161', 'JEANNETTE MUSENGIYAREMYE', 'msngjaja@gmail.com', '2017-03-18 21:09:35', 1),
(74, '51500162', 'SAM BAKER', 'stratsam@sbcglobal.net', '2017-03-18 21:09:35', 1),
(75, '51500163', 'ISMAIL RACHID', 'rachid.elhabib@gmail.com', '2017-03-18 21:09:35', 1),
(76, '51500165', 'INDIKA DEASHAPRIYA AMARASINGHE LOKUNEKATHIGE', 'hailsheen@yahoo.com', '2017-03-18 21:09:35', 1),
(77, '51500166', 'THILINA NADEESHAN KETIPE KANKANAMGE', 'thilina_flanker@yahoo.com', '2017-03-18 21:09:35', 1),
(78, '51500167', 'MARIA SALAD AHMED', 'mariasalad22@outlook.com', '2017-03-18 21:09:35', 1),
(79, '51500169', 'BRENDA  RICHARD KISUSI', 'kexin95@hotmail.com', '2017-03-18 21:09:35', 1),
(80, '51600005', 'NICHOLA TRAYNOR', 'niknaktraynor@yahoo.co.uk', '2017-03-18 21:09:35', 1),
(81, '51600008', 'KENNEDY RANDY APPIAH', 'appiahrandykennedy@yahoo.com', '2017-03-18 21:09:35', 1),
(82, '51600027', 'DANIEL XIAO DAN BROUWER', 'dandanlovechina@hotmail.nl', '2017-03-18 21:09:35', 1),
(83, '51600061', 'ASHRAKA TWAHA KYEJU', 'ashrakakyeju@yahoo.com', '2017-03-18 21:09:35', 1),
(84, '51600006', 'TEODOR KONDEV', 'teodorkondev@gmail.com', '2017-03-18 21:09:35', 1),
(85, '51600050', 'RAISA YAKUSHEVA', 'r.yakusheva@outlook.com', '2017-03-18 21:09:35', 1),
(86, '51600046', 'MAXENCE THOMAS ENKONDA', 'maxence.enkonda@gmail.com', '2017-03-18 21:09:35', 1),
(87, '51600012', 'KENEILWE, NATALIE, MMAMOOTSO NYATSHANE', 'knyatshane@gmail.com', '2017-03-18 21:09:35', 1),
(88, '51600031', 'CHETHANA SITHUMINI GIRAMBE GEDARA', 'chethanagirambe1994@gmail.com', '2017-03-18 21:09:35', 1),
(89, '51600001', 'NAHIMATU SUMAILA', 'nymma1@yahoo.com', '2017-03-18 21:09:35', 1),
(90, '51600026', 'ALANKA DEVINDA WEERARATNE', 'alankaweeraratne@ymail.com', '2017-03-18 21:09:35', 1),
(91, '51600010', 'NOUAAMANE EL OMARI', 'Nounouel1@outlook.com', '2017-03-18 21:09:35', 1),
(92, '51600039', 'ALAN CHRISTOPHER BEYIRA KONAN', 'Konan.alan.christopher@gmail.com', '2017-03-18 21:09:35', 1),
(93, '51600070', 'LYON OBIORA ANUMUDU', 'LYYONANUMUDU@YAHOO.COM', '2017-03-18 21:09:35', 1),
(94, '51600028', 'ISURU BAWANTHA GIRAMBE GIRAMBE GEDARA', 'rcacwsgtgirambe@gmail.com', '2017-03-18 21:09:35', 1),
(95, '51600030', 'KANISHKA JUDE SONAL DE SILVA AMARASINGHAGE', 'sonaldesilva5@gmail.com', '2017-03-18 21:09:35', 1),
(96, '51600011', 'RANMITH MATHISHA NANAYAKKARA NANAYAKKARA WASANAGARAGE', 'ranmithnanayakkara97@gmail.com', '2017-03-18 21:09:35', 1),
(97, '51600065', 'JOYCE BOSMANS', 'bosmans.joyce@gmail.com', '2017-03-18 21:09:35', 1),
(98, '51600014', 'ISHAN SHAVINDA PATHIRANA', 'ishanpathirana123@gmail.com', '2017-03-18 21:09:35', 1),
(99, '51600007', 'D WIJESIRI GIRUWAGE CHIRANTHA SANDEEPA WIJESIRI', 'chiranthasandeeparcrox@gmail.com', '2017-03-18 21:09:35', 1),
(100, '51600009', 'WILLOW SIBILLA FLANDRINE LIBERTO', 'willowliberto@outlook.com', '2017-03-18 21:09:35', 1),
(101, '51600016', 'LIYANA ARACHCHIGE HASALA ABILASHA  LIYANAARACHCHI', 'hustler404@gmail.com', '2017-03-18 21:09:35', 1),
(102, '51600066', 'CHARUKA NIRMAL WEERASINGHE  WEERASINGHE PATHIRANAGE', 'hasithweerasinghe61@gmail.com', '2017-03-18 21:09:35', 1),
(103, '51600029', 'SINGAPPULLIGE CHAMOD YASANTHA PIYASINGHE', 'chamodyasintha97@gmail.com', '2017-03-18 21:09:35', 1),
(104, '51600034', 'KANISHKA HELANGA HEWAWATHTHA KANKANAMGE ', 'kanishkahelanga97@gmail.com', '2017-03-18 21:09:35', 1),
(105, '51600069', 'NAVODUL PINISARA WIDHMAL MATHARAGE', 'navodul2@gmail.com', '2017-03-18 21:09:35', 1),
(106, '51600068', 'SANGAPALA ARACHCHIGE DONA AVISHKA ROSHINI  DISSANAYAKE ', 'avishkadissanayake977777@gmail.com', '2017-03-18 21:09:35', 1),
(107, '51600059', 'DUMITRU GUDIMA', 'damon_smith@mail.ru', '2017-03-18 21:09:35', 1),
(108, '51600067', 'SANOD HAVIKSHA PERERA  DAHAS KANKANAMALAGE ', 'sanoddddd@gmail.com', '2017-03-18 21:09:35', 1),
(109, '51600035', 'ANUMUDU UGOCITUISWU KINGSLEY', 'Kingsleyanumudu@yahoo.com', '2017-03-18 21:09:35', 1),
(110, '51600047', 'Rebecca Sturman', 'beccasturman@icloud.com', '2017-03-18 21:09:35', 1);

-- --------------------------------------------------------

--
-- 表的结构 `textbook`
--

CREATE TABLE `textbook` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `publish` varchar(255) COLLATE utf8_bin NOT NULL,
  `author` varchar(255) COLLATE utf8_bin NOT NULL,
  `edition` varchar(250) COLLATE utf8_bin NOT NULL,
  `pic` text COLLATE utf8_bin NOT NULL,
  `background` text COLLATE utf8_bin,
  `price` float NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `token`
--

CREATE TABLE `token` (
  `user_id` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `type` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `token`
--

INSERT INTO `token` (`user_id`, `code`, `created_at`, `type`) VALUES
(1, 'yzJC-td1DdIENJjIw6WdmkCRFtPkijMg', 1467670654, 2),
(5, 'Sh2neStsY4LIioIY82AN7Fyd1orbobST', 1491865824, 0);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `confirmed_at` int(11) DEFAULT NULL,
  `unconfirmed_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blocked_at` int(11) DEFAULT NULL,
  `registration_ip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '10',
  `password_reset_token` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password_hash`, `auth_key`, `confirmed_at`, `unconfirmed_email`, `blocked_at`, `registration_ip`, `created_at`, `updated_at`, `flags`, `status`, `password_reset_token`) VALUES
(1, 'xq1024', '584486049@qq.com', '$2y$12$cMgjIi.Rm8twuu.hjKlWi.vpm70Pwb9ncjcH6O2mX1XgwNK1OtbP6', 'RMWZq873-FubXDEQo-DkL1rVKkIULcXt', 1465845350, NULL, NULL, '127.0.0.1', 1465838094, 1467670674, 0, 10, ''),
(2, 'admin', 'zxq@gearblade.com', '$2y$10$9F9F/1X3kmcfg0A5gjflKejp3EhoZ5n7vJm2cKeTjmSCh/J/AEV8m', 'WnKrmaI64d-fmuMC1CN0mu9PzOeeISqw', 1466453289, NULL, NULL, '127.0.0.1', 1465844804, 1465844804, 0, 10, ''),
(3, '9527', '9527@gearblade.com', '$2y$10$6avNH2oWbgtitnC5BC1QFe/8/fyWvUt6j0ZEpzpxTOVLi56V7Ny42', '_YAGCoE-CxHY_FcMJj62rzJuCopu5TeT', 1467459241, NULL, NULL, '127.0.0.1', 1467459242, 1467459242, 0, 10, ''),
(4, 'ccc', 'cc@cc.cc', '$2y$12$ZNSpS8Q2FNSPTJwxWReDw..D.zGgC6GNxtvr6BFrQuFT/YfF4IcjS', 'FNtqBC0WmxxcpxBQeq7FSlVmmLxHWNlB', 1469101335, NULL, NULL, '127.0.0.1', 1469101335, 1469101335, 0, 10, ''),
(5, 'cce', 'robot@gearblade.com', '$2y$12$moqocKJqTj1lAI7vlYAbQ.53e5plwTPzLYkYAJ9JGybuADgZcdhmK', 'iV1blHy5IK17MEQ31AGoHJ_pnkoX83dy', NULL, NULL, NULL, '127.0.0.1', 1491865824, 1491865824, 0, 10, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `achievement`
--
ALTER TABLE `achievement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `action`
--
ALTER TABLE `action`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`);

--
-- Indexes for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Indexes for table `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `cate`
--
ALTER TABLE `cate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index` (`cindex`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`);

--
-- Indexes for table `friend`
--
ALTER TABLE `friend`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lecture`
--
ALTER TABLE `lecture`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent` (`parent`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `mind`
--
ALTER TABLE `mind`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pic`
--
ALTER TABLE `pic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report_signup`
--
ALTER TABLE `report_signup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_account`
--
ALTER TABLE `social_account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_unique` (`provider`,`client_id`),
  ADD UNIQUE KEY `account_unique_code` (`code`),
  ADD KEY `fk_user_account` (`user_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `textbook`
--
ALTER TABLE `textbook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD UNIQUE KEY `token_unique` (`user_id`,`code`,`type`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_unique_email` (`email`),
  ADD UNIQUE KEY `user_unique_username` (`username`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `achievement`
--
ALTER TABLE `achievement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- 使用表AUTO_INCREMENT `action`
--
ALTER TABLE `action`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `cate`
--
ALTER TABLE `cate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
--
-- 使用表AUTO_INCREMENT `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `document`
--
ALTER TABLE `document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
--
-- 使用表AUTO_INCREMENT `friend`
--
ALTER TABLE `friend`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- 使用表AUTO_INCREMENT `lecture`
--
ALTER TABLE `lecture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `manager`
--
ALTER TABLE `manager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- 使用表AUTO_INCREMENT `message`
--
ALTER TABLE `message`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `mind`
--
ALTER TABLE `mind`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pic`
--
ALTER TABLE `pic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- 使用表AUTO_INCREMENT `report`
--
ALTER TABLE `report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- 使用表AUTO_INCREMENT `report_signup`
--
ALTER TABLE `report_signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `social_account`
--
ALTER TABLE `social_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
--
-- 使用表AUTO_INCREMENT `textbook`
--
ALTER TABLE `textbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 限制导出的表
--

--
-- 限制表 `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `fk_user_profile` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- 限制表 `social_account`
--
ALTER TABLE `social_account`
  ADD CONSTRAINT `fk_user_account` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- 限制表 `token`
--
ALTER TABLE `token`
  ADD CONSTRAINT `fk_user_token` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
