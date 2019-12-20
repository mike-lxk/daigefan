/*
Navicat MySQL Data Transfer

Source Server         : 测试服务器
Source Server Version : 50726
Source Host           : 106.52.176.205:3306
Source Database       : fun_wechat

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2019-12-19 09:51:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for fun_rider_income_expend
-- ----------------------------
DROP TABLE IF EXISTS `fun_rider_income_expend`;
CREATE TABLE `fun_rider_income_expend` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rider_id` smallint(4) NOT NULL COMMENT '骑手表主键值',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '商家名称 or 提现',
  `current_money` decimal(10,2) NOT NULL COMMENT '每笔收入/提现的金额',
  `type` tinyint(1) NOT NULL COMMENT '状态（1收入 2提现）',
  `serial_number` varchar(30) NOT NULL COMMENT '收入时：订单编号 支出时：提现编号',
  `add_time` int(10) NOT NULL COMMENT '记录时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态（1审核中2审核失败3提现成功）',
  `payment_time` int(10) NOT NULL DEFAULT '0' COMMENT '企业打款给用户的时间',
  `remark` varchar(32) DEFAULT '' COMMENT '审核不通过集合',
  PRIMARY KEY (`id`),
  KEY `rider_income_exp` (`rider_id`) USING BTREE,
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COMMENT='骑手收支明细表';

-- ----------------------------
-- Records of fun_rider_income_expend
-- ----------------------------
INSERT INTO `fun_rider_income_expend` VALUES ('1', '72', '阳光餐厅', '0.20', '1', 'D191216667229125834', '1576467445', '0', '0', '');
INSERT INTO `fun_rider_income_expend` VALUES ('2', '72', '阳光餐厅', '0.20', '1', 'D191216677794556855', '1576467798', '0', '0', '');
INSERT INTO `fun_rider_income_expend` VALUES ('3', '72', '阳光餐厅', '0.20', '1', 'D191216685206765281', '1576468542', '0', '0', '');
INSERT INTO `fun_rider_income_expend` VALUES ('4', '72', '阳光餐厅', '0.20', '1', 'D191216748609079424', '1576474898', '0', '0', '');
INSERT INTO `fun_rider_income_expend` VALUES ('5', '72', '阳光餐厅', '0.20', '1', 'D191216756654293636', '1576475682', '0', '0', '');
INSERT INTO `fun_rider_income_expend` VALUES ('6', '72', '阳光餐厅', '0.20', '1', 'D191216767083813237', '1576476743', '0', '0', '');
INSERT INTO `fun_rider_income_expend` VALUES ('7', '72', '阳光餐厅', '0.20', '1', 'D191216793298349212', '1576479385', '0', '0', '');
INSERT INTO `fun_rider_income_expend` VALUES ('8', '72', '阳光餐厅', '0.20', '1', 'D191216799239079748', '1576480566', '0', '0', '');
INSERT INTO `fun_rider_income_expend` VALUES ('9', '72', '阳光餐厅', '8.90', '1', 'D191216805379591633', '1576480571', '0', '0', '');
INSERT INTO `fun_rider_income_expend` VALUES ('10', '72', '阳光餐厅', '0.20', '1', 'D191216832615999919', '1576484421', '0', '0', '');
INSERT INTO `fun_rider_income_expend` VALUES ('11', '72', '提现', '10.50', '2', 'TX191216844337744882', '1576484433', '3', '1576484453', '');
INSERT INTO `fun_rider_income_expend` VALUES ('12', '78', '阳光餐厅', '8.90', '1', 'D191216831796056457', '1576484916', '0', '0', '');
INSERT INTO `fun_rider_income_expend` VALUES ('13', '78', '阳光餐厅', '0.20', '1', 'D191216842175308766', '1576545214', '0', '0', '');
INSERT INTO `fun_rider_income_expend` VALUES ('14', '78', '阳光餐厅', '0.20', '1', 'D191216833435755040', '1576545266', '0', '0', '');
INSERT INTO `fun_rider_income_expend` VALUES ('15', '72', '阳光餐厅', '0.20', '1', 'D191216845963165561', '1576547277', '0', '0', '');
INSERT INTO `fun_rider_income_expend` VALUES ('16', '72', '阳光餐厅', '0.20', '1', 'D191217468342634141', '1576547280', '0', '0', '');
INSERT INTO `fun_rider_income_expend` VALUES ('17', '72', '阳光餐厅', '0.20', '1', 'D191217480070663199', '1576561571', '0', '0', '');
INSERT INTO `fun_rider_income_expend` VALUES ('18', '78', '阳光餐厅', '0.20', '1', 'D191217468470120635', '1576561726', '0', '0', '');
INSERT INTO `fun_rider_income_expend` VALUES ('19', '78', '阳光餐厅', '0.20', '1', 'D191216832752202301', '1576561728', '0', '0', '');
INSERT INTO `fun_rider_income_expend` VALUES ('20', '72', '阳光餐厅', '0.20', '1', 'D191217478546975886', '1576561765', '0', '0', '');
INSERT INTO `fun_rider_income_expend` VALUES ('21', '72', '阳光餐厅', '0.20', '1', 'D191217474355819837', '1576561769', '0', '0', '');
INSERT INTO `fun_rider_income_expend` VALUES ('22', '72', '阳光餐厅', '0.20', '1', 'D191217641756339008', '1576564507', '0', '0', '');
INSERT INTO `fun_rider_income_expend` VALUES ('23', '72', '阳光餐厅', '0.20', '1', 'D191217638572436193', '1576564514', '0', '0', '');
INSERT INTO `fun_rider_income_expend` VALUES ('24', '78', '提现', '1.00', '2', 'TX191217651271605050', '1576565127', '3', '1576565170', '');
INSERT INTO `fun_rider_income_expend` VALUES ('25', '72', '阳光餐厅', '0.20', '1', 'D191217648463521142', '1576565340', '0', '0', '');
INSERT INTO `fun_rider_income_expend` VALUES ('26', '72', '阳光餐厅', '0.20', '1', 'D191217660073696901', '1576566352', '0', '0', '');
INSERT INTO `fun_rider_income_expend` VALUES ('27', '72', '阳光餐厅', '0.20', '1', 'D191217662478134863', '1576566357', '0', '0', '');
INSERT INTO `fun_rider_income_expend` VALUES ('28', '72', '阳光餐厅', '0.20', '1', 'D191217665361191085', '1576566560', '0', '0', '');
INSERT INTO `fun_rider_income_expend` VALUES ('29', '72', '阳光餐厅', '0.20', '1', 'D191217704302377434', '1576570456', '0', '0', '');
INSERT INTO `fun_rider_income_expend` VALUES ('30', '72', '阳光餐厅', '0.20', '1', 'D191217768222756109', '1576576902', '0', '0', '');
INSERT INTO `fun_rider_income_expend` VALUES ('31', '72', '阳光餐厅', '0.20', '1', 'D191217764916122382', '1576576908', '0', '0', '');
INSERT INTO `fun_rider_income_expend` VALUES ('32', '72', '阳光餐厅', '0.20', '1', 'D191217708129581132', '1576576913', '0', '0', '');
INSERT INTO `fun_rider_income_expend` VALUES ('33', '72', '阳光餐厅', '0.20', '1', 'D191217805984585735', '1576580835', '0', '0', '');
INSERT INTO `fun_rider_income_expend` VALUES ('34', '72', '阳光餐厅', '0.20', '1', 'D191217815638223710', '1576582106', '0', '0', '');
INSERT INTO `fun_rider_income_expend` VALUES ('35', '72', '阳光餐厅', '0.20', '1', 'D191217815748341446', '1576582107', '0', '0', '');
