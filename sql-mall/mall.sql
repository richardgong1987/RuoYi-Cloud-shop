/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : mall

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2020-02-26 10:34:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cms_help
-- ----------------------------
DROP TABLE IF EXISTS `cms_help`;
CREATE TABLE `cms_help` (
                            `id` bigint(20) NOT NULL AUTO_INCREMENT,
                            `category_id` bigint(20) DEFAULT NULL,
                            `icon` varchar(500) DEFAULT NULL,
                            `title` varchar(100) DEFAULT NULL,
                            `show_status` int(1) DEFAULT NULL,
                            `create_time` datetime DEFAULT NULL,
                            `read_count` int(1) DEFAULT NULL,
                            `content` text,
                            PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='帮助表';

-- ----------------------------
-- Records of cms_help
-- ----------------------------

-- ----------------------------
-- Table structure for cms_help_category
-- ----------------------------
DROP TABLE IF EXISTS `cms_help_category`;
CREATE TABLE `cms_help_category` (
                                     `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                     `name` varchar(100) DEFAULT NULL,
                                     `icon` varchar(500) DEFAULT NULL COMMENT '分类图标',
                                     `help_count` int(11) DEFAULT NULL COMMENT '专题数量',
                                     `show_status` int(2) DEFAULT NULL,
                                     `sort` int(11) DEFAULT NULL,
                                     PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='帮助分类表';

-- ----------------------------
-- Records of cms_help_category
-- ----------------------------

-- ----------------------------
-- Table structure for cms_member_report
-- ----------------------------
DROP TABLE IF EXISTS `cms_member_report`;
CREATE TABLE `cms_member_report` (
                                     `id` bigint(20) DEFAULT NULL,
                                     `report_type` int(1) DEFAULT NULL COMMENT '举报类型：0->商品评价；1->话题内容；2->用户评论',
                                     `report_member_name` varchar(100) DEFAULT NULL COMMENT '举报人',
                                     `create_time` datetime DEFAULT NULL,
                                     `report_object` varchar(100) DEFAULT NULL,
                                     `report_status` int(1) DEFAULT NULL COMMENT '举报状态：0->未处理；1->已处理',
                                     `handle_status` int(1) DEFAULT NULL COMMENT '处理结果：0->无效；1->有效；2->恶意',
                                     `note` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户举报表';

-- ----------------------------
-- Records of cms_member_report
-- ----------------------------

-- ----------------------------
-- Table structure for cms_prefrence_area
-- ----------------------------
DROP TABLE IF EXISTS `cms_prefrence_area`;
CREATE TABLE `cms_prefrence_area` (
                                      `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                      `name` varchar(255) DEFAULT NULL,
                                      `sub_title` varchar(255) DEFAULT NULL,
                                      `pic` varbinary(500) DEFAULT NULL COMMENT '展示图片',
                                      `sort` int(11) DEFAULT NULL,
                                      `show_status` int(1) DEFAULT NULL,
                                      PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='优选专区';

-- ----------------------------
-- Records of cms_prefrence_area
-- ----------------------------
INSERT INTO `cms_prefrence_area` VALUES ('1', '让音质更出众', '音质不打折 完美现场感', null, null, '1');
INSERT INTO `cms_prefrence_area` VALUES ('2', '让音质更出众22', '让音质更出众22', null, null, null);
INSERT INTO `cms_prefrence_area` VALUES ('3', '让音质更出众33', null, null, null, null);
INSERT INTO `cms_prefrence_area` VALUES ('4', '让音质更出众44', null, null, null, null);

-- ----------------------------
-- Table structure for cms_prefrence_area_product_relation
-- ----------------------------
DROP TABLE IF EXISTS `cms_prefrence_area_product_relation`;
CREATE TABLE `cms_prefrence_area_product_relation` (
                                                       `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                                       `prefrence_area_id` bigint(20) DEFAULT NULL,
                                                       `product_id` bigint(20) DEFAULT NULL,
                                                       PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='优选专区和产品关系表';

-- ----------------------------
-- Records of cms_prefrence_area_product_relation
-- ----------------------------
INSERT INTO `cms_prefrence_area_product_relation` VALUES ('1', '1', '12');
INSERT INTO `cms_prefrence_area_product_relation` VALUES ('2', '1', '13');
INSERT INTO `cms_prefrence_area_product_relation` VALUES ('3', '1', '14');
INSERT INTO `cms_prefrence_area_product_relation` VALUES ('4', '1', '18');
INSERT INTO `cms_prefrence_area_product_relation` VALUES ('5', '1', '7');
INSERT INTO `cms_prefrence_area_product_relation` VALUES ('6', '2', '7');
INSERT INTO `cms_prefrence_area_product_relation` VALUES ('7', '1', '22');
INSERT INTO `cms_prefrence_area_product_relation` VALUES ('24', '1', '23');

-- ----------------------------
-- Table structure for cms_subject
-- ----------------------------
DROP TABLE IF EXISTS `cms_subject`;
CREATE TABLE `cms_subject` (
                               `id` bigint(20) NOT NULL AUTO_INCREMENT,
                               `category_id` bigint(20) DEFAULT NULL,
                               `title` varchar(100) DEFAULT NULL,
                               `pic` varchar(500) DEFAULT NULL COMMENT '专题主图',
                               `product_count` int(11) DEFAULT NULL COMMENT '关联产品数量',
                               `recommend_status` int(1) DEFAULT NULL,
                               `create_time` datetime DEFAULT NULL,
                               `collect_count` int(11) DEFAULT NULL,
                               `read_count` int(11) DEFAULT NULL,
                               `comment_count` int(11) DEFAULT NULL,
                               `album_pics` varchar(1000) DEFAULT NULL COMMENT '画册图片用逗号分割',
                               `description` varchar(1000) DEFAULT NULL,
                               `show_status` int(1) DEFAULT NULL COMMENT '显示状态：0->不显示；1->显示',
                               `content` text,
                               `forward_count` int(11) DEFAULT NULL COMMENT '转发数',
                               `category_name` varchar(200) DEFAULT NULL COMMENT '专题分类名称',
                               PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='专题表';

-- ----------------------------
-- Records of cms_subject
-- ----------------------------
INSERT INTO `cms_subject` VALUES ('1', '1', 'polo衬衫的也时尚', null, null, null, '2018-11-11 13:26:55', null, null, null, null, null, null, null, null, '服装专题');
INSERT INTO `cms_subject` VALUES ('2', '2', '大牌手机低价秒', null, null, null, '2018-11-12 13:27:00', null, null, null, null, null, null, null, null, '手机专题');
INSERT INTO `cms_subject` VALUES ('3', '2', '晓龙845新品上市', null, null, null, '2018-11-13 13:27:05', null, null, null, null, null, null, null, null, '手机专题');
INSERT INTO `cms_subject` VALUES ('4', '1', '夏天应该穿什么', null, null, null, '2018-11-01 13:27:09', null, null, null, null, null, null, null, null, '服装专题');
INSERT INTO `cms_subject` VALUES ('5', '1', '夏季精选', null, null, null, '2018-11-06 13:27:18', null, null, null, null, null, null, null, null, '服装专题');
INSERT INTO `cms_subject` VALUES ('6', '2', '品牌手机降价', null, null, null, '2018-11-07 13:27:21', null, null, null, null, null, null, null, null, '手机专题');

-- ----------------------------
-- Table structure for cms_subject_category
-- ----------------------------
DROP TABLE IF EXISTS `cms_subject_category`;
CREATE TABLE `cms_subject_category` (
                                        `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                        `name` varchar(100) DEFAULT NULL,
                                        `icon` varchar(500) DEFAULT NULL COMMENT '分类图标',
                                        `subject_count` int(11) DEFAULT NULL COMMENT '专题数量',
                                        `show_status` int(2) DEFAULT NULL,
                                        `sort` int(11) DEFAULT NULL,
                                        PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='专题分类表';

-- ----------------------------
-- Records of cms_subject_category
-- ----------------------------
INSERT INTO `cms_subject_category` VALUES ('1', '服装专题', null, null, null, null);
INSERT INTO `cms_subject_category` VALUES ('2', '手机专题', null, null, null, null);

-- ----------------------------
-- Table structure for cms_subject_comment
-- ----------------------------
DROP TABLE IF EXISTS `cms_subject_comment`;
CREATE TABLE `cms_subject_comment` (
                                       `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                       `subject_id` bigint(20) DEFAULT NULL,
                                       `member_nick_name` varchar(255) DEFAULT NULL,
                                       `member_icon` varchar(255) DEFAULT NULL,
                                       `content` varchar(1000) DEFAULT NULL,
                                       `create_time` datetime DEFAULT NULL,
                                       `show_status` int(1) DEFAULT NULL,
                                       PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='专题评论表';

-- ----------------------------
-- Records of cms_subject_comment
-- ----------------------------

-- ----------------------------
-- Table structure for cms_subject_product_relation
-- ----------------------------
DROP TABLE IF EXISTS `cms_subject_product_relation`;
CREATE TABLE `cms_subject_product_relation` (
                                                `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                                `subject_id` bigint(20) DEFAULT NULL,
                                                `product_id` bigint(20) DEFAULT NULL,
                                                PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COMMENT='专题商品关系表';

-- ----------------------------
-- Records of cms_subject_product_relation
-- ----------------------------
INSERT INTO `cms_subject_product_relation` VALUES ('1', '1', '12');
INSERT INTO `cms_subject_product_relation` VALUES ('2', '1', '13');
INSERT INTO `cms_subject_product_relation` VALUES ('3', '1', '14');
INSERT INTO `cms_subject_product_relation` VALUES ('4', '1', '18');
INSERT INTO `cms_subject_product_relation` VALUES ('5', '1', '7');
INSERT INTO `cms_subject_product_relation` VALUES ('6', '2', '7');
INSERT INTO `cms_subject_product_relation` VALUES ('7', '1', '22');
INSERT INTO `cms_subject_product_relation` VALUES ('29', '1', '23');
INSERT INTO `cms_subject_product_relation` VALUES ('30', '4', '23');
INSERT INTO `cms_subject_product_relation` VALUES ('31', '5', '23');
INSERT INTO `cms_subject_product_relation` VALUES ('41', '2', '26');
INSERT INTO `cms_subject_product_relation` VALUES ('42', '3', '26');
INSERT INTO `cms_subject_product_relation` VALUES ('43', '6', '26');

-- ----------------------------
-- Table structure for cms_topic
-- ----------------------------
DROP TABLE IF EXISTS `cms_topic`;
CREATE TABLE `cms_topic` (
                             `id` bigint(20) NOT NULL AUTO_INCREMENT,
                             `category_id` bigint(20) DEFAULT NULL,
                             `name` varchar(255) DEFAULT NULL,
                             `create_time` datetime DEFAULT NULL,
                             `start_time` datetime DEFAULT NULL,
                             `end_time` datetime DEFAULT NULL,
                             `attend_count` int(11) DEFAULT NULL COMMENT '参与人数',
                             `attention_count` int(11) DEFAULT NULL COMMENT '关注人数',
                             `read_count` int(11) DEFAULT NULL,
                             `award_name` varchar(100) DEFAULT NULL COMMENT '奖品名称',
                             `attend_type` varchar(100) DEFAULT NULL COMMENT '参与方式',
                             `content` text COMMENT '话题内容',
                             PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='话题表';

-- ----------------------------
-- Records of cms_topic
-- ----------------------------

-- ----------------------------
-- Table structure for cms_topic_category
-- ----------------------------
DROP TABLE IF EXISTS `cms_topic_category`;
CREATE TABLE `cms_topic_category` (
                                      `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                      `name` varchar(100) DEFAULT NULL,
                                      `icon` varchar(500) DEFAULT NULL COMMENT '分类图标',
                                      `subject_count` int(11) DEFAULT NULL COMMENT '专题数量',
                                      `show_status` int(2) DEFAULT NULL,
                                      `sort` int(11) DEFAULT NULL,
                                      PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='话题分类表';

-- ----------------------------
-- Records of cms_topic_category
-- ----------------------------

-- ----------------------------
-- Table structure for cms_topic_comment
-- ----------------------------
DROP TABLE IF EXISTS `cms_topic_comment`;
CREATE TABLE `cms_topic_comment` (
                                     `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                     `member_nick_name` varchar(255) DEFAULT NULL,
                                     `topic_id` bigint(20) DEFAULT NULL,
                                     `member_icon` varchar(255) DEFAULT NULL,
                                     `content` varchar(1000) DEFAULT NULL,
                                     `create_time` datetime DEFAULT NULL,
                                     `show_status` int(1) DEFAULT NULL,
                                     PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='专题评论表';

-- ----------------------------
-- Records of cms_topic_comment
-- ----------------------------

-- ----------------------------
-- Table structure for oms_cart_item
-- ----------------------------
DROP TABLE IF EXISTS `oms_cart_item`;
CREATE TABLE `oms_cart_item` (
                                 `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                 `product_id` bigint(20) DEFAULT NULL,
                                 `product_sku_id` bigint(20) DEFAULT NULL,
                                 `member_id` bigint(20) DEFAULT NULL,
                                 `quantity` int(11) DEFAULT NULL COMMENT '购买数量',
                                 `price` decimal(10,2) DEFAULT NULL COMMENT '添加到购物车的价格',
                                 `product_pic` varchar(1000) DEFAULT NULL COMMENT '商品主图',
                                 `product_name` varchar(500) DEFAULT NULL COMMENT '商品名称',
                                 `product_sub_title` varchar(500) DEFAULT NULL COMMENT '商品副标题（卖点）',
                                 `product_sku_code` varchar(200) DEFAULT NULL COMMENT '商品sku条码',
                                 `member_nickname` varchar(500) DEFAULT NULL COMMENT '会员昵称',
                                 `create_date` datetime DEFAULT NULL COMMENT '创建时间',
                                 `modify_date` datetime DEFAULT NULL COMMENT '修改时间',
                                 `delete_status` int(1) DEFAULT '0' COMMENT '是否删除',
                                 `product_category_id` bigint(20) DEFAULT NULL COMMENT '商品分类',
                                 `product_brand` varchar(200) DEFAULT NULL,
                                 `product_sn` varchar(200) DEFAULT NULL,
                                 `product_attr` varchar(500) DEFAULT NULL COMMENT '商品销售属性:[{"key":"颜色","value":"颜色"},{"key":"容量","value":"4G"}]',
                                 PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='购物车表';

-- ----------------------------
-- Records of oms_cart_item
-- ----------------------------
INSERT INTO `oms_cart_item` VALUES ('12', '26', '90', '1', '1', '3788.00', null, '华为 HUAWEI P20', 'AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待手机 双卡双待', '201806070026001', 'windir', '2018-08-27 16:53:44', null, '1', '19', null, null, null);
INSERT INTO `oms_cart_item` VALUES ('13', '27', '98', '1', '3', '2699.00', null, '小米8', '骁龙845处理器，红外人脸解锁，AI变焦双摄，AI语音助手小米6X低至1299，点击抢购', '201808270027001', 'windir', '2018-08-27 17:11:53', null, '1', '19', null, null, null);
INSERT INTO `oms_cart_item` VALUES ('14', '28', '102', '1', '1', '649.00', null, '红米5A', '8天超长待机，137g轻巧机身，高通骁龙处理器小米6X低至1299，点击抢购', '201808270028001', 'windir', '2018-08-27 17:18:02', null, '1', '19', null, null, null);
INSERT INTO `oms_cart_item` VALUES ('15', '28', '103', '1', '1', '699.00', null, '红米5A', '8天超长待机，137g轻巧机身，高通骁龙处理器小米6X低至1299，点击抢购', '201808270028001', 'windir', '2018-08-28 10:22:45', null, '1', '19', null, null, null);
INSERT INTO `oms_cart_item` VALUES ('16', '29', '106', '1', '1', '5499.00', null, 'Apple iPhone 8 Plus', '【限时限量抢购】Apple产品年中狂欢节，好物尽享，美在智慧！速来 >> 勾选[保障服务][原厂保2年]，获得AppleCare+全方位服务计划，原厂延保售后无忧。', '201808270029001', 'windir', '2018-08-28 10:50:50', null, '1', '19', null, null, null);
INSERT INTO `oms_cart_item` VALUES ('19', '36', '163', '1', '3', '100.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', '202002210036001', 'windir', '2020-02-25 15:51:59', null, '1', '29', 'NIKE', '6799345', '[{\"key\":\"颜色\",\"value\":\"红色\"},{\"key\":\"尺寸\",\"value\":\"38\"},{\"key\":\"风格\",\"value\":\"秋季\"}]');
INSERT INTO `oms_cart_item` VALUES ('20', '36', '164', '1', '2', '120.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', '202002210036001', 'windir', '2020-02-25 15:54:23', null, '1', '29', 'NIKE', '6799345', '[{\"key\":\"颜色\",\"value\":\"红色\"},{\"key\":\"尺寸\",\"value\":\"38\"},{\"key\":\"风格\",\"value\":\"夏季\"}]');
INSERT INTO `oms_cart_item` VALUES ('21', '36', '164', '1', '2', '120.00', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', '202002210036001', 'windir', '2020-02-25 16:49:53', null, '1', '29', 'NIKE', '6799345', '[{\"key\":\"颜色\",\"value\":\"红色\"},{\"key\":\"尺寸\",\"value\":\"38\"},{\"key\":\"风格\",\"value\":\"夏季\"}]');

-- ----------------------------
-- Table structure for oms_company_address
-- ----------------------------
DROP TABLE IF EXISTS `oms_company_address`;
CREATE TABLE `oms_company_address` (
                                       `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                       `address_name` varchar(200) DEFAULT NULL COMMENT '地址名称',
                                       `send_status` int(1) DEFAULT NULL COMMENT '默认发货地址：0->否；1->是',
                                       `receive_status` int(1) DEFAULT NULL COMMENT '是否默认收货地址：0->否；1->是',
                                       `name` varchar(64) DEFAULT NULL COMMENT '收发货人姓名',
                                       `phone` varchar(64) DEFAULT NULL COMMENT '收货人电话',
                                       `province` varchar(64) DEFAULT NULL COMMENT '省/直辖市',
                                       `city` varchar(64) DEFAULT NULL COMMENT '市',
                                       `region` varchar(64) DEFAULT NULL COMMENT '区',
                                       `detail_address` varchar(200) DEFAULT NULL COMMENT '详细地址',
                                       PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='公司收发货地址表';

-- ----------------------------
-- Records of oms_company_address
-- ----------------------------
INSERT INTO `oms_company_address` VALUES ('1', '深圳发货点', '1', '1', '大梨', '18000000000', '广东省', '深圳市', '南山区', '科兴科学园');
INSERT INTO `oms_company_address` VALUES ('2', '北京发货点', '0', '0', '大梨', '18000000000', '北京市', null, '南山区', '科兴科学园');
INSERT INTO `oms_company_address` VALUES ('3', '南京发货点', '0', '0', '大梨', '18000000000', '江苏省', '南京市', '南山区', '科兴科学园');

-- ----------------------------
-- Table structure for oms_order
-- ----------------------------
DROP TABLE IF EXISTS `oms_order`;
CREATE TABLE `oms_order` (
                             `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '订单id',
                             `member_id` bigint(20) NOT NULL,
                             `coupon_id` bigint(20) DEFAULT NULL,
                             `order_sn` varchar(64) DEFAULT NULL COMMENT '订单编号',
                             `create_time` datetime DEFAULT NULL COMMENT '提交时间',
                             `member_username` varchar(64) DEFAULT NULL COMMENT '用户帐号',
                             `total_amount` decimal(10,2) DEFAULT NULL COMMENT '订单总金额',
                             `pay_amount` decimal(10,2) DEFAULT NULL COMMENT '应付金额（实际支付金额）',
                             `freight_amount` decimal(10,2) DEFAULT NULL COMMENT '运费金额',
                             `promotion_amount` decimal(10,2) DEFAULT NULL COMMENT '促销优化金额（促销价、满减、阶梯价）',
                             `integration_amount` decimal(10,2) DEFAULT NULL COMMENT '积分抵扣金额',
                             `coupon_amount` decimal(10,2) DEFAULT NULL COMMENT '优惠券抵扣金额',
                             `discount_amount` decimal(10,2) DEFAULT NULL COMMENT '管理员后台调整订单使用的折扣金额',
                             `pay_type` int(1) DEFAULT NULL COMMENT '支付方式：0->未支付；1->支付宝；2->微信',
                             `source_type` int(1) DEFAULT NULL COMMENT '订单来源：0->PC订单；1->app订单',
                             `status` int(1) DEFAULT NULL COMMENT '订单状态：0->待付款；1->待发货；2->已发货；3->已完成；4->已关闭；5->无效订单',
                             `order_type` int(1) DEFAULT NULL COMMENT '订单类型：0->正常订单；1->秒杀订单',
                             `delivery_company` varchar(64) DEFAULT NULL COMMENT '物流公司(配送方式)',
                             `delivery_sn` varchar(64) DEFAULT NULL COMMENT '物流单号',
                             `auto_confirm_day` int(11) DEFAULT NULL COMMENT '自动确认时间（天）',
                             `integration` int(11) DEFAULT NULL COMMENT '可以获得的积分',
                             `growth` int(11) DEFAULT NULL COMMENT '可以活动的成长值',
                             `promotion_info` varchar(100) DEFAULT NULL COMMENT '活动信息',
                             `bill_type` int(1) DEFAULT NULL COMMENT '发票类型：0->不开发票；1->电子发票；2->纸质发票',
                             `bill_header` varchar(200) DEFAULT NULL COMMENT '发票抬头',
                             `bill_content` varchar(200) DEFAULT NULL COMMENT '发票内容',
                             `bill_receiver_phone` varchar(32) DEFAULT NULL COMMENT '收票人电话',
                             `bill_receiver_email` varchar(64) DEFAULT NULL COMMENT '收票人邮箱',
                             `receiver_name` varchar(100) NOT NULL COMMENT '收货人姓名',
                             `receiver_phone` varchar(32) NOT NULL COMMENT '收货人电话',
                             `receiver_post_code` varchar(32) DEFAULT NULL COMMENT '收货人邮编',
                             `receiver_province` varchar(32) DEFAULT NULL COMMENT '省份/直辖市',
                             `receiver_city` varchar(32) DEFAULT NULL COMMENT '城市',
                             `receiver_region` varchar(32) DEFAULT NULL COMMENT '区',
                             `receiver_detail_address` varchar(200) DEFAULT NULL COMMENT '详细地址',
                             `note` varchar(500) DEFAULT NULL COMMENT '订单备注',
                             `confirm_status` int(1) DEFAULT NULL COMMENT '确认收货状态：0->未确认；1->已确认',
                             `delete_status` int(1) NOT NULL DEFAULT '0' COMMENT '删除状态：0->未删除；1->已删除',
                             `use_integration` int(11) DEFAULT NULL COMMENT '下单时使用的积分',
                             `payment_time` datetime DEFAULT NULL COMMENT '支付时间',
                             `delivery_time` datetime DEFAULT NULL COMMENT '发货时间',
                             `receive_time` datetime DEFAULT NULL COMMENT '确认收货时间',
                             `comment_time` datetime DEFAULT NULL COMMENT '评价时间',
                             `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
                             PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='订单表';

-- ----------------------------
-- Records of oms_order
-- ----------------------------
INSERT INTO `oms_order` VALUES ('12', '1', '2', '201809150101000001', '2018-09-15 12:24:27', 'test', '18732.00', '16377.75', '20.00', '2344.25', '0.00', '10.00', '10.00', '0', '1', '4', '0', '', '', '15', '13284', '13284', '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '江苏省', '常州市', '天宁区', '东晓街道', '111', '0', '0', null, null, null, null, null, '2019-11-09 16:50:28');
INSERT INTO `oms_order` VALUES ('13', '1', '2', '201809150102000002', '2018-09-15 14:24:29', 'test', '18732.00', '16377.75', '0.00', '2344.25', '0.00', '10.00', '0.00', '1', '1', '1', '0', '', '', '15', '13284', '13284', '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '0', '0', '1000', '2018-10-11 14:04:19', null, null, null, null);
INSERT INTO `oms_order` VALUES ('14', '1', '2', '201809130101000001', '2018-09-13 16:57:40', 'test', '18732.00', '16377.75', '0.00', '2344.25', '0.00', '10.00', '0.00', '2', '1', '2', '0', '顺丰快递', '201707196398345', '15', '13284', '13284', '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '0', '0', null, '2018-10-13 13:44:04', '2018-10-16 13:43:41', null, null, null);
INSERT INTO `oms_order` VALUES ('15', '1', '2', '201809130102000002', '2018-09-13 17:03:00', 'test', '18732.00', '16377.75', '0.00', '2344.25', '0.00', '10.00', '0.00', '1', '1', '3', '0', '顺丰快递', '201707196398346', '15', '13284', '13284', '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '1', '0', null, '2018-10-13 13:44:54', '2018-10-16 13:45:01', '2018-10-18 14:05:31', null, null);
INSERT INTO `oms_order` VALUES ('16', '1', '2', '201809140101000001', '2018-09-14 16:16:16', 'test', '18732.00', '16377.75', '0.00', '2344.25', '0.00', '10.00', '0.00', '2', '1', '4', '0', null, null, '15', '13284', '13284', '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '0', '0', null, null, null, null, null, null);
INSERT INTO `oms_order` VALUES ('17', '1', '2', '201809150101000003', '2018-09-15 12:24:27', 'test', '18732.00', '16377.75', '0.00', '2344.25', '0.00', '10.00', '0.00', '0', '1', '4', '0', '顺丰快递', '201707196398345', '15', null, null, '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '0', '0', null, null, '2018-10-12 14:01:28', null, null, null);
INSERT INTO `oms_order` VALUES ('18', '1', '2', '201809150102000004', '2018-09-15 14:24:29', 'test', '18732.00', '16377.75', '0.00', '2344.25', '0.00', '10.00', '0.00', '1', '1', '1', '0', '圆通快递', 'xx', '15', null, null, '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '0', '0', '1000', null, '2018-10-16 14:42:17', null, null, null);
INSERT INTO `oms_order` VALUES ('19', '1', '2', '201809130101000003', '2018-09-13 16:57:40', 'test', '18732.00', '16377.75', '0.00', '2344.25', '0.00', '10.00', '0.00', '2', '1', '2', '0', null, null, '15', null, null, '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '0', '0', null, null, null, null, null, null);
INSERT INTO `oms_order` VALUES ('20', '1', '2', '201809130102000004', '2018-09-13 17:03:00', 'test', '18732.00', '16377.75', '0.00', '2344.25', '0.00', '10.00', '0.00', '1', '1', '3', '0', null, null, '15', null, null, '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '0', '0', null, null, null, null, null, null);
INSERT INTO `oms_order` VALUES ('21', '1', '2', '201809140101000002', '2018-09-14 16:16:16', 'test', '18732.00', '16377.75', '0.00', '2344.25', '0.00', '10.00', '0.00', '2', '1', '4', '0', null, null, '15', '18682', '18682', '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '0', '1', null, null, null, null, null, null);
INSERT INTO `oms_order` VALUES ('22', '1', '2', '201809150101000005', '2018-09-15 12:24:27', 'test', '18732.00', '16377.75', '0.00', '2344.25', '0.00', '10.00', '0.00', '0', '1', '4', '0', '顺丰快递', '201707196398345', '15', '0', '0', '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '0', '0', null, null, '2018-10-12 14:01:28', null, null, null);
INSERT INTO `oms_order` VALUES ('23', '1', '2', '201809150102000006', '2018-09-15 14:24:29', 'test', '18732.00', '16377.75', '0.00', '2344.25', '0.00', '10.00', '0.00', '1', '1', '1', '0', '顺丰快递', 'xxx', '15', '0', '0', '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '0', '0', '1000', null, '2018-10-16 14:41:28', null, null, null);
INSERT INTO `oms_order` VALUES ('24', '1', '2', '201809130101000005', '2018-09-13 16:57:40', 'test', '18732.00', '16377.75', '0.00', '2344.25', '0.00', '10.00', '0.00', '2', '1', '2', '0', null, null, '15', '18682', '18682', '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '0', '0', null, null, null, null, null, null);
INSERT INTO `oms_order` VALUES ('25', '1', '2', '201809130102000006', '2018-09-13 17:03:00', 'test', '18732.00', '16377.75', '10.00', '2344.25', '0.00', '10.00', '5.00', '1', '1', '4', '0', null, null, '15', '18682', '18682', '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', null, null, null, null, null, '大梨22', '18033441849', '518000', '北京市', '北京城区', '东城区', '东城街道', 'xxx', '0', '0', null, null, null, null, null, '2018-10-30 15:08:31');
INSERT INTO `oms_order` VALUES ('26', '1', '2', '201809140101000003', '2018-09-14 16:16:16', 'test', '18732.00', '16377.75', '0.00', '2344.25', '0.00', '10.00', '0.00', '2', '1', '4', '0', null, null, '15', '18682', '18682', '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, '0', '1', null, null, null, null, null, null);
INSERT INTO `oms_order` VALUES ('27', '1', null, '202002250100000001', '2020-02-25 15:59:20', 'test', '540.00', '540.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '1', '0', '0', null, null, null, '0', '0', '无优惠,无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '南山区', '科兴科学园', null, '0', '1', null, null, null, null, null, null);
INSERT INTO `oms_order` VALUES ('28', '1', null, '202002250100000002', '2020-02-25 16:05:47', 'test', '540.00', '540.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '1', '0', '0', null, null, null, '0', '0', '无优惠,无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '南山区', '科兴科学园', null, '0', '1', null, null, null, null, null, null);
INSERT INTO `oms_order` VALUES ('29', '1', null, '202002250100000003', '2020-02-25 16:07:58', 'test', '540.00', '540.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '1', '0', '0', null, null, null, '0', '0', '无优惠,无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '南山区', '科兴科学园', null, '0', '0', null, null, null, null, null, null);
INSERT INTO `oms_order` VALUES ('30', '1', null, '202002250100000004', '2020-02-25 16:50:13', 'test', '240.00', '240.00', '20.00', '0.00', '0.00', '0.00', '10.00', '0', '1', '2', '0', '顺丰快递', '12333333', null, '0', '0', '无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '南山区', '科兴科学园', null, '0', '0', null, '2020-02-25 16:53:29', '2020-02-25 16:54:03', null, null, '2020-02-25 16:52:51');

-- ----------------------------
-- Table structure for oms_order_item
-- ----------------------------
DROP TABLE IF EXISTS `oms_order_item`;
CREATE TABLE `oms_order_item` (
                                  `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                  `order_id` bigint(20) DEFAULT NULL COMMENT '订单id',
                                  `order_sn` varchar(64) DEFAULT NULL COMMENT '订单编号',
                                  `product_id` bigint(20) DEFAULT NULL,
                                  `product_pic` varchar(500) DEFAULT NULL,
                                  `product_name` varchar(200) DEFAULT NULL,
                                  `product_brand` varchar(200) DEFAULT NULL,
                                  `product_sn` varchar(64) DEFAULT NULL,
                                  `product_price` decimal(10,2) DEFAULT NULL COMMENT '销售价格',
                                  `product_quantity` int(11) DEFAULT NULL COMMENT '购买数量',
                                  `product_sku_id` bigint(20) DEFAULT NULL COMMENT '商品sku编号',
                                  `product_sku_code` varchar(50) DEFAULT NULL COMMENT '商品sku条码',
                                  `product_category_id` bigint(20) DEFAULT NULL COMMENT '商品分类id',
                                  `promotion_name` varchar(200) DEFAULT NULL COMMENT '商品促销名称',
                                  `promotion_amount` decimal(10,2) DEFAULT NULL COMMENT '商品促销分解金额',
                                  `coupon_amount` decimal(10,2) DEFAULT NULL COMMENT '优惠券优惠分解金额',
                                  `integration_amount` decimal(10,2) DEFAULT NULL COMMENT '积分优惠分解金额',
                                  `real_amount` decimal(10,2) DEFAULT NULL COMMENT '该商品经过优惠后的分解金额',
                                  `gift_integration` int(11) DEFAULT '0',
                                  `gift_growth` int(11) DEFAULT '0',
                                  `product_attr` varchar(500) DEFAULT NULL COMMENT '商品销售属性:[{"key":"颜色","value":"颜色"},{"key":"容量","value":"4G"}]',
                                  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COMMENT='订单中所包含的商品';

-- ----------------------------
-- Records of oms_order_item
-- ----------------------------
INSERT INTO `oms_order_item` VALUES ('21', '12', '201809150101000001', '26', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '6946605', '3788.00', '1', '90', '201806070026001', '19', '单品促销', '200.00', '2.02', '0.00', '3585.98', '3788', '3788', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_order_item` VALUES ('22', '12', '201809150101000001', '27', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '7437788', '2699.00', '3', '98', '201808270027001', '19', '打折优惠：满3件，打7.50折', '674.75', '1.44', '0.00', '2022.81', '2699', '2699', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES ('23', '12', '201809150101000001', '28', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', '649.00', '1', '102', '201808270028001', '19', '满减优惠：满1000.00元，减120.00元', '57.60', '0.35', '0.00', '591.05', '649', '649', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_order_item` VALUES ('24', '12', '201809150101000001', '28', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', '699.00', '1', '103', '201808270028001', '19', '满减优惠：满1000.00元，减120.00元', '62.40', '0.37', '0.00', '636.23', '649', '649', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES ('25', '12', '201809150101000001', '29', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5acc5248N6a5f81cd.jpg', 'Apple iPhone 8 Plus', '苹果', '7437799', '5499.00', '1', '106', '201808270029001', '19', '无优惠', '0.00', '2.94', '0.00', '5496.06', '5499', '5499', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES ('26', '13', '201809150102000002', '26', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '6946605', '3788.00', '1', '90', '201806070026001', '19', '单品促销', '200.00', '2.02', '0.00', '3585.98', '3788', '3788', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_order_item` VALUES ('27', '13', '201809150102000002', '27', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '7437788', '2699.00', '3', '98', '201808270027001', '19', '打折优惠：满3件，打7.50折', '674.75', '1.44', '0.00', '2022.81', '2699', '2699', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES ('28', '13', '201809150102000002', '28', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', '649.00', '1', '102', '201808270028001', '19', '满减优惠：满1000.00元，减120.00元', '57.60', '0.35', '0.00', '591.05', '649', '649', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_order_item` VALUES ('29', '13', '201809150102000002', '28', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', '699.00', '1', '103', '201808270028001', '19', '满减优惠：满1000.00元，减120.00元', '62.40', '0.37', '0.00', '636.23', '649', '649', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES ('30', '13', '201809150102000002', '29', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5acc5248N6a5f81cd.jpg', 'Apple iPhone 8 Plus', '苹果', '7437799', '5499.00', '1', '106', '201808270029001', '19', '无优惠', '0.00', '2.94', '0.00', '5496.06', '5499', '5499', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES ('31', '14', '201809130101000001', '26', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '6946605', '3788.00', '1', '90', '201806070026001', '19', '单品促销', '200.00', '2.02', '0.00', '3585.98', '3788', '3788', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_order_item` VALUES ('32', '14', '201809130101000001', '27', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '7437788', '2699.00', '3', '98', '201808270027001', '19', '打折优惠：满3件，打7.50折', '674.75', '1.44', '0.00', '2022.81', '2699', '2699', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES ('33', '14', '201809130101000001', '28', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', '649.00', '1', '102', '201808270028001', '19', '满减优惠：满1000.00元，减120.00元', '57.60', '0.35', '0.00', '591.05', '649', '649', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_order_item` VALUES ('34', '14', '201809130101000001', '28', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', '699.00', '1', '103', '201808270028001', '19', '满减优惠：满1000.00元，减120.00元', '62.40', '0.37', '0.00', '636.23', '649', '649', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES ('35', '14', '201809130101000001', '29', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5acc5248N6a5f81cd.jpg', 'Apple iPhone 8 Plus', '苹果', '7437799', '5499.00', '1', '106', '201808270029001', '19', '无优惠', '0.00', '2.94', '0.00', '5496.06', '5499', '5499', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES ('36', '15', '201809130101000001', '26', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '6946605', '3788.00', '1', '90', '201806070026001', '19', '单品促销', '200.00', '2.02', '0.00', '3585.98', '3788', '3788', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_order_item` VALUES ('37', '15', '201809130101000001', '27', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '7437788', '2699.00', '3', '98', '201808270027001', '19', '打折优惠：满3件，打7.50折', '674.75', '1.44', '0.00', '2022.81', '2699', '2699', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES ('38', '15', '201809130101000001', '28', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', '649.00', '1', '102', '201808270028001', '19', '满减优惠：满1000.00元，减120.00元', '57.60', '0.35', '0.00', '591.05', '649', '649', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_order_item` VALUES ('39', '15', '201809130101000001', '28', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', '699.00', '1', '103', '201808270028001', '19', '满减优惠：满1000.00元，减120.00元', '62.40', '0.37', '0.00', '636.23', '649', '649', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES ('40', '15', '201809130101000001', '29', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5acc5248N6a5f81cd.jpg', 'Apple iPhone 8 Plus', '苹果', '7437799', '5499.00', '1', '106', '201808270029001', '19', '无优惠', '0.00', '2.94', '0.00', '5496.06', '5499', '5499', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES ('41', '16', '201809140101000001', '26', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '6946605', '3788.00', '1', '90', '201806070026001', '19', '单品促销', '200.00', '2.02', '0.00', '3585.98', '3788', '3788', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_order_item` VALUES ('42', '16', '201809140101000001', '27', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '7437788', '2699.00', '3', '98', '201808270027001', '19', '打折优惠：满3件，打7.50折', '674.75', '1.44', '0.00', '2022.81', '2699', '2699', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES ('43', '16', '201809140101000001', '28', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', '649.00', '1', '102', '201808270028001', '19', '满减优惠：满1000.00元，减120.00元', '57.60', '0.35', '0.00', '591.05', '649', '649', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `oms_order_item` VALUES ('44', '16', '201809140101000001', '28', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', '699.00', '1', '103', '201808270028001', '19', '满减优惠：满1000.00元，减120.00元', '62.40', '0.37', '0.00', '636.23', '649', '649', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES ('45', '16', '201809140101000001', '29', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5acc5248N6a5f81cd.jpg', 'Apple iPhone 8 Plus', '苹果', '7437799', '5499.00', '1', '106', '201808270029001', '19', '无优惠', '0.00', '2.94', '0.00', '5496.06', '5499', '5499', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `oms_order_item` VALUES ('46', '27', '202002250100000001', '36', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', 'NIKE', '6799345', '100.00', '3', '163', '202002210036001', '29', '无优惠', '0.00', '0.00', '0.00', '100.00', '0', '0', null);
INSERT INTO `oms_order_item` VALUES ('47', '27', '202002250100000001', '36', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', 'NIKE', '6799345', '120.00', '2', '164', '202002210036001', '29', '无优惠', '0.00', '0.00', '0.00', '120.00', '0', '0', null);
INSERT INTO `oms_order_item` VALUES ('48', '28', '202002250100000002', '36', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', 'NIKE', '6799345', '100.00', '3', '163', '202002210036001', '29', '无优惠', '0.00', '0.00', '0.00', '100.00', '0', '0', null);
INSERT INTO `oms_order_item` VALUES ('49', '28', '202002250100000002', '36', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', 'NIKE', '6799345', '120.00', '2', '164', '202002210036001', '29', '无优惠', '0.00', '0.00', '0.00', '120.00', '0', '0', null);
INSERT INTO `oms_order_item` VALUES ('50', '29', '202002250100000003', '36', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', 'NIKE', '6799345', '100.00', '3', '163', '202002210036001', '29', '无优惠', '0.00', '0.00', '0.00', '100.00', '0', '0', '[{\"key\":\"颜色\",\"value\":\"红色\"},{\"key\":\"尺寸\",\"value\":\"38\"},{\"key\":\"风格\",\"value\":\"秋季\"}]');
INSERT INTO `oms_order_item` VALUES ('51', '29', '202002250100000003', '36', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', 'NIKE', '6799345', '120.00', '2', '164', '202002210036001', '29', '无优惠', '0.00', '0.00', '0.00', '120.00', '0', '0', '[{\"key\":\"颜色\",\"value\":\"红色\"},{\"key\":\"尺寸\",\"value\":\"38\"},{\"key\":\"风格\",\"value\":\"夏季\"}]');
INSERT INTO `oms_order_item` VALUES ('52', '30', '202002250100000004', '36', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', 'NIKE', '6799345', '120.00', '2', '164', '202002210036001', '29', '无优惠', '0.00', '0.00', '0.00', '120.00', '0', '0', '[{\"key\":\"颜色\",\"value\":\"红色\"},{\"key\":\"尺寸\",\"value\":\"38\"},{\"key\":\"风格\",\"value\":\"夏季\"}]');

-- ----------------------------
-- Table structure for oms_order_operate_history
-- ----------------------------
DROP TABLE IF EXISTS `oms_order_operate_history`;
CREATE TABLE `oms_order_operate_history` (
                                             `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                             `order_id` bigint(20) DEFAULT NULL COMMENT '订单id',
                                             `operate_man` varchar(100) DEFAULT NULL COMMENT '操作人：用户；系统；后台管理员',
                                             `create_time` datetime DEFAULT NULL COMMENT '操作时间',
                                             `order_status` int(1) DEFAULT NULL COMMENT '订单状态：0->待付款；1->待发货；2->已发货；3->已完成；4->已关闭；5->无效订单',
                                             `note` varchar(500) DEFAULT NULL COMMENT '备注',
                                             PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='订单操作历史记录';

-- ----------------------------
-- Records of oms_order_operate_history
-- ----------------------------
INSERT INTO `oms_order_operate_history` VALUES ('5', '12', '后台管理员', '2018-10-12 14:01:29', '2', '完成发货');
INSERT INTO `oms_order_operate_history` VALUES ('6', '13', '后台管理员', '2018-10-12 14:01:29', '2', '完成发货');
INSERT INTO `oms_order_operate_history` VALUES ('7', '12', '后台管理员', '2018-10-12 14:13:10', '4', '订单关闭:买家退货');
INSERT INTO `oms_order_operate_history` VALUES ('8', '13', '后台管理员', '2018-10-12 14:13:10', '4', '订单关闭:买家退货');
INSERT INTO `oms_order_operate_history` VALUES ('9', '22', '后台管理员', '2018-10-15 16:31:48', '4', '订单关闭:xxx');
INSERT INTO `oms_order_operate_history` VALUES ('10', '22', '后台管理员', '2018-10-15 16:35:08', '4', '订单关闭:xxx');
INSERT INTO `oms_order_operate_history` VALUES ('11', '22', '后台管理员', '2018-10-15 16:35:59', '4', '订单关闭:xxx');
INSERT INTO `oms_order_operate_history` VALUES ('12', '17', '后台管理员', '2018-10-15 16:43:40', '4', '订单关闭:xxx');
INSERT INTO `oms_order_operate_history` VALUES ('13', '25', '后台管理员', '2018-10-15 16:52:14', '4', '订单关闭:xxx');
INSERT INTO `oms_order_operate_history` VALUES ('14', '26', '后台管理员', '2018-10-15 16:52:14', '4', '订单关闭:xxx');
INSERT INTO `oms_order_operate_history` VALUES ('15', '23', '后台管理员', '2018-10-16 14:41:28', '2', '完成发货');
INSERT INTO `oms_order_operate_history` VALUES ('16', '13', '后台管理员', '2018-10-16 14:42:17', '2', '完成发货');
INSERT INTO `oms_order_operate_history` VALUES ('17', '18', '后台管理员', '2018-10-16 14:42:17', '2', '完成发货');
INSERT INTO `oms_order_operate_history` VALUES ('18', '26', '后台管理员', '2018-10-30 14:37:44', '4', '订单关闭:关闭订单');
INSERT INTO `oms_order_operate_history` VALUES ('19', '25', '后台管理员', '2018-10-30 15:07:01', '0', '修改收货人信息');
INSERT INTO `oms_order_operate_history` VALUES ('20', '25', '后台管理员', '2018-10-30 15:08:13', '0', '修改费用信息');
INSERT INTO `oms_order_operate_history` VALUES ('21', '25', '后台管理员', '2018-10-30 15:08:31', '0', '修改备注信息：xxx');
INSERT INTO `oms_order_operate_history` VALUES ('22', '25', '后台管理员', '2018-10-30 15:08:39', '4', '订单关闭:2222');
INSERT INTO `oms_order_operate_history` VALUES ('23', '12', '后台管理员', '2019-11-09 16:50:28', '4', '修改备注信息：111');
INSERT INTO `oms_order_operate_history` VALUES ('24', '30', '后台管理员', '2020-02-25 16:52:37', '0', '修改费用信息');
INSERT INTO `oms_order_operate_history` VALUES ('25', '30', '后台管理员', '2020-02-25 16:52:51', '0', '修改费用信息');
INSERT INTO `oms_order_operate_history` VALUES ('26', '30', '后台管理员', '2020-02-25 16:54:03', '2', '完成发货');

-- ----------------------------
-- Table structure for oms_order_return_apply
-- ----------------------------
DROP TABLE IF EXISTS `oms_order_return_apply`;
CREATE TABLE `oms_order_return_apply` (
                                          `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                          `order_id` bigint(20) DEFAULT NULL COMMENT '订单id',
                                          `company_address_id` bigint(20) DEFAULT NULL COMMENT '收货地址表id',
                                          `product_id` bigint(20) DEFAULT NULL COMMENT '退货商品id',
                                          `order_sn` varchar(64) DEFAULT NULL COMMENT '订单编号',
                                          `create_time` datetime DEFAULT NULL COMMENT '申请时间',
                                          `member_username` varchar(64) DEFAULT NULL COMMENT '会员用户名',
                                          `return_amount` decimal(10,2) DEFAULT NULL COMMENT '退款金额',
                                          `return_name` varchar(100) DEFAULT NULL COMMENT '退货人姓名',
                                          `return_phone` varchar(100) DEFAULT NULL COMMENT '退货人电话',
                                          `status` int(1) DEFAULT NULL COMMENT '申请状态：0->待处理；1->退货中；2->已完成；3->已拒绝',
                                          `handle_time` datetime DEFAULT NULL COMMENT '处理时间',
                                          `product_pic` varchar(500) DEFAULT NULL COMMENT '商品图片',
                                          `product_name` varchar(200) DEFAULT NULL COMMENT '商品名称',
                                          `product_brand` varchar(200) DEFAULT NULL COMMENT '商品品牌',
                                          `product_attr` varchar(500) DEFAULT NULL COMMENT '商品销售属性：颜色：红色；尺码：xl;',
                                          `product_count` int(11) DEFAULT NULL COMMENT '退货数量',
                                          `product_price` decimal(10,2) DEFAULT NULL COMMENT '商品单价',
                                          `product_real_price` decimal(10,2) DEFAULT NULL COMMENT '商品实际支付单价',
                                          `reason` varchar(200) DEFAULT NULL COMMENT '原因',
                                          `description` varchar(500) DEFAULT NULL COMMENT '描述',
                                          `proof_pics` varchar(1000) DEFAULT NULL COMMENT '凭证图片，以逗号隔开',
                                          `handle_note` varchar(500) DEFAULT NULL COMMENT '处理备注',
                                          `handle_man` varchar(100) DEFAULT NULL COMMENT '处理人员',
                                          `receive_man` varchar(100) DEFAULT NULL COMMENT '收货人',
                                          `receive_time` datetime DEFAULT NULL COMMENT '收货时间',
                                          `receive_note` varchar(500) DEFAULT NULL COMMENT '收货备注',
                                          PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='订单退货申请';

-- ----------------------------
-- Records of oms_order_return_apply
-- ----------------------------
INSERT INTO `oms_order_return_apply` VALUES ('3', '12', null, '26', '201809150101000001', '2018-10-17 14:34:57', 'test', null, '大梨', '18000000000', '0', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '颜色：金色;内存：16G', '1', '3788.00', '3585.98', '质量问题', '老是卡', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg,http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', null, null, null, null, null);
INSERT INTO `oms_order_return_apply` VALUES ('4', '12', '2', '27', '201809150101000001', '2018-10-17 14:40:21', 'test', '3585.98', '大梨', '18000000000', '1', '2018-10-18 13:54:10', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '颜色：黑色;内存：32G', '1', '2699.00', '2022.81', '质量问题', '不够高端', '', '已经处理了', 'admin', null, null, null);
INSERT INTO `oms_order_return_apply` VALUES ('5', '12', '3', '28', '201809150101000001', '2018-10-17 14:44:18', 'test', '3585.98', '大梨', '18000000000', '2', '2018-10-18 13:55:28', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '颜色：金色;内存：16G', '1', '649.00', '591.05', '质量问题', '颜色太土', '', '已经处理了', 'admin', 'admin', '2018-10-18 13:55:58', '已经处理了');
INSERT INTO `oms_order_return_apply` VALUES ('8', '13', null, '28', '201809150102000002', '2018-10-17 14:44:18', 'test', null, '大梨', '18000000000', '3', '2018-10-18 13:57:12', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '颜色：金色;内存：16G', '1', '649.00', '591.05', '质量问题', '颜色太土', '', '理由不够充分', 'admin', null, null, null);
INSERT INTO `oms_order_return_apply` VALUES ('9', '14', '2', '26', '201809130101000001', '2018-10-17 14:34:57', 'test', '3500.00', '大梨', '18000000000', '2', '2018-10-24 15:44:56', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '颜色：金色;内存：16G', '1', '3788.00', '3585.98', '质量问题', '老是卡', '', '呵呵', 'admin', 'admin', '2018-10-24 15:46:35', '收货了');
INSERT INTO `oms_order_return_apply` VALUES ('10', '14', null, '27', '201809130101000001', '2018-10-17 14:40:21', 'test', null, '大梨', '18000000000', '3', '2018-10-24 15:46:57', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '颜色：黑色;内存：32G', '1', '2699.00', '2022.81', '质量问题', '不够高端', '', '就是不退', 'admin', null, null, null);
INSERT INTO `oms_order_return_apply` VALUES ('11', '14', '2', '28', '201809130101000001', '2018-10-17 14:44:18', 'test', '591.05', '大梨', '18000000000', '1', '2018-10-24 17:09:04', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '颜色：金色;内存：16G', '1', '649.00', '591.05', '质量问题', '颜色太土', '', '可以退款', 'admin', null, null, null);
INSERT INTO `oms_order_return_apply` VALUES ('12', '15', '3', '26', '201809130102000002', '2018-10-17 14:34:57', 'test', '3500.00', '大梨', '18000000000', '2', '2018-10-24 17:22:54', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '颜色：金色;内存：16G', '1', '3788.00', '3585.98', '质量问题', '老是卡', '', '退货了', 'admin', 'admin', '2018-10-24 17:23:06', '收货了');
INSERT INTO `oms_order_return_apply` VALUES ('13', '15', null, '27', '201809130102000002', '2018-10-17 14:40:21', 'test', null, '大梨', '18000000000', '3', '2018-10-24 17:23:30', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '颜色：黑色;内存：32G', '1', '2699.00', '2022.81', '质量问题', '不够高端', '', '无法退货', 'admin', null, null, null);
INSERT INTO `oms_order_return_apply` VALUES ('15', '16', null, '26', '201809140101000001', '2018-10-17 14:34:57', 'test', null, '大梨', '18000000000', '0', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '颜色：金色;内存：16G', '1', '3788.00', '3585.98', '质量问题', '老是卡', '', null, null, null, null, null);
INSERT INTO `oms_order_return_apply` VALUES ('16', '16', null, '27', '201809140101000001', '2018-10-17 14:40:21', 'test', null, '大梨', '18000000000', '0', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '颜色：黑色;内存：32G', '1', '2699.00', '2022.81', '质量问题', '不够高端', '', null, null, null, null, null);
INSERT INTO `oms_order_return_apply` VALUES ('17', '16', null, '28', '201809140101000001', '2018-10-17 14:44:18', 'test', null, '大梨', '18000000000', '0', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '颜色：金色;内存：16G', '1', '649.00', '591.05', '质量问题', '颜色太土', '', null, null, null, null, null);
INSERT INTO `oms_order_return_apply` VALUES ('18', '17', null, '26', '201809150101000003', '2018-10-17 14:34:57', 'test', null, '大梨', '18000000000', '0', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '颜色：金色;内存：16G', '1', '3788.00', '3585.98', '质量问题', '老是卡', '', null, null, null, null, null);
INSERT INTO `oms_order_return_apply` VALUES ('19', '17', null, '27', '201809150101000003', '2018-10-17 14:40:21', 'test', null, '大梨', '18000000000', '0', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '颜色：黑色;内存：32G', '1', '2699.00', '2022.81', '质量问题', '不够高端', '', null, null, null, null, null);
INSERT INTO `oms_order_return_apply` VALUES ('20', '17', null, '28', '201809150101000003', '2018-10-17 14:44:18', 'test', null, '大梨', '18000000000', '0', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '颜色：金色;内存：16G', '1', '649.00', '591.05', '质量问题', '颜色太土', '', null, null, null, null, null);
INSERT INTO `oms_order_return_apply` VALUES ('21', '18', null, '26', '201809150102000004', '2018-10-17 14:34:57', 'test', null, '大梨', '18000000000', '0', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '颜色：金色;内存：16G', '1', '3788.00', '3585.98', '质量问题', '老是卡', '', null, null, null, null, null);
INSERT INTO `oms_order_return_apply` VALUES ('22', '18', null, '27', '201809150102000004', '2018-10-17 14:40:21', 'test', null, '大梨', '18000000000', '0', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '颜色：黑色;内存：32G', '1', '2699.00', '2022.81', '质量问题', '不够高端', '', null, null, null, null, null);
INSERT INTO `oms_order_return_apply` VALUES ('23', '18', null, '28', '201809150102000004', '2018-10-17 14:44:18', 'test', null, '大梨', '18000000000', '0', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '颜色：金色;内存：16G', '1', '649.00', '591.05', '质量问题', '颜色太土', '', null, null, null, null, null);
INSERT INTO `oms_order_return_apply` VALUES ('24', '19', null, '26', '201809130101000003', '2018-10-17 14:34:57', 'test', null, '大梨', '18000000000', '0', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '颜色：金色;内存：16G', '1', '3788.00', '3585.98', '质量问题', '老是卡', '', null, null, null, null, null);
INSERT INTO `oms_order_return_apply` VALUES ('25', '19', null, '27', '201809130101000003', '2018-10-17 14:40:21', 'test', null, '大梨', '18000000000', '0', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '颜色：黑色;内存：32G', '1', '2699.00', '2022.81', '质量问题', '不够高端', '', null, null, null, null, null);
INSERT INTO `oms_order_return_apply` VALUES ('26', '19', null, '28', '201809130101000003', '2018-10-17 14:44:18', 'test', null, '大梨', '18000000000', '0', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '颜色：金色;内存：16G', '1', '649.00', '591.05', '质量问题', '颜色太土', '', null, null, null, null, null);

-- ----------------------------
-- Table structure for oms_order_return_reason
-- ----------------------------
DROP TABLE IF EXISTS `oms_order_return_reason`;
CREATE TABLE `oms_order_return_reason` (
                                           `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                           `name` varchar(100) DEFAULT NULL COMMENT '退货类型',
                                           `sort` int(11) DEFAULT NULL,
                                           `status` int(1) DEFAULT NULL COMMENT '状态：0->不启用；1->启用',
                                           `create_time` datetime DEFAULT NULL COMMENT '添加时间',
                                           PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='退货原因表';

-- ----------------------------
-- Records of oms_order_return_reason
-- ----------------------------
INSERT INTO `oms_order_return_reason` VALUES ('1', '质量问题', '1', '1', '2018-10-17 10:00:45');
INSERT INTO `oms_order_return_reason` VALUES ('2', '尺码太大', '1', '1', '2018-10-17 10:01:03');
INSERT INTO `oms_order_return_reason` VALUES ('3', '颜色不喜欢', '1', '1', '2018-10-17 10:01:13');
INSERT INTO `oms_order_return_reason` VALUES ('4', '7天无理由退货', '1', '1', '2018-10-17 10:01:47');
INSERT INTO `oms_order_return_reason` VALUES ('5', '价格问题', '1', '0', '2018-10-17 10:01:57');
INSERT INTO `oms_order_return_reason` VALUES ('12', '发票问题', '0', '1', '2018-10-19 16:28:36');
INSERT INTO `oms_order_return_reason` VALUES ('13', '其他问题', '0', '1', '2018-10-19 16:28:51');
INSERT INTO `oms_order_return_reason` VALUES ('14', '物流问题', '0', '1', '2018-10-19 16:29:01');
INSERT INTO `oms_order_return_reason` VALUES ('15', '售后问题', '0', '1', '2018-10-19 16:29:11');

-- ----------------------------
-- Table structure for oms_order_setting
-- ----------------------------
DROP TABLE IF EXISTS `oms_order_setting`;
CREATE TABLE `oms_order_setting` (
                                     `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                     `flash_order_overtime` int(11) DEFAULT NULL COMMENT '秒杀订单超时关闭时间(分)',
                                     `normal_order_overtime` int(11) DEFAULT NULL COMMENT '正常订单超时时间(分)',
                                     `confirm_overtime` int(11) DEFAULT NULL COMMENT '发货后自动确认收货时间（天）',
                                     `finish_overtime` int(11) DEFAULT NULL COMMENT '自动完成交易时间，不能申请售后（天）',
                                     `comment_overtime` int(11) DEFAULT NULL COMMENT '订单完成后自动好评时间（天）',
                                     PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='订单设置表';

-- ----------------------------
-- Records of oms_order_setting
-- ----------------------------
INSERT INTO `oms_order_setting` VALUES ('1', '60', '120', '15', '7', '7');

-- ----------------------------
-- Table structure for pms_album
-- ----------------------------
DROP TABLE IF EXISTS `pms_album`;
CREATE TABLE `pms_album` (
                             `id` bigint(20) NOT NULL AUTO_INCREMENT,
                             `name` varchar(64) DEFAULT NULL,
                             `cover_pic` varchar(1000) DEFAULT NULL,
                             `pic_count` int(11) DEFAULT NULL,
                             `sort` int(11) DEFAULT NULL,
                             `description` varchar(1000) DEFAULT NULL,
                             PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='相册表';

-- ----------------------------
-- Records of pms_album
-- ----------------------------

-- ----------------------------
-- Table structure for pms_album_pic
-- ----------------------------
DROP TABLE IF EXISTS `pms_album_pic`;
CREATE TABLE `pms_album_pic` (
                                 `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                 `album_id` bigint(20) DEFAULT NULL,
                                 `pic` varchar(1000) DEFAULT NULL,
                                 PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='画册图片表';

-- ----------------------------
-- Records of pms_album_pic
-- ----------------------------

-- ----------------------------
-- Table structure for pms_brand
-- ----------------------------
DROP TABLE IF EXISTS `pms_brand`;
CREATE TABLE `pms_brand` (
                             `id` bigint(20) NOT NULL AUTO_INCREMENT,
                             `name` varchar(64) DEFAULT NULL,
                             `first_letter` varchar(8) DEFAULT NULL COMMENT '首字母',
                             `sort` int(11) DEFAULT NULL,
                             `factory_status` int(1) DEFAULT NULL COMMENT '是否为品牌制造商：0->不是；1->是',
                             `show_status` int(1) DEFAULT NULL,
                             `product_count` int(11) DEFAULT NULL COMMENT '产品数量',
                             `product_comment_count` int(11) DEFAULT NULL COMMENT '产品评论数量',
                             `logo` varchar(255) DEFAULT NULL COMMENT '品牌logo',
                             `big_pic` varchar(255) DEFAULT NULL COMMENT '专区大图',
                             `brand_story` text COMMENT '品牌故事',
                             PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='品牌表';

-- ----------------------------
-- Records of pms_brand
-- ----------------------------
INSERT INTO `pms_brand` VALUES ('1', '万和', 'W', '0', '1', '1', '100', '100', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg(5).jpg', '', 'Victoria\'s Secret的故事');
INSERT INTO `pms_brand` VALUES ('2', '三星', 'S', '100', '1', '1', '100', '100', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg (1).jpg', null, '三星的故事');
INSERT INTO `pms_brand` VALUES ('3', '华为', 'H', '100', '1', '0', '100', '100', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg (2).jpg', null, 'Victoria\'s Secret的故事');
INSERT INTO `pms_brand` VALUES ('4', '格力', 'G', '30', '1', '0', '100', '100', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg (3).jpg', null, 'Victoria\'s Secret的故事');
INSERT INTO `pms_brand` VALUES ('5', '方太', 'F', '20', '1', '0', '100', '100', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg (4).jpg', null, 'Victoria\'s Secret的故事');
INSERT INTO `pms_brand` VALUES ('6', '小米', 'M', '500', '1', '1', '100', '100', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180518/5a912944N474afb7a.png', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180518/5afd7778Nf7800b75.jpg', '小米手机的故事');
INSERT INTO `pms_brand` VALUES ('21', 'OPPO', 'O', '0', '1', '1', '88', '500', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg(6).jpg', '', 'string');
INSERT INTO `pms_brand` VALUES ('49', '七匹狼', 'S', '200', '1', '1', '77', '400', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180518/1522738681.jpg', null, 'BOOB的故事');
INSERT INTO `pms_brand` VALUES ('50', '海澜之家', 'H', '200', '1', '1', '66', '300', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/LOGO1024.png', '', '海澜之家的故事');
INSERT INTO `pms_brand` VALUES ('51', '苹果', 'A', '200', '1', '1', '55', '200', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg.jpg', null, '苹果的故事');
INSERT INTO `pms_brand` VALUES ('58', 'NIKE', 'N', '0', '1', '1', '33', '100', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/timg (51).jpg', '', 'NIKE的故事');

-- ----------------------------
-- Table structure for pms_comment
-- ----------------------------
DROP TABLE IF EXISTS `pms_comment`;
CREATE TABLE `pms_comment` (
                               `id` bigint(20) NOT NULL AUTO_INCREMENT,
                               `product_id` bigint(20) DEFAULT NULL,
                               `member_nick_name` varchar(255) DEFAULT NULL,
                               `product_name` varchar(255) DEFAULT NULL,
                               `star` int(3) DEFAULT NULL COMMENT '评价星数：0->5',
                               `member_ip` varchar(64) DEFAULT NULL COMMENT '评价的ip',
                               `create_time` datetime DEFAULT NULL,
                               `show_status` int(1) DEFAULT NULL,
                               `product_attribute` varchar(255) DEFAULT NULL COMMENT '购买时的商品属性',
                               `collect_couont` int(11) DEFAULT NULL,
                               `read_count` int(11) DEFAULT NULL,
                               `content` text,
                               `pics` varchar(1000) DEFAULT NULL COMMENT '上传图片地址，以逗号隔开',
                               `member_icon` varchar(255) DEFAULT NULL COMMENT '评论用户头像',
                               `replay_count` int(11) DEFAULT NULL,
                               PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品评价表';

-- ----------------------------
-- Records of pms_comment
-- ----------------------------

-- ----------------------------
-- Table structure for pms_comment_replay
-- ----------------------------
DROP TABLE IF EXISTS `pms_comment_replay`;
CREATE TABLE `pms_comment_replay` (
                                      `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                      `comment_id` bigint(20) DEFAULT NULL,
                                      `member_nick_name` varchar(255) DEFAULT NULL,
                                      `member_icon` varchar(255) DEFAULT NULL,
                                      `content` varchar(1000) DEFAULT NULL,
                                      `create_time` datetime DEFAULT NULL,
                                      `type` int(1) DEFAULT NULL COMMENT '评论人员类型；0->会员；1->管理员',
                                      PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='产品评价回复表';

-- ----------------------------
-- Records of pms_comment_replay
-- ----------------------------

-- ----------------------------
-- Table structure for pms_feight_template
-- ----------------------------
DROP TABLE IF EXISTS `pms_feight_template`;
CREATE TABLE `pms_feight_template` (
                                       `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                       `name` varchar(64) DEFAULT NULL,
                                       `charge_type` int(1) DEFAULT NULL COMMENT '计费类型:0->按重量；1->按件数',
                                       `first_weight` decimal(10,2) DEFAULT NULL COMMENT '首重kg',
                                       `first_fee` decimal(10,2) DEFAULT NULL COMMENT '首费（元）',
                                       `continue_weight` decimal(10,2) DEFAULT NULL,
                                       `continme_fee` decimal(10,2) DEFAULT NULL,
                                       `dest` varchar(255) DEFAULT NULL COMMENT '目的地（省、市）',
                                       PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='运费模版';

-- ----------------------------
-- Records of pms_feight_template
-- ----------------------------

-- ----------------------------
-- Table structure for pms_member_price
-- ----------------------------
DROP TABLE IF EXISTS `pms_member_price`;
CREATE TABLE `pms_member_price` (
                                    `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                    `product_id` bigint(20) DEFAULT NULL,
                                    `member_level_id` bigint(20) DEFAULT NULL,
                                    `member_price` decimal(10,2) DEFAULT NULL COMMENT '会员价格',
                                    `member_level_name` varchar(100) DEFAULT NULL,
                                    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=252 DEFAULT CHARSET=utf8 COMMENT='商品会员价格表';

-- ----------------------------
-- Records of pms_member_price
-- ----------------------------
INSERT INTO `pms_member_price` VALUES ('26', '7', '1', '500.00', null);
INSERT INTO `pms_member_price` VALUES ('27', '8', '1', '500.00', null);
INSERT INTO `pms_member_price` VALUES ('28', '9', '1', '500.00', null);
INSERT INTO `pms_member_price` VALUES ('29', '10', '1', '500.00', null);
INSERT INTO `pms_member_price` VALUES ('30', '11', '1', '500.00', null);
INSERT INTO `pms_member_price` VALUES ('31', '12', '1', '500.00', null);
INSERT INTO `pms_member_price` VALUES ('32', '13', '1', '500.00', null);
INSERT INTO `pms_member_price` VALUES ('33', '14', '1', '500.00', null);
INSERT INTO `pms_member_price` VALUES ('37', '18', '1', '500.00', null);
INSERT INTO `pms_member_price` VALUES ('44', '7', '2', '480.00', null);
INSERT INTO `pms_member_price` VALUES ('45', '7', '3', '450.00', null);
INSERT INTO `pms_member_price` VALUES ('52', '22', '1', null, null);
INSERT INTO `pms_member_price` VALUES ('53', '22', '2', null, null);
INSERT INTO `pms_member_price` VALUES ('54', '22', '3', null, null);
INSERT INTO `pms_member_price` VALUES ('58', '24', '1', null, null);
INSERT INTO `pms_member_price` VALUES ('59', '24', '2', null, null);
INSERT INTO `pms_member_price` VALUES ('60', '24', '3', null, null);
INSERT INTO `pms_member_price` VALUES ('112', '23', '1', '88.00', '黄金会员');
INSERT INTO `pms_member_price` VALUES ('113', '23', '2', '88.00', '白金会员');
INSERT INTO `pms_member_price` VALUES ('114', '23', '3', '66.00', '钻石会员');
INSERT INTO `pms_member_price` VALUES ('142', '31', '1', null, '黄金会员');
INSERT INTO `pms_member_price` VALUES ('143', '31', '2', null, '白金会员');
INSERT INTO `pms_member_price` VALUES ('144', '31', '3', null, '钻石会员');
INSERT INTO `pms_member_price` VALUES ('148', '32', '1', null, '黄金会员');
INSERT INTO `pms_member_price` VALUES ('149', '32', '2', null, '白金会员');
INSERT INTO `pms_member_price` VALUES ('150', '32', '3', null, '钻石会员');
INSERT INTO `pms_member_price` VALUES ('154', '33', '1', null, '黄金会员');
INSERT INTO `pms_member_price` VALUES ('155', '33', '2', null, '白金会员');
INSERT INTO `pms_member_price` VALUES ('156', '33', '3', null, '钻石会员');
INSERT INTO `pms_member_price` VALUES ('175', '34', '1', null, '黄金会员');
INSERT INTO `pms_member_price` VALUES ('176', '34', '2', null, '白金会员');
INSERT INTO `pms_member_price` VALUES ('177', '34', '3', null, '钻石会员');
INSERT INTO `pms_member_price` VALUES ('178', '30', '1', null, '黄金会员');
INSERT INTO `pms_member_price` VALUES ('179', '30', '2', null, '白金会员');
INSERT INTO `pms_member_price` VALUES ('180', '30', '3', null, '钻石会员');
INSERT INTO `pms_member_price` VALUES ('192', '27', '1', null, '黄金会员');
INSERT INTO `pms_member_price` VALUES ('193', '27', '2', null, '白金会员');
INSERT INTO `pms_member_price` VALUES ('194', '27', '3', null, '钻石会员');
INSERT INTO `pms_member_price` VALUES ('195', '28', '1', null, '黄金会员');
INSERT INTO `pms_member_price` VALUES ('196', '28', '2', null, '白金会员');
INSERT INTO `pms_member_price` VALUES ('197', '28', '3', null, '钻石会员');
INSERT INTO `pms_member_price` VALUES ('198', '29', '1', null, '黄金会员');
INSERT INTO `pms_member_price` VALUES ('199', '29', '2', null, '白金会员');
INSERT INTO `pms_member_price` VALUES ('200', '29', '3', null, '钻石会员');
INSERT INTO `pms_member_price` VALUES ('201', '26', '1', null, '黄金会员');
INSERT INTO `pms_member_price` VALUES ('202', '26', '2', null, '白金会员');
INSERT INTO `pms_member_price` VALUES ('203', '26', '3', null, '钻石会员');
INSERT INTO `pms_member_price` VALUES ('246', '36', '1', null, '黄金会员');
INSERT INTO `pms_member_price` VALUES ('247', '36', '2', null, '白金会员');
INSERT INTO `pms_member_price` VALUES ('248', '36', '3', null, '钻石会员');
INSERT INTO `pms_member_price` VALUES ('249', '35', '1', null, '黄金会员');
INSERT INTO `pms_member_price` VALUES ('250', '35', '2', null, '白金会员');
INSERT INTO `pms_member_price` VALUES ('251', '35', '3', null, '钻石会员');

-- ----------------------------
-- Table structure for pms_product
-- ----------------------------
DROP TABLE IF EXISTS `pms_product`;
CREATE TABLE `pms_product` (
                               `id` bigint(20) NOT NULL AUTO_INCREMENT,
                               `brand_id` bigint(20) DEFAULT NULL,
                               `product_category_id` bigint(20) DEFAULT NULL,
                               `feight_template_id` bigint(20) DEFAULT NULL,
                               `product_attribute_category_id` bigint(20) DEFAULT NULL,
                               `name` varchar(64) NOT NULL,
                               `pic` varchar(255) DEFAULT NULL,
                               `product_sn` varchar(64) NOT NULL COMMENT '货号',
                               `delete_status` int(1) DEFAULT NULL COMMENT '删除状态：0->未删除；1->已删除',
                               `publish_status` int(1) DEFAULT NULL COMMENT '上架状态：0->下架；1->上架',
                               `new_status` int(1) DEFAULT NULL COMMENT '新品状态:0->不是新品；1->新品',
                               `recommand_status` int(1) DEFAULT NULL COMMENT '推荐状态；0->不推荐；1->推荐',
                               `verify_status` int(1) DEFAULT NULL COMMENT '审核状态：0->未审核；1->审核通过',
                               `sort` int(11) DEFAULT NULL COMMENT '排序',
                               `sale` int(11) DEFAULT NULL COMMENT '销量',
                               `price` decimal(10,2) DEFAULT NULL,
                               `promotion_price` decimal(10,2) DEFAULT NULL COMMENT '促销价格',
                               `gift_growth` int(11) DEFAULT '0' COMMENT '赠送的成长值',
                               `gift_point` int(11) DEFAULT '0' COMMENT '赠送的积分',
                               `use_point_limit` int(11) DEFAULT NULL COMMENT '限制使用的积分数',
                               `sub_title` varchar(255) DEFAULT NULL COMMENT '副标题',
                               `description` text COMMENT '商品描述',
                               `original_price` decimal(10,2) DEFAULT NULL COMMENT '市场价',
                               `stock` int(11) DEFAULT NULL COMMENT '库存',
                               `low_stock` int(11) DEFAULT NULL COMMENT '库存预警值',
                               `unit` varchar(16) DEFAULT NULL COMMENT '单位',
                               `weight` decimal(10,2) DEFAULT NULL COMMENT '商品重量，默认为克',
                               `preview_status` int(1) DEFAULT NULL COMMENT '是否为预告商品：0->不是；1->是',
                               `service_ids` varchar(64) DEFAULT NULL COMMENT '以逗号分割的产品服务：1->无忧退货；2->快速退款；3->免费包邮',
                               `keywords` varchar(255) DEFAULT NULL,
                               `note` varchar(255) DEFAULT NULL,
                               `album_pics` varchar(255) DEFAULT NULL COMMENT '画册图片，连产品图片限制为5张，以逗号分割',
                               `detail_title` varchar(255) DEFAULT NULL,
                               `detail_desc` text,
                               `detail_html` text COMMENT '产品详情网页内容',
                               `detail_mobile_html` text COMMENT '移动端网页详情',
                               `promotion_start_time` datetime DEFAULT NULL COMMENT '促销开始时间',
                               `promotion_end_time` datetime DEFAULT NULL COMMENT '促销结束时间',
                               `promotion_per_limit` int(11) DEFAULT NULL COMMENT '活动限购数量',
                               `promotion_type` int(1) DEFAULT NULL COMMENT '促销类型：0->没有促销使用原价;1->使用促销价；2->使用会员价；3->使用阶梯价格；4->使用满减价格；5->限时购',
                               `brand_name` varchar(255) DEFAULT NULL COMMENT '品牌名称',
                               `product_category_name` varchar(255) DEFAULT NULL COMMENT '商品分类名称',
                               PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='商品信息';

-- ----------------------------
-- Records of pms_product
-- ----------------------------
INSERT INTO `pms_product` VALUES ('1', '49', '7', '0', '0', '银色星芒刺绣网纱底裤', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86577', '1', '1', '1', '1', '1', '100', '0', '100.00', null, '0', '100', null, '111', '111', '120.00', '100', '20', '件', '1000.00', '0', null, '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', null, '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', null, null, null, '0', '七匹狼', '外套');
INSERT INTO `pms_product` VALUES ('2', '49', '7', '0', '0', '银色星芒刺绣网纱底裤2', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86578', '1', '1', '1', '1', '1', '1', '0', '100.00', null, '0', '100', null, '111', '111', '120.00', '100', '20', '件', '1000.00', '0', null, '银色星芒刺绣网纱底裤2', '银色星芒刺绣网纱底裤', null, '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '<p>银色星芒刺绣网纱底裤</p>', '<p>银色星芒刺绣网纱底裤</p>', null, null, null, '0', '七匹狼', '外套');
INSERT INTO `pms_product` VALUES ('3', '1', '7', '0', '0', '银色星芒刺绣网纱底裤3', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86579', '1', '1', '1', '1', '1', '1', '0', '100.00', null, '0', '100', null, '111', '111', '120.00', '100', '20', '件', '1000.00', '0', null, '银色星芒刺绣网纱底裤3', '银色星芒刺绣网纱底裤', null, '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', null, null, null, '0', '万和', '外套');
INSERT INTO `pms_product` VALUES ('4', '1', '7', '0', '0', '银色星芒刺绣网纱底裤4', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86580', '1', '1', '1', '1', '1', '1', '0', '100.00', null, '0', '100', null, '111', '111', '120.00', '100', '20', '件', '1000.00', '0', null, '银色星芒刺绣网纱底裤4', '银色星芒刺绣网纱底裤', null, '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', null, null, null, '0', '万和', '外套');
INSERT INTO `pms_product` VALUES ('5', '1', '7', '0', '0', '银色星芒刺绣网纱底裤5', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86581', '1', '0', '1', '1', '1', '1', '0', '100.00', null, '0', '100', null, '111', '111', '120.00', '100', '20', '件', '1000.00', '0', null, '银色星芒刺绣网纱底裤5', '银色星芒刺绣网纱底裤', null, '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', null, null, null, '0', '万和', '外套');
INSERT INTO `pms_product` VALUES ('6', '1', '7', '0', '0', '银色星芒刺绣网纱底裤6', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86582', '1', '1', '1', '1', '1', '1', '0', '100.00', null, '0', '100', null, '111', '111', '120.00', '100', '20', '件', '1000.00', '0', null, '银色星芒刺绣网纱底裤6', '银色星芒刺绣网纱底裤', null, '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', null, null, null, '0', '万和', '外套');
INSERT INTO `pms_product` VALUES ('7', '1', '7', '0', '1', '女式超柔软拉毛运动开衫', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86577', '1', '0', '0', '0', '0', '0', '0', '249.00', '0.00', '0', '100', '0', '匠心剪裁，垂感质地', '匠心剪裁，垂感质地', '299.00', '100', '0', '件', '0.00', '0', 'string', '女式超柔软拉毛运动开衫', 'string', 'string', 'string', 'string', 'string', 'string', '2018-04-26 10:41:03', '2018-04-26 10:41:03', '0', '0', '万和', '外套');
INSERT INTO `pms_product` VALUES ('8', '1', '7', '0', '1', '女式超柔软拉毛运动开衫1', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86577', '1', '0', '0', '0', '0', '0', '0', '249.00', '0.00', '0', '100', '0', '匠心剪裁，垂感质地', '匠心剪裁，垂感质地', '299.00', '100', '0', '件', '0.00', '0', 'string', '女式超柔软拉毛运动开衫', 'string', 'string', 'string', 'string', 'string', 'string', '2018-04-26 10:41:03', '2018-04-26 10:41:03', '0', '0', '万和', '外套');
INSERT INTO `pms_product` VALUES ('9', '1', '7', '0', '1', '女式超柔软拉毛运动开衫1', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86577', '1', '0', '0', '0', '0', '0', '0', '249.00', '0.00', '0', '100', '0', '匠心剪裁，垂感质地', '匠心剪裁，垂感质地', '299.00', '100', '0', '件', '0.00', '0', 'string', '女式超柔软拉毛运动开衫', 'string', 'string', 'string', 'string', 'string', 'string', '2018-04-26 10:41:03', '2018-04-26 10:41:03', '0', '0', '万和', '外套');
INSERT INTO `pms_product` VALUES ('10', '1', '7', '0', '1', '女式超柔软拉毛运动开衫1', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86577', '1', '0', '0', '0', '0', '0', '0', '249.00', '0.00', '0', '100', '0', '匠心剪裁，垂感质地', '匠心剪裁，垂感质地', '299.00', '100', '0', '件', '0.00', '0', 'string', '女式超柔软拉毛运动开衫', 'string', 'string', 'string', 'string', 'string', 'string', '2018-04-26 10:41:03', '2018-04-26 10:41:03', '0', '0', '万和', '外套');
INSERT INTO `pms_product` VALUES ('11', '1', '7', '0', '1', '女式超柔软拉毛运动开衫1', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86577', '1', '1', '0', '1', '0', '0', '0', '249.00', '0.00', '0', '100', '0', '匠心剪裁，垂感质地', '匠心剪裁，垂感质地', '299.00', '100', '0', '件', '0.00', '0', 'string', '女式超柔软拉毛运动开衫', 'string', 'string', 'string', 'string', 'string', 'string', '2018-04-26 10:41:03', '2018-04-26 10:41:03', '0', '0', '万和', '外套');
INSERT INTO `pms_product` VALUES ('12', '1', '7', '0', '1', '女式超柔软拉毛运动开衫2', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86577', '1', '1', '0', '1', '0', '0', '0', '249.00', '0.00', '0', '100', '0', '匠心剪裁，垂感质地', '匠心剪裁，垂感质地', '299.00', '100', '0', '件', '0.00', '0', 'string', '女式超柔软拉毛运动开衫', 'string', 'string', 'string', 'string', 'string', 'string', '2018-04-26 10:41:03', '2018-04-26 10:41:03', '0', '0', '万和', '外套');
INSERT INTO `pms_product` VALUES ('13', '1', '7', '0', '1', '女式超柔软拉毛运动开衫3', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86577', '1', '1', '0', '1', '0', '0', '0', '249.00', '0.00', '0', '100', '0', '匠心剪裁，垂感质地', '匠心剪裁，垂感质地', '299.00', '100', '0', '件', '0.00', '0', 'string', '女式超柔软拉毛运动开衫', 'string', 'string', 'string', 'string', 'string', 'string', '2018-04-26 10:41:03', '2018-04-26 10:41:03', '0', '0', '万和', '外套');
INSERT INTO `pms_product` VALUES ('14', '1', '7', '0', '1', '女式超柔软拉毛运动开衫3', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86577', '1', '0', '0', '1', '0', '0', '0', '249.00', '0.00', '0', '100', '0', '匠心剪裁，垂感质地', '匠心剪裁，垂感质地', '299.00', '100', '0', '件', '0.00', '0', 'string', '女式超柔软拉毛运动开衫', 'string', 'string', 'string', 'string', 'string', 'string', '2018-04-26 10:41:03', '2018-04-26 10:41:03', '0', '0', '万和', '外套');
INSERT INTO `pms_product` VALUES ('18', '1', '7', '0', '1', '女式超柔软拉毛运动开衫3', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86577', '1', '0', '0', '1', '0', '0', '0', '249.00', '0.00', '0', '100', '0', '匠心剪裁，垂感质地', '匠心剪裁，垂感质地', '299.00', '100', '0', '件', '0.00', '0', 'string', '女式超柔软拉毛运动开衫', 'string', 'string', 'string', 'string', 'string', 'string', '2018-04-26 10:41:03', '2018-04-26 10:41:03', '0', '0', '万和', '外套');
INSERT INTO `pms_product` VALUES ('22', '6', '7', '0', '1', 'test', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/1522738681.jpg', '', '1', '1', '0', '0', '0', '0', '0', '0.00', null, '0', '0', '0', 'test', '', '0.00', '100', '0', '', '0.00', '1', '1,2', '', '', '', '', '', '', '', null, null, '0', '0', '小米', '外套');
INSERT INTO `pms_product` VALUES ('23', '6', '19', '0', '1', '毛衫测试', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/1522738681.jpg', 'NO.1098', '1', '1', '1', '1', '0', '0', '0', '99.00', null, '99', '99', '1000', '毛衫测试11', 'xxx', '109.00', '100', '0', '件', '1000.00', '1', '1,2,3', '毛衫测试', '毛衫测试', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/1522738681.jpg,http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/1522738681.jpg', '毛衫测试', '毛衫测试', '<p><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/155x54.bmp\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/APP登录bg1080.jpg\" width=\"500\" height=\"500\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/APP登录界面.jpg\" width=\"500\" height=\"500\" /></p>', '', null, null, '0', '2', '小米', '手机数码');
INSERT INTO `pms_product` VALUES ('24', '6', '7', '0', null, 'xxx', '', '', '1', '0', '0', '0', '0', '0', '0', '0.00', null, '0', '0', '0', 'xxx', '', '0.00', '100', '0', '', '0.00', '0', '', '', '', '', '', '', '', '', null, null, '0', '0', '小米', '外套');
INSERT INTO `pms_product` VALUES ('26', '3', '19', '0', '3', '华为 HUAWEI P20 ', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '6946605', '0', '1', '1', '1', '0', '100', '0', '3788.00', null, '3788', '3788', '0', 'AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待手机 双卡双待', '', '4288.00', '1000', '0', '件', '0.00', '1', '2,3,1', '', '', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ab46a3cN616bdc41.jpg,http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf5fN2522b9dc.jpg', '', '', '<p><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ad44f1cNf51f3bb0.jpg\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ad44fa8Nfcf71c10.jpg\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ad44fa9N40e78ee0.jpg\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ad457f4N1c94bdda.jpg\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ad457f5Nd30de41d.jpg\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5b10fb0eN0eb053fb.jpg\" /></p>', '', null, null, '0', '1', '华为', '手机通讯');
INSERT INTO `pms_product` VALUES ('27', '6', '19', '0', '3', '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '7437788', '0', '1', '1', '1', '0', '0', '0', '2699.00', null, '2699', '2699', '0', '骁龙845处理器，红外人脸解锁，AI变焦双摄，AI语音助手小米6X低至1299，点击抢购', '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', '2699.00', '100', '0', '', '0.00', '0', '', '', '', '', '', '', '<p><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b2254e8N414e6d3a.jpg\" width=\"500\" /></p>', '', null, null, '0', '3', '小米', '手机数码');
INSERT INTO `pms_product` VALUES ('28', '6', '19', '0', '3', '小米 红米5A 全网通版 3GB+32GB 香槟金 移动联通电信4G手机 双卡双待', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '7437789', '0', '1', '1', '1', '0', '0', '0', '649.00', null, '649', '649', '0', '8天超长待机，137g轻巧机身，高通骁龙处理器小米6X低至1299，点击抢购', '', '649.00', '100', '0', '', '0.00', '0', '', '', '', '', '', '', '', '', null, null, '0', '4', '小米', '手机数码');
INSERT INTO `pms_product` VALUES ('29', '51', '19', '0', '3', 'Apple iPhone 8 Plus 64GB 红色特别版 移动联通电信4G手机', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5acc5248N6a5f81cd.jpg', '7437799', '0', '1', '1', '1', '0', '0', '0', '5499.00', null, '5499', '5499', '0', '【限时限量抢购】Apple产品年中狂欢节，好物尽享，美在智慧！速来 >> 勾选[保障服务][原厂保2年]，获得AppleCare+全方位服务计划，原厂延保售后无忧。', '', '5499.00', '100', '0', '', '0.00', '0', '', '', '', '', '', '', '', '', null, null, '0', '0', '苹果', '手机数码');
INSERT INTO `pms_product` VALUES ('30', '50', '8', '0', '1', 'HLA海澜之家简约动物印花短袖T恤', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5ad83a4fN6ff67ecd.jpg!cc_350x449.jpg', 'HNTBJ2E042A', '0', '1', '1', '1', '0', '0', '0', '98.00', null, '0', '0', '0', '2018夏季新品微弹舒适新款短T男生 6月6日-6月20日，满300减30，参与互动赢百元礼券，立即分享赢大奖', '', '98.00', '100', '0', '', '0.00', '0', '', '', '', '', '', '', '', '', null, null, '0', '0', '海澜之家', 'T恤');
INSERT INTO `pms_product` VALUES ('31', '50', '8', '0', '1', 'HLA海澜之家蓝灰花纹圆领针织布短袖T恤', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5ac98b64N70acd82f.jpg!cc_350x449.jpg', 'HNTBJ2E080A', '0', '1', '0', '0', '0', '0', '0', '98.00', null, '0', '0', '0', '2018夏季新品短袖T恤男HNTBJ2E080A 蓝灰花纹80 175/92A/L80A 蓝灰花纹80 175/92A/L', '', '98.00', '100', '0', '', '0.00', '0', '', '', '', '', '', '', '', '', null, null, '0', '0', '海澜之家', 'T恤');
INSERT INTO `pms_product` VALUES ('32', '50', '8', '0', null, 'HLA海澜之家短袖T恤男基础款', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a51eb88Na4797877.jpg', 'HNTBJ2E153A', '0', '1', '0', '0', '0', '0', '0', '68.00', null, '0', '0', '0', 'HLA海澜之家短袖T恤男基础款简约圆领HNTBJ2E153A藏青(F3)175/92A(50)', '', '68.00', '100', '0', '', '0.00', '0', '', '', '', '', '', '', '', '', null, null, '0', '0', '海澜之家', 'T恤');
INSERT INTO `pms_product` VALUES ('33', '6', '35', '0', null, '小米（MI）小米电视4A ', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b02804dN66004d73.jpg', '4609652', '0', '1', '0', '0', '0', '0', '0', '2499.00', null, '0', '0', '0', '小米（MI）小米电视4A 55英寸 L55M5-AZ/L55M5-AD 2GB+8GB HDR 4K超高清 人工智能网络液晶平板电视', '', '2499.00', '100', '0', '', '0.00', '0', '', '', '', '', '', '', '', '', null, null, '0', '0', '小米', '手机数码');
INSERT INTO `pms_product` VALUES ('34', '6', '35', '0', null, '小米（MI）小米电视4A 65英寸', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b028530N51eee7d4.jpg', '4609660', '0', '1', '0', '0', '0', '0', '0', '3999.00', null, '0', '0', '0', ' L65M5-AZ/L65M5-AD 2GB+8GB HDR 4K超高清 人工智能网络液晶平板电视', '', '3999.00', '100', '0', '', '0.00', '0', '', '', '', '', '', '', '', '', null, null, '0', '0', '小米', '手机数码');
INSERT INTO `pms_product` VALUES ('35', '58', '29', '0', '11', '耐克NIKE 男子 休闲鞋 ROSHE RUN 运动鞋 511881-010黑色41码', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b235bb9Nf606460b.jpg', '6799342', '0', '1', '0', '0', '0', '0', '0', '369.00', null, '0', '0', '0', '耐克NIKE 男子 休闲鞋 ROSHE RUN 运动鞋 511881-010黑色41码', '', '369.00', '100', '0', '', '0.00', '0', '', '', '', '', '', '', '', '', null, null, '0', '0', 'NIKE', '男鞋');
INSERT INTO `pms_product` VALUES ('36', '58', '29', '0', '11', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg', '6799345', '0', '1', '1', '1', '0', '0', '0', '499.00', null, '0', '0', '0', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', '', '499.00', '100', '0', '', '0.00', '0', '', '', '', '', '', '', '', '', null, null, '0', '0', 'NIKE', '男鞋');

-- ----------------------------
-- Table structure for pms_product_attribute
-- ----------------------------
DROP TABLE IF EXISTS `pms_product_attribute`;
CREATE TABLE `pms_product_attribute` (
                                         `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                         `product_attribute_category_id` bigint(20) DEFAULT NULL,
                                         `name` varchar(64) DEFAULT NULL,
                                         `select_type` int(1) DEFAULT NULL COMMENT '属性选择类型：0->唯一；1->单选；2->多选',
                                         `input_type` int(1) DEFAULT NULL COMMENT '属性录入方式：0->手工录入；1->从列表中选取',
                                         `input_list` varchar(255) DEFAULT NULL COMMENT '可选值列表，以逗号隔开',
                                         `sort` int(11) DEFAULT NULL COMMENT '排序字段：最高的可以单独上传图片',
                                         `filter_type` int(1) DEFAULT NULL COMMENT '分类筛选样式：1->普通；1->颜色',
                                         `search_type` int(1) DEFAULT NULL COMMENT '检索类型；0->不需要进行检索；1->关键字检索；2->范围检索',
                                         `related_status` int(1) DEFAULT NULL COMMENT '相同属性产品是否关联；0->不关联；1->关联',
                                         `hand_add_status` int(1) DEFAULT NULL COMMENT '是否支持手动新增；0->不支持；1->支持',
                                         `type` int(1) DEFAULT NULL COMMENT '属性的类型；0->规格；1->参数',
                                         PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COMMENT='商品属性参数表';

-- ----------------------------
-- Records of pms_product_attribute
-- ----------------------------
INSERT INTO `pms_product_attribute` VALUES ('1', '1', '尺寸', '2', '1', 'M,X,XL,2XL,3XL,4XL', '0', '0', '0', '0', '0', '0');
INSERT INTO `pms_product_attribute` VALUES ('7', '1', '颜色', '2', '1', '黑色,红色,白色,粉色', '100', '0', '0', '0', '1', '0');
INSERT INTO `pms_product_attribute` VALUES ('13', '0', '上市年份', '1', '1', '2013年,2014年,2015年,2016年,2017年', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('14', '0', '上市年份1', '1', '1', '2013年,2014年,2015年,2016年,2017年', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('15', '0', '上市年份2', '1', '1', '2013年,2014年,2015年,2016年,2017年', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('16', '0', '上市年份3', '1', '1', '2013年,2014年,2015年,2016年,2017年', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('17', '0', '上市年份4', '1', '1', '2013年,2014年,2015年,2016年,2017年', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('18', '0', '上市年份5', '1', '1', '2013年,2014年,2015年,2016年,2017年', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('19', '0', '适用对象', '1', '1', '青年女性,中年女性', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('20', '0', '适用对象1', '2', '1', '青年女性,中年女性', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('21', '0', '适用对象3', '2', '1', '青年女性,中年女性', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('24', '1', '商品编号', '1', '0', '', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('25', '1', '适用季节', '1', '1', '春季,夏季,秋季,冬季', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('32', '2', '适用人群', '0', '1', '老年,青年,中年', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('33', '2', '风格', '0', '1', '嘻哈风格,基础大众,商务正装', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('35', '2', '颜色', '0', '0', '', '100', '0', '0', '0', '1', '0');
INSERT INTO `pms_product_attribute` VALUES ('37', '1', '适用人群', '1', '1', '儿童,青年,中年,老年', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('38', '1', '上市时间', '1', '1', '2017年秋,2017年冬,2018年春,2018年夏', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('39', '1', '袖长', '1', '1', '短袖,长袖,中袖', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('40', '2', '尺码', '0', '1', '29,30,31,32,33,34', '0', '0', '0', '0', '0', '0');
INSERT INTO `pms_product_attribute` VALUES ('41', '2', '适用场景', '0', '1', '居家,运动,正装', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('42', '2', '上市时间', '0', '1', '2018年春,2018年夏', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('43', '3', '颜色', '0', '0', '', '100', '0', '0', '0', '1', '0');
INSERT INTO `pms_product_attribute` VALUES ('44', '3', '容量', '0', '1', '16G,32G,64G,128G', '0', '0', '0', '0', '0', '0');
INSERT INTO `pms_product_attribute` VALUES ('45', '3', '屏幕尺寸', '0', '0', '', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('46', '3', '网络', '0', '1', '3G,4G', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('47', '3', '系统', '0', '1', 'Android,IOS', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('48', '3', '电池容量', '0', '0', '', '0', '0', '0', '0', '0', '1');
INSERT INTO `pms_product_attribute` VALUES ('49', '11', '颜色', '0', '1', '红色,蓝色,绿色', '0', '1', '0', '0', '0', '0');
INSERT INTO `pms_product_attribute` VALUES ('50', '11', '尺寸', '0', '1', '38,39,40', '0', '0', '0', '0', '0', '0');
INSERT INTO `pms_product_attribute` VALUES ('51', '11', '风格', '0', '1', '夏季,秋季', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for pms_product_attribute_category
-- ----------------------------
DROP TABLE IF EXISTS `pms_product_attribute_category`;
CREATE TABLE `pms_product_attribute_category` (
                                                  `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                                  `name` varchar(64) DEFAULT NULL,
                                                  `attribute_count` int(11) DEFAULT '0' COMMENT '属性数量',
                                                  `param_count` int(11) DEFAULT '0' COMMENT '参数数量',
                                                  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='产品属性分类表';

-- ----------------------------
-- Records of pms_product_attribute_category
-- ----------------------------
INSERT INTO `pms_product_attribute_category` VALUES ('1', '服装-T恤', '2', '5');
INSERT INTO `pms_product_attribute_category` VALUES ('2', '服装-裤装', '2', '4');
INSERT INTO `pms_product_attribute_category` VALUES ('3', '手机数码-手机通讯', '2', '4');
INSERT INTO `pms_product_attribute_category` VALUES ('4', '配件', '0', '0');
INSERT INTO `pms_product_attribute_category` VALUES ('5', '居家', '0', '0');
INSERT INTO `pms_product_attribute_category` VALUES ('6', '洗护', '0', '0');
INSERT INTO `pms_product_attribute_category` VALUES ('10', '测试分类', '0', '0');
INSERT INTO `pms_product_attribute_category` VALUES ('11', '服装-鞋帽', '3', '0');

-- ----------------------------
-- Table structure for pms_product_attribute_value
-- ----------------------------
DROP TABLE IF EXISTS `pms_product_attribute_value`;
CREATE TABLE `pms_product_attribute_value` (
                                               `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                               `product_id` bigint(20) DEFAULT NULL,
                                               `product_attribute_id` bigint(20) DEFAULT NULL,
                                               `value` varchar(64) DEFAULT NULL COMMENT '手动添加规格或参数的值，参数单值，规格有多个时以逗号隔开',
                                               PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=275 DEFAULT CHARSET=utf8 COMMENT='存储产品参数信息的表';

-- ----------------------------
-- Records of pms_product_attribute_value
-- ----------------------------
INSERT INTO `pms_product_attribute_value` VALUES ('1', '9', '1', 'X');
INSERT INTO `pms_product_attribute_value` VALUES ('2', '10', '1', 'X');
INSERT INTO `pms_product_attribute_value` VALUES ('3', '11', '1', 'X');
INSERT INTO `pms_product_attribute_value` VALUES ('4', '12', '1', 'X');
INSERT INTO `pms_product_attribute_value` VALUES ('5', '13', '1', 'X');
INSERT INTO `pms_product_attribute_value` VALUES ('6', '14', '1', 'X');
INSERT INTO `pms_product_attribute_value` VALUES ('7', '18', '1', 'X');
INSERT INTO `pms_product_attribute_value` VALUES ('8', '7', '1', 'X');
INSERT INTO `pms_product_attribute_value` VALUES ('9', '7', '1', 'XL');
INSERT INTO `pms_product_attribute_value` VALUES ('10', '7', '1', 'XXL');
INSERT INTO `pms_product_attribute_value` VALUES ('11', '22', '7', 'x,xx');
INSERT INTO `pms_product_attribute_value` VALUES ('12', '22', '24', 'no110');
INSERT INTO `pms_product_attribute_value` VALUES ('13', '22', '25', '春季');
INSERT INTO `pms_product_attribute_value` VALUES ('14', '22', '37', '青年');
INSERT INTO `pms_product_attribute_value` VALUES ('15', '22', '38', '2018年春');
INSERT INTO `pms_product_attribute_value` VALUES ('16', '22', '39', '长袖');
INSERT INTO `pms_product_attribute_value` VALUES ('124', '23', '7', '米白色,浅黄色');
INSERT INTO `pms_product_attribute_value` VALUES ('125', '23', '24', 'no1098');
INSERT INTO `pms_product_attribute_value` VALUES ('126', '23', '25', '春季');
INSERT INTO `pms_product_attribute_value` VALUES ('127', '23', '37', '青年');
INSERT INTO `pms_product_attribute_value` VALUES ('128', '23', '38', '2018年春');
INSERT INTO `pms_product_attribute_value` VALUES ('129', '23', '39', '长袖');
INSERT INTO `pms_product_attribute_value` VALUES ('130', '1', '13', null);
INSERT INTO `pms_product_attribute_value` VALUES ('131', '1', '14', null);
INSERT INTO `pms_product_attribute_value` VALUES ('132', '1', '15', null);
INSERT INTO `pms_product_attribute_value` VALUES ('133', '1', '16', null);
INSERT INTO `pms_product_attribute_value` VALUES ('134', '1', '17', null);
INSERT INTO `pms_product_attribute_value` VALUES ('135', '1', '18', null);
INSERT INTO `pms_product_attribute_value` VALUES ('136', '1', '19', null);
INSERT INTO `pms_product_attribute_value` VALUES ('137', '1', '20', null);
INSERT INTO `pms_product_attribute_value` VALUES ('138', '1', '21', null);
INSERT INTO `pms_product_attribute_value` VALUES ('139', '2', '13', null);
INSERT INTO `pms_product_attribute_value` VALUES ('140', '2', '14', null);
INSERT INTO `pms_product_attribute_value` VALUES ('141', '2', '15', null);
INSERT INTO `pms_product_attribute_value` VALUES ('142', '2', '16', null);
INSERT INTO `pms_product_attribute_value` VALUES ('143', '2', '17', null);
INSERT INTO `pms_product_attribute_value` VALUES ('144', '2', '18', null);
INSERT INTO `pms_product_attribute_value` VALUES ('145', '2', '19', null);
INSERT INTO `pms_product_attribute_value` VALUES ('146', '2', '20', null);
INSERT INTO `pms_product_attribute_value` VALUES ('147', '2', '21', null);
INSERT INTO `pms_product_attribute_value` VALUES ('183', '31', '24', null);
INSERT INTO `pms_product_attribute_value` VALUES ('184', '31', '25', '夏季');
INSERT INTO `pms_product_attribute_value` VALUES ('185', '31', '37', '青年');
INSERT INTO `pms_product_attribute_value` VALUES ('186', '31', '38', '2018年夏');
INSERT INTO `pms_product_attribute_value` VALUES ('187', '31', '39', '短袖');
INSERT INTO `pms_product_attribute_value` VALUES ('198', '30', '24', null);
INSERT INTO `pms_product_attribute_value` VALUES ('199', '30', '25', '夏季');
INSERT INTO `pms_product_attribute_value` VALUES ('200', '30', '37', '青年');
INSERT INTO `pms_product_attribute_value` VALUES ('201', '30', '38', '2018年夏');
INSERT INTO `pms_product_attribute_value` VALUES ('202', '30', '39', '短袖');
INSERT INTO `pms_product_attribute_value` VALUES ('213', '27', '43', '黑色,蓝色');
INSERT INTO `pms_product_attribute_value` VALUES ('214', '27', '45', '5.8');
INSERT INTO `pms_product_attribute_value` VALUES ('215', '27', '46', '4G');
INSERT INTO `pms_product_attribute_value` VALUES ('216', '27', '47', 'Android');
INSERT INTO `pms_product_attribute_value` VALUES ('217', '27', '48', '3000ml');
INSERT INTO `pms_product_attribute_value` VALUES ('218', '28', '43', '金色,银色');
INSERT INTO `pms_product_attribute_value` VALUES ('219', '28', '45', '5.0');
INSERT INTO `pms_product_attribute_value` VALUES ('220', '28', '46', '4G');
INSERT INTO `pms_product_attribute_value` VALUES ('221', '28', '47', 'Android');
INSERT INTO `pms_product_attribute_value` VALUES ('222', '28', '48', '2800ml');
INSERT INTO `pms_product_attribute_value` VALUES ('223', '29', '43', '金色,银色');
INSERT INTO `pms_product_attribute_value` VALUES ('224', '29', '45', '4.7');
INSERT INTO `pms_product_attribute_value` VALUES ('225', '29', '46', '4G');
INSERT INTO `pms_product_attribute_value` VALUES ('226', '29', '47', 'IOS');
INSERT INTO `pms_product_attribute_value` VALUES ('227', '29', '48', '1960ml');
INSERT INTO `pms_product_attribute_value` VALUES ('228', '26', '43', '金色,银色');
INSERT INTO `pms_product_attribute_value` VALUES ('229', '26', '45', '5.0');
INSERT INTO `pms_product_attribute_value` VALUES ('230', '26', '46', '4G');
INSERT INTO `pms_product_attribute_value` VALUES ('231', '26', '47', 'Android');
INSERT INTO `pms_product_attribute_value` VALUES ('232', '26', '48', '3000');

-- ----------------------------
-- Table structure for pms_product_category
-- ----------------------------
DROP TABLE IF EXISTS `pms_product_category`;
CREATE TABLE `pms_product_category` (
                                        `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                        `parent_id` bigint(20) DEFAULT NULL COMMENT '上机分类的编号：0表示一级分类',
                                        `name` varchar(64) DEFAULT NULL,
                                        `level` int(1) DEFAULT NULL COMMENT '分类级别：0->1级；1->2级',
                                        `product_count` int(11) DEFAULT NULL,
                                        `product_unit` varchar(64) DEFAULT NULL,
                                        `nav_status` int(1) DEFAULT NULL COMMENT '是否显示在导航栏：0->不显示；1->显示',
                                        `show_status` int(1) DEFAULT NULL COMMENT '显示状态：0->不显示；1->显示',
                                        `sort` int(11) DEFAULT NULL,
                                        `icon` varchar(255) DEFAULT NULL COMMENT '图标',
                                        `keywords` varchar(255) DEFAULT NULL,
                                        `description` text COMMENT '描述',
                                        PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COMMENT='产品分类';

-- ----------------------------
-- Records of pms_product_category
-- ----------------------------
INSERT INTO `pms_product_category` VALUES ('1', '0', '服装', '0', '100', '件', '1', '1', '1', null, '服装', '服装分类');
INSERT INTO `pms_product_category` VALUES ('2', '0', '手机数码', '0', '100', '件', '1', '1', '1', null, '手机数码', '手机数码');
INSERT INTO `pms_product_category` VALUES ('3', '0', '家用电器', '0', '100', '件', '1', '1', '1', null, '家用电器', '家用电器');
INSERT INTO `pms_product_category` VALUES ('4', '0', '家具家装', '0', '100', '件', '1', '1', '1', null, '家具家装', '家具家装');
INSERT INTO `pms_product_category` VALUES ('5', '0', '汽车用品', '0', '100', '件', '1', '1', '1', null, '汽车用品', '汽车用品');
INSERT INTO `pms_product_category` VALUES ('7', '1', '外套', '1', '100', '件', '1', '1', '0', '', '外套', '外套');
INSERT INTO `pms_product_category` VALUES ('8', '1', 'T恤', '1', '100', '件', '1', '1', '0', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'T恤', 'T恤');
INSERT INTO `pms_product_category` VALUES ('9', '1', '休闲裤', '1', '100', '件', '1', '1', '0', null, '休闲裤', '休闲裤');
INSERT INTO `pms_product_category` VALUES ('10', '1', '牛仔裤', '1', '100', '件', '1', '1', '0', null, '牛仔裤', '牛仔裤');
INSERT INTO `pms_product_category` VALUES ('11', '1', '衬衫', '1', '100', '件', '1', '1', '0', null, '衬衫', '衬衫分类');
INSERT INTO `pms_product_category` VALUES ('13', '12', '家电子分类1', '1', '1', 'string', '0', '1', '0', 'string', 'string', 'string');
INSERT INTO `pms_product_category` VALUES ('14', '12', '家电子分类2', '1', '1', 'string', '0', '1', '0', 'string', 'string', 'string');
INSERT INTO `pms_product_category` VALUES ('19', '2', '手机通讯', '1', '0', '件', '0', '0', '0', '', '手机通讯', '手机通讯');
INSERT INTO `pms_product_category` VALUES ('29', '1', '男鞋', '1', '0', '', '0', '0', '0', '', '', '');
INSERT INTO `pms_product_category` VALUES ('30', '2', '手机配件', '1', '0', '', '0', '0', '0', '', '手机配件', '手机配件');
INSERT INTO `pms_product_category` VALUES ('31', '2', '摄影摄像', '1', '0', '', '0', '0', '0', '', '', '');
INSERT INTO `pms_product_category` VALUES ('32', '2', '影音娱乐', '1', '0', '', '0', '0', '0', '', '', '');
INSERT INTO `pms_product_category` VALUES ('33', '2', '数码配件', '1', '0', '', '0', '0', '0', '', '', '');
INSERT INTO `pms_product_category` VALUES ('34', '2', '智能设备', '1', '0', '', '0', '0', '0', '', '', '');
INSERT INTO `pms_product_category` VALUES ('35', '3', '电视', '1', '0', '', '0', '0', '0', '', '', '');
INSERT INTO `pms_product_category` VALUES ('36', '3', '空调', '1', '0', '', '0', '0', '0', '', '', '');
INSERT INTO `pms_product_category` VALUES ('37', '3', '洗衣机', '1', '0', '', '0', '0', '0', '', '', '');
INSERT INTO `pms_product_category` VALUES ('38', '3', '冰箱', '1', '0', '', '0', '0', '0', '', '', '');
INSERT INTO `pms_product_category` VALUES ('39', '3', '厨卫大电', '1', '0', '', '0', '0', '0', '', '', '');
INSERT INTO `pms_product_category` VALUES ('40', '3', '厨房小电', '1', '0', '', '0', '0', '0', '', '', '');
INSERT INTO `pms_product_category` VALUES ('41', '3', '生活电器', '1', '0', '', '0', '0', '0', '', '', '');
INSERT INTO `pms_product_category` VALUES ('42', '3', '个护健康', '1', '0', '', '0', '0', '0', '', '', '');
INSERT INTO `pms_product_category` VALUES ('43', '4', '厨房卫浴', '1', '0', '', '0', '0', '0', '', '', '');
INSERT INTO `pms_product_category` VALUES ('44', '4', '灯饰照明', '1', '0', '', '0', '0', '0', '', '', '');
INSERT INTO `pms_product_category` VALUES ('45', '4', '五金工具', '1', '0', '', '0', '0', '0', '', '', '');
INSERT INTO `pms_product_category` VALUES ('46', '4', '卧室家具', '1', '0', '', '0', '0', '0', '', '', '');
INSERT INTO `pms_product_category` VALUES ('47', '4', '客厅家具', '1', '0', '', '0', '0', '0', '', '', '');
INSERT INTO `pms_product_category` VALUES ('48', '5', '全新整车', '1', '0', '', '0', '0', '0', '', '', '');
INSERT INTO `pms_product_category` VALUES ('49', '5', '车载电器', '1', '0', '', '0', '0', '0', '', '', '');
INSERT INTO `pms_product_category` VALUES ('50', '5', '维修保养', '1', '0', '', '0', '0', '0', '', '', '');
INSERT INTO `pms_product_category` VALUES ('51', '5', '汽车装饰', '1', '0', '', '0', '0', '0', '', '', '');

-- ----------------------------
-- Table structure for pms_product_category_attribute_relation
-- ----------------------------
DROP TABLE IF EXISTS `pms_product_category_attribute_relation`;
CREATE TABLE `pms_product_category_attribute_relation` (
                                                           `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                                           `product_category_id` bigint(20) DEFAULT NULL,
                                                           `product_attribute_id` bigint(20) DEFAULT NULL,
                                                           PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='产品的分类和属性的关系表，用于设置分类筛选条件（只支持一级分类）';

-- ----------------------------
-- Records of pms_product_category_attribute_relation
-- ----------------------------
INSERT INTO `pms_product_category_attribute_relation` VALUES ('1', '24', '24');
INSERT INTO `pms_product_category_attribute_relation` VALUES ('5', '26', '24');
INSERT INTO `pms_product_category_attribute_relation` VALUES ('7', '28', '24');
INSERT INTO `pms_product_category_attribute_relation` VALUES ('9', '25', '24');
INSERT INTO `pms_product_category_attribute_relation` VALUES ('10', '25', '25');

-- ----------------------------
-- Table structure for pms_product_full_reduction
-- ----------------------------
DROP TABLE IF EXISTS `pms_product_full_reduction`;
CREATE TABLE `pms_product_full_reduction` (
                                              `id` bigint(11) NOT NULL AUTO_INCREMENT,
                                              `product_id` bigint(20) DEFAULT NULL,
                                              `full_price` decimal(10,2) DEFAULT NULL,
                                              `reduce_price` decimal(10,2) DEFAULT NULL,
                                              PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 COMMENT='产品满减表(只针对同商品)';

-- ----------------------------
-- Records of pms_product_full_reduction
-- ----------------------------
INSERT INTO `pms_product_full_reduction` VALUES ('1', '7', '100.00', '20.00');
INSERT INTO `pms_product_full_reduction` VALUES ('2', '8', '100.00', '20.00');
INSERT INTO `pms_product_full_reduction` VALUES ('3', '9', '100.00', '20.00');
INSERT INTO `pms_product_full_reduction` VALUES ('4', '10', '100.00', '20.00');
INSERT INTO `pms_product_full_reduction` VALUES ('5', '11', '100.00', '20.00');
INSERT INTO `pms_product_full_reduction` VALUES ('6', '12', '100.00', '20.00');
INSERT INTO `pms_product_full_reduction` VALUES ('7', '13', '100.00', '20.00');
INSERT INTO `pms_product_full_reduction` VALUES ('8', '14', '100.00', '20.00');
INSERT INTO `pms_product_full_reduction` VALUES ('9', '18', '100.00', '20.00');
INSERT INTO `pms_product_full_reduction` VALUES ('10', '7', '200.00', '50.00');
INSERT INTO `pms_product_full_reduction` VALUES ('11', '7', '300.00', '100.00');
INSERT INTO `pms_product_full_reduction` VALUES ('14', '22', '0.00', '0.00');
INSERT INTO `pms_product_full_reduction` VALUES ('16', '24', '0.00', '0.00');
INSERT INTO `pms_product_full_reduction` VALUES ('34', '23', '0.00', '0.00');
INSERT INTO `pms_product_full_reduction` VALUES ('44', '31', '0.00', '0.00');
INSERT INTO `pms_product_full_reduction` VALUES ('46', '32', '0.00', '0.00');
INSERT INTO `pms_product_full_reduction` VALUES ('48', '33', '0.00', '0.00');
INSERT INTO `pms_product_full_reduction` VALUES ('55', '34', '0.00', '0.00');
INSERT INTO `pms_product_full_reduction` VALUES ('56', '30', '0.00', '0.00');
INSERT INTO `pms_product_full_reduction` VALUES ('59', '27', '0.00', '0.00');
INSERT INTO `pms_product_full_reduction` VALUES ('60', '28', '500.00', '50.00');
INSERT INTO `pms_product_full_reduction` VALUES ('61', '28', '1000.00', '120.00');
INSERT INTO `pms_product_full_reduction` VALUES ('62', '29', '0.00', '0.00');
INSERT INTO `pms_product_full_reduction` VALUES ('63', '26', '0.00', '0.00');
INSERT INTO `pms_product_full_reduction` VALUES ('78', '36', '0.00', '0.00');
INSERT INTO `pms_product_full_reduction` VALUES ('79', '35', '0.00', '0.00');

-- ----------------------------
-- Table structure for pms_product_ladder
-- ----------------------------
DROP TABLE IF EXISTS `pms_product_ladder`;
CREATE TABLE `pms_product_ladder` (
                                      `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                      `product_id` bigint(20) DEFAULT NULL,
                                      `count` int(11) DEFAULT NULL COMMENT '满足的商品数量',
                                      `discount` decimal(10,2) DEFAULT NULL COMMENT '折扣',
                                      `price` decimal(10,2) DEFAULT NULL COMMENT '折后价格',
                                      PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 COMMENT='产品阶梯价格表(只针对同商品)';

-- ----------------------------
-- Records of pms_product_ladder
-- ----------------------------
INSERT INTO `pms_product_ladder` VALUES ('1', '7', '3', '0.70', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('2', '8', '3', '0.70', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('3', '9', '3', '0.70', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('4', '10', '3', '0.70', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('5', '11', '3', '0.70', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('6', '12', '3', '0.70', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('7', '13', '3', '0.70', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('8', '14', '3', '0.70', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('12', '18', '3', '0.70', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('14', '7', '4', '0.60', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('15', '7', '5', '0.50', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('18', '22', '0', '0.00', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('20', '24', '0', '0.00', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('38', '23', '0', '0.00', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('48', '31', '0', '0.00', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('50', '32', '0', '0.00', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('52', '33', '0', '0.00', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('59', '34', '0', '0.00', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('60', '30', '0', '0.00', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('64', '27', '2', '0.80', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('65', '27', '3', '0.75', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('66', '28', '0', '0.00', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('67', '29', '0', '0.00', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('68', '26', '0', '0.00', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('83', '36', '0', '0.00', '0.00');
INSERT INTO `pms_product_ladder` VALUES ('84', '35', '0', '0.00', '0.00');

-- ----------------------------
-- Table structure for pms_product_operate_log
-- ----------------------------
DROP TABLE IF EXISTS `pms_product_operate_log`;
CREATE TABLE `pms_product_operate_log` (
                                           `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                           `product_id` bigint(20) DEFAULT NULL,
                                           `price_old` decimal(10,2) DEFAULT NULL,
                                           `price_new` decimal(10,2) DEFAULT NULL,
                                           `sale_price_old` decimal(10,2) DEFAULT NULL,
                                           `sale_price_new` decimal(10,2) DEFAULT NULL,
                                           `gift_point_old` int(11) DEFAULT NULL COMMENT '赠送的积分',
                                           `gift_point_new` int(11) DEFAULT NULL,
                                           `use_point_limit_old` int(11) DEFAULT NULL,
                                           `use_point_limit_new` int(11) DEFAULT NULL,
                                           `operate_man` varchar(64) DEFAULT NULL COMMENT '操作人',
                                           `create_time` datetime DEFAULT NULL,
                                           PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pms_product_operate_log
-- ----------------------------

-- ----------------------------
-- Table structure for pms_product_vertify_record
-- ----------------------------
DROP TABLE IF EXISTS `pms_product_vertify_record`;
CREATE TABLE `pms_product_vertify_record` (
                                              `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                              `product_id` bigint(20) DEFAULT NULL,
                                              `create_time` datetime DEFAULT NULL,
                                              `vertify_man` varchar(64) DEFAULT NULL COMMENT '审核人',
                                              `status` int(1) DEFAULT NULL,
                                              `detail` varchar(255) DEFAULT NULL COMMENT '反馈详情',
                                              PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='商品审核记录';

-- ----------------------------
-- Records of pms_product_vertify_record
-- ----------------------------
INSERT INTO `pms_product_vertify_record` VALUES ('1', '1', '2018-04-27 16:36:41', 'test', '1', '验证通过');
INSERT INTO `pms_product_vertify_record` VALUES ('2', '2', '2018-04-27 16:36:41', 'test', '1', '验证通过');

-- ----------------------------
-- Table structure for pms_sku_stock
-- ----------------------------
DROP TABLE IF EXISTS `pms_sku_stock`;
CREATE TABLE `pms_sku_stock` (
                                 `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                 `product_id` bigint(20) DEFAULT NULL,
                                 `sku_code` varchar(64) NOT NULL COMMENT 'sku编码',
                                 `price` decimal(10,2) DEFAULT NULL,
                                 `stock` int(11) DEFAULT '0' COMMENT '库存',
                                 `low_stock` int(11) DEFAULT NULL COMMENT '预警库存',
                                 `pic` varchar(255) DEFAULT NULL COMMENT '展示图片',
                                 `sale` int(11) DEFAULT NULL COMMENT '销量',
                                 `promotion_price` decimal(10,2) DEFAULT NULL COMMENT '单品促销价格',
                                 `lock_stock` int(11) DEFAULT '0' COMMENT '锁定库存',
                                 `sp_data` varchar(500) DEFAULT NULL COMMENT '商品销售属性，json格式',
                                 PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8 COMMENT='sku的库存';

-- ----------------------------
-- Records of pms_sku_stock
-- ----------------------------
INSERT INTO `pms_sku_stock` VALUES ('98', '27', '201808270027001', '2699.00', '97', null, null, null, null, '-24', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('99', '27', '201808270027002', '2999.00', '100', null, null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"64G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('100', '27', '201808270027003', '2699.00', '100', null, null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"蓝色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('101', '27', '201808270027004', '2999.00', '100', null, null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"蓝色\"},{\"key\":\"容量\",\"value\":\"64G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('102', '28', '201808270028001', '649.00', '99', null, null, null, null, '-8', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('103', '28', '201808270028002', '699.00', '99', null, null, null, null, '-8', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('104', '28', '201808270028003', '649.00', '100', null, null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"银色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('105', '28', '201808270028004', '699.00', '100', null, null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"银色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('106', '29', '201808270029001', '5499.00', '99', null, null, null, null, '-8', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('107', '29', '201808270029002', '6299.00', '100', null, null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"64G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('108', '29', '201808270029003', '5499.00', '100', null, null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"银色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('109', '29', '201808270029004', '6299.00', '100', null, null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"银色\"},{\"key\":\"容量\",\"value\":\"64G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('110', '26', '201806070026001', '3788.00', '499', null, null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('111', '26', '201806070026002', '3999.00', '500', null, null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('112', '26', '201806070026003', '3788.00', '500', null, null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"银色\"},{\"key\":\"容量\",\"value\":\"16G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('113', '26', '201806070026004', '3999.00', '500', null, null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"银色\"},{\"key\":\"容量\",\"value\":\"32G\"}]');
INSERT INTO `pms_sku_stock` VALUES ('163', '36', '202002210036001', '100.00', '100', '25', null, null, null, '9', '[{\"key\":\"颜色\",\"value\":\"红色\"},{\"key\":\"尺寸\",\"value\":\"38\"},{\"key\":\"风格\",\"value\":\"秋季\"}]');
INSERT INTO `pms_sku_stock` VALUES ('164', '36', '202002210036002', '120.00', '98', '20', null, null, null, '6', '[{\"key\":\"颜色\",\"value\":\"红色\"},{\"key\":\"尺寸\",\"value\":\"38\"},{\"key\":\"风格\",\"value\":\"夏季\"}]');
INSERT INTO `pms_sku_stock` VALUES ('165', '36', '202002210036003', '100.00', '100', '20', null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"红色\"},{\"key\":\"尺寸\",\"value\":\"39\"},{\"key\":\"风格\",\"value\":\"秋季\"}]');
INSERT INTO `pms_sku_stock` VALUES ('166', '36', '202002210036004', '100.00', '100', '20', null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"红色\"},{\"key\":\"尺寸\",\"value\":\"39\"},{\"key\":\"风格\",\"value\":\"夏季\"}]');
INSERT INTO `pms_sku_stock` VALUES ('167', '36', '202002210036005', '100.00', '100', '20', null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"蓝色\"},{\"key\":\"尺寸\",\"value\":\"38\"},{\"key\":\"风格\",\"value\":\"秋季\"}]');
INSERT INTO `pms_sku_stock` VALUES ('168', '36', '202002210036006', '100.00', '100', '20', null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"蓝色\"},{\"key\":\"尺寸\",\"value\":\"38\"},{\"key\":\"风格\",\"value\":\"夏季\"}]');
INSERT INTO `pms_sku_stock` VALUES ('169', '36', '202002210036007', '100.00', '100', '20', null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"蓝色\"},{\"key\":\"尺寸\",\"value\":\"39\"},{\"key\":\"风格\",\"value\":\"秋季\"}]');
INSERT INTO `pms_sku_stock` VALUES ('170', '36', '202002210036008', '100.00', '100', '20', null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"蓝色\"},{\"key\":\"尺寸\",\"value\":\"39\"},{\"key\":\"风格\",\"value\":\"夏季\"}]');
INSERT INTO `pms_sku_stock` VALUES ('171', '35', '202002250035001', '200.00', '100', '50', null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"红色\"},{\"key\":\"尺寸\",\"value\":\"38\"},{\"key\":\"风格\",\"value\":\"夏季\"}]');
INSERT INTO `pms_sku_stock` VALUES ('172', '35', '202002250035002', '240.00', '100', '50', null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"红色\"},{\"key\":\"尺寸\",\"value\":\"38\"},{\"key\":\"风格\",\"value\":\"秋季\"}]');
INSERT INTO `pms_sku_stock` VALUES ('173', '35', '202002250035003', '200.00', '100', '50', null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"红色\"},{\"key\":\"尺寸\",\"value\":\"39\"},{\"key\":\"风格\",\"value\":\"夏季\"}]');
INSERT INTO `pms_sku_stock` VALUES ('174', '35', '202002250035004', '200.00', '100', '50', null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"红色\"},{\"key\":\"尺寸\",\"value\":\"39\"},{\"key\":\"风格\",\"value\":\"秋季\"}]');
INSERT INTO `pms_sku_stock` VALUES ('175', '35', '202002250035005', '200.00', '100', '50', null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"蓝色\"},{\"key\":\"尺寸\",\"value\":\"38\"},{\"key\":\"风格\",\"value\":\"夏季\"}]');
INSERT INTO `pms_sku_stock` VALUES ('176', '35', '202002250035006', '200.00', '100', '50', null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"蓝色\"},{\"key\":\"尺寸\",\"value\":\"38\"},{\"key\":\"风格\",\"value\":\"秋季\"}]');
INSERT INTO `pms_sku_stock` VALUES ('177', '35', '202002250035007', '200.00', '100', '50', null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"蓝色\"},{\"key\":\"尺寸\",\"value\":\"39\"},{\"key\":\"风格\",\"value\":\"夏季\"}]');
INSERT INTO `pms_sku_stock` VALUES ('178', '35', '202002250035008', '200.00', '100', '50', null, null, null, '0', '[{\"key\":\"颜色\",\"value\":\"蓝色\"},{\"key\":\"尺寸\",\"value\":\"39\"},{\"key\":\"风格\",\"value\":\"秋季\"}]');

-- ----------------------------
-- Table structure for sms_coupon
-- ----------------------------
DROP TABLE IF EXISTS `sms_coupon`;
CREATE TABLE `sms_coupon` (
                              `id` bigint(20) NOT NULL AUTO_INCREMENT,
                              `type` int(1) DEFAULT NULL COMMENT '优惠券类型；0->全场赠券；1->会员赠券；2->购物赠券；3->注册赠券',
                              `name` varchar(100) DEFAULT NULL,
                              `platform` int(1) DEFAULT NULL COMMENT '使用平台：0->全部；1->移动；2->PC',
                              `count` int(11) DEFAULT NULL COMMENT '数量',
                              `amount` decimal(10,2) DEFAULT NULL COMMENT '金额',
                              `per_limit` int(11) DEFAULT NULL COMMENT '每人限领张数',
                              `min_point` decimal(10,2) DEFAULT NULL COMMENT '使用门槛；0表示无门槛',
                              `start_time` datetime DEFAULT NULL,
                              `end_time` datetime DEFAULT NULL,
                              `use_type` int(1) DEFAULT NULL COMMENT '使用类型：0->全场通用；1->指定分类；2->指定商品',
                              `note` varchar(200) DEFAULT NULL COMMENT '备注',
                              `publish_count` int(11) DEFAULT NULL COMMENT '发行数量',
                              `use_count` int(11) DEFAULT NULL COMMENT '已使用数量',
                              `receive_count` int(11) DEFAULT NULL COMMENT '领取数量',
                              `enable_time` datetime DEFAULT NULL COMMENT '可以领取的日期',
                              `code` varchar(64) DEFAULT NULL COMMENT '优惠码',
                              `member_level` int(1) DEFAULT NULL COMMENT '可领取的会员类型：0->无限时',
                              PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='优惠券表';

-- ----------------------------
-- Records of sms_coupon
-- ----------------------------
INSERT INTO `sms_coupon` VALUES ('2', '0', '全品类通用券', '0', '92', '10.00', '1', '100.00', '2018-08-27 16:40:47', '2018-11-23 16:40:47', '0', '满100减10', '100', '0', '8', '2018-08-27 16:40:47', null, null);
INSERT INTO `sms_coupon` VALUES ('3', '0', '小米手机专用券', '0', '92', '50.00', '1', '1000.00', '2018-08-27 16:40:47', '2018-11-16 16:40:47', '2', '小米手机专用优惠券', '100', '0', '8', '2018-08-27 16:40:47', null, null);
INSERT INTO `sms_coupon` VALUES ('4', '0', '手机品类专用券', '0', '92', '300.00', '1', '2000.00', '2018-08-27 16:40:47', '2018-09-15 16:40:47', '1', '手机分类专用优惠券', '100', '0', '8', '2018-08-27 16:40:47', null, null);
INSERT INTO `sms_coupon` VALUES ('7', '0', 'T恤分类专用优惠券', '0', '93', '50.00', '1', '500.00', '2018-08-27 16:40:47', '2018-08-15 16:40:47', '1', '满500减50', '100', '0', '7', '2018-08-27 16:40:47', null, null);
INSERT INTO `sms_coupon` VALUES ('8', '0', '新优惠券', '0', '100', '100.00', '1', '1000.00', '2018-11-08 00:00:00', '2018-11-27 00:00:00', '0', '测试', '100', '0', '1', null, null, null);
INSERT INTO `sms_coupon` VALUES ('9', '0', '全品类通用券', '0', '100', '5.00', '1', '100.00', '2018-11-08 00:00:00', '2018-11-10 00:00:00', '0', null, '100', '0', '1', null, null, null);
INSERT INTO `sms_coupon` VALUES ('10', '0', '全品类通用券', '0', '100', '15.00', '1', '200.00', '2018-11-08 00:00:00', '2018-11-10 00:00:00', '0', null, '100', '0', '1', null, null, null);
INSERT INTO `sms_coupon` VALUES ('11', '0', '全品类通用券', '0', '1000', '50.00', '1', '1000.00', '2018-11-08 00:00:00', '2018-11-10 00:00:00', '0', null, '1000', '0', '0', null, null, null);
INSERT INTO `sms_coupon` VALUES ('12', '0', '移动端全品类通用券', '1', '1', '10.00', '1', '100.00', '2018-11-08 00:00:00', '2018-11-10 00:00:00', '0', null, '100', '0', '0', null, null, null);
INSERT INTO `sms_coupon` VALUES ('19', '0', '手机分类专用', '0', '100', '100.00', '1', '1000.00', '2018-11-09 00:00:00', '2018-11-17 00:00:00', '1', '手机分类专用', '100', '0', '0', null, null, null);
INSERT INTO `sms_coupon` VALUES ('20', '0', '小米手机专用', '0', '100', '200.00', '1', '1000.00', '2018-11-09 00:00:00', '2018-11-24 00:00:00', '2', '小米手机专用', '100', '0', '0', null, null, null);
INSERT INTO `sms_coupon` VALUES ('21', '0', 'xxx', '0', '100', '10.00', '1', '100.00', '2018-11-09 00:00:00', '2018-11-30 00:00:00', '2', null, '100', '0', '0', null, null, null);
INSERT INTO `sms_coupon` VALUES ('22', '0', 'string', '0', '0', '0.00', '0', '0.00', '2019-08-18 15:36:11', '2019-08-18 15:36:11', '0', 'string', '0', '0', '0', '2019-08-18 15:36:11', 'string', '0');
INSERT INTO `sms_coupon` VALUES ('23', '0', '有效期测试', '0', '100', '10.00', '1', '100.00', '2019-10-05 00:00:00', '2019-10-09 00:00:00', '0', null, '100', '0', '0', null, null, null);

-- ----------------------------
-- Table structure for sms_coupon_history
-- ----------------------------
DROP TABLE IF EXISTS `sms_coupon_history`;
CREATE TABLE `sms_coupon_history` (
                                      `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                      `coupon_id` bigint(20) DEFAULT NULL,
                                      `member_id` bigint(20) DEFAULT NULL,
                                      `coupon_code` varchar(64) DEFAULT NULL,
                                      `member_nickname` varchar(64) DEFAULT NULL COMMENT '领取人昵称',
                                      `get_type` int(1) DEFAULT NULL COMMENT '获取类型：0->后台赠送；1->主动获取',
                                      `create_time` datetime DEFAULT NULL,
                                      `use_status` int(1) DEFAULT NULL COMMENT '使用状态：0->未使用；1->已使用；2->已过期',
                                      `use_time` datetime DEFAULT NULL COMMENT '使用时间',
                                      `order_id` bigint(20) DEFAULT NULL COMMENT '订单编号',
                                      `order_sn` varchar(100) DEFAULT NULL COMMENT '订单号码',
                                      PRIMARY KEY (`id`),
                                      KEY `idx_member_id` (`member_id`) USING BTREE,
                                      KEY `idx_coupon_id` (`coupon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='优惠券使用、领取历史表';

-- ----------------------------
-- Records of sms_coupon_history
-- ----------------------------
INSERT INTO `sms_coupon_history` VALUES ('2', '2', '1', '4931048380330002', 'windir', '1', '2018-08-29 14:04:12', '1', '2018-11-12 14:38:47', '12', '201809150101000001');
INSERT INTO `sms_coupon_history` VALUES ('3', '3', '1', '4931048380330003', 'windir', '1', '2018-08-29 14:04:29', '0', null, null, null);
INSERT INTO `sms_coupon_history` VALUES ('4', '4', '1', '4931048380330004', 'windir', '1', '2018-08-29 14:04:32', '0', null, null, null);
INSERT INTO `sms_coupon_history` VALUES ('11', '7', '1', '4931048380330001', 'windir', '1', '2018-09-04 16:21:50', '0', null, null, null);
INSERT INTO `sms_coupon_history` VALUES ('12', '2', '4', '0340981248320004', 'zhensan', '1', '2018-11-12 14:16:50', '0', null, null, null);
INSERT INTO `sms_coupon_history` VALUES ('13', '3', '4', '0342977234360004', 'zhensan', '1', '2018-11-12 14:17:10', '0', null, null, null);
INSERT INTO `sms_coupon_history` VALUES ('14', '4', '4', '0343342928830004', 'zhensan', '1', '2018-11-12 14:17:13', '0', null, null, null);
INSERT INTO `sms_coupon_history` VALUES ('15', '2', '5', '0351883832180005', 'lisi', '1', '2018-11-12 14:18:39', '0', null, null, null);
INSERT INTO `sms_coupon_history` VALUES ('16', '3', '5', '0352201672680005', 'lisi', '1', '2018-11-12 14:18:42', '0', null, null, null);
INSERT INTO `sms_coupon_history` VALUES ('17', '4', '5', '0352505810180005', 'lisi', '1', '2018-11-12 14:18:45', '0', null, null, null);
INSERT INTO `sms_coupon_history` VALUES ('18', '2', '6', '0356114588380006', 'wangwu', '1', '2018-11-12 14:19:21', '0', null, null, null);
INSERT INTO `sms_coupon_history` VALUES ('19', '3', '6', '0356382856920006', 'wangwu', '1', '2018-11-12 14:19:24', '0', null, null, null);
INSERT INTO `sms_coupon_history` VALUES ('20', '4', '6', '0356656798470006', 'wangwu', '1', '2018-11-12 14:19:27', '0', null, null, null);
INSERT INTO `sms_coupon_history` VALUES ('21', '2', '3', '0363644984620003', 'windy', '1', '2018-11-12 14:20:36', '0', null, null, null);
INSERT INTO `sms_coupon_history` VALUES ('22', '3', '3', '0363932820300003', 'windy', '1', '2018-11-12 14:20:39', '0', null, null, null);
INSERT INTO `sms_coupon_history` VALUES ('23', '4', '3', '0364238275840003', 'windy', '1', '2018-11-12 14:20:42', '0', null, null, null);
INSERT INTO `sms_coupon_history` VALUES ('24', '2', '7', '0385034833070007', 'lion', '1', '2018-11-12 14:24:10', '0', null, null, null);
INSERT INTO `sms_coupon_history` VALUES ('25', '3', '7', '0385350208650007', 'lion', '1', '2018-11-12 14:24:13', '0', null, null, null);
INSERT INTO `sms_coupon_history` VALUES ('26', '4', '7', '0385632733900007', 'lion', '1', '2018-11-12 14:24:16', '0', null, null, null);
INSERT INTO `sms_coupon_history` VALUES ('27', '2', '8', '0388779132990008', 'shari', '1', '2018-11-12 14:24:48', '0', null, null, null);
INSERT INTO `sms_coupon_history` VALUES ('28', '3', '8', '0388943658810008', 'shari', '1', '2018-11-12 14:24:49', '0', null, null, null);
INSERT INTO `sms_coupon_history` VALUES ('29', '4', '8', '0389069398320008', 'shari', '1', '2018-11-12 14:24:51', '0', null, null, null);
INSERT INTO `sms_coupon_history` VALUES ('30', '2', '9', '0390753935250009', 'aewen', '1', '2018-11-12 14:25:08', '0', null, null, null);
INSERT INTO `sms_coupon_history` VALUES ('31', '3', '9', '0390882954470009', 'aewen', '1', '2018-11-12 14:25:09', '0', null, null, null);
INSERT INTO `sms_coupon_history` VALUES ('32', '4', '9', '0391025542810009', 'aewen', '1', '2018-11-12 14:25:10', '0', null, null, null);

-- ----------------------------
-- Table structure for sms_coupon_product_category_relation
-- ----------------------------
DROP TABLE IF EXISTS `sms_coupon_product_category_relation`;
CREATE TABLE `sms_coupon_product_category_relation` (
                                                        `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                                        `coupon_id` bigint(20) DEFAULT NULL,
                                                        `product_category_id` bigint(20) DEFAULT NULL,
                                                        `product_category_name` varchar(200) DEFAULT NULL COMMENT '产品分类名称',
                                                        `parent_category_name` varchar(200) DEFAULT NULL COMMENT '父分类名称',
                                                        PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='优惠券和产品分类关系表';

-- ----------------------------
-- Records of sms_coupon_product_category_relation
-- ----------------------------
INSERT INTO `sms_coupon_product_category_relation` VALUES ('4', '19', '30', '手机配件', '手机数码');

-- ----------------------------
-- Table structure for sms_coupon_product_relation
-- ----------------------------
DROP TABLE IF EXISTS `sms_coupon_product_relation`;
CREATE TABLE `sms_coupon_product_relation` (
                                               `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                               `coupon_id` bigint(20) DEFAULT NULL,
                                               `product_id` bigint(20) DEFAULT NULL,
                                               `product_name` varchar(500) DEFAULT NULL COMMENT '商品名称',
                                               `product_sn` varchar(200) DEFAULT NULL COMMENT '商品编码',
                                               PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='优惠券和产品的关系表';

-- ----------------------------
-- Records of sms_coupon_product_relation
-- ----------------------------
INSERT INTO `sms_coupon_product_relation` VALUES ('9', '21', '33', '小米（MI）小米电视4A ', '4609652');

-- ----------------------------
-- Table structure for sms_flash_promotion
-- ----------------------------
DROP TABLE IF EXISTS `sms_flash_promotion`;
CREATE TABLE `sms_flash_promotion` (
                                       `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                       `title` varchar(200) DEFAULT NULL,
                                       `start_date` date DEFAULT NULL COMMENT '开始日期',
                                       `end_date` date DEFAULT NULL COMMENT '结束日期',
                                       `status` int(1) DEFAULT NULL COMMENT '上下线状态',
                                       `create_time` datetime DEFAULT NULL COMMENT '秒杀时间段名称',
                                       PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='限时购表';

-- ----------------------------
-- Records of sms_flash_promotion
-- ----------------------------
INSERT INTO `sms_flash_promotion` VALUES ('2', '春季家电家具疯狂秒杀1', '2018-11-12', '2018-11-23', '1', '2018-11-16 11:12:13');
INSERT INTO `sms_flash_promotion` VALUES ('3', '手机特卖', '2018-11-03', '2018-11-10', '1', '2018-11-16 11:11:31');
INSERT INTO `sms_flash_promotion` VALUES ('4', '春季家电家具疯狂秒杀3', '2018-11-24', '2018-11-25', '1', '2018-11-16 11:12:19');
INSERT INTO `sms_flash_promotion` VALUES ('5', '春季家电家具疯狂秒杀4', '2018-11-16', '2018-11-16', '1', '2018-11-16 11:12:24');
INSERT INTO `sms_flash_promotion` VALUES ('6', '春季家电家具疯狂秒杀5', '2018-11-16', '2018-11-16', '1', '2018-11-16 11:12:31');
INSERT INTO `sms_flash_promotion` VALUES ('7', '春季家电家具疯狂秒杀6', '2018-11-16', '2018-11-16', '1', '2018-11-16 11:12:35');
INSERT INTO `sms_flash_promotion` VALUES ('8', '春季家电家具疯狂秒杀7', '2018-11-16', '2018-11-16', '0', '2018-11-16 11:12:39');
INSERT INTO `sms_flash_promotion` VALUES ('9', '春季家电家具疯狂秒杀8', '2018-11-16', '2018-11-16', '0', '2018-11-16 11:12:42');
INSERT INTO `sms_flash_promotion` VALUES ('13', '测试', '2018-11-01', '2018-11-30', '0', '2018-11-19 10:34:24');

-- ----------------------------
-- Table structure for sms_flash_promotion_log
-- ----------------------------
DROP TABLE IF EXISTS `sms_flash_promotion_log`;
CREATE TABLE `sms_flash_promotion_log` (
                                           `id` int(11) NOT NULL AUTO_INCREMENT,
                                           `member_id` int(11) DEFAULT NULL,
                                           `product_id` bigint(20) DEFAULT NULL,
                                           `member_phone` varchar(64) DEFAULT NULL,
                                           `product_name` varchar(100) DEFAULT NULL,
                                           `subscribe_time` datetime DEFAULT NULL COMMENT '会员订阅时间',
                                           `send_time` datetime DEFAULT NULL,
                                           PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='限时购通知记录';

-- ----------------------------
-- Records of sms_flash_promotion_log
-- ----------------------------

-- ----------------------------
-- Table structure for sms_flash_promotion_product_relation
-- ----------------------------
DROP TABLE IF EXISTS `sms_flash_promotion_product_relation`;
CREATE TABLE `sms_flash_promotion_product_relation` (
                                                        `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
                                                        `flash_promotion_id` bigint(20) DEFAULT NULL,
                                                        `flash_promotion_session_id` bigint(20) DEFAULT NULL COMMENT '编号',
                                                        `product_id` bigint(20) DEFAULT NULL,
                                                        `flash_promotion_price` decimal(10,2) DEFAULT NULL COMMENT '限时购价格',
                                                        `flash_promotion_count` int(11) DEFAULT NULL COMMENT '限时购数量',
                                                        `flash_promotion_limit` int(11) DEFAULT NULL COMMENT '每人限购数量',
                                                        `sort` int(11) DEFAULT NULL COMMENT '排序',
                                                        PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='商品限时购与商品关系表';

-- ----------------------------
-- Records of sms_flash_promotion_product_relation
-- ----------------------------
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('1', '2', '1', '26', '3000.00', '10', '1', '0');
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('2', '2', '1', '27', '2000.00', '10', '1', '20');
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('3', '2', '1', '28', '599.00', '19', '1', '0');
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('4', '2', '1', '29', '4999.00', '10', '1', '100');
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('9', '2', '2', '26', '2999.00', '100', '1', '0');
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('10', '2', '2', '27', null, null, null, null);
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('11', '2', '2', '28', null, null, null, null);
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('12', '2', '2', '29', null, null, null, null);
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('13', '2', '2', '30', null, null, null, null);
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('14', '2', '3', '31', null, null, null, null);
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('15', '2', '3', '32', null, null, null, null);
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('16', '2', '4', '33', null, null, null, null);
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('17', '2', '4', '34', null, null, null, null);
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('18', '2', '5', '36', null, null, null, null);
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('19', '2', '6', '33', null, null, null, null);
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('20', '2', '6', '34', null, null, null, null);

-- ----------------------------
-- Table structure for sms_flash_promotion_session
-- ----------------------------
DROP TABLE IF EXISTS `sms_flash_promotion_session`;
CREATE TABLE `sms_flash_promotion_session` (
                                               `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
                                               `name` varchar(200) DEFAULT NULL COMMENT '场次名称',
                                               `start_time` time DEFAULT NULL COMMENT '每日开始时间',
                                               `end_time` time DEFAULT NULL COMMENT '每日结束时间',
                                               `status` int(1) DEFAULT NULL COMMENT '启用状态：0->不启用；1->启用',
                                               `create_time` datetime DEFAULT NULL COMMENT '创建时间',
                                               PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='限时购场次表';

-- ----------------------------
-- Records of sms_flash_promotion_session
-- ----------------------------
INSERT INTO `sms_flash_promotion_session` VALUES ('1', '8:00', '08:00:29', '09:00:33', '1', '2018-11-16 13:22:17');
INSERT INTO `sms_flash_promotion_session` VALUES ('2', '10:00', '10:00:33', '11:00:33', '1', '2018-11-16 13:22:34');
INSERT INTO `sms_flash_promotion_session` VALUES ('3', '12:00', '12:00:00', '13:00:22', '1', '2018-11-16 13:22:37');
INSERT INTO `sms_flash_promotion_session` VALUES ('4', '14:00', '14:00:00', '15:00:00', '1', '2018-11-16 13:22:41');
INSERT INTO `sms_flash_promotion_session` VALUES ('5', '16:00', '16:00:00', '17:00:00', '1', '2018-11-16 13:22:45');
INSERT INTO `sms_flash_promotion_session` VALUES ('6', '18:00', '18:00:00', '19:00:00', '1', '2018-11-16 13:21:34');
INSERT INTO `sms_flash_promotion_session` VALUES ('7', '20:00', '20:00:33', '21:00:33', '0', '2018-11-16 13:22:55');

-- ----------------------------
-- Table structure for sms_home_advertise
-- ----------------------------
DROP TABLE IF EXISTS `sms_home_advertise`;
CREATE TABLE `sms_home_advertise` (
                                      `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                      `name` varchar(100) DEFAULT NULL,
                                      `type` int(1) DEFAULT NULL COMMENT '轮播位置：0->PC首页轮播；1->app首页轮播',
                                      `pic` varchar(500) DEFAULT NULL,
                                      `start_time` datetime DEFAULT NULL,
                                      `end_time` datetime DEFAULT NULL,
                                      `status` int(1) DEFAULT NULL COMMENT '上下线状态：0->下线；1->上线',
                                      `click_count` int(11) DEFAULT NULL COMMENT '点击数',
                                      `order_count` int(11) DEFAULT NULL COMMENT '下单数',
                                      `url` varchar(500) DEFAULT NULL COMMENT '链接地址',
                                      `note` varchar(500) DEFAULT NULL COMMENT '备注',
                                      `sort` int(11) DEFAULT '0' COMMENT '排序',
                                      PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='首页轮播广告表';

-- ----------------------------
-- Records of sms_home_advertise
-- ----------------------------
INSERT INTO `sms_home_advertise` VALUES ('2', '夏季大热促销', '1', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '2018-11-01 14:01:37', '2018-11-15 14:01:37', '1', '0', '0', null, '夏季大热促销', '0');
INSERT INTO `sms_home_advertise` VALUES ('3', '夏季大热促销1', '1', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '2018-11-13 14:01:37', '2018-11-13 14:01:37', '0', '0', '0', null, '夏季大热促销1', '0');
INSERT INTO `sms_home_advertise` VALUES ('4', '夏季大热促销2', '1', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '2018-11-13 14:01:37', '2018-11-13 14:01:37', '1', '0', '0', null, '夏季大热促销2', '0');
INSERT INTO `sms_home_advertise` VALUES ('9', '电影推荐广告', '1', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20181113/movie_ad.jpg', '2018-11-01 00:00:00', '2018-11-24 00:00:00', '1', '0', '0', 'www.baidu.com', '电影推荐广告', '100');
INSERT INTO `sms_home_advertise` VALUES ('10', '汽车促销广告', '1', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20181113/car_ad.jpg', '2018-11-13 00:00:00', '2018-11-24 00:00:00', '1', '0', '0', 'xxx', null, '99');
INSERT INTO `sms_home_advertise` VALUES ('11', '汽车推荐广告', '1', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20181113/car_ad2.jpg', '2018-11-13 00:00:00', '2018-11-30 00:00:00', '1', '0', '0', 'xxx', null, '98');

-- ----------------------------
-- Table structure for sms_home_brand
-- ----------------------------
DROP TABLE IF EXISTS `sms_home_brand`;
CREATE TABLE `sms_home_brand` (
                                  `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                  `brand_id` bigint(20) DEFAULT NULL,
                                  `brand_name` varchar(64) DEFAULT NULL,
                                  `recommend_status` int(1) DEFAULT NULL,
                                  `sort` int(11) DEFAULT NULL,
                                  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='首页推荐品牌表';

-- ----------------------------
-- Records of sms_home_brand
-- ----------------------------
INSERT INTO `sms_home_brand` VALUES ('1', '1', '万和', '1', '200');
INSERT INTO `sms_home_brand` VALUES ('2', '2', '三星', '1', '0');
INSERT INTO `sms_home_brand` VALUES ('6', '6', '小米', '1', '300');
INSERT INTO `sms_home_brand` VALUES ('8', '5', '方太', '1', '100');
INSERT INTO `sms_home_brand` VALUES ('31', '49', '七匹狼', '0', '0');
INSERT INTO `sms_home_brand` VALUES ('32', '50', '海澜之家', '1', '0');
INSERT INTO `sms_home_brand` VALUES ('33', '51', '苹果', '1', '0');
INSERT INTO `sms_home_brand` VALUES ('34', '2', '三星', '0', '0');
INSERT INTO `sms_home_brand` VALUES ('35', '3', '华为', '1', '0');
INSERT INTO `sms_home_brand` VALUES ('36', '4', '格力', '1', '0');
INSERT INTO `sms_home_brand` VALUES ('37', '5', '方太', '1', '0');
INSERT INTO `sms_home_brand` VALUES ('38', '1', '万和', '1', '0');
INSERT INTO `sms_home_brand` VALUES ('39', '21', 'OPPO', '1', '0');

-- ----------------------------
-- Table structure for sms_home_new_product
-- ----------------------------
DROP TABLE IF EXISTS `sms_home_new_product`;
CREATE TABLE `sms_home_new_product` (
                                        `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                        `product_id` bigint(20) DEFAULT NULL,
                                        `product_name` varchar(64) DEFAULT NULL,
                                        `recommend_status` int(1) DEFAULT NULL,
                                        `sort` int(1) DEFAULT NULL,
                                        PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='新鲜好物表';

-- ----------------------------
-- Records of sms_home_new_product
-- ----------------------------
INSERT INTO `sms_home_new_product` VALUES ('2', '27', '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', '1', '200');
INSERT INTO `sms_home_new_product` VALUES ('8', '26', '华为 HUAWEI P20 ', '0', '0');
INSERT INTO `sms_home_new_product` VALUES ('9', '27', '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', '1', '0');
INSERT INTO `sms_home_new_product` VALUES ('10', '28', '小米 红米5A 全网通版 3GB+32GB 香槟金 移动联通电信4G手机 双卡双待', '1', '0');
INSERT INTO `sms_home_new_product` VALUES ('11', '29', 'Apple iPhone 8 Plus 64GB 红色特别版 移动联通电信4G手机', '1', '0');
INSERT INTO `sms_home_new_product` VALUES ('12', '30', 'HLA海澜之家简约动物印花短袖T恤', '1', '0');

-- ----------------------------
-- Table structure for sms_home_recommend_product
-- ----------------------------
DROP TABLE IF EXISTS `sms_home_recommend_product`;
CREATE TABLE `sms_home_recommend_product` (
                                              `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                              `product_id` bigint(20) DEFAULT NULL,
                                              `product_name` varchar(64) DEFAULT NULL,
                                              `recommend_status` int(1) DEFAULT NULL,
                                              `sort` int(1) DEFAULT NULL,
                                              PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='人气推荐商品表';

-- ----------------------------
-- Records of sms_home_recommend_product
-- ----------------------------
INSERT INTO `sms_home_recommend_product` VALUES ('3', '26', '华为 HUAWEI P20 ', '1', '0');
INSERT INTO `sms_home_recommend_product` VALUES ('4', '27', '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', '1', '0');
INSERT INTO `sms_home_recommend_product` VALUES ('5', '28', '小米 红米5A 全网通版 3GB+32GB 香槟金 移动联通电信4G手机 双卡双待', '1', '0');
INSERT INTO `sms_home_recommend_product` VALUES ('6', '29', 'Apple iPhone 8 Plus 64GB 红色特别版 移动联通电信4G手机', '1', '0');
INSERT INTO `sms_home_recommend_product` VALUES ('7', '30', 'HLA海澜之家简约动物印花短袖T恤', '1', '100');

-- ----------------------------
-- Table structure for sms_home_recommend_subject
-- ----------------------------
DROP TABLE IF EXISTS `sms_home_recommend_subject`;
CREATE TABLE `sms_home_recommend_subject` (
                                              `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                              `subject_id` bigint(20) DEFAULT NULL,
                                              `subject_name` varchar(64) DEFAULT NULL,
                                              `recommend_status` int(1) DEFAULT NULL,
                                              `sort` int(11) DEFAULT NULL,
                                              PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='首页推荐专题表';

-- ----------------------------
-- Records of sms_home_recommend_subject
-- ----------------------------
INSERT INTO `sms_home_recommend_subject` VALUES ('14', '1', 'polo衬衫的也时尚', '1', '0');
INSERT INTO `sms_home_recommend_subject` VALUES ('15', '2', '大牌手机低价秒', '1', '0');
INSERT INTO `sms_home_recommend_subject` VALUES ('16', '3', '晓龙845新品上市', '1', '0');
INSERT INTO `sms_home_recommend_subject` VALUES ('17', '4', '夏天应该穿什么', '1', '0');
INSERT INTO `sms_home_recommend_subject` VALUES ('18', '5', '夏季精选', '1', '100');
INSERT INTO `sms_home_recommend_subject` VALUES ('19', '6', '品牌手机降价', '1', '0');

