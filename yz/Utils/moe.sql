/*
 Navicat Premium Data Transfer

 Source Server         : java
 Source Server Type    : MySQL
 Source Server Version : 50736
 Source Host           : localhost:3306
 Source Schema         : moe

 Target Server Type    : MySQL
 Target Server Version : 50736
 File Encoding         : 65001

 Date: 10/01/2023 14:56:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for 2014school
-- ----------------------------
DROP TABLE IF EXISTS `2014school`;
CREATE TABLE `2014school`  (
  `region` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `regular_total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `regular_central` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `degree` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `higher` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `adult_total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `adult_central` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `government` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of 2014school
-- ----------------------------
INSERT INTO `2014school` VALUES ('天津', '55', '3', '29', '26', '14', '0', '0');
INSERT INTO `2014school` VALUES ('河北', '118', '4', '58', '60', '7', '1', '36');
INSERT INTO `2014school` VALUES ('山西', '79', '0', '31', '48', '12', '0', '49');
INSERT INTO `2014school` VALUES ('内蒙古', '50', '0', '15', '35', '2', '0', '0');
INSERT INTO `2014school` VALUES ('辽宁', '116', '5', '65', '51', '20', '2', '69');
INSERT INTO `2014school` VALUES ('吉林', '58', '2', '37', '21', '14', '0', '14');
INSERT INTO `2014school` VALUES ('黑龙江', '80', '3', '38', '42', '22', '0', '36');
INSERT INTO `2014school` VALUES ('上海', '68', '10', '37', '31', '14', '0', '218');
INSERT INTO `2014school` VALUES ('江苏', '159', '10', '76', '83', '9', '1', '0');
INSERT INTO `2014school` VALUES ('浙江', '104', '2', '57', '47', '9', '0', '21');
INSERT INTO `2014school` VALUES ('安徽', '118', '2', '44', '74', '6', '0', '7');
INSERT INTO `2014school` VALUES ('福建', '88', '2', '33', '55', '3', '0', '0');
INSERT INTO `2014school` VALUES ('江西', '95', '0', '42', '53', '8', '0', '23');
INSERT INTO `2014school` VALUES ('山东', '141', '2', '65', '76', '11', '0', '86');
INSERT INTO `2014school` VALUES ('河南', '129', '1', '52', '77', '12', '0', '46');
INSERT INTO `2014school` VALUES ('湖北', '123', '8', '67', '56', '14', '0', '19');
INSERT INTO `2014school` VALUES ('湖南', '124', '3', '51', '73', '12', '0', '13');
INSERT INTO `2014school` VALUES ('广东', '141', '4', '62', '79', '15', '0', '31');
INSERT INTO `2014school` VALUES ('广西', '70', '0', '33', '37', '6', '0', '0');
INSERT INTO `2014school` VALUES ('海南', '17', '0', '6', '11', '1', '0', '0');
INSERT INTO `2014school` VALUES ('重庆', '63', '2', '25', '38', '4', '0', '7');
INSERT INTO `2014school` VALUES ('四川', '107', '6', '50', '57', '18', '1', '16');
INSERT INTO `2014school` VALUES ('贵州', '55', '0', '26', '29', '4', '0', '0');
INSERT INTO `2014school` VALUES ('云南', '67', '0', '30', '37', '2', '0', '0');
INSERT INTO `2014school` VALUES ('西藏', '6', '0', '3', '3', '0', '0', '0');
INSERT INTO `2014school` VALUES ('陕西', '92', '6', '55', '37', '16', '0', '0');
INSERT INTO `2014school` VALUES ('甘肃', '43', '2', '21', '22', '6', '0', '39');
INSERT INTO `2014school` VALUES ('青海', '12', '0', '4', '8', '2', '0', '0');
INSERT INTO `2014school` VALUES ('宁夏', '18', '1', '8', '10', '1', '0', '0');
INSERT INTO `2014school` VALUES ('新疆', '44', '0', '18', '26', '7', '0', '0');
INSERT INTO `2014school` VALUES ('北京', '89', '35', '64', '25', '24', '8', '69');

-- ----------------------------
-- Table structure for 2014student
-- ----------------------------
DROP TABLE IF EXISTS `2014student`;
CREATE TABLE `2014student`  (
  `region` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `graduates_total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `graduates_female` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `graduates_doctor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `graduates_master` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `degree_awarded` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `entrants_total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `entrants_female` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `entrants_doctor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `entrants_master` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enrolment_total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enrolment_female` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enrolment_doctor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enrolment_master` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nextYear_total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nextYear_female` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nextYear_doctor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nextYear_master` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of 2014student
-- ----------------------------
INSERT INTO `2014student` VALUES ('北京', '83155', '40976', '16786', '66369', '82047', '101016', '48475', '21974', '79042', '299562', '138620', '87399', '212163', '109902', '47506', '36733', '73169');
INSERT INTO `2014student` VALUES ('天津', '15774', '8703', '1656', '14118', '15693', '17552', '9894', '2121', '15431', '51422', '27686', '8346', '43076', '19513', '9903', '4196', '15317');
INSERT INTO `2014student` VALUES ('河北', '12131', '7276', '409', '11722', '12060', '13175', '7711', '571', '12604', '38450', '22252', '2535', '35915', '14000', '7790', '1351', '12649');
INSERT INTO `2014student` VALUES ('山西', '8492', '4832', '345', '8147', '8476', '9141', '5434', '487', '8654', '27962', '15847', '2448', '25514', '10457', '5742', '1485', '8972');
INSERT INTO `2014student` VALUES ('内蒙古', '5469', '3226', '179', '5290', '5421', '5987', '3668', '257', '5730', '17278', '10254', '1179', '16099', '6338', '3507', '450', '5888');
INSERT INTO `2014student` VALUES ('辽宁', '28815', '16082', '1853', '26962', '28604', '31240', '17126', '2656', '28584', '92575', '49226', '13305', '79270', '38089', '19852', '7150', '30939');
INSERT INTO `2014student` VALUES ('吉林', '17003', '9820', '1817', '15186', '16999', '19960', '11972', '2187', '17773', '57678', '31722', '9624', '48054', '20402', '11227', '5211', '15191');
INSERT INTO `2014student` VALUES ('黑龙江', '20685', '10235', '1753', '18932', '20687', '20471', '10319', '2507', '17964', '61174', '30205', '11137', '50037', '23035', '10870', '4304', '18731');
INSERT INTO `2014student` VALUES ('上海', '36572', '18033', '4516', '32056', '35967', '43930', '21369', '6338', '37592', '133554', '62980', '27592', '105962', '52097', '22416', '13280', '38817');
INSERT INTO `2014student` VALUES ('江苏', '41679', '20198', '4066', '37613', '41434', '49105', '23221', '5677', '43428', '150690', '70023', '25933', '124757', '58321', '26812', '13683', '44638');
INSERT INTO `2014student` VALUES ('浙江', '16535', '7885', '1698', '14837', '16462', '20164', '9863', '2343', '17821', '60511', '28692', '10634', '49877', '20920', '9483', '4101', '16819');
INSERT INTO `2014student` VALUES ('安徽', '13859', '6139', '1155', '12704', '13301', '16249', '7152', '1414', '14835', '46590', '20300', '5085', '41505', '15878', '6636', '2223', '13655');
INSERT INTO `2014student` VALUES ('福建', '10878', '6135', '900', '9978', '10710', '12505', '6558', '1180', '11325', '39312', '20034', '5292', '34020', '14667', '6988', '2747', '11920');
INSERT INTO `2014student` VALUES ('江西', '8122', '4001', '154', '7968', '8054', '9704', '4956', '260', '9444', '27660', '13874', '1020', '26640', '9625', '4581', '534', '9091');
INSERT INTO `2014student` VALUES ('山东', '23379', '13107', '1532', '21847', '23385', '26545', '14956', '1967', '24578', '74313', '40834', '8467', '65846', '26638', '14245', '3579', '23059');
INSERT INTO `2014student` VALUES ('河南', '11172', '6201', '256', '10916', '11145', '12805', '7664', '468', '12337', '34760', '20097', '1530', '33230', '11114', '6291', '451', '10663');
INSERT INTO `2014student` VALUES ('湖北', '32261', '15590', '4043', '28218', '32193', '39141', '18686', '4902', '34239', '115113', '53289', '21547', '93566', '47479', '20946', '11671', '35808');
INSERT INTO `2014student` VALUES ('湖南', '18914', '9200', '1500', '17414', '19034', '20889', '10708', '2094', '18795', '66293', '31973', '11172', '55121', '26606', '12067', '6580', '20026');
INSERT INTO `2014student` VALUES ('广东', '25538', '12361', '2837', '22701', '25437', '29769', '14890', '3559', '26210', '86568', '41730', '14169', '72399', '33377', '15601', '6854', '26523');
INSERT INTO `2014student` VALUES ('广西', '8007', '4208', '159', '7848', '7974', '9238', '4845', '249', '8989', '25888', '13259', '917', '24971', '9641', '4600', '453', '9188');
INSERT INTO `2014student` VALUES ('海南', '1158', '636', '29', '1129', '1151', '1358', '784', '51', '1307', '4168', '2401', '193', '3975', '1574', '843', '105', '1469');
INSERT INTO `2014student` VALUES ('重庆', '14915', '7822', '889', '14026', '14717', '16647', '8895', '1258', '15389', '48979', '24795', '5474', '43505', '17303', '8790', '1877', '15426');
INSERT INTO `2014student` VALUES ('四川', '24873', '11585', '2100', '22773', '23749', '27817', '13126', '2911', '24906', '87867', '39208', '13399', '74468', '34522', '14475', '7305', '27217');
INSERT INTO `2014student` VALUES ('贵州', '4396', '2282', '40', '4356', '4480', '5097', '2816', '119', '4978', '14667', '7852', '410', '14257', '4804', '2431', '193', '4611');
INSERT INTO `2014student` VALUES ('云南', '8987', '4762', '355', '8632', '8966', '10462', '5671', '474', '9988', '30980', '16554', '2206', '28774', '11233', '5837', '1264', '9969');
INSERT INTO `2014student` VALUES ('西藏', '290', '152', '6', '284', '288', '484', '266', '16', '468', '1428', '805', '25', '1403', '447', '240', '5', '442');
INSERT INTO `2014student` VALUES ('陕西', '27083', '13032', '1847', '25236', '27788', '32217', '15271', '3448', '28769', '98756', '45369', '17143', '81613', '35730', '15953', '9113', '26617');
INSERT INTO `2014student` VALUES ('甘肃', '8637', '4299', '600', '8037', '8290', '9870', '4974', '820', '9050', '29080', '14170', '3370', '25710', '10987', '5303', '1772', '9215');
INSERT INTO `2014student` VALUES ('青海', '821', '445', '8', '813', '734', '1083', '566', '27', '1056', '3035', '1650', '62', '2973', '1010', '588', '20', '990');
INSERT INTO `2014student` VALUES ('宁夏', '1362', '837', '25', '1337', '1348', '1605', '988', '48', '1557', '4130', '2494', '111', '4019', '1435', '848', '29', '1406');
INSERT INTO `2014student` VALUES ('新疆', '4901', '2896', '140', '4761', '4884', '6097', '3614', '251', '5846', '17246', '10092', '952', '16294', '6485', '3593', '471', '6014');

-- ----------------------------
-- Table structure for 2015school
-- ----------------------------
DROP TABLE IF EXISTS `2015school`;
CREATE TABLE `2015school`  (
  `region` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `regular_total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `regular_central` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `degree` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `higher` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `adult_total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `adult_central` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `government` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of 2015school
-- ----------------------------
INSERT INTO `2015school` VALUES ('北京', '91', '37', '66', '25', '24', '8', '66');
INSERT INTO `2015school` VALUES ('天津', '55', '3', '29', '26', '14', '0', '0');
INSERT INTO `2015school` VALUES ('河北', '118', '4', '58', '60', '7', '1', '36');
INSERT INTO `2015school` VALUES ('山西', '79', '0', '31', '48', '12', '0', '48');
INSERT INTO `2015school` VALUES ('内蒙古', '53', '0', '17', '36', '2', '0', '0');
INSERT INTO `2015school` VALUES ('辽宁', '116', '5', '65', '51', '20', '2', '70');
INSERT INTO `2015school` VALUES ('吉林', '58', '2', '37', '21', '14', '0', '14');
INSERT INTO `2015school` VALUES ('黑龙江', '81', '3', '38', '43', '21', '0', '36');
INSERT INTO `2015school` VALUES ('上海', '67', '10', '38', '29', '14', '0', '215');
INSERT INTO `2015school` VALUES ('江苏', '162', '10', '77', '85', '8', '1', '0');
INSERT INTO `2015school` VALUES ('浙江', '105', '2', '57', '48', '9', '0', '20');
INSERT INTO `2015school` VALUES ('安徽', '119', '2', '44', '75', '6', '0', '7');
INSERT INTO `2015school` VALUES ('福建', '88', '2', '35', '53', '3', '0', '0');
INSERT INTO `2015school` VALUES ('江西', '97', '0', '42', '55', '8', '0', '23');
INSERT INTO `2015school` VALUES ('山东', '143', '3', '67', '76', '11', '0', '79');
INSERT INTO `2015school` VALUES ('河南', '129', '1', '52', '77', '12', '0', '51');
INSERT INTO `2015school` VALUES ('湖北', '126', '8', '67', '59', '14', '0', '19');
INSERT INTO `2015school` VALUES ('湖南', '124', '3', '51', '73', '12', '0', '13');
INSERT INTO `2015school` VALUES ('广东', '143', '5', '62', '81', '15', '0', '31');
INSERT INTO `2015school` VALUES ('广西', '71', '0', '36', '35', '6', '0', '0');
INSERT INTO `2015school` VALUES ('海南', '17', '0', '6', '11', '1', '0', '0');
INSERT INTO `2015school` VALUES ('重庆', '64', '2', '25', '39', '4', '0', '7');
INSERT INTO `2015school` VALUES ('四川', '109', '6', '51', '58', '17', '1', '39');
INSERT INTO `2015school` VALUES ('贵州', '59', '0', '27', '32', '4', '0', '0');
INSERT INTO `2015school` VALUES ('云南', '69', '1', '31', '38', '2', '0', '0');
INSERT INTO `2015school` VALUES ('西藏', '6', '0', '3', '3', '0', '0', '0');
INSERT INTO `2015school` VALUES ('陕西', '92', '6', '55', '37', '16', '0', '0');
INSERT INTO `2015school` VALUES ('甘肃', '45', '2', '22', '23', '6', '0', '39');
INSERT INTO `2015school` VALUES ('青海', '12', '0', '4', '8', '2', '0', '0');
INSERT INTO `2015school` VALUES ('宁夏', '18', '1', '8', '10', '1', '0', '0');
INSERT INTO `2015school` VALUES ('新疆', '44', '0', '18', '26', '7', '0', '0');

-- ----------------------------
-- Table structure for 2015student
-- ----------------------------
DROP TABLE IF EXISTS `2015student`;
CREATE TABLE `2015student`  (
  `region` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `graduates_total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `graduates_female` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `graduates_doctor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `graduates_master` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `degree_awarded` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `entrants_total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `entrants_female` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `entrants_doctor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `entrants_master` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enrolment_total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enrolment_female` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enrolment_doctor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enrolment_master` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nextYear_total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nextYear_female` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nextYear_doctor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nextYear_master` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of 2015student
-- ----------------------------
INSERT INTO `2015student` VALUES ('北京', '85549', '43451', '16881', '68668', '85022', '103456', '51068', '22214', '81242', '309960', '145037', '91686', '218274', '116390', '53343', '39061', '77329');
INSERT INTO `2015student` VALUES ('天津', '16253', '8946', '1729', '14524', '16155', '18047', '10248', '2170', '15877', '53002', '29205', '8691', '44311', '19557', '9964', '3693', '15864');
INSERT INTO `2015student` VALUES ('河北', '12337', '7407', '389', '11948', '12297', '14053', '8183', '595', '13458', '40046', '22963', '2719', '37327', '14423', '7923', '1417', '13006');
INSERT INTO `2015student` VALUES ('山西', '8795', '4971', '364', '8431', '8739', '9769', '5953', '497', '9272', '28668', '16684', '2543', '26125', '10312', '5933', '1448', '8864');
INSERT INTO `2015student` VALUES ('内蒙古', '5386', '3410', '149', '5237', '5229', '6195', '3878', '267', '5928', '17962', '10851', '1292', '16670', '6735', '3806', '386', '6349');
INSERT INTO `2015student` VALUES ('辽宁', '30011', '16175', '1729', '28282', '29721', '32970', '18122', '2699', '30271', '94387', '50430', '13748', '80639', '35518', '17725', '7042', '28476');
INSERT INTO `2015student` VALUES ('吉林', '18100', '10433', '1823', '16277', '18084', '19101', '10854', '2206', '16895', '58087', '33214', '9786', '48301', '20569', '11433', '5406', '15163');
INSERT INTO `2015student` VALUES ('黑龙江', '19151', '9723', '1700', '17451', '19116', '21172', '10737', '2570', '18602', '62044', '30661', '11872', '50172', '23658', '12047', '4789', '18869');
INSERT INTO `2015student` VALUES ('上海', '37868', '18710', '4490', '33378', '37837', '46005', '23616', '6493', '39512', '138287', '66621', '28610', '109677', '53259', '24404', '12893', '40366');
INSERT INTO `2015student` VALUES ('江苏', '42763', '20487', '4162', '38601', '42488', '51015', '24557', '5776', '45239', '155560', '72441', '26896', '128664', '59227', '26613', '13934', '45293');
INSERT INTO `2015student` VALUES ('浙江', '17117', '8545', '1680', '15437', '17170', '21496', '10764', '2421', '19075', '63528', '30405', '10863', '52665', '21001', '9813', '3574', '17427');
INSERT INTO `2015student` VALUES ('安徽', '15409', '6441', '1294', '14115', '13894', '17946', '7908', '1788', '16158', '50410', '21719', '5893', '44517', '17927', '7127', '2469', '15458');
INSERT INTO `2015student` VALUES ('福建', '10969', '5952', '935', '10034', '10873', '13288', '6951', '1258', '12030', '41338', '20976', '5479', '35859', '16036', '7823', '2915', '13121');
INSERT INTO `2015student` VALUES ('江西', '8829', '4506', '171', '8658', '8821', '10313', '5324', '296', '10017', '28868', '14583', '1127', '27741', '9903', '4369', '569', '9334');
INSERT INTO `2015student` VALUES ('山东', '23192', '12892', '1494', '21698', '23184', '27548', '15702', '2025', '25523', '77630', '42986', '8913', '68717', '28300', '14398', '4417', '23883');
INSERT INTO `2015student` VALUES ('河南', '10607', '6256', '201', '10406', '10552', '13561', '8014', '500', '13061', '37559', '21663', '1792', '35767', '12501', '6892', '608', '11893');
INSERT INTO `2015student` VALUES ('湖北', '34391', '16824', '3524', '30867', '34523', '40060', '19571', '4950', '35110', '117934', '55083', '22093', '95841', '47721', '21229', '12137', '35584');
INSERT INTO `2015student` VALUES ('湖南', '18526', '9370', '1495', '17031', '18478', '21649', '11222', '2145', '19504', '68870', '33557', '11633', '57237', '29576', '13751', '6927', '22649');
INSERT INTO `2015student` VALUES ('广东', '26174', '13002', '2947', '23227', '26082', '30650', '15647', '3540', '27110', '89404', '43712', '14474', '74930', '34991', '16515', '7132', '27859');
INSERT INTO `2015student` VALUES ('广西', '8444', '4355', '136', '8308', '8448', '9619', '5084', '268', '9351', '26731', '13934', '1047', '25684', '9781', '4728', '530', '9251');
INSERT INTO `2015student` VALUES ('海南', '1224', '714', '27', '1197', '1173', '1547', '912', '58', '1489', '4519', '2582', '218', '4301', '1641', '822', '109', '1532');
INSERT INTO `2015student` VALUES ('重庆', '14866', '7893', '827', '14039', '14837', '17231', '9254', '1283', '15948', '50534', '25915', '5658', '44876', '18026', '9729', '1976', '16050');
INSERT INTO `2015student` VALUES ('四川', '25445', '11814', '2085', '23360', '24894', '28895', '14001', '2966', '25929', '89858', '40428', '14057', '75801', '34613', '14413', '7454', '27159');
INSERT INTO `2015student` VALUES ('贵州', '4538', '2378', '47', '4491', '4492', '5407', '2986', '135', '5272', '15484', '8385', '496', '14988', '5281', '2829', '238', '5043');
INSERT INTO `2015student` VALUES ('云南', '9667', '5240', '331', '9336', '9576', '10774', '6093', '501', '10273', '32005', '17461', '2333', '29672', '11831', '6164', '1337', '10494');
INSERT INTO `2015student` VALUES ('西藏', '423', '231', '5', '418', '416', '503', '278', '21', '482', '1476', '838', '43', '1433', '531', '309', '6', '525');
INSERT INTO `2015student` VALUES ('陕西', '28491', '14048', '2332', '26159', '28008', '33294', '16572', '3589', '29705', '101962', '48112', '17934', '84028', '35883', '16330', '9165', '26718');
INSERT INTO `2015student` VALUES ('甘肃', '9195', '4610', '644', '8551', '8841', '10089', '5210', '825', '9264', '29637', '14662', '3516', '26121', '10694', '5076', '1879', '8815');
INSERT INTO `2015student` VALUES ('青海', '939', '498', '8', '931', '962', '1218', '670', '35', '1183', '3222', '1730', '87', '3135', '1074', '583', '27', '1047');
INSERT INTO `2015student` VALUES ('宁夏', '1410', '847', '29', '1381', '1394', '1703', '1064', '56', '1647', '4403', '2710', '138', '4265', '1575', '968', '34', '1541');
INSERT INTO `2015student` VALUES ('新疆', '5453', '3173', '150', '5303', '5266', '6481', '3836', '269', '6212', '18031', '10615', '1050', '16981', '6610', '3800', '530', '6080');

-- ----------------------------
-- Table structure for 2016school
-- ----------------------------
DROP TABLE IF EXISTS `2016school`;
CREATE TABLE `2016school`  (
  `region` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `regular_total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `regular_central` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `degree` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `higher` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `adult_total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `adult_central` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `government` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of 2016school
-- ----------------------------
INSERT INTO `2016school` VALUES ('北京', '91', '37', '66', '25', '24', '8', '65');
INSERT INTO `2016school` VALUES ('天津', '55', '3', '30', '25', '14', '0', '0');
INSERT INTO `2016school` VALUES ('河北', '120', '4', '61', '59', '6', '1', '36');
INSERT INTO `2016school` VALUES ('山西', '80', '0', '33', '47', '11', '0', '48');
INSERT INTO `2016school` VALUES ('内蒙古', '53', '0', '17', '36', '2', '0', '0');
INSERT INTO `2016school` VALUES ('辽宁', '116', '5', '65', '51', '20', '2', '68');
INSERT INTO `2016school` VALUES ('吉林', '60', '2', '37', '23', '14', '0', '14');
INSERT INTO `2016school` VALUES ('黑龙江', '82', '3', '39', '43', '21', '0', '36');
INSERT INTO `2016school` VALUES ('上海', '64', '10', '38', '26', '14', '0', '217');
INSERT INTO `2016school` VALUES ('江苏', '166', '10', '77', '89', '8', '1', '0');
INSERT INTO `2016school` VALUES ('浙江', '107', '2', '59', '48', '9', '0', '20');
INSERT INTO `2016school` VALUES ('安徽', '119', '2', '45', '74', '6', '0', '7');
INSERT INTO `2016school` VALUES ('福建', '88', '2', '37', '51', '3', '0', '0');
INSERT INTO `2016school` VALUES ('江西', '98', '0', '42', '56', '8', '0', '23');
INSERT INTO `2016school` VALUES ('山东', '144', '3', '67', '77', '11', '0', '71');
INSERT INTO `2016school` VALUES ('河南', '129', '1', '55', '74', '11', '0', '51');
INSERT INTO `2016school` VALUES ('湖北', '128', '8', '68', '60', '14', '0', '18');
INSERT INTO `2016school` VALUES ('湖南', '123', '3', '51', '72', '12', '0', '29');
INSERT INTO `2016school` VALUES ('广东', '147', '5', '62', '85', '14', '0', '30');
INSERT INTO `2016school` VALUES ('广西', '73', '0', '36', '37', '6', '0', '0');
INSERT INTO `2016school` VALUES ('海南', '18', '0', '7', '11', '1', '0', '0');
INSERT INTO `2016school` VALUES ('重庆', '65', '2', '25', '40', '4', '0', '6');
INSERT INTO `2016school` VALUES ('四川', '109', '6', '51', '58', '17', '1', '39');
INSERT INTO `2016school` VALUES ('贵州', '64', '0', '27', '37', '3', '0', '0');
INSERT INTO `2016school` VALUES ('云南', '72', '1', '31', '41', '2', '0', '0');
INSERT INTO `2016school` VALUES ('西藏', '7', '0', '4', '3', '0', '0', '0');
INSERT INTO `2016school` VALUES ('陕西', '93', '6', '55', '38', '15', '0', '0');
INSERT INTO `2016school` VALUES ('甘肃', '49', '2', '22', '27', '5', '0', '35');
INSERT INTO `2016school` VALUES ('青海', '12', '0', '4', '8', '2', '0', '0');
INSERT INTO `2016school` VALUES ('宁夏', '18', '1', '8', '10', '1', '0', '0');
INSERT INTO `2016school` VALUES ('新疆', '46', '0', '18', '28', '6', '0', '0');

-- ----------------------------
-- Table structure for 2016student
-- ----------------------------
DROP TABLE IF EXISTS `2016student`;
CREATE TABLE `2016student`  (
  `region` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `graduates_total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `graduates_female` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `graduates_doctor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `graduates_master` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `degree_awarded` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `entrants_total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `entrants_female` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `entrants_doctor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `entrants_master` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enrolment_total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enrolment_female` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enrolment_doctor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enrolment_master` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nextYear_total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nextYear_female` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nextYear_doctor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nextYear_master` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of 2016student
-- ----------------------------
INSERT INTO `2016student` VALUES ('北京', '88629', '43720', '16968', '71661', '88479', '105635', '53463', '22630', '83005', '317610', '151484', '95356', '222254', '118493', '55200', '39441', '79052');
INSERT INTO `2016student` VALUES ('天津', '16997', '9365', '1685', '15312', '16767', '18696', '10870', '2193', '16503', '54491', '30487', '9052', '45439', '19483', '10441', '3882', '15601');
INSERT INTO `2016student` VALUES ('河北', '12606', '7525', '424', '12182', '12553', '14469', '8298', '654', '13815', '41673', '23752', '2893', '38780', '14880', '8168', '1636', '13244');
INSERT INTO `2016student` VALUES ('山西', '9118', '5394', '376', '8742', '9083', '10078', '6265', '531', '9547', '29299', '17473', '2636', '26663', '10731', '5883', '1606', '9125');
INSERT INTO `2016student` VALUES ('内蒙古', '5652', '3340', '179', '5473', '5789', '6427', '4109', '301', '6126', '18520', '11388', '1394', '17126', '7132', '4224', '504', '6628');
INSERT INTO `2016student` VALUES ('辽宁', '27760', '15545', '1845', '25915', '27090', '33704', '18895', '2762', '30942', '99083', '53042', '14545', '84538', '38093', '19432', '7579', '30514');
INSERT INTO `2016student` VALUES ('吉林', '17479', '10427', '1696', '15783', '17460', '19680', '11996', '2254', '17426', '59981', '34997', '10172', '49809', '22326', '12617', '5719', '16607');
INSERT INTO `2016student` VALUES ('黑龙江', '19510', '10202', '1650', '17860', '19479', '21889', '11266', '2638', '19251', '63620', '31337', '12526', '51094', '25406', '11836', '6235', '19171');
INSERT INTO `2016student` VALUES ('上海', '39733', '19729', '5009', '34724', '38941', '49079', '25955', '6809', '42270', '144987', '72232', '29857', '115130', '55650', '26291', '13458', '42192');
INSERT INTO `2016student` VALUES ('江苏', '43683', '21262', '4112', '39571', '43387', '53054', '26613', '5997', '47057', '161530', '76735', '28139', '133391', '61955', '27275', '14714', '47241');
INSERT INTO `2016student` VALUES ('浙江', '17801', '8734', '1817', '15984', '17571', '22246', '11286', '2580', '19666', '67232', '32492', '11507', '55725', '22408', '10422', '4010', '18398');
INSERT INTO `2016student` VALUES ('安徽', '15994', '6813', '1329', '14665', '14920', '18523', '8383', '1943', '16580', '51738', '22830', '6445', '45293', '17829', '7713', '2717', '15112');
INSERT INTO `2016student` VALUES ('福建', '11968', '6346', '995', '10973', '11933', '14088', '7571', '1345', '12743', '42731', '21901', '5700', '37031', '15945', '7327', '2329', '13616');
INSERT INTO `2016student` VALUES ('江西', '9008', '4568', '169', '8839', '9014', '10775', '5721', '350', '10425', '30344', '15775', '1290', '29054', '10295', '5287', '643', '9652');
INSERT INTO `2016student` VALUES ('山东', '24137', '13698', '1591', '22546', '23583', '28543', '16304', '2109', '26434', '82055', '45755', '9322', '72733', '29817', '16037', '4615', '25202');
INSERT INTO `2016student` VALUES ('河南', '11954', '6882', '322', '11632', '11792', '14206', '8470', '567', '13639', '39525', '23133', '2005', '37520', '13386', '7624', '654', '12732');
INSERT INTO `2016student` VALUES ('湖北', '35124', '17016', '3677', '31447', '35323', '40282', '20189', '5029', '35253', '120504', '57487', '23130', '97374', '49040', '22148', '12824', '36216');
INSERT INTO `2016student` VALUES ('湖南', '18813', '9540', '1540', '17273', '18933', '22243', '11807', '2209', '20034', '70759', '35223', '11733', '59026', '28904', '12235', '7401', '21503');
INSERT INTO `2016student` VALUES ('广东', '27155', '13667', '2947', '24208', '26862', '32393', '16903', '3742', '28651', '92875', '46611', '14990', '77885', '35646', '16352', '7424', '28222');
INSERT INTO `2016student` VALUES ('广西', '8840', '4585', '169', '8671', '8809', '10025', '5433', '326', '9699', '27713', '14582', '1198', '26515', '10596', '4881', '602', '9994');
INSERT INTO `2016student` VALUES ('海南', '1248', '746', '19', '1229', '1228', '1657', '979', '76', '1581', '4921', '2829', '271', '4650', '1756', '1003', '137', '1619');
INSERT INTO `2016student` VALUES ('重庆', '15378', '8123', '925', '14453', '15363', '17562', '9440', '1332', '16230', '52156', '26949', '5997', '46159', '18518', '9391', '2141', '16377');
INSERT INTO `2016student` VALUES ('四川', '25210', '11889', '2055', '23155', '24539', '29508', '15054', '3074', '26434', '92420', '43464', '14701', '77719', '35179', '15492', '7911', '27268');
INSERT INTO `2016student` VALUES ('贵州', '4728', '2553', '49', '4679', '4760', '5736', '3363', '171', '5565', '16448', '9160', '611', '15837', '5577', '3017', '289', '5288');
INSERT INTO `2016student` VALUES ('云南', '9930', '5492', '379', '9551', '9915', '11185', '6401', '556', '10629', '33041', '18222', '2473', '30568', '12173', '6437', '1233', '10940');
INSERT INTO `2016student` VALUES ('西藏', '477', '299', '5', '472', '471', '584', '326', '27', '557', '1553', '875', '64', '1489', '517', '312', '16', '501');
INSERT INTO `2016student` VALUES ('陕西', '28104', '14201', '2269', '25835', '28156', '34230', '17618', '3751', '30479', '105671', '51053', '18807', '86864', '37812', '16051', '9340', '28472');
INSERT INTO `2016student` VALUES ('甘肃', '8806', '4470', '601', '8205', '8610', '10699', '5620', '873', '9826', '31199', '15758', '3720', '27479', '11416', '5391', '2025', '9391');
INSERT INTO `2016student` VALUES ('青海', '990', '541', '7', '983', '901', '1319', '718', '47', '1272', '3508', '1883', '125', '3383', '1090', '601', '43', '1047');
INSERT INTO `2016student` VALUES ('宁夏', '1532', '961', '34', '1498', '1521', '1815', '1117', '72', '1743', '4650', '2820', '175', '4475', '1635', '988', '48', '1587');
INSERT INTO `2016student` VALUES ('新疆', '5574', '3404', '168', '5406', '5549', '6734', '4144', '304', '6430', '19214', '11381', '1193', '18021', '7065', '4157', '623', '6442');

-- ----------------------------
-- Table structure for 2017school
-- ----------------------------
DROP TABLE IF EXISTS `2017school`;
CREATE TABLE `2017school`  (
  `region` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `regular_total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `regular_central` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `degree` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `higher` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `adult_total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `adult_central` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `government` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of 2017school
-- ----------------------------
INSERT INTO `2017school` VALUES ('北京', '92', '38', '67', '25', '23', '8', '65');
INSERT INTO `2017school` VALUES ('天津', '57', '3', '30', '27', '14', '0', '0');
INSERT INTO `2017school` VALUES ('河北', '121', '4', '61', '60', '6', '1', '38');
INSERT INTO `2017school` VALUES ('山西', '80', '0', '33', '47', '11', '0', '45');
INSERT INTO `2017school` VALUES ('内蒙古', '53', '0', '17', '36', '2', '0', '0');
INSERT INTO `2017school` VALUES ('辽宁', '115', '5', '64', '51', '19', '2', '68');
INSERT INTO `2017school` VALUES ('吉林', '62', '2', '37', '25', '14', '0', '14');
INSERT INTO `2017school` VALUES ('黑龙江', '81', '3', '39', '42', '21', '0', '36');
INSERT INTO `2017school` VALUES ('上海', '64', '10', '38', '26', '14', '0', '213');
INSERT INTO `2017school` VALUES ('江苏', '167', '10', '77', '90', '8', '1', '0');
INSERT INTO `2017school` VALUES ('浙江', '107', '2', '59', '48', '9', '0', '20');
INSERT INTO `2017school` VALUES ('安徽', '119', '2', '45', '74', '6', '0', '7');
INSERT INTO `2017school` VALUES ('福建', '89', '2', '37', '52', '3', '0', '0');
INSERT INTO `2017school` VALUES ('江西', '100', '0', '43', '57', '8', '0', '23');
INSERT INTO `2017school` VALUES ('山东', '145', '3', '67', '78', '11', '0', '65');
INSERT INTO `2017school` VALUES ('河南', '134', '1', '55', '79', '11', '0', '51');
INSERT INTO `2017school` VALUES ('湖北', '129', '8', '68', '61', '14', '0', '18');
INSERT INTO `2017school` VALUES ('湖南', '124', '3', '51', '73', '12', '0', '27');
INSERT INTO `2017school` VALUES ('广东', '151', '5', '64', '87', '14', '0', '30');
INSERT INTO `2017school` VALUES ('广西', '74', '0', '36', '38', '6', '0', '0');
INSERT INTO `2017school` VALUES ('海南', '19', '0', '7', '12', '1', '0', '0');
INSERT INTO `2017school` VALUES ('重庆', '65', '2', '25', '40', '4', '0', '6');
INSERT INTO `2017school` VALUES ('四川', '109', '6', '51', '58', '17', '1', '39');
INSERT INTO `2017school` VALUES ('贵州', '70', '0', '29', '41', '3', '0', '0');
INSERT INTO `2017school` VALUES ('云南', '77', '1', '32', '45', '2', '0', '0');
INSERT INTO `2017school` VALUES ('西藏', '7', '0', '4', '3', '0', '0', '0');
INSERT INTO `2017school` VALUES ('陕西', '93', '6', '55', '38', '15', '0', '0');
INSERT INTO `2017school` VALUES ('甘肃', '49', '2', '22', '27', '5', '0', '35');
INSERT INTO `2017school` VALUES ('青海', '12', '0', '4', '8', '2', '0', '0');
INSERT INTO `2017school` VALUES ('宁夏', '19', '1', '8', '11', '1', '0', '0');
INSERT INTO `2017school` VALUES ('新疆', '47', '0', '18', '29', '6', '0', '0');

-- ----------------------------
-- Table structure for 2017student
-- ----------------------------
DROP TABLE IF EXISTS `2017student`;
CREATE TABLE `2017student`  (
  `region` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `graduates_total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `graduates_female` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `graduates_doctor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `graduates_master` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `degree_awarded` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `entrants_total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `entrants_female` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `entrants_doctor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `entrants_master` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enrolment_total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enrolment_female` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enrolment_doctor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enrolment_master` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nextYear_total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nextYear_female` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nextYear_doctor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nextYear_master` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of 2017student
-- ----------------------------
INSERT INTO `2017student` VALUES ('北京', '90482', '44363', '17933', '72549', '110758', '120265', '60787', '23866', '96399', '400225', '183274', '99889', '300336', '123613', '58353', '43456', '80157');
INSERT INTO `2017student` VALUES ('天津', '16189', '9751', '1584', '14605', '17530', '23292', '13073', '2433', '20859', '72037', '37095', '9473', '62564', '20485', '11468', '3934', '16551');
INSERT INTO `2017student` VALUES ('河北', '12771', '7401', '423', '12348', '14537', '17162', '9450', '724', '16438', '52220', '28044', '3111', '49109', '15791', '8621', '1578', '14213');
INSERT INTO `2017student` VALUES ('山西', '8983', '5351', '450', '8533', '10968', '12143', '7177', '580', '11563', '37870', '20924', '2719', '35151', '11266', '6746', '1522', '9744');
INSERT INTO `2017student` VALUES ('内蒙古', '5635', '3529', '173', '5462', '6879', '8223', '5266', '339', '7884', '26790', '15892', '1558', '25232', '7546', '4644', '759', '6787');
INSERT INTO `2017student` VALUES ('辽宁', '29767', '16542', '1787', '27980', '34052', '39439', '21986', '2929', '36510', '122624', '63408', '15366', '107258', '39984', '20357', '8077', '31907');
INSERT INTO `2017student` VALUES ('吉林', '18717', '11149', '1798', '16919', '23103', '23095', '14076', '2418', '20677', '72319', '40714', '10476', '61843', '21876', '11907', '5821', '16055');
INSERT INTO `2017student` VALUES ('黑龙江', '19328', '10054', '1781', '17547', '22914', '25076', '12503', '2847', '22229', '81158', '38478', '13132', '68026', '25075', '12299', '5514', '19561');
INSERT INTO `2017student` VALUES ('上海', '40982', '20951', '5567', '35415', '49889', '59519', '30903', '7702', '51817', '196953', '93289', '31875', '165078', '58480', '28857', '13586', '44894');
INSERT INTO `2017student` VALUES ('江苏', '45799', '21679', '4467', '41332', '53687', '64455', '31668', '6494', '57961', '220209', '96544', '29155', '191054', '63624', '29452', '14596', '49028');
INSERT INTO `2017student` VALUES ('浙江', '18717', '9321', '1826', '16891', '21893', '27368', '13889', '2830', '24538', '89087', '42102', '11976', '77111', '24151', '10845', '4262', '19889');
INSERT INTO `2017student` VALUES ('安徽', '16577', '7178', '1368', '15209', '16512', '22255', '9798', '2242', '20013', '65873', '27713', '7919', '57954', '18279', '8491', '2567', '15712');
INSERT INTO `2017student` VALUES ('福建', '11973', '6362', '779', '11194', '14205', '17620', '9509', '1486', '16134', '56927', '27888', '6256', '50671', '16468', '8244', '2636', '13832');
INSERT INTO `2017student` VALUES ('江西', '9132', '4777', '240', '8892', '11550', '13477', '7196', '377', '13100', '40430', '20446', '1437', '38993', '11078', '5766', '702', '10376');
INSERT INTO `2017student` VALUES ('山东', '24755', '14027', '1529', '23226', '29829', '35564', '19830', '2312', '33252', '115692', '59821', '10060', '105632', '31805', '17259', '5088', '26717');
INSERT INTO `2017student` VALUES ('河南', '12933', '7260', '318', '12615', '14935', '18352', '10262', '648', '17704', '53687', '29741', '2345', '51342', '14084', '7568', '836', '13248');
INSERT INTO `2017student` VALUES ('湖北', '35047', '17162', '3895', '31152', '43605', '51320', '25403', '5373', '45947', '185362', '82782', '24326', '161036', '50616', '23580', '13524', '37092');
INSERT INTO `2017student` VALUES ('湖南', '19126', '9775', '1819', '17307', '22656', '27581', '14593', '2506', '25075', '99122', '47585', '12271', '86851', '30234', '13032', '7076', '23158');
INSERT INTO `2017student` VALUES ('广东', '27148', '14085', '3055', '24093', '30610', '38832', '20349', '3997', '34835', '119987', '58760', '15686', '104301', '37873', '18601', '7676', '30197');
INSERT INTO `2017student` VALUES ('广西', '9044', '4695', '197', '8847', '9588', '12038', '6613', '390', '11648', '34504', '17994', '1382', '33122', '10610', '4660', '668', '9942');
INSERT INTO `2017student` VALUES ('海南', '1336', '774', '50', '1286', '1550', '2266', '1277', '94', '2172', '7818', '4167', '313', '7505', '1980', '1067', '101', '1879');
INSERT INTO `2017student` VALUES ('重庆', '15517', '8212', '1046', '14471', '18441', '22437', '12493', '1454', '20983', '73485', '39803', '6213', '67272', '19590', '10444', '2212', '17378');
INSERT INTO `2017student` VALUES ('四川', '25776', '12402', '2226', '23550', '29117', '36776', '18275', '3320', '33456', '124446', '56045', '15562', '108884', '36317', '16749', '8383', '27934');
INSERT INTO `2017student` VALUES ('贵州', '4929', '2740', '72', '4857', '5309', '7117', '4133', '215', '6902', '22141', '11967', '750', '21391', '6100', '3362', '343', '5757');
INSERT INTO `2017student` VALUES ('云南', '10253', '5645', '366', '9887', '12140', '14026', '8061', '630', '13396', '44983', '23889', '2721', '42262', '12654', '6643', '1334', '11320');
INSERT INTO `2017student` VALUES ('西藏', '467', '289', '4', '463', '465', '706', '363', '34', '672', '1804', '986', '94', '1710', '579', '341', '33', '546');
INSERT INTO `2017student` VALUES ('陕西', '29253', '14725', '2412', '26841', '36156', '40842', '20269', '4187', '36655', '146780', '68217', '20188', '126592', '40131', '18078', '9754', '30377');
INSERT INTO `2017student` VALUES ('甘肃', '9152', '4681', '643', '8509', '10086', '12810', '6887', '942', '11868', '39220', '19605', '3970', '35250', '12020', '5867', '2144', '9876');
INSERT INTO `2017student` VALUES ('青海', '1051', '563', '12', '1039', '1213', '1730', '1057', '65', '1665', '4813', '2856', '176', '4637', '1300', '678', '64', '1236');
INSERT INTO `2017student` VALUES ('宁夏', '1570', '958', '43', '1527', '2025', '2278', '1429', '89', '2189', '6324', '3925', '219', '6105', '1709', '1025', '59', '1650');
INSERT INTO `2017student` VALUES ('新疆', '5636', '3412', '169', '5467', '6449', '8039', '5054', '355', '7684', '24671', '14180', '1379', '23292', '7707', '4557', '717', '6990');

-- ----------------------------
-- Table structure for 2018school
-- ----------------------------
DROP TABLE IF EXISTS `2018school`;
CREATE TABLE `2018school`  (
  `region` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `regular_total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `regular_central` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `degree` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `higher` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `adult_total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `adult_central` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `government` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of 2018school
-- ----------------------------
INSERT INTO `2018school` VALUES ('北京', '92', '38', '67', '25', '23', '8', '64');
INSERT INTO `2018school` VALUES ('天津', '56', '3', '30', '26', '14', '0', '0');
INSERT INTO `2018school` VALUES ('河北', '122', '4', '61', '61', '6', '1', '38');
INSERT INTO `2018school` VALUES ('山西', '83', '0', '33', '50', '10', '0', '45');
INSERT INTO `2018school` VALUES ('内蒙古', '53', '0', '17', '36', '2', '0', '0');
INSERT INTO `2018school` VALUES ('辽宁', '115', '5', '64', '51', '19', '2', '60');
INSERT INTO `2018school` VALUES ('吉林', '62', '2', '37', '25', '14', '0', '15');
INSERT INTO `2018school` VALUES ('黑龙江', '81', '3', '39', '42', '20', '0', '35');
INSERT INTO `2018school` VALUES ('上海', '64', '10', '39', '25', '14', '0', '210');
INSERT INTO `2018school` VALUES ('江苏', '167', '10', '77', '90', '8', '1', '0');
INSERT INTO `2018school` VALUES ('浙江', '108', '2', '60', '48', '9', '0', '20');
INSERT INTO `2018school` VALUES ('安徽', '119', '2', '45', '74', '6', '0', '7');
INSERT INTO `2018school` VALUES ('福建', '89', '2', '37', '52', '3', '0', '0');
INSERT INTO `2018school` VALUES ('江西', '102', '0', '43', '59', '8', '0', '23');
INSERT INTO `2018school` VALUES ('山东', '145', '3', '67', '78', '11', '0', '65');
INSERT INTO `2018school` VALUES ('河南', '139', '1', '55', '84', '10', '0', '50');
INSERT INTO `2018school` VALUES ('湖北', '128', '8', '68', '60', '14', '0', '18');
INSERT INTO `2018school` VALUES ('湖南', '124', '3', '51', '73', '12', '0', '27');
INSERT INTO `2018school` VALUES ('广东', '152', '5', '64', '88', '14', '0', '29');
INSERT INTO `2018school` VALUES ('广西', '75', '0', '36', '39', '6', '0', '0');
INSERT INTO `2018school` VALUES ('海南', '20', '0', '7', '13', '1', '0', '0');
INSERT INTO `2018school` VALUES ('重庆', '65', '2', '25', '40', '4', '0', '6');
INSERT INTO `2018school` VALUES ('四川', '119', '6', '51', '68', '16', '1', '39');
INSERT INTO `2018school` VALUES ('贵州', '72', '0', '29', '43', '3', '0', '0');
INSERT INTO `2018school` VALUES ('云南', '79', '1', '32', '47', '2', '0', '0');
INSERT INTO `2018school` VALUES ('西藏', '7', '0', '4', '3', '0', '0', '0');
INSERT INTO `2018school` VALUES ('陕西', '95', '6', '55', '40', '14', '0', '0');
INSERT INTO `2018school` VALUES ('甘肃', '49', '2', '22', '27', '5', '0', '35');
INSERT INTO `2018school` VALUES ('青海', '12', '0', '4', '8', '2', '0', '0');
INSERT INTO `2018school` VALUES ('宁夏', '19', '1', '8', '11', '1', '0', '0');
INSERT INTO `2018school` VALUES ('新疆', '50', '0', '18', '32', '6', '0', '0');

-- ----------------------------
-- Table structure for 2018student
-- ----------------------------
DROP TABLE IF EXISTS `2018student`;
CREATE TABLE `2018student`  (
  `region` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `graduates_total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `graduates_female` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `graduates_doctor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `graduates_master` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `degree_awarded` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `entrants_total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `entrants_female` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `entrants_doctor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `entrants_master` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enrolment_total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enrolment_female` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enrolment_doctor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enrolment_master` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nextYear_total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nextYear_female` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nextYear_doctor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nextYear_master` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of 2018student
-- ----------------------------
INSERT INTO `2018student` VALUES ('北京', '92607', '47092', '18354', '74253', '109569', '125993', '64680', '26088', '99905', '402504', '188895', '106030', '296474', '128642', '62235', '41796', '86846');
INSERT INTO `2018student` VALUES ('天津', '17182', '9980', '1731', '15451', '18034', '24798', '14130', '2697', '22101', '76866', '40269', '10463', '66403', '23453', '12531', '4343', '19110');
INSERT INTO `2018student` VALUES ('河北', '13669', '7937', '441', '13228', '15477', '18346', '10327', '866', '17480', '54765', '29686', '3487', '51278', '16655', '9146', '1717', '14938');
INSERT INTO `2018student` VALUES ('山西', '9593', '5919', '423', '9170', '11434', '12731', '7701', '660', '12071', '38638', '22170', '2913', '35725', '11900', '6989', '1675', '10225');
INSERT INTO `2018student` VALUES ('内蒙古', '5971', '4000', '212', '5759', '7207', '8411', '5446', '376', '8035', '27147', '16416', '1695', '25452', '8258', '5404', '805', '7453');
INSERT INTO `2018student` VALUES ('辽宁', '31039', '16679', '2022', '29017', '34811', '41424', '23313', '3185', '38239', '126638', '66770', '15853', '110785', '43302', '21821', '8562', '34740');
INSERT INTO `2018student` VALUES ('吉林', '18263', '10478', '1853', '16410', '21448', '24189', '15068', '2658', '21531', '73422', '43049', '10991', '62431', '22816', '13105', '5918', '16898');
INSERT INTO `2018student` VALUES ('黑龙江', '19461', '10082', '1765', '17696', '21625', '26626', '13360', '3334', '23292', '79579', '38186', '14428', '65151', '28462', '13228', '6973', '21489');
INSERT INTO `2018student` VALUES ('上海', '43084', '22770', '5580', '37504', '51561', '63628', '33562', '9032', '54596', '203961', '99579', '34722', '169239', '61949', '30048', '14357', '47592');
INSERT INTO `2018student` VALUES ('江苏', '47412', '23798', '4611', '42801', '55230', '69138', '34832', '7476', '61662', '228801', '105119', '31472', '197329', '66216', '30492', '15015', '51201');
INSERT INTO `2018student` VALUES ('浙江', '20676', '10382', '2162', '18514', '22795', '29760', '14752', '3339', '26421', '93896', '44528', '12943', '80953', '25218', '11553', '4377', '20841');
INSERT INTO `2018student` VALUES ('安徽', '17705', '8017', '1602', '16103', '17764', '23870', '10903', '2594', '21276', '69303', '29656', '8867', '60436', '19001', '8248', '2671', '16330');
INSERT INTO `2018student` VALUES ('福建', '12245', '6546', '917', '11328', '14131', '18803', '10309', '1695', '17108', '59453', '30245', '6961', '52492', '17641', '9061', '2878', '14763');
INSERT INTO `2018student` VALUES ('江西', '10091', '5275', '224', '9867', '12822', '14757', '7812', '553', '14204', '42406', '21978', '1799', '40607', '11920', '6262', '785', '11135');
INSERT INTO `2018student` VALUES ('山东', '26286', '15153', '1569', '24717', '30826', '37796', '21339', '2663', '35133', '121320', '63353', '10835', '110485', '33556', '18385', '5275', '28281');
INSERT INTO `2018student` VALUES ('河南', '13556', '7420', '388', '13168', '15182', '20043', '12051', '796', '19247', '56810', '31767', '2749', '54061', '16454', '9527', '909', '15545');
INSERT INTO `2018student` VALUES ('湖北', '36877', '18326', '4303', '32574', '48164', '52196', '26776', '5991', '46205', '187983', '86333', '25255', '162728', '53823', '25347', '13162', '40661');
INSERT INTO `2018student` VALUES ('湖南', '20141', '10872', '1589', '18552', '23160', '28843', '15584', '3042', '25801', '103539', '50761', '13580', '89959', '32191', '15855', '7549', '24642');
INSERT INTO `2018student` VALUES ('广东', '28878', '15050', '3120', '25758', '32496', '42515', '22498', '4752', '37763', '127260', '63534', '16978', '110282', '39643', '19952', '7748', '31895');
INSERT INTO `2018student` VALUES ('广西', '9146', '4977', '246', '8900', '10004', '13125', '7256', '483', '12642', '37293', '19780', '1595', '35698', '11838', '6293', '724', '11114');
INSERT INTO `2018student` VALUES ('海南', '1526', '900', '38', '1488', '1808', '2578', '1526', '118', '2460', '8505', '4727', '393', '8112', '2145', '1260', '124', '2021');
INSERT INTO `2018student` VALUES ('重庆', '16510', '9001', '1093', '15417', '19557', '24148', '14188', '1692', '22456', '79391', '43811', '6653', '72738', '19681', '10114', '2326', '17355');
INSERT INTO `2018student` VALUES ('四川', '26981', '13257', '2249', '24732', '31301', '39003', '20223', '3804', '35199', '128271', '59760', '16787', '111484', '37284', '17879', '8877', '28407');
INSERT INTO `2018student` VALUES ('贵州', '5361', '3001', '110', '5251', '5833', '7848', '4672', '280', '7568', '23999', '13449', '913', '23086', '6417', '3574', '380', '6037');
INSERT INTO `2018student` VALUES ('云南', '10399', '5792', '352', '10047', '12107', '15191', '8976', '750', '14441', '45634', '25265', '3090', '42544', '13834', '7616', '1460', '12374');
INSERT INTO `2018student` VALUES ('西藏', '508', '296', '16', '492', '534', '846', '474', '47', '799', '2131', '1170', '124', '2007', '629', '361', '44', '585');
INSERT INTO `2018student` VALUES ('陕西', '30759', '15574', '2819', '27940', '36507', '43597', '21743', '4737', '38860', '151698', '70715', '21510', '130188', '40481', '19482', '9217', '31264');
INSERT INTO `2018student` VALUES ('甘肃', '9526', '5037', '642', '8884', '10452', '13959', '7665', '1159', '12800', '42000', '21519', '4383', '37617', '13069', '6209', '2272', '10797');
INSERT INTO `2018student` VALUES ('青海', '1175', '680', '19', '1156', '1435', '2091', '1357', '77', '2014', '5180', '3148', '206', '4974', '1528', '845', '43', '1485');
INSERT INTO `2018student` VALUES ('宁夏', '1590', '1029', '50', '1540', '1906', '2664', '1710', '129', '2535', '6886', '4371', '299', '6587', '2059', '1274', '79', '1980');
INSERT INTO `2018student` VALUES ('新疆', '6151', '3665', '224', '5927', '6897', '9049', '5585', '429', '8620', '25978', '15736', '1544', '24434', '8329', '5135', '763', '7566');

-- ----------------------------
-- Table structure for 2019school
-- ----------------------------
DROP TABLE IF EXISTS `2019school`;
CREATE TABLE `2019school`  (
  `region` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `regular_total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `regular_central` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `degree` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `higher` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `adult_total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `adult_central` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `government` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 2019school
-- ----------------------------
INSERT INTO `2019school` VALUES ('北京', '93', '39', '68', '25', '23', '8', '64');
INSERT INTO `2019school` VALUES ('天津', '56', '3', '30', '26', '14', '0', '0');
INSERT INTO `2019school` VALUES ('河北', '122', '4', '61', '61', '6', '1', '38');
INSERT INTO `2019school` VALUES ('山西', '82', '0', '33', '49', '10', '0', '45');
INSERT INTO `2019school` VALUES ('内蒙古', '53', '0', '17', '36', '2', '0', '0');
INSERT INTO `2019school` VALUES ('辽宁', '115', '5', '64', '51', '18', '2', '55');
INSERT INTO `2019school` VALUES ('吉林', '62', '2', '37', '25', '14', '0', '15');
INSERT INTO `2019school` VALUES ('黑龙江', '81', '3', '39', '42', '16', '0', '35');
INSERT INTO `2019school` VALUES ('上海', '64', '10', '39', '25', '14', '0', '213');
INSERT INTO `2019school` VALUES ('江苏', '167', '10', '77', '90', '8', '1', '0');
INSERT INTO `2019school` VALUES ('浙江', '108', '1', '59', '49', '8', '0', '20');
INSERT INTO `2019school` VALUES ('安徽', '120', '2', '46', '74', '6', '0', '7');
INSERT INTO `2019school` VALUES ('福建', '90', '2', '39', '51', '3', '0', '0');
INSERT INTO `2019school` VALUES ('江西', '103', '0', '45', '58', '8', '0', '23');
INSERT INTO `2019school` VALUES ('山东', '146', '3', '70', '76', '11', '0', '65');
INSERT INTO `2019school` VALUES ('河南', '141', '1', '57', '84', '10', '0', '50');
INSERT INTO `2019school` VALUES ('湖北', '128', '8', '68', '60', '14', '0', '18');
INSERT INTO `2019school` VALUES ('湖南', '125', '3', '51', '74', '12', '0', '27');
INSERT INTO `2019school` VALUES ('广东', '154', '4', '67', '87', '14', '0', '29');
INSERT INTO `2019school` VALUES ('广西', '78', '0', '38', '40', '4', '0', '0');
INSERT INTO `2019school` VALUES ('海南', '20', '0', '8', '12', '1', '0', '0');
INSERT INTO `2019school` VALUES ('重庆', '65', '2', '26', '39', '4', '0', '6');
INSERT INTO `2019school` VALUES ('四川', '126', '6', '52', '74', '15', '1', '39');
INSERT INTO `2019school` VALUES ('贵州', '72', '0', '29', '43', '3', '0', '0');
INSERT INTO `2019school` VALUES ('云南', '81', '1', '32', '49', '2', '0', '0');
INSERT INTO `2019school` VALUES ('西藏', '7', '0', '4', '3', '0', '0', '0');
INSERT INTO `2019school` VALUES ('陕西', '95', '6', '57', '38', '14', '0', '0');
INSERT INTO `2019school` VALUES ('青海', '12', '0', '4', '8', '2', '0', '0');
INSERT INTO `2019school` VALUES ('宁夏', '19', '1', '8', '11', '1', '0', '0');
INSERT INTO `2019school` VALUES ('新疆', '54', '0', '18', '36', '6', '0', '0');
INSERT INTO `2019school` VALUES ('甘肃', '49', '2', '22', '27', '5', '0', '35');

-- ----------------------------
-- Table structure for 2019student
-- ----------------------------
DROP TABLE IF EXISTS `2019student`;
CREATE TABLE `2019student`  (
  `region` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `graduates_total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `graduates_female` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `graduates_doctor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `graduates_master` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `degree_awarded` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `entrants_total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `entrants_female` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `entrants_doctor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `entrants_master` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enrolment_total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enrolment_female` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enrolment_doctor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enrolment_master` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nextYear_total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nextYear_female` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nextYear_doctor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nextYear_master` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of 2019student
-- ----------------------------
INSERT INTO `2019student` VALUES ('北京', '97895', '50590', '18653', '79242', '108932', '132582', '68386', '27439', '105143', '410822', '197676', '113302', '297520', '141817', '68944', '44107', '97710');
INSERT INTO `2019student` VALUES ('天津', '18520', '10891', '1734', '16786', '19584', '25494', '14546', '3126', '22368', '79414', '42119', '11646', '67768', '26970', '15393', '4780', '22190');
INSERT INTO `2019student` VALUES ('河北', '13874', '8041', '461', '13413', '15442', '20131', '11506', '985', '19146', '58420', '32105', '3760', '54660', '18416', '9906', '1708', '16708');
INSERT INTO `2019student` VALUES ('山西', '9978', '6219', '461', '9517', '11858', '14128', '8370', '743', '13385', '40811', '23486', '3112', '37699', '13823', '8062', '1586', '12237');
INSERT INTO `2019student` VALUES ('内蒙古', '6443', '4170', '218', '6225', '7559', '9494', '5931', '443', '9051', '28581', '17059', '1915', '26666', '9472', '5754', '1060', '8412');
INSERT INTO `2019student` VALUES ('辽宁', '33111', '17887', '2240', '30871', '36405', '44359', '24474', '3491', '40868', '133493', '71043', '16831', '116662', '46246', '24239', '8136', '38110');
INSERT INTO `2019student` VALUES ('吉林', '19250', '11832', '1938', '17312', '21656', '25613', '15932', '2900', '22713', '77113', '45868', '11688', '65425', '26502', '15425', '6129', '20373');
INSERT INTO `2019student` VALUES ('黑龙江', '20749', '10559', '1923', '18826', '23425', '28272', '14245', '3793', '24479', '84849', '41103', '15708', '69141', '31052', '14851', '7103', '23949');
INSERT INTO `2019student` VALUES ('上海', '46040', '24640', '5752', '40288', '52365', '67488', '35786', '10026', '57462', '213515', '105950', '38055', '175460', '71227', '35420', '14897', '56330');
INSERT INTO `2019student` VALUES ('江苏', '50109', '25578', '4975', '45134', '56798', '73536', '36647', '8221', '65315', '241599', '112496', '34151', '207448', '76751', '36842', '15256', '61495');
INSERT INTO `2019student` VALUES ('浙江', '20875', '10881', '2022', '18853', '22603', '31771', '16051', '4032', '27739', '100719', '48099', '14869', '85850', '31313', '14578', '5196', '26117');
INSERT INTO `2019student` VALUES ('安徽', '18065', '8070', '1609', '16456', '17592', '25699', '11716', '2962', '22737', '74295', '32535', '9969', '64326', '22365', '10122', '2832', '19533');
INSERT INTO `2019student` VALUES ('福建', '13301', '7325', '1019', '12282', '15016', '20050', '11014', '1818', '18232', '62443', '32300', '7536', '54907', '20778', '10127', '3007', '17771');
INSERT INTO `2019student` VALUES ('江西', '10621', '5668', '239', '10382', '12439', '16029', '8716', '720', '15309', '45860', '24165', '2282', '43578', '14960', '7891', '970', '13990');
INSERT INTO `2019student` VALUES ('山东', '27640', '15771', '1712', '25928', '31125', '40675', '23112', '3022', '37653', '128601', '68361', '11895', '116706', '39995', '21746', '5131', '34864');
INSERT INTO `2019student` VALUES ('河南', '16107', '9532', '335', '15772', '17592', '20962', '12640', '937', '20025', '58403', '33867', '3271', '55132', '18244', '9544', '1099', '17145');
INSERT INTO `2019student` VALUES ('湖北', '39073', '19740', '3965', '35108', '46483', '54466', '28216', '6480', '47986', '191618', '89874', '27491', '164127', '62878', '30013', '13537', '49341');
INSERT INTO `2019student` VALUES ('湖南', '21418', '11607', '1790', '19628', '24991', '29841', '16388', '3127', '26714', '106840', '53474', '14827', '92013', '37311', '18159', '7841', '29470');
INSERT INTO `2019student` VALUES ('广东', '30178', '16089', '3085', '27093', '33476', '46576', '24595', '5697', '40879', '136154', '68995', '19430', '116724', '47132', '23783', '8369', '38763');
INSERT INTO `2019student` VALUES ('广西', '9867', '5543', '199', '9668', '10461', '14329', '8111', '619', '13710', '40381', '21750', '1999', '38382', '13701', '6362', '896', '12805');
INSERT INTO `2019student` VALUES ('海南', '1644', '1002', '47', '1597', '1948', '3169', '1837', '217', '2952', '9693', '5413', '562', '9131', '2803', '1665', '162', '2641');
INSERT INTO `2019student` VALUES ('重庆', '16677', '9490', '1110', '15567', '19552', '25267', '14771', '1864', '23403', '84008', '47001', '7368', '76640', '24480', '13822', '2581', '21899');
INSERT INTO `2019student` VALUES ('四川', '28504', '14642', '2531', '25973', '31041', '41371', '21552', '3932', '37439', '134753', '64284', '17511', '117242', '43234', '20590', '8947', '34287');
INSERT INTO `2019student` VALUES ('贵州', '5559', '3289', '112', '5447', '6054', '8483', '5180', '365', '8118', '25398', '14722', '1146', '24252', '7938', '4586', '447', '7491');
INSERT INTO `2019student` VALUES ('云南', '10795', '6242', '405', '10390', '12114', '16653', '9785', '899', '15754', '49982', '28239', '3537', '46445', '16705', '8726', '1597', '15108');
INSERT INTO `2019student` VALUES ('西藏', '577', '342', '14', '563', '569', '940', '563', '54', '886', '2445', '1306', '164', '2281', '772', '398', '63', '709');
INSERT INTO `2019student` VALUES ('陕西', '32470', '16603', '3043', '29427', '36188', '48195', '24541', '5140', '43055', '156544', '75674', '22818', '133726', '50521', '25856', '7213', '43308');
INSERT INTO `2019student` VALUES ('甘肃', '10398', '5605', '690', '9708', '11177', '15098', '8247', '1320', '13778', '44855', '23453', '4841', '40014', '14898', '7677', '2341', '12557');
INSERT INTO `2019student` VALUES ('青海', '1288', '724', '15', '1273', '1411', '2444', '1501', '107', '2337', '6033', '3724', '298', '5735', '1947', '1032', '46', '1901');
INSERT INTO `2019student` VALUES ('宁夏', '1997', '1286', '61', '1936', '2323', '3257', '2034', '168', '3089', '7777', '4960', '400', '7377', '2499', '1314', '101', '2398');
INSERT INTO `2019student` VALUES ('新疆', '6643', '4205', '220', '6423', '7358', '10131', '5969', '522', '9609', '28293', '16838', '1800', '26493', '9693', '5573', '746', '8947');

-- ----------------------------
-- Table structure for 2020school
-- ----------------------------
DROP TABLE IF EXISTS `2020school`;
CREATE TABLE `2020school`  (
  `region` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `regular_total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `regular_central` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `degree` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `higher` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `adult_total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `adult_central` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `government` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of 2020school
-- ----------------------------
INSERT INTO `2020school` VALUES ('北京', '92', '39', '67', '25', '23', '8', '64');
INSERT INTO `2020school` VALUES ('天津', '56', '3', '30', '26', '13', '0', '0');
INSERT INTO `2020school` VALUES ('河北', '125', '4', '61', '64', '6', '1', '38');
INSERT INTO `2020school` VALUES ('山西', '85', '0', '34', '51', '9', '0', '55');
INSERT INTO `2020school` VALUES ('内蒙古', '54', '0', '17', '37', '2', '0', '0');
INSERT INTO `2020school` VALUES ('辽宁', '114', '5', '63', '51', '18', '2', '54');
INSERT INTO `2020school` VALUES ('吉林', '64', '2', '37', '27', '14', '0', '15');
INSERT INTO `2020school` VALUES ('黑龙江', '80', '3', '39', '41', '16', '0', '35');
INSERT INTO `2020school` VALUES ('上海', '63', '10', '40', '23', '14', '0', '227');
INSERT INTO `2020school` VALUES ('江苏', '167', '10', '78', '89', '8', '1', '0');
INSERT INTO `2020school` VALUES ('浙江', '109', '1', '60', '49', '8', '0', '20');
INSERT INTO `2020school` VALUES ('安徽', '120', '2', '46', '74', '6', '0', '7');
INSERT INTO `2020school` VALUES ('福建', '89', '2', '39', '50', '3', '0', '0');
INSERT INTO `2020school` VALUES ('江西', '105', '0', '45', '60', '8', '0', '13');
INSERT INTO `2020school` VALUES ('山东', '152', '3', '70', '82', '11', '0', '60');
INSERT INTO `2020school` VALUES ('河南', '151', '1', '57', '94', '10', '0', '50');
INSERT INTO `2020school` VALUES ('湖北', '129', '8', '68', '61', '14', '0', '18');
INSERT INTO `2020school` VALUES ('湖南', '128', '3', '52', '76', '12', '0', '27');
INSERT INTO `2020school` VALUES ('广东', '154', '4', '67', '87', '14', '0', '29');
INSERT INTO `2020school` VALUES ('广西', '82', '0', '38', '44', '4', '0', '0');
INSERT INTO `2020school` VALUES ('海南', '21', '0', '8', '13', '1', '0', '0');
INSERT INTO `2020school` VALUES ('重庆', '68', '2', '26', '42', '4', '0', '5');
INSERT INTO `2020school` VALUES ('四川', '132', '6', '53', '79', '15', '1', '39');
INSERT INTO `2020school` VALUES ('贵州', '75', '0', '29', '46', '3', '0', '0');
INSERT INTO `2020school` VALUES ('云南', '82', '1', '32', '50', '1', '0', '0');
INSERT INTO `2020school` VALUES ('西藏', '7', '0', '4', '3', '0', '0', '0');
INSERT INTO `2020school` VALUES ('陕西', '96', '6', '57', '39', '14', '0', '0');
INSERT INTO `2020school` VALUES ('甘肃', '50', '2', '22', '28', '5', '0', '32');
INSERT INTO `2020school` VALUES ('青海', '12', '0', '4', '8', '2', '0', '0');
INSERT INTO `2020school` VALUES ('宁夏', '20', '1', '8', '12', '1', '0', '0');
INSERT INTO `2020school` VALUES ('新疆', '56', '0', '19', '37', '6', '0', '0');

-- ----------------------------
-- Table structure for 2020student
-- ----------------------------
DROP TABLE IF EXISTS `2020student`;
CREATE TABLE `2020student`  (
  `region` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `graduates_total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `graduates_female` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `graduates_doctor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `graduates_master` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `degree_awarded` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `entrants_total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `entrants_female` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `entrants_doctor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `entrants_master` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enrolment_total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enrolment_female` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enrolment_doctor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enrolment_master` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nextYear_total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nextYear_female` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nextYear_doctor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nextYear_master` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of 2020student
-- ----------------------------
INSERT INTO `2020student` VALUES ('北京', '107084', '55605', '20064', '87020', '114046', '143482', '72665', '29405', '114077', '430285', '209293', '121730', '308555', '150579', '73732', '46292', '104287');
INSERT INTO `2020student` VALUES ('天津', '21741', '12594', '1965', '19776', '22294', '28260', '15814', '3388', '24872', '83307', '44847', '12940', '70367', '28017', '15105', '5254', '22763');
INSERT INTO `2020student` VALUES ('河北', '15916', '8956', '515', '15401', '16726', '25264', '13785', '1095', '24169', '65959', '35561', '4299', '61660', '20324', '10986', '1849', '18475');
INSERT INTO `2020student` VALUES ('山西', '11850', '7040', '554', '11296', '12493', '17709', '10102', '825', '16884', '45612', '25996', '3354', '42258', '14502', '7569', '1669', '12833');
INSERT INTO `2020student` VALUES ('内蒙古', '7213', '4726', '263', '6950', '7976', '11875', '7159', '510', '11365', '32057', '18996', '2066', '29991', '10572', '6434', '1080', '9492');
INSERT INTO `2020student` VALUES ('辽宁', '36925', '20784', '2396', '34529', '37590', '53727', '28779', '3772', '49955', '146365', '77752', '17296', '129069', '47422', '25694', '8072', '39350');
INSERT INTO `2020student` VALUES ('吉林', '22647', '14008', '2051', '20596', '23308', '29585', '17493', '3210', '26375', '84974', '50659', '13576', '71398', '31198', '18671', '7410', '23788');
INSERT INTO `2020student` VALUES ('黑龙江', '23099', '11864', '1884', '21215', '24243', '35943', '17896', '4142', '31801', '93764', '45926', '17036', '76728', '30416', '15228', '6915', '23501');
INSERT INTO `2020student` VALUES ('上海', '52202', '28034', '6061', '46141', '55873', '74989', '38497', '11267', '63722', '226180', '112941', '42631', '183549', '78044', '39194', '15823', '62221');
INSERT INTO `2020student` VALUES ('江苏', '56976', '29053', '5028', '51948', '61033', '89512', '43069', '9006', '80506', '266489', '123856', '37541', '228948', '84650', '40657', '16287', '68363');
INSERT INTO `2020student` VALUES ('浙江', '23743', '12086', '1951', '21792', '24779', '43064', '21515', '4694', '38370', '116610', '56146', '17173', '99437', '34734', '16521', '5530', '29204');
INSERT INTO `2020student` VALUES ('安徽', '18348', '8843', '1473', '16875', '18738', '33955', '15390', '3284', '30671', '87156', '38234', '11621', '75535', '25222', '11268', '3538', '21684');
INSERT INTO `2020student` VALUES ('福建', '15455', '8423', '1076', '14379', '16334', '24985', '13141', '1974', '23011', '69470', '36126', '8281', '61189', '22734', '11175', '3412', '19322');
INSERT INTO `2020student` VALUES ('江西', '13261', '7136', '368', '12893', '13325', '20093', '10522', '857', '19236', '52416', '27433', '2754', '49662', '16547', '8717', '1128', '15419');
INSERT INTO `2020student` VALUES ('山东', '32795', '18678', '1716', '31079', '34841', '50518', '28175', '3346', '47172', '141783', '76010', '13391', '128392', '43236', '23104', '5456', '37780');
INSERT INTO `2020student` VALUES ('河南', '16189', '9246', '495', '15694', '17070', '28228', '16479', '1082', '27146', '69359', '39997', '4017', '65342', '20419', '11578', '1460', '18959');
INSERT INTO `2020student` VALUES ('湖北', '44934', '22577', '4381', '40553', '48019', '66049', '33614', '6904', '59145', '204459', '98106', '29637', '174822', '63711', '31755', '14335', '49376');
INSERT INTO `2020student` VALUES ('湖南', '24815', '13218', '1972', '22843', '25846', '34585', '18236', '3534', '31051', '112501', '57294', '16106', '96395', '39702', '19534', '8765', '30937');
INSERT INTO `2020student` VALUES ('广东', '36011', '19185', '3393', '32618', '38350', '59918', '31113', '6394', '53524', '154748', '78867', '22127', '132621', '50667', '25377', '8454', '42213');
INSERT INTO `2020student` VALUES ('广西', '11137', '6178', '298', '10839', '11525', '19857', '10972', '774', '19083', '47803', '25933', '2459', '45344', '14481', '7874', '870', '13611');
INSERT INTO `2020student` VALUES ('海南', '2132', '1310', '69', '2063', '2325', '4236', '2374', '298', '3938', '11583', '6422', '788', '10795', '3234', '1862', '193', '3041');
INSERT INTO `2020student` VALUES ('重庆', '19309', '11070', '1144', '18165', '21286', '30724', '17897', '2107', '28617', '89768', '51010', '8139', '81629', '28119', '16520', '2815', '25304');
INSERT INTO `2020student` VALUES ('四川', '33574', '17092', '2506', '31068', '34568', '48199', '24629', '4472', '43727', '144737', '70233', '18319', '126418', '46558', '22818', '8578', '37980');
INSERT INTO `2020student` VALUES ('贵州', '6942', '4153', '133', '6809', '7363', '11078', '6747', '468', '10610', '28750', '16936', '1469', '27281', '8490', '4954', '569', '7921');
INSERT INTO `2020student` VALUES ('云南', '12872', '7529', '419', '12453', '13445', '21243', '12140', '1017', '20226', '57604', '32612', '4132', '53472', '17863', '10089', '1880', '15983');
INSERT INTO `2020student` VALUES ('西藏', '694', '323', '22', '672', '687', '1432', '819', '74', '1358', '3138', '1736', '200', '2938', '855', '448', '74', '781');
INSERT INTO `2020student` VALUES ('陕西', '37388', '19286', '2942', '34446', '39391', '59041', '29217', '5681', '53360', '173400', '84543', '24886', '148514', '56066', '28574', '8984', '47082');
INSERT INTO `2020student` VALUES ('甘肃', '11861', '6422', '733', '11128', '12258', '18377', '9991', '1479', '16898', '49852', '26396', '5456', '44396', '15692', '8408', '1923', '13769');
INSERT INTO `2020student` VALUES ('青海', '1656', '1061', '16', '1640', '1754', '3149', '1968', '133', '3016', '7416', '4586', '413', '7003', '2276', '1496', '136', '2140');
INSERT INTO `2020student` VALUES ('宁夏', '2218', '1397', '47', '2171', '2293', '4228', '2568', '209', '4019', '9561', '5962', '526', '9035', '3003', '1612', '98', '2905');
INSERT INTO `2020student` VALUES ('新疆', '7640', '4853', '241', '7399', '8205', '13246', '7718', '646', '12600', '32492', '19038', '2186', '30306', '10286', '5658', '895', '9391');

SET FOREIGN_KEY_CHECKS = 1;
