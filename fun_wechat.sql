/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : fun_wechat

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-12-18 09:43:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for fun_adverts
-- ----------------------------
DROP TABLE IF EXISTS `fun_adverts`;
CREATE TABLE `fun_adverts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键值',
  `advert_position_id` int(10) NOT NULL DEFAULT '0' COMMENT '广告位表的主键值',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '广告名称',
  `coverage` smallint(4) NOT NULL DEFAULT '0' COMMENT '覆盖范围',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '广告指向1：商家广告，2：外链广告，3：静态图',
  `link_url` varchar(200) NOT NULL DEFAULT '' COMMENT '链接',
  `start_time` int(10) NOT NULL DEFAULT '0' COMMENT '广告开始时间',
  `end_time` int(10) NOT NULL DEFAULT '0' COMMENT '广告结束时间',
  `imgurl` varchar(255) NOT NULL DEFAULT '' COMMENT '广告位轮播图',
  `add_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=暂未投放， 1=投放中, 2=暂停投放，3=已过期',
  `sort` tinyint(1) NOT NULL DEFAULT '1' COMMENT '位置排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='广告详情表';

-- ----------------------------
-- Records of fun_adverts
-- ----------------------------
INSERT INTO `fun_adverts` VALUES ('3', '1', '商家入驻', '0', '2', '/pages/enter/enter', '1575388800', '1576944000', 'http://picture.daigefan.com/cb7f8201909102103054615.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '1565256039', '1', '4');
INSERT INTO `fun_adverts` VALUES ('4', '1', '饭点送', '0', '3', '', '1565193600', '1575734400', 'http://picture.daigefan.com/984c6201909101936589755.jpg', '1565256161', '1', '2');
INSERT INTO `fun_adverts` VALUES ('5', '1', '骑手入驻', '0', '2', '/pages/bannerpage/bannerpage/1', '1565193600', '1575734400', 'http://picture.daigefan.com/2d645201909101934469599.jpg', '1565256195', '1', '3');
INSERT INTO `fun_adverts` VALUES ('6', '1', '新人入驻', '0', '3', '', '1565133600', '1565193600', 'http://picture.daigefan.com/99cf7201909102056548511.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '1565256261', '2', '1');
INSERT INTO `fun_adverts` VALUES ('7', '2', '南信院专属商家1212', '12', '3', '1212', '1567008000', '1577808000', 'http://picture.daigefan.com/fb49b201908231712063410.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '1565320776', '2', '11');
INSERT INTO `fun_adverts` VALUES ('10', '2', '舜禹大厦专属商家2', '13', '2', '9', '1565193600', '1575734400', 'http://picture.daigefan.com/6afd9201908091123302168.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '1565321040', '1', '2');
INSERT INTO `fun_adverts` VALUES ('11', '2', '嗯嗯嗯', '12', '1', '/pages/index/index', '1575734400', '1576771200', '/uploads/2019-12/5de8695eec174.png', '0', '0', '100');
INSERT INTO `fun_adverts` VALUES ('12', '2', 'SDS', '12', '1', 'SSS', '1576598400', '1577116800', '/uploads/2019-12/5de86aef59952.jpg', '0', '0', '100');
INSERT INTO `fun_adverts` VALUES ('13', '1', '七牛云图片上传', '13', '3', '0', '1575907200', '1577289600', 'http://picture.daigefan.com/fb3ff10d937486f95a72b102aa09e3a8.jpg', '0', '1', '100');
INSERT INTO `fun_adverts` VALUES ('14', '1', 'qqq', '12', '1', 'qqqq', '1575475200', '1576598400', 'http://picture.daigefan.com/dgf/advert_51c4e50cd8b8642d1772f1b5af1ce71c.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '0', '1', '100');

-- ----------------------------
-- Table structure for fun_advert_positions
-- ----------------------------
DROP TABLE IF EXISTS `fun_advert_positions`;
CREATE TABLE `fun_advert_positions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '广告位名称',
  `white` varchar(30) NOT NULL DEFAULT '' COMMENT '广告图宽度',
  `height` varchar(30) NOT NULL DEFAULT '' COMMENT '广告图高度',
  `num` tinyint(1) NOT NULL DEFAULT '0' COMMENT '广告位数量',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 正常投放 0禁止投放',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='广告位表';

-- ----------------------------
-- Records of fun_advert_positions
-- ----------------------------
INSERT INTO `fun_advert_positions` VALUES ('1', '测试广告位1', '100', '50', '10', '1');
INSERT INTO `fun_advert_positions` VALUES ('2', '测试广告位2', '200', '100', '20', '1');

-- ----------------------------
-- Table structure for fun_agreements
-- ----------------------------
DROP TABLE IF EXISTS `fun_agreements`;
CREATE TABLE `fun_agreements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL DEFAULT '' COMMENT '图文协议标题',
  `content` text NOT NULL COMMENT '内容',
  `platfrom` tinyint(1) NOT NULL DEFAULT '1' COMMENT '位置（1用户端、2商家端、3骑手端）',
  `save_time` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='图文协议表';

-- ----------------------------
-- Records of fun_agreements
-- ----------------------------
INSERT INTO `fun_agreements` VALUES ('3', '商家协议', '<p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">为了更好地为商家服务以及保障消费者权益，甲乙双方本着甲、乙双方本着平等合作、互惠互利的原则，在符合相关法律法规，不违反市场竞争的情况下，甲方须遵循乙方的运营管理规范，经友好协商，甲乙双方签署以下入驻协议。</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">一、合作内容</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">1</span><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">、乙方在甲方app平台发布乙方餐品的购买基本信息，甲方提供app平台，供乙方发布其餐厅的商品信息。</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">2</span><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">、本协议自甲方餐品在乙方饭点送平台上线之日起生效。</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">二、甲方权利与义务</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">1</span><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">、甲方为乙方提供app平台的网络宣传。</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">2</span><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">、甲方为乙方在消费群体中做相关宣传介绍并进行相关推广，以提升乙方的知名度。</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">3</span><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">、如乙方提供餐品出现任何食品安全事故，甲方有权随时告知解除本合同，并操作乙方餐品下线，乙方因食品安全事故所带来的损失，甲方不负任何责任。</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">4</span><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">、乙方一旦注册成功，成为本站的合法用户，将得到一个密码和用户名。您可随时根据指示改变您的密码。乙方将对用户名和密码安全负全部责任。另外，每个用户都要对以其用户名进行的所有活动和事件负全责。乙方若发现任何非法使用用户帐户或存在安全漏洞的情况，请立即通告甲方。</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">5</span><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">、甲方不对用户所发布信息的删除或储存失败负责。甲方有判定用户的行为是否符合甲方服务条款的要求和精神的保留权利，如果用户违背了服务条款的规定，甲方有中断对其提供网络服务的权利。</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">6</span><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">、如因不可抗力或其他无法控制的原因使甲方销售系统崩溃或无法正常使用导致网上交易无法完成或丢失有关的信息、记录等，甲方不承担责任。但是甲方会尽可能合理地协助处理善后事宜，并努力使客户免受经济失。。</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">三、乙方权利与义务</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">1</span><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">、乙方应保证需提供有盖章的单位资质证明复印件，包括工商登记证明、税务登记证明、卫生许可证及相关资质，因乙方资质问题贰使本协议无法正常履行的结果由乙方负责。</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">2</span><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">、乙方应遵循《中华人民共和国食品安全法》的相关条例并保证自身具备提供本合同项下餐品及履行本合同项下乙方餐饮服务的必要的资质批文、管理制度及合格人员，保证送达甲方用户餐品安全、及时、无污染。</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">3</span><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">、凡甲方已经在乙方上线的外卖餐品及相应服务内容，在双方规定的上线时间内，未经乙方同意甲方不得进行任何形式直接或间接的取消或变更，如因特殊原因甲方确实需要进行变更或取消的，由甲方至少提前5个工作日告知乙方，并由双方另行商议对页面做相应的调整后方可进行变更。</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">4</span><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">、乙方有义务提供合作期间在甲方app团购平台营销活动和品牌形象展示所需要的所有文字、图片和视频等资料以工甲方方创作，乙方保证对其提供的该等资料具有完全权利，并有权授权给甲方基于本协议目的进行使用。</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">5</span><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">、如甲方用户要求就餐发票，由乙方负责提供。</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">6</span><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">、甲方系统通知乙方下单后，如乙方因餐品售罄原因，不能提供的，乙方应立即电话通知。下单的消费者和甲方，并做好合理的安抚和处理。</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">7</span><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">、甲方用户退订情形，甲方应在收到退订申请后告知乙方取消对应外卖订餐项目。乙方应根据甲方通知做相应调整。</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">四、合作约定</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">1</span><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">、双方的品牌归各自所有。</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">甲、乙双方均不可在对方未经授权的情况下使用对方名称、logo以及涉及相关内容的销售、促销宣传材料及广告、报纸、杂志、宣传单等。如因此产生的不良后果及损失由违约方自行全部承担。</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">2</span><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">、任何双方违反本协议所规定的义务导致另一方受到包括但不限于投诉、举报、诉讼或处罚、赔偿等损失，违约方在收到守约方要求纠正其违法行为的书面通知之日，应立即停止其违约行为，并在10日内赔偿守约方因此受到的损失。</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">3</span><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">、本协议任何一方均应对其获得对方的业务、经营、财务状况和其他保密资料予以严格保密，不得以任何形式向任何第三方披露。如因任何一方未能履行保密义务而给其他方造成任何损失的，应承担赔偿责任。</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">4</span><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">、乙方在使用甲方平台中，应保证每月成交单以上，否则甲方有权将乙方下线。</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">5</span><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">、 物料包（甲方为乙方提供宣传所用的物料包，乙方需要支付相关的费用）</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">6</span><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">、 甲方可提供促销、引流、推广等增值服务。乙方如需定制，需支付相应费用，具体须签订补充协议。</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">五、争议解决</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">本协议项下争议由双方友好协商解决，无法达成一致情形，任何一方有权将整体提交至一方所在地有管辖权的人民法院诉讼解决。</span></p><p><br/></p>', '2', '1566374904');
INSERT INTO `fun_agreements` VALUES ('5', '骑手协议', '<p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">饭点送（以下或称“我们”）非常注重保护用户（以下或称“您”）的个人信息，我们深知个人信息对您的重要性，并将按照法律法规要求和业界成熟的安全标准，采取相应的安全保护措施来保护您的个人信息。</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">【特别提示】请您在使用我们提供的各项产品\\服务前，仔细阅读并充分理解本《隐私政策》（重点内容我们已将字体加粗请您特别关注）并作出相应选择。一旦您使用或继续使用我们的产品\\服务时，即意味着您同意我们按照本隐私政策收集、使用、保存、共享和保护您的相关信息。</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">请您注意，您应保证在使用饭点送配送端中所提供的一切数据信息均为真实，且经过合法途径获得，如其中包含第三方个人信息，请确认您已取得该信息所有方的充分、合法的授权，一旦您在使用我们服务的过程中提供此类信息，我们将认为该类信息均为您有权处理，不存在任何违反法律、法规或侵犯任何第三方合法权利的事由/瑕疵/场景。</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">&nbsp;</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">一、我们如何收集和使用您的个人信息</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">我们会出于本政策所述的以下目的，收集和使用您的个人信息：</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">1</span><span style=\"font-size:16px;font-family:宋体\">、您向我们提供的信息</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">（一）帮助您完成注册\\登录\\接单\\配送</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">为完成注册\\登录饭点送配送端，在线提供配送服务，您需要提供账号信息（手机号码及验证码等）、网络身份识别信息（如头像、姓名、骑手ID等）、实名身份信息（如身份证等载明您实名身份的照片、号码等）、工作学校（意向学校）等。</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">您在使用饭点送配送端的过程中所提交的任何文字、照片等各种形式的信息，也可能会包含或者关联到您的个人信息，我们将对于上述信息中涉及的个人信息予以严格保护。</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">（二）向您提供支付\\结算\\提现</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">您在饭点送配送端使用支付\\结算\\提现功能时，您需要关联方微信支付所提供的支付服务。</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">2</span><span style=\"font-size:16px;font-family:宋体\">、我们在您使用服务过程中收集的信息</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">为了满足法律法规及提供服务的基本要求，便于您对订单进行管理，更好地完成配送服务、保障您的账号安全与系统运行安全，我们会收集您的日志信息、订单信息、位置信息、设备或软件信息、网络信息、浏览及搜索信息等。当您与我们联系时，我们可能会收集您的通信\\通话记录和内容或您留下的联系方式等信息，以便与您联系、帮助您解决问题，或记录相关问题的处理方案及结果。</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">当您参与我们的推广活动和问卷调查过程中，我们可能会收集您主动提供的相关信息等。</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">3</span><span style=\"font-size:16px;font-family:宋体\">、我们间接收集到的您的个人信息（加盟商）配送合作商</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">经您授权后我们会通过配送合作商、您选择的支付\\结算\\提现直接涉及的支付机构等收集与配送服务相关的身份、配送、支付\\结算等信息，或者将您的信息共享给上述服务提供者，以验证身份并保证配送服务的顺利完成，或者更好地预防诈骗、刷单等恶意行为。我们会依据法律法规的要求以及与第三方的约定，经您授权后向获得您的有关信息，并对其信息来源的合法性进行确认后使用您的这些信息。</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">请注意，无法与任何特定个人直接建立联系的数据，不属于个人信息。</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">（三）改进我们的产品\\服务</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">为改善我们的产品或服务、向您提供个性化的信息搜索及交易服务，使您及时了解丰富的商品信息，提升服务体验，我们会根据您的浏览及搜索记录、设备信息、位置信息、订单信息，提取您的浏览、搜索偏好、行为习惯、位置信息等特征，基于特征标签进行间接人群画像并展示、推送相关信息，包括通过短信、电话、邮件等各种方式向你推送营销活动信息、商品交易信息、促销信息等。如果您不同意接收来自平台的推送信息，可以通过相应的退订方式进行退订。</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">（四）为您提供安全保障</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">为提高您使用我们提供的服务的安全性，更准确地预防钓鱼网站欺诈和木马病毒，我们可能会使用或整合您的个人信息以及我们的关联方、合作伙伴取得您授权或者依法共享的信息，根据您的使用习惯和常用软件信息等来综合判断您的账号及交易风险，包括验证身份，预防、发现、调查可能存在的欺诈、网络病毒、网络攻击等安全风险以及违反我们或关联方协议、政策或规则等行为，以保护您、其他用户、我们或关联方的合法权益，并记录一些我们认为有风险的链接(“URL”)。</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">（五）征得同意的例外</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">请您知悉，以下情形中，我们收集、使用个人信息无需征得您的授权同意：</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">1</span><span style=\"font-size:16px;font-family:宋体\">、与国家安全、国防安全有关的；</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">2</span><span style=\"font-size:16px;font-family:宋体\">、与公共安全、公共卫生、重大公共利益有关的；</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">3</span><span style=\"font-size:16px;font-family:宋体\">、与犯罪侦查、起诉、审判和判决执行等有关的；</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">4</span><span style=\"font-size:16px;font-family:宋体\">、出于维护个人信息主体或其他个人的生命、财产等重大合法权益但又很难得到本人同意的；</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">5</span><span style=\"font-size:16px;font-family:宋体\">、所收集的个人信息是个人信息主体自行向社会公众公开的；</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">6</span><span style=\"font-size:16px;font-family:宋体\">、从合法公开披露的信息中收集的您的个人信息的，如合法的新闻报道、政府信息公开等渠道；</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">7</span><span style=\"font-size:16px;font-family:宋体\">、根据您的要求签订合同所必需的；</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">8</span><span style=\"font-size:16px;font-family:宋体\">、用于维护所提供的产品与/或服务的安全稳定运行所必需的，例如发现、处置产品与/或服务的故障；</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">9</span><span style=\"font-size:16px;font-family:宋体\">、为合法的新闻报道所必需的；</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">10</span><span style=\"font-size:16px;font-family:宋体\">、学术研究机构基于公共利益开展统计或学术研究所必要，且对外提供学术研究或描述的结果时，对结果中所包含的个人信息进行去标识化处理的；</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">11</span><span style=\"font-size:16px;font-family:宋体\">、法律法规规定的其他情形。</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">&nbsp;</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">二、我们如何共享、转让、公开披露您的个人信息</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">（一）共享</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">我们不会与平台以外的任何公司、组织和个人共享您的个人信息，但以下情况除外：</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">基于法定情形下：根据法律法规的规定、诉讼争议解决需要，或行政、司法等有权机关依法提出的要求；</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">与关联公司共享：为向用户提供一致化服务以及便于用户进行统一管理，我们会基于必要性的前提下将您的个人信息与我们的关联公司共享。</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">与合作伙伴分享：我们可能会向业务合作伙伴共享为您提供服务所必要的订单信息、账户信息、支付信息等。我们的业务合作伙伴包括供应商、第三方服务提供商等业务合作伙伴。</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">基于协议约定：依据您与我们签署的相关协议(包括在线签署的电子协议及平台规则)或法律文件，有必要向第三方共享时；</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">基于学术研究；例如为科研机构开展统计或学术研究之必要；</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">基于符合法律法规的社会公共利益等。</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">（二）转让</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">我们不会将您的个人信息转让给任何公司、组织和个人，但以下情况除外：</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">1</span><span style=\"font-size:16px;font-family:宋体\">、在获取明确同意的情况下转让：获得您的明确同意后，我们会向其他方转让您的个人信息；</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">2</span><span style=\"font-size:16px;font-family:宋体\">、在我们发生合并、收购或破产清算情形，或其他涉及合并、收购或破产清算情形时，如涉及到个人信息转让，我们会要求新的持有您个人信息的公司、组织继续受本政策的约束，否则我们将要求该公司、组织和个人重新向您征求授权同意。</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">（三）公开披露</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">我们不会公开披露您的个人信息，但以下情况除外：</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">1.</span><span style=\"font-size:16px;font-family:宋体\">基于您的主动选择或获得您的明确同意，我们可能会公开您的相关个人信息；</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">2.</span><span style=\"font-size:16px;font-family:宋体\">基于配送订单服务的必要性及构建服务诚信环境，我们可能会公开您的姓名、头像、联系方式、评价信息等；</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">3.</span><span style=\"font-size:16px;font-family:宋体\">如果我们确定您出现违反法律法规或严重违反美团相关协议规则的情况，或为保护饭点送及其关联公司用户或公众的人身财产安全免遭侵害以及维护良好的公平交易环境，我们可能依据法律法规或饭点送相关协议规则披露您的相关个人信息。</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">4.</span><span style=\"font-size:16px;font-family:宋体\">基于法律的披露：在法律、法律程序、诉讼或政府主管部门强制性要求的情况下，我们可能会公开披露您的个人信息。</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">&nbsp;</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">三、我们如何保护您个人信息的安全</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">为保障您的信息安全，我们努力采取各种符合业界标准的物理、电子和管理方面的安全措施来保护您的个人信息，防止您的个人信息遭到未经授权访问、公开披露、使用、修改、损坏或丢失。我们会采取一切合理可行的措施，保护您的个人信息，使用加密技术确保数据的保密性；使用受信赖的保护机制防止数据遭到恶意攻击；部署访问控制机制，确保只有授权人员才可访问个人信息；以及举办安全和隐私保护培训课程，加强员工对于保护个人信息重要性的认识。</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">在不幸发生个人信息安全事件后，我们将按照法律法规的要求，及时向您告知：安全事件的基本情况和可能的影响、我们已采取或将要采取的处置措施、您可自主防范和降低风险的建议、对您的补救措施等。我们将及时将事件相关情况以邮件、信函、电话、推送通知等方式告知您，难以逐一告知个人信息主体时，我们会采取合理、有效的方式发布公告。同时，我们还将按照监管部门要求，主动上报个人信息安全事件的处置情况。</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">&nbsp;</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">四、您的个人信息如何在全球范围转移</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">我们在中华人民共和国境内运营中收集和产生的个人信息，存储在中国境内，以下情形除外：</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">1</span><span style=\"font-size:16px;font-family:宋体\">、法律法规有明确规定；</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">2</span><span style=\"font-size:16px;font-family:宋体\">、获得您的明确授权；</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">3</span><span style=\"font-size:16px;font-family:宋体\">、您通过互联网进行跨境交易等个人主动行为。</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">针对以上情形，我们会确保依据本隐私权政策对您的个人信息提供足够的保护。</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">&nbsp;</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">五、通知与修订</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">为给您提供更好的服务，我们的业务将不时变化，本隐私政策也将随之调整。未经您明确同意，我们不会削减您依据本隐私政策所应享有的权利。我们会通过在我们小程序上发出更新版本或以其他方式提醒您相关内容的更新，也请您访问我们以便及时了解最新的隐私政策。在前述情况下，若您继续使用我们的服务，即表示同意接受修订后的本政策并受之约束。</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">&nbsp;</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">六、如何联系我们</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">如果您对于我们的个人信息处理行为存在任何投诉举报需求，您可以通过拨打18012345678与我们联系并作充分描述，我们将在验证您身份的30天内答复您的请求并尽力解决。如果您对我们的回复不满意，特别是认为我们的个人信息处理行为损害了您的合法权益，您还可以通过向被告住所地有管辖权的法院提起诉讼。</span></p><p><br/></p>', '3', '1566374741');
INSERT INTO `fun_agreements` VALUES ('1', '用户注册及授权协议', '<p><span style=\"font-size:16px;font-family:宋体\">隐私政策</span></p><p><span style=\"font-size:16px;font-family:宋体\">本应用尊重并保护所有使用服务用户的个人隐私权。为了给您提供更准确、更有个性化的服务，本应用会按照本隐私权政策的规定使用和披露您的个人信息。但本应用将以高度的勤勉、审慎义务对待这些信息。除本隐私权政策另有规定外，在未征得您事先许可的情况下，本应用不会将这些信息对外披露或向第三方提供。本应用会不时更新本隐私权政策。 您在同意本应用服务使用协议之时，即视为您已经同意本隐私权政策全部内容。本隐私权政策属于本应用服务使用协议不可分割的一部分。</span></p><p><span style=\"font-size:16px;font-family:宋体\">&nbsp;</span></p><p><span style=\"font-size:16px;font-family:宋体\">一、特别提示</span></p><p><span style=\"font-size:16px;font-family:宋体\">本协议双方为本公司与本公司注册用户（下称“用户”或“您”），本协议具有合同效力，适用于您在本网站的全部活动。</span></p><p><span style=\"font-size:16px;font-family:宋体\">在接受《用户注册及授权协议》（以下称“本协议”）之前，请您仔细阅读本协议的全部内容。如果您不同意本协议的任意内容，或者无法准确理解本协议任何条款的含义，请不要进行注册或使用产品提供的服务；您一经注册或使用本产品服务，即视为对本协议全部条款已充分理解并完全接受。如发生法律纠纷，您不得以未仔细阅读或理解本协议为由进行抗辩。</span></p><p><span style=\"font-size:16px;font-family:宋体\">&nbsp;</span></p><p><span style=\"font-size:16px;font-family:宋体\">二、 服务变更、中断或终止</span></p><p><span style=\"font-size:16px;font-family:宋体\">1. </span><span style=\"font-size:16px;font-family:宋体\">鉴于网络服务的特殊性，用户同意我们有权随时变更、中断或终止本软件所提供的部分或全部的服务。</span></p><p><span style=\"font-size:16px;font-family:宋体\">2. </span><span style=\"font-size:16px;font-family:宋体\">如发生下列任何一种情况，我们因不可抗力或紧急情况随时中断或终止向用户提供本协议项下的服务而无需对用户或任何第三方承担任何责任：</span></p><p><span style=\"font-size:16px;font-family:宋体\">（1）用户违反法律法规、国家政策或本协议中规定的使用规则</span></p><p><span style=\"font-size:16px;font-family:宋体\">（2） 用户传送的信息违反国家法律或者政策的规定；</span></p><p><span style=\"font-size:16px;font-family:宋体\">（3） 用户将本产品用于任何非法目的或以任何非法方式使用本服务；</span></p><p><span style=\"font-size:16px;font-family:宋体\">（4） 用户通过本服务从事侵害他人合法利益之行为。</span></p><p><span style=\"font-size:16px;font-family:宋体\">（5）系统停机维护期间；</span></p><p><span style=\"font-size:16px;font-family:宋体\">（6） 设备出现故障不能进行数据传输；</span></p><p><span style=\"font-size:16px;font-family:宋体\">（7） 因台风、地震、海啸、洪水、停电、战争、恐怖袭击等不可抗力之因素，造成系统障碍不能执行任务的；</span></p><p><span style=\"font-size:16px;font-family:宋体\">（8） 由于黑客攻击、电信部门技术调整或故障、软件升级、银行方面的额度问题等原因而造成的服务中断或延迟。</span></p><p><span style=\"font-size:16px;font-family:宋体\">&nbsp;</span></p><p><span style=\"font-size:16px;font-family:宋体\">三、使用规则</span></p><p><span style=\"font-size:16px;font-family:宋体\">1.</span><span style=\"font-size:16px;font-family:宋体\">您了解并同意，确保您的用户账号及密码的机密安全是您的责任。您将对利用该账号及密码所进行的一切行动及言论负完全责任并同意以下事项：</span></p><p><span style=\"font-size:16px;font-family:宋体\">（1） 您不对其他任何人泄露账号或密码，亦不可使用其他人的账号或密码；因黑客行为或用户的保管疏忽导致账号、密码遭他人非法使用，您应自行承担相应的后果及全部的法律责任。</span></p><p><span style=\"font-size:16px;font-family:宋体\">（2） 您使用账号和密码登录后在本产品的一切行为均代表您本人。该账号操作所产生的电子信息记录均为您行为的有效凭据，并由您承担由此产生的全部责任。</span></p><p><span style=\"font-size:16px;font-family:宋体\">（3） 冒用他人账号及密码的，或者将本人的账号及密码提供给他人使用的，本产品及其合法授权主体保留追究实际使用人和账号所有人的连带责任的权利。</span></p><p><span style=\"font-size:16px;font-family:宋体\">（4） 如用户发现其账号遭他人非法使用或其他未经合法授权的情形，应立即以有效方式通知 我们要求暂停相关服务，否则由此产生的一切责任由您本人承担。</span></p><p><span style=\"font-size:16px;font-family:宋体\">2. </span><span style=\"font-size:16px;font-family:宋体\">用户在使用本产品服务过程中，必须遵循以下原则，否则本公司有权拒绝提供产品和服务，且您应承担所有相关法律责任，因此导致 我们及其合作方或其他相关方受损的，您应承担赔偿责任。</span></p><p><span style=\"font-size:16px;font-family:宋体\">（1） 遵守中国有关的法律和法规；</span></p><p><span style=\"font-size:16px;font-family:宋体\">（2） 遵守所有与网络服务、本服务有关的网络协议、规定和程序；</span></p><p><span style=\"font-size:16px;font-family:宋体\">（3）不得为任何非法或侵害他人合法利益之目的使用本服务，包括但不限于</span></p><p><span style=\"font-size:16px;font-family:宋体\">a.</span><span style=\"font-size:16px;font-family:宋体\">冒用他人身份信息使用本服务；</span></p><p><span style=\"font-size:16px;font-family:宋体\">b.</span><span style=\"font-size:16px;font-family:宋体\">从事不法行为；</span></p><p><span style=\"font-size:16px;font-family:宋体\">c.</span><span style=\"font-size:16px;font-family:宋体\">未按时履行还款义务；</span></p><p><span style=\"font-size:16px;font-family:宋体\">d.</span><span style=\"font-size:16px;font-family:宋体\">提供骗贷资讯或以任何方式引诱他人参与骗贷；</span></p><p><span style=\"font-size:16px;font-family:宋体\">e.</span><span style=\"font-size:16px;font-family:宋体\">非法使用他人银行账户或无效银行账户交易；</span></p><p><span style=\"font-size:16px;font-family:宋体\">f.</span><span style=\"font-size:16px;font-family:宋体\">从事任何可能含有电脑病毒或是可能侵害本产品系统、资料之行为；</span></p><p><span style=\"font-size:16px;font-family:宋体\">g.</span><span style=\"font-size:16px;font-family:宋体\">其他本平台有正当理由认为不适当之行为；</span></p><p><span style=\"font-size:16px;font-family:宋体\">3.</span><span style=\"font-size:16px;font-family:宋体\">本公司接受用户在平台的注册账户或绑定手机号来电要求的操作指令，凡用户通过前述途径发出指令，都不可撤回或撤销，且视为用户本人的指令。</span></p><p><span style=\"font-size:16px;font-family:宋体\">4. </span><span style=\"font-size:16px;font-family:宋体\">您知晓并同意本公司不对因下述任一情况导致的任何损害赔偿承担责任:</span></p><p><span style=\"font-size:16px;font-family:宋体\">（1）本公司有权基于单方判断，包含但不限于本公司认为用户已经违反本协议的明文规定及精神，对用户的名下的全部或部分产品账户暂停、中断或终止向用户提供本产品或其任何部分，并移除或公布用户的资料。</span></p><p><span style=\"font-size:16px;font-family:宋体\">（2）本公（3）用户理解并同意，存在如下情形时，本司在发现异常交易或合理怀疑交易有疑义或有违反法律规定或本协议约定之虞时，有权不经通知先行暂停或终止用户产品账户的使用（包括但不限于对账户名下的信用评分和在途交易采取取消交易等限制措施），并拒绝用户使用本产品之部分或全部功能。</span></p><p><span style=\"font-size:16px;font-family:宋体\">公司有权对用户注册账号或交易进行冻结或追回，且有权限制用户所使用的产品或服务的部分或全部功能：</span></p><p><span style=\"font-size:16px;font-family:宋体\">a.</span><span style=\"font-size:16px;font-family:宋体\">根据本协议的约定。</span></p><p><span style=\"font-size:16px;font-family:宋体\">b.</span><span style=\"font-size:16px;font-family:宋体\">根据法律法规及法律文书的规定。</span></p><p><span style=\"font-size:16px;font-family:宋体\">c.</span><span style=\"font-size:16px;font-family:宋体\">根据有权机关的要求。</span></p><p><span style=\"font-size:16px;font-family:宋体\">d.</span><span style=\"font-size:16px;font-family:宋体\">用户使用本产品服务的行为涉嫌违反国家法律法规及行政规定的。</span></p><p><span style=\"font-size:16px;font-family:宋体\">e.</span><span style=\"font-size:16px;font-family:宋体\">本公司基于单方面合理判断认为账户信息、操作等存在异常时</span></p><p><span style=\"font-size:16px;font-family:宋体\">f.</span><span style=\"font-size:16px;font-family:宋体\">本公司依据自行合理判断认为可能产生包括但不限于逾期、欺诈、骗贷、信用不良风险的。</span></p><p><span style=\"font-size:16px;font-family:宋体\">g.</span><span style=\"font-size:16px;font-family:宋体\">用户批量注册、提供虚假信息或材料及其他舞弊等违反使用规则、违反诚实信用原则的。</span></p><p><span style=\"font-size:16px;font-family:宋体\">h.</span><span style=\"font-size:16px;font-family:宋体\">错误汇入资金等导致用户可能存在不当得利的。</span></p><p><span style=\"font-size:16px;font-family:宋体\">i.</span><span style=\"font-size:16px;font-family:宋体\">用户未按时履行还款义务的。</span></p><p><span style=\"font-size:16px;font-family:宋体\">j.</span><span style=\"font-size:16px;font-family:宋体\">用户损害他人利益，且对方已经提供了一定证据的。</span></p><p><span style=\"font-size:16px;font-family:宋体\">7.</span><span style=\"font-size:16px;font-family:宋体\">如用户申请解除上述冻结或限制，用户应按本公司要求如实提供相关资料及用户的身份证明以及本公司要求的其他信息或文件，以便本公司进行核实，且本公司有权依照自行判断来决定是否同意用户的申请。</span></p><p><span style=\"font-size:16px;font-family:宋体\">&nbsp;</span></p><p><span style=\"font-size:16px;font-family:宋体\">四、隐私条例</span></p><p><span style=\"font-size:16px;font-family:宋体\">&nbsp;</span></p><p><span style=\"font-size:16px;font-family:宋体\">1. </span><span style=\"font-size:16px;font-family:宋体\">您同意本平台在业务运营中收集、查验和储存您的用户信息，以及 我们自行或通过第三方机构（包括但不限于通过合法的征信机构个人信用信息基础数据库及外部数据）查询您的信用报告中的身份、联系方式等个人身份、电信信息、地址、位置等基本信息和您在我们的交易记录和使用信息等。我们收集和储存您的用户信息的主要目的在于提高服务效率和质量。</span></p><p><span style=\"font-size:16px;font-family:宋体\">2. </span><span style=\"font-size:16px;font-family:宋体\">您同意 我们在业务运营中使用您的用户信息，包括但不限于：</span></p><p><span style=\"font-size:16px;font-family:宋体\">（1）在我们平台公示您的相关信息；</span></p><p><span style=\"font-size:16px;font-family:宋体\">（2） 向我们的合作机构（该合作机构仅限于我们为了完成拟向您提供的服务而合作的机构）提供您的用户信息；</span></p><p><span style=\"font-size:16px;font-family:宋体\">（3） 由人工或自动程序对您的信息进行评估、分类、研究；</span></p><p><span style=\"font-size:16px;font-family:宋体\">（4）自行或通过合作的第三方机构对您提交或 我们搜集的用户信息（包括但不限于您的个人身份证信息、肖像等）进行核实，并对获得的核实结果根据本协议及有关文件进行查看、使用、展示和留存等操作；</span></p><p><span style=\"font-size:16px;font-family:宋体\">（5）使用您的用户信息以改进我们的推广；</span></p><p><span style=\"font-size:16px;font-family:宋体\">（6） 使用您或合作的第三方机构提供的联系方式与您本人或能帮助联络到您本人的联系人联络并向您传递有关业务和管理方面的信息。 我们将不定期对用户信息进行抽查、核实，有时可能调查多个用户以识别问题或解决争议，特别是 我们可审查您的资料以区分使用多个用户名或别名的用户</span></p><p><span style=\"font-size:16px;font-family:宋体\">（7）我们有权对用户信息进行分析并形成用户信用数据库， 我们对该等用户信用数据库享有完整的所有权， 我们将该等信用数据库或将该等信用数据库提供给第三方使用均无需取得您的同意，亦无需向您支付任何费用。</span></p><p><span style=\"font-size:16px;font-family:宋体\">3. </span><span style=\"font-size:16px;font-family:宋体\">我们将采用行业标准惯例以保护您的用户信息，包括建立相应的信息保护制度和机制、设备等，但您应了解，受限于技术， 我们不能确保您的信息不会通过本协议中未列明的途径泄露出去， 我们不承担因此而导致的任何损失或责任。</span></p><p><span style=\"font-size:16px;font-family:宋体\">4. </span><span style=\"font-size:16px;font-family:宋体\">您同意我们有权在下列情形下披露您的用户信息：</span></p><p><span style=\"font-size:16px;font-family:宋体\">（1） 依据法律法规要求必须向第三方提供您的用户信息的情形。</span></p><p><span style=\"font-size:16px;font-family:宋体\">（2） 您知晓并同意我们手机用户的使用行为习惯，设备信息和手机系统版本信息，用于更好的理解用户的使用场景及使用方式，并且及时的改进我们的产品。</span></p><p><span style=\"font-size:16px;font-family:宋体\">&nbsp;</span></p><p><span style=\"font-size:16px;font-family:宋体\">五、免责声明</span></p><p><span style=\"font-size:16px;font-family:宋体\">&nbsp;</span></p><p><span style=\"font-size:16px;font-family:宋体\">1. </span><span style=\"font-size:16px;font-family:宋体\">我们不担保网络服务一定能满足用户的要求，对网络服务的及时性、安全性、准确性也都不作担保。我们不认可、支持、代表或保证通过本软件发布的任何信息，及通过本软件传递的任何观点的完整性、真实性、准确性或可靠性。用户对于可能会接触到的非法的、非道德的、错误的存在其他失宜之处的信息，及被错误归类或是带有欺骗性的发布内容，应自行做出判断。在任何情况下，对于任何信息，包括但不仅限于其发生的任何错误或遗漏；或是由于使用通过本软件发布、私信、传达、其他方式在别处传播的信息而造成的任何损失，我们都不以任何形式承担责任。</span></p><p><span style=\"font-size:16px;font-family:宋体\">2. </span><span style=\"font-size:16px;font-family:宋体\">对于因不可抗力或我们不能控制的原因造成的本软件所提供的服务中断或其他缺陷，我们不承担任何责任，但将尽力减少因此而给用户造成的损失和影响。上述状况包括但不限于</span></p><p><span style=\"font-size:16px;font-family:宋体\">（1）在系统公告停机维护期间；</span></p><p><span style=\"font-size:16px;font-family:宋体\">（2）设备出现故障不能进行数据传输；</span></p><p><span style=\"font-size:16px;font-family:宋体\">（3）因不可抗力之因素，造成系统障碍不能执行任务的；</span></p><p><span style=\"font-size:16px;font-family:宋体\">（4）用户操作不当；</span></p><p><span style=\"font-size:16px;font-family:宋体\">（5）由于黑客攻击、电信部门技术调整或故障、软件升级、银行方面的额度问题等原因而造成的服务中断或延迟。</span></p><p><span style=\"font-size:16px;font-family:宋体\">&nbsp;</span></p><p><span style=\"font-size:16px;font-family:宋体\">六、协议修改</span></p><p><span style=\"font-size:16px;font-family:宋体\">1. </span><span style=\"font-size:16px;font-family:宋体\">协议变更与解除</span></p><p><span style=\"font-size:16px;font-family:宋体\">（1）本协议生效后，除本协议另有约定外，甲方不得要求单方面擅自变更或解除本协议。</span></p><p><span style=\"font-size:16px;font-family:宋体\">&nbsp;</span></p><p><span style=\"font-size:16px;font-family:宋体\">七、通知</span></p><p><span style=\"font-size:16px;font-family:宋体\">1. </span><span style=\"font-size:16px;font-family:宋体\">通知方式：本协议条款及其任何其他协议、告示或其他关于用户使用本服务账户及服务的通知，用户同意本公司使用电子方式或通过向用户在注册时预留的通讯地址邮寄文件资料的方式通知用户。电子方式包括但不限于以电子邮件方式、短信息、站内信或于本公司或者合作网站上公布、或通过官方微信、小程序、官方微博等方式公布。</span></p><p><span style=\"font-size:16px;font-family:宋体\">&nbsp;</span></p><p><span style=\"font-size:16px;font-family:宋体\">八、 其他</span></p><p><span style=\"font-size:16px;font-family:宋体\">1. </span><span style=\"font-size:16px;font-family:宋体\">本协议自用户同意勾选或网上签署并成功注册成为本产品用户之日起生效，除非 我们终止本协议或者用户丧失本服务用户资格，否则本协议始终有效。本协议终止并不免除用户根据本协议或其他有关协议、规则所应承担的义务和责任。</span></p><p><span style=\"font-size:16px;font-family:宋体\">2.</span><span style=\"font-size:16px;font-family:宋体\">本协议部分条款被认定为无效时，不影响本协议其他条款的效力。</span></p><p><br/></p>', '1', '1566375090');
INSERT INTO `fun_agreements` VALUES ('2', '红包说明', '<p style=\"text-align:left\"><span style=\";font-family:宋体\">Q1: </span><span style=\";font-family:宋体\">怎么获得红包？</span></p><p style=\"margin-top:auto;margin-bottom: auto;margin-left:0;text-align:left\"><span style=\"font-size:13px;font-family:Symbol;color:black\">·<span style=\"font:9px &#39;Times New Roman&#39;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span style=\";font-family:&#39;微软雅黑&#39;,sans-serif;color:black\">登录平台时可以领取；</span></p><p style=\"margin-top:auto;margin-bottom: auto;margin-left:0;text-align:left\"><span style=\"font-size:13px;font-family:Symbol;color:black\">·<span style=\"font:9px &#39;Times New Roman&#39;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span style=\";font-family:&#39;微软雅黑&#39;,sans-serif;color:black\">某些商户下单即可获赠一个红包；</span></p><p style=\"margin-top:auto;margin-bottom: auto;margin-left:0;text-align:left\"><span style=\"font-size:13px;font-family:Symbol;color:black\">·<span style=\"font:9px &#39;Times New Roman&#39;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span style=\";font-family:&#39;微软雅黑&#39;,sans-serif;color:black\">成功邀请新人注册并下单即可获赠一个红包。</span></p><p style=\"text-align:left\">&nbsp;</p><p style=\"text-align:left\"><span style=\";font-family:宋体\">Q2: </span><span style=\";font-family:宋体\">红包如何使用？</span></p><p style=\"margin-top:auto;margin-bottom: auto;margin-left:0;text-align:left\"><span style=\"font-size:13px;font-family:Symbol;color:black\">·<span style=\"font:9px &#39;Times New Roman&#39;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span style=\";font-family:&#39;微软雅黑&#39;,sans-serif;color:black\">红包仅限在线支付时使用；</span></p><p style=\"margin-top:auto;margin-bottom: auto;margin-left:0;text-align:left\"><span style=\"font-size:13px;font-family:Symbol;color:black\">·<span style=\"font:9px &#39;Times New Roman&#39;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span style=\";font-family:&#39;微软雅黑&#39;,sans-serif;color:black\">每个订单限使用一个红包，每天使用红包数暂时不做限制；</span></p><p style=\"margin-top:auto;margin-bottom: auto;margin-left:0;text-align:left\"><span style=\"font-size:13px;font-family:Symbol;color:black\">·<span style=\"font:9px &#39;Times New Roman&#39;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span style=\";font-family:&#39;微软雅黑&#39;,sans-serif;color:black\">每个红包只能使用一次，不能叠加或拆分使用；</span></p><p style=\"margin-top:auto;margin-bottom: auto;margin-left:0;text-align:left\"><span style=\"font-size:13px;font-family:Symbol;color:black\">·<span style=\"font:9px &#39;Times New Roman&#39;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span style=\";font-family:&#39;微软雅黑&#39;,sans-serif;color:black\">红包如有使用金额门槛，则购物车今日需满足金额门槛才可使用；</span></p><p style=\"margin-top:auto;margin-bottom: auto;margin-left:0;text-align:left\"><span style=\"font-size:13px;font-family:Symbol;color:black\">·<span style=\"font:9px &#39;Times New Roman&#39;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span style=\";font-family:&#39;微软雅黑&#39;,sans-serif;color:black\">红包如有品类、商家、手机号等限制，订单需满足对应条件后才可使用；</span></p><p style=\"margin-top:auto;margin-bottom: auto;margin-left:0;text-align:left\"><span style=\"font-size:13px;font-family:Symbol;color:black\">·<span style=\"font:9px &#39;Times New Roman&#39;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span style=\";font-family:&#39;微软雅黑&#39;,sans-serif;color:black\">红包使用不设找零，如红包可抵扣今日大于订单金额，则订单需支付0元。</span></p><p style=\"text-align:left\">&nbsp;</p><p style=\"text-align:left\"><span style=\";font-family:宋体\">Q3: </span><span style=\";font-family:宋体\">下单的时候使用了红包，但是后来订单取消了，红包还会返还吗？</span></p><p style=\"margin-top:auto;margin-bottom: auto;margin-left:0;text-align:left\"><span style=\"font-size:13px;font-family:Symbol;color:black\">·<span style=\"font:9px &#39;Times New Roman&#39;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span style=\";font-family:&#39;微软雅黑&#39;,sans-serif;color:black\">会的，订单无效后红包会自动返还到您的账户里。</span></p><p style=\"text-align:left\">&nbsp;</p><p style=\"text-align:left\"><span style=\";font-family:宋体\">Q4: </span><span style=\";font-family:宋体\">什么红包是不可同时使用的？</span></p><p style=\"margin-top:auto;margin-bottom: auto;margin-left:0;text-align:left\"><span style=\"font-size:13px;font-family:Symbol;color:black\">·<span style=\"font:9px &#39;Times New Roman&#39;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span style=\";font-family:&#39;微软雅黑&#39;,sans-serif;color:black\">不同类型的平台红包不可以同时使用；</span></p><p style=\"margin-top:auto;margin-bottom: auto;margin-left:0;text-align:left\"><span style=\"font-size:13px;font-family:Symbol;color:black\">·<span style=\"font:9px &#39;Times New Roman&#39;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span style=\";font-family:&#39;微软雅黑&#39;,sans-serif;color:black\">不同类型的店铺红包不可以同时使用。</span></p><p style=\"text-align:left\">&nbsp;</p><p style=\"text-align:left\"><span style=\";font-family:宋体\">Q5:</span><span style=\";font-family:宋体\">首单红包的使用条件？</span></p><p style=\"margin-top:auto;margin-bottom: auto;margin-left:0;text-align:left\"><span style=\"font-size:13px;font-family:Symbol;color:black\">·<span style=\"font:9px &#39;Times New Roman&#39;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span style=\";font-family:&#39;微软雅黑&#39;,sans-serif;color:black\">首单红包需同时满足一下条件才可用；</span></p><p style=\"margin-top:auto;margin-bottom: auto;margin-left:0;text-align:left\"><span style=\"font-size:13px;font-family:Symbol;color:black\">·<span style=\"font:9px &#39;Times New Roman&#39;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span style=\";font-family:&#39;微软雅黑&#39;,sans-serif;color:black\">下单用户为首次下单的新用户，带个fun新用户是指设备号、手机号、带个fun账号均未在平台上下过单的用户；</span></p><p style=\"margin-top:auto;margin-bottom: auto;margin-left:0;text-align:left\"><span style=\"font-size:13px;font-family:Symbol;color:black\">·<span style=\"font:9px &#39;Times New Roman&#39;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span style=\";font-family:&#39;微软雅黑&#39;,sans-serif;color:black\">首单红包仅限在线支付时使用，且收餐人手机号带个fun账号中的手机号需为同一个手机号；</span></p><p style=\"margin-top:auto;margin-bottom: auto;margin-left:0;text-align:left\"><span style=\"font-size:13px;font-family:Symbol;color:black\">·<span style=\"font:9px &#39;Times New Roman&#39;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span style=\";font-family:&#39;微软雅黑&#39;,sans-serif;color:black\">首单红包不与其他类型平台红包同时使用。</span></p><p><br/></p>', '1', '1564106588');
INSERT INTO `fun_agreements` VALUES ('4', '关于我们', '<p style=\"text-align:left\"><span style=\"font-family: 宋体; color: rgb(89, 89, 89); font-size: 14px;\">南京食聚荟信息科技有限公司, 成立于2019年4月23日，目标做中国领先的校园生活服务平台，为高校学生提供便捷服务，为校内合作商户提供一体化运营解决方案，以校园外卖为切入口，围绕用户逐步升级至用户交互平台。公司秉承着“至诚”和“共赢”的理念，以为高校学生提供便捷服务为目标，以信息技术为手段，以行业资源为依托，平台与加盟商还将通过相互投资入股的方式进行资本连接，共同引领行业的发展。公司通过”互联网+后台管控+校园商家+学生配送“为核心的方式，为高校食堂商家提供一站式平台开发与运营的解决方案。</span></p><p style=\"text-align:left\"><span style=\"font-family: 宋体; color: rgb(89, 89, 89); font-size: 14px;\">饭点送是由南京食聚荟信息科技有限公司精心研发的外卖服务平台，公司旨在更好得搭建用户与商家之间的桥梁，降低使用成本，提升服务效率，实现用户轻松下单，商家高效接单的美好愿景，现已覆盖外卖、配送等业务。</span></p><p style=\"text-align:left\"><span style=\"font-family: 宋体; color: rgb(89, 89, 89); font-size: 14px;\">通过饭点送，店家可以在商家后台建立店铺，消费者只需进入饭点送小程序，即可浏览商品与店铺的信息，并轻松下单。店家可以通过GPRS无线打印机、商家版、短信、邮件、微信、电脑后台等多种方式即时查看订单，并为顾客提供相应的服务。<span style=\"font-family: 宋体; font-size: 14px; color: rgb(89, 89, 89);\"></span></span></p><p><br/></p>', '1', '1566979052');
INSERT INTO `fun_agreements` VALUES ('6', '提现说明', '<p style=\"text-align:left\"><strong><span style=\"font-size:16px;font-family:宋体;color:black;background:white\">一、提现相关操作</span></strong></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">1.</span><span style=\"font-size: 16px;font-family:宋体;color:#333333;background:white\">用户在饭点送商家，进入我的资产-点击提现-填写提现金额，提交申请等待审核，审核通过后即提现成功；</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">2.</span><span style=\"font-size: 16px;font-family:宋体;color:#333333;background:white\">用户账户有可提现金额即可提现，两个小时内到账；</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">3. </span><span style=\"font-size: 16px;font-family:宋体;color:#333333;background:white\">温馨提示</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">建议避开节假日期间提现，会出现到账延迟现象。</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">&nbsp;</span></p><p style=\"text-align:left\"><strong><span style=\"font-size:16px;font-family:宋体;color:black;background:white\">二、提现规则</span></strong></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">1</span><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">、单笔提现最小金额为0.3元，最大金额为5000元；</span></p><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">2</span><span style=\"font-size:16px;font-family:宋体;color:#333333;background:white\">、用户每天可享受1次提现服务，当天可提现七天之前结算的金额（若有变动根据页面显示为主）。</span></p><p><br/></p>', '2', '1566375010');
INSERT INTO `fun_agreements` VALUES ('7', '提现说明', '<p style=\"text-align:left\"><span style=\"font-size: 14px; color: rgb(73, 68, 41);\"><strong><span style=\"font-size: 14px; font-family: 宋体; background: white;\">一、提现相关操作</span></strong></span></p><p style=\"text-align:left\"><span style=\"font-size: 16px; font-family: 宋体; background: white; color: rgb(73, 68, 41);\">1.用户在饭点送骑手平台，进入我的钱包-点击提现-填写提现金额，提交申请等待审核，审核通过后即提现成功；</span></p><p style=\"text-align:left\"><span style=\"font-size: 16px; font-family: 宋体; background: white; color: rgb(73, 68, 41);\">2.用户账户有可提现金额即可提现，两个小时内到账；</span></p><p style=\"text-align:left\"><span style=\"font-size: 16px; font-family: 宋体; background: white; color: rgb(73, 68, 41);\">3. 温馨提示</span></p><p style=\"text-align:left\"><span style=\"font-family: 宋体; background: white; font-size: 14px; color: rgb(73, 68, 41);\">建议避开节假日期间提现，会出现到账延迟现象。</span></p><p style=\"text-align:left\"><span style=\"font-family: 宋体; font-size: 14px; color: rgb(73, 68, 41);\">&nbsp;<span style=\"font-family: 宋体; font-size: 14px; color: rgb(63, 63, 63);\"></span></span></p><p style=\"text-align:left\"><span style=\"font-size: 14px; color: rgb(73, 68, 41);\"><strong><span style=\"font-size: 16px; font-family: 宋体; color: black; background: white;\">二、提现规则</span></strong></span></p><p style=\"text-align:left\"><span style=\"font-size: 16px; font-family: 宋体; background: white; color: rgb(73, 68, 41);\">1、单笔提现最小金额为0.3元，最大金额为5000元；</span></p><p style=\"text-align:left\"><span style=\"font-size: 16px; font-family: 宋体; background: white; color: rgb(73, 68, 41);\">2、用户每天可享受1次提现服务（若有变动根据页面显示为主）。</span></p><p><br/></p>', '3', '1567682957');
INSERT INTO `fun_agreements` VALUES ('8', '常见问题', '<p><span style=\"font-family: 宋体, SimSun;\"><strong>Q1：提现有额度限制吗？</strong></span></p><p><span style=\"font-family: 宋体, SimSun;\">· 单笔提现最小金额为0.3元，最大金额为5000元。</span></p><p><br/></p><p><span style=\"font-family: 宋体, SimSun;\"><strong>Q2：一天可以享受多少次提现服务?</strong></span></p><p><span style=\"font-family: 宋体, SimSun;\">· 用户每天可享受1次提现服务，当天可提现七天之前结算的金额。</span></p><p><br/></p><p><span style=\"font-family: 宋体, SimSun;\"><strong>Q3：为什么会提现失败？</strong></span></p><p><span style=\"font-family: 宋体, SimSun;\">· 确认该银行卡是否冻结或者作废，如卡状态正常，请咨询饭点送客服。</span></p><p><br/></p><p><span style=\"font-family: 宋体, SimSun;\"><strong>Q4：预计到账时长的计算依据是什么？</strong></span></p><p><span style=\"font-family: 宋体, SimSun;\">· 根据您选择的提现额度和您的提现银行卡开户行，为您安排相应的付款类型，即网银支持的银行2小时到账，网银不支持的银行3日内到账。</span></p><p><br/></p><p><br/></p>', '2', '1568627074');
INSERT INTO `fun_agreements` VALUES ('9', '邀请红包规则', '<p>在“邀请有奖”页面——点击右上角“…”或者【立即邀请】按钮将该页面分享给小伙伴或者朋友圈，好友点开链接成为平台用户并且成功下单之后，可领取5元优惠券，多分享，多获赠哦~</p><p><br/></p><p>有效期限：自获赠之日起7天内有效；</p><p>使用规则：不可兑现，不可与其他优惠券同时使用。</p><p><br/></p>', '1', '1571725336');

-- ----------------------------
-- Table structure for fun_canteens
-- ----------------------------
DROP TABLE IF EXISTS `fun_canteens`;
CREATE TABLE `fun_canteens` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `school_id` smallint(4) NOT NULL DEFAULT '0' COMMENT '所属学校',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '食堂名称',
  `cut_proportion` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '抽成比例（百分制）',
  `account` varchar(30) NOT NULL DEFAULT '' COMMENT '食堂账户',
  `cleartext` varchar(20) NOT NULL DEFAULT '' COMMENT '明文密码',
  `password` varchar(100) NOT NULL DEFAULT '' COMMENT '密码',
  `withdraw_cycle` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '提现周期',
  `last_login_time` int(11) DEFAULT '0' COMMENT '上次登录时间',
  `can_balance` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '可提现余额',
  PRIMARY KEY (`id`),
  KEY `school_id` (`school_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COMMENT='食堂表';

-- ----------------------------
-- Records of fun_canteens
-- ----------------------------
INSERT INTO `fun_canteens` VALUES ('1', '12', '第一食堂', '10.22', 'test3', '123456', 'e10adc3949ba59abbe56e057f20f883e', '1', '1567673621', '0.00');
INSERT INTO `fun_canteens` VALUES ('2', '13', '第二食堂', '3.00', 'wlf', '123456', 'e10adc3949ba59abbe56e057f20f883e', '1', '1571018931', '0.81');
INSERT INTO `fun_canteens` VALUES ('3', '27', '一楼', '10.00', 'qqqq', '123456', 'e10adc3949ba59abbe56e057f20f883e', '1', '1567732292', '0.00');
INSERT INTO `fun_canteens` VALUES ('4', '27', '一楼', '10.00', 'qqqqqqq', '123456', 'e10adc3949ba59abbe56e057f20f883e', '7', '1567732292', '0.00');
INSERT INTO `fun_canteens` VALUES ('5', '12', '111', '10.00', 'test2', '111111', '96e79218965eb72c92a549dd5a330112', '7', '0', '0.00');
INSERT INTO `fun_canteens` VALUES ('6', '28', '一楼', '0.00', '111', '111111', '96e79218965eb72c92a549dd5a330112', '1', '0', '0.00');
INSERT INTO `fun_canteens` VALUES ('7', '28', '一楼', '1.00', 'hhs', '111111', '96e79218965eb72c92a549dd5a330112', '1', '1567764080', '0.00');
INSERT INTO `fun_canteens` VALUES ('9', '29', '南餐厅', '10.00', '112', '123456', 'e10adc3949ba59abbe56e057f20f883e', '7', '0', '0.00');
INSERT INTO `fun_canteens` VALUES ('10', '12', '一楼', '10.00', 'dcg', '123456', 'e10adc3949ba59abbe56e057f20f883e', '1', '0', '0.00');
INSERT INTO `fun_canteens` VALUES ('11', '38', '11', '11.00', '11111111111', '11111', 'b0baee9d279d34fa1dfd71aadb908c3f', '7', '0', '0.00');

-- ----------------------------
-- Table structure for fun_categories
-- ----------------------------
DROP TABLE IF EXISTS `fun_categories`;
CREATE TABLE `fun_categories` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL DEFAULT '' COMMENT '经营品类名称',
  `img` varchar(255) NOT NULL DEFAULT '' COMMENT '图片',
  `sort` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态，0禁言1启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='经营品类表';

-- ----------------------------
-- Records of fun_categories
-- ----------------------------
INSERT INTO `fun_categories` VALUES ('1', '速食简餐', 'http://picture.daigefan.com/79120201908071736509792.png', '1');
INSERT INTO `fun_categories` VALUES ('2', '甜点饮品', 'http://picture.daigefan.com/29f90201908071738135727.png', '1');
INSERT INTO `fun_categories` VALUES ('3', '汉堡披萨', 'http://picture.daigefan.com/894a6201908071738416938.png', '1');
INSERT INTO `fun_categories` VALUES ('4', '米粉面食', 'http://picture.daigefan.com/274ec201908062003185634.png', '1');
INSERT INTO `fun_categories` VALUES ('5', '包子粥铺 ', 'http://picture.daigefan.com/0bc44201908081558597505.png', '1');
INSERT INTO `fun_categories` VALUES ('6', '烧烤海鲜 ', 'http://picture.daigefan.com/d057e201908062004241097.png', '1');
INSERT INTO `fun_categories` VALUES ('7', '炸鸡炸串 ', 'http://picture.daigefan.com/f5f58201908062005126826.png', '1');
INSERT INTO `fun_categories` VALUES ('8', '异国料理', 'http://picture.daigefan.com/168bb201908062005406693.png', '1');

-- ----------------------------
-- Table structure for fun_feedback
-- ----------------------------
DROP TABLE IF EXISTS `fun_feedback`;
CREATE TABLE `fun_feedback` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL DEFAULT '0' COMMENT '用户表主键值',
  `content` varchar(200) NOT NULL DEFAULT '' COMMENT '意见反馈内容',
  `imgs` varchar(500) DEFAULT '' COMMENT '意见反馈图片',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态（默认1，1未处理，2已处理  3不处理）',
  `add_time` int(10) NOT NULL DEFAULT '0' COMMENT '记录时间',
  PRIMARY KEY (`id`),
  KEY `feedback_user` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='意见反馈表';

-- ----------------------------
-- Records of fun_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for fun_managers
-- ----------------------------
DROP TABLE IF EXISTS `fun_managers`;
CREATE TABLE `fun_managers` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL DEFAULT '' COMMENT '管理员名称',
  `phone` varchar(11) NOT NULL DEFAULT '' COMMENT '手机号（登录账号）',
  `password` varchar(100) NOT NULL COMMENT '登录密码',
  `role_id` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '角色主键值',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `ip` varchar(30) NOT NULL DEFAULT '' COMMENT '上次登录ip',
  `login_count` int(11) NOT NULL DEFAULT '0' COMMENT '登录次数',
  `last_login_time` int(10) NOT NULL DEFAULT '0' COMMENT '最近登录时间',
  `school_ids` varchar(100) NOT NULL DEFAULT '' COMMENT '学校主键值列表【针对合伙人专门弄的一个字段】',
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fun_managers
-- ----------------------------
INSERT INTO `fun_managers` VALUES ('1', 'mike', '18812345678', '$2y$10$7fn.ldDnbhWu6gchQwkea.CfgaOiG6iA5wy4EEvUqSoHTpWZJtVrK', '1', '1572798800', '127.0.0.1', '0', '1574756389', '');
INSERT INTO `fun_managers` VALUES ('2', 'youmi', '18021523642', '$2y$10$IaWWw5lV.VunoLOOxuWTFe8d2bZWnvX89LNCaWYVTl.xYq.v.iwbW', '1', '1574828246', '127.0.0.1', '0', '1574828246', '');
INSERT INTO `fun_managers` VALUES ('3', 'lili', '18758589699', '$2y$10$oUl3VS7Kn.bt2i6bX4Xw6eIJKUjptK9mPRjfOIkq0/Amga8Zzzfya', '2', '1575043200', '127.0.0.1', '0', '1575063200', '');

-- ----------------------------
-- Table structure for fun_menus
-- ----------------------------
DROP TABLE IF EXISTS `fun_menus`;
CREATE TABLE `fun_menus` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '菜单名',
  `link_url` varchar(100) NOT NULL DEFAULT '' COMMENT '链接url（控制器/方法名）',
  `fid` int(3) NOT NULL DEFAULT '0',
  `level` tinyint(1) NOT NULL DEFAULT '1',
  `sort` tinyint(1) NOT NULL DEFAULT '1' COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态 1正常 2禁用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COMMENT='全国菜单表';

-- ----------------------------
-- Records of fun_menus
-- ----------------------------
INSERT INTO `fun_menus` VALUES ('13', '图文管理', '', '0', '1', '2', '1');
INSERT INTO `fun_menus` VALUES ('14', '权限管理', '', '0', '1', '1', '1');
INSERT INTO `fun_menus` VALUES ('15', '用户列表', 'admin.manager.index', '14', '2', '1', '1');
INSERT INTO `fun_menus` VALUES ('16', '角色列表', 'admin.role.index', '14', '2', '2', '1');
INSERT INTO `fun_menus` VALUES ('17', '菜单列表', 'admin.menu.index', '14', '2', '3', '1');
INSERT INTO `fun_menus` VALUES ('18', '图文列表', 'admin.agreement.index', '13', '2', '1', '1');
INSERT INTO `fun_menus` VALUES ('25', '广告管理', '', '0', '1', '3', '1');
INSERT INTO `fun_menus` VALUES ('26', '广告列表', 'admin.advert.index', '25', '2', '2', '1');
INSERT INTO `fun_menus` VALUES ('27', '广告位列表', 'admin.advert_position.index', '25', '2', '1', '1');
INSERT INTO `fun_menus` VALUES ('33', '配置管理', '', '0', '1', '10', '1');
INSERT INTO `fun_menus` VALUES ('34', '学校列表', 'admin.school.index', '33', '2', '1', '1');
INSERT INTO `fun_menus` VALUES ('35', '品类列表', 'admin.category.index', '33', '2', '3', '1');
INSERT INTO `fun_menus` VALUES ('36', '食堂列表', 'admin.canteen.index', '33', '2', '2', '1');
INSERT INTO `fun_menus` VALUES ('37', '商家管理', '', '0', '1', '4', '1');
INSERT INTO `fun_menus` VALUES ('38', '骑手管理', '', '0', '1', '5', '1');
INSERT INTO `fun_menus` VALUES ('39', '反馈管理', '', '0', '1', '5', '1');
INSERT INTO `fun_menus` VALUES ('40', '意向管理', '', '0', '1', '7', '1');
INSERT INTO `fun_menus` VALUES ('41', '会员管理', '', '0', '1', '6', '1');
INSERT INTO `fun_menus` VALUES ('42', '商家列表', 'admin.shop.index', '37', '2', '1', '1');
INSERT INTO `fun_menus` VALUES ('43', '审核列表', 'admin.shop.check_index', '37', '2', '3', '1');
INSERT INTO `fun_menus` VALUES ('45', '骑手列表', 'admin.rider.index', '38', '2', '1', '1');
INSERT INTO `fun_menus` VALUES ('46', '审核列表', 'admin.rider.check_index', '38', '2', '1', '1');
INSERT INTO `fun_menus` VALUES ('47', '意向商家列表', 'admin.merchant_intention.index', '40', '2', '1', '1');
INSERT INTO `fun_menus` VALUES ('48', '意向骑手列表', 'admin.rider_intention.index', '40', '2', '1', '1');
INSERT INTO `fun_menus` VALUES ('49', '反馈列表', 'admin.feedback.index', '39', '2', '1', '1');
INSERT INTO `fun_menus` VALUES ('50', '会员列表', 'admin.user.index', '41', '2', '1', '1');
INSERT INTO `fun_menus` VALUES ('51', '回收站', 'admin.user.recycleIndex', '41', '2', '1', '1');

-- ----------------------------
-- Table structure for fun_merchant_intentions
-- ----------------------------
DROP TABLE IF EXISTS `fun_merchant_intentions`;
CREATE TABLE `fun_merchant_intentions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL COMMENT '用户表主键值',
  `school_id` smallint(4) NOT NULL DEFAULT '0' COMMENT '学校编号（开店所在学校）',
  `manage_category_id` smallint(4) NOT NULL DEFAULT '0' COMMENT '经营品类编号（经营品类）',
  `name` varchar(10) NOT NULL DEFAULT '' COMMENT '姓名',
  `phone` bigint(11) NOT NULL DEFAULT '0' COMMENT '手机号',
  `add_time` int(10) NOT NULL DEFAULT '0' COMMENT '记录时间',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1未处理 2已处理 3不处理',
  PRIMARY KEY (`id`),
  KEY `merchant_enter_user` (`user_id`),
  KEY `merchant_enter_school` (`school_id`),
  KEY `merchant_enter_manage_category` (`manage_category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商家入驻【意向表单】';

-- ----------------------------
-- Records of fun_merchant_intentions
-- ----------------------------

-- ----------------------------
-- Table structure for fun_orders
-- ----------------------------
DROP TABLE IF EXISTS `fun_orders`;
CREATE TABLE `fun_orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `orders_sn` varchar(30) NOT NULL DEFAULT '' COMMENT '订单编号',
  `user_id` int(10) NOT NULL DEFAULT '0' COMMENT '用户表主键值',
  `shop_id` smallint(4) NOT NULL DEFAULT '0' COMMENT '商家表主键值',
  `rider_id` smallint(4) DEFAULT '0' COMMENT '骑手表主键值',
  `address` text CHARACTER SET utf8 NOT NULL COMMENT '收货地址',
  `pay_mode` tinyint(1) DEFAULT '1' COMMENT '支付方式（1微信支付 2支付宝支付）',
  `source` tinyint(1) DEFAULT '1' COMMENT '订单来源（1 小程序 2 h5）',
  `trade_no` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '支付交易单号',
  `money` decimal(10,2) NOT NULL COMMENT '订单实付金额',
  `total_money` decimal(10,2) NOT NULL COMMENT '订单总价',
  `num` smallint(4) unsigned NOT NULL COMMENT '订单商品总数量',
  `active_type` varchar(20) CHARACTER SET utf8 DEFAULT '' COMMENT '活动类型',
  `add_time` int(10) NOT NULL COMMENT '订单创建时间',
  `plan_arrive_time` int(10) DEFAULT NULL COMMENT '骑手预计送达时间',
  `pay_time` int(10) DEFAULT NULL COMMENT '订单支付时间（商家已接单）',
  `cancle_time` int(10) DEFAULT NULL COMMENT '订单取消时间',
  `shop_receive_time` int(10) DEFAULT NULL COMMENT '商家接单（拒单）时间',
  `rider_receive_time` int(10) DEFAULT NULL COMMENT '骑手接单时间',
  `send_time` int(10) DEFAULT NULL COMMENT '骑手开始配送时间',
  `issuing_time` int(10) DEFAULT NULL COMMENT '商家出单时间',
  `trading_closed_time` int(10) DEFAULT NULL COMMENT '交易关闭时间',
  `arrive_time` int(10) DEFAULT NULL COMMENT '骑手订单已送达时间(未评价)',
  `complete_time` int(10) DEFAULT NULL COMMENT '订单完成时间(已评价)',
  `message` varchar(60) CHARACTER SET utf8 DEFAULT '' COMMENT '订单备注',
  `status` tinyint(2) unsigned DEFAULT '1' COMMENT '1:订单待支付;2等待商家接单;3商家已接单;4商家拒绝接单;5骑手取货中;6骑手配送中;7订单已送达;8订单已完成;9订单已取消;10退款中;11退款成功;12退款失败',
  `pay_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0未支付 1已支付',
  `ping_fee` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单配送费',
  `box_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单包装费（餐盒费）',
  `shop_discounts_id` int(10) DEFAULT '0' COMMENT '商家优惠券主键值',
  `shop_discounts_money` decimal(10,2) DEFAULT '0.00' COMMENT '商家优惠券折扣金额',
  `platform_coupon_id` int(10) DEFAULT '0' COMMENT '平台优惠券主键值',
  `platform_coupon_money` decimal(10,2) DEFAULT '0.00' COMMENT '平台优惠券折扣金额',
  `issuing_status` int(1) NOT NULL DEFAULT '0' COMMENT '出餐状态: 1 商家已出餐 ; 0 商家未出餐',
  `meal_sn` int(10) unsigned DEFAULT NULL COMMENT '店铺当天的取餐号',
  `platform_choucheng` decimal(10,2) DEFAULT '0.00' COMMENT '平台抽成',
  `shitang_choucheng` decimal(10,2) DEFAULT '0.00' COMMENT '食堂抽成',
  `hongbao_choucheng` decimal(10,2) DEFAULT '0.00' COMMENT '红包抽成',
  `save_time` date NOT NULL DEFAULT '0000-00-00' COMMENT '下单日期',
  `school_id` int(11) NOT NULL DEFAULT '0' COMMENT '学校主键值',
  `hourse_id` int(11) NOT NULL DEFAULT '0' COMMENT '楼栋主键值',
  PRIMARY KEY (`id`),
  KEY `user_orders` (`user_id`) USING BTREE,
  KEY `shop_orders` (`shop_id`) USING BTREE,
  KEY `rider_orders` (`rider_id`) USING BTREE,
  KEY `orders_sn` (`orders_sn`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COMMENT='订单表';

-- ----------------------------
-- Records of fun_orders
-- ----------------------------
INSERT INTO `fun_orders` VALUES ('1', 'D191118600833528432', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"杨涛\",\"phone\":\"18751951424\",\"latitude\":0,\"longitude\":0,\"house_number\":\"120\"}', '1', '1', '4200000462201911182788813230', '0.01', '0.01', '1', '', '1574060083', '1574061887', '1574060087', null, '1574060087', '1574062225', '1574069089', null, null, '1574069095', null, '', '7', '1', '0.00', '0.00', '0', '0.00', '0', '0.00', '0', '2', '0.00', '0.00', '0.00', '2019-11-18', '13', '5');
INSERT INTO `fun_orders` VALUES ('2', 'D191118618978533137', '43', '49', '71', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"杨涛\",\"phone\":\"18751951424\",\"latitude\":0,\"longitude\":0,\"house_number\":\"120\"}', '1', '1', '4200000464201911182260721575', '0.01', '0.01', '1', '', '1574061897', '1574063704', '1574061904', null, '1574061904', '1574063182', '1574063271', null, null, '1574065315', null, '', '7', '1', '0.00', '0.00', '0', '0.00', '0', '0.00', '0', '3', '0.00', '0.00', '0.00', '2019-11-18', '13', '5');
INSERT INTO `fun_orders` VALUES ('3', 'D191118630985604564', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"杨涛\",\"phone\":\"18751951424\",\"latitude\":0,\"longitude\":0,\"house_number\":\"120\"}', '1', '1', '4200000461201911187847115178', '0.03', '0.03', '1', '', '1574063098', '1574064904', '1574063104', null, '1574063104', '1574063168', '1574069090', null, null, '1574069092', null, '', '7', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '4', '0.00', '0.00', '0.00', '2019-11-18', '13', '5');
INSERT INTO `fun_orders` VALUES ('4', 'D191118632688680310', '43', '49', '71', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"杨涛\",\"phone\":\"18751951424\",\"latitude\":0,\"longitude\":0,\"house_number\":\"120\"}', '1', '1', '4200000453201911181693785408', '0.03', '0.03', '1', '', '1574063268', '1574065072', '1574063272', null, '1574063272', '1574063296', '1574065296', null, null, '1574065311', null, '', '7', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '5', '0.00', '0.00', '0.00', '2019-11-18', '13', '5');
INSERT INTO `fun_orders` VALUES ('5', 'D191118633616279667', '43', '49', '71', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"杨涛\",\"phone\":\"18751951424\",\"latitude\":0,\"longitude\":0,\"house_number\":\"120\"}', '1', '1', '4200000457201911182848120904', '0.03', '0.03', '1', '', '1574063361', '1574065166', '1574063366', null, '1574063366', '1574065177', '1574065264', null, null, '1574065287', null, '', '7', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '6', '0.00', '0.00', '0.00', '2019-11-18', '13', '5');
INSERT INTO `fun_orders` VALUES ('6', 'D191118651181276568', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"杨涛\",\"phone\":\"18751951424\",\"latitude\":0,\"longitude\":0,\"house_number\":\"120\"}', '1', '1', '4200000470201911183036670328', '0.03', '0.03', '1', '', '1574065118', '1574065458', '1574065158', null, '1574065158', '1574065168', '1574069096', null, null, '1574069098', null, '', '7', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '7', '0.00', '0.00', '0.00', '2019-11-18', '13', '5');
INSERT INTO `fun_orders` VALUES ('7', 'D191118656931096455', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"杨涛\",\"phone\":\"18751951424\",\"latitude\":0,\"longitude\":0,\"house_number\":\"120\"}', '1', '1', '4200000469201911184527330053', '0.03', '0.03', '1', '', '1574065693', '1574066011', '1574065697', null, '1574065711', '1574663474', '1574663479', null, null, '1574663480', null, '', '7', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '8', '0.00', '0.00', '0.00', '2019-11-18', '13', '5');
INSERT INTO `fun_orders` VALUES ('8', 'D191118684486405861', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"杨涛\",\"phone\":\"18751951424\",\"latitude\":0,\"longitude\":0,\"house_number\":\"120\"}', '1', '1', '4200000456201911189432582258', '0.03', '0.03', '1', '', '1574068448', '1574068771', '1574068453', null, '1574068471', '1574663463', '1574663466', null, null, '1574663467', null, '', '7', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '9', '0.00', '0.00', '0.00', '2019-11-18', '13', '5');
INSERT INTO `fun_orders` VALUES ('9', 'D191118691089328760', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"杨涛\",\"phone\":\"18751951424\",\"latitude\":0,\"longitude\":0,\"house_number\":\"120\"}', '1', '1', '4200000456201911187150041750', '0.03', '0.03', '1', '', '1574069108', '1574069489', '1574069115', null, '1574069189', '1574663461', '1574663470', null, null, '1574663471', null, '', '7', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '10', '0.00', '0.00', '0.00', '2019-11-18', '13', '5');
INSERT INTO `fun_orders` VALUES ('10', 'D191118692542692635', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"杨涛\",\"phone\":\"18751951424\",\"latitude\":0,\"longitude\":0,\"house_number\":\"120\"}', '1', '1', '4200000460201911182586479038', '0.03', '0.03', '1', '', '1574069254', '1574069560', '1574069258', null, '1574069261', '1574663452', '1574663457', null, null, '1574663459', null, '', '7', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '11', '0.00', '0.00', '0.00', '2019-11-18', '13', '5');
INSERT INTO `fun_orders` VALUES ('11', 'D191118700507468121', '43', '49', '0', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"杨涛\",\"phone\":\"18751951424\",\"latitude\":0,\"longitude\":0,\"house_number\":\"120\"}', '1', '1', '', '0.03', '0.03', '1', '', '1574070050', null, null, null, null, null, null, null, '1574070961', null, null, '', '9', '0', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', null, '0.00', '0.00', '0.00', '2019-11-18', '13', '5');
INSERT INTO `fun_orders` VALUES ('12', 'D191119348058292233', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"杨涛\",\"phone\":\"18751951424\",\"latitude\":0,\"longitude\":0,\"house_number\":\"120\"}', '1', '1', '4200000469201911192199626508', '1.30', '3.30', '1', '', '1574134805', '1574135125', '1574134813', null, '1574134825', '1574146064', '1574146070', null, null, '1574146095', null, '', '7', '1', '0.00', '0.00', '19', '2.00', '0', '0.00', '0', '1', '0.09', '0.09', '0.00', '2019-11-19', '13', '5');
INSERT INTO `fun_orders` VALUES ('13', 'D191119453683866012', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"杨涛\",\"phone\":\"18751951424\",\"latitude\":0,\"longitude\":0,\"house_number\":\"120\"}', '1', '1', '4200000453201911194461570734', '6.20', '14.20', '1', '', '1574145368', '1574146379', '1574145373', null, '1574146079', '1574146086', '1574146091', null, null, '1574146093', null, '', '7', '1', '0.00', '1.00', '16', '3.00', '62', '5.00', '0', '2', '0.18', '0.33', '0.00', '2019-11-19', '13', '5');
INSERT INTO `fun_orders` VALUES ('14', 'D191119484354524240', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"杨涛\",\"phone\":\"18751951424\",\"latitude\":0,\"longitude\":0,\"house_number\":\"120\"}', '1', '1', '4200000466201911195756179412', '1.30', '3.30', '1', '', '1574148435', '1574148755', '1574148443', null, '1574148455', '1574148468', '1574148473', null, null, '1574148474', null, '', '7', '1', '0.00', '0.00', '19', '2.00', '0', '0.00', '0', '3', '0.06', '0.06', '0.00', '2019-11-19', '13', '5');
INSERT INTO `fun_orders` VALUES ('15', 'D191119668715658204', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"杨涛\",\"phone\":\"18751951424\",\"latitude\":0,\"longitude\":0,\"house_number\":\"120\"}', '1', '1', '4200000466201911195715511640', '0.03', '0.03', '1', '', '1574166871', '1574167187', '1574166878', null, '1574166887', '1574663443', '1574663448', null, null, '1574663450', null, '', '7', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '4', '0.00', '0.00', '0.00', '2019-11-19', '13', '5');
INSERT INTO `fun_orders` VALUES ('16', 'D191125638881231271', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"舜宇9层 有米科技\",\"name\":\"杨涛\",\"phone\":\"18751951424\",\"latitude\":0,\"longitude\":0,\"house_number\":\"有米科技\"}', '1', '1', '4200000457201911259726241263', '11.20', '14.20', '1', '', '1574663888', '1574664202', '1574663895', null, '1574663902', '1574666054', '1574666061', null, null, '1574666063', null, '', '11', '1', '0.00', '1.00', '74', '3.00', '0', '0.00', '0', '1', '0.33', '0.33', '0.00', '2019-11-25', '13', '5');
INSERT INTO `fun_orders` VALUES ('17', 'D191125666779571542', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"杨涛\",\"phone\":\"18751951424\",\"latitude\":0,\"longitude\":0,\"house_number\":\"120\"}', '1', '1', '4200000469201911258566619080', '6.20', '14.20', '1', '', '1574666677', '1574666984', '1574666684', null, '1574666684', '1574666709', '1574666714', null, null, '1574666716', null, '', '12', '1', '0.00', '1.00', '74', '3.00', '63', '5.00', '0', '2', '0.18', '0.33', '0.00', '2019-11-25', '13', '5');
INSERT INTO `fun_orders` VALUES ('18', 'D191125680205741523', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"杨涛\",\"phone\":\"18751951424\",\"latitude\":0,\"longitude\":0,\"house_number\":\"120\"}', '1', '1', '4200000456201911258597065779', '6.03', '6.03', '1', '', '1574668020', '1574668327', '1574668027', null, '1574668027', '1574668035', '1574668040', null, null, '1574668041', null, '', '11', '1', '6.00', '0.02', '0', '0.00', '0', '0.00', '0', '3', '0.00', '0.00', '0.00', '2019-11-25', '13', '5');
INSERT INTO `fun_orders` VALUES ('19', 'D191125708495584489', '42', '49', '0', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"舜宇10层 1002\",\"name\":\"1\",\"phone\":\"18758969899\",\"latitude\":0,\"longitude\":0,\"house_number\":\"12\"}', '1', '1', '', '9.30', '9.30', '1', '', '1574670849', null, null, null, null, null, null, null, '1574671801', null, null, '', '9', '0', '6.00', '0.00', '0', '0.00', '0', '0.00', '0', null, '0.00', '0.00', '0.00', '2019-11-25', '13', '35');
INSERT INTO `fun_orders` VALUES ('20', 'D191125709708193287', '42', '49', '0', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"舜宇10层 1002\",\"name\":\"1\",\"phone\":\"18758969899\",\"latitude\":0,\"longitude\":0,\"house_number\":\"12\"}', '1', '1', '', '6.03', '6.03', '1', '', '1574670970', null, null, null, null, null, null, null, '1574671921', null, null, '', '9', '0', '6.00', '0.02', '0', '0.00', '0', '0.00', '0', null, '0.00', '0.00', '0.00', '2019-11-25', '13', '35');
INSERT INTO `fun_orders` VALUES ('21', 'D191125711686399993', '43', '49', '71', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"杨涛\",\"phone\":\"18751951424\",\"latitude\":0,\"longitude\":0,\"house_number\":\"120\"}', '1', '1', '4200000461201911250646375229', '0.03', '0.03', '1', '', '1574671168', '1574671475', '1574671175', null, '1574671175', '1574762916', '1574676324', null, null, '1574676392', null, '', '5', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '4', '0.00', '0.00', '0.00', '2019-11-25', '13', '5');
INSERT INTO `fun_orders` VALUES ('22', 'D191125721071499470', '42', '49', '0', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"Mike\",\"phone\":\"18788888888\",\"latitude\":0,\"longitude\":0,\"house_number\":\"111\"}', '1', '1', '', '0.03', '0.03', '1', '', '1574672107', null, null, null, null, null, null, null, '1574673061', null, null, '', '9', '0', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', null, '0.00', '0.00', '0.00', '2019-11-25', '13', '5');
INSERT INTO `fun_orders` VALUES ('23', 'D191126364754895629', '42', '49', '0', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"q\",\"phone\":\"18888888888\",\"latitude\":0,\"longitude\":0,\"house_number\":\"\"}', '1', '1', '', '0.03', '0.03', '1', '', '1574736475', null, null, null, null, null, null, null, '1574737381', null, null, '', '9', '0', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', null, '0.00', '0.00', '0.00', '2019-11-26', '13', '5');
INSERT INTO `fun_orders` VALUES ('24', 'D191127219359663675', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"舜宇二层 202\",\"name\":\"杨涛\",\"phone\":\"18751951424\",\"latitude\":0,\"longitude\":0,\"house_number\":\"206\"}', '1', '1', '4200000462201911272072851354', '0.03', '0.03', '1', '', '1574821935', '1574822242', '1574821942', null, '1574821942', '1574910602', '1574910608', '1574840632', null, '1574910609', null, '', '7', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '1', '1', '0.00', '0.00', '0.00', '2019-11-27', '13', '9');
INSERT INTO `fun_orders` VALUES ('25', 'D191128043205992992', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"舜宇二层 202\",\"name\":\"杨涛\",\"phone\":\"18751951424\",\"latitude\":0,\"longitude\":0,\"house_number\":\"206\"}', '1', '1', '4200000457201911285872017345', '0.03', '0.03', '1', '', '1574904320', '1574904629', '1574904329', null, '1574904329', '1574910612', '1574910619', null, null, '1574910620', null, '', '7', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '1', '0.00', '0.00', '0.00', '2019-11-28', '13', '9');
INSERT INTO `fun_orders` VALUES ('26', 'D191128238926912417', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"杨涛\",\"phone\":\"18751951424\",\"latitude\":0,\"longitude\":0,\"house_number\":\"4946565656566565\"}', '1', '1', '4200000465201911281816094865', '0.03', '0.03', '1', '', '1574923892', '1574924200', '1574923900', null, '1574923900', '1574925275', '1574925279', null, null, '1574925280', null, '', '7', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '2', '0.00', '0.00', '0.00', '2019-11-28', '13', '5');
INSERT INTO `fun_orders` VALUES ('27', 'D191128249731891546', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"杨涛\",\"phone\":\"18751951424\",\"latitude\":0,\"longitude\":0,\"house_number\":\"4946565656566565\"}', '1', '1', '4200000456201911285906974048', '0.03', '0.03', '1', '', '1574924973', '1574925281', '1574924981', null, '1574924981', '1574925273', '1574925283', null, null, '1574925285', null, '', '7', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '3', '0.00', '0.00', '0.00', '2019-11-28', '13', '5');
INSERT INTO `fun_orders` VALUES ('28', 'D191128250789982985', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"杨涛\",\"phone\":\"18751951424\",\"latitude\":0,\"longitude\":0,\"house_number\":\"4946565656566565\"}', '1', '1', '4200000457201911284832138062', '0.03', '0.03', '1', '', '1574925078', '1574925385', '1574925085', null, '1574925085', '1574925255', '1574925262', null, null, '1574925264', null, '', '7', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '4', '0.00', '0.00', '0.00', '2019-11-28', '13', '0');
INSERT INTO `fun_orders` VALUES ('29', 'D191128261526833614', '43', '49', '0', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"杨涛\",\"phone\":\"18751951424\",\"latitude\":0,\"longitude\":0,\"house_number\":\"4946565656566565\"}', '1', '1', '', '0.03', '0.03', '1', '', '1574926152', null, null, '1574926156', null, null, null, null, '1574927101', null, null, '', '9', '0', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', null, '0.00', '0.00', '0.00', '2019-11-28', '13', '0');
INSERT INTO `fun_orders` VALUES ('30', 'D191128270434136340', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"舜宇二层 202\",\"name\":\"杨涛\",\"phone\":\"18751951424\",\"latitude\":0,\"longitude\":0,\"house_number\":\"1\"}', '1', '1', '4200000462201911289651013492', '0.03', '0.03', '1', '', '1574927043', '1574927467', '1574927148', null, '1574927167', '1574930420', '1574930425', null, null, '1574930428', null, '', '7', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '5', '0.00', '0.00', '0.00', '2019-11-28', '13', '9');
INSERT INTO `fun_orders` VALUES ('31', 'D191128271983827593', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"杨涛\",\"phone\":\"18751951424\",\"latitude\":0,\"longitude\":0,\"house_number\":\"4946565656566565\"}', '1', '1', '4200000461201911286864575420', '0.03', '0.03', '1', '', '1574927198', '1574927530', '1574927205', null, '1574927230', '1574930408', '1574930411', null, null, '1574930413', null, '', '7', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '6', '0.00', '0.00', '0.00', '2019-11-28', '13', '0');
INSERT INTO `fun_orders` VALUES ('32', 'D191128273072576611', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"杨涛\",\"phone\":\"18751951424\",\"latitude\":0,\"longitude\":0,\"house_number\":\"4946565656566565\"}', '1', '1', '4200000463201911284575106551', '0.03', '0.03', '1', '', '1574927307', '1574927768', '1574927459', null, '1574927468', '1574930406', '1574930416', null, null, '1574930417', null, '', '7', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '8', '0.00', '0.00', '0.00', '2019-11-28', '13', '0');
INSERT INTO `fun_orders` VALUES ('33', 'D191128273151975042', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"1231\",\"phone\":\"13567567567\",\"latitude\":0,\"longitude\":0,\"house_number\":\"22323123213213213213\"}', '1', '1', '4200000456201911281985646033', '0.03', '0.03', '1', '', '1574927315', '1574927714', '1574927401', null, '1574927414', '1574931189', '1574931225', null, null, '1574931226', null, '', '7', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '7', '0.00', '0.00', '0.00', '2019-11-28', '13', '5');
INSERT INTO `fun_orders` VALUES ('34', 'D191128307909898896', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"1231\",\"phone\":\"13567567567\",\"latitude\":0,\"longitude\":0,\"house_number\":\"22323123213213213213\"}', '1', '1', '4200000466201911281695926511', '0.03', '0.03', '1', '', '1574930790', '1574931106', '1574930795', null, '1574930806', '1574931184', '1574931229', '1574930886', null, '1574931231', null, '', '8', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '1', '9', '0.00', '0.00', '0.00', '2019-11-28', '13', '5');
INSERT INTO `fun_orders` VALUES ('35', 'D191128308999907134', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"1231\",\"phone\":\"13567567567\",\"latitude\":0,\"longitude\":0,\"house_number\":\"22323123213213213213\"}', '1', '1', '4200000454201911282280478644', '0.03', '0.03', '1', '', '1574930899', '1574931203', '1574930903', null, '1574930903', '1574931179', '1574931233', null, null, '1574931235', null, '', '7', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '10', '0.00', '0.00', '0.00', '2019-11-28', '13', '5');
INSERT INTO `fun_orders` VALUES ('36', 'D191128311099050585', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"1231\",\"phone\":\"13567567567\",\"latitude\":0,\"longitude\":0,\"house_number\":\"22323123213213213213\"}', '1', '1', '4200000454201911289446457377', '0.03', '0.03', '1', '', '1574931109', '1574931414', '1574931114', null, '1574931114', '1574931174', '1574931239', null, null, '1574931252', null, '', '7', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '11', '0.00', '0.00', '0.00', '2019-11-28', '13', '5');
INSERT INTO `fun_orders` VALUES ('37', 'D191202671488041456', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"舜宇二层 202\",\"name\":\"杨涛\",\"phone\":\"18751951424\",\"latitude\":0,\"longitude\":0,\"house_number\":\"1\"}', '1', '1', '4200000467201912027024988714', '0.03', '0.03', '1', '', '1575267148', '1575267455', '1575267155', null, '1575267155', '1575269670', '1575269675', null, null, '1575269677', null, '', '7', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '1', '0.00', '0.00', '0.00', '2019-12-02', '13', '9');
INSERT INTO `fun_orders` VALUES ('38', 'D191202697399384796', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"1231\",\"phone\":\"13567567567\",\"latitude\":0,\"longitude\":0,\"house_number\":\"22323123213213213213\"}', '1', '1', '4200000462201912029943978088', '0.03', '0.03', '1', '', '1575269739', '1575270045', '1575269745', null, '1575269745', '1576034847', '1576034871', null, null, '1576034873', null, '', '7', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '2', '0.00', '0.00', '0.00', '2019-12-02', '13', '5');
INSERT INTO `fun_orders` VALUES ('39', 'D191202697864394972', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"1231\",\"phone\":\"13567567567\",\"latitude\":0,\"longitude\":0,\"house_number\":\"22323123213213213213\"}', '1', '1', '4200000462201912023004210922', '0.03', '0.03', '1', '', '1575269786', '1575270090', '1575269790', null, '1575269790', '1575275656', '1575275698', null, null, '1575275700', null, '', '7', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '3', '0.00', '0.00', '0.00', '2019-12-02', '13', '5');
INSERT INTO `fun_orders` VALUES ('40', 'D191202698003734797', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"1231\",\"phone\":\"13567567567\",\"latitude\":0,\"longitude\":0,\"house_number\":\"22323123213213213213\"}', '1', '1', '4200000462201912028745023138', '0.03', '0.03', '1', '', '1575269800', '1575270104', '1575269804', null, '1575269804', '1575275611', '1575275703', null, null, '1575275706', null, '', '7', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '4', '0.00', '0.00', '0.00', '2019-12-02', '13', '5');
INSERT INTO `fun_orders` VALUES ('41', 'D191202698101171385', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"1231\",\"phone\":\"13567567567\",\"latitude\":0,\"longitude\":0,\"house_number\":\"22323123213213213213\"}', '1', '1', '4200000460201912026699587675', '0.03', '0.03', '1', '', '1575269810', '1575270113', '1575269813', null, '1575269813', '1575275607', '1575276628', null, null, '1575276631', null, '', '7', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '5', '0.00', '0.00', '0.00', '2019-12-02', '13', '5');
INSERT INTO `fun_orders` VALUES ('42', 'D191202698202220600', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"1231\",\"phone\":\"13567567567\",\"latitude\":0,\"longitude\":0,\"house_number\":\"22323123213213213213\"}', '1', '1', '4200000457201912022103439672', '0.03', '0.03', '1', '', '1575269820', '1575270124', '1575269824', null, '1575269824', '1575270165', '1575274958', null, null, '1575275418', null, '', '7', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '6', '0.00', '0.00', '0.00', '2019-12-02', '13', '5');
INSERT INTO `fun_orders` VALUES ('43', 'D191202700409507934', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"1231\",\"phone\":\"13567567567\",\"latitude\":0,\"longitude\":0,\"house_number\":\"22323123213213213213\"}', '1', '1', '4200000465201912024502007155', '0.03', '0.03', '1', '', '1575270040', '1575270346', '1575270046', null, '1575270046', '1575270163', '1575270205', null, null, '1575270322', null, '', '7', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '7', '0.00', '0.00', '0.00', '2019-12-02', '13', '5');
INSERT INTO `fun_orders` VALUES ('44', 'D191202701503118405', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"1231\",\"phone\":\"13567567567\",\"latitude\":0,\"longitude\":0,\"house_number\":\"22323123213213213213\"}', '1', '1', '4200000469201912029827800853', '0.03', '0.03', '1', '', '1575270150', '1575270486', '1575270154', null, '1575270186', '1575270308', '1575270319', null, null, '1575275616', null, '', '7', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '8', '0.00', '0.00', '0.00', '2019-12-02', '13', '5');
INSERT INTO `fun_orders` VALUES ('45', 'D191202737019005346', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"杨涛\",\"phone\":\"18751951424\",\"latitude\":0,\"longitude\":0,\"house_number\":\"4946565656566565\"}', '1', '1', '4200000454201912026174039576', '0.03', '0.03', '1', '', '1575273701', '1575274037', '1575273706', null, '1575273737', '1575275599', '1575275747', null, null, '1575352991', null, '', '7', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '9', '0.00', '0.00', '0.00', '2019-12-02', '13', '0');
INSERT INTO `fun_orders` VALUES ('46', 'D191202777268486519', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"杨涛\",\"phone\":\"18751951424\",\"latitude\":0,\"longitude\":0,\"house_number\":\"4946565656566565\"}', '1', '1', '4200000452201912023932965634', '0.03', '0.03', '1', '', '1575277726', '1575278053', '1575277732', null, '1575277753', '1576034990', '1576034994', null, null, '1576034996', null, '', '7', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '11', '0.00', '0.00', '0.00', '2019-12-02', '13', '0');
INSERT INTO `fun_orders` VALUES ('47', 'D191202777368646116', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"杨涛\",\"phone\":\"18751951424\",\"latitude\":0,\"longitude\":0,\"house_number\":\"4946565656566565\"}', '1', '1', '4200000463201912028427693298', '0.03', '0.03', '1', '', '1575277736', '1575278044', '1575277743', null, '1575277744', '1576034979', '1576035009', null, null, '1576035018', null, '', '7', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '10', '0.00', '0.00', '0.00', '2019-12-02', '13', '0');
INSERT INTO `fun_orders` VALUES ('48', 'D191202777649301870', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"杨涛\",\"phone\":\"18751951424\",\"latitude\":0,\"longitude\":0,\"house_number\":\"4946565656566565\"}', '1', '1', '4200000468201912027712991803', '0.03', '0.03', '1', '', '1575277764', '1575278072', '1575277769', null, '1575277772', '1576034987', '1576034998', null, null, '1576035000', null, '', '7', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '12', '0.00', '0.00', '0.00', '2019-12-02', '13', '0');
INSERT INTO `fun_orders` VALUES ('49', 'D191202777785488893', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"杨涛\",\"phone\":\"18751951424\",\"latitude\":0,\"longitude\":0,\"house_number\":\"4946565656566565\"}', '1', '1', '4200000463201912022940462591', '0.03', '0.03', '1', '', '1575277778', '1575278083', '1575277783', null, '1575277783', '1575278036', '1575352984', null, null, '1575352987', null, '', '7', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '13', '0.00', '0.00', '0.00', '2019-12-02', '13', '0');
INSERT INTO `fun_orders` VALUES ('50', 'D191202778116580653', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"杨涛\",\"phone\":\"18751951424\",\"latitude\":0,\"longitude\":0,\"house_number\":\"4946565656566565\"}', '1', '1', '4200000457201912024257155522', '0.03', '0.03', '1', '', '1575277811', '1575278116', '1575277816', null, '1575277816', '1575278031', '1575345276', null, null, '1575345279', null, '', '7', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '14', '0.00', '0.00', '0.00', '2019-12-02', '13', '0');
INSERT INTO `fun_orders` VALUES ('51', 'D191202778366432949', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"杨涛\",\"phone\":\"18751951424\",\"latitude\":0,\"longitude\":0,\"house_number\":\"4946565656566565\"}', '1', '1', '4200000455201912029620900018', '0.03', '0.03', '1', '', '1575277836', '1575278142', '1575277842', null, '1575277842', '1575278027', '1575281911', null, null, '1576034878', null, '', '7', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '15', '0.00', '0.00', '0.00', '2019-12-02', '13', '0');
INSERT INTO `fun_orders` VALUES ('52', 'D191202778620550291', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"杨涛\",\"phone\":\"18751951424\",\"latitude\":0,\"longitude\":0,\"house_number\":\"4946565656566565\"}', '1', '1', '4200000466201912023684521829', '0.03', '0.03', '1', '', '1575277862', '1575278342', '1575277866', null, '1575278042', '1576034983', '1576035003', null, null, '1576035004', null, '', '7', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '16', '0.00', '0.00', '0.00', '2019-12-02', '13', '0');
INSERT INTO `fun_orders` VALUES ('53', 'D191202786291039463', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"杨涛\",\"phone\":\"18751951424\",\"latitude\":0,\"longitude\":0,\"house_number\":\"4946565656566565\"}', '1', '1', '4200000467201912022028434672', '0.03', '0.03', '1', '', '1575278629', '1575278946', '1575278634', null, '1575278646', '1576034947', '1576034953', null, null, '1576034956', null, '', '7', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '17', '0.00', '0.00', '0.00', '2019-12-02', '13', '0');
INSERT INTO `fun_orders` VALUES ('54', 'D191202791311741489', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"杨涛\",\"phone\":\"18751951424\",\"latitude\":0,\"longitude\":0,\"house_number\":\"4946565656566565\"}', '1', '1', '4200000454201912021980170264', '0.03', '0.03', '1', '', '1575279131', '1575279449', '1575279138', null, '1575279149', '1576034942', '1576034959', null, null, '1576034961', null, '', '7', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '18', '0.00', '0.00', '0.00', '2019-12-02', '13', '0');
INSERT INTO `fun_orders` VALUES ('55', 'D191202792483816148', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"杨涛\",\"phone\":\"18751951424\",\"latitude\":0,\"longitude\":0,\"house_number\":\"4946565656566565\"}', '1', '1', '4200000454201912024592389150', '0.03', '0.03', '1', '', '1575279248', '1575279567', '1575279254', null, '1575279267', '1576034937', '1576034964', null, null, '1576034966', null, '', '7', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '19', '0.00', '0.00', '0.00', '2019-12-02', '13', '0');
INSERT INTO `fun_orders` VALUES ('56', 'D191202794800782348', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"杨涛\",\"phone\":\"18751951424\",\"latitude\":0,\"longitude\":0,\"house_number\":\"4946565656566565\"}', '1', '1', '4200000466201912027577489015', '0.03', '0.03', '1', '', '1575279480', '1575279803', '1575279484', null, '1575279503', '1576034934', '1576034969', null, null, '1576034971', null, '', '7', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '20', '0.00', '0.00', '0.00', '2019-12-02', '13', '0');
INSERT INTO `fun_orders` VALUES ('57', 'D191202798201015150', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"杨涛\",\"phone\":\"18751951424\",\"latitude\":0,\"longitude\":0,\"house_number\":\"4946565656566565\"}', '1', '1', '4200000453201912024565451230', '0.03', '0.03', '1', '', '1575279820', '1575280136', '1575279826', null, '1575279836', '1576034930', '1576034973', null, null, '1576034975', null, '', '7', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '21', '0.00', '0.00', '0.00', '2019-12-02', '13', '0');
INSERT INTO `fun_orders` VALUES ('58', 'D191202799904488103', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"杨涛\",\"phone\":\"18751951424\",\"latitude\":0,\"longitude\":0,\"house_number\":\"4946565656566565\"}', '1', '1', '4200000464201912024159271298', '0.03', '0.03', '1', '', '1575279990', '1575280299', '1575279999', null, '1575279999', '1576034895', '1576034904', null, null, '1576034905', null, '', '7', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '22', '0.00', '0.00', '0.00', '2019-12-02', '13', '0');
INSERT INTO `fun_orders` VALUES ('59', 'D191202800335452816', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"杨涛\",\"phone\":\"18751951424\",\"latitude\":0,\"longitude\":0,\"house_number\":\"4946565656566565\"}', '1', '1', '4200000461201912022370675878', '0.03', '0.03', '1', '', '1575280033', '1575280340', '1575280040', null, '1575280040', '1576034893', '1576034909', null, null, '1576034910', null, '', '7', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '23', '0.00', '0.00', '0.00', '2019-12-02', '13', '0');
INSERT INTO `fun_orders` VALUES ('60', 'D191202806167793713', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"杨涛\",\"phone\":\"18751951424\",\"latitude\":0,\"longitude\":0,\"house_number\":\"4946565656566565\"}', '1', '1', '4200000456201912025517968162', '0.03', '0.03', '1', '', '1575280616', '1575280923', '1575280623', null, '1575280623', '1576034887', '1576034913', null, null, '1576034915', null, '', '7', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '24', '0.00', '0.00', '0.00', '2019-12-02', '13', '0');
INSERT INTO `fun_orders` VALUES ('61', 'D191203449013371556', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"杨涛\",\"phone\":\"18751951424\",\"latitude\":0,\"longitude\":0,\"house_number\":\"4946565656566565\"}', '1', '1', '4200000452201912031242006719', '0.03', '0.03', '1', '', '1575344901', '1575345208', '1575344908', null, '1575344908', '1575353007', '1575371240', null, null, '1575957591', null, '', '7', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '1', '0.00', '0.00', '0.00', '2019-12-03', '13', '0');
INSERT INTO `fun_orders` VALUES ('62', 'D191203452527389050', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"杨涛\",\"phone\":\"18751951424\",\"latitude\":0,\"longitude\":0,\"house_number\":\"4946565656566565\"}', '1', '1', '4200000465201912036615405675', '0.03', '0.03', '1', '', '1575345252', '1575381256', '1575345256', null, '1575345256', '1576034883', '1576034919', null, null, '1576034920', null, '', '7', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '2', '0.00', '0.00', '0.00', '2019-12-03', '13', '0');
INSERT INTO `fun_orders` VALUES ('63', 'D191203710392074300', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"舜宇二层 201\",\"name\":\"杨涛\",\"phone\":\"18751951424\",\"latitude\":0,\"longitude\":0,\"house_number\":\"1\"}', '1', '1', '4200000463201912034410883722', '0.03', '0.03', '1', '', '1575371039', '1575407045', '1575371045', null, '1575371045', '1576034881', '1576034926', null, null, '1576034928', null, '', '7', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '3', '0.00', '0.00', '0.00', '2019-12-03', '13', '8');
INSERT INTO `fun_orders` VALUES ('64', 'D191203711128197675', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"舜宇二层 201\",\"name\":\"杨涛\",\"phone\":\"18751951424\",\"latitude\":0,\"longitude\":0,\"house_number\":\"1\"}', '1', '1', '4200000457201912039715956662', '0.03', '0.03', '1', '', '1575371112', '1575407118', '1575371118', null, '1575371118', '1576034856', '1576034861', null, null, '1576034862', null, '', '7', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '4', '0.00', '0.00', '0.00', '2019-12-03', '13', '8');
INSERT INTO `fun_orders` VALUES ('65', 'D191203711352326252', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"舜宇二层 201\",\"name\":\"杨涛\",\"phone\":\"18751951424\",\"latitude\":0,\"longitude\":0,\"house_number\":\"1\"}', '1', '1', '4200000470201912036742653595', '0.03', '0.03', '1', '', '1575371135', '1575407139', '1575371139', null, '1575371139', '1575371230', '1575371237', null, null, '1575371238', null, '', '7', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '5', '0.00', '0.00', '0.00', '2019-12-03', '13', '8');
INSERT INTO `fun_orders` VALUES ('66', 'D191203724655753075', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"舜宇二层 201\",\"name\":\"杨涛\",\"phone\":\"18751951424\",\"latitude\":0,\"longitude\":0,\"house_number\":\"1\"}', '1', '1', '4200000461201912039966095565', '0.03', '0.03', '1', '', '1575372465', '1575408470', '1575372470', null, '1575372470', '1576034852', '1576034866', null, null, '1576034868', null, '', '7', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '6', '0.00', '0.00', '0.00', '2019-12-03', '13', '8');
INSERT INTO `fun_orders` VALUES ('67', 'D191203770085043343', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"舜宇二层 201\",\"name\":\"杨涛\",\"phone\":\"18751951424\",\"latitude\":0,\"longitude\":0,\"house_number\":\"1\"}', '1', '1', '4200000462201912037103688682', '0.03', '0.03', '1', '', '1575377008', '1575413014', '1575377013', null, '1575377014', '1575957646', '1576034875', null, null, '1576034876', null, '', '7', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '7', '0.00', '0.00', '0.00', '2019-12-03', '13', '8');
INSERT INTO `fun_orders` VALUES ('68', 'D191209549623092692', '42', '49', '78', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"qq\",\"phone\":\"18748589699\",\"latitude\":0,\"longitude\":0,\"house_number\":\"undefined\"}', '1', '1', '4200000471201912096157928626', '0.03', '0.03', '1', '', '1575854962', '1575890970', '1575854970', null, '1575854970', '1575946861', '1575947460', null, null, '1575947464', null, '', '7', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '1', '0.00', '0.00', '0.00', '2019-12-09', '13', '5');
INSERT INTO `fun_orders` VALUES ('69', 'D191209556112419436', '43', '49', '78', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"舜宇二层 201\",\"name\":\"杨涛\",\"phone\":\"18751951424\",\"latitude\":0,\"longitude\":0,\"house_number\":\"1\"}', '1', '1', '4200000459201912099159434501', '0.03', '0.03', '1', '', '1575855611', '1575891616', '1575855616', null, '1575855616', '1575947421', '1575947456', null, null, '1575947458', null, '', '7', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '2', '0.00', '0.00', '0.00', '2019-12-09', '13', '8');
INSERT INTO `fun_orders` VALUES ('70', 'D191211471675699471', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"1231\",\"phone\":\"13567567567\",\"latitude\":0,\"longitude\":0,\"house_number\":\"22323123213213213213\"}', '1', '1', '4200000461201912112258433248', '0.03', '0.03', '1', '', '1576047167', '1576083196', '1576047196', null, '1576047196', '1576047744', null, null, null, null, null, '', '5', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '1', '0.00', '0.00', '0.00', '2019-12-11', '13', '5');
INSERT INTO `fun_orders` VALUES ('71', 'D191211472170712607', '43', '49', '0', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"1231\",\"phone\":\"13567567567\",\"latitude\":0,\"longitude\":0,\"house_number\":\"22323123213213213213\"}', '1', '1', '', '0.03', '0.03', '1', '', '1576047217', null, null, '1576047258', null, null, null, null, '1576048141', null, null, '', '9', '0', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', null, '0.00', '0.00', '0.00', '2019-12-11', '13', '5');
INSERT INTO `fun_orders` VALUES ('72', 'D191211472274994985', '43', '49', '0', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"1231\",\"phone\":\"13567567567\",\"latitude\":0,\"longitude\":0,\"house_number\":\"22323123213213213213\"}', '1', '1', '', '0.03', '0.03', '1', '', '1576047227', null, null, '1576047257', null, null, null, null, '1576048141', null, null, '', '9', '0', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', null, '0.00', '0.00', '0.00', '2019-12-11', '13', '5');
INSERT INTO `fun_orders` VALUES ('73', 'D191211473504149094', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"1231\",\"phone\":\"13567567567\",\"latitude\":0,\"longitude\":0,\"house_number\":\"22323123213213213213\"}', '1', '1', '4200000457201912112416336189', '0.06', '0.06', '2', '', '1576047350', '1576083354', '1576047354', null, '1576047354', '1576047742', null, null, null, null, null, '', '5', '1', '0.00', '0.04', '0', '0.00', '0', '0.00', '0', '2', '0.00', '0.00', '0.00', '2019-12-11', '13', '5');
INSERT INTO `fun_orders` VALUES ('74', 'D191211473586458493', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"1231\",\"phone\":\"13567567567\",\"latitude\":0,\"longitude\":0,\"house_number\":\"22323123213213213213\"}', '1', '1', '4200000455201912119741029264', '0.03', '0.03', '1', '', '1576047358', '1576083363', '1576047363', null, '1576047363', '1576047684', null, null, null, null, null, '', '5', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '3', '0.00', '0.00', '0.00', '2019-12-11', '13', '5');
INSERT INTO `fun_orders` VALUES ('75', 'D191211473671373372', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"1231\",\"phone\":\"13567567567\",\"latitude\":0,\"longitude\":0,\"house_number\":\"22323123213213213213\"}', '1', '1', '4200000464201912119596058907', '0.03', '0.03', '1', '', '1576047367', '1576083406', '1576047406', null, '1576047406', '1576047483', '1576047680', null, null, '1576047682', null, '', '7', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '4', '0.00', '0.00', '0.00', '2019-12-11', '13', '5');
INSERT INTO `fun_orders` VALUES ('77', 'D191211522304778431', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"1231\",\"phone\":\"13567567567\",\"latitude\":0,\"longitude\":0,\"house_number\":\"22323123213213213213\"}', '1', '1', '4200000460201912115076379279', '0.03', '0.03', '1', '', '1576052230', '1576088237', '1576052237', null, '1576052237', '1576052345', null, null, null, null, null, '', '5', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '5', '0.00', '0.00', '0.00', '2019-12-11', '13', '5');
INSERT INTO `fun_orders` VALUES ('78', 'D191211522706440927', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"北苑1 宿管2站 101\",\"name\":\"1231\",\"phone\":\"13567567567\",\"latitude\":0,\"longitude\":0,\"house_number\":\"22323123213213213213\"}', '1', '1', '4200000455201912115098300364', '0.03', '0.03', '1', '', '1576052270', '1576088276', '1576052276', null, '1576052276', '1576052317', null, null, null, null, null, '', '5', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '6', '0.00', '0.00', '0.00', '2019-12-11', '13', '5');
INSERT INTO `fun_orders` VALUES ('79', 'D191211523745738597', '43', '49', '72', '{\"school_name\":\"舜禹大厦\",\"area_detail\":\"舜宇二层 202\",\"name\":\"杨涛\",\"phone\":\"18751951424\",\"latitude\":0,\"longitude\":0,\"house_number\":\"1\"}', '1', '1', '4200000455201912114854054069', '0.03', '0.03', '1', '', '1576052374', '1576088379', '1576052379', null, '1576052379', '1576052481', null, null, null, null, null, '', '5', '1', '0.00', '0.02', '0', '0.00', '0', '0.00', '0', '7', '0.00', '0.00', '0.00', '2019-12-11', '13', '9');

-- ----------------------------
-- Table structure for fun_products
-- ----------------------------
DROP TABLE IF EXISTS `fun_products`;
CREATE TABLE `fun_products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '商品名称',
  `shop_id` smallint(4) NOT NULL DEFAULT '0' COMMENT '商家主键值',
  `product_classify_id` smallint(4) NOT NULL DEFAULT '0' COMMENT '商品分类主键值',
  `price` float(10,2) NOT NULL DEFAULT '0.00' COMMENT '售价',
  `old_price` float(10,2) NOT NULL DEFAULT '0.00' COMMENT '原价',
  `thumb` varchar(300) NOT NULL COMMENT '商品封面图',
  `imgs` varchar(900) DEFAULT NULL COMMENT '商品轮播图',
  `info` varchar(200) NOT NULL DEFAULT '' COMMENT '商品详情',
  `box_money` float(10,2) DEFAULT '0.00' COMMENT '餐盒费',
  `sales` smallint(4) NOT NULL DEFAULT '0' COMMENT '月销量',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '设置热销（1普通商品 2热销商品 3优惠）',
  `attribute_ids` varchar(100) DEFAULT NULL COMMENT '一级商品规格属性主键值集合',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态（1上线， 2下线）',
  `delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0未删除，1删除',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `shop_product` (`shop_id`) USING BTREE,
  KEY `product_products_classify` (`product_classify_id`)
) ENGINE=InnoDB AUTO_INCREMENT=328 DEFAULT CHARSET=utf8 COMMENT='商品信息表';

-- ----------------------------
-- Records of fun_products
-- ----------------------------
INSERT INTO `fun_products` VALUES ('1', '绝世神鸭', '1', '1', '26.00', '1.00', 'http://picture.daigefan.com/74c89201907051636437863.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '绝世大鸭脖', '0.00', '0', '0', '6,10', '2', '0', '0');
INSERT INTO `fun_products` VALUES ('2', '绝世神鸭', '1', '1', '26.00', '1.00', 'http://picture.daigefan.com/74c89201907051636437863.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '绝世大鸭脖', '0.00', '0', '0', '1', '2', '0', '0');
INSERT INTO `fun_products` VALUES ('3', '绝世神鸭', '1', '1', '26.00', '1.00', 'http://picture.daigefan.com/74c89201907051636437863.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '绝世大鸭脖', '0.00', '0', '0', '1', '2', '0', '0');
INSERT INTO `fun_products` VALUES ('4', '绝世神鸭', '1', '1', '26.00', '1.00', 'http://picture.daigefan.com/74c89201907051636437863.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '绝世大鸭脖', '0.00', '0', '2', '1', '2', '0', '0');
INSERT INTO `fun_products` VALUES ('5', '绝世神鸭', '1', '1', '26.00', '1.00', 'http://picture.daigefan.com/74c89201907051636437863.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '绝世大鸭脖', '0.00', '0', '2', '1', '2', '0', '0');
INSERT INTO `fun_products` VALUES ('6', '绝世神鸭', '1', '1', '26.00', '1.00', 'http://picture.daigefan.com/74c89201907051636437863.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '绝世大鸭脖', '0.00', '0', '2', '1', '2', '0', '0');
INSERT INTO `fun_products` VALUES ('7', '绝世神鸭', '1', '1', '26.00', '1.00', 'http://picture.daigefan.com/74c89201907051636437863.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '绝世大鸭脖', '0.00', '0', '2', '1', '2', '0', '0');
INSERT INTO `fun_products` VALUES ('8', '绝世神鸭', '1', '1', '26.00', '1.00', 'http://picture.daigefan.com/74c89201907051636437863.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '绝世大鸭脖', '0.00', '0', '2', '1', '2', '0', '0');
INSERT INTO `fun_products` VALUES ('9', '绝世神鸭', '1', '1', '26.00', '1.00', 'http://picture.daigefan.com/74c89201907051636437863.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '绝世大鸭脖', '0.00', '0', '2', '1', '2', '0', '0');
INSERT INTO `fun_products` VALUES ('10', '绝世神鸭', '1', '1', '26.00', '1.00', 'http://picture.daigefan.com/74c89201907051636437863.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '绝世大鸭脖', '0.00', '0', '1', '1', '2', '0', '0');
INSERT INTO `fun_products` VALUES ('11', '绝世神鸭', '1', '1', '26.00', '1.00', 'http://picture.daigefan.com/74c89201907051636437863.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '绝世大鸭脖白茶拉了个', '0.00', '0', '2', '1', '2', '0', '0');
INSERT INTO `fun_products` VALUES ('12', '绝世神鸭', '1', '1', '26.00', '1.00', 'http://picture.daigefan.com/74c89201907051636437863.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '绝世大鸭脖白茶拉了个', '0.00', '0', '2', '1', '2', '0', '0');
INSERT INTO `fun_products` VALUES ('13', '烤肉', '3', '4', '3.00', '4.00', 'http://picture.daigefan.com/342fe201907241802531296.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '烤肉', '0.00', '0', '0', '5', '1', '0', '0');
INSERT INTO `fun_products` VALUES ('14', '66', '21', '3', '6.00', '1.00', '', '', '111111', '0.00', '0', '0', '4', '1', '0', '0');
INSERT INTO `fun_products` VALUES ('15', '66', '21', '3', '6.00', '1.00', 'http://picture.daigefan.com/ad90a201907051646228642.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '111111', '0.00', '0', '0', '4', '1', '0', '0');
INSERT INTO `fun_products` VALUES ('16', '66', '21', '3', '6.00', '1.00', 'http://picture.daigefan.com/ad90a201907051646228642.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '111111', '0.00', '0', '0', '4', '1', '0', '0');
INSERT INTO `fun_products` VALUES ('17', '烤肉', '3', '4', '0.01', '1.00', 'http://picture.daigefan.com/5aa78201907241803541543.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '烤肉', '0.00', '0', '0', '5', '1', '0', '0');
INSERT INTO `fun_products` VALUES ('18', '66', '21', '3', '6.00', '1.00', 'http://picture.daigefan.com/ad90a201907051646228642.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '111111', '0.00', '0', '2', '4', '1', '0', '0');
INSERT INTO `fun_products` VALUES ('19', '牛肉便当', '2', '42', '2.00', '1.00', 'http://picture.daigefan.com/576ad201907151625021122.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '牛肉拌饭', '0.00', '0', '2', '', '2', '0', '0');
INSERT INTO `fun_products` VALUES ('20', '牛肉便当', '2', '42', '2.00', '1.00', 'http://picture.daigefan.com/0e6fe201907161410085613.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '牛肉拌饭', '0.00', '0', '2', '', '1', '0', '0');
INSERT INTO `fun_products` VALUES ('21', '2', '1', '1', '2.00', '2.00', 'http://picture.daigefan.com/41e33201907051653402523.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '二万人七二五乳峰改变', '0.00', '0', '3', '1', '2', '0', '0');
INSERT INTO `fun_products` VALUES ('22', '牛肉便当', '2', '42', '2.00', '1.00', 'http://picture.daigefan.com/cb3ca201907161410368098.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '牛肉拌饭', '0.00', '0', '1', '', '1', '0', '0');
INSERT INTO `fun_products` VALUES ('23', '鸡爪', '2', '5', '1.00', '1.00', 'http://picture.daigefan.com/97147201907051659219350.jpeg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '咕咕鸡', '0.00', '0', '0', '6,10', '1', '0', '0');
INSERT INTO `fun_products` VALUES ('24', '鸡爪', '2', '5', '1.00', '1.00', 'http://picture.daigefan.com/97147201907051659219350.jpeg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '咕咕鸡', '0.00', '0', '0', '6,10', '1', '0', '0');
INSERT INTO `fun_products` VALUES ('25', '鸡爪', '2', '5', '1.00', '1.00', 'http://picture.daigefan.com/97147201907051659219350.jpeg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '咕咕鸡', '0.00', '0', '0', '6,10', '1', '0', '0');
INSERT INTO `fun_products` VALUES ('26', '鸡爪', '2', '5', '1.00', '1.00', 'http://picture.daigefan.com/97147201907051659219350.jpeg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '咕咕鸡', '0.00', '0', '0', '6,10', '1', '0', '0');
INSERT INTO `fun_products` VALUES ('27', '牛蛙', '2', '6', '11.00', '1.00', 'http://picture.daigefan.com/c0d74201907051702441741.jpeg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '哇哇丫丫', '0.00', '0', '0', '6', '1', '0', '0');
INSERT INTO `fun_products` VALUES ('28', '牛蛙', '2', '6', '11.00', '1.00', 'http://picture.daigefan.com/c0d74201907051702441741.jpeg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '哇哇丫丫', '0.00', '0', '0', '6', '1', '0', '0');
INSERT INTO `fun_products` VALUES ('29', '牛蛙', '2', '6', '11.00', '1.00', 'http://picture.daigefan.com/c0d74201907051702441741.jpeg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '哇哇丫丫', '0.00', '0', '0', '6', '1', '0', '0');
INSERT INTO `fun_products` VALUES ('30', '33', '1', '1', '333.00', '1.00', 'http://picture.daigefan.com/6924020190705171549889.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', 'の夫人沟通', '0.00', '0', '2', '1', '2', '0', '0');
INSERT INTO `fun_products` VALUES ('31', '哇哇', '2', '6', '0.10', '1.00', 'http://picture.daigefan.com/cf89f201907051717087759.jpeg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '哈哈', '0.00', '0', '0', '6', '1', '0', '0');
INSERT INTO `fun_products` VALUES ('32', '麻婆豆腐', '1', '1', '6.00', '8.00', 'http://picture.daigefan.com/4e487201907051718388015.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '麻婆豆腐', '0.00', '0', '3', '1', '2', '0', '0');
INSERT INTO `fun_products` VALUES ('33', '26', '1', '1', '26.00', '1.00', 'http://picture.daigefan.com/0a1e5201907051732025188.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '哈哈哈哈', '0.00', '0', '0', '1', '2', '0', '0');
INSERT INTO `fun_products` VALUES ('34', '26', '1', '1', '26.00', '1.00', 'http://picture.daigefan.com/0a1e5201907051732025188.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '哈哈哈哈', '0.00', '0', '0', '1', '1', '0', '0');
INSERT INTO `fun_products` VALUES ('35', '26', '1', '1', '26.00', '1.00', 'http://picture.daigefan.com/0a1e5201907051732025188.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '哈哈哈哈', '0.00', '0', '0', '1', '1', '0', '0');
INSERT INTO `fun_products` VALUES ('36', '26', '1', '1', '26.00', '1.00', 'http://picture.daigefan.com/f4a6520190705173431399.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '哈哈哈哈', '0.00', '0', '0', '1', '1', '0', '0');
INSERT INTO `fun_products` VALUES ('37', '26', '1', '1', '26.00', '1.00', 'http://picture.daigefan.com/f4a6520190705173431399.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '哈哈哈哈', '0.00', '0', '0', '1', '2', '0', '0');
INSERT INTO `fun_products` VALUES ('38', '26', '1', '1', '26.00', '1.00', 'http://picture.daigefan.com/f4a6520190705173431399.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '哈哈哈哈', '0.00', '0', '0', '1', '1', '0', '0');
INSERT INTO `fun_products` VALUES ('39', '牛肉', '3', '10', '5.00', '6.00', 'http://picture.daigefan.com/d83f5201907241802054334.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '蛋炒饭', '0.00', '0', '0', '', '1', '0', '0');
INSERT INTO `fun_products` VALUES ('40', '26', '1', '1', '26.00', '1.00', 'http://picture.daigefan.com/f4a6520190705173431399.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '哈哈哈哈', '0.00', '0', '2', '1', '2', '0', '0');
INSERT INTO `fun_products` VALUES ('41', '33', '1', '7', '333.00', '1.00', 'http://picture.daigefan.com/5debe201907051737253209.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '3333', '0.00', '0', '0', '1', '1', '0', '0');
INSERT INTO `fun_products` VALUES ('42', '雅丽26', '1', '7', '26.00', '1.00', 'http://picture.daigefan.com/f4a6520190705173431399.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '哈哈哈哈', '0.00', '0', '2', '1,1', '2', '0', '0');
INSERT INTO `fun_products` VALUES ('43', '麻辣烫6', '1', '9', '26.00', '1.00', 'http://picture.daigefan.com/f4a6520190705173431399.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '哈哈哈哈', '0.00', '0', '2', '1,1', '2', '0', '0');
INSERT INTO `fun_products` VALUES ('44', '麻辣烫6', '1', '7', '26.00', '1.00', 'http://picture.daigefan.com/f4a6520190705173431399.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '哈哈哈哈', '0.00', '0', '2', '1,1', '2', '0', '0');
INSERT INTO `fun_products` VALUES ('45', '皮肚面6', '1', '11', '26.00', '1.00', 'http://picture.daigefan.com/47d67201907051740156734.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '皮肚面', '0.00', '0', '1', '1,1,17', '2', '0', '0');
INSERT INTO `fun_products` VALUES ('46', '汤', '3', '10', '8.00', '10.00', 'http://picture.daigefan.com/41db5201907241808463494.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '炒菜', '0.00', '0', '0', '19', '1', '0', '0');
INSERT INTO `fun_products` VALUES ('47', '韭黄炒蛋', '3', '10', '0.01', '1.00', 'http://picture.daigefan.com/569e9201907051738509115.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '炒菜', '0.00', '0', '0', '19', '1', '0', '0');
INSERT INTO `fun_products` VALUES ('48', '蔬菜', '3', '10', '0.01', '1.00', 'http://picture.daigefan.com/2b439201907241806216987.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '蔬菜', '0.00', '0', '0', '19', '2', '0', '0');
INSERT INTO `fun_products` VALUES ('49', '蔬菜', '3', '10', '0.01', '1.00', 'http://picture.daigefan.com/1e166201907241806418152.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '蔬菜', '0.00', '0', '0', '19,5,19', '2', '0', '0');
INSERT INTO `fun_products` VALUES ('50', '一根软中华', '9', '12', '99.00', '1.00', 'http://picture.daigefan.com/741b5201907051811388955.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '一根软中华', '0.00', '0', '0', '', '1', '0', '0');
INSERT INTO `fun_products` VALUES ('51', '麻辣烫', '12', '16', '8.00', '1.00', 'http://picture.daigefan.com/9b653201907081348589967.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '麻辣烫', '0.00', '0', '2', '25,28', '2', '0', '0');
INSERT INTO `fun_products` VALUES ('52', '面条', '12', '17', '8.00', '1.00', 'http://picture.daigefan.com/4d1b4201907081408031421.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '面条', '0.00', '0', '0', '25,28', '2', '0', '0');
INSERT INTO `fun_products` VALUES ('53', '皮肚', '12', '17', '44.00', '1.00', 'http://picture.daigefan.com/fa3eb201907081844055731.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', 'maaaaaaa', '0.00', '0', '2', '25,28,28,25', '1', '0', '0');
INSERT INTO `fun_products` VALUES ('54', '冰淇淋', '3', '19', '0.01', '1.00', 'http://picture.daigefan.com/1741a201907091434338713.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', 'coffee', '0.00', '0', '2', '', '1', '0', '0');
INSERT INTO `fun_products` VALUES ('55', '蛋炒饭', '3', '8', '3.00', '3.00', 'http://picture.daigefan.com/6eccc2019072418093886.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '33', '0.00', '0', '1', '32', '1', '0', '0');
INSERT INTO `fun_products` VALUES ('56', '脉动', '3', '19', '5.00', '1.00', 'http://picture.daigefan.com/13936201907241756125044.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '兰花开个微博账号直接登录不', '0.00', '0', '0', '', '1', '0', '0');
INSERT INTO `fun_products` VALUES ('57', '麻辣豆腐', '3', '21', '5.00', '8.00', 'http://picture.daigefan.com/e103e201907241805465172.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '麻辣豆腐66', '0.00', '0', '2', '', '1', '0', '0');
INSERT INTO `fun_products` VALUES ('58', '宫保鸡丁', '3', '22', '1.00', '2.00', 'http://picture.daigefan.com/e0459201907241751123815.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '宫保鸡丁', '0.00', '0', '3', '', '1', '0', '0');
INSERT INTO `fun_products` VALUES ('59', '龙虾', '3', '21', '1.00', '1.00', 'http://picture.daigefan.com/39657201907241804369184.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '麻婆豆腐', '0.00', '0', '2', '5,32', '1', '0', '0');
INSERT INTO `fun_products` VALUES ('60', '麻婆豆腐1', '3', '21', '1.00', '1.00', 'http://picture.daigefan.com/57c41201907241754204995.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '麻婆豆腐', '0.00', '0', '3', '5,32', '1', '0', '0');
INSERT INTO `fun_products` VALUES ('61', '麻辣烫1', '3', '23', '60.00', '1.00', 'http://picture.daigefan.com/392f220190724180423145.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '重庆麻辣烫', '0.00', '0', '0', '', '1', '0', '0');
INSERT INTO `fun_products` VALUES ('62', '油泼面1', '3', '29', '81.00', '1.00', 'http://picture.daigefan.com/48f45201907111759137705.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1111111111111111111888', '80.00', '0', '1', '38,32', '1', '0', '0');
INSERT INTO `fun_products` VALUES ('63', '果粒橙', '3', '19', '3.00', '1.00', 'http://picture.daigefan.com/df8a6201907241757012130.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '33', '0.00', '0', '0', '5', '1', '0', '0');
INSERT INTO `fun_products` VALUES ('64', '9', '3', '21', '9.00', '1.00', 'http://picture.daigefan.com/79bf9201907241805597248.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '9', '0.00', '0', '0', '', '2', '0', '0');
INSERT INTO `fun_products` VALUES ('65', '干煸四季豆', '3', '10', '9.00', '1.00', 'http://picture.daigefan.com/66e13201907241812292069.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '9', '0.00', '0', '2', '', '1', '0', '0');
INSERT INTO `fun_products` VALUES ('66', '9', '3', '21', '9.00', '1.00', 'http://picture.daigefan.com/2eb54201907241754411940.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '9', '0.00', '0', '1', '', '2', '0', '0');
INSERT INTO `fun_products` VALUES ('67', '酸辣土豆丝', '3', '10', '3.00', '1.00', 'http://picture.daigefan.com/40f7f201907241758206272.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '酸爽可口', '3.00', '0', '0', '', '1', '0', '0');
INSERT INTO `fun_products` VALUES ('68', '小马烧烤34', '3', '27', '834.00', '1.00', 'http://picture.daigefan.com/204ac201907241755526822.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '小马烧烤5344', '34.00', '0', '2', '19', '1', '0', '0');
INSERT INTO `fun_products` VALUES ('69', '小马烧烤', '3', '0', '8.00', '1.00', 'http://picture.daigefan.com/692c1201907111651028089.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '小马烧烤', '6.00', '0', '0', '', '1', '0', '0');
INSERT INTO `fun_products` VALUES ('70', '小马烧烤', '3', '0', '8.00', '1.00', 'http://picture.daigefan.com/692c1201907111651028089.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '小马烧烤', '6.00', '0', '0', '', '1', '0', '0');
INSERT INTO `fun_products` VALUES ('71', '小马烧烤66', '3', '25', '8.00', '1.00', 'http://picture.daigefan.com/c513020190724175511802.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '小马烧烤', '6.00', '0', '0', '', '1', '0', '0');
INSERT INTO `fun_products` VALUES ('72', '小马烧烤88', '3', '25', '88.00', '1.00', 'http://picture.daigefan.com/79285201907241755277073.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '小马烧烤88', '68.00', '0', '0', '5,19', '1', '0', '0');
INSERT INTO `fun_products` VALUES ('73', '555', '3', '25', '5.00', '1.00', 'http://picture.daigefan.com/aef1b201907241755403108.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '5', '5.00', '0', '0', '5,32', '1', '0', '0');
INSERT INTO `fun_products` VALUES ('74', '机器人434', '3', '28', '6344.00', '1.00', 'http://picture.daigefan.com/e5c18201907111740322100.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '机器人344', '634.00', '0', '2', '', '1', '0', '1562838064');
INSERT INTO `fun_products` VALUES ('75', '辣子鸡', '3', '30', '6.00', '80.00', 'http://picture.daigefan.com/c67d5201907241812004672.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '麻麻辣', '6.00', '0', '3', '', '2', '0', '1562846865');
INSERT INTO `fun_products` VALUES ('76', '涛哥炒饭', '3', '31', '60.00', '3.00', 'http://picture.daigefan.com/98da620190724181019966.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '涛哥炒饭', '33.00', '0', '2', '', '1', '0', '1562847182');
INSERT INTO `fun_products` VALUES ('77', '面筋1', '12', '32', '6.00', '1.00', 'http://picture.daigefan.com/123a5201907121201271826.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '而我却如保护局', '2.00', '0', '0', '', '1', '0', '1562904049');
INSERT INTO `fun_products` VALUES ('78', '咖啡', '16', '33', '0.01', '1.00', 'http://picture.daigefan.com/2ef89201907121725198130.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', 'coffee', '0.01', '0', '2', '', '1', '0', '1562923575');
INSERT INTO `fun_products` VALUES ('79', 'kafei', '16', '33', '2.00', '1.00', 'http://picture.daigefan.com/43336201907150909398707.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', 'coffee', '0.00', '0', '2', '40', '2', '0', '1563153005');
INSERT INTO `fun_products` VALUES ('80', '3', '25', '34', '3.00', '1.00', 'http://picture.daigefan.com/009b2201907151053019833.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '32erect', '4.00', '0', '0', '41', '2', '0', '1563159227');
INSERT INTO `fun_products` VALUES ('81', '咖啡', '16', '33', '0.01', '1.00', 'http://picture.daigefan.com/b6976201907151056297429.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', 'coffee', '2.00', '0', '2', '', '1', '0', '1563159454');
INSERT INTO `fun_products` VALUES ('82', '泡面', '30', '35', '6.00', '1.00', 'http://picture.daigefan.com/2ba76201907151438193825.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '泡面', '3.00', '0', '0', '48', '2', '1', '1563172748');
INSERT INTO `fun_products` VALUES ('83', '泡面', '30', '35', '5.00', '6.00', 'http://picture.daigefan.com/2ba76201907151438193825.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '泡面', '3.00', '0', '0', '', '2', '1', '1563172773');
INSERT INTO `fun_products` VALUES ('84', '麻辣烫', '30', '36', '3.00', '1.00', 'http://picture.daigefan.com/b08b3201907151441284491.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '麻辣烫', '0.00', '0', '2', '48', '2', '1', '1563172915');
INSERT INTO `fun_products` VALUES ('85', '龙虾', '30', '36', '0.00', '1.00', 'http://picture.daigefan.com/b08b3201907151441284491.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', 'bbbbbbbbbb2', '0.00', '0', '2', '69,48', '2', '1', '1563172952');
INSERT INTO `fun_products` VALUES ('86', '红烧肉', '27', '37', '20.00', '1.00', 'http://picture.daigefan.com/111e8201907151454122188.jpeg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '猪肉', '1.00', '0', '2', '50,51,50,51,52', '1', '0', '1563173747');
INSERT INTO `fun_products` VALUES ('87', '小鹿茶', '27', '38', '10.80', '1.00', 'http://picture.daigefan.com/03c94201907161351416071.jpeg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '奶茶', '0.00', '0', '2', '', '2', '0', '1563175880');
INSERT INTO `fun_products` VALUES ('90', '香肠', '30', '39', '0.01', '2.00', 'http://picture.daigefan.com/ec29e201907151559195275.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '111111111111', '0.00', '0', '1', '48,69', '2', '1', '1563177601');
INSERT INTO `fun_products` VALUES ('91', '可乐', '30', '40', '1.00', '1.00', 'http://picture.daigefan.com/d21d6201907151607248759.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '3', '1.00', '0', '1', '48', '2', '1', '1563178072');
INSERT INTO `fun_products` VALUES ('92', '可乐', '30', '40', '1.00', '1.00', 'http://picture.daigefan.com/d1168201908211826206578.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '3', '1.00', '0', '2', '48', '2', '0', '1563178099');
INSERT INTO `fun_products` VALUES ('93', '蛋炒饭', '28', '41', '1.00', '1.00', 'http://picture.daigefan.com/81c22201907151622167909.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '蛋炒饭', '0.00', '0', '2', '71', '2', '0', '1563179014');
INSERT INTO `fun_products` VALUES ('94', '牛肉便当', '28', '42', '2.10', '1.00', 'http://picture.daigefan.com/576ad201907151625021122.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '牛肉拌饭', '0.00', '0', '2', '', '2', '0', '1563179166');
INSERT INTO `fun_products` VALUES ('95', '三鲜面', '28', '44', '1.00', '1.00', 'http://picture.daigefan.com/7ccbe201907151639302925.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '鸡蛋三鲜面', '0.00', '0', '2', '74', '1', '0', '1563180229');
INSERT INTO `fun_products` VALUES ('96', '寿司', '28', '45', '1.00', '1.00', 'http://picture.daigefan.com/82dc8201907151650311794.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '寿司', '0.00', '0', '1', '71', '2', '1', '1563180663');
INSERT INTO `fun_products` VALUES ('97', '蛋炒饭', '28', '46', '1.00', '1.00', 'http://picture.daigefan.com/1f773201907151751006519.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '拌饭', '0.00', '0', '1', '', '2', '1', '1563184327');
INSERT INTO `fun_products` VALUES ('98', '水果沙拉', '28', '47', '0.01', '0.01', 'http://picture.daigefan.com/0f156201907151752365759.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '沙拉', '0.00', '0', '1', '104,108', '1', '0', '1563184404');
INSERT INTO `fun_products` VALUES ('99', '皮蛋瘦肉', '28', '48', '1.00', '1.00', 'http://picture.daigefan.com/2f597201907151753565975.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '皮蛋瘦肉', '0.00', '0', '2', '', '1', '0', '1563184474');
INSERT INTO `fun_products` VALUES ('100', '沙拉水果', '28', '45', '1.00', '1.00', 'http://picture.daigefan.com/7bff0201907151755055840.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '沙拉', '0.00', '0', '1', '', '1', '0', '1563184543');
INSERT INTO `fun_products` VALUES ('101', '番茄炒饭', '28', '45', '1.00', '1.00', 'http://picture.daigefan.com/b8fef201907151758396481.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '米饭', '0.00', '0', '1', '', '1', '0', '1563184743');
INSERT INTO `fun_products` VALUES ('102', '豆角拌饭', '28', '45', '1.00', '1.00', 'http://picture.daigefan.com/48c00201907151759208637.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '豆角拌饭', '0.00', '0', '1', '', '2', '0', '1563184787');
INSERT INTO `fun_products` VALUES ('103', '豆角拌饭', '28', '45', '1.00', '1.00', 'http://picture.daigefan.com/6b2ab201907151807469509.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '豆角拌饭', '0.00', '0', '1', '', '2', '0', '1563185271');
INSERT INTO `fun_products` VALUES ('104', '豆角拌饭', '28', '45', '1.00', '1.00', 'http://picture.daigefan.com/6b2ab201907151807469509.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '豆角拌饭', '0.00', '0', '1', '', '2', '0', '1563185287');
INSERT INTO `fun_products` VALUES ('105', '林木圆子', '27', '49', '20.00', '1.00', 'http://picture.daigefan.com/9a6ef201907161400036724.jpeg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '汤圆', '0.00', '0', '1', '', '1', '0', '1563241533');
INSERT INTO `fun_products` VALUES ('106', '口水鸡', '27', '37', '23.00', '1.00', 'http://picture.daigefan.com/0ba70201907161032501850.jpeg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '口水鸡', '0.00', '0', '2', '63,51', '1', '0', '1563244418');
INSERT INTO `fun_products` VALUES ('107', '鸡腿', '27', '37', '1.00', '1.00', 'http://picture.daigefan.com/287bc201907161059315223.jpeg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '鸡腿', '0.00', '0', '2', '', '1', '0', '1563245997');
INSERT INTO `fun_products` VALUES ('108', '醇香奶茶', '27', '38', '2.10', '1.00', 'http://picture.daigefan.com/7aab8201907161345508952.jpeg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '椰果奶茶', '0.00', '0', '2', '', '2', '0', '1563255988');
INSERT INTO `fun_products` VALUES ('109', '面条', '30', '51', '6.00', '1.00', 'http://picture.daigefan.com/dde38201907161355502820.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '面条', '0.00', '0', '1', '48,69,48', '2', '1', '1563256587');
INSERT INTO `fun_products` VALUES ('110', '醇香奶茶', '27', '38', '14.00', '1.00', 'http://picture.daigefan.com/7aab8201907161345508952.jpeg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '椰果奶茶', '0.00', '0', '1', '', '1', '0', '1563258996');
INSERT INTO `fun_products` VALUES ('111', '拉面', '27', '50', '1.00', '2.00', 'http://picture.daigefan.com/6ac00201907161441214675.jpeg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '拉面', '0.00', '0', '3', '', '2', '0', '1563259303');
INSERT INTO `fun_products` VALUES ('112', '炒面', '28', '52', '1.00', '1.00', 'http://picture.daigefan.com/3022e201907161739389448.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '炒面', '0.00', '0', '1', '71', '2', '0', '1563270009');
INSERT INTO `fun_products` VALUES ('113', '可乐', '28', '53', '1.00', '1.00', 'http://picture.daigefan.com/4e75a201907161740378405.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '饮料', '0.00', '0', '1', '', '2', '0', '1563270052');
INSERT INTO `fun_products` VALUES ('114', '草莓', '28', '54', '1.00', '1.00', 'http://picture.daigefan.com/78c94201907161741017213.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '水果', '0.00', '0', '1', '', '1', '0', '1563270090');
INSERT INTO `fun_products` VALUES ('115', '炒饭', '28', '41', '1.00', '1.00', 'http://picture.daigefan.com/529b9201907161747018075.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '蛋炒饭', '0.00', '0', '1', '', '2', '0', '1563270455');
INSERT INTO `fun_products` VALUES ('116', '111', '28', '41', '0.01', '1.00', 'http://picture.daigefan.com/db1a3201907161748295277.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '哈哈哈哈', '0.00', '0', '1', '', '1', '0', '1563270526');
INSERT INTO `fun_products` VALUES ('117', '麻辣辣', '30', '36', '0.01', '1.00', 'http://picture.daigefan.com/e65de201907161936084090.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '5555', '0.00', '0', '1', '69,48', '2', '0', '1563276989');
INSERT INTO `fun_products` VALUES ('118', '无名菜', '27', '37', '0.20', '1.00', 'http://picture.daigefan.com/95b6320190717140158651.jpeg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '无名菜', '0.00', '0', '2', '', '1', '0', '1563343345');
INSERT INTO `fun_products` VALUES ('119', '草莓冰淇淋', '27', '49', '1.30', '1.00', 'http://picture.daigefan.com/43c2a201907171402399147.jpeg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '冰淇淋', '0.00', '0', '2', '50', '1', '0', '1563343385');
INSERT INTO `fun_products` VALUES ('120', '油炸豆腐', '27', '50', '0.01', '1.00', 'http://picture.daigefan.com/b1239201907171404372999.jpeg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '油炸豆腐，我想看看字符过长的效果怎么样啊我也觉得你是在逗我么好吧好吧好吧那你先吃饭了没', '0.00', '0', '2', '', '1', '0', '1563343492');
INSERT INTO `fun_products` VALUES ('121', '麻辣烫', '28', '41', '0.01', '1.00', 'http://picture.daigefan.com/d3c29201907171421283357.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '麻辣烫', '0.00', '0', '1', '71', '2', '0', '1563344511');
INSERT INTO `fun_products` VALUES ('122', '测试', '27', '38', '20.00', '1.00', '', '', '测试', '0.00', '0', '0', '', '2', '0', '1563421163');
INSERT INTO `fun_products` VALUES ('123', '泡泡面', '28', '42', '4.00', '7.00', 'http://picture.daigefan.com/edeac201907191742391848.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', 'paopao', '4.00', '0', '3', '71', '1', '0', '1563529402');
INSERT INTO `fun_products` VALUES ('124', '一品鲜', '30', '51', '0.00', '1.00', '', '', '3333333', '0.00', '0', '0', '', '2', '1', '1563759677');
INSERT INTO `fun_products` VALUES ('127', '油饼', '30', '55', '8.00', '1.00', 'http://picture.daigefan.com/3beb1201907221556074273.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '油饼', '30.00', '0', '1', '', '1', '0', '1563782226');
INSERT INTO `fun_products` VALUES ('128', '油饼', '30', '35', '0.01', '1.00', 'http://picture.daigefan.com/3beb1201907221556074273.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '油饼', '0.00', '0', '1', '', '2', '1', '1563782285');
INSERT INTO `fun_products` VALUES ('136', '乎拉一条', '30', '36', '3.00', '4.00', 'http://picture.daigefan.com/c1d06201907221754509972.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '胡辣汤', '0.00', '0', '1', '48,69', '1', '0', '1563789324');
INSERT INTO `fun_products` VALUES ('138', '葡萄干', '30', '57', '18.00', '1.00', 'http://picture.daigefan.com/1ddc0201907221802031627.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '7777777777777', '10.00', '0', '1', '84', '2', '1', '1563789765');
INSERT INTO `fun_products` VALUES ('139', '李子园', '30', '55', '2.00', '1.00', 'http://picture.daigefan.com/3a3ca201907231123217112.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '李子园', '11.00', '0', '1', '', '2', '1', '1563852246');
INSERT INTO `fun_products` VALUES ('140', '黄焖鸡', '27', '50', '20.00', '1.00', 'http://picture.daigefan.com/045ab201907231509299451.jpeg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '黄焖鸡', '0.00', '0', '1', '', '1', '0', '1563866376');
INSERT INTO `fun_products` VALUES ('141', '扬州炒饭', '20', '50', '16.00', '1.00', 'http://picture.daigefan.com/5d145201907231534046812.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '味道正宗', '0.00', '0', '1', '', '1', '0', '1563867296');
INSERT INTO `fun_products` VALUES ('142', '老干妈炒', '20', '59', '15.00', '1.00', 'http://picture.daigefan.com/aba18201907231536565046.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '味道正宗', '0.00', '0', '1', '', '2', '0', '1563867361');
INSERT INTO `fun_products` VALUES ('143', '扬州炒饭', '20', '59', '16.00', '1.00', 'http://picture.daigefan.com/66571201907231535312315.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '味道正宗', '0.00', '0', '1', '', '1', '0', '1563867480');
INSERT INTO `fun_products` VALUES ('144', '香肠炒饭', '20', '59', '19.00', '1.00', 'http://picture.daigefan.com/a3f0a201907231541169808.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '味道正宗', '0.00', '0', '1', '', '1', '0', '1563867697');
INSERT INTO `fun_products` VALUES ('145', '老干妈炒饭', '20', '50', '23.00', '1.00', 'http://picture.daigefan.com/00402201907231546361668.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '味道正宗', '0.00', '0', '1', '', '1', '0', '1563868020');
INSERT INTO `fun_products` VALUES ('146', '老干妈炒饭', '20', '50', '23.00', '1.00', 'http://picture.daigefan.com/00402201907231546361668.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '味道正宗', '0.00', '0', '1', '', '1', '0', '1563868029');
INSERT INTO `fun_products` VALUES ('147', '老干妈炒饭', '20', '59', '21.00', '1.00', 'http://picture.daigefan.com/35a4c201907231548049949.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '味道正宗', '0.00', '0', '1', '', '1', '0', '1563868104');
INSERT INTO `fun_products` VALUES ('148', '红烧牛肉面', '10', '59', '18.00', '1.00', 'http://picture.daigefan.com/a8169201907231550137627.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '味道正宗', '0.00', '0', '1', '', '1', '0', '1563868232');
INSERT INTO `fun_products` VALUES ('149', '红烧牛肉面', '10', '61', '21.00', '1.00', 'http://picture.daigefan.com/d549d201907231551479639.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '味道正宗', '0.00', '0', '1', '', '2', '0', '1563868348');
INSERT INTO `fun_products` VALUES ('150', '红烧牛肉面', '10', '61', '21.00', '1.00', 'http://picture.daigefan.com/d549d201907231551479639.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '味道正宗', '0.00', '0', '1', '', '1', '0', '1563868377');
INSERT INTO `fun_products` VALUES ('151', '红烧排骨面', '10', '61', '18.00', '1.00', 'http://picture.daigefan.com/4c7c4201907231554262106.jpeg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '味道正宗', '0.00', '0', '1', '', '1', '0', '1563868480');
INSERT INTO `fun_products` VALUES ('152', '兰州拉面', '10', '61', '15.00', '1.00', 'http://picture.daigefan.com/34729201907231555282056.jpeg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '味道正宗', '0.00', '0', '1', '', '1', '0', '1563868540');
INSERT INTO `fun_products` VALUES ('153', '香肠炒面', '10', '62', '15.00', '1.00', 'http://picture.daigefan.com/c6525201907231556145966.jpeg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '味道正宗', '0.00', '0', '1', '', '1', '0', '1563868584');
INSERT INTO `fun_products` VALUES ('154', '鸭血粉丝汤', '25', '62', '18.00', '1.00', 'http://picture.daigefan.com/58493201907231607346175.jpeg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '味道正宗', '0.00', '0', '1', '', '1', '0', '1563869444');
INSERT INTO `fun_products` VALUES ('155', '鸭血粉丝', '25', '64', '18.00', '1.00', 'http://picture.daigefan.com/c98f4201907231611408404.jpeg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '味道正宗', '0.00', '0', '1', '', '1', '0', '1563869527');
INSERT INTO `fun_products` VALUES ('156', '鸭杂面', '25', '64', '16.00', '1.00', 'http://picture.daigefan.com/8ad46201907231612535018.jpeg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '味道正宗', '0.00', '0', '1', '', '1', '0', '1563869596');
INSERT INTO `fun_products` VALUES ('157', '鸭肉粉', '25', '64', '21.00', '1.00', 'http://picture.daigefan.com/6a56a201907231617588279.jpeg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '味道正宗', '0.00', '0', '1', '', '1', '0', '1563869891');
INSERT INTO `fun_products` VALUES ('170', '拉面', '30', '58', '0.00', '1.00', 'http://picture.daigefan.com/8f4d0201907231655503924.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '222', '2.00', '0', '2', '48,69', '1', '0', '1563872172');
INSERT INTO `fun_products` VALUES ('171', '三文鱼', '23', '66', '10.00', '10.00', 'http://picture.daigefan.com/8132a20190723165643238.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '三文鱼', '2.00', '0', '1', '', '1', '0', '1563872230');
INSERT INTO `fun_products` VALUES ('172', '三文鱼寿司', '23', '71', '23.00', '23.00', 'http://picture.daigefan.com/2fab4201907231657267378.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '三文鱼寿司', '0.00', '0', '2', '', '1', '0', '1563872286');
INSERT INTO `fun_products` VALUES ('175', '8', '30', '82', '8.00', '1.00', 'http://picture.daigefan.com/52f1c201907231707285673.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '，', '0.00', '0', '1', '', '1', '0', '1563872871');
INSERT INTO `fun_products` VALUES ('176', '黄焖鸡', '24', '74', '16.00', '1.00', 'http://picture.daigefan.com/12031201907231725259655.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '鸡肉100g，香菇10g，青椒20g，土豆100g，米饭1份', '1.00', '0', '2', '94', '1', '0', '1563874007');
INSERT INTO `fun_products` VALUES ('177', '招牌黄焖鸡', '24', '74', '18.00', '1.00', 'http://picture.daigefan.com/8f4f3201907231727044311.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '鸡肉200g，莴笋100g，香菇10g，土豆100g，米饭1份', '1.00', '0', '1', '94', '1', '0', '1563874128');
INSERT INTO `fun_products` VALUES ('178', '养生黄焖鸡', '24', '74', '20.00', '22.00', 'http://picture.daigefan.com/7703b201907231729027973.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '鸡肉200g，铁棍100g，香菇10g，土豆100g，米饭1份', '1.00', '0', '3', '94', '1', '0', '1563874195');
INSERT INTO `fun_products` VALUES ('179', '三文鱼寿司套餐', '23', '71', '28.00', '28.00', 'http://picture.daigefan.com/b51a7201907231729174070.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '三文鱼寿司套餐', '0.00', '0', '1', '', '1', '0', '1563874214');
INSERT INTO `fun_products` VALUES ('180', '招牌黄焖排骨', '24', '73', '21.00', '1.00', 'http://picture.daigefan.com/9d81c201907231730051894.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '排骨200g，莴笋100g，香菇10g，土豆100g，米饭1份', '1.00', '0', '2', '94', '1', '0', '1563874260');
INSERT INTO `fun_products` VALUES ('181', '金枪鱼', '23', '66', '2.00', '2.00', 'http://picture.daigefan.com/5cccf201907231730323598.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '金枪鱼', '0.00', '0', '1', '', '1', '0', '1563874269');
INSERT INTO `fun_products` VALUES ('182', '鲍鱼寿司', '23', '71', '0.98', '19.98', 'http://picture.daigefan.com/23c13201907231731266794.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '鲍鱼寿司', '0.00', '0', '3', '', '2', '0', '1563874333');
INSERT INTO `fun_products` VALUES ('183', '鱼子酱寿司', '23', '71', '12.00', '12.00', 'http://picture.daigefan.com/0b76e201907231732244672.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '鱼子酱寿司', '0.00', '0', '2', '', '2', '0', '1563874383');
INSERT INTO `fun_products` VALUES ('184', '鸡蛋面', '23', '68', '0.01', '8.80', 'http://picture.daigefan.com/3a43220190723173318893.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '鸡蛋面', '0.00', '0', '2', '', '1', '0', '1563874426');
INSERT INTO `fun_products` VALUES ('185', '牛排面', '23', '70', '3.20', '3.20', 'http://picture.daigefan.com/dfc00201907231733553748.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '牛排面', '0.00', '0', '2', '', '1', '0', '1563874476');
INSERT INTO `fun_products` VALUES ('186', '招牌猪蹄', '24', '75', '20.00', '1.00', 'http://picture.daigefan.com/ece6d201907231735328294.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '猪蹄200g，莴笋100g，香菇10g，土豆100g，米饭1份', '1.00', '0', '1', '94', '1', '0', '1563874575');
INSERT INTO `fun_products` VALUES ('187', '金牌猪蹄', '24', '75', '23.00', '1.00', 'http://picture.daigefan.com/b4b94201907231736218454.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '猪肘200g，土豆100g，香菇10g，腐竹100g，米饭1份', '1.00', '0', '1', '94', '2', '0', '1563874628');
INSERT INTO `fun_products` VALUES ('188', '芒果鲜奶', '26', '91', '18.00', '1.00', 'http://picture.daigefan.com/82510201907231807421580.jpeg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '新鲜可口', '0.00', '0', '1', '', '1', '0', '1563876499');
INSERT INTO `fun_products` VALUES ('189', '什锦酸奶', '26', '91', '21.00', '1.00', 'http://picture.daigefan.com/525ea201907231808297416.jpeg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '新鲜可口', '0.00', '0', '1', '', '1', '0', '1563876548');
INSERT INTO `fun_products` VALUES ('190', '厚爱', '26', '91', '22.00', '1.00', 'http://picture.daigefan.com/4584a201907231810494431.jpeg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '新鲜可口', '0.00', '0', '1', '', '1', '0', '1563876664');
INSERT INTO `fun_products` VALUES ('191', '长条面包', '26', '92', '12.00', '1.00', 'http://picture.daigefan.com/02ce620190723190236207.jpeg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '新鲜可口', '0.00', '0', '2', '', '1', '0', '1563879778');
INSERT INTO `fun_products` VALUES ('192', '蛋卷面包', '26', '92', '12.00', '22.00', 'http://picture.daigefan.com/035de201907231903096552.jpeg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '新鲜可口', '0.00', '0', '3', '', '1', '0', '1563879821');
INSERT INTO `fun_products` VALUES ('193', '鸡蛋炒饭', '31', '94', '10.00', '1.00', 'http://picture.daigefan.com/a407b201907241624362543.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '1', '98,99,100', '2', '0', '1563956901');
INSERT INTO `fun_products` VALUES ('194', '老干妈炒饭', '31', '94', '11.00', '1.00', 'http://picture.daigefan.com/04941201907241628437961.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '1', '98,99,100', '2', '0', '1563956980');
INSERT INTO `fun_products` VALUES ('195', '333', '27', '89', '3.00', '1.00', 'http://picture.daigefan.com/ad137201907241629482051.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '2', '0.00', '0', '1', '', '2', '0', '1563957650');
INSERT INTO `fun_products` VALUES ('196', '222', '27', '89', '1.00', '1.00', 'http://picture.daigefan.com/615d0201907241641047990.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1111', '1.00', '0', '1', '51', '2', '0', '1563957682');
INSERT INTO `fun_products` VALUES ('197', '测试/', '27', '84', '12.00', '1.00', 'http://picture.daigefan.com/53f83201907241642025835.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '2222', '1.00', '0', '1', '50', '2', '0', '1563957741');
INSERT INTO `fun_products` VALUES ('198', '炒饭/河粉/炒面', '27', '49', '12.00', '1.00', 'http://picture.daigefan.com/018d6201907241643422685.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '炒饭/河粉/炒面', '1.00', '0', '1', '50,51,52,63,64', '2', '0', '1563957882');
INSERT INTO `fun_products` VALUES ('199', '炒饭', '28', '41', '0.10', '1.00', 'http://picture.daigefan.com/f448f201907241650171223.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '哈哈', '0.00', '0', '2', '71', '2', '1', '1563958238');
INSERT INTO `fun_products` VALUES ('200', '1', '28', '48', '1.00', '1.00', 'http://picture.daigefan.com/c1c60201907241651068969.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '2', '71', '2', '0', '1563958275');
INSERT INTO `fun_products` VALUES ('201', '2', '28', '41', '2.00', '1.00', 'http://picture.daigefan.com/14438201907241651285396.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '0.00', '0', '2', '71', '2', '1', '1563958303');
INSERT INTO `fun_products` VALUES ('202', '3', '28', '41', '0.01', '1.00', 'http://picture.daigefan.com/db9d4201907241652016656.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '17', '0.00', '0', '3', '71,104', '2', '1', '1563958330');
INSERT INTO `fun_products` VALUES ('203', '333', '27', '37', '3333.00', '1.00', 'http://picture.daigefan.com/d4305201907241707537536.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '333', '3.00', '0', '1', '51,50,52', '2', '0', '1563959291');
INSERT INTO `fun_products` VALUES ('204', '火腿肠', '31', '94', '12.00', '1.00', 'http://picture.daigefan.com/3f17c201907241708499838.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '1', '98,99,100,101,102,103', '2', '0', '1563959352');
INSERT INTO `fun_products` VALUES ('205', '111', '27', '37', '11.00', '1.00', 'http://picture.daigefan.com/4f161201907241710195336.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '显示', '0.00', '0', '1', '50,51,52,63,64', '2', '0', '1563959428');
INSERT INTO `fun_products` VALUES ('206', '测试', '27', '37', '22.00', '1.00', 'http://picture.daigefan.com/e3d88201907241710436316.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', 'www', '1.00', '0', '1', '50,51,52,63,64', '2', '0', '1563959470');
INSERT INTO `fun_products` VALUES ('207', '1', '28', '41', '1.00', '1.00', 'http://picture.daigefan.com/62261201907241710385817.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '2', '108,71,104', '2', '1', '1563959517');
INSERT INTO `fun_products` VALUES ('208', '11', '27', '38', '1.00', '1.00', 'http://picture.daigefan.com/267be201907241712031685.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1111', '1.00', '0', '1', '50,51,52,63,64,106,109', '2', '0', '1563959532');
INSERT INTO `fun_products` VALUES ('209', '11', '28', '41', '1.00', '1.00', 'http://picture.daigefan.com/b29fe201907241712096927.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '2', '71,104,108', '2', '1', '1563959545');
INSERT INTO `fun_products` VALUES ('210', '111', '27', '50', '11.00', '1.00', 'http://picture.daigefan.com/b3bb8201907241712221191.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '111', '1.00', '0', '1', '50,51,52,63,64,106,109', '2', '0', '1563959564');
INSERT INTO `fun_products` VALUES ('211', '111', '28', '41', '1.00', '1.00', 'http://picture.daigefan.com/cde33201907241712403324.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '11', '0.00', '0', '2', '71,104', '2', '1', '1563959579');
INSERT INTO `fun_products` VALUES ('212', '123', '27', '37', '12.00', '1.00', 'http://picture.daigefan.com/4e1c5201907241713018754.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', 'w', '1.00', '0', '1', '50,51,52,63,64,106,109', '2', '0', '1563959607');
INSERT INTO `fun_products` VALUES ('213', '小马牛肉面', '42', '96', '8.00', '1.00', 'http://picture.daigefan.com/ab0d6201907241715037318.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '3333333333', '0.00', '0', '2', '113', '1', '0', '1563959747');
INSERT INTO `fun_products` VALUES ('214', 'w', '27', '89', '11.00', '1.00', 'http://picture.daigefan.com/50624201907241716045792.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', 'wwwwww', '1.00', '0', '1', '50,51,52,63,106,64', '2', '0', '1563959783');
INSERT INTO `fun_products` VALUES ('215', '111', '28', '41', '1.00', '1.00', 'http://picture.daigefan.com/0122b20190724171609766.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '11', '0.00', '0', '1', '71,104,108', '1', '0', '1563959787');
INSERT INTO `fun_products` VALUES ('216', '11', '27', '50', '1.00', '1.00', 'http://picture.daigefan.com/6d0d9201907241716288894.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '111', '1.00', '0', '1', '50,51,52,63,64,106,109', '2', '0', '1563959807');
INSERT INTO `fun_products` VALUES ('217', '111', '28', '42', '1.00', '1.00', 'http://picture.daigefan.com/fffb0201907241716391862.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '14', '0.00', '0', '1', '104,71,108', '2', '1', '1563959816');
INSERT INTO `fun_products` VALUES ('218', '图', '28', '48', '1.00', '1.00', 'http://picture.daigefan.com/6283c201907241717143957.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '1', '71,104,108', '1', '0', '1563959866');
INSERT INTO `fun_products` VALUES ('219', '111', '27', '38', '1.00', '1.00', 'http://picture.daigefan.com/80f27201907241716526715.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '111', '0.00', '0', '1', '50,51,52,63,64,106,109', '2', '0', '1563959872');
INSERT INTO `fun_products` VALUES ('220', '香肠面', '42', '96', '4.00', '6.00', 'http://picture.daigefan.com/6b891201907241717454666.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '333333333333333', '0.00', '0', '3', '113,220', '2', '0', '1563959888');
INSERT INTO `fun_products` VALUES ('221', '1', '27', '89', '1.00', '1.00', 'http://picture.daigefan.com/5c4e7201907241717584764.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '1', '50,51,52,63,64,106,109', '2', '0', '1563959897');
INSERT INTO `fun_products` VALUES ('222', '蛋炒饭', '28', '41', '1.00', '1.00', 'http://picture.daigefan.com/c64e3201907241721432554.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '11', '0.00', '0', '1', '71,104,108,115,116,117,118', '2', '1', '1563960168');
INSERT INTO `fun_products` VALUES ('223', '333', '28', '41', '1.00', '1.00', 'http://picture.daigefan.com/d3886201907241723167490.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '啊2', '0.00', '0', '1', '71,104,108,115,116,117,118', '1', '0', '1563960219');
INSERT INTO `fun_products` VALUES ('224', '鸡蛋炒饭', '31', '97', '10.00', '1.00', 'http://picture.daigefan.com/54003201907241725203516.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '1', '120,121', '1', '0', '1563960463');
INSERT INTO `fun_products` VALUES ('225', '老干妈炒饭', '31', '97', '11.00', '1.00', 'http://picture.daigefan.com/0f11c201907241727585960.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '1', '120,121', '1', '0', '1563960501');
INSERT INTO `fun_products` VALUES ('226', '火腿肠炒饭', '31', '97', '12.00', '1.00', 'http://picture.daigefan.com/2ec52201907241728284867.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '1', '120,121', '1', '0', '1563960533');
INSERT INTO `fun_products` VALUES ('227', '香肠炒饭', '31', '97', '12.00', '1.00', 'http://picture.daigefan.com/3ccf2201907241729009018.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '1', '120,121', '1', '0', '1563960568');
INSERT INTO `fun_products` VALUES ('228', '酸豆角肉丝炒饭', '31', '97', '14.00', '1.00', 'http://picture.daigefan.com/b1c21201907241729401706.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '1', '120,121', '1', '0', '1563960608');
INSERT INTO `fun_products` VALUES ('229', '叉烧炒饭', '31', '97', '14.00', '1.00', 'http://picture.daigefan.com/e3d57201907241731475130.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '1', '120,121', '1', '0', '1563960738');
INSERT INTO `fun_products` VALUES ('230', '老干妈肉丝炒饭', '31', '97', '14.50', '1.00', 'http://picture.daigefan.com/71126201907241732261659.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '1', '120,121', '1', '0', '1563960776');
INSERT INTO `fun_products` VALUES ('231', '培根炒饭', '31', '97', '12.00', '1.00', 'http://picture.daigefan.com/e74cf201907241733035257.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '1', '120,121', '1', '0', '1563960809');
INSERT INTO `fun_products` VALUES ('232', '老干妈鸡丁炒饭', '31', '97', '14.50', '1.00', 'http://picture.daigefan.com/3e754201907241733363580.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '1', '120,121', '1', '0', '1563960850');
INSERT INTO `fun_products` VALUES ('233', '三鲜炒饭', '31', '97', '13.00', '1.00', 'http://picture.daigefan.com/fbb21201907241734281712.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '1', '120,121', '1', '0', '1563960896');
INSERT INTO `fun_products` VALUES ('234', '扬州八怪炒饭', '31', '97', '14.00', '1.00', 'http://picture.daigefan.com/c9dd6201907241735097877.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '1', '', '1', '0', '1563960927');
INSERT INTO `fun_products` VALUES ('235', '猪头肉炒饭', '31', '97', '15.00', '1.00', 'http://picture.daigefan.com/e8d38201907241735346192.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '1', '121,120', '1', '0', '1563960962');
INSERT INTO `fun_products` VALUES ('236', '孜然牛柳炒饭', '31', '97', '14.00', '1.00', 'http://picture.daigefan.com/3aaa2201907241736101577.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '1', '120,121', '1', '0', '1563960995');
INSERT INTO `fun_products` VALUES ('237', '青菜鸡蛋炒饭', '31', '97', '14.00', '1.00', 'http://picture.daigefan.com/d823f201907241736434344.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '1', '120,121', '1', '0', '1563961037');
INSERT INTO `fun_products` VALUES ('238', '狮子头炒饭', '31', '97', '15.00', '1.00', 'http://picture.daigefan.com/e50b6201907241737247644.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '1', '121,120', '1', '0', '1563961073');
INSERT INTO `fun_products` VALUES ('239', '鸭腿炒饭', '31', '97', '15.00', '1.00', 'http://picture.daigefan.com/2eb73201907241738041393.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '1', '120,121', '1', '0', '1563961106');
INSERT INTO `fun_products` VALUES ('240', '青菜肉丝炒饭', '31', '97', '16.00', '1.00', 'http://picture.daigefan.com/7e796201907241738335369.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '1', '120,121', '1', '0', '1563961139');
INSERT INTO `fun_products` VALUES ('241', '测试', '27', '49', '1.00', '1.00', 'http://picture.daigefan.com/88eb0201907241740323889.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '1', '50,51,52,63,64,106,109', '2', '0', '1563961237');
INSERT INTO `fun_products` VALUES ('242', '测试', '27', '38', '1.00', '1.00', 'http://picture.daigefan.com/8960e201907241741167039.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '1', '106,64,109', '2', '0', '1563961283');
INSERT INTO `fun_products` VALUES ('243', '测试', '27', '38', '1.00', '1.00', 'http://picture.daigefan.com/8960e201907241741167039.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '1', '106,64,109', '2', '0', '1563961283');
INSERT INTO `fun_products` VALUES ('244', '1', '27', '37', '1.00', '1.00', 'http://picture.daigefan.com/68660201907241741352405.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '1', '128', '2', '0', '1563961314');
INSERT INTO `fun_products` VALUES ('245', '孜然羊肉炒饭', '31', '97', '17.00', '1.00', 'http://picture.daigefan.com/b4593201907241741382223.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '1', '120,121', '1', '0', '1563961326');
INSERT INTO `fun_products` VALUES ('246', '孜然牛肉炒饭', '31', '97', '17.00', '1.00', 'http://picture.daigefan.com/0aaf0201907241742146865.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '1', '120,121', '1', '0', '1563961358');
INSERT INTO `fun_products` VALUES ('247', '老干妈牛柳炒饭', '31', '97', '14.50', '1.00', 'http://picture.daigefan.com/4a130201907241742519387.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '1', '120,121', '1', '0', '1563961399');
INSERT INTO `fun_products` VALUES ('248', '北京烤鸭炒饭', '31', '97', '15.00', '1.00', 'http://picture.daigefan.com/8e50e201907241743259237.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '1', '120,121', '1', '0', '1563961443');
INSERT INTO `fun_products` VALUES ('249', '回锅肉炒饭', '31', '97', '14.00', '1.00', 'http://picture.daigefan.com/342a6201907241744104684.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '1', '120,121', '1', '0', '1563961474');
INSERT INTO `fun_products` VALUES ('250', '骨肉相连炒饭', '31', '97', '14.00', '1.00', 'http://picture.daigefan.com/3136e201907241744395719.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '1', '120,121', '1', '0', '1563961509');
INSERT INTO `fun_products` VALUES ('251', '皇帝炒饭', '31', '97', '17.00', '1.00', 'http://picture.daigefan.com/e7cf0201907241745147694.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '1', '120,121', '1', '0', '1563961543');
INSERT INTO `fun_products` VALUES ('252', '天蓬肥肠炒饭', '31', '97', '17.00', '1.00', 'http://picture.daigefan.com/297d7201907241745481493.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '1', '120,121', '1', '0', '1563961575');
INSERT INTO `fun_products` VALUES ('253', '宫廷红烧鸡炒饭', '31', '97', '15.00', '1.00', 'http://picture.daigefan.com/82b27201907241746215595.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '1', '120,121', '1', '0', '1563961610');
INSERT INTO `fun_products` VALUES ('254', '麻辣鸡丝炒饭', '31', '97', '15.00', '1.00', 'http://picture.daigefan.com/72b5b201907241746599870.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '1', '120,121', '1', '0', '1563961657');
INSERT INTO `fun_products` VALUES ('255', '老干妈鸡丝炒饭', '31', '97', '14.50', '1.00', 'http://picture.daigefan.com/94ccb201907241747424228.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '1', '120,121', '1', '0', '1563961731');
INSERT INTO `fun_products` VALUES ('256', '孜然鸡丝炒饭', '31', '97', '14.00', '1.00', 'http://picture.daigefan.com/cbd03201907241748582654.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '1', '120,121', '1', '0', '1563961821');
INSERT INTO `fun_products` VALUES ('257', '鸡腿炒饭', '31', '97', '14.00', '1.00', 'http://picture.daigefan.com/f5416201907241750291826.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '1', '120,121', '1', '0', '1563961852');
INSERT INTO `fun_products` VALUES ('258', '辣条炒饭', '31', '97', '13.00', '1.00', 'http://picture.daigefan.com/d1e63201907241750576261.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '1', '120,121', '1', '0', '1563961876');
INSERT INTO `fun_products` VALUES ('259', '青椒肉丝炒饭', '31', '97', '14.00', '1.00', 'http://picture.daigefan.com/3eecc201907241751213860.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '1', '120,121', '1', '0', '1563961903');
INSERT INTO `fun_products` VALUES ('260', '把子肉炒饭', '31', '97', '17.00', '1.00', 'http://picture.daigefan.com/d3f19201907241751483905.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '1', '120,121', '1', '0', '1563961931');
INSERT INTO `fun_products` VALUES ('261', '至尊牛肉炒饭', '31', '97', '17.00', '1.00', 'http://picture.daigefan.com/282a4201907241752164020.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '1', '120,121', '1', '0', '1563961961');
INSERT INTO `fun_products` VALUES ('262', '素鸡炒饭', '31', '97', '11.00', '1.00', 'http://picture.daigefan.com/c9be9201907241752467958.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '1', '120,121', '1', '0', '1563961994');
INSERT INTO `fun_products` VALUES ('263', '雪菜肉丝炒饭', '31', '97', '13.00', '1.00', 'http://picture.daigefan.com/7945e2019072417531966.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '1', '120,121', '1', '0', '1563962026');
INSERT INTO `fun_products` VALUES ('264', '皇太后炒饭', '31', '97', '14.00', '1.00', 'http://picture.daigefan.com/1ffc5201907241753529548.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '1', '120,121', '1', '0', '1563962061');
INSERT INTO `fun_products` VALUES ('265', '鸡腿', '31', '98', '6.00', '1.00', 'http://picture.daigefan.com/9bbb5201907241754347798.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '0.00', '0', '1', '120,121', '1', '0', '1563962104');
INSERT INTO `fun_products` VALUES ('266', '牛肉', '31', '98', '6.00', '1.00', 'http://picture.daigefan.com/bf1df201907241755121982.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '0.00', '0', '1', '120,121', '1', '0', '1563962134');
INSERT INTO `fun_products` VALUES ('267', '猪头肉', '31', '98', '6.00', '1.00', 'http://picture.daigefan.com/2bf69201907241755404462.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '0.00', '0', '1', '120,121', '1', '0', '1563962162');
INSERT INTO `fun_products` VALUES ('268', '鸭腿', '31', '98', '6.00', '1.00', 'http://picture.daigefan.com/1ba18201907241756075298.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '0.00', '0', '1', '', '1', '0', '1563962185');
INSERT INTO `fun_products` VALUES ('269', '鸡丝', '31', '98', '5.00', '1.00', 'http://picture.daigefan.com/ffcfc201907241756517334.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '0.00', '0', '1', '', '1', '0', '1563962239');
INSERT INTO `fun_products` VALUES ('270', '狮子头', '31', '98', '5.00', '1.00', 'http://picture.daigefan.com/44328201907241757247268.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '0.00', '0', '1', '', '1', '0', '1563962263');
INSERT INTO `fun_products` VALUES ('271', '肉丝', '31', '98', '5.00', '1.00', 'http://picture.daigefan.com/caf73201907241757513561.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '0.00', '0', '1', '', '1', '0', '1563962291');
INSERT INTO `fun_products` VALUES ('272', '里脊肉', '31', '98', '5.00', '1.00', 'http://picture.daigefan.com/e3e9720190724175817125.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '0.00', '0', '1', '', '1', '0', '1563962315');
INSERT INTO `fun_products` VALUES ('273', '培根', '31', '98', '5.00', '1.00', 'http://picture.daigefan.com/ac76b201907241758407415.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '0.00', '0', '1', '', '1', '0', '1563962337');
INSERT INTO `fun_products` VALUES ('274', '香肠', '31', '98', '4.00', '1.00', 'http://picture.daigefan.com/bfedc201907241759083109.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '0.00', '0', '1', '', '1', '0', '1563962363');
INSERT INTO `fun_products` VALUES ('275', '鸡蛋', '31', '98', '1.50', '1.00', 'http://picture.daigefan.com/41e97201907241759294255.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '0.00', '0', '1', '', '1', '0', '1563962384');
INSERT INTO `fun_products` VALUES ('276', '素鸡', '31', '98', '1.50', '1.00', 'http://picture.daigefan.com/a2da1201907241759515740.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '0.00', '0', '1', '', '1', '0', '1563962406');
INSERT INTO `fun_products` VALUES ('277', '青菜', '31', '98', '2.00', '1.00', 'http://picture.daigefan.com/8a5c0201907241800112725.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '0.00', '0', '1', '', '1', '0', '1563962429');
INSERT INTO `fun_products` VALUES ('278', '酸豆角', '31', '98', '2.00', '1.00', 'http://picture.daigefan.com/66817201907241800345773.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '0.00', '0', '1', '', '1', '0', '1563962456');
INSERT INTO `fun_products` VALUES ('279', '骨肉相连', '31', '98', '2.00', '1.00', 'http://picture.daigefan.com/80c63201907241801027717.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '0.00', '0', '1', '', '1', '0', '1563962477');
INSERT INTO `fun_products` VALUES ('280', '12', '27', '37', '1.00', '1.00', 'http://picture.daigefan.com/36cf7201907250911354523.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '123', '0.00', '0', '1', '109,106', '2', '0', '1564017100');
INSERT INTO `fun_products` VALUES ('281', '金陵烤鸭卤肉饭', '34', '99', '15.00', '1.00', 'http://picture.daigefan.com/aef3b201907251332473299.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '1', '', '1', '0', '1564032812');
INSERT INTO `fun_products` VALUES ('282', '金陵烤鸭卤肉饭', '34', '100', '15.00', '1.00', 'http://picture.daigefan.com/5b1a7201907251334175170.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '1', '', '1', '0', '1564032897');
INSERT INTO `fun_products` VALUES ('283', '手工鱼圆卤肉饭', '34', '100', '14.00', '1.00', 'http://picture.daigefan.com/76ce2201907251335231144.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '1', '', '1', '0', '1564032945');
INSERT INTO `fun_products` VALUES ('284', '羊肉卤肉饭', '34', '100', '18.00', '1.00', 'http://picture.daigefan.com/ec076201907251335534570.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '1', '', '1', '0', '1564032973');
INSERT INTO `fun_products` VALUES ('285', '木须肉卤肉饭', '34', '100', '15.00', '1.00', 'http://picture.daigefan.com/bc491201907251336524525.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '1', '', '1', '0', '1564033029');
INSERT INTO `fun_products` VALUES ('286', '巴沙鱼卤肉饭', '34', '100', '17.00', '1.00', 'http://picture.daigefan.com/79ca0201907251337185219.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '1', '', '1', '0', '1564033055');
INSERT INTO `fun_products` VALUES ('287', '牛肉卤肉饭', '34', '100', '18.00', '1.00', 'http://picture.daigefan.com/c6ed4201907251337432852.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '1', '', '1', '0', '1564033083');
INSERT INTO `fun_products` VALUES ('288', '奥尔良鸡片卤肉饭', '34', '100', '18.00', '1.00', 'http://picture.daigefan.com/e2b7e201907251338117073.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '1', '', '1', '0', '1564033119');
INSERT INTO `fun_products` VALUES ('289', '杭椒鸡丁卤肉饭', '34', '100', '16.00', '1.00', 'http://picture.daigefan.com/8433d201907251338461572.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '1', '', '1', '0', '1564033147');
INSERT INTO `fun_products` VALUES ('290', '123', '27', '37', '12.00', '1.00', 'http://picture.daigefan.com/4c503201907291651359141.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', 'www', '0.00', '0', '1', '', '2', '0', '1564390304');
INSERT INTO `fun_products` VALUES ('291', '香肠面', '43', '39', '2.00', '1.00', 'http://picture.daigefan.com/435bd201907291653223511.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '香肠', '0.00', '0', '1', '48', '1', '0', '1564390432');
INSERT INTO `fun_products` VALUES ('292', '0', '43', '101', '0.01', '0.01', 'http://picture.daigefan.com/09fd4201907291733476563.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '`w33', '0.00', '0', '1', '207', '1', '0', '1564392847');
INSERT INTO `fun_products` VALUES ('293', '0', '43', '105', '0.00', '1.00', 'http://picture.daigefan.com/a6970201907291734245922.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '00', '4.00', '0', '3', '209,207', '1', '0', '1564392896');
INSERT INTO `fun_products` VALUES ('294', 'x', '43', '106', '0.01', '2.00', 'http://picture.daigefan.com/94e0e201907291735155416.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', 'x', '2.00', '0', '3', '211', '2', '0', '1564392937');
INSERT INTO `fun_products` VALUES ('295', '2', '43', '107', '2.00', '1.00', 'http://picture.daigefan.com/85312201907291735577836.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '2', '2.00', '0', '2', '207,211', '1', '0', '1564392969');
INSERT INTO `fun_products` VALUES ('296', '牛肉面', '43', '108', '2.00', '1.00', 'http://picture.daigefan.com/de3a120190801094037838.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '11', '0.00', '0', '1', '', '2', '0', '1564623671');
INSERT INTO `fun_products` VALUES ('297', '2', '27', '50', '12.00', '1.00', 'http://picture.daigefan.com/75c79201908020946482121.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '', '0.00', '0', '1', '', '2', '0', '1564710420');
INSERT INTO `fun_products` VALUES ('298', '黄焖鸡', '27', '50', '17.00', '1.00', 'http://picture.daigefan.com/8135d201908121523241902.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '美味可口', '1.00', '0', '1', '', '1', '0', '1565594909');
INSERT INTO `fun_products` VALUES ('303', 'ji', '27', '37', '21.00', '30.00', 'http://picture.daigefan.com/c6ede201908121800591149.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', 'ecc', '0.00', '0', '3', '', '1', '0', '1565604073');
INSERT INTO `fun_products` VALUES ('304', '水煮肉片', '49', '109', '1.00', '2.00', 'http://picture.daigefan.com/c7789201908131637283513.jpeg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '好吃', '1.00', '0', '3', '', '2', '1', '1565685621');
INSERT INTO `fun_products` VALUES ('305', '草莓圣代', '49', '110', '1.00', '15.00', 'http://picture.daigefan.com/b13ec201908131658122243.jpeg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '甜品特别可口，我看看字段过长会导致什么东', '1.00', '0', '3', '', '2', '1', '1565686694');
INSERT INTO `fun_products` VALUES ('306', '鸭血粉丝汤', '49', '112', '1.00', '1.00', 'http://picture.daigefan.com/e8b90201908131658554022.jpeg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '粉丝', '0.00', '0', '2', '', '2', '1', '1565686773');
INSERT INTO `fun_products` VALUES ('307', '冰淇淋', '49', '110', '20.00', '20.00', 'http://picture.daigefan.com/a5e4e201908131937079177.jpeg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '好吃43242424242飞天', '1.00', '0', '1', '', '2', '1', '1565696242');
INSERT INTO `fun_products` VALUES ('308', '好吃点', '49', '109', '38.00', '64.00', 'http://picture.daigefan.com/b5040201908161425249536.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '好吃点', '0.00', '0', '3', '246', '2', '1', '1565936748');
INSERT INTO `fun_products` VALUES ('309', '测试', '49', '109', '0.01', '12.00', 'http://picture.daigefan.com/2a70b201908281522375019.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '222', '0.00', '0', '3', '246', '2', '1', '1566977079');
INSERT INTO `fun_products` VALUES ('310', '3', '30', '35', '3.00', '3.00', 'http://picture.daigefan.com/463c0201908291617381715.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', 'wwwwwwwwwwwwwwwwwwww', '3.00', '0', '1', '48,69', '2', '1', '1567066683');
INSERT INTO `fun_products` VALUES ('311', '麻辣烫', '30', '36', '7.00', '7.00', 'http://picture.daigefan.com/3619e201908291631299448.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '接我弟发的好我问偶尔和日本陪我过', '0.00', '0', '2', '69', '1', '0', '1567067530');
INSERT INTO `fun_products` VALUES ('312', '火兔', '30', '35', '0.00', '69.00', 'http://picture.daigefan.com/4ec7a201908291633222846.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '火兔', '0.00', '0', '3', '250,84', '2', '0', '1567067630');
INSERT INTO `fun_products` VALUES ('313', '12', '30', '51', '2.00', '1.00', 'http://picture.daigefan.com/9c307201908291945273033.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '4', '0.00', '0', '2', '69,48', '2', '1', '1567079137');
INSERT INTO `fun_products` VALUES ('314', '12', '30', '51', '2.00', '77.00', 'http://picture.daigefan.com/9c307201908291945273033.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '', '0.00', '0', '2', '69,48', '1', '0', '1567079140');
INSERT INTO `fun_products` VALUES ('315', '就可耳熟我给发个', '30', '39', '3.00', '1.00', 'http://picture.daigefan.com/a9fe5201908292122162905.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '啊', '2.00', '0', '2', '250,48', '2', '1', '1567085003');
INSERT INTO `fun_products` VALUES ('316', '222', '99', '113', '1.00', '22.00', 'http://picture.daigefan.com/d4874201909051125312267.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '2222', '0.00', '0', '1', '', '1', '0', '1567653942');
INSERT INTO `fun_products` VALUES ('317', '5', '49', '109', '5.00', '5.00', 'http://picture.daigefan.com/d8cbe201909101538201776.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '', '0.00', '0', '1', '', '2', '1', '1568101126');
INSERT INTO `fun_products` VALUES ('318', '222', '49', '112', '2.00', '2.00', 'http://picture.daigefan.com/4edfc201909240920242025.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '22222', '0.00', '0', '2', '', '2', '1', '1569288124');
INSERT INTO `fun_products` VALUES ('319', '马肉', '49', '109', '5.00', '15.00', 'http://picture.daigefan.com/a9c38201909241035284659.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '1', '1.00', '0', '3', '', '2', '1', '1569292585');
INSERT INTO `fun_products` VALUES ('320', '黄焖大排鸡米饭', '49', '109', '9.84', '9.84', 'http://picture.daigefan.com/1fa3a201909241957515322.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '', '1.00', '0', '1', '254', '1', '0', '1569326290');
INSERT INTO `fun_products` VALUES ('321', '炒肉', '49', '109', '0.01', '0.01', 'http://picture.daigefan.com/e1ff0201909251101199374.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '', '0.00', '0', '1', '246,254,258', '1', '0', '1569380493');
INSERT INTO `fun_products` VALUES ('322', '麻辣香锅鸡爪', '49', '109', '10.00', '12.00', 'http://picture.daigefan.com/d42a7201909251101431101.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '', '0.01', '0', '3', '269', '2', '0', '1569380511');
INSERT INTO `fun_products` VALUES ('323', '雪花鸡柳', '49', '110', '0.01', '0.01', 'http://picture.daigefan.com/26d7e201909251102023884.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '', '0.20', '0', '1', '246', '1', '0', '1569380532');
INSERT INTO `fun_products` VALUES ('324', '柠檬酸菜鱼（黑鱼/青鱼）', '49', '112', '0.01', '0.01', 'http://picture.daigefan.com/525b5201909251102369922.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '', '0.00', '0', '1', '', '1', '0', '1569380571');
INSERT INTO `fun_products` VALUES ('325', '烤鸭', '49', '112', '12.00', '12.00', 'http://picture.daigefan.com/4b95020190925164614209.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '111', '1.00', '0', '1', '246', '1', '0', '1569401205');
INSERT INTO `fun_products` VALUES ('326', '小炒肉', '49', '109', '3.00', '3.00', 'http://picture.daigefan.com/001d320191011101143295.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '小炒肉', '0.00', '0', '2', '246', '1', '0', '1570759928');
INSERT INTO `fun_products` VALUES ('327', '测试商品', '49', '114', '0.01', '0.01', 'http://picture.daigefan.com/4efa1201910171400475184.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '', '', '0.02', '0', '2', '246,258', '1', '0', '1571292149');

-- ----------------------------
-- Table structure for fun_product_attributes
-- ----------------------------
DROP TABLE IF EXISTS `fun_product_attributes`;
CREATE TABLE `fun_product_attributes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` smallint(4) NOT NULL DEFAULT '0' COMMENT '商家表主键值',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '属性分类名称',
  `pid` smallint(4) NOT NULL DEFAULT '0' COMMENT '父级编号',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态（1正常 2禁用）',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=277 DEFAULT CHARSET=utf8 COMMENT='商品属性分类';

-- ----------------------------
-- Records of fun_product_attributes
-- ----------------------------
INSERT INTO `fun_product_attributes` VALUES ('1', '1', '微辣', '0', '1', '1562315906', '1562315906');
INSERT INTO `fun_product_attributes` VALUES ('2', '1', '中辣', '1', '1', '1562315916', '1562315916');
INSERT INTO `fun_product_attributes` VALUES ('32', '3', '微甜', '0', '1', '1562654112', '1562654112');
INSERT INTO `fun_product_attributes` VALUES ('4', '21', '辣度', '0', '1', '1562316361', '1562316361');
INSERT INTO `fun_product_attributes` VALUES ('5', '3', '微辣', '0', '1', '1562316364', '1562316364');
INSERT INTO `fun_product_attributes` VALUES ('6', '2', '辣度', '0', '1', '1562316524', '1562316524');
INSERT INTO `fun_product_attributes` VALUES ('7', '2', '微辣', '6', '1', '1562316532', '1562316532');
INSERT INTO `fun_product_attributes` VALUES ('8', '2', '中辣', '6', '1', '1562316539', '1562316539');
INSERT INTO `fun_product_attributes` VALUES ('10', '2', '麻度', '0', '1', '1562316558', '1562316558');
INSERT INTO `fun_product_attributes` VALUES ('38', '3', '啦啦', '0', '1', '1562825711', '1562825711');
INSERT INTO `fun_product_attributes` VALUES ('17', '1', '麻辣', '0', '1', '1562319646', '1562319646');
INSERT INTO `fun_product_attributes` VALUES ('31', '10', '拿卡', '0', '1', '1562652640', '1562652640');
INSERT INTO `fun_product_attributes` VALUES ('19', '3', '麻度', '0', '1', '1562319705', '1562319705');
INSERT INTO `fun_product_attributes` VALUES ('20', '3', '微麻', '19', '1', '1562319733', '1562319733');
INSERT INTO `fun_product_attributes` VALUES ('98', '31', '微辣', '0', '1', '1563956627', '1563956627');
INSERT INTO `fun_product_attributes` VALUES ('48', '30', '辣度', '0', '1', '1563172731', '1563172731');
INSERT INTO `fun_product_attributes` VALUES ('99', '31', '中辣', '0', '1', '1563956633', '1563956633');
INSERT INTO `fun_product_attributes` VALUES ('25', '12', '辣度', '0', '1', '1562564971', '1562564971');
INSERT INTO `fun_product_attributes` VALUES ('26', '12', '麻辣', '25', '1', '1562564977', '1562564977');
INSERT INTO `fun_product_attributes` VALUES ('28', '12', '麻度', '0', '1', '1562565003', '1562565003');
INSERT INTO `fun_product_attributes` VALUES ('29', '12', '微麻', '28', '1', '1562565014', '1562565014');
INSERT INTO `fun_product_attributes` VALUES ('34', '1', '哈哈哈', '1', '1', '1562730082', '1562730082');
INSERT INTO `fun_product_attributes` VALUES ('33', '3', '少糖', '32', '1', '1562654123', '1562654123');
INSERT INTO `fun_product_attributes` VALUES ('39', '3', '啦啦1', '38', '1', '1562825721', '1562825721');
INSERT INTO `fun_product_attributes` VALUES ('40', '16', '少糖', '0', '1', '1562923566', '1562923566');
INSERT INTO `fun_product_attributes` VALUES ('41', '25', '辣度', '0', '1', '1563159194', '1563159194');
INSERT INTO `fun_product_attributes` VALUES ('42', '25', '麻辣', '41', '1', '1563159199', '1563159199');
INSERT INTO `fun_product_attributes` VALUES ('43', '16', '甜点', '40', '1', '1563159380', '1563159380');
INSERT INTO `fun_product_attributes` VALUES ('44', '25', '啦啦', '41', '1', '1563159638', '1563159638');
INSERT INTO `fun_product_attributes` VALUES ('46', '25', '3', '41', '1', '1563160563', '1563160563');
INSERT INTO `fun_product_attributes` VALUES ('47', '25', '甜度', '0', '1', '1563161026', '1563161026');
INSERT INTO `fun_product_attributes` VALUES ('49', '30', '麻辣', '48', '1', '1563172737', '1563172737');
INSERT INTO `fun_product_attributes` VALUES ('69', '30', '甜度', '0', '1', '1563178520', '1563178520');
INSERT INTO `fun_product_attributes` VALUES ('76', '30', '微甜', '69', '1', '1563775726', '1563775726');
INSERT INTO `fun_product_attributes` VALUES ('71', '28', '微辣', '0', '1', '1563178999', '1563178999');
INSERT INTO `fun_product_attributes` VALUES ('72', '28', '少辣', '71', '1', '1563179008', '1563179008');
INSERT INTO `fun_product_attributes` VALUES ('73', '28', '多孜然', '71', '1', '1563179158', '1563179158');
INSERT INTO `fun_product_attributes` VALUES ('74', '20', '多辣椒', '0', '1', '1563180172', '1563180172');
INSERT INTO `fun_product_attributes` VALUES ('75', '20', '放醋', '74', '1', '1563180181', '1563180181');
INSERT INTO `fun_product_attributes` VALUES ('79', '30', '微辣', '48', '1', '1563849567', '1563849567');
INSERT INTO `fun_product_attributes` VALUES ('209', '43', '44', '0', '1', '1564392878', '1564392878');
INSERT INTO `fun_product_attributes` VALUES ('81', '30', '特辣', '69', '1', '1563849585', '1563849585');
INSERT INTO `fun_product_attributes` VALUES ('83', '30', '甜辣', '69', '1', '1563849685', '1563849685');
INSERT INTO `fun_product_attributes` VALUES ('84', '30', '麻度', '0', '1', '1563850658', '1563850658');
INSERT INTO `fun_product_attributes` VALUES ('85', '30', '麻辣', '84', '1', '1563850664', '1563850664');
INSERT INTO `fun_product_attributes` VALUES ('210', '43', '4', '209', '1', '1564392890', '1564392890');
INSERT INTO `fun_product_attributes` VALUES ('95', '24', '微辣', '94', '1', '1563871355', '1563871355');
INSERT INTO `fun_product_attributes` VALUES ('96', '24', '中辣', '94', '1', '1563871367', '1563871367');
INSERT INTO `fun_product_attributes` VALUES ('94', '24', '辣度', '0', '1', '1563871346', '1563871346');
INSERT INTO `fun_product_attributes` VALUES ('97', '24', '特辣', '94', '1', '1563871375', '1563871375');
INSERT INTO `fun_product_attributes` VALUES ('100', '31', '特辣', '0', '1', '1563956637', '1563956637');
INSERT INTO `fun_product_attributes` VALUES ('101', '31', '炒饭', '0', '1', '1563957054', '1563957054');
INSERT INTO `fun_product_attributes` VALUES ('102', '31', '炒面', '0', '1', '1563957058', '1563957058');
INSERT INTO `fun_product_attributes` VALUES ('103', '31', '炒河粉', '0', '1', '1563957066', '1563957066');
INSERT INTO `fun_product_attributes` VALUES ('104', '28', '麻度', '0', '1', '1563959467', '1563959467');
INSERT INTO `fun_product_attributes` VALUES ('105', '28', '微麻', '104', '1', '1563959479', '1563959479');
INSERT INTO `fun_product_attributes` VALUES ('108', '28', '甜度', '0', '1', '1563959499', '1563959499');
INSERT INTO `fun_product_attributes` VALUES ('110', '28', '少糖', '108', '1', '1563959506', '1563959506');
INSERT INTO `fun_product_attributes` VALUES ('113', '42', '麻辣', '0', '1', '1563959736', '1563959736');
INSERT INTO `fun_product_attributes` VALUES ('114', '42', '微辣', '113', '1', '1563959742', '1563959742');
INSERT INTO `fun_product_attributes` VALUES ('115', '28', '炒饭', '0', '1', '1563960121', '1563960121');
INSERT INTO `fun_product_attributes` VALUES ('116', '28', '辣', '0', '1', '1563960135', '1563960135');
INSERT INTO `fun_product_attributes` VALUES ('117', '28', '少辣', '0', '1', '1563960146', '1563960146');
INSERT INTO `fun_product_attributes` VALUES ('118', '28', '麻', '0', '1', '1563960156', '1563960156');
INSERT INTO `fun_product_attributes` VALUES ('119', '2', '微麻', '10', '1', '1563960161', '1563960161');
INSERT INTO `fun_product_attributes` VALUES ('120', '31', '辣度', '0', '1', '1563960414', '1563960414');
INSERT INTO `fun_product_attributes` VALUES ('121', '31', '种类', '0', '1', '1563960421', '1563960421');
INSERT INTO `fun_product_attributes` VALUES ('131', '31', '微辣', '120', '1', '1563962201', '1563962201');
INSERT INTO `fun_product_attributes` VALUES ('123', '31', '中辣', '120', '1', '1563960432', '1563960432');
INSERT INTO `fun_product_attributes` VALUES ('124', '31', '特辣', '120', '1', '1563960437', '1563960437');
INSERT INTO `fun_product_attributes` VALUES ('125', '31', '炒饭', '121', '1', '1563960443', '1563960443');
INSERT INTO `fun_product_attributes` VALUES ('126', '31', '炒面', '121', '1', '1563960448', '1563960448');
INSERT INTO `fun_product_attributes` VALUES ('127', '31', '炒河粉', '121', '1', '1563960455', '1563960455');
INSERT INTO `fun_product_attributes` VALUES ('129', '42', '222', '113', '1', '1563961656', '1563961656');
INSERT INTO `fun_product_attributes` VALUES ('161', '43', '444444', '159', '1', '1564391462', '1564391462');
INSERT INTO `fun_product_attributes` VALUES ('220', '42', '甜度', '0', '1', '1564623469', '1564623469');
INSERT INTO `fun_product_attributes` VALUES ('162', '43', '444444', '159', '1', '1564391465', '1564391465');
INSERT INTO `fun_product_attributes` VALUES ('245', '28', '辣', '118', '1', '1565924000', '1565924000');
INSERT INTO `fun_product_attributes` VALUES ('244', '28', '辣', '117', '1', '1565923996', '1565923996');
INSERT INTO `fun_product_attributes` VALUES ('211', '43', 's', '0', '1', '1564392928', '1564392928');
INSERT INTO `fun_product_attributes` VALUES ('212', '43', 's', '211', '1', '1564392933', '1564392933');
INSERT INTO `fun_product_attributes` VALUES ('243', '28', '辣', '115', '1', '1565923980', '1565923980');
INSERT INTO `fun_product_attributes` VALUES ('242', '28', '辣', '116', '1', '1565923975', '1565923975');
INSERT INTO `fun_product_attributes` VALUES ('207', '43', '0', '0', '1', '1564392838', '1564392838');
INSERT INTO `fun_product_attributes` VALUES ('208', '43', '0', '207', '1', '1564392841', '1564392841');
INSERT INTO `fun_product_attributes` VALUES ('221', '42', '微甜', '220', '1', '1564623476', '1564623476');
INSERT INTO `fun_product_attributes` VALUES ('225', '42', '333', '0', '1', '1564644826', '1564644826');
INSERT INTO `fun_product_attributes` VALUES ('226', '42', '333', '225', '1', '1564645020', '1564645020');
INSERT INTO `fun_product_attributes` VALUES ('227', '42', '3333', '0', '1', '1564645023', '1564645023');
INSERT INTO `fun_product_attributes` VALUES ('228', '42', '333333', '227', '1', '1564645031', '1564645031');
INSERT INTO `fun_product_attributes` VALUES ('229', '42', '333333', '227', '1', '1564645036', '1564645036');
INSERT INTO `fun_product_attributes` VALUES ('230', '42', '333333', '227', '1', '1564645038', '1564645038');
INSERT INTO `fun_product_attributes` VALUES ('231', '42', '4', '0', '1', '1564645085', '1564645085');
INSERT INTO `fun_product_attributes` VALUES ('232', '42', '4', '231', '1', '1564645089', '1564645089');
INSERT INTO `fun_product_attributes` VALUES ('241', '27', '特辣', '238', '1', '1565685595', '1565685595');
INSERT INTO `fun_product_attributes` VALUES ('240', '27', '中辣', '238', '1', '1565685589', '1565685589');
INSERT INTO `fun_product_attributes` VALUES ('239', '27', '微辣', '238', '1', '1565685501', '1565685501');
INSERT INTO `fun_product_attributes` VALUES ('238', '27', '规格', '0', '1', '1565685491', '1565685491');
INSERT INTO `fun_product_attributes` VALUES ('246', '49', '辣度', '0', '1', '1566977042', '1566977042');
INSERT INTO `fun_product_attributes` VALUES ('247', '49', '中辣', '246', '1', '1566977047', '1566977047');
INSERT INTO `fun_product_attributes` VALUES ('248', '49', '微辣', '246', '1', '1566977052', '1566977052');
INSERT INTO `fun_product_attributes` VALUES ('274', '49', '中辣', '246', '1', '1575422546', '1575422546');
INSERT INTO `fun_product_attributes` VALUES ('250', '30', '啦啦', '0', '1', '1567063832', '1567063832');
INSERT INTO `fun_product_attributes` VALUES ('251', '30', '微辣', '250', '1', '1567063846', '1567063846');
INSERT INTO `fun_product_attributes` VALUES ('254', '49', '大小', '0', '1', '1570604212', '1570604212');
INSERT INTO `fun_product_attributes` VALUES ('255', '49', '大份', '254', '1', '1570604218', '1570604218');
INSERT INTO `fun_product_attributes` VALUES ('256', '49', '小份', '254', '1', '1570604222', '1570604222');
INSERT INTO `fun_product_attributes` VALUES ('257', '49', '222', '254', '1', '1570606630', '1570606630');
INSERT INTO `fun_product_attributes` VALUES ('258', '49', '测试', '0', '1', '1571292128', '1571292128');
INSERT INTO `fun_product_attributes` VALUES ('259', '49', '测试1', '258', '1', '1571292132', '1571292132');
INSERT INTO `fun_product_attributes` VALUES ('260', '49', '测试2', '258', '1', '1571292137', '1571292137');
INSERT INTO `fun_product_attributes` VALUES ('261', '49', '测试3', '258', '1', '1571292140', '1571292140');
INSERT INTO `fun_product_attributes` VALUES ('262', '28', '333', '71', '1', '1571639229', '1571639229');
INSERT INTO `fun_product_attributes` VALUES ('265', '28', 'www', '71', '1', '1571639485', '1571639485');
INSERT INTO `fun_product_attributes` VALUES ('264', '28', '3333', '71', '1', '1571639237', '1571639237');
INSERT INTO `fun_product_attributes` VALUES ('266', '49', '测试4', '258', '1', '1571639808', '1571639808');
INSERT INTO `fun_product_attributes` VALUES ('267', '49', '测试5', '258', '1', '1571639813', '1571639813');
INSERT INTO `fun_product_attributes` VALUES ('268', '49', '测试6', '258', '1', '1571639818', '1571639818');
INSERT INTO `fun_product_attributes` VALUES ('269', '49', '呜呜呜呜呜呜呜 我 我我 ', '0', '1', '1575282457', '1575282457');
INSERT INTO `fun_product_attributes` VALUES ('270', '49', '呜呜呜呜呜呜呜呜', '269', '1', '1575282464', '1575282464');
INSERT INTO `fun_product_attributes` VALUES ('271', '49', '呜呜呜呜呜呜呜', '269', '1', '1575282471', '1575282471');
INSERT INTO `fun_product_attributes` VALUES ('272', '49', '沃尔沃二翁认为我翁 ', '269', '1', '1575282476', '1575282476');
INSERT INTO `fun_product_attributes` VALUES ('273', '49', '中辣', '246', '1', '1575422542', '1575422542');
INSERT INTO `fun_product_attributes` VALUES ('275', '49', '中辣', '246', '1', '1575422549', '1575422549');
INSERT INTO `fun_product_attributes` VALUES ('276', '49', '中辣', '246', '1', '1575422551', '1575422551');

-- ----------------------------
-- Table structure for fun_product_classifies
-- ----------------------------
DROP TABLE IF EXISTS `fun_product_classifies`;
CREATE TABLE `fun_product_classifies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` smallint(4) NOT NULL COMMENT '商家表主键值',
  `name` varchar(30) NOT NULL COMMENT '商品分类名称',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态（1正常 2下架）',
  `sort` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '分类排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8 COMMENT='商品分类表';

-- ----------------------------
-- Records of fun_product_classifies
-- ----------------------------
INSERT INTO `fun_product_classifies` VALUES ('1', '1', '麻辣', '1', '1');
INSERT INTO `fun_product_classifies` VALUES ('3', '21', '就那', '1', '1');
INSERT INTO `fun_product_classifies` VALUES ('4', '3', '烧烤', '1', '1');
INSERT INTO `fun_product_classifies` VALUES ('5', '2', '凉拌菜', '1', '1');
INSERT INTO `fun_product_classifies` VALUES ('6', '2', '干锅', '1', '1');
INSERT INTO `fun_product_classifies` VALUES ('7', '1', '牛肉丸', '1', '1');
INSERT INTO `fun_product_classifies` VALUES ('8', '3', '炒饭', '1', '1');
INSERT INTO `fun_product_classifies` VALUES ('9', '1', '麻辣烫', '1', '1');
INSERT INTO `fun_product_classifies` VALUES ('10', '3', '炒菜', '1', '1');
INSERT INTO `fun_product_classifies` VALUES ('11', '1', '皮肚面', '1', '1');
INSERT INTO `fun_product_classifies` VALUES ('12', '9', '烟', '1', '1');
INSERT INTO `fun_product_classifies` VALUES ('13', '8', '1', '1', '1');
INSERT INTO `fun_product_classifies` VALUES ('14', '8', '2', '1', '1');
INSERT INTO `fun_product_classifies` VALUES ('15', '8', '3', '1', '1');
INSERT INTO `fun_product_classifies` VALUES ('16', '12', '麻辣烫', '1', '1');
INSERT INTO `fun_product_classifies` VALUES ('17', '12', '面条', '1', '1');
INSERT INTO `fun_product_classifies` VALUES ('19', '3', '饮料', '1', '1');
INSERT INTO `fun_product_classifies` VALUES ('21', '3', '麻辣豆腐', '1', '1');
INSERT INTO `fun_product_classifies` VALUES ('22', '3', '宫保鸡丁', '1', '1');
INSERT INTO `fun_product_classifies` VALUES ('23', '3', '麻辣烫', '1', '1');
INSERT INTO `fun_product_classifies` VALUES ('24', '3', '油泼面', '1', '1');
INSERT INTO `fun_product_classifies` VALUES ('25', '3', '小马烧烤', '1', '1');
INSERT INTO `fun_product_classifies` VALUES ('27', '3', '小马烧烤4', '1', '1');
INSERT INTO `fun_product_classifies` VALUES ('29', '3', '油泼面1', '1', '1');
INSERT INTO `fun_product_classifies` VALUES ('31', '3', '淘哥炒饭', '1', '1');
INSERT INTO `fun_product_classifies` VALUES ('32', '12', '面筋', '1', '1');
INSERT INTO `fun_product_classifies` VALUES ('33', '16', '甜', '1', '1');
INSERT INTO `fun_product_classifies` VALUES ('35', '30', '泡面', '1', '6');
INSERT INTO `fun_product_classifies` VALUES ('36', '30', '麻辣烫', '1', '2');
INSERT INTO `fun_product_classifies` VALUES ('39', '30', '香肠', '1', '4');
INSERT INTO `fun_product_classifies` VALUES ('40', '30', '可乐', '1', '0');
INSERT INTO `fun_product_classifies` VALUES ('41', '28', '炒饭', '1', '6');
INSERT INTO `fun_product_classifies` VALUES ('42', '28', '便当', '1', '4');
INSERT INTO `fun_product_classifies` VALUES ('45', '28', '寿司', '1', '8');
INSERT INTO `fun_product_classifies` VALUES ('46', '28', '快餐', '1', '0');
INSERT INTO `fun_product_classifies` VALUES ('47', '28', '沙拉', '1', '7');
INSERT INTO `fun_product_classifies` VALUES ('48', '28', '皮蛋瘦肉', '1', '2');
INSERT INTO `fun_product_classifies` VALUES ('51', '30', '面条', '1', '5');
INSERT INTO `fun_product_classifies` VALUES ('52', '28', '炒面', '1', '3');
INSERT INTO `fun_product_classifies` VALUES ('53', '28', '饮料', '1', '5');
INSERT INTO `fun_product_classifies` VALUES ('54', '28', '水果', '1', '1');
INSERT INTO `fun_product_classifies` VALUES ('55', '30', '油饼', '1', '1');
INSERT INTO `fun_product_classifies` VALUES ('56', '30', '胡辣汤', '1', '7');
INSERT INTO `fun_product_classifies` VALUES ('57', '30', '葡萄干', '1', '3');
INSERT INTO `fun_product_classifies` VALUES ('59', '20', '炒饭', '1', '1');
INSERT INTO `fun_product_classifies` VALUES ('61', '10', '汤面', '1', '1');
INSERT INTO `fun_product_classifies` VALUES ('62', '10', '炒面', '1', '1');
INSERT INTO `fun_product_classifies` VALUES ('64', '25', '粉丝汤', '1', '1');
INSERT INTO `fun_product_classifies` VALUES ('66', '23', '刺身', '1', '1');
INSERT INTO `fun_product_classifies` VALUES ('68', '23', '轻蔬拌饭', '1', '1');
INSERT INTO `fun_product_classifies` VALUES ('70', '23', '火灸专场', '1', '1');
INSERT INTO `fun_product_classifies` VALUES ('71', '23', '寿司套餐', '1', '1');
INSERT INTO `fun_product_classifies` VALUES ('73', '24', '黄焖排骨', '1', '1');
INSERT INTO `fun_product_classifies` VALUES ('74', '24', '黄焖鸡', '1', '1');
INSERT INTO `fun_product_classifies` VALUES ('75', '24', '黄焖猪蹄', '1', '1');
INSERT INTO `fun_product_classifies` VALUES ('91', '26', '鲜奶', '1', '1');
INSERT INTO `fun_product_classifies` VALUES ('92', '26', '面包', '1', '1');
INSERT INTO `fun_product_classifies` VALUES ('93', '26', '小吃', '1', '1');
INSERT INTO `fun_product_classifies` VALUES ('96', '42', '面', '1', '1');
INSERT INTO `fun_product_classifies` VALUES ('97', '31', '招牌炒饭炒面炒河粉', '1', '1');
INSERT INTO `fun_product_classifies` VALUES ('98', '31', '另加', '1', '1');
INSERT INTO `fun_product_classifies` VALUES ('99', '31', '招牌卤肉饭', '1', '1');
INSERT INTO `fun_product_classifies` VALUES ('100', '34', '招牌卤肉饭', '1', '1');
INSERT INTO `fun_product_classifies` VALUES ('101', '43', '999', '1', '6');
INSERT INTO `fun_product_classifies` VALUES ('102', '43', '66', '1', '2');
INSERT INTO `fun_product_classifies` VALUES ('103', '43', '333', '1', '3');
INSERT INTO `fun_product_classifies` VALUES ('104', '43', '777', '1', '5');
INSERT INTO `fun_product_classifies` VALUES ('105', '43', '4444', '1', '4');
INSERT INTO `fun_product_classifies` VALUES ('106', '43', 's', '1', '1');
INSERT INTO `fun_product_classifies` VALUES ('107', '43', 'e', '1', '0');
INSERT INTO `fun_product_classifies` VALUES ('108', '43', '面食', '1', '7');
INSERT INTO `fun_product_classifies` VALUES ('109', '49', '肉', '1', '0');
INSERT INTO `fun_product_classifies` VALUES ('110', '49', '甜品', '1', '2');
INSERT INTO `fun_product_classifies` VALUES ('112', '49', '汤类', '1', '1');
INSERT INTO `fun_product_classifies` VALUES ('113', '99', '22', '1', '1');
INSERT INTO `fun_product_classifies` VALUES ('114', '49', '测试', '1', '3');

-- ----------------------------
-- Table structure for fun_riders
-- ----------------------------
DROP TABLE IF EXISTS `fun_riders`;
CREATE TABLE `fun_riders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL DEFAULT '' COMMENT '骑手姓名',
  `headimgurl` varchar(300) NOT NULL DEFAULT '' COMMENT '头像',
  `sex` tinyint(1) NOT NULL DEFAULT '1' COMMENT '性别 1男 2女',
  `identity_num` varchar(30) NOT NULL DEFAULT '' COMMENT '身份证号',
  `phone` bigint(11) NOT NULL DEFAULT '0' COMMENT '手机号【申请入驻时填写的手机号，用于订单相关方向】',
  `link_tel` bigint(11) NOT NULL DEFAULT '0' COMMENT '联系电话',
  `card_img` varchar(255) NOT NULL DEFAULT '' COMMENT '身份证正面照',
  `back_img` varchar(255) NOT NULL DEFAULT '' COMMENT '身份证反面照',
  `hand_card_img` varchar(255) NOT NULL DEFAULT '' COMMENT '手持身份证照',
  `openid` varchar(100) NOT NULL DEFAULT '' COMMENT '骑手唯一身份编号',
  `school_id` smallint(4) NOT NULL DEFAULT '0' COMMENT '学校表主键值',
  `nickname` varchar(30) CHARACTER SET utf8mb4 NOT NULL DEFAULT '' COMMENT '昵称',
  `remark` varchar(100) NOT NULL DEFAULT '0' COMMENT '审核不通过状态',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态（0未激活 1待审核 2未通过 3已通过 4禁用）',
  `add_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `last_login_time` int(10) NOT NULL DEFAULT '0' COMMENT '最近一次登录时间',
  `open_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1开工  2休息',
  `check_join` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0填写加入表单， 1已填写加入表单【前端用】',
  `pass_time` int(10) DEFAULT '0' COMMENT '审核通过时间',
  `formid` varchar(200) NOT NULL DEFAULT '',
  `overtime` int(10) NOT NULL DEFAULT '0',
  `hourse_ids` varchar(500) NOT NULL DEFAULT '' COMMENT '骑手绑定楼号集合',
  `type` tinyint(1) NOT NULL DEFAULT '2' COMMENT '骑手身份：1送餐员  2取餐员   3商家自取送餐员',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='骑手信息表';

-- ----------------------------
-- Records of fun_riders
-- ----------------------------

-- ----------------------------
-- Table structure for fun_rider_intentions
-- ----------------------------
DROP TABLE IF EXISTS `fun_rider_intentions`;
CREATE TABLE `fun_rider_intentions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL DEFAULT '0' COMMENT '用户主键值',
  `school_id` smallint(4) NOT NULL DEFAULT '0' COMMENT '学校编号',
  `phone` bigint(11) NOT NULL DEFAULT '0' COMMENT '手机号',
  `add_time` int(10) NOT NULL DEFAULT '0' COMMENT '记录时间',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1未处理 2已处理 3不处理',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='骑手招募【意向表单】';

-- ----------------------------
-- Records of fun_rider_intentions
-- ----------------------------

-- ----------------------------
-- Table structure for fun_roles
-- ----------------------------
DROP TABLE IF EXISTS `fun_roles`;
CREATE TABLE `fun_roles` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL COMMENT '角色名',
  `depict` varchar(200) DEFAULT NULL COMMENT '角色描述',
  `node_ids` varchar(1000) DEFAULT NULL COMMENT '角色具备的权限ids',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='全国角色表';

-- ----------------------------
-- Records of fun_roles
-- ----------------------------
INSERT INTO `fun_roles` VALUES ('1', '超级管理员', '具备所有权限', '13,18,14,15,16,17,25,26,27,33,34,35,36,37,42,43,38,45,46,39,49,40,47,48,41,50,51');
INSERT INTO `fun_roles` VALUES ('2', '资源管理员', '具备商品管理，帮助中心等操作权限', '3,4,5,3,4,5,10,11,12,3,4,5,10,11,12,14,15,16,17');

-- ----------------------------
-- Table structure for fun_schools
-- ----------------------------
DROP TABLE IF EXISTS `fun_schools`;
CREATE TABLE `fun_schools` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL COMMENT '学校名称',
  `fid` smallint(4) NOT NULL DEFAULT '0' COMMENT '父级主键值',
  `level` tinyint(1) NOT NULL DEFAULT '2' COMMENT '等级',
  `longitude` varchar(20) NOT NULL DEFAULT '' COMMENT '经度',
  `latitude` varchar(20) NOT NULL DEFAULT '' COMMENT '纬度',
  `completion_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '订单预估送达时间值',
  `fetch_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '骑手约定取餐时间值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='学校表';

-- ----------------------------
-- Records of fun_schools
-- ----------------------------
INSERT INTO `fun_schools` VALUES ('1', '栖霞区', '0', '1', '', '', '0', '0');
INSERT INTO `fun_schools` VALUES ('2', '建邺区', '0', '1', '', '', '0', '0');
INSERT INTO `fun_schools` VALUES ('3', '浦口区', '0', '1', '', '', '0', '0');
INSERT INTO `fun_schools` VALUES ('4', '江宁区', '0', '1', '', '', '0', '0');
INSERT INTO `fun_schools` VALUES ('5', '鼓楼区', '0', '1', '', '', '0', '0');
INSERT INTO `fun_schools` VALUES ('6', '玄武区', '0', '1', '', '', '0', '0');
INSERT INTO `fun_schools` VALUES ('7', '秦淮区', '0', '1', '', '', '0', '0');
INSERT INTO `fun_schools` VALUES ('8', '雨花台区', '0', '1', '', '', '0', '0');
INSERT INTO `fun_schools` VALUES ('9', '六合区', '0', '1', '', '', '0', '0');
INSERT INTO `fun_schools` VALUES ('10', '溧水区', '0', '1', '', '', '0', '0');
INSERT INTO `fun_schools` VALUES ('11', '高淳区', '0', '1', '', '', '0', '0');
INSERT INTO `fun_schools` VALUES ('12', '南京信息职业技术学院', '1', '2', '22.2', '11.2', '15', '5');
INSERT INTO `fun_schools` VALUES ('13', '舜禹大厦0', '2', '2', '118.733340', '31.982680', '50', '30');
INSERT INTO `fun_schools` VALUES ('27', '南京11', '4', '2', '111', '111', '11', '11');
INSERT INTO `fun_schools` VALUES ('28', '南京大学', '3', '2', '118.733340', '31.982680', '0', '0');
INSERT INTO `fun_schools` VALUES ('29', '东南大学', '4', '2', '55.3', '26.5', '30', '15');
INSERT INTO `fun_schools` VALUES ('38', '杨涛学校1', '2', '2', '31.111111', '118.22222', '30', '15');

-- ----------------------------
-- Table structure for fun_shops
-- ----------------------------
DROP TABLE IF EXISTS `fun_shops`;
CREATE TABLE `fun_shops` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_name` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '商家名称',
  `logo_img` varchar(255) DEFAULT NULL COMMENT '商家封面图',
  `account` varchar(20) NOT NULL COMMENT '账户',
  `password` char(32) NOT NULL COMMENT '密码 ',
  `info` varchar(500) DEFAULT '待更新。。。' COMMENT '商家信息',
  `up_to_send_money` decimal(10,2) DEFAULT '0.00' COMMENT '起送价格',
  `run_time` varchar(200) DEFAULT '06:00-22:00' COMMENT '配送[营业]时间段',
  `balance` decimal(10,2) DEFAULT '0.00' COMMENT '余额（可提现金额）',
  `address` varchar(50) DEFAULT '' COMMENT '地址',
  `marks` decimal(10,1) DEFAULT '5.0' COMMENT '评分',
  `sales` smallint(4) DEFAULT '0' COMMENT '总销量',
  `notice` varchar(255) DEFAULT '待更新。。。' COMMENT '商家公告',
  `check_status` tinyint(1) DEFAULT '0' COMMENT '0未通过审核， 1已通过审核【前端用】',
  `remark` varchar(50) DEFAULT '' COMMENT '审核不通过的状态值',
  `status` tinyint(1) DEFAULT '0' COMMENT '状态（ 0未激活 1待审核 2未通过 3已通过[启用] 4禁用）',
  `add_time` int(10) NOT NULL DEFAULT '0' COMMENT '记录时间',
  `longitude` double(10,6) DEFAULT NULL COMMENT '经度',
  `latitude` double(10,6) DEFAULT NULL COMMENT '纬度',
  `school_id` smallint(4) NOT NULL DEFAULT '0' COMMENT '学校编号（开店所在学校）',
  `category_id` smallint(4) NOT NULL DEFAULT '0' COMMENT '经营品类编号（经营品类）',
  `sort` smallint(4) NOT NULL DEFAULT '0' COMMENT '排序',
  `link_name` varchar(10) NOT NULL DEFAULT '' COMMENT '联系人',
  `link_tel` varchar(11) NOT NULL DEFAULT '' COMMENT '联系电话',
  `ping_fee` decimal(10,2) NOT NULL DEFAULT '2.00' COMMENT '配送价',
  `open_status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '1:营业中 0:暂停营业',
  `segmentation` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '平台抽成(百分制)',
  `run_type` varchar(64) NOT NULL DEFAULT '平台配送' COMMENT '配送方式',
  `update_time` int(10) NOT NULL DEFAULT '0' COMMENT '修改时间',
  `canteen_id` int(10) NOT NULL DEFAULT '0' COMMENT '食堂ID',
  `price_hike` decimal(10,2) NOT NULL DEFAULT '1.00' COMMENT '提价',
  `canteen_open_status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '食堂启用营业状态 1:营业中 0:暂停营业',
  `hike_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 固定金额加价  2 比例提价',
  `withdraw_cycle` tinyint(1) NOT NULL DEFAULT '7' COMMENT '提现周期',
  `auto_receive` tinyint(1) NOT NULL DEFAULT '0' COMMENT '商家自动接单状态【0不开启 1开启】',
  `print_device_sn` varchar(60) NOT NULL DEFAULT '0' COMMENT '打印机设备编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COMMENT='商家信息表';

-- ----------------------------
-- Records of fun_shops
-- ----------------------------
INSERT INTO `fun_shops` VALUES ('2', '饭饭便当', 'http://picture.daigefan.com/d22d720190716140909359.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '18013861036', '25d55ad283aa400af464c76d713c07ad', '用餐高峰期，为了能给您准时奉上美味佳肴，请各位小主提前下单！南京花津浦餐饮管理有限公司欢迎您的光临！！！', '0.00', '06:00-22:00', '0.00', '江苏省南京市建邺区康文路', '4.6', '0', '用餐高峰期，为了能给您准时奉上美味佳肴，请各位小主提前下单！南京花津浦餐饮管理有限公司欢迎您的光临！！！', '1', '', '3', '1562315064', '118.734250', '31.983309', '13', '1', '1', '黑子', '18013861036', '2.00', '1', '10.00', '平台配送', '0', '2', '2.00', '1', '2', '1', '0', '0');
INSERT INTO `fun_shops` VALUES ('3', '麻辣诱惑', 'http://picture.daigefan.com/d16e0201907151348198125.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '17521086195', '1bbd886460827015e5d605ed44252251', '用餐高峰期，为了能给您准时奉上美味佳肴，请各位小主提前下单！南京花津浦餐饮管理有限公司欢迎您的光临！！！', '0.00', '06:00-22:00', '0.00', '江苏省南京市建邺区康文路', '5.0', '0', '用餐高峰期，为了能给您准时奉上美味佳肴，请各位小主提前下单！南京花津浦餐饮管理有限公司欢迎您的光临！！！', '1', '', '1', '1562315082', '118.734295', '31.983359', '12', '1', '0', '张涛涛', '17521086195', '0.00', '1', '0.00', '平台配送', '1563169863', '2', '0.00', '0', '1', '7', '1', '0');
INSERT INTO `fun_shops` VALUES ('9', '小马佩奇', 'http://picture.daigefan.com/dc34d201907051808003065.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '18626388913', 'c1b14c2eb386a3a0dbefe1d506bbfd34', '用餐高峰期，为了能给您准时奉上美味佳肴，请各位小主提前下单！南京花津浦餐饮管理有限公司欢迎您的光临！！！', '0.00', '06:00-22:00', '0.00', '江苏省南京市建邺区白龙江东街19号舜禹大厦新城汇内', '5.0', '0', '用餐高峰期，为了能给您准时奉上美味佳肴，请各位小主提前下单！南京花津浦餐饮管理有限公司欢迎您的光临！！！', '1', '', '2', '1562320562', '118.734123', '31.983264', '13', '1', '1', '1', '18626388913', '2.00', '1', '0.00', '平台配送', '0', '2', '1.00', '1', '1', '7', '0', '0');
INSERT INTO `fun_shops` VALUES ('23', '一藤日料', 'http://picture.daigefan.com/1bad4201907231559186438.jpeg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '18815137707', '25d55ad283aa400af464c76d713c07ad', '用餐高峰期，为了能给您准时奉上美味佳肴，请各位小主提前下单！南京花津浦餐饮管理有限公司欢迎您的光临！！！', '0.10', '09:00-23:00', '0.00', '南京建邺区白龙江东街19号舜禹大厦裙楼新城汇一楼东门(临创智路国家广告产业园对面)', '5.0', '0', '用餐高峰期，为了能给您准时奉上美味佳肴，请各位小主提前下单！南京花津浦餐饮管理有限公司欢迎您的光临！！！', '1', '', '4', '1562925648', '118.734489', '31.983186', '13', '1', '0', '刘啸斌', '18815137707', '0.10', '1', '0.00', '平台配送', '1563156817', '2', '0.01', '1', '2', '7', '0', '0');
INSERT INTO `fun_shops` VALUES ('26', '一鸣真鲜', 'http://picture.daigefan.com/f52c0201907231800173015.jpeg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '18815137701', '1bbd886460827015e5d605ed44252251', '用餐高峰期，为了能给您准时奉上美味佳肴，请各位小主提前下单！南京花津浦餐饮管理有限公司欢迎您的光临！！！', '0.00', '06:00-22:00', '0.00', '南京市建邺区康文路18号', '5.0', '0', '用餐高峰期，为了能给您准时奉上美味佳肴，请各位小主提前下单！南京花津浦餐饮管理有限公司欢迎您的光临！！！', '1', '', '4', '1563156369', '118.733943', '31.983035', '13', '2', '0', '黄低', '18815137707', '2.00', '0', '0.00', '平台配送', '1563157789', '2', '10.00', '1', '2', '7', '0', '0');
INSERT INTO `fun_shops` VALUES ('28', '水村人家', 'http://picture.daigefan.com/447b820190807165432712.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '18538577840', '1bbd886460827015e5d605ed44252251', '用餐高峰期，为了能给您准时奉上美味佳肴，请各位小主提前下单！南京花津浦餐饮管理有限公司欢迎您的光临！！！', '0.00', '00:00-23:00', '0.00', '江苏省南京市建邺区康文路', '5.0', '0', '用餐高峰期，为了能给您准时奉上美味佳肴，请各位小主提前下单！南京花津浦餐饮管理有限公司欢迎您的光临！！！', '1', '', '3', '1563162570', '118.734295', '31.983374', '12', '2', '2', '李', '18538577848', '0.00', '1', '0.00', '平台配送', '1563170375', '2', '0.00', '1', '1', '7', '1', '0');
INSERT INTO `fun_shops` VALUES ('49', '阳光餐厅', 'http://picture.daigefan.com/5d715201909101727221705.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '18751951425', '3985ef94a12f8a1555354d9e3766ca67', '也一样', '0.00', '00:00-23:00', '0.00', '江苏省南京市建邺区康文路', '5.0', '0', '日日日', '1', '', '3', '1565679945', '118.734254', '31.983401', '13', '8', '1', '杨涛', '18538577840', '0.00', '1', '5.00', '平台配送', '1565684006', '2', '1.00', '1', '1', '1', '1', '550514700');
INSERT INTO `fun_shops` VALUES ('50', '', '', '18751583628', '3985ef94a12f8a1555354d9e3766ca67', '待更新。。。', '0.00', '', '0.00', '', '5.0', '0', '待更新。。。', '0', '', '0', '1565834841', null, null, '0', '0', '0', '', '', '2.00', '0', '0.00', '平台配送', '0', '38', '1.00', '1', '1', '7', '0', '0');
INSERT INTO `fun_shops` VALUES ('51', '', '', '17888888888', '1bbd886460827015e5d605ed44252251', '待更新。。。', '0.00', '', '0.00', '', '5.0', '0', '待更新。。。', '0', '', '0', '1565871043', null, null, '0', '0', '0', '', '', '2.00', '0', '0.00', '平台配送', '0', '0', '1.00', '1', '1', '7', '0', '0');

-- ----------------------------
-- Table structure for fun_shop_discounts
-- ----------------------------
DROP TABLE IF EXISTS `fun_shop_discounts`;
CREATE TABLE `fun_shop_discounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` smallint(4) NOT NULL DEFAULT '0' COMMENT '商家主键值',
  `face_value` int(10) NOT NULL DEFAULT '0' COMMENT '满减券面值',
  `threshold` int(10) NOT NULL DEFAULT '0' COMMENT '满减券门槛',
  `platform_assume` int(10) NOT NULL DEFAULT '0' COMMENT '平台承担金额',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 正常 1删除',
  PRIMARY KEY (`id`),
  KEY `shop_sdiscounts` (`shop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='店铺满减券';

-- ----------------------------
-- Records of fun_shop_discounts
-- ----------------------------
INSERT INTO `fun_shop_discounts` VALUES ('1', '49', '8', '30', '5', '1574663680', '0');
INSERT INTO `fun_shop_discounts` VALUES ('2', '49', '3', '10', '2', '1574663688', '1');
INSERT INTO `fun_shop_discounts` VALUES ('3', '49', '4', '20', '3', '1574663694', '0');
INSERT INTO `fun_shop_discounts` VALUES ('4', '49', '10', '50', '5', '0', '0');
INSERT INTO `fun_shop_discounts` VALUES ('5', '49', '1', '3', '1', '0', '1');

-- ----------------------------
-- Table structure for fun_shop_mores
-- ----------------------------
DROP TABLE IF EXISTS `fun_shop_mores`;
CREATE TABLE `fun_shop_mores` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` smallint(4) NOT NULL DEFAULT '0' COMMENT '商家信息表主键值',
  `business_license` varchar(255) NOT NULL DEFAULT '' COMMENT '营业执照',
  `proprietor` varchar(10) NOT NULL DEFAULT '' COMMENT '经营者',
  `hand_card_front` varchar(255) NOT NULL DEFAULT '' COMMENT '手持身份证正面照',
  `hand_card_back` varchar(255) NOT NULL DEFAULT '' COMMENT '手持身份证反面照',
  `user_name` varchar(10) NOT NULL DEFAULT '' COMMENT '姓名',
  `identity_num` varchar(30) NOT NULL DEFAULT '' COMMENT '身份证号',
  `sex` tinyint(1) NOT NULL DEFAULT '0' COMMENT '性别（1男 2女）',
  `licence` varchar(255) NOT NULL DEFAULT '' COMMENT '许可证',
  `branch_back` varchar(100) NOT NULL DEFAULT '' COMMENT '银行支行名称',
  `back_hand_name` varchar(10) NOT NULL DEFAULT '' COMMENT '开户人姓名',
  `back_card_num` varchar(30) NOT NULL DEFAULT '' COMMENT '银行卡号',
  `account_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '账户类型（1对公 2对私）',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `shop_smi` (`shop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='商家更多详情信息';

-- ----------------------------
-- Records of fun_shop_mores
-- ----------------------------
INSERT INTO `fun_shop_mores` VALUES ('1', '1', 'http://picture.daigefan.com/d4ff020190708094042596.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '韩束', 'http://picture.daigefan.com/68405201907080940499492.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'http://picture.daigefan.com/272c3201907080941024972.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '韩束', '310325199511123523', '1', 'http://picture.daigefan.com/24e85201907080941295987.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '河南省 南阳市 农业银行 金沙江支行', '韩束', '413251236542573564', '1', '0', '0');
INSERT INTO `fun_shop_mores` VALUES ('2', '3', 'http://picture.daigefan.com/431a0201907151348456365.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '韩华生', 'http://picture.daigefan.com/0eb6420190715134848214.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'http://picture.daigefan.com/5bcae201907151348586132.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '韩华生', '310325198502156696', '1', 'http://picture.daigefan.com/f3ddf201907151349173326.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '上海市 上海市 招商银行 金沙支行', '韩华生', '4125698568515269562', '2', '0', '1563169863');
INSERT INTO `fun_shop_mores` VALUES ('3', '20', 'http://picture.daigefan.com/19919201907151640214287.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '海参', 'http://picture.daigefan.com/29f52201907151640236199.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'http://picture.daigefan.com/437c4201907151640314199.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '海参', '411325196202156635', '1', 'http://picture.daigefan.com/fb431201907151640518082.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '北京市 北京市 工商银行 金沙支行', '海参', '4125696584515625352', '1', '0', '1563180089');
INSERT INTO `fun_shop_mores` VALUES ('4', '2', 'http://picture.daigefan.com/17586201907051639154115.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '王贝', 'http://picture.daigefan.com/8aec1201907051639266043.jpeg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'http://picture.daigefan.com/da78d201907051639324234.jpeg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '王贝', '320684199610087163', '2', 'http://picture.daigefan.com/a1bf0201907051639588143.jpeg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '江苏省 南京市 招商银行 城北支行', '黑子', '125910131210911', '1', '0', '0');
INSERT INTO `fun_shop_mores` VALUES ('6', '9', 'http://picture.daigefan.com/38646201907051808193295.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '1', 'http://picture.daigefan.com/663a6201907051808222587.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'http://picture.daigefan.com/46b2520190705180826473.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '1', '321281190000000000', '2', 'http://picture.daigefan.com/33d2a201907051808489150.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '江苏省 无锡市 中国银行 1', '1', '12345678912345678911', '2', '0', '0');
INSERT INTO `fun_shop_mores` VALUES ('7', '10', 'http://picture.daigefan.com/740c5201907080952468965.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '二遍', 'http://picture.daigefan.com/e0bb2201907080952492617.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'http://picture.daigefan.com/6ac1c201907080952575975.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '随便发的 ', '323422199511123658', '1', 'http://picture.daigefan.com/78c98201907080953179349.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'undefined undefined undefined 如果他给你', '然后他', '343243234544445543', '1', '0', '0');
INSERT INTO `fun_shop_mores` VALUES ('8', '12', 'http://picture.daigefan.com/b8735201907081137063539.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '韩华生', 'http://picture.daigefan.com/d862e201907081137091618.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'http://picture.daigefan.com/6f3a5201907081137164205.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '韩华生', '310325199811128596', '1', 'http://picture.daigefan.com/3cc2d201907081137504955.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '北京市 北京市 工商银行 金沙江支行', '韩华生', '3201521589654856985', '2', '0', '0');
INSERT INTO `fun_shop_mores` VALUES ('11', '15', 'http://picture.daigefan.com/da046201907121710114129.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '邓春歌', 'http://picture.daigefan.com/a4b45201907121710202462.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'http://picture.daigefan.com/f15e7201907121710246312.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '邓春歌', '46533165278654546548', '1', 'http://picture.daigefan.com/0a512201907121710468865.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '北京市 北京市 工商银行 北京支行', '邓春歌', '464648816618876494', '2', '0', '0');
INSERT INTO `fun_shop_mores` VALUES ('12', '16', 'http://picture.daigefan.com/b1163201907121721129213.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '李', 'http://picture.daigefan.com/a4cd6201907121721175174.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'http://picture.daigefan.com/be069201907121721192452.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '邓', '4124456655887789555', '1', 'http://picture.daigefan.com/fb67f201907121721354064.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '北京市 北京市 工商银行 北京支行', '邓春歌', '622284803229636886577', '2', '0', '0');
INSERT INTO `fun_shop_mores` VALUES ('18', '23', 'http://picture.daigefan.com/0a6d0201907151011476980.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '刘啸斌', 'http://picture.daigefan.com/328ba201907151011514058.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'http://picture.daigefan.com/df927201907151012036530.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '刘啸斌', '362424199705303412', '1', 'http://picture.daigefan.com/dbf30201907151012269967.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '江苏省 南京市 农业银行 浦口支行', '刘啸斌', '6228480329436806577', '2', '1563155470', '1563156817');
INSERT INTO `fun_shop_mores` VALUES ('19', '26', 'http://picture.daigefan.com/9f73e201907151028258942.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '刘个', 'http://picture.daigefan.com/f89cd201907151028296444.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'http://picture.daigefan.com/7f900201907151028396754.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '刘公', '365656199807063423', '1', 'http://picture.daigefan.com/fe683201907151029114343.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '北京市 北京市 工商银行 北京支行', '刘啸斌', '6228480329436806577', '2', '1563157789', '0');
INSERT INTO `fun_shop_mores` VALUES ('20', '25', 'http://picture.daigefan.com/40b57201907151044124029.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '刘琦', 'http://picture.daigefan.com/ef868201907151044196383.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'http://picture.daigefan.com/37d7820190715104423439.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '刘琦', '411325198602159986', '1', 'http://picture.daigefan.com/36f35201907151044423846.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '河北省 石家庄市 工商银行 金沙支行', '刘琦', '412569512562568569', '1', '1563158745', '0');
INSERT INTO `fun_shop_mores` VALUES ('21', '28', 'http://picture.daigefan.com/5a507201907151358068836.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '邓', 'http://picture.daigefan.com/3e5ad201907151358439517.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'http://picture.daigefan.com/224ce201907151358463737.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '邓', '4115124546588998566', '1', 'http://picture.daigefan.com/c5211201907151358598758.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '北京市 北京市 工商银行 北京支行', '邓', '656233569898944565', '2', '1563170375', '0');
INSERT INTO `fun_shop_mores` VALUES ('24', '30', 'http://picture.daigefan.com/b25b2201907151429122078.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '韩华生', 'http://picture.daigefan.com/888a4201907151429191754.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'http://picture.daigefan.com/7856e201907151429221252.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '韩华生', '411325198502156698', '1', 'http://picture.daigefan.com/f9c29201907151429406930.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '北京市 北京市 工商银行 金沙支行', '韩华生', '4125365156212562', '1', '1563172205', '0');
INSERT INTO `fun_shop_mores` VALUES ('25', '31', 'http://picture.daigefan.com/585e5201907241142462949.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '陈立顶', 'http://picture.daigefan.com/4b9ce201907241143282446.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'http://picture.daigefan.com/405aa201907241143416616.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '刘洋', '321283199406127414', '1', 'http://picture.daigefan.com/9fb2720190724114400358.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '江苏省 南京市 工商银行 马群支行', '刘洋', '6212264301010036562', '2', '1563939936', '0');
INSERT INTO `fun_shop_mores` VALUES ('26', '34', 'http://picture.daigefan.com/690af201907241501126091.jpeg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '唐山', 'http://picture.daigefan.com/3157a20190724145929976.jpeg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'http://picture.daigefan.com/0a1cd201907241459341158.jpeg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '唐山', '3201121208012121243', '1', 'http://picture.daigefan.com/2a75b201907241500141918.jpeg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '山西省 太原市 农业银行 江北新区支行', '唐山', '6228484392722748319', '2', '1563951675', '0');
INSERT INTO `fun_shop_mores` VALUES ('27', '33', 'http://picture.daigefan.com/f99bc201907241505543392.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '夏晓晨', 'http://picture.daigefan.com/cf46d201907241506004614.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'http://picture.daigefan.com/5751a201907241506064819.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '夏晓晨', '321281198910178272', '2', 'http://picture.daigefan.com/13fed201907241506315605.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '江苏省 泰州市 华夏银行 泰州分行', '夏晓晨', '6230200660335618', '2', '1563952092', '0');
INSERT INTO `fun_shop_mores` VALUES ('28', '37', 'http://picture.daigefan.com/b1e93201907290950385660.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '杨涛', 'http://picture.daigefan.com/42e62201907290950404756.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'http://picture.daigefan.com/4f653201907290950455754.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '杨涛', '321088199609164857', '1', 'http://picture.daigefan.com/12988201907290951102824.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '北京市 北京市 工商银行 南京支行', '杨涛', '621088199609164857', '1', '1563953323', '1564365108');
INSERT INTO `fun_shop_mores` VALUES ('29', '35', 'http://picture.daigefan.com/db7e7201907241534577608.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '夏晓晨', 'http://picture.daigefan.com/c801c201907241535098699.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'http://picture.daigefan.com/8b6c6201907241535207847.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '夏晓晨', '3212811918910178272', '2', 'http://picture.daigefan.com/2e2a1201907241535438457.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '江苏省 泰州市 华夏银行 泰州分行', '夏晓晨', '6230200660335618', '2', '1563953805', '1563953825');
INSERT INTO `fun_shop_mores` VALUES ('30', '39', 'http://picture.daigefan.com/49c64201907241540049711.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '邓', 'http://picture.daigefan.com/83d55201907241540327454.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'http://picture.daigefan.com/f963d201907241540341789.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '邓', '411403198825517485', '1', 'http://picture.daigefan.com/72754201907241540524287.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '天津市 天津市 招商银行 支行', '邓', '62284807665598746223', '2', '1563954083', '0');
INSERT INTO `fun_shop_mores` VALUES ('31', '36', 'http://picture.daigefan.com/2d1a8201907241647154623.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '韩华生', 'http://picture.daigefan.com/4edc7201907241647211379.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'http://picture.daigefan.com/6aeca201907241647254933.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '韩华生', '411325198702169985', '1', 'http://picture.daigefan.com/dce1d201907241647502761.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '北京市 北京市 华夏银行 333', '韩华生', '5555', '1', '1563958440', '1563959067');
INSERT INTO `fun_shop_mores` VALUES ('32', '42', 'http://picture.daigefan.com/e808c201907241710167007.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '韩华生', 'http://picture.daigefan.com/4b406201907241710328169.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'http://picture.daigefan.com/169e5201907241710393788.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '韩华生', '411325198702153362', '1', 'http://picture.daigefan.com/6ab7e201907241711085039.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '北京市 北京市 工商银行 金沙支行', '韩华生', '411222222222222', '1', '1563959500', '0');
INSERT INTO `fun_shop_mores` VALUES ('33', '43', 'http://picture.daigefan.com/b4927201907291650325680.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '邓', 'http://picture.daigefan.com/2b779201907291650397797.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'http://picture.daigefan.com/9e5a8201907291650458824.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '邓春歌', '411423556505162497', '1', 'http://picture.daigefan.com/3c008201907291651201709.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '北京市 北京市 工商银行 北京支行', '邓', '6228482356556951846', '2', '1564390321', '0');
INSERT INTO `fun_shop_mores` VALUES ('34', '46', 'http://picture.daigefan.com/11c8f20190812140838330.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '杨洋', 'http://picture.daigefan.com/12885201908121408506211.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'http://picture.daigefan.com/7f66d20190812140853759.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '杨涛', '321088199609161857', '1', 'http://picture.daigefan.com/56e1f201908121409069999.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '河北省 石家庄市 浦发银行 南京支行', '杨洋', '321088199609164857', '1', '1565590489', '0');
INSERT INTO `fun_shop_mores` VALUES ('35', '49', 'http://picture.daigefan.com/14baf201908131611459819.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '杨涛', 'http://picture.daigefan.com/3414b201908131611527571.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'http://picture.daigefan.com/699d3201908131611571183.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '杨涛', '411403197802127815', '1', 'http://picture.daigefan.com/bfeba201908131612201235.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '北京市 北京市 工商银行 自很长的支行的之哈', '杨涛', '6217993000236733013', '2', '1565684006', '0');
INSERT INTO `fun_shop_mores` VALUES ('36', '56', 'http://picture.daigefan.com/a26f5201908281402281907.jpeg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '杨涛', 'http://picture.daigefan.com/8305c201908281402412761.jpeg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'http://picture.daigefan.com/ad45d201908281402461590.jpeg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '杨涛', '321088199609164857', '1', 'http://picture.daigefan.com/d4ca620190828140302616.jpeg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '北京市 北京市 工商银行 南京', '杨涛', '321', '1', '1565945562', '1566972208');
INSERT INTO `fun_shop_mores` VALUES ('37', '57', 'http://picture.daigefan.com/dd1ca201908161658092208.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '杨涛', 'http://picture.daigefan.com/55ff2201908161658163955.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'http://picture.daigefan.com/73d69201908161658483252.jpeg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '杨涛', '321088199609164857', '1', 'http://picture.daigefan.com/e897520190816165839344.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '北京市 北京市 工商银行 南京', '杨涛', '123', '1', '1565945941', '0');
INSERT INTO `fun_shop_mores` VALUES ('38', '64', 'http://picture.daigefan.com/a8d99201908271433503820.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '2', 'http://picture.daigefan.com/f81b8201908271433571210.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'http://picture.daigefan.com/ed05f201908271434001012.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '2', '411325198501126523', '1', 'http://picture.daigefan.com/8109d201908271440279900.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '北京市 北京市 工商银行 4', '4', '4', '1', '1566888044', '0');
INSERT INTO `fun_shop_mores` VALUES ('39', '65', 'http://picture.daigefan.com/9b1ab201908271443434138.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '3', 'http://picture.daigefan.com/71652201908271444212429.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'http://picture.daigefan.com/1a92d201908271443524776.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '3', '411325199502156692', '1', 'http://picture.daigefan.com/8a8b3201908271444138184.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '北京市 北京市 工商银行 3', '3', '3', '1', '1566888277', '1566888286');
INSERT INTO `fun_shop_mores` VALUES ('40', '66', 'http://picture.daigefan.com/bab4b201908271453081302.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '3', 'http://picture.daigefan.com/87254201908271453153600.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'http://picture.daigefan.com/fa17f201908271453194157.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '3', '411325199502168859', '1', 'http://picture.daigefan.com/54b9e201908271453402667.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '北京市 北京市 工商银行 4', '4', '333', '2', '1566888834', '1566888838');
INSERT INTO `fun_shop_mores` VALUES ('41', '68', 'http://picture.daigefan.com/0dabf201908271554056698.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '5', 'http://picture.daigefan.com/3e345201908271554442519.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'http://picture.daigefan.com/889d4201908271554156472.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '5', '411325198502168859', '1', 'http://picture.daigefan.com/9be2d201908271554328882.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '北京市 北京市 工商银行 人', '411', '3', '1', '1566892700', '0');
INSERT INTO `fun_shop_mores` VALUES ('42', '69', 'http://picture.daigefan.com/85ce4201908271904152354.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'e', 'http://picture.daigefan.com/41e92201908271904177728.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'http://picture.daigefan.com/0da2b201908271904223303.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'w', '411325198501256632', '1', 'http://picture.daigefan.com/051c8201908271904374453.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '北京市 北京市 工商银行 2', 'w', '222', '1', '1566903890', '0');
INSERT INTO `fun_shop_mores` VALUES ('43', '71', 'http://picture.daigefan.com/e7f0a20190827192235346.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '韩华生', 'http://picture.daigefan.com/d6eda201908271922487403.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'http://picture.daigefan.com/440d5201908271923181304.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '韩华生', '411325198702153625', '1', 'http://picture.daigefan.com/708f5201908271923379185.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '北京市 北京市 工商银行 近视', '好', '111111', '1', '1566905033', '0');
INSERT INTO `fun_shop_mores` VALUES ('44', '72', 'http://picture.daigefan.com/d98e4201908271930321254.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '好', 'http://picture.daigefan.com/c5dd2201908271930353561.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'http://picture.daigefan.com/c47da201908271930469621.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '韩华生', '411325198502163385', '1', 'http://picture.daigefan.com/34796201908271931074410.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '北京市 北京市 工商银行 的', '好', '1122', '1', '1566905515', '1566905829');
INSERT INTO `fun_shop_mores` VALUES ('45', '63', 'http://picture.daigefan.com/3643a201908271943071908.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'e', 'http://picture.daigefan.com/81f15201908271943087569.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'http://picture.daigefan.com/d425a201908271943117673.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'e', '411325198702126658', '1', 'http://picture.daigefan.com/7c4fe201908271943394116.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '北京市 北京市 工商银行 3', '3', '333333', '1', '1566906235', '1566906452');
INSERT INTO `fun_shop_mores` VALUES ('46', '74', 'http://picture.daigefan.com/894d7201908272058049753.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'deng ', 'http://picture.daigefan.com/2f80a201908272058104618.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'http://picture.daigefan.com/31ee420190827205813773.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'deng', '411206198602037512', '1', 'http://picture.daigefan.com/dbc98201908272058332676.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '北京市 北京市 工商银行 北京', '等', '6558450716556256846', '2', '1566910749', '0');
INSERT INTO `fun_shop_mores` VALUES ('47', '75', 'http://picture.daigefan.com/695b8201908272102453005.jpeg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '吖', 'http://picture.daigefan.com/429fc201908272101514225.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'http://picture.daigefan.com/26f4f201908272101544269.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '累', '411325198702126625', '1', 'http://picture.daigefan.com/83610201908272102239671.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '北京市 北京市 工商银行 南京', '啊', '222255', '1', '1566910973', '0');
INSERT INTO `fun_shop_mores` VALUES ('48', '78', 'http://picture.daigefan.com/ed412201908280925062543.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '啊', 'http://picture.daigefan.com/76545201908280925106819.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'http://picture.daigefan.com/93f15201908280925161053.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '好', '411325198501236658', '1', 'http://picture.daigefan.com/1cbeb201908280925325533.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '北京市 北京市 工商银行 近视', '哈喽', '1111466', '1', '1566955629', '0');
INSERT INTO `fun_shop_mores` VALUES ('49', '79', 'http://picture.daigefan.com/898a9201908280941085418.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '5', 'http://picture.daigefan.com/f5eb8201908280941106397.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'http://picture.daigefan.com/3afa1201908280941137090.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '5', '411325198501156695', '1', 'http://picture.daigefan.com/16b06201908280941284525.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '北京市 北京市 工商银行 用', 'y', '33333333333333333', '1', '1566956552', '0');
INSERT INTO `fun_shop_mores` VALUES ('50', '80', 'http://picture.daigefan.com/0ca7d201908281001385148.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '看', 'http://picture.daigefan.com/04058201908281001419194.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'http://picture.daigefan.com/673d9201908281001471575.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '刚', '411325498501256253', '1', 'http://picture.daigefan.com/db2f3201908281002107666.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '北京市 北京市 工商银行 近视', '刚', '1111', '1', '1566957765', '0');
INSERT INTO `fun_shop_mores` VALUES ('51', '81', 'http://picture.daigefan.com/35a2d20190828100357689.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'w', 'http://picture.daigefan.com/ba87b20190828100352650.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'http://picture.daigefan.com/24da5201908281003544326.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'w', '411325198502216685', '1', 'http://picture.daigefan.com/31be520190828100422353.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '北京市 北京市 工商银行 人', '让', '3445534553453', '2', '1566957881', '0');
INSERT INTO `fun_shop_mores` VALUES ('52', '83', 'http://picture.daigefan.com/3ff0b20190828101141620.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '了', 'http://picture.daigefan.com/a7762201908281011435718.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'http://picture.daigefan.com/3a65a201908281011522765.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '韩华生', '411325198501253365', '1', 'http://picture.daigefan.com/bc7f7201908281012125931.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '北京市 北京市 工商银行 啊', '看', '15555', '1', '1566958375', '0');
INSERT INTO `fun_shop_mores` VALUES ('53', '84', 'http://picture.daigefan.com/f6f13201908281042459152.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '邓春歌', 'http://picture.daigefan.com/6b2b8201908281042593742.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'http://picture.daigefan.com/47578201908281043029336.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '邓春歌', '412322965602017845', '1', 'http://picture.daigefan.com/c9150201908281043253070.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '北京市 北京市 工商银行 北京', '邓春歌', '6224140756552356846', '2', '1566960247', '0');
INSERT INTO `fun_shop_mores` VALUES ('54', '90', 'http://picture.daigefan.com/f6f13201908281042459152.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '邓春歌', 'http://picture.daigefan.com/6b2b8201908281042593742.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'http://picture.daigefan.com/47578201908281043029336.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '邓春歌', '412322965602017845', '1', 'http://picture.daigefan.com/c9150201908281043253070.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '北京市 北京市 工商银行 北京', '邓春歌', '6224140756552356846', '2', '1566961077', '0');
INSERT INTO `fun_shop_mores` VALUES ('55', '97', 'http://picture.daigefan.com/24e01201908281621249153.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '了', 'http://picture.daigefan.com/a1c19201908281619312472.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'http://picture.daigefan.com/b63d4201908281619319925.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '看', '411325198005253362', '2', 'http://picture.daigefan.com/d2bb12019082816195085.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '北京市 北京市 工商银行 金沙', '好', '255555554425555', '2', '1566980602', '0');
INSERT INTO `fun_shop_mores` VALUES ('56', '107', 'http://picture.daigefan.com/8a739201909031704075442.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '吧', 'http://picture.daigefan.com/53e57201909031700269205.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'http://picture.daigefan.com/f6dc8201909031705157362.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '好', '411325198502152245', '1', 'http://picture.daigefan.com/4a412201909031700588655.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '北京市 北京市 工商银行 金沙', '好', '2555555', '1', '1567501519', '0');
INSERT INTO `fun_shop_mores` VALUES ('57', '99', 'http://picture.daigefan.com/1ac06201909051123459444.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '杨涛', 'http://picture.daigefan.com/f0b95201909051123519696.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'http://picture.daigefan.com/edc6a201909051124146819.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '杨涛', '321088199609164857', '1', 'http://picture.daigefan.com/7d869201909051124264213.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '北京市 北京市 工商银行 ww', 'eee', '32148', '2', '1567564885', '1567653897');
INSERT INTO `fun_shop_mores` VALUES ('58', '112', 'http://picture.daigefan.com/a368b201909101017376821.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '孙欢测试账号', 'http://picture.daigefan.com/183be201909101019103137.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', 'http://picture.daigefan.com/a57d1201909101019209333.jpg?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '孙欢测试账号', '320882199402071420', '2', 'http://picture.daigefan.com/21a8d201909101021006327.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim', '北京市 北京市 工商银行 朝阳区', '孙欢测试账号', '32088219930912', '1', '1568082114', '0');

-- ----------------------------
-- Table structure for fun_shop_withdraws
-- ----------------------------
DROP TABLE IF EXISTS `fun_shop_withdraws`;
CREATE TABLE `fun_shop_withdraws` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` smallint(4) unsigned NOT NULL COMMENT '商家表主键值',
  `withdraw_sn` varchar(30) NOT NULL DEFAULT '' COMMENT '提现编号（收入时为订单编号）',
  `money` decimal(10,2) DEFAULT '0.00' COMMENT '提现金额(收入时为结算金额)',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态（1审核中2审核失败3提现成功）',
  `type` int(1) DEFAULT '1' COMMENT '1收入 2提现 3活动支出  5推广支出 6退款',
  `title` varchar(32) DEFAULT '' COMMENT '收支说明',
  `add_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `card` varchar(100) DEFAULT '' COMMENT '银行卡号',
  `remark` varchar(32) DEFAULT '' COMMENT '审核不通过原因(集合)',
  `complete_time` int(11) DEFAULT NULL COMMENT '提现完成时间',
  PRIMARY KEY (`id`),
  KEY `shop_withdraw` (`shop_id`),
  KEY `type` (`type`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COMMENT='商家提现表';

-- ----------------------------
-- Records of fun_shop_withdraws
-- ----------------------------
INSERT INTO `fun_shop_withdraws` VALUES ('1', '49', 'D191118618978533137', '0.01', '0', '1', '用户下单', '1574063271', '', '', null);
INSERT INTO `fun_shop_withdraws` VALUES ('2', '49', 'D191118633616279667', '0.01', '0', '1', '用户下单', '1574065264', '', '', null);
INSERT INTO `fun_shop_withdraws` VALUES ('3', '49', 'D191118632688680310', '0.01', '0', '1', '用户下单', '1574065296', '', '', null);
INSERT INTO `fun_shop_withdraws` VALUES ('4', '49', 'D191118600833528432', '0.01', '0', '1', '用户下单', '1574069089', '', '', null);
INSERT INTO `fun_shop_withdraws` VALUES ('5', '49', 'D191118630985604564', '0.01', '0', '1', '用户下单', '1574069090', '', '', null);
INSERT INTO `fun_shop_withdraws` VALUES ('6', '49', 'D191118651181276568', '0.01', '0', '1', '用户下单', '1574069096', '', '', null);
INSERT INTO `fun_shop_withdraws` VALUES ('7', '49', 'D191119348058292233', '2.82', '0', '1', '用户下单', '1574146070', '', '', null);
INSERT INTO `fun_shop_withdraws` VALUES ('8', '49', 'D191119453683866012', '10.49', '0', '1', '用户下单', '1574146091', '', '', null);
INSERT INTO `fun_shop_withdraws` VALUES ('9', '49', 'D191119484354524240', '1.88', '0', '1', '用户下单', '1574148473', '', '', null);
INSERT INTO `fun_shop_withdraws` VALUES ('10', '49', 'D191119668715658204', '0.01', '0', '1', '用户下单', '1574663448', '', '', null);
INSERT INTO `fun_shop_withdraws` VALUES ('11', '49', 'D191118692542692635', '0.01', '0', '1', '用户下单', '1574663457', '', '', null);
INSERT INTO `fun_shop_withdraws` VALUES ('12', '49', 'D191118684486405861', '0.01', '0', '1', '用户下单', '1574663466', '', '', null);
INSERT INTO `fun_shop_withdraws` VALUES ('13', '49', 'D191118691089328760', '0.01', '0', '1', '用户下单', '1574663470', '', '', null);
INSERT INTO `fun_shop_withdraws` VALUES ('14', '49', 'D191118656931096455', '0.01', '0', '1', '用户下单', '1574663479', '', '', null);
INSERT INTO `fun_shop_withdraws` VALUES ('15', '49', 'D191125638881231271', '10.34', '0', '1', '用户下单', '1574666061', '', '', null);
INSERT INTO `fun_shop_withdraws` VALUES ('16', '49', 'D191125638881231271', '10.34', '0', '6', '用户退款', '1574666435', '', '', null);
INSERT INTO `fun_shop_withdraws` VALUES ('17', '49', 'D191125666779571542', '10.49', '0', '1', '用户下单', '1574666714', '', '', null);
INSERT INTO `fun_shop_withdraws` VALUES ('18', '49', 'D191125680205741523', '0.01', '0', '1', '用户下单', '1574668040', '', '', null);
INSERT INTO `fun_shop_withdraws` VALUES ('19', '49', 'D191125680205741523', '0.01', '0', '6', '用户退款', '1574668056', '', '', null);
INSERT INTO `fun_shop_withdraws` VALUES ('20', '49', 'D191125711686399993', '0.01', '0', '1', '用户下单', '1574676324', '', '', null);
INSERT INTO `fun_shop_withdraws` VALUES ('21', '49', 'D191127219359663675', '0.01', '0', '1', '用户下单', '1574910608', '', '', null);
INSERT INTO `fun_shop_withdraws` VALUES ('22', '49', 'D191128043205992992', '0.01', '0', '1', '用户下单', '1574910619', '', '', null);
INSERT INTO `fun_shop_withdraws` VALUES ('23', '49', 'D191128250789982985', '0.01', '0', '1', '用户下单', '1574925262', '', '', null);
INSERT INTO `fun_shop_withdraws` VALUES ('24', '49', 'D191128238926912417', '0.01', '0', '1', '用户下单', '1574925279', '', '', null);
INSERT INTO `fun_shop_withdraws` VALUES ('25', '49', 'D191128249731891546', '0.01', '0', '1', '用户下单', '1574925283', '', '', null);
INSERT INTO `fun_shop_withdraws` VALUES ('26', '49', 'D191128271983827593', '0.01', '0', '1', '用户下单', '1574930411', '', '', null);
INSERT INTO `fun_shop_withdraws` VALUES ('27', '49', 'D191128273072576611', '0.01', '0', '1', '用户下单', '1574930416', '', '', null);
INSERT INTO `fun_shop_withdraws` VALUES ('28', '49', 'D191128270434136340', '0.01', '0', '1', '用户下单', '1574930425', '', '', null);
INSERT INTO `fun_shop_withdraws` VALUES ('29', '49', 'D191128273151975042', '0.01', '0', '1', '用户下单', '1574931225', '', '', null);
INSERT INTO `fun_shop_withdraws` VALUES ('30', '49', 'D191128307909898896', '0.01', '0', '1', '用户下单', '1574931229', '', '', null);
INSERT INTO `fun_shop_withdraws` VALUES ('31', '49', 'D191128308999907134', '0.01', '0', '1', '用户下单', '1574931233', '', '', null);
INSERT INTO `fun_shop_withdraws` VALUES ('32', '49', 'D191128311099050585', '0.01', '0', '1', '用户下单', '1574931239', '', '', null);
INSERT INTO `fun_shop_withdraws` VALUES ('33', '49', 'D191202671488041456', '0.01', '0', '1', '用户下单', '1575269675', '', '', null);
INSERT INTO `fun_shop_withdraws` VALUES ('34', '49', 'D191202700409507934', '0.01', '0', '1', '用户下单', '1575270205', '', '', null);
INSERT INTO `fun_shop_withdraws` VALUES ('35', '49', 'D191202701503118405', '0.01', '0', '1', '用户下单', '1575270319', '', '', null);
INSERT INTO `fun_shop_withdraws` VALUES ('36', '49', 'D191202698202220600', '0.01', '0', '1', '用户下单', '1575274958', '', '', null);
INSERT INTO `fun_shop_withdraws` VALUES ('37', '49', 'D191202697864394972', '0.01', '0', '1', '用户下单', '1575275698', '', '', null);
INSERT INTO `fun_shop_withdraws` VALUES ('38', '49', 'D191202698003734797', '0.01', '0', '1', '用户下单', '1575275703', '', '', null);
INSERT INTO `fun_shop_withdraws` VALUES ('39', '49', 'D191202737019005346', '0.01', '0', '1', '用户下单', '1575275747', '', '', null);
INSERT INTO `fun_shop_withdraws` VALUES ('40', '49', 'D191202698101171385', '0.01', '0', '1', '用户下单', '1575276628', '', '', null);
INSERT INTO `fun_shop_withdraws` VALUES ('41', '49', 'D191202778366432949', '0.01', '0', '1', '用户下单', '1575281911', '', '', null);
INSERT INTO `fun_shop_withdraws` VALUES ('42', '49', 'D191202778116580653', '0.01', '0', '1', '用户下单', '1575345276', '', '', null);
INSERT INTO `fun_shop_withdraws` VALUES ('43', '49', 'D191202777785488893', '0.01', '0', '1', '用户下单', '1575352984', '', '', null);
INSERT INTO `fun_shop_withdraws` VALUES ('44', '49', 'D191203711352326252', '0.01', '0', '1', '用户下单', '1575371237', '', '', null);
INSERT INTO `fun_shop_withdraws` VALUES ('45', '49', 'D191203449013371556', '0.01', '0', '1', '用户下单', '1575371240', '', '', null);
INSERT INTO `fun_shop_withdraws` VALUES ('46', '49', 'D191209556112419436', '0.01', '0', '1', '用户下单', '1575947456', '', '', null);
INSERT INTO `fun_shop_withdraws` VALUES ('47', '49', 'D191209549623092692', '0.01', '0', '1', '用户下单', '1575947460', '', '', null);

-- ----------------------------
-- Table structure for fun_users
-- ----------------------------
DROP TABLE IF EXISTS `fun_users`;
CREATE TABLE `fun_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `openid` varchar(100) NOT NULL COMMENT '用户小程序端唯一身边编号',
  `nickname` varchar(20) CHARACTER SET utf8mb4 NOT NULL COMMENT '微信昵称',
  `headimgurl` varchar(300) NOT NULL DEFAULT '' COMMENT '头像',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '性别【1男，2女，3保密】',
  `phone` bigint(11) DEFAULT '0' COMMENT '手机号',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '会员类型 1普通会员 ',
  `formid` varchar(100) DEFAULT '' COMMENT '表单提交临时编号（用于推送模板消息）',
  `overtime` int(10) DEFAULT '0' COMMENT '过期时间（针对表单提交临时编号）',
  `add_time` int(10) NOT NULL DEFAULT '0' COMMENT '记录时间',
  `new_buy` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态判断是否为新用户【平台首单减红包】（默认1，1新用户 2老用户）',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态（默认1，1正常 2禁用）',
  `invitation_id` int(11) DEFAULT '0' COMMENT '邀请者的id值',
  `last_login_time` int(10) DEFAULT '0' COMMENT '最近一次登录时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of fun_users
-- ----------------------------
