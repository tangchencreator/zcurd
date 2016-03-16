# ************************************************************
# Sequel Pro SQL dump
# Version 4529
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.6.17-log)
# Database: zcurd
# Generation Time: 2016-03-16 12:26:20 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table zcurd_field
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zcurd_field`;

CREATE TABLE `zcurd_field` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `head_id` int(11) DEFAULT NULL COMMENT '所属表',
  `field_name` varchar(100) DEFAULT NULL COMMENT '字段名称',
  `column_name` varchar(100) DEFAULT NULL COMMENT '列表列名',
  `column_length` int(11) DEFAULT '120' COMMENT '列宽',
  `data_type` varchar(50) DEFAULT NULL COMMENT '数据类型',
  `input_type` varchar(50) DEFAULT 'easyui-textbox' COMMENT '控件类型',
  `is_show_list` int(11) DEFAULT '1' COMMENT '是否列表显示',
  `is_allow_detail` int(11) DEFAULT '1' COMMENT '是否详情显示',
  `is_allow_add` int(11) DEFAULT '1' COMMENT '是否允许增加',
  `is_allow_update` int(11) DEFAULT '1' COMMENT '是否允许编辑',
  `is_search` int(11) DEFAULT '0' COMMENT '是否搜索',
  `is_allow_null` int(11) DEFAULT '1' COMMENT '是否允许为空',
  `dict_sql` varchar(1000) DEFAULT NULL COMMENT '字典sql',
  `order_num` int(11) DEFAULT '0' COMMENT '顺序',
  `search_type` int(11) DEFAULT '1' COMMENT '搜索类型(1:值,2:范围)',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='在线表单字段';

LOCK TABLES `zcurd_field` WRITE;
/*!40000 ALTER TABLE `zcurd_field` DISABLE KEYS */;

INSERT INTO `zcurd_field` (`id`, `head_id`, `field_name`, `column_name`, `column_length`, `data_type`, `input_type`, `is_show_list`, `is_allow_detail`, `is_allow_add`, `is_allow_update`, `is_search`, `is_allow_null`, `dict_sql`, `order_num`, `search_type`, `create_time`)
VALUES
	(179,130,'id','id',120,'int','easyui-textbox',1,1,1,1,0,1,'',1,1,'2016-01-08 16:25:53'),
	(180,130,'status','状态',120,'int','easyui-combobox',1,1,1,1,1,0,'select 0, \'无效\' union all select 1, \'有效\'',3,1,'2016-01-08 16:25:53'),
	(181,130,'login_id','登录账户',120,'varchar','easyui-textbox',1,1,1,1,1,0,'',2,1,'2016-01-08 16:25:53'),
	(182,130,'login_pwd','录登密码',120,'varchar','easyui-textbox',1,1,1,1,0,0,'',4,1,'2016-01-08 16:25:53'),
	(183,130,'nickname','昵称',120,'varchar','easyui-textbox',1,1,1,0,0,1,'',5,1,'2016-01-08 16:25:53'),
	(184,130,'reg_time','注册时间',120,'timestamp','easyui-textbox',1,1,0,0,1,1,'',6,2,'2016-01-08 16:25:53'),
	(185,130,'info','备注',120,'varchar','easyui-textbox',0,1,1,0,0,1,'',7,1,'2016-01-08 16:25:53'),
	(186,131,'id','id',120,'int','easyui-textbox',1,1,1,1,0,1,'',1,1,'2016-01-08 16:31:45'),
	(187,131,'user_name','用户名',120,'varchar','easyui-textbox',1,1,1,1,1,1,'',2,1,'2016-01-08 16:31:45'),
	(188,131,'password','密码',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',3,1,'2016-01-08 16:31:45'),
	(189,131,'create_time','创建时间',120,'timestamp','easyui-textbox',1,1,0,0,1,1,'',5,2,'2016-01-08 16:31:45'),
	(316,133,'cid','主键客户信息表',120,'int','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:35'),
	(317,133,'source','客户来源',120,'int','easyui-textbox',0,1,0,1,0,1,'',0,1,'2016-01-08 17:53:35'),
	(318,133,'parentid','主借人id',120,'int','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:35'),
	(319,133,'name','客户姓名',120,'varchar','easyui-textbox',1,1,1,1,1,1,'',0,1,'2016-01-08 17:53:35'),
	(320,133,'idcard','客户身份证',120,'varchar','easyui-textbox',1,1,1,1,1,1,'',0,1,'2016-01-08 17:53:35'),
	(321,133,'mobile','客户手机号码',120,'varchar','easyui-textbox',1,1,1,1,1,1,'',0,1,'2016-01-08 17:53:35'),
	(322,133,'cityid','城市id',120,'int','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:35'),
	(323,133,'cityname','城市名',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:35'),
	(324,133,'pid','项目id',120,'int','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:35'),
	(325,133,'pname','项目名',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:35'),
	(326,133,'type','客户类型',120,'int','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:35'),
	(327,133,'status','状态',120,'int','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:35'),
	(328,133,'mid','使用模型',120,'int','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:35'),
	(329,133,'score','按模型计算得分',120,'int','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:35'),
	(330,133,'tempcontent','修改数据',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:36'),
	(331,133,'ordercode','订单id',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:36'),
	(332,133,'price','贷款金额',120,'int','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:36'),
	(333,133,'stime','贷款开始时间',120,'date','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:36'),
	(334,133,'etime','贷款结束时间',120,'date','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:36'),
	(335,133,'sex','客户性别',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:36'),
	(336,133,'birthday','出生年月',120,'date','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:36'),
	(337,133,'natiomality','国籍',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:36'),
	(338,133,'nation','民族',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:36'),
	(339,133,'pidtype','证件类型',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:36'),
	(340,133,'pidvaildity','证件有效期',120,'date','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:36'),
	(341,133,'pidunit','发证机关',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:36'),
	(342,133,'higdegree','最高学位',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:36'),
	(343,133,'health','健康状况',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:36'),
	(344,133,'domloction','户籍所在地',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:36'),
	(345,133,'salaryway','工资发放形式',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:36'),
	(346,133,'familycount','家庭人口数量',120,'int','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:36'),
	(347,133,'buyhouseamount','购房金额',120,'int','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:36'),
	(348,133,'fristpayratio','首付比例',120,'int','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:36'),
	(349,133,'loanproduct','贷款产品',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:36'),
	(350,133,'applyamount','申请金额',120,'double','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:36'),
	(351,133,'homestatus','置业状况',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:36'),
	(352,133,'marriagestatus','婚姻状态',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:36'),
	(353,133,'familyaddress','家庭地址',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:36'),
	(354,133,'job','职业',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:36'),
	(355,133,'gunitname','单位名称-工薪',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:36'),
	(356,133,'gunitnature','单位性质-工薪',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:36'),
	(357,133,'gjoblevel','工作级别-工薪',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:36'),
	(358,133,'gmonincome','月收入-工薪',120,'int','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:36'),
	(359,133,'gworklife','工作年限-工薪',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:36'),
	(360,133,'gsalaryway','工作发放形式-工薪',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:36'),
	(361,133,'zcompanyname','企业名-自雇',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:36'),
	(362,133,'zindustrytype','行业类型-自雇',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:36'),
	(363,133,'zmonincome','月收入—自雇',120,'int','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:36'),
	(364,133,'zyearbus','年营业额-自雇',120,'int','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:36'),
	(365,133,'zenterpfund','企业资产-自雇',120,'int','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:36'),
	(366,133,'zenterploan','企业借款-自雇',120,'int','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:36'),
	(367,133,'zmanageplace','经营场所-自雇',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:36'),
	(368,133,'zsharesratio','占股比例-自雇',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:36'),
	(369,133,'age','年龄',120,'int','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:37'),
	(370,133,'bankaccount','用户银行账户',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:37'),
	(371,133,'creditlimit','信用卡最高额度',120,'int','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:37'),
	(372,133,'creditconsume','信用卡已消费',120,'int','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:37'),
	(373,133,'otherloan','其他贷款',120,'int','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:37'),
	(374,133,'contname','紧急联系人姓名',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:37'),
	(375,133,'contage','紧急联系人年龄',120,'int','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:37'),
	(376,133,'contsex','紧急联系人性别',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:37'),
	(377,133,'contrelation','紧急联系人关系',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:37'),
	(378,133,'contloan','经济联系人是否知晓贷款',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:37'),
	(379,133,'contmobile','紧急联系人电话',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:37'),
	(380,133,'contphone','紧急联系人住宅电话',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:37'),
	(381,133,'contaddress','紧急联系人地址',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:37'),
	(382,133,'contunitname','紧急联系人单位名称',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:37'),
	(383,133,'contunitphone','紧急联系人单位电话',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:37'),
	(384,133,'contunitaddress','紧急联系人单位地址',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:37'),
	(385,133,'contworkdep','紧急联系人工作部门',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:37'),
	(386,133,'contposition','紧急联系人工作职位',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:37'),
	(387,133,'adid','adid',120,'int','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:37'),
	(388,133,'ctime','ctime',120,'datetime','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:37'),
	(389,133,'aname','aname',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:37'),
	(390,133,'creditNumber','creditNumber',120,'int','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:37'),
	(391,133,'zenterpborrow','zenterpborrow',120,'double','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:37'),
	(392,133,'creditLoanMoney','creditLoanMoney',120,'double','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:37'),
	(393,133,'relations','relations',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:37'),
	(394,133,'xsid','xsid',120,'int','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:37'),
	(395,133,'xsname','xsname',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:37'),
	(396,133,'gunitaddress','gunitaddress',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:37'),
	(397,133,'zcompanyaddress','zcompanyaddress',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:37'),
	(398,133,'loantimelimit','loantimelimit',120,'int','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:37'),
	(399,133,'fund','fund',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:37'),
	(400,133,'fundname','fundname',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:37'),
	(401,133,'examindate','报审时间',120,'date','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:37'),
	(402,133,'fkid','fkid',120,'int','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:37'),
	(403,133,'personPath','personPath',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:37'),
	(404,133,'period','period',120,'int','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:37'),
	(405,133,'repay','repay',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:37'),
	(406,133,'signstatus','签约状态',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:37'),
	(407,133,'signtime','签约时间',120,'date','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:37'),
	(408,133,'loanstatus','放款状态',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:37'),
	(409,133,'loantime','放款时间',120,'date','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:37'),
	(410,133,'recviway','还款方式1 pos机器 2现金  3转账  4其他',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:37'),
	(411,133,'posamount','放款金额',120,'int','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:37'),
	(412,133,'postime','pos刷卡时间',120,'date','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:38'),
	(413,133,'cashamount','现金金额',120,'int','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:38'),
	(414,133,'cashtime','现金付款时间',120,'date','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:38'),
	(415,133,'transferamount','转账金额',120,'int','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:38'),
	(416,133,'transfertime','转账时间',120,'date','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:38'),
	(417,133,'otheramount','加他付款方式',120,'int','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:38'),
	(418,133,'othertime','othertime',120,'date','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:38'),
	(419,133,'urgentlevel','紧急程度',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:38'),
	(420,133,'applyloandate','申请放款时间',120,'date','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:38'),
	(421,133,'accountbranch','开户支行',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:38'),
	(422,133,'loanbankaccount','还款银行卡号',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:38'),
	(423,133,'houseConsultant','职业顾问',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:38'),
	(424,133,'consultantphone','顾问号码',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:38'),
	(425,133,'refundamount','退款金额',120,'int','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:38'),
	(426,133,'refundtime','退款时间',120,'date','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:38'),
	(427,133,'loanMoney','loanMoney',120,'double','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:38'),
	(428,133,'creditLevel','信用卡等级',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:38'),
	(429,133,'buyhouseaddress','客户新买房新地址',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:38'),
	(430,133,'gjrelation','共借人关系',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:38'),
	(431,133,'approvalopinion','审批意见',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:38'),
	(432,133,'archstatus','资料归档情况',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:38'),
	(433,133,'archtime','资料归档时间',120,'date','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:38'),
	(434,133,'archremark','资料归档备注',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:38'),
	(435,133,'mortgagestatus','按揭情况',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:38'),
	(436,133,'mortgageremark','按揭备注',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:38'),
	(437,133,'repaystatus','还款情况',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:38'),
	(438,133,'overduecount','逾期次数',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:38'),
	(439,133,'overfueremark','逾期记录',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:38'),
	(440,133,'cheLoanMoney','cheLoanMoney',120,'int','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:38'),
	(441,133,'houseLoanMoney','houseLoanMoney',120,'int','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-08 17:53:38'),
	(442,134,'id','id',120,'int','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-11 11:52:59'),
	(443,134,'name','类型名称',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-11 11:52:59'),
	(444,134,'createuser','创建人',120,'int','easyui-textbox',0,1,0,0,0,1,'',0,1,'2016-01-11 11:52:59'),
	(445,134,'createtime','创建时间',130,'timestamp','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-11 11:52:59'),
	(446,134,'lastupateuser','最后更新人',120,'int','easyui-textbox',0,1,0,0,0,1,'',0,1,'2016-01-11 11:52:59'),
	(447,134,'lastupdatetime','最后更新时间',120,'datetime','easyui-textbox',0,1,0,0,0,1,'',0,1,'2016-01-11 11:52:59'),
	(453,135,'id','id',120,'int','easyui-textbox',1,1,1,1,0,1,'',1,1,'2016-01-11 11:53:07'),
	(454,135,'riskgradeid','类型',100,'int','easyui-textbox',1,1,1,1,1,1,'select a.id, a.name from riskgrade a',2,1,'2016-01-11 11:53:07'),
	(455,135,'level','等级',60,'varchar','easyui-textbox',1,1,1,1,0,1,'',3,1,'2016-01-11 11:53:07'),
	(456,135,'comment','含义',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',6,1,'2016-01-11 11:53:07'),
	(457,135,'startrange','分值开始',80,'int','easyui-textbox',1,1,1,1,0,1,'',4,1,'2016-01-11 11:53:07'),
	(458,135,'endrange','分值结束',80,'int','easyui-textbox',1,1,1,1,0,1,'',5,1,'2016-01-11 11:53:07'),
	(459,135,'createtime','创建时间',120,'timestamp','easyui-textbox',0,1,0,0,0,1,'',0,1,'2016-01-11 11:53:07'),
	(460,136,'id','id',120,'int','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-11 14:53:02'),
	(461,136,'menu_id','所属菜单',120,'int','easyui-textbox',1,1,1,1,1,1,'select * from (select id, menu_name from sys_menu order by order_num) a',0,1,'2016-01-11 14:53:02'),
	(462,136,'btn_name','按钮名称',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-11 14:53:02'),
	(463,136,'class_name','页面class名称',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-11 14:53:02'),
	(464,136,'method_name','后台method名称',120,'char','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-11 14:53:02'),
	(465,136,'icon','图标',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-11 14:53:03'),
	(466,136,'order_num','顺序',120,'int','easyui-textbox',0,1,1,1,0,1,'',0,1,'2016-01-11 14:53:03'),
	(467,136,'create_time','创建时间',120,'timestamp','easyui-textbox',0,1,0,0,0,1,'',0,1,'2016-01-11 14:53:03'),
	(468,137,'id','id',120,'int','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-12 16:58:48'),
	(469,137,'head_id','所属表单',100,'int','easyui-textbox',1,1,1,1,1,1,'select id, form_name from zcurd_head',0,1,'2016-01-12 16:58:48'),
	(470,137,'btn_name','按钮名称',80,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-12 16:58:48'),
	(471,137,'location','按钮位置',80,'int','easyui-textbox',1,1,1,1,0,1,'select 1, \'顶部\' union all select 2, \'行内\'',0,1,'2016-01-12 16:58:48'),
	(472,137,'action','行为',80,'int','easyui-textbox',1,1,1,1,0,1,'select 0, \'自定义\' union all select 1, \'打开子页面\'',0,1,'2016-01-12 16:58:48'),
	(473,137,'func_content','方法内容',120,'text','easyui-textbox',0,1,1,1,0,1,'',0,1,'2016-01-12 16:58:48'),
	(474,137,'create_time','创建时间',130,'timestamp','easyui-textbox',1,1,0,0,0,1,'',0,1,'2016-01-12 16:58:48'),
	(475,138,'id','id',120,'int','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-13 10:35:01'),
	(476,138,'head_id','所属表单',120,'int','easyui-textbox',1,1,1,1,1,0,'select id, form_name from zcurd_head',0,1,'2016-01-13 10:35:01'),
	(477,138,'page','页面',120,'varchar','easyui-textbox',1,1,1,1,0,0,'',0,1,'2016-01-13 10:35:01'),
	(478,138,'js_content','js内容',120,'text','easyui-textbox',0,1,1,1,0,0,'',0,1,'2016-01-13 10:35:01'),
	(479,138,'create_time','创建时间',130,'timestamp','easyui-textbox',1,1,0,0,0,1,'',0,1,'2016-01-13 10:35:01'),
	(513,144,'id','id',120,'int','easyui-textbox',0,1,0,1,0,0,'',0,1,'2016-01-23 01:19:21'),
	(514,144,'title','标题',120,'varchar','easyui-textbox',1,1,1,1,0,0,'',0,1,'2016-01-23 01:19:21'),
	(515,144,'content','内容',120,'mediumtext','easyui-textbox',1,1,1,1,0,0,'',0,1,'2016-01-23 01:19:21'),
	(516,145,'id','id',120,'int','easyui-textbox',1,1,0,0,0,0,'',0,1,'2016-01-23 01:19:27'),
	(517,145,'field','字段名',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-23 01:19:27'),
	(518,145,'field_value','字段值',120,'varchar','easyui-textbox',1,1,1,1,1,1,'',0,1,'2016-01-23 01:19:27'),
	(519,145,'cid','客户',120,'varchar','easyui-numberspinner',1,1,1,1,1,1,'',0,1,'2016-01-23 01:19:27'),
	(527,147,'id','id',120,'int','easyui-textbox',1,1,1,1,0,0,'',0,1,'2016-01-30 11:30:26'),
	(528,147,'menu_name','菜单名称',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-30 11:30:26'),
	(529,147,'menu_url','菜单地址',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-30 11:30:26'),
	(530,147,'parent_id','所属菜单',120,'int','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-30 11:30:26'),
	(531,147,'icon','图标',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-01-30 11:30:26'),
	(532,147,'order_num','顺序',120,'int','easyui-numberspinner',1,1,1,1,0,0,'',0,1,'2016-01-30 11:30:26'),
	(533,147,'create_time','创建时间',120,'timestamp','easyui-datetimebox',1,1,1,1,0,0,'',0,1,'2016-01-30 11:30:26'),
	(534,148,'id','id',120,'int','easyui-numberspinner',1,1,1,1,0,0,NULL,0,1,'2016-02-12 20:58:39'),
	(535,148,'role_name','角色名称',120,'varchar','easyui-textbox',1,1,1,1,0,1,NULL,0,1,'2016-02-12 20:58:39'),
	(536,148,'create_time','创建时间',120,'timestamp','easyui-datebox',1,1,1,1,0,1,NULL,0,1,'2016-02-12 20:58:39'),
	(537,149,'id','id',120,'int','easyui-numberspinner',1,1,1,1,0,0,'',0,1,'2016-02-15 11:35:39'),
	(538,149,'role_id','角色id',120,'int','easyui-numberspinner',1,1,1,1,0,1,'',0,1,'2016-02-15 11:35:39'),
	(539,149,'btn_id','按钮id',120,'int','easyui-numberspinner',1,1,1,1,0,1,'',0,1,'2016-02-15 11:35:39'),
	(540,149,'create_time','创建时间',120,'timestamp','easyui-datebox',1,1,1,1,0,1,'',0,1,'2016-02-15 11:35:39'),
	(541,150,'id','id',120,'int','easyui-numberspinner',1,1,1,1,0,0,'',0,1,'2016-02-15 11:35:56'),
	(542,150,'menu_id','所属菜单',100,'int','easyui-combobox',1,1,1,1,1,0,'select id, menu_name from sys_menu',0,1,'2016-02-15 11:35:56'),
	(543,150,'btn_name','按钮名称',100,'varchar','easyui-textbox',1,1,1,1,0,0,'',0,1,'2016-02-15 11:35:56'),
	(544,150,'class_name','页面class名称',100,'varchar','easyui-textbox',1,1,1,1,0,0,'',0,1,'2016-02-15 11:35:56'),
	(545,150,'method_name','后台method名称',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-02-15 11:35:56'),
	(546,150,'create_time','创建时间',120,'timestamp','easyui-datebox',0,0,0,0,0,0,'',0,1,'2016-02-15 11:35:56'),
	(547,151,'id','id',120,'int','easyui-numberspinner',1,1,1,1,0,0,'',0,1,'2016-02-15 15:08:47'),
	(548,151,'role_id','角色',120,'int','easyui-numberspinner',1,1,1,1,0,1,'',0,1,'2016-02-15 15:08:47'),
	(549,151,'menu_id','菜单',120,'int','easyui-numberspinner',1,1,1,1,0,1,'',0,1,'2016-02-15 15:08:47'),
	(550,151,'create_time','创建时间',120,'timestamp','easyui-datebox',1,1,1,1,0,1,'',0,1,'2016-02-15 15:08:47'),
	(551,131,'roles','角色',120,'varchar','easyui-combobox',1,1,1,1,0,1,'select id, role_name from sys_role',4,1,'2016-02-23 23:31:08'),
	(552,152,'id','id',120,'int','easyui-numberspinner',1,1,1,1,0,0,'',1,1,'2016-02-26 18:55:58'),
	(553,152,'menu_id','菜单',100,'int','easyui-combobox',1,1,1,1,1,0,'select id, menu_name from sys_menu',2,1,'2016-02-26 18:55:58'),
	(554,152,'field_name','字段名称',100,'varchar','easyui-textbox',1,1,1,1,0,0,'',3,1,'2016-02-26 18:55:58'),
	(555,152,'value','字段件值',80,'varchar','easyui-textbox',1,1,1,1,0,0,'',5,1,'2016-02-26 18:55:58'),
	(556,152,'create_time','创建时间',120,'timestamp','easyui-datebox',0,0,0,0,0,0,'',6,1,'2016-02-26 18:55:58'),
	(557,153,'id','id',120,'int','easyui-numberspinner',1,1,1,1,0,0,NULL,0,1,'2016-02-28 22:00:03'),
	(558,153,'role_id','角色',120,'int','easyui-numberspinner',1,1,1,1,0,0,NULL,0,1,'2016-02-28 22:00:03'),
	(559,153,'datarule_id','数据规则',120,'int','easyui-numberspinner',1,1,1,1,0,0,NULL,0,1,'2016-02-28 22:00:03'),
	(560,153,'create_time','创建时间',120,'timestamp','easyui-datebox',1,1,1,1,0,1,NULL,0,1,'2016-02-28 22:00:03'),
	(561,152,'symbol','符号',80,'varchar','easyui-combobox',1,1,1,1,0,0,'select dict_key, dict_value from sys_dict',4,1,'2016-02-28 22:20:56'),
	(562,154,'id','id',120,'int','easyui-numberspinner',1,1,1,1,0,0,'',0,1,'2016-03-01 23:39:14'),
	(563,154,'dict_type','类型',120,'varchar','easyui-textbox',1,1,1,1,1,0,'',0,1,'2016-03-01 23:39:14'),
	(564,154,'dict_key','键',120,'varchar','easyui-textbox',1,1,1,1,1,0,'',0,1,'2016-03-01 23:39:14'),
	(565,154,'dict_value','值',120,'varchar','easyui-textbox',1,1,1,1,1,0,'',0,1,'2016-03-01 23:39:14'),
	(566,154,'create_time','创建时间',120,'timestamp','easyui-datebox',1,1,0,0,1,0,'',0,2,'2016-03-01 23:39:14'),
	(567,155,'id','id',120,'int','easyui-numberspinner',1,1,1,1,0,0,NULL,0,1,'2016-03-13 16:10:43'),
	(568,155,'proc_name','过程名称',120,'varchar','easyui-textbox',1,1,1,1,0,1,NULL,0,1,'2016-03-13 16:10:43'),
	(569,155,'statu','状态',120,'varchar','easyui-textbox',1,1,1,1,0,1,NULL,0,1,'2016-03-13 16:10:43'),
	(570,155,'start_time','开始时间',120,'datetime','easyui-datebox',1,1,1,1,0,1,NULL,0,1,'2016-03-13 16:10:43'),
	(571,155,'end_time','结束时间',120,'datetime','easyui-datebox',1,1,1,1,0,1,NULL,0,1,'2016-03-13 16:10:43'),
	(572,155,'cost_time','耗时',120,'int','easyui-numberspinner',1,1,1,1,0,1,NULL,0,1,'2016-03-13 16:10:43'),
	(573,155,'error_code','error_code',120,'varchar','easyui-textbox',1,1,1,1,0,1,NULL,0,1,'2016-03-13 16:10:43'),
	(574,155,'error_msg','error_msg',120,'varchar','easyui-textbox',1,1,1,1,0,1,NULL,0,1,'2016-03-13 16:10:43'),
	(575,155,'step','step',120,'int','easyui-numberspinner',1,1,1,1,0,1,NULL,0,1,'2016-03-13 16:10:43'),
	(576,156,'id','id',120,'int','easyui-numberspinner',1,1,1,1,0,0,NULL,0,1,'2016-03-16 09:40:26'),
	(577,156,'airpurifier_id','标识',120,'bigint','easyui-numberspinner',1,1,1,1,0,0,NULL,0,1,'2016-03-16 09:40:26'),
	(578,156,'user_id','用户标识',120,'int','easyui-numberspinner',1,1,1,1,0,0,NULL,0,1,'2016-03-16 09:40:26'),
	(579,156,'status','状态（0-未下发，1-正在下发，2-已下发）',120,'tinyint','easyui-numberspinner',1,1,1,1,0,0,NULL,0,1,'2016-03-16 09:40:26'),
	(580,156,'switch_mode','开关（1-开，2-关）',120,'tinyint','easyui-numberspinner',1,1,1,1,0,0,NULL,0,1,'2016-03-16 09:40:26'),
	(581,156,'mode','模式（1-自动模式，2-手动模式，3-睡眠模式）',120,'tinyint','easyui-numberspinner',1,1,1,1,0,0,NULL,0,1,'2016-03-16 09:40:26'),
	(582,156,'uv','紫外线（1-关，2-开）',120,'tinyint','easyui-numberspinner',1,1,1,1,0,0,NULL,0,1,'2016-03-16 09:40:26'),
	(583,156,'ionizer','负离子（1-关，2-开）',120,'tinyint','easyui-numberspinner',1,1,1,1,0,0,NULL,0,1,'2016-03-16 09:40:26'),
	(584,156,'ozone','臭氧（1-关，2-开）',120,'tinyint','easyui-numberspinner',1,1,1,1,0,0,NULL,0,1,'2016-03-16 09:40:26'),
	(585,156,'child_lock','儿童锁（1-关，2-开）',120,'tinyint','easyui-numberspinner',1,1,1,1,0,0,NULL,0,1,'2016-03-16 09:40:26'),
	(586,156,'wind','风量（1，2，3，4）档',120,'tinyint','easyui-numberspinner',1,1,1,1,0,0,NULL,0,1,'2016-03-16 09:40:26'),
	(587,156,'timing','定时（1小时，2小时，4小时，8小时）',120,'tinyint','easyui-numberspinner',1,1,1,1,0,0,NULL,0,1,'2016-03-16 09:40:26'),
	(588,156,'wifi','WiFi控制（1-无效，16-有效）',120,'tinyint','easyui-numberspinner',1,1,1,1,0,0,NULL,0,1,'2016-03-16 09:40:26'),
	(589,156,'filter','过滤网（1-不复位，16-复位）',120,'tinyint','easyui-numberspinner',1,1,1,1,0,0,NULL,0,1,'2016-03-16 09:40:26'),
	(590,156,'source','配置来源(1-设备，2-WEB，3-IOS，4-Android，5、WP)',120,'tinyint','easyui-numberspinner',1,1,1,1,0,0,NULL,0,1,'2016-03-16 09:40:26'),
	(591,156,'update_time','配置修改时间',120,'datetime','easyui-datebox',1,1,1,1,0,0,NULL,0,1,'2016-03-16 09:40:26'),
	(592,156,'update_flag','修改标记',120,'int','easyui-numberspinner',1,1,1,1,0,0,NULL,0,1,'2016-03-16 09:40:26'),
	(593,157,'id','id',120,'int','easyui-numberspinner',1,1,1,1,0,0,NULL,0,1,'2016-03-16 09:43:54'),
	(594,157,'dt','日期',120,'date','easyui-datebox',1,1,1,1,0,1,NULL,0,1,'2016-03-16 09:43:54'),
	(595,157,'dev_id','设备id',120,'int','easyui-numberspinner',1,1,1,1,0,1,NULL,0,1,'2016-03-16 09:43:54'),
	(596,157,'city','城市',120,'varchar','easyui-textbox',1,1,1,1,0,1,NULL,0,1,'2016-03-16 09:43:54'),
	(597,158,'id','id',120,'int','easyui-numberspinner',1,1,1,1,0,0,NULL,0,1,'2016-03-16 20:13:07'),
	(598,158,'status','状态',120,'int','easyui-numberspinner',1,1,1,1,0,0,NULL,0,1,'2016-03-16 20:13:07'),
	(599,158,'login_id','登录账户',120,'varchar','easyui-textbox',1,1,1,1,0,0,NULL,0,1,'2016-03-16 20:13:07'),
	(600,158,'login_pwd','录登密码',120,'varchar','easyui-textbox',1,1,1,1,0,1,NULL,0,1,'2016-03-16 20:13:07'),
	(601,158,'nickname','昵称',120,'varchar','easyui-textbox',1,1,1,1,0,1,NULL,0,1,'2016-03-16 20:13:07'),
	(602,158,'reg_time','注册时间',120,'timestamp','easyui-datebox',1,1,1,1,0,1,NULL,0,1,'2016-03-16 20:13:07'),
	(603,158,'info','备注',120,'varchar','easyui-textbox',1,1,1,1,0,1,NULL,0,1,'2016-03-16 20:13:07'),
	(604,159,'id','id',120,'int','easyui-numberspinner',1,1,1,1,0,0,'',0,1,'2016-03-16 20:14:41'),
	(605,159,'dt','日期',120,'date','easyui-datebox',1,1,1,1,1,1,'',0,2,'2016-03-16 20:14:41'),
	(606,159,'func','功能',120,'int','easyui-numberspinner',1,1,1,1,1,1,'',0,1,'2016-03-16 20:14:41'),
	(607,159,'active_dev','在线/活跃设备',120,'int','easyui-numberspinner',1,1,1,1,0,1,'',0,1,'2016-03-16 20:14:41'),
	(608,159,'active_user','在线/活跃用户',120,'int','easyui-numberspinner',1,1,1,1,0,1,'',0,1,'2016-03-16 20:14:41'),
	(609,159,'use_count_total','累计使用次数',120,'int','easyui-numberspinner',1,1,1,1,0,1,'',0,1,'2016-03-16 20:14:41'),
	(610,159,'use_time_total','累计工作时间',120,'int','easyui-numberspinner',1,1,1,1,0,1,'',0,1,'2016-03-16 20:14:41'),
	(611,159,'use_count_avg','人均使用次数',120,'int','easyui-numberspinner',1,1,1,1,0,1,'',0,1,'2016-03-16 20:14:41'),
	(612,159,'use_time_ave','人均工作时间',120,'int','easyui-numberspinner',1,1,1,1,0,1,'',0,1,'2016-03-16 20:14:41'),
	(613,159,'city','城市',120,'varchar','easyui-textbox',1,1,1,1,0,1,'',0,1,'2016-03-16 20:14:41');

/*!40000 ALTER TABLE `zcurd_field` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
