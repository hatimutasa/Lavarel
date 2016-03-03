/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : laravel

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2016-03-03 09:15:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bgw_articles
-- ----------------------------
DROP TABLE IF EXISTS `bgw_articles`;
CREATE TABLE `bgw_articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of bgw_articles
-- ----------------------------

-- ----------------------------
-- Table structure for bgw_brand
-- ----------------------------
DROP TABLE IF EXISTS `bgw_brand`;
CREATE TABLE `bgw_brand` (
  `bid` int(11) NOT NULL AUTO_INCREMENT COMMENT '品牌id',
  `b_name` varchar(20) NOT NULL COMMENT '品牌名称',
  `b_img` varchar(255) NOT NULL COMMENT '品牌图片',
  `b_href` varchar(255) NOT NULL COMMENT '品牌跳转地址',
  `b_sort` tinyint(4) NOT NULL COMMENT '优先级，大到小',
  `b_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0-关闭，1-开启',
  `b_addtime` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bgw_brand
-- ----------------------------

-- ----------------------------
-- Table structure for bgw_category
-- ----------------------------
DROP TABLE IF EXISTS `bgw_category`;
CREATE TABLE `bgw_category` (
  `cid` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '栏目id',
  `c_name` varchar(25) NOT NULL COMMENT '栏目名',
  `pid` smallint(6) NOT NULL COMMENT '父级id',
  `c_status` tinyint(4) NOT NULL COMMENT '是否上架 0隐藏 1显示',
  `c_position` tinyint(4) NOT NULL COMMENT '位置id',
  `c_sort` tinyint(4) NOT NULL COMMENT '优先级',
  `c_addtime` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bgw_category
-- ----------------------------
INSERT INTO `bgw_category` VALUES ('1', '今日特惠', '0', '1', '1', '0', '0');
INSERT INTO `bgw_category` VALUES ('2', '时尚韩版女装', '0', '1', '1', '0', '0');
INSERT INTO `bgw_category` VALUES ('3', '潮流酷(裤)', '0', '1', '1', '0', '0');
INSERT INTO `bgw_category` VALUES ('4', '天真有鞋', '0', '1', '1', '0', '0');
INSERT INTO `bgw_category` VALUES ('5', '品牌汇', '0', '1', '3', '0', '0');
INSERT INTO `bgw_category` VALUES ('6', '精选店铺', '0', '1', '4', '0', '0');
INSERT INTO `bgw_category` VALUES ('7', '上衣', '0', '1', '6', '0', '0');
INSERT INTO `bgw_category` VALUES ('9', '连衣裙', '7', '1', '6', '0', '0');
INSERT INTO `bgw_category` VALUES ('8', '针织衫', '7', '1', '6', '0', '0');
INSERT INTO `bgw_category` VALUES ('10', '裤子', '0', '1', '8', '0', '0');
INSERT INTO `bgw_category` VALUES ('11', '休闲裤', '10', '1', '8', '0', '0');
INSERT INTO `bgw_category` VALUES ('12', '牛仔裤', '10', '1', '8', '0', '0');
INSERT INTO `bgw_category` VALUES ('13', '打底裤', '10', '1', '8', '0', '0');
INSERT INTO `bgw_category` VALUES ('14', '卦卦推荐', '0', '1', '5', '0', '0');
INSERT INTO `bgw_category` VALUES ('15', '随衣搭配', '0', '1', '9', '0', '0');
INSERT INTO `bgw_category` VALUES ('16', '美容装', '0', '1', '7', '0', '0');
INSERT INTO `bgw_category` VALUES ('17', '外套', '7', '1', '6', '0', '0');

-- ----------------------------
-- Table structure for bgw_goods
-- ----------------------------
DROP TABLE IF EXISTS `bgw_goods`;
CREATE TABLE `bgw_goods` (
  `gid` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品ID',
  `title` varchar(50) NOT NULL COMMENT '商品标题',
  `new_price` decimal(10,0) NOT NULL COMMENT '商品最新价格',
  `old_price` decimal(10,0) NOT NULL COMMENT '商品原价',
  `min_img_path` varchar(255) NOT NULL COMMENT 'wap图片',
  `img_path` varchar(255) NOT NULL COMMENT '原图',
  `href_path` varchar(255) NOT NULL COMMENT '跳转地址',
  `is_display` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否显示',
  `addtime` int(11) NOT NULL COMMENT '上架时间',
  `money` decimal(10,0) NOT NULL DEFAULT '0' COMMENT '预计返现',
  `sort` int(11) NOT NULL COMMENT '是否优先展示',
  `goods_num` varchar(20) DEFAULT '0',
  `cid` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bgw_goods
-- ----------------------------
INSERT INTO `bgw_goods` VALUES ('1', '女装2016早春新款修身大码中长款外套韩国系带收腰超长款过膝风衣', '168', '239', 'Uploads/thumb/2016-01-24/0.59238800 1453603879.jpg', 'Uploads/images/2016-01-24/0.59238800 1453603879.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DEGy5SH%2Fx2lYcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67t6lxCgl2ytr18u9BjgaVz6rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh01UwmEI0FVwg7DmPm4pt3DGw5vTVHh%2Bq2p8uNke4fEiv8YMXU3NNCg%2F&pvid=12_27.38.9.129_43040_1453539648487', '1', '1453603879', '14', '0', '525242340408', '1');
INSERT INTO `bgw_goods` VALUES ('2', '2015秋冬新款韩国文艺韩版高领麻花超长款宽松粗线毛衣女装外套潮', '138', '221', 'Uploads/thumb/2016-01-24/0.08309400 1453603880.jpg', 'Uploads/images/2016-01-24/0.08309400 1453603880.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DfXo5FNFLZHIcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67t6lxCgl2ytr18u9BjgaVz6rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh01lutpqQFssR9fI%2Fc6WNXheqMvHNtT8xre0CqNrRc1cRSGFCzYOOqAQ&pvid=12_27.38.9.129_43040_1453539648487', '1', '1453603880', '12', '0', '42273393277', '1');
INSERT INTO `bgw_goods` VALUES ('3', '2015冬装新款大码女装韩版呢子大衣夹棉毛呢外套女中长款加厚加棉', '169', '268', 'Uploads/thumb/2016-01-24/0.79411600 1453603880.jpg', 'Uploads/images/2016-01-24/0.79411600 1453603880.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DU57tYimga3ocQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67t6lxCgl2ytr18u9BjgaVz6rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh01UwmEI0FVwg0m6iqrT5CNVd4XKoEQZ9YvKW3%2FeRvZxd8YMXU3NNCg%2F&pvid=12_27.38.9.129_43040_1453539648487', '1', '1453603880', '12', '0', '524359884506', '1');
INSERT INTO `bgw_goods` VALUES ('4', '[宽松版型]2015秋冬新款女装韩版羊毛呢外套女中长款刺绣呢子大衣', '159', '241', 'Uploads/thumb/2016-01-24/0.06450500 1453603881.jpg', 'Uploads/images/2016-01-24/0.06450500 1453603881.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3D0YEbkCM53tEcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67t6lxCgl2ytr18u9BjgaVz6rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03ljr4QGBUROjCgyFL69mmKI%2BHoIeFFznFCZHspaRUL5cYMXU3NNCg%2F&pvid=12_27.38.9.129_43040_1453539648487', '1', '1453603881', '12', '0', '522789460704', '1');
INSERT INTO `bgw_goods` VALUES ('5', '毛领棉衣女中长款2015韩版冬装新款女装大码加厚修身显瘦棉袄外套', '288', '367', 'Uploads/thumb/2016-01-24/0.44505200 1453603881.jpg', 'Uploads/images/2016-01-24/0.44505200 1453603881.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3Dqbv%2FJU7rUx4cQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67t6lxCgl2ytr18u9BjgaVz6rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh01UwmEI0FVwg2c%2Fv5kidkQXLjtSY23UyroZiKDU2RnwJsYMXU3NNCg%2F&pvid=12_27.38.9.129_43040_1453539648487', '1', '1453603881', '12', '0', '524584532129', '1');
INSERT INTO `bgw_goods` VALUES ('6', '加厚蕾丝打底衫2015冬装新款女装韩版上衣高领修身打底衫女冬加绒', '109', '202', 'Uploads/thumb/2016-01-24/0.12603200 1453603882.jpg', 'Uploads/images/2016-01-24/0.12603200 1453603882.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3D%2B%2BR9bJwPVkMcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67t6lxCgl2ytr18u9BjgaVz6rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh01lutpqQFssRxdcIZC1pKpggKMYwSip409kB5PBlEYkHXEqY%2Bakgpmw&pvid=12_27.38.9.129_43040_1453539648487', '1', '1453603882', '17', '0', '520873342855', '1');
INSERT INTO `bgw_goods` VALUES ('7', '打底衫女冬2015秋加绒加厚上衣韩版修身立领长袖蕾丝衫大码女装潮', '89', '172', 'Uploads/thumb/2016-01-24/0.60672300 1453603882.jpg', 'Uploads/images/2016-01-24/0.60672300 1453603882.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3Dp%2BVrine25socQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67t6lxCgl2ytr18u9BjgaVz6rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03ljr4QGBUROmQUYRsbasgQ80zi0x0eTm7bGkC%2ByI3gEMYMXU3NNCg%2F&pvid=12_27.38.9.129_43040_1453539648487', '1', '1453603882', '8', '0', '523311298579', '1');
INSERT INTO `bgw_goods` VALUES ('8', '卡贝琳2015秋欧美女装时尚单排扣系带中长款修身鹿皮绒风衣女外套', '288', '396', 'Uploads/thumb/2016-01-24/0.24764400 1453603883.jpg', 'Uploads/images/2016-01-24/0.24764400 1453603883.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3Djuh2Z3Top8McQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67t6lxCgl2ytr18u9BjgaVz6rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh01UwmEI0FVwg0Vyxp5VAWJlaxxIx50NEq02INzPaYxXTsYMXU3NNCg%2F&pvid=12_27.38.9.129_43040_1453539648487', '1', '1453603883', '9', '0', '522170170311', '1');
INSERT INTO `bgw_goods` VALUES ('9', '娃娃领毛衣女套头冬季打底衫加厚2015秋冬装新款女装宽松针织衫潮', '88', '160', 'Uploads/thumb/2016-01-24/0.95009200 1453603884.jpg', 'Uploads/images/2016-01-24/0.95009200 1453603884.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DbLePIYgAnSMcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67t6lxCgl2ytr18u9BjgaVz6rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03ljr4QGBUROtVd0iFkGPPMgPFdl9lPWWDHTl2ek8DLTMYMXU3NNCg%2F&pvid=12_27.38.9.129_43040_1453539648487', '1', '1453603885', '9', '0', '525454413898', '1');
INSERT INTO `bgw_goods` VALUES ('10', 'ATAR2015秋季新款女装小香风毛呢连衣裙 羊毛呢百搭修身打底裙子', '158', '225', 'Uploads/thumb/2016-01-24/0.27055300 1453603885.jpg', 'Uploads/images/2016-01-24/0.27055300 1453603885.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DNWN3WJr%2BDtscQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67t6lxCgl2ytr18u9BjgaVz6rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh01lutpqQFssRz8S0ygGpM0Uf3wV76SIrU7FSWT8wNeMoCGFCzYOOqAQ&pvid=12_27.38.9.129_43040_1453539648487', '1', '1453603885', '9', '0', '41388615369', '1');
INSERT INTO `bgw_goods` VALUES ('11', '欢俏2015秋冬女装宽松套头毛衣下摆蕾丝外套中长款显瘦打底针织衫', '69', '158', 'Uploads/thumb/2016-01-24/0.75124400 1453603885.jpg', 'Uploads/images/2016-01-24/0.75124400 1453603885.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DCIrR4SegBckcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67t6lxCgl2ytr18u9BjgaVz6rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03ljr4QGBUROtMTMnHz%2Fm%2FLhJKQqCWiGPH%2BvHC%2FG9h5%2BcYMXU3NNCg%2F&pvid=12_27.38.9.129_43040_1453539648', '1', '1453603885', '6', '0', '521415064054', '1');
INSERT INTO `bgw_goods` VALUES ('12', '芮初新款秋装女装韩版假两件套蕾丝打底针织衫女套头宽松毛衣女冬', '109', '208', 'Uploads/thumb/2016-01-24/0.02163300 1453603886.jpg', 'Uploads/images/2016-01-24/0.02163300 1453603886.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DlR1%2BwBABm5IcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67t6lxCgl2ytr18u9BjgaVz6rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh01UwmEI0FVwgyJWFX8VF%2BIqPCGYlVshqNOLDUTmAKiKMXEqY%2Bakgpmw&pvid=12_27.38.9.129_43040_1453539648487', '1', '1453603886', '12', '0', '43842584628', '1');
INSERT INTO `bgw_goods` VALUES ('13', '毛衣女2016冬装新款韩版大码女装针织衫秋季长袖上衣套头打底衫潮', '99', '192', 'Uploads/thumb/2016-01-24/0.54238200 1453603886.jpg', 'Uploads/images/2016-01-24/0.54238200 1453603886.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DKhkPhnzpjvMcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67t6lxCgl2ytr18u9BjgaVz6rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh01lutpqQFssR0esyXZDdiYrytG18xmayWcIddM2B06ztnEqY%2Bakgpmw&pvid=12_27.38.9.129_43040_1453539648487', '1', '1453603886', '22', '0', '525698294308', '1');
INSERT INTO `bgw_goods` VALUES ('14', '秋冬韩版蝙蝠袖宽松大码女装中长款针织开衫毛衣外套流苏加厚毛衣', '88', '192', 'Uploads/thumb/2016-01-24/0.02307300 1453603887.jpg', 'Uploads/images/2016-01-24/0.02307300 1453603887.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DENB7L6LrPR0cQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67t6lxCgl2ytr18u9BjgaVz6rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03ljr4QGBUROrHJQ%2FpC2wi%2FEJ7EgK0Lqmoj3DIspw%2B9Q8YMXU3NNCg%2F&pvid=12_27.38.9.129_43040_1453539648487', '1', '1453603887', '19', '0', '523009456045', '1');
INSERT INTO `bgw_goods` VALUES ('15', '安美酷 秋冬新款女装韩版中长款针织衫 修身圆领打底毛衣 女套头', '299', '397', 'Uploads/thumb/2016-01-24/0.31349100 1453603887.jpg', 'Uploads/images/2016-01-24/0.31349100 1453603887.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DrLM6x93auQ8cQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67t6lxCgl2ytr18u9BjgaVz6rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03ljr4QGBUROuPkincrkYOWH8DHS0xGpWeDWxh0pWWzeXEqY%2Bakgpmw&pvid=12_27.38.9.129_43040_1453539648487', '1', '1453603887', '27', '0', '42251245506', '1');
INSERT INTO `bgw_goods` VALUES ('16', '秋冬新款中长款开衫毛衣外套韩版宽松大码长袖针织衫开衫女装加厚', '79', '172', 'Uploads/thumb/2016-01-24/0.19475800 1453603888.jpg', 'Uploads/images/2016-01-24/0.19475800 1453603888.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DCOqtSY1F4bscQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67t6lxCgl2ytr18u9BjgaVz6rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03ljr4QGBUROrHJQ%2FpC2wi%2FdD4oRSePIQEygWKTWuXb38YMXU3NNCg%2F&pvid=12_27.38.9.129_43040_1453539648487', '1', '1453603888', '19', '0', '523164234505', '1');
INSERT INTO `bgw_goods` VALUES ('17', '2015秋冬长袖针织开衫女外套中长款 纯色修身显瘦大码韩版女装潮', '99', '209', 'Uploads/thumb/2016-01-24/0.64540600 1453603888.jpg', 'Uploads/images/2016-01-24/0.64540600 1453603888.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DMlDD8XCImygcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67t6lxCgl2ytr18u9BjgaVz6rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03ljr4QGBUROmcwvGHAM04rPRuQceosFFbkN5hgRo043MYMXU3NNCg%2F&pvid=12_27.38.9.129_43040_1453539648487', '1', '1453603888', '19', '0', '521128603526', '1');
INSERT INTO `bgw_goods` VALUES ('18', '秋冬季女装上衣长袖短款针织衫嘴唇图案学生套头毛衣女秋打底衫潮', '69', '145', 'Uploads/thumb/2016-01-24/0.43654400 1453603889.jpg', 'Uploads/images/2016-01-24/0.43654400 1453603889.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DxdhQOTcTR1IcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67t6lxCgl2ytr18u9BjgaVz6rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh01UwmEI0FVwg0edBaHUy0JpNFd9DNNuKlKkSAT3Sl%2B4vsYMXU3NNCg%2F&pvid=12_27.38.9.129_43040_1453539648487', '1', '1453603889', '6', '0', '522214885519', '1');
INSERT INTO `bgw_goods` VALUES ('19', '中长款开衫毛针织衫秋装外套女装上衣 韩版宽松显瘦无扣外搭毛衣', '78', '141', 'Uploads/thumb/2016-01-24/0.24771000 1453603890.jpg', 'Uploads/images/2016-01-24/0.24771000 1453603890.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DtnVFeNEhbEEcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67t6lxCgl2ytr18u9BjgaVz6rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03ljr4QGBUROjmKTrnS12NLRcAMf6UuoWETr3pZXnJryMYMXU3NNCg%2F&pvid=12_27.38.9.129_43040_1453539648487', '1', '1453603890', '7', '0', '520697019394', '1');
INSERT INTO `bgw_goods` VALUES ('20', '蘑菇街 2015秋冬新款女装呢大衣韩版修身显瘦茧型红色毛呢外套女', '138', '238', 'Uploads/thumb/2016-01-24/0.64828600 1453603890.jpg', 'Uploads/images/2016-01-24/0.64828600 1453603890.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DxJ5DxGhitqgcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67t6lxCgl2ytr18u9BjgaVz6rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh01UwmEI0FVwg8Dod8nCcrN5I%2BHoIeFFznG22XrWmXs2icYMXU3NNCg%2F&pvid=12_27.38.9.129_43040_1453539648487', '1', '1453603890', '27', '0', '522753028029', '1');
INSERT INTO `bgw_goods` VALUES ('21', '蘑菇街 2015秋冬新款韩版女装修身显瘦气质中长款翻领毛呢外套潮', '175', '237', 'Uploads/thumb/2016-01-24/0.16903500 1453603891.jpg', 'Uploads/images/2016-01-24/0.16903500 1453603891.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DeUxmg8vfGigcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67t6lxCgl2ytr18u9BjgaVz6rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh01UwmEI0FVwg8Dod8nCcrN51K60ANUcrHF%2F%2BKrLBry9%2FMYMXU3NNCg%2F&pvid=12_27.38.9.129_43040_1453539648487', '1', '1453603891', '27', '0', '523173807944', '1');
INSERT INTO `bgw_goods` VALUES ('22', '2015冬季新品女装韩版大码宽松加长款纯色毛呢外套百搭大衣女加厚', '99', '182', 'Uploads/thumb/2016-01-24/0.81997100 1453603891.jpg', 'Uploads/images/2016-01-24/0.81997100 1453603891.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DqlytXk8i8n8cQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67t6lxCgl2ytr18u9BjgaVz6rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03ljr4QGBUROvi63%2BYT%2B8QlJwdAmrGlEHtoiO9u%2BsHk98YMXU3NNCg%2F&pvid=12_27.38.9.129_43040_1453539648487', '1', '1453603891', '3', '0', '523187068309', '1');
INSERT INTO `bgw_goods` VALUES ('23', '蘑菇街 2015冬季新款女装韩版修身中长款棉衣女大码棉服加厚棉袄', '148', '212', 'Uploads/thumb/2016-01-24/0.46089200 1453603892.jpg', 'Uploads/images/2016-01-24/0.46089200 1453603892.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3D08RSxc6w%2FGEcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67t6lxCgl2ytr18u9BjgaVz6rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh01UwmEI0FVwg8Dod8nCcrN5agHMhSvC70GWpyK1%2B%2FFkJcYMXU3NNCg%2F&pvid=12_27.38.9.129_43040_1453539648487', '1', '1453603892', '27', '0', '522156407591', '1');
INSERT INTO `bgw_goods` VALUES ('24', '讴若缇2015秋冬新款大码女装韩版中长款呢子大衣秋冬毛呢外套女潮', '88', '194', 'Uploads/thumb/2016-01-24/0.99165600 1453603892.jpg', 'Uploads/images/2016-01-24/0.99165600 1453603892.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DyoS%2FcBuBb%2BAcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67t6lxCgl2ytr18u9BjgaVz6rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03ljr4QGBUROvi63%2BYT%2B8QlLli%2Fbe4WDHaV%2FfndNXDnMXEqY%2Bakgpmw&pvid=12_27.38.9.129_43040_14535396', '1', '1453603893', '3', '0', '42729882678', '1');
INSERT INTO `bgw_goods` VALUES ('25', '秋冬套头毛衣女2015秋装新款韩版短款打底衫外套女装针织衫上衣潮', '33', '102', 'Uploads/thumb/2016-01-24/0.57249100 1453603893.jpg', 'Uploads/images/2016-01-24/0.57249100 1453603893.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DS2YwysTM4MYcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67t6lxCgl2ytr18u9BjgaVz6rEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03ljr4QGBUROlcv7LXVUhIAhDHLOWiHiOQieXMg%2FdRjWsYMXU3NNCg%2F&pvid=12_27.38.9.129_43040_1453539648487', '1', '1453603893', '3', '0', '523412884766', '1');
INSERT INTO `bgw_goods` VALUES ('26', '老北京布鞋冬季女鞋妈妈棉鞋加绒保暖中老年人雪地靴平底防滑短靴', '79', '176', 'Uploads/thumb/2016-01-24/0.47647600 1453616017.jpg', 'Uploads/images/2016-01-24/0.47647600 1453616017.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DfTh7Y2EdcAkcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67qpnxz7ndoDiLzKPa%2Ff2nu%2BrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03ljr4QGBUROhWb0wAXKnLLRfvUCsVAcTo9SULbNP3Ac3EqY%2Bakgpmw&pvid=11_27.38.9.130_347_1453622428380', '1', '1453616017', '8', '0', '41747053256', '2');
INSERT INTO `bgw_goods` VALUES ('27', '马丁靴女短靴潮圆头厚底短筒双侧拉链学生鞋中跟皮靴子秋冬季女鞋', '50', '157', 'Uploads/thumb/2016-01-24/0.18749900 1453616018.jpg', 'Uploads/images/2016-01-24/0.18749900 1453616018.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3D8vZJRXT8zF0cQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67qpnxz7ndoDiLzKPa%2Ff2nu%2BrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03ljr4QGBUROlTYg7c4c9VD%2BKzZOVub6R7H3bCQKr1eVcYMXU3NNCg%2F&pvid=11_27.38.9.130_347_1453622428380', '1', '1453616018', '6', '0', '525814795477', '2');
INSERT INTO `bgw_goods` VALUES ('28', '秋冬款真皮白色高跟鞋兔毛短靴子细跟及裸靴加绒带毛毛女鞋及踝靴', '208', '279', 'Uploads/thumb/2016-01-24/0.19895300 1453616019.jpg', 'Uploads/images/2016-01-24/0.19895300 1453616019.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DGvDtBKSn6i4cQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67qpnxz7ndoDiLzKPa%2Ff2nu%2BrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03ljr4QGBUROm88dV4%2BqJaHTCzk60jGrqpjHF8JidHM53EqY%2Bakgpmw&pvid=11_27.38.9.130_347_1453622428380', '1', '1453616019', '6', '0', '41924781972', '2');
INSERT INTO `bgw_goods` VALUES ('29', '冬季女鞋内增高短靴女靴 平底雪地靴女短筒靴子加绒棉鞋鞋子女冬', '128', '200', 'Uploads/thumb/2016-01-24/0.00010500 1453616020.jpg', 'Uploads/images/2016-01-24/0.00010500 1453616020.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3Dmti9fmyOt%2BscQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67qpnxz7ndoDiLzKPa%2Ff2nu%2BrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh01UwmEI0FVwg1b1itiLv0xogos02957kZ%2B2DliDT1PYbcYMXU3NNCg%2F&pvid=11_27.38.9.130_347_1453622428380', '1', '1453616020', '7', '0', '521994578631', '2');
INSERT INTO `bgw_goods` VALUES ('30', '骆驼马丁靴女 秋冬新品女鞋真皮短靴 平跟靴子短筒女靴鞋子女冬', '296', '363', 'Uploads/thumb/2016-01-24/0.39066700 1453616020.jpg', 'Uploads/images/2016-01-24/0.39066700 1453616020.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DIp6vz8ouM%2BkcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67qpnxz7ndoDiLzKPa%2Ff2nu%2BrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh01lutpqQFssRykTlHdUNKtyTy8NCpKHJnbrepoJjBBrPSGFCzYOOqAQ&pvid=11_27.38.9.130_347_1453622428380', '1', '1453616020', '6', '0', '40550698539', '2');
INSERT INTO `bgw_goods` VALUES ('31', '艾美其秋冬季英伦风女鞋高跟厚底短靴子短筒粗跟复古马丁靴机车靴', '99', '168', 'Uploads/thumb/2016-01-24/0.38209200 1453616021.jpg', 'Uploads/images/2016-01-24/0.38209200 1453616021.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3D8b9ptHEZSkYcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67qpnxz7ndoDiLzKPa%2Ff2nu%2BrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh01lutpqQFssRwsopUiqtRCSVO2rA8nvVvKfW1a0c3YGM3EqY%2Bakgpmw&pvid=11_27.38.9.130_347_1453622428380', '1', '1453616021', '7', '0', '522001490238', '2');
INSERT INTO `bgw_goods` VALUES ('32', '2016春秋冬季新款圆头马丁棉短靴子加绒加厚韩版内增高学生女鞋潮', '86', '170', 'Uploads/thumb/2016-01-24/0.71256800 1453616021.jpg', 'Uploads/images/2016-01-24/0.71256800 1453616021.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DyZ0YnPackZscQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67qpnxz7ndoDiLzKPa%2Ff2nu%2BrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03ljr4QGBUROnrtc%2FWuV87z8QCcmqFn2PYEgkgGojpo68YMXU3NNCg%2F&pvid=11_27.38.9.130_347_1453622428380', '1', '1453616021', '10', '0', '520308378779', '2');
INSERT INTO `bgw_goods` VALUES ('33', '典缀2015冬季新款头层牛皮女鞋厚底短靴真皮粗跟防水台侧拉链棉靴', '228', '318', 'Uploads/thumb/2016-01-24/0.44361900 1453616022.jpg', 'Uploads/images/2016-01-24/0.44361900 1453616022.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DW87ZOwPVHaEcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67qpnxz7ndoDiLzKPa%2Ff2nu%2BrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh01UwmEI0FVwg9EqiWDI0LZwYFY0RjoQ8sJVuH82T44BesYMXU3NNCg%2F&pvid=11_27.38.9.130_347_1453622428380', '1', '1453616022', '6', '0', '524583322295', '2');
INSERT INTO `bgw_goods` VALUES ('34', '秋冬季真皮高筒瘦脚弹力靴小辣椒平底弹力布过膝长靴显瘦厚底女鞋', '138', '205', 'Uploads/thumb/2016-01-24/0.79412300 1453616022.jpg', 'Uploads/images/2016-01-24/0.79412300 1453616022.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3Dg%2B9AMb%2F3mYYcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67qpnxz7ndoDiLzKPa%2Ff2nu%2BrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh01UwmEI0FVwgzfoHS%2FaCTSbCpx4BGle0mDA9Wh5KJMIe3EqY%2Bakgpmw&pvid=11_27.38.9.130_347_145362242838', '1', '1453616022', '7', '0', '44727746808', '2');
INSERT INTO `bgw_goods` VALUES ('35', '2015秋冬英伦风马丁靴潮女短靴平跟平底圆头真皮中筒靴子铆钉女鞋', '138', '246', 'Uploads/thumb/2016-01-24/0.28482800 1453616023.jpg', 'Uploads/images/2016-01-24/0.28482800 1453616023.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DSnoIbA1hNBQcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67qpnxz7ndoDiLzKPa%2Ff2nu%2BrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh01UwmEI0FVwgzwG7gsiLXX8yd50O9yOc2lPv77I580nN3EqY%2Bakgpmw&pvid=11_27.38.9.130_347_1453622428380', '1', '1453616023', '7', '0', '40456842869', '2');
INSERT INTO `bgw_goods` VALUES ('36', '葆丝丽2015秋冬新款真皮女鞋平底圆头中老年防滑短靴妈妈靴子', '218', '321', 'Uploads/thumb/2016-01-24/0.08598000 1453616024.jpg', 'Uploads/images/2016-01-24/0.08598000 1453616024.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3Dz7HZ97ts4w8cQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67qpnxz7ndoDiLzKPa%2Ff2nu%2BrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI174zMXDigCkcThpCRnKbqa9LokLSpSR8siGFCzYOOqAQ&pvid=11_27.38.9.130_347_1453622428380', '1', '1453616024', '7', '0', '40150892566', '2');
INSERT INTO `bgw_goods` VALUES ('37', '2015冬季新款雪地靴女鞋韩版中筒靴磨砂绒面保暖平底休闲棉鞋短靴', '59', '121', 'Uploads/thumb/2016-01-24/0.93720400 1453616024.jpg', 'Uploads/images/2016-01-24/0.93720400 1453616024.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3Df9iSLMoW4TMcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67qpnxz7ndoDiLzKPa%2Ff2nu%2BrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03ljr4QGBUROrL0hQqLzzpkS8nloRJxiXSGlrv3gOgvIsYMXU3NNCg%2F&pvid=11_27.38.9.130_347_1453622428380', '1', '1453616025', '10', '0', '524171565984', '2');
INSERT INTO `bgw_goods` VALUES ('38', '冬季新款仿狐狸毛雪地靴女短靴内增高女鞋加厚棉鞋保暖短筒女靴子', '80', '176', 'Uploads/thumb/2016-01-24/0.23907600 1453616026.jpg', 'Uploads/images/2016-01-24/0.23907600 1453616026.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3Dd4yzolBaSaAcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67qpnxz7ndoDiLzKPa%2Ff2nu%2BrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03ljr4QGBUROhjdVTMWZmUssbednLJkWvLnVgTl8IhahsYMXU3NNCg%2F&pvid=11_27.38.9.130_347_1453622428380', '1', '1453616026', '12', '0', '523383195326', '2');
INSERT INTO `bgw_goods` VALUES ('39', '2015冬季新款雪地靴女短筒平跟短靴甜美蝴蝶结女鞋毛毛鞋女套脚鞋', '70', '171', 'Uploads/thumb/2016-01-24/0.55953700 1453616026.jpg', 'Uploads/images/2016-01-24/0.55953700 1453616026.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3D4LRbx3xVtO4cQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67qpnxz7ndoDiLzKPa%2Ff2nu%2BrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03ljr4QGBUROhjdVTMWZmUs%2FGRUovOy8LwZi0Q8LkQCSsYMXU3NNCg%2F&pvid=11_27.38.9.130_347_1453622428380', '1', '1453616026', '12', '0', '523820126794', '2');
INSERT INTO `bgw_goods` VALUES ('40', '2015冬季新品款雪地靴女靴子仿狐狸毛加厚保暖短靴短筒棉鞋女鞋子', '50', '114', 'Uploads/thumb/2016-01-24/0.21047300 1453616027.jpg', 'Uploads/images/2016-01-24/0.21047300 1453616027.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DHG0pTeHaGSQcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67qpnxz7ndoDiLzKPa%2Ff2nu%2BrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03aEOX2o7SI1%2F2KsAUlSEOAQLGMMt52QjfpA6Rk39HW7XEqY%2Bakgpmw&pvid=11_27.38.9.130_347_1453622428380', '1', '1453616027', '2', '0', '522192569194', '2');
INSERT INTO `bgw_goods` VALUES ('41', '古奇天伦2015秋冬新款高跟短靴粗跟马丁靴潮防水台裸靴短筒潮女鞋', '183', '292', 'Uploads/thumb/2016-01-24/0.73122200 1453616027.jpg', 'Uploads/images/2016-01-24/0.73122200 1453616027.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DQQOUvXkcmjccQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67qpnxz7ndoDiLzKPa%2Ff2nu%2BrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh01lutpqQFssR7g3nu0%2F%2FYiyOaGnWH%2FRALp58%2B6ucd%2F4OHEqY%2Bakgpmw&pvid=11_27.38.9.130_347_14536224', '1', '1453616027', '10', '0', '523809298262', '2');
INSERT INTO `bgw_goods` VALUES ('42', '短靴女冬平底马丁靴内增高欧美中靴女鞋学生侧拉链短筒靴秋2015潮', '108', '183', 'Uploads/thumb/2016-01-24/0.17185600 1453616028.jpg', 'Uploads/images/2016-01-24/0.17185600 1453616028.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DELTmimx%2B8OYcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67qpnxz7ndoDiLzKPa%2Ff2nu%2BrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03ljr4QGBUROr4ebwN5r9UTCW5FQ5SbNeD2PF8gBN8Z1sYMXU3NNCg%2F&pvid=11_27.38.9.130_347_1453622428380', '1', '1453616028', '10', '0', '522195004116', '2');
INSERT INTO `bgw_goods` VALUES ('43', '2015冬季季新款皮带扣短靴女雪地靴女短筒休闲平跟女靴子厚底女鞋', '49', '153', 'Uploads/thumb/2016-01-24/0.43223000 1453616028.jpg', 'Uploads/images/2016-01-24/0.43223000 1453616028.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3D%2BIt%2F3r4L9pUcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67qpnxz7ndoDiLzKPa%2Ff2nu%2BrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03ljr4QGBUROhjdVTMWZmUspud9rs6tEG9FMIuxL%2FyZbcYMXU3NNCg%2F&pvid=11_27.38.9.130_347_145362242838', '1', '1453616028', '10', '0', '522618243675', '2');
INSERT INTO `bgw_goods` VALUES ('44', '2015冬季经典款雪地靴女短筒短靴平跟防滑学生加绒保暖女靴子女鞋', '49', '129', 'Uploads/thumb/2016-01-24/0.84282000 1453616028.jpg', 'Uploads/images/2016-01-24/0.84282000 1453616028.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DtvwwZ11mRF4cQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67qpnxz7ndoDiLzKPa%2Ff2nu%2BrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03ljr4QGBUROh0sTcTh6zFLuoChkEmegPRkssx1t1c2OsYMXU3NNCg%2F&pvid=11_27.38.9.130_347_1453622428380', '1', '1453616029', '10', '0', '522070901105', '2');
INSERT INTO `bgw_goods` VALUES ('45', '康娇秋冬女鞋短靴英伦风流苏鞋细高跟尖头裸靴真皮欧美时装短筒靴', '99', '168', 'Uploads/thumb/2016-01-24/0.04454800 1453616030.jpg', 'Uploads/images/2016-01-24/0.04454800 1453616030.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3Dge6X7BLm9GQcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67qpnxz7ndoDiLzKPa%2Ff2nu%2BrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh01UwmEI0FVwg54MZIhx8T%2FAfRhvEb3k8sEB0jKbWYLh38YMXU3NNCg%2F&pvid=11_27.38.9.130_347_1453622428380', '1', '1453616030', '10', '0', '522764022303', '2');
INSERT INTO `bgw_goods` VALUES ('46', 'TPXN加绒女鞋冬季保暖休闲鞋女运动鞋女2015新款冬鞋内增高棉鞋子', '129', '234', 'Uploads/thumb/2016-01-24/0.81565700 1453616030.jpg', 'Uploads/images/2016-01-24/0.81565700 1453616030.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DGK%2BmnDYpNvccQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67qpnxz7ndoDi%2B24pk81cuaqrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03ljr4QGBUROp3ZeoKmyI3OjabWGsKXrH2xPdmTBEUWIMYMXU3NNCg%2F&pvid=11_27.38.9.130_347_1453622428380', '1', '1453616030', '7', '0', '525002156530', '2');
INSERT INTO `bgw_goods` VALUES ('47', '2015秋冬新款短靴马丁靴保暖防水雪地靴短筒棉鞋学生女鞋潮女靴子', '60', '156', 'Uploads/thumb/2016-01-24/0.61680900 1453616031.jpg', 'Uploads/images/2016-01-24/0.61680900 1453616031.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3D%2BhuK15M5rO0cQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67qpnxz7ndoDi%2B24pk81cuaqrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh01UwmEI0FVwgzef9qlJjiokuRqEjaupZLj6fWxJtyWYKMYMXU3NNCg%2F&pvid=11_27.38.9.130_347_1453622428380', '1', '1453616031', '1', '0', '521672069795', '2');
INSERT INTO `bgw_goods` VALUES ('48', '秋冬季高帮休闲鞋女鞋二棉鞋情侣鞋韩版雪地靴加绒防滑马丁女靴子', '139', '225', 'Uploads/thumb/2016-01-24/0.37790400 1453616032.jpg', 'Uploads/images/2016-01-24/0.37790400 1453616032.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DtLRvguaPJD0cQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67qpnxz7ndoDi%2B24pk81cuaqrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03ljr4QGBUROvRn%2FECRu9Ryj2Aj%2FqdAGlCIvqhcebzSUcYMXU3NNCg%2F&pvid=11_27.38.9.130_347_1453622428380', '1', '1453616032', '7', '0', '522782250499', '2');
INSERT INTO `bgw_goods` VALUES ('49', '派怡2015秋冬季学生短筒雪地靴女鞋真皮短靴加绒平底棉鞋磨砂皮靴', '110', '172', 'Uploads/thumb/2016-01-24/0.23914200 1453616033.jpg', 'Uploads/images/2016-01-24/0.23914200 1453616033.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3D%2F6iW1dT2tdEcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67qpnxz7ndoDi%2B24pk81cuaqrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03ljr4QGBUROl2xFiPvYB0Y7x6PSV97cm%2B7W%2Fcex6OqesYMXU3NNCg%2F&pvid=11_27.38.9.130_347_1453622428380', '1', '1453616033', '7', '0', '523033792411', '2');
INSERT INTO `bgw_goods` VALUES ('50', '皇妹2015冬季新款女鞋粗跟切尔西短靴尖头低跟时尚百搭裸女靴子', '159', '267', 'Uploads/thumb/2016-01-24/0.72984800 1453616033.jpg', 'Uploads/images/2016-01-24/0.72984800 1453616033.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DFVHiDFgjJoocQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67qpnxz7ndoDi%2B24pk81cuaqrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh01lutpqQFssR3ehgtAFs6FqfUqa7ceB%2F%2Bl2rIZ6m70J%2BHEqY%2Bakgpmw&pvid=11_27.38.9.130_347_1453622428380', '1', '1453616033', '6', '0', '522124796993', '2');
INSERT INTO `bgw_goods` VALUES ('51', '2015秋冬女靴圆头磨砂皮马丁靴潮女短靴厚底防滑及裸靴系带女鞋', '49', '130', 'Uploads/thumb/2016-01-24/0.01025100 1453616034.jpg', 'Uploads/images/2016-01-24/0.01025100 1453616034.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DnY6n4K6ooN8cQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67qpnxz7ndoDi%2B24pk81cuaqrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03ljr4QGBUROh0sTcTh6zFLlMw7%2FXKxx4FrLoZHpN6mrcYMXU3NNCg%2F&pvid=11_27.38.9.130_347_1453622428380', '1', '1453616034', '10', '0', '522194484728', '2');
INSERT INTO `bgw_goods` VALUES ('52', '古奇天伦2015秋冬新款粗跟女靴潮马丁靴高跟短靴欧美短筒裸靴女鞋', '193', '285', 'Uploads/thumb/2016-01-24/0.60110000 1453616034.jpg', 'Uploads/images/2016-01-24/0.60110000 1453616034.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DlpxJRxcq39ccQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67qpnxz7ndoDi%2B24pk81cuaqrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh01lutpqQFssR7g3nu0%2F%2FYiyYJucz%2FlJYxqqH5kg1ewSYnEqY%2Bakgpmw&pvid=11_27.38.9.130_347_1453622428380', '1', '1453616034', '10', '0', '522804747993', '2');
INSERT INTO `bgw_goods` VALUES ('53', '秋冬新款妈妈棉鞋中老年女鞋平底雪地靴真皮单靴保暖马丁靴短靴女', '159', '239', 'Uploads/thumb/2016-01-24/0.89151800 1453616034.jpg', 'Uploads/images/2016-01-24/0.89151800 1453616034.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DuXsasX2ASFIcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67qpnxz7ndoDi%2B24pk81cuaqrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh01UwmEI0FVwg79LCtZOzrYF6KoQqfdawf7db2LLV6t9HXEqY%2Bakgpmw&pvid=11_27.38.9.130_347_1453622428380', '1', '1453616035', '6', '0', '41483543194', '2');
INSERT INTO `bgw_goods` VALUES ('54', '2015冬季新款雪地靴女短靴仿狐狸毛平底短筒女靴加厚保暖女鞋棉鞋', '60', '142', 'Uploads/thumb/2016-01-24/0.26205100 1453616035.jpg', 'Uploads/images/2016-01-24/0.26205100 1453616035.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DhPvwXEcf0J8cQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67qpnxz7ndoDi%2B24pk81cuaqrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03ljr4QGBUROhjdVTMWZmUsF2gkS99xHBaWxYsKJKXmuMYMXU3NNCg%2F&pvid=11_27.38.9.130_347_1453622428380', '1', '1453616035', '10', '0', '522139626102', '2');
INSERT INTO `bgw_goods` VALUES ('55', '纪梵玛丽2015秋冬新款真皮中筒靴中跟粗跟女靴40-43皮靴大码女鞋', '158', '249', 'Uploads/thumb/2016-01-24/0.90297200 1453616035.jpg', 'Uploads/images/2016-01-24/0.90297200 1453616035.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3Dnc1i6pzbEOscQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67qpnxz7ndoDi%2B24pk81cuaqrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh01UwmEI0FVwg%2FQpt1X7OZmCOrgomibrStXHLEmr87MiYHEqY%2Bakgpmw&pvid=11_27.38.9.130_347_1453622428380', '1', '1453616036', '6', '0', '40653855443', '2');
INSERT INTO `bgw_goods` VALUES ('56', '嘉赐伊秋冬季英伦高跟粗跟短靴女尖头短筒复古马丁靴休闲大码女鞋', '298', '382', 'Uploads/thumb/2016-01-24/0.83431200 1453616036.jpg', 'Uploads/images/2016-01-24/0.83431200 1453616036.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DqUCONL2lmukcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67qpnxz7ndoDi%2B24pk81cuaqrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03ljr4QGBUROl02dnOfbkd7Z0fdy4yMKkx64BZ%2BaWmp1MYMXU3NNCg%2F&pvid=11_27.38.9.130_347_1453622428380', '1', '1453616037', '10', '0', '524145185328', '2');
INSERT INTO `bgw_goods` VALUES ('57', '妈妈鞋加绒棉鞋蝴蝶结真皮短靴粗跟平底女鞋保暖棉靴中老年女靴冬', '138', '228', 'Uploads/thumb/2016-01-24/0.54533400 1453616037.jpg', 'Uploads/images/2016-01-24/0.54533400 1453616037.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DelP99x8iDcwcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67qpnxz7ndoDi%2B24pk81cuaqrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh01UwmEI0FVwg%2FQpt1X7OZmCsUH7QAJnugqFGOPz5YSbPXEqY%2Bakgpmw&pvid=11_27.38.9.130_347_1453622428380', '1', '1453616037', '7', '0', '35700311606', '2');
INSERT INTO `bgw_goods` VALUES ('58', '名西平底短靴真皮马丁靴潮牛皮棉女鞋冬女靴子厚绒机车靴2015新款', '198', '300', 'Uploads/thumb/2016-01-24/0.49670200 1453616038.jpg', 'Uploads/images/2016-01-24/0.49670200 1453616038.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DRXnzxLkUd5gcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67qpnxz7ndoDi%2B24pk81cuaqrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh01UwmEI0FVwg2lMZny0OBvS%2BYH%2B9iMQBrGC9AHDxNDWm8YMXU3NNCg%2F&pvid=11_27.38.9.130_347_1453622428380', '1', '1453616038', '6', '0', '520619158663', '2');
INSERT INTO `bgw_goods` VALUES ('59', '冬季加绒款平跟防滑软底妈妈鞋中老年大码雪地靴子圆头侧拉链女鞋', '49', '129', 'Uploads/thumb/2016-01-24/0.07753700 1453616039.jpg', 'Uploads/images/2016-01-24/0.07753700 1453616039.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DZR4BTn9R8u4cQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67qpnxz7ndoDi%2B24pk81cuaqrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03ljr4QGBUROu5%2B3kmNLLsm%2BRhPtJGLnZPtY%2FjT6htMr8YMXU3NNCg%2F&pvid=11_27.38.9.130_347_1453622428380', '1', '1453616039', '7', '0', '522625727032', '2');
INSERT INTO `bgw_goods` VALUES ('60', '短靴雪地靴平跟真皮女靴女鞋冬季新款2016马丁靴粗跟棉靴系带靴子', '129', '204', 'Uploads/thumb/2016-01-24/0.65837200 1453616039.jpg', 'Uploads/images/2016-01-24/0.65837200 1453616039.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DnDOj0BmKHX0cQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67qpnxz7ndoDi%2B24pk81cuaqrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03ljr4QGBUROu%2BHH5wLEx%2Ff8vyVS1J7JEVflttr0ZzkkcYMXU3NNCg%2F&pvid=11_27.38.9.130_347_1453622428380', '1', '1453616039', '20', '0', '522939359426', '2');
INSERT INTO `bgw_goods` VALUES ('61', '欧卡汇冬季妈妈鞋坡跟短靴女中老年女鞋妈妈靴加绒防滑真皮棉靴子', '75', '158', 'Uploads/thumb/2016-01-24/0.20916400 1453616040.jpg', 'Uploads/images/2016-01-24/0.20916400 1453616040.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DVQSuVHtfOmUcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67qpnxz7ndoDi%2B24pk81cuaqrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03ljr4QGBUROig3TDcjBu9IlFHuMx4faiI5IWzY95PySXEqY%2Bakgpmw&pvid=11_27.38.9.130_347_1453622428380', '1', '1453616040', '10', '0', '42067371909', '2');
INSERT INTO `bgw_goods` VALUES ('62', '2015秋冬休闲鞋女粗跟短靴女真皮尖头高跟系带马丁靴英伦大码女鞋', '288', '353', 'Uploads/thumb/2016-01-24/0.76997100 1453616040.jpg', 'Uploads/images/2016-01-24/0.76997100 1453616040.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DRT%2Fd%2BNyw4iQcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67qpnxz7ndoDi%2B24pk81cuaqrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh03ljr4QGBUROl02dnOfbkd7PRuQceosFFbR%2Fjs%2B4ZIc38YMXU3NNCg%2F&pvid=11_27.38.9.130_347_145362242838', '1', '1453616041', '9', '0', '521119535305', '2');
INSERT INTO `bgw_goods` VALUES ('63', '娜箐箐2015秋冬新款平底中筒靴真皮马丁靴女牛皮系带女靴冬季女鞋', '228', '304', 'Uploads/thumb/2016-01-24/0.59115200 1453616041.jpg', 'Uploads/images/2016-01-24/0.59115200 1453616041.jpg', 'http://s.click.taobao.com/t?e=m%3D2%26s%3DGmk0cd4kCUIcQipKwQzePOeEDrYVVa64K7Vc7tFgwiHjf2vlNIV67qpnxz7ndoDi%2B24pk81cuaqrEhpkuGn0OcHUXd%2BjTogB1%2FsVzflvh01UwmEI0FVwg79dJ6btfiacxzzAr3%2BtRDc7Z9tyhONT6XEqY%2Bakgpmw&pvid=11_27.38.9.130_347_1453622428380', '1', '1453616041', '10', '0', '41466025893', '2');

-- ----------------------------
-- Table structure for bgw_migrations
-- ----------------------------
DROP TABLE IF EXISTS `bgw_migrations`;
CREATE TABLE `bgw_migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of bgw_migrations
-- ----------------------------
INSERT INTO `bgw_migrations` VALUES ('2014_10_12_000000_create_users_table', '1');
INSERT INTO `bgw_migrations` VALUES ('2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `bgw_migrations` VALUES ('2016_01_18_070231_create_articles_table', '2');
INSERT INTO `bgw_migrations` VALUES ('2016_01_18_070244_create_pages_table', '2');

-- ----------------------------
-- Table structure for bgw_pages
-- ----------------------------
DROP TABLE IF EXISTS `bgw_pages`;
CREATE TABLE `bgw_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of bgw_pages
-- ----------------------------
INSERT INTO `bgw_pages` VALUES ('1', 'Title 0', 'first-page', 'Body 0', '1', '2016-01-18 07:17:09', '2016-01-18 07:17:09');
INSERT INTO `bgw_pages` VALUES ('2', 'Title 1', 'first-page', 'Body 1', '1', '2016-01-18 07:17:09', '2016-01-18 07:17:09');
INSERT INTO `bgw_pages` VALUES ('3', 'Title 2', 'first-page', 'Body 2', '1', '2016-01-18 07:17:09', '2016-01-18 07:17:09');
INSERT INTO `bgw_pages` VALUES ('4', 'Title 3', 'first-page', 'Body 3', '1', '2016-01-18 07:17:09', '2016-01-18 07:17:09');
INSERT INTO `bgw_pages` VALUES ('5', 'Title 4', 'first-page', 'Body 4', '1', '2016-01-18 07:17:10', '2016-01-18 07:17:10');
INSERT INTO `bgw_pages` VALUES ('6', 'Title 5', 'first-page', 'Body 5', '1', '2016-01-18 07:17:10', '2016-01-18 07:17:10');
INSERT INTO `bgw_pages` VALUES ('7', 'Title 6', 'first-page', 'Body 6', '1', '2016-01-18 07:17:10', '2016-01-18 07:17:10');
INSERT INTO `bgw_pages` VALUES ('8', 'Title 7', 'first-page', 'Body 7', '1', '2016-01-18 07:17:10', '2016-01-18 07:17:10');
INSERT INTO `bgw_pages` VALUES ('9', 'Title 8', 'first-page', 'Body 8', '1', '2016-01-18 07:17:10', '2016-01-18 07:17:10');
INSERT INTO `bgw_pages` VALUES ('10', 'Title 9', 'first-page', 'Body 9', '1', '2016-01-18 07:17:10', '2016-01-18 07:57:39');
INSERT INTO `bgw_pages` VALUES ('11', 'titite 12', null, 'IMTWEEN', '1', '2016-01-19 09:55:45', '2016-01-19 09:55:45');

-- ----------------------------
-- Table structure for bgw_password_resets
-- ----------------------------
DROP TABLE IF EXISTS `bgw_password_resets`;
CREATE TABLE `bgw_password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of bgw_password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for bgw_position
-- ----------------------------
DROP TABLE IF EXISTS `bgw_position`;
CREATE TABLE `bgw_position` (
  `pid` int(11) NOT NULL AUTO_INCREMENT COMMENT '位置',
  `p_name` varchar(20) NOT NULL COMMENT '位置名称',
  `p_status` tinyint(4) NOT NULL COMMENT '0下架，1上架',
  `p_addtime` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bgw_position
-- ----------------------------
INSERT INTO `bgw_position` VALUES ('1', '首页商品', '1', '0');
INSERT INTO `bgw_position` VALUES ('2', '首页banner', '1', '0');
INSERT INTO `bgw_position` VALUES ('3', '首页品牌', '1', '0');
INSERT INTO `bgw_position` VALUES ('4', '首页精选店铺', '1', '0');
INSERT INTO `bgw_position` VALUES ('5', '首页其他推荐', '1', '0');
INSERT INTO `bgw_position` VALUES ('6', '上衣', '1', '0');
INSERT INTO `bgw_position` VALUES ('7', '美妆必备', '1', '0');
INSERT INTO `bgw_position` VALUES ('8', '裤子', '1', '0');
INSERT INTO `bgw_position` VALUES ('9', '饰品汇', '1', '0');

-- ----------------------------
-- Table structure for bgw_users
-- ----------------------------
DROP TABLE IF EXISTS `bgw_users`;
CREATE TABLE `bgw_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of bgw_users
-- ----------------------------
INSERT INTO `bgw_users` VALUES ('1', '程聪', '379624432@qq.com', '$2y$10$u/yxC/F8yvyX.P//OpqyLO59FvJUlOLVe6zayfApHww/uzLGWwo8e', 'I604F6q6pYs07qhPs3jyTaTPB4wPcfz7eeyQs3o8LqQJErGB2I8rWO6lV7of', '2016-01-19 10:17:59', '2016-01-19 10:18:13');
