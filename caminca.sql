/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : caminca

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2022-06-30 17:18:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for estatus
-- ----------------------------
DROP TABLE IF EXISTS `estatus`;
CREATE TABLE `estatus` (
  `id_estatus` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `nivel` int(11) DEFAULT NULL,
  `puntaje` int(11) DEFAULT NULL,
  `tiempo_nivel1` varchar(255) DEFAULT NULL,
  `tiempo_nivel2` varchar(255) DEFAULT NULL,
  `tiempo_nivel3` varchar(255) DEFAULT NULL,
  `repeticion_nivel1` int(11) DEFAULT NULL,
  `repeticion_nivel2` int(11) DEFAULT NULL,
  `repeticion_nivel3` int(11) DEFAULT NULL,
  `posicion_ficha_abajo` int(11) DEFAULT NULL,
  `posicion_ficha_arriba` int(11) DEFAULT NULL,
  `posicion_ficha_derecha` int(11) DEFAULT NULL,
  `posicion_ficha_izquierda` int(11) DEFAULT NULL,
  `acumulador_ficha` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_estatus`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of estatus
-- ----------------------------
INSERT INTO `estatus` VALUES ('5', '6', '2', '750', '00:14:09', '00:06:35', '00:00:00', '0', '1', '0', '0', '542', '0', '0', '5');
INSERT INTO `estatus` VALUES ('6', '7', '3', '1640', '00:17:08', '00:20:12', '00:18:19', '0', '0', '0', '813', '813', '813', '678', '24');
INSERT INTO `estatus` VALUES ('7', '8', '3', '3450', '00:07:02', '00:13:10', '00:00:40', '0', '0', '0', '3388', '4878', '4472', '2847', '10');
INSERT INTO `estatus` VALUES ('8', '9', '3', '2090', '00:10:21', '00:16:21', '00:16:14', '0', '0', '0', '1626', '1626', '1626', '1356', '24');
INSERT INTO `estatus` VALUES ('9', '10', '3', '1640', '00:16:53', '00:20:48', '00:30:31', '0', '0', '0', '813', '813', '813', '678', '24');
INSERT INTO `estatus` VALUES ('10', '11', '3', '1480', '00:07:58', '00:13:18', '00:11:39', '0', '0', '0', '813', '813', '813', '678', '24');
INSERT INTO `estatus` VALUES ('11', '12', '3', '1520', '00:10:13', '00:18:01', '00:12:15', '0', '0', '0', '813', '813', '813', '678', '24');
INSERT INTO `estatus` VALUES ('12', '13', '3', '1500', '00:13:53', '00:16:38', '00:22:33', '0', '0', '0', '813', '813', '813', '678', '24');
INSERT INTO `estatus` VALUES ('13', '14', '3', '1340', '00:12:53', '00:14:59', '00:19:55', '0', '0', '0', '813', '813', '813', '813', '26');
INSERT INTO `estatus` VALUES ('14', '15', '3', '1660', '00:09:44', '00:10:59', '00:16:49', '0', '0', '0', '813', '813', '813', '678', '24');
INSERT INTO `estatus` VALUES ('15', '16', '2', '590', '00:10:53', '00:20:50', '00:00:00', '0', '0', '0', '0', '407', '0', '0', '4');
INSERT INTO `estatus` VALUES ('16', '17', '1', '150', '00:01:00', '00:00:00', '00:00:00', '0', '0', '0', '0', '271', '0', '0', '3');
INSERT INTO `estatus` VALUES ('17', '18', '2', '1140', '00:14:22', '00:09:54', '00:00:00', '0', '0', '0', '0', '2304', '1084', '0', '9');
INSERT INTO `estatus` VALUES ('18', '19', '2', '700', '00:04:41', '00:01:18', '00:00:00', '0', '0', '0', '0', '542', '0', '0', '5');
INSERT INTO `estatus` VALUES ('20', '21', '3', '830', '00:12:06', '00:18:37', '00:06:16', '0', '0', '0', '0', '813', '0', '0', '7');
INSERT INTO `estatus` VALUES ('21', '22', '3', '2370', '00:15:52', '00:28:47', '00:00:35', '0', '0', '0', '1220', '3388', '1626', '678', '2');
INSERT INTO `estatus` VALUES ('22', '23', '3', '3920', '00:07:17', '00:16:59', '00:16:09', '0', '0', '0', '4065', '5149', '4607', '2848', '20');
INSERT INTO `estatus` VALUES ('23', '24', '2', '660', '00:18:13', '00:00:02', '00:00:00', '0', '0', '0', '0', '407', '0', '0', '4');
INSERT INTO `estatus` VALUES ('25', '26', '3', '1830', '00:15:55', '00:36:52', '00:19:13', '0', '0', '0', '813', '813', '813', '678', '24');
INSERT INTO `estatus` VALUES ('26', '27', '1', '100', '00:00:00', '00:00:00', '00:00:00', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `estatus` VALUES ('27', '28', '3', '2290', '00:10:51', '00:17:34', '00:04:19', '0', '0', '0', '2439', '3117', '2439', '1763', '6');
INSERT INTO `estatus` VALUES ('28', '29', '3', '2000', '00:16:32', '00:21:37', '00:25:13', '0', '0', '0', '1626', '1626', '1626', '1491', '26');
INSERT INTO `estatus` VALUES ('32', '33', '1', '10', '00:11:34', '00:00:00', '00:00:00', '0', '0', '0', '0', '813', '407', '0', '10');
INSERT INTO `estatus` VALUES ('33', '34', '1', '100', '00:01:09', '00:00:00', '00:00:00', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `estatus` VALUES ('35', '36', '1', '60', '00:13:40', '00:00:00', '00:00:00', '0', '0', '0', '0', '271', '0', '0', '3');
INSERT INTO `estatus` VALUES ('36', '37', '1', '100', '00:07:31', '00:00:00', '00:00:00', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `estatus` VALUES ('38', '39', '3', '1430', '00:12:39', '01:27:53', '00:21:01', '0', '0', '0', '813', '813', '813', '678', '24');
INSERT INTO `estatus` VALUES ('39', '40', '3', '1580', '00:18:39', '00:20:33', '00:16:01', '0', '0', '0', '813', '813', '813', '678', '24');
INSERT INTO `estatus` VALUES ('40', '41', '3', '1280', '00:45:26', '00:45:37', '00:15:26', '0', '0', '0', '136', '1626', '1491', '0', '14');
INSERT INTO `estatus` VALUES ('41', '42', '1', '770', '00:05:30', '00:00:00', '00:00:00', '0', '0', '0', '0', '3930', '679', '0', '3');
INSERT INTO `estatus` VALUES ('42', '43', '3', '1590', '00:15:09', '00:21:25', '00:21:16', '0', '0', '0', '813', '813', '813', '678', '24');
INSERT INTO `estatus` VALUES ('46', '47', '1', '80', '00:00:55', '00:00:00', '00:00:00', '0', '0', '0', '0', '136', '0', '0', '2');
INSERT INTO `estatus` VALUES ('47', '48', '1', '130', '00:03:36', '00:00:00', '00:00:00', '0', '0', '0', '0', '407', '0', '0', '4');
INSERT INTO `estatus` VALUES ('48', '49', '2', '380', '00:24:49', '00:08:21', '00:00:00', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `estatus` VALUES ('49', '50', '3', '1430', '00:04:18', '00:41:14', '00:48:32', '0', '0', '0', '813', '813', '813', '678', '24');
INSERT INTO `estatus` VALUES ('51', '52', '1', '100', '00:00:00', '00:00:00', '00:00:00', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `estatus` VALUES ('53', '54', '2', '110', '00:20:59', '00:00:43', '00:00:00', '0', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `estatus` VALUES ('54', '55', '3', '1370', '00:19:44', '00:35:12', '00:23:42', '0', '0', '0', '813', '813', '813', '678', '24');
INSERT INTO `estatus` VALUES ('55', '56', '1', '170', '00:01:55', '00:00:00', '00:00:00', '0', '0', '0', '0', '1355', '0', '0', '5');
INSERT INTO `estatus` VALUES ('56', '57', '3', '1570', '00:09:23', '00:19:12', '00:18:23', '0', '0', '0', '813', '813', '813', '678', '24');
INSERT INTO `estatus` VALUES ('59', '60', '1', '90', '00:14:24', '00:00:00', '00:00:00', '0', '0', '0', '0', '678', '0', '0', '6');
INSERT INTO `estatus` VALUES ('60', '61', '3', '1210', '00:15:13', '00:21:43', '00:11:30', '0', '0', '0', '0', '678', '0', '0', '6');
INSERT INTO `estatus` VALUES ('61', '62', '3', '3510', '00:09:41', '00:12:57', '00:21:48', '0', '0', '0', '4065', '4065', '4065', '3525', '24');
INSERT INTO `estatus` VALUES ('62', '63', '3', '3310', '00:20:13', '00:24:26', '00:26:35', '0', '0', '0', '4878', '4878', '4878', '3931', '21');
INSERT INTO `estatus` VALUES ('65', '66', '3', '1510', '00:07:10', '00:14:43', '00:20:27', '0', '0', '0', '813', '813', '813', '678', '24');
INSERT INTO `estatus` VALUES ('66', '67', '2', '180', '00:35:04', '00:08:41', '00:00:00', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `estatus` VALUES ('67', '68', '3', '940', '00:08:04', '00:18:47', '00:05:55', '0', '0', '0', '0', '542', '0', '0', '5');
INSERT INTO `estatus` VALUES ('68', '69', '3', '2620', '00:19:06', '00:26:41', '00:16:00', '0', '0', '0', '2439', '2439', '2439', '2034', '24');
INSERT INTO `estatus` VALUES ('72', '73', '2', '520', '00:17:03', '00:08:50', '00:00:00', '0', '0', '0', '0', '136', '0', '0', '2');
INSERT INTO `estatus` VALUES ('73', '74', '1', '250', '00:32:59', '00:00:00', '00:00:00', '0', '0', '0', '407', '813', '813', '0', '16');
INSERT INTO `estatus` VALUES ('75', '76', '1', '100', '00:00:00', '00:00:00', '00:00:00', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `estatus` VALUES ('76', '77', '3', '1570', '00:19:19', '00:39:14', '00:37:46', '0', '0', '0', '813', '813', '813', '678', '24');
INSERT INTO `estatus` VALUES ('77', '78', '3', '1120', '00:11:59', '00:22:51', '00:12:51', '0', '0', '0', '813', '813', '813', '678', '24');
INSERT INTO `estatus` VALUES ('78', '79', '3', '2140', '00:07:42', '00:10:06', '00:17:10', '0', '0', '0', '1626', '1626', '1626', '1356', '24');
INSERT INTO `estatus` VALUES ('79', '80', '3', '140', '00:23:19', '00:21:23', '00:09:29', '0', '0', '1', '813', '813', '813', '678', '24');
INSERT INTO `estatus` VALUES ('81', '82', '2', '980', '00:31:52', '00:40:16', '00:00:00', '0', '0', '0', '542', '813', '813', '0', '17');
INSERT INTO `estatus` VALUES ('82', '83', '3', '1900', '00:06:52', '00:17:22', '00:19:31', '0', '0', '0', '1626', '1626', '1626', '1356', '24');
INSERT INTO `estatus` VALUES ('83', '84', '3', '1500', '00:05:50', '00:14:11', '00:20:17', '0', '0', '0', '813', '813', '813', '678', '24');
INSERT INTO `estatus` VALUES ('84', '85', '3', '20390', '00:11:51', '00:20:42', '00:00:59', '0', '0', '0', '33875', '34418', '33469', '28067', '20');
INSERT INTO `estatus` VALUES ('85', '86', '1', '100', '00:13:10', '00:00:00', '00:00:00', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `estatus` VALUES ('86', '87', '3', '3910', '00:16:15', '00:35:53', '00:00:49', '0', '0', '0', '4472', '4878', '4878', '3930', '16');
INSERT INTO `estatus` VALUES ('87', '88', '3', '1610', '00:08:04', '00:16:48', '00:14:03', '0', '0', '0', '813', '813', '813', '678', '24');
INSERT INTO `estatus` VALUES ('89', '90', '3', '1520', '00:11:01', '00:15:05', '00:16:54', '0', '0', '0', '813', '813', '813', '678', '24');
INSERT INTO `estatus` VALUES ('90', '91', '3', '1610', '00:12:18', '00:14:20', '00:21:47', '0', '0', '0', '813', '813', '813', '678', '24');
INSERT INTO `estatus` VALUES ('91', '92', '3', '1480', '00:17:44', '00:16:11', '00:26:18', '0', '0', '0', '813', '813', '813', '678', '24');
INSERT INTO `estatus` VALUES ('92', '93', '3', '1480', '00:13:30', '00:19:54', '01:21:03', '0', '0', '0', '813', '813', '813', '678', '24');
INSERT INTO `estatus` VALUES ('93', '94', '3', '1660', '00:05:01', '00:08:44', '00:06:25', '0', '0', '0', '813', '813', '813', '678', '24');
INSERT INTO `estatus` VALUES ('94', '95', '2', '750', '00:11:14', '00:01:10', '00:00:00', '0', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `estatus` VALUES ('95', '96', '3', '1680', '00:13:32', '00:16:36', '00:12:35', '0', '0', '0', '813', '813', '813', '678', '24');
INSERT INTO `estatus` VALUES ('96', '97', '1', '100', '00:00:00', '00:00:00', '00:00:00', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `estatus` VALUES ('97', '98', '3', '1960', '00:11:24', '00:13:07', '00:27:28', '0', '0', '0', '813', '813', '813', '678', '24');
INSERT INTO `estatus` VALUES ('98', '99', '1', '100', '00:00:00', '00:00:00', '00:00:00', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `estatus` VALUES ('99', '100', '1', '0', '00:02:23', '00:00:00', '00:00:00', '0', '0', '0', '0', '542', '0', '0', '5');
INSERT INTO `estatus` VALUES ('100', '101', '1', '110', '00:43:05', '00:00:00', '00:00:00', '0', '0', '0', '0', '542', '0', '0', '5');
INSERT INTO `estatus` VALUES ('101', '102', '3', '1560', '00:14:48', '00:20:47', '00:17:14', '0', '0', '1', '813', '1491', '813', '678', '24');
INSERT INTO `estatus` VALUES ('102', '103', '2', '590', '00:08:34', '00:01:52', '00:00:00', '0', '0', '0', '0', '271', '0', '0', '3');
INSERT INTO `estatus` VALUES ('103', '104', '2', '490', '00:21:53', '00:02:59', '00:00:00', '0', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `estatus` VALUES ('104', '105', '1', '100', '00:00:00', '00:00:00', '00:00:00', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `estatus` VALUES ('105', '106', '1', '100', '00:00:00', '00:00:00', '00:00:00', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `estatus` VALUES ('106', '107', '1', '100', '00:00:00', '00:00:00', '00:00:00', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `estatus` VALUES ('107', '108', '3', '1370', '00:09:15', '00:12:06', '00:31:16', '0', '0', '0', '813', '813', '813', '678', '24');
INSERT INTO `estatus` VALUES ('108', '109', '3', '1090', '00:17:08', '00:26:43', '00:36:10', '0', '0', '0', '813', '813', '813', '678', '24');
INSERT INTO `estatus` VALUES ('109', '110', '2', '540', '00:59:52', '00:59:54', '00:00:00', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `estatus` VALUES ('110', '111', '2', '410', '00:15:13', '00:16:40', '00:00:00', '1', '0', '0', '0', '813', '813', '0', '13');
INSERT INTO `estatus` VALUES ('111', '112', '3', '1660', '00:11:58', '00:12:46', '00:21:59', '0', '0', '0', '813', '813', '813', '678', '24');
INSERT INTO `estatus` VALUES ('112', '113', '3', '1660', '00:10:49', '00:12:48', '00:22:00', '0', '0', '0', '813', '813', '813', '678', '24');
INSERT INTO `estatus` VALUES ('113', '114', '3', '1680', '00:11:26', '00:17:10', '00:21:53', '0', '0', '0', '813', '813', '813', '678', '24');
INSERT INTO `estatus` VALUES ('114', '115', '1', '100', '00:00:05', '00:00:00', '00:00:00', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `estatus` VALUES ('115', '116', '2', '610', '00:37:06', '00:29:22', '00:00:00', '0', '0', '0', '0', '407', '0', '0', '4');
INSERT INTO `estatus` VALUES ('116', '117', '3', '1280', '00:17:51', '00:23:22', '00:13:28', '0', '0', '0', '813', '949', '813', '678', '24');
INSERT INTO `estatus` VALUES ('117', '118', '2', '700', '00:14:54', '00:08:54', '00:00:00', '0', '0', '0', '0', '271', '0', '0', '3');
INSERT INTO `estatus` VALUES ('118', '119', '3', '1310', '00:22:16', '00:31:35', '00:17:05', '0', '0', '0', '678', '813', '813', '0', '18');
INSERT INTO `estatus` VALUES ('119', '120', '3', '1050', '00:07:03', '00:16:24', '00:00:38', '0', '0', '1', '0', '678', '0', '0', '6');
INSERT INTO `estatus` VALUES ('120', '121', '3', '1000', '00:09:40', '00:18:45', '00:14:48', '0', '0', '1', '0', '271', '0', '0', '3');
INSERT INTO `estatus` VALUES ('121', '122', '3', '1040', '00:18:52', '00:16:34', '00:01:57', '0', '0', '1', '0', '136', '0', '0', '2');
INSERT INTO `estatus` VALUES ('122', '123', '1', '100', '00:06:32', '00:00:00', '00:00:00', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `estatus` VALUES ('123', '124', '1', '100', '00:00:00', '00:00:00', '00:00:00', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `estatus` VALUES ('124', '125', '1', '110', '00:02:41', '00:00:00', '00:00:00', '0', '0', '0', '0', '542', '0', '0', '5');
INSERT INTO `estatus` VALUES ('125', '126', '3', '1590', '00:16:15', '00:21:03', '00:34:32', '0', '0', '0', '813', '813', '813', '271', '21');
INSERT INTO `estatus` VALUES ('126', '127', '3', '1390', '00:14:07', '00:18:06', '00:20:39', '0', '0', '0', '813', '813', '813', '678', '24');
INSERT INTO `estatus` VALUES ('127', '128', '3', '1370', '00:19:18', '00:16:18', '00:18:12', '0', '0', '0', '813', '813', '678', '678', '24');
INSERT INTO `estatus` VALUES ('128', '129', '1', '1050', '00:00:32', '00:00:00', '00:00:00', '0', '0', '0', '0', '4201', '678', '0', '3');
INSERT INTO `estatus` VALUES ('129', '130', '2', '540', '00:10:52', '00:01:00', '00:00:00', '0', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `estatus` VALUES ('130', '131', '3', '1190', '00:10:32', '00:16:49', '00:20:05', '0', '0', '0', '813', '813', '813', '678', '24');
INSERT INTO `estatus` VALUES ('131', '132', '2', '40', '00:12:58', '00:20:17', '00:00:00', '0', '0', '0', '0', '813', '407', '0', '10');
INSERT INTO `estatus` VALUES ('132', '133', '3', '890', '00:19:21', '01:11:21', '00:14:53', '0', '0', '0', '813', '813', '813', '678', '24');
INSERT INTO `estatus` VALUES ('133', '134', '3', '1050', '00:28:31', '00:30:51', '00:47:19', '0', '0', '0', '813', '813', '813', '678', '24');
INSERT INTO `estatus` VALUES ('134', '135', '3', '1660', '00:08:47', '00:15:49', '00:19:12', '0', '0', '0', '813', '813', '813', '678', '24');
INSERT INTO `estatus` VALUES ('135', '136', '2', '480', '00:09:03', '00:00:01', '00:00:00', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `estatus` VALUES ('136', '137', '3', '2150', '00:15:17', '00:20:08', '00:07:30', '0', '0', '0', '2168', '3930', '3252', '271', '16');
INSERT INTO `estatus` VALUES ('137', '138', '1', '100', '00:02:07', '00:00:00', '00:00:00', '1', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `estatus` VALUES ('138', '139', '3', '1040', '00:21:25', '00:16:52', '00:06:26', '0', '0', '0', '0', '678', '0', '0', '6');
INSERT INTO `estatus` VALUES ('139', '140', '1', '100', '00:01:13', '00:00:00', '00:00:00', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `estatus` VALUES ('140', '141', '2', '540', '00:09:05', '00:01:25', '00:00:00', '0', '0', '0', '0', '271', '0', '0', '3');
INSERT INTO `estatus` VALUES ('141', '142', '1', '100', '00:04:55', '00:00:00', '00:00:00', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `estatus` VALUES ('142', '143', '1', '100', '00:02:57', '00:00:00', '00:00:00', '0', '0', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for preguntas
-- ----------------------------
DROP TABLE IF EXISTS `preguntas`;
CREATE TABLE `preguntas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pregunta` text DEFAULT NULL,
  `alternativa_1` text DEFAULT NULL,
  `alternativa_2` text DEFAULT NULL,
  `alternativa_3` text DEFAULT NULL,
  `alternativa_4` text DEFAULT NULL,
  `alternativa_5` text DEFAULT NULL,
  `respuesta` text DEFAULT NULL,
  `video` text DEFAULT NULL,
  `acierto` int(11) DEFAULT NULL,
  `fallo` int(11) DEFAULT NULL,
  `nivel` varchar(255) DEFAULT NULL,
  `id_alt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of preguntas
-- ----------------------------
INSERT INTO `preguntas` VALUES ('1', 'Pregunta 1', '1', '2', '3', '4', '5', '1', '-', '0', '0', '1', '1');
INSERT INTO `preguntas` VALUES ('2', 'Pregunta 2', '1', '2', '3', '4', '5', '1', '-', '0', '0', '1', '2');
INSERT INTO `preguntas` VALUES ('3', 'Pregunta 3', '1', '2', '3', '4', '5', '1', '-', '0', '0', '1', '3');
INSERT INTO `preguntas` VALUES ('4', 'Pregunta 4', '1', '2', '3', '4', '5', '1', '-', '0', '0', '1', '4');
INSERT INTO `preguntas` VALUES ('5', 'Pregunta 5', '1', '2', '3', '4', '5', '1', '-', '0', '0', '1', '5');
INSERT INTO `preguntas` VALUES ('6', 'Pregunta 6', '1', '2', '3', '4', '5', '1', '-', '0', '0', '1', '6');
INSERT INTO `preguntas` VALUES ('7', 'Pregunta 7', '1', '2', '3', '4', '5', '1', '-', '0', '0', '1', '7');
INSERT INTO `preguntas` VALUES ('8', 'Pregunta 8', '1', '2', '3', '4', '5', '1', '-', '0', '0', '1', '8');
INSERT INTO `preguntas` VALUES ('9', 'Pregunta 9', '1', '2', '3', '4', '5', '1', '-', '0', '0', '1', '9');
INSERT INTO `preguntas` VALUES ('10', 'Pregunta 10', '1', '2', '3', '4', '5', '1', '-', '0', '0', '1', '10');
INSERT INTO `preguntas` VALUES ('11', 'Pregunta 11', '1', '2', '3', '4', '5', '1', '-', '0', '0', '1', '11');
INSERT INTO `preguntas` VALUES ('12', 'Pregunta 12', '1', '2', '3', '4', '5', '1', '-', '0', '0', '1', '12');
INSERT INTO `preguntas` VALUES ('13', 'Pregunta 13', '1', '2', '3', '4', '5', '1', '-', '0', '0', '1', '13');
INSERT INTO `preguntas` VALUES ('14', 'Pregunta 14', '1', '2', '3', '4', '5', '1', '-', '0', '0', '1', '14');
INSERT INTO `preguntas` VALUES ('15', 'Pregunta 15', '1', '2', '3', '4', '5', '1', '-', '0', '0', '1', '15');
INSERT INTO `preguntas` VALUES ('16', 'Pregunta 16', '1', '2', '3', '4', '5', '1', '-', '0', '0', '1', '16');
INSERT INTO `preguntas` VALUES ('17', 'Pregunta 17', '1', '2', '3', '4', '5', '1', '-', '0', '0', '1', '17');
INSERT INTO `preguntas` VALUES ('18', 'Pregunta 18', '1', '2', '3', '4', '5', '1', '-', '0', '0', '1', '18');
INSERT INTO `preguntas` VALUES ('19', 'Pregunta 19', '1', '2', '3', '4', '5', '1', '-', '0', '0', '1', '19');
INSERT INTO `preguntas` VALUES ('20', 'Pregunta 20', '1', '2', '3', '4', '5', '1', '-', '0', '0', '1', '20');
INSERT INTO `preguntas` VALUES ('21', 'Pregunta 21', '1', '2', '3', '4', '5', '1', '-', '0', '0', '1', '21');
INSERT INTO `preguntas` VALUES ('22', 'Pregunta 22', '1', '2', '3', '4', '5', '1', '-', '0', '0', '1', '22');
INSERT INTO `preguntas` VALUES ('23', 'Pregunta 23', '1', '2', '3', '4', '5', '1', '-', '0', '0', '1', '23');
INSERT INTO `preguntas` VALUES ('24', 'Pregunta 24', '1', '2', '3', '4', '5', '1', '-', '0', '0', '1', '24');
INSERT INTO `preguntas` VALUES ('25', 'Pregunta 25', '1', '2', '3', '4', '5', '1', '-', '0', '0', '2', '1');
INSERT INTO `preguntas` VALUES ('26', 'Pregunta 26', '1', '2', '3', '4', '5', '1', '-', '0', '0', '2', '2');
INSERT INTO `preguntas` VALUES ('27', 'Pregunta 27', '1', '2', '3', '4', '5', '1', '-', '0', '0', '2', '3');
INSERT INTO `preguntas` VALUES ('28', 'Pregunta 28', '1', '2', '3', '4', '5', '1', '-', '0', '0', '2', '4');
INSERT INTO `preguntas` VALUES ('29', 'Pregunta 29', '1', '2', '3', '4', '5', '1', '-', '0', '0', '2', '5');
INSERT INTO `preguntas` VALUES ('30', 'Pregunta 30', '1', '2', '3', '4', '5', '1', '-', '0', '0', '2', '6');
INSERT INTO `preguntas` VALUES ('31', 'Pregunta 31', '1', '2', '3', '4', '5', '1', '-', '0', '0', '2', '7');
INSERT INTO `preguntas` VALUES ('32', 'Pregunta 32', '1', '2', '3', '4', '5', '1', '-', '0', '0', '2', '8');
INSERT INTO `preguntas` VALUES ('33', 'Pregunta 33', '1', '2', '3', '4', '5', '1', '-', '0', '0', '2', '9');
INSERT INTO `preguntas` VALUES ('34', 'Pregunta 34', '1', '2', '3', '4', '5', '1', '-', '0', '0', '2', '10');
INSERT INTO `preguntas` VALUES ('35', 'Pregunta 35', '1', '2', '3', '4', '5', '1', '-', '0', '0', '2', '11');
INSERT INTO `preguntas` VALUES ('36', 'Pregunta 36', '1', '2', '3', '4', '5', '1', '-', '0', '0', '2', '12');
INSERT INTO `preguntas` VALUES ('37', 'Pregunta 37', '1', '2', '3', '4', '5', '1', '-', '0', '0', '2', '13');
INSERT INTO `preguntas` VALUES ('38', 'Pregunta 38', '1', '2', '3', '4', '5', '1', '-', '0', '0', '2', '14');
INSERT INTO `preguntas` VALUES ('39', 'Pregunta 39', '1', '2', '3', '4', '5', '1', '-', '0', '0', '2', '15');
INSERT INTO `preguntas` VALUES ('40', 'Pregunta 40', '1', '2', '3', '4', '5', '1', '-', '0', '0', '2', '16');
INSERT INTO `preguntas` VALUES ('41', 'Pregunta 41', '1', '2', '3', '4', '5', '1', '-', '0', '0', '2', '17');
INSERT INTO `preguntas` VALUES ('42', 'Pregunta 42', '1', '2', '3', '4', '5', '1', '-', '0', '0', '2', '18');
INSERT INTO `preguntas` VALUES ('43', 'Pregunta 43', '1', '2', '3', '4', '5', '1', '-', '0', '0', '2', '19');
INSERT INTO `preguntas` VALUES ('44', 'Pregunta 44', '1', '2', '3', '4', '5', '1', '-', '0', '0', '2', '20');
INSERT INTO `preguntas` VALUES ('45', 'Pregunta 45', '1', '2', '3', '4', '5', '1', '-', '0', '0', '2', '21');
INSERT INTO `preguntas` VALUES ('46', 'Pregunta 46', '1', '2', '3', '4', '5', '1', '-', '0', '0', '2', '22');
INSERT INTO `preguntas` VALUES ('47', 'Pregunta 47', '1', '2', '3', '4', '5', '1', '-', '0', '0', '2', '23');
INSERT INTO `preguntas` VALUES ('48', 'Pregunta 48', '1', '2', '3', '4', '5', '1', '-', '0', '0', '2', '24');
INSERT INTO `preguntas` VALUES ('49', 'Pregunta 49', '1', '2', '3', '4', '5', '1', '-', '0', '0', '3', '1');
INSERT INTO `preguntas` VALUES ('50', 'Pregunta 50', '1', '2', '3', '4', '5', '1', '-', '0', '0', '3', '2');
INSERT INTO `preguntas` VALUES ('51', 'Pregunta 51', '1', '2', '3', '4', '5', '1', '-', '0', '0', '3', '3');
INSERT INTO `preguntas` VALUES ('52', 'Pregunta 52', '1', '2', '3', '4', '5', '1', '-', '0', '0', '3', '4');
INSERT INTO `preguntas` VALUES ('53', 'Pregunta 53', '1', '2', '3', '4', '5', '1', '-', '0', '0', '3', '5');
INSERT INTO `preguntas` VALUES ('54', 'Pregunta 54', '1', '2', '3', '4', '5', '1', '-', '0', '0', '3', '6');
INSERT INTO `preguntas` VALUES ('55', 'Pregunta 55', '1', '2', '3', '4', '5', '1', '-', '0', '0', '3', '7');
INSERT INTO `preguntas` VALUES ('56', 'Pregunta 56', '1', '2', '3', '4', '5', '1', '-', '0', '0', '3', '8');
INSERT INTO `preguntas` VALUES ('57', 'Pregunta 57', '1', '2', '3', '4', '5', '1', '-', '0', '0', '3', '9');
INSERT INTO `preguntas` VALUES ('58', 'Pregunta 58', '1', '2', '3', '4', '5', '1', '-', '0', '0', '3', '10');
INSERT INTO `preguntas` VALUES ('59', 'Pregunta 59', '1', '2', '3', '4', '5', '1', '-', '0', '0', '3', '11');
INSERT INTO `preguntas` VALUES ('60', 'Pregunta 60', '1', '2', '3', '4', '5', '1', '-', '0', '0', '3', '12');
INSERT INTO `preguntas` VALUES ('61', 'Pregunta 61', '1', '2', '3', '4', '5', '1', '-', '0', '0', '3', '13');
INSERT INTO `preguntas` VALUES ('62', 'Pregunta 62', '1', '2', '3', '4', '5', '1', '-', '0', '0', '3', '14');
INSERT INTO `preguntas` VALUES ('63', 'Pregunta 63', '1', '2', '3', '4', '5', '1', '-', '0', '0', '3', '15');
INSERT INTO `preguntas` VALUES ('64', 'Pregunta 64', '1', '2', '3', '4', '5', '1', '-', '0', '0', '3', '16');
INSERT INTO `preguntas` VALUES ('65', 'Pregunta 65', '1', '2', '3', '4', '5', '1', '-', '0', '0', '3', '17');
INSERT INTO `preguntas` VALUES ('66', 'Pregunta 66', '1', '2', '3', '4', '5', '1', '-', '0', '0', '3', '18');
INSERT INTO `preguntas` VALUES ('67', 'Pregunta 67', '1', '2', '3', '4', '5', '1', '-', '0', '0', '3', '19');
INSERT INTO `preguntas` VALUES ('68', 'Pregunta 68', '1', '2', '3', '4', '5', '1', '-', '0', '0', '3', '20');
INSERT INTO `preguntas` VALUES ('69', 'Pregunta 69', '1', '2', '3', '4', '5', '1', '-', '0', '0', '3', '21');
INSERT INTO `preguntas` VALUES ('70', 'Pregunta 70', '1', '2', '3', '4', '5', '1', '-', '0', '0', '3', '22');
INSERT INTO `preguntas` VALUES ('71', 'Pregunta 71', '1', '2', '3', '4', '5', '1', '-', '0', '0', '3', '23');
INSERT INTO `preguntas` VALUES ('72', 'Pregunta 72', '1', '2', '3', '4', '5', '1', '-', '0', '0', '3', '24');

-- ----------------------------
-- Table structure for usuario
-- ----------------------------
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(255) DEFAULT NULL,
  `apellidos` varchar(255) DEFAULT NULL,
  `edad` varchar(255) DEFAULT NULL,
  `celular` varchar(255) DEFAULT NULL,
  `usuario` varchar(255) DEFAULT NULL,
  `clave` varchar(255) DEFAULT NULL,
  `tipo_usuario` int(11) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `sexo` char(10) DEFAULT NULL,
  `tipo_colegio` char(255) DEFAULT NULL,
  `nivel_estudios` char(255) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `fecha_registro` datetime DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usuario
-- ----------------------------
INSERT INTO `usuario` VALUES ('1', null, null, null, null, 'admin', '202cb962ac59075b964b07152d234b70', '1', '1', null, null, '', null, null, null);
INSERT INTO `usuario` VALUES ('6', 'KYARA', 'GARCIA GAMARRA', '14 ', '956748591', 'Kyara GarcÃ­a ', 'a29aefa5a5bd3aef3dbfae6863d62554', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('7', 'Alonso Miguel', 'Yupanqui Jaramillo', '14', '993724760', 'alonso.yupanqui', '25f9e794323b453885f5181f1b624d0b', '2', '1', 'M', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('8', 'Khaled Dante Leonardo', 'Llamo Tineo', '14', '', 'Dante_TL2', '9e34a6abbe04da03a9cb2c75883f0765', '2', '1', 'M', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('9', 'Ivanna Emilia', 'Izquierdo Vargas', '14', '958607873', 'Ivanna_02', '5f0e63838ec0694877cbcfd2284ff209', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('10', 'Lia Xiomara ', 'Bravo Delgado', '14', '988 195 339', 'liaxiomara', '827ccb0eea8a706c4c34a16891f84e7b', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('11', 'Daleska Brighit', 'Bernal Rojas', '14', '939736670', 'bernaldaleska', '4fa65333503f36b7c4d7ecd7dfca3d73', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('12', 'Carolina', 'Muro Espinoza', '14', '941 027 354', 'caromurep@gmail.com', '2f54824b41fbc43affaed8e4cd518736', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('13', 'JosÃ© FabiÃ¡n del Ãngel', 'Vega DÃ­az', '14', '970615310', 'FabiÃ¡n Vega DÃ­az', '7a0d04742e29e5400e92c6e4ef46ce49', '2', '1', 'M', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('14', 'Renatto AndrÃ©', 'Altamirano AstupiÃ±an', '14', '962518903', 'Renatto Altamirano', '823fb650765300bc4a674126cd26be91', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('15', 'Caroline JoselÃ­n', 'RomÃ¡n VÃ¡squez', '13', '937679059', 'Caroline RomÃ¡n', '6ddea4dd6d43b9ca8f6f2f0d5baca619', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('16', 'Eliel David', 'Chafloque Chafloque', '14', '917191446', 'Eliel_David', '8408c94043b1bdb3bfbaece32bb60a22', '2', '1', 'M', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('17', 'Luis Fernando', 'Cordova Coronado', '15', '963313498', 'Kyout', '6e2877ece58b15de71acc81bd8f15a10', '2', '1', 'M', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('18', 'Sergio Daniel ', 'SÃ¡nchez Vera', '14', '982220855', 'Sergio', 'f25427cd6b2fb32841b8d6c4c4c85621', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('19', 'Jorge Romeo', 'Hernandez Valles', '14', '955062779', 'jorge', 'cbc757dbee8857c6f995d78eea2788ef', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('21', 'Rebeca Yahaira ', 'AcuÃ±a Pacheco ', '13', '933931137', '201694384', 'd8c5adf97006fd223cfba2b96b96bccb', '2', '1', 'F', 'N', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('22', 'Anderson Jair', 'RodrÃ­guez Carrera', '14', '946620495', '201402045', '4b09cc5e902703a677aeb0b889c6a026', '2', '1', 'F', 'N', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('23', 'Marco Antonio', 'Curo Arroyo', '14', '902 052 255', 'Curo', '7171be3ac1f8a6c7a790d62f7bfd0581', '2', '1', 'M', 'N', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('24', 'Billy Edilberto', 'Nunayalle Arbaiza', '14', '933809965', 'BNA13', '3095f41c07d193709d403535ae829d72', '2', '1', 'F', 'N', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('26', 'Rasec', 'Rodas Risco', '14', '972 747 672', '201901598', '694c26f2d7edf418c589d8c99600b0c7', '2', '1', 'F', 'N', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('27', 'ariana', 'navarro ', '14', '995145543', '70949930', '397a79a70516a1ab8a2dfb7694419c9e', '2', '1', 'M', 'N', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('28', 'Katherine Juliana', 'Cubas Montenegro', '14 aÃ±os', '987017859', 'Katherine', '4debdbaa410a844bf21cd5f8fa495fb2', '2', '1', 'M', 'N', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('29', 'Danna BelÃ©n', 'CastaÃ±eda Idrogo', '14', '945 179 664', 'dannaeun2001', 'a65bb7f6c85f40010a5cd5877bdd1672', '2', '1', 'F', 'N', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('33', 'Deyaris ', 'Cadena', '14 aÃ±os', '971284854', 'ale_cb', '0fa1db7506061eb47c699829e761d891', '2', '1', 'F', 'N', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('34', 'Carlos', 'Alvarez', '12', '979730547', 'calvarez', '202cb962ac59075b964b07152d234b70', '2', '1', 'F', 'N', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('36', 'Walter', 'castro', '14', '950786274', 'Waltercv', 'c548dcca6ff5d97068d59423967b38d7', '2', '1', 'F', 'N', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('37', 'Stephanno Antholianno ', 'Limonchi Castillo', '14', '927901835', 'stephanno28', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', 'M', 'N', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('39', 'Cielo T', 'Pasapera manayay', '14', '932523697', 'AaRrY', 'fcea920f7412b5da7be0cf42b8c93759', '2', '1', 'F', 'N', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('40', 'Williams Matheo', 'Ramos Malca', '14', '912616002', 'Matheo', 'e3ffb8de9378a09b69600e74abcd602c', '2', '1', 'F', 'N', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('41', 'Christopher Mario', 'Coronel Fonseca ', '14', '', 'Christopher', 'bb47b0c53cc3360048141a05e98e7b17', '2', '1', 'M', 'N', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('42', 'Angela Nayeli', 'Vega Delgado', '14', '947332688', '201200782', '289471e225940d43c6b32affba55ccd2', '2', '1', 'M', 'N', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('43', 'IVANA ANTONELLA ', 'GARECA PUICAN ', '14', '952 121 046', 'anto.gareca', 'b01621ed1e1fb4f3be4c7e3f358ad27d', '2', '1', 'F', 'N', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('47', 'AarÃ³n JosuÃ©', 'Aguilar Burga', '14', '932200473', '201401100', '0daedf8a3088f884bea5784877bd4671', '2', '1', 'F', 'N', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('48', 'celeste', 'suarez', '14', '953028048', 'cele:p', '529b240fc2f3ebf02c794f2a7a0656aa', '2', '1', 'F', 'N', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('49', 'Luciana del Milagro ', 'FernÃ¡ndez ChapoÃ±an ', '14', '978899508', '61284033@colegiocima.edu.pe', 'cb96221fead4ab054ddf7c5e6e510d8d', '2', '1', 'F', 'N', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('50', 'Ghandy Rashid', 'Torres Santisteban ', '13', '953 819 680', 'Ghandy18', '2c432d4feff566061e7826aa236ad890', '2', '1', 'M', 'N', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('52', 'Frank Angelo Pissani Casanova', 'Pissani Casanova', '14', '991705143', 'Frank 2', 'aec25aac4c82bd69c6cd982f12a16342', '2', '1', 'F', 'N', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('54', 'Estefany Dayana', 'Avellaneda Montenegro ', '14 aÃ±os', '954646852', 'Stefany1-4', '58e4e1e6d14fa89b554b5a6ad6c1cef0', '2', '1', 'F', 'N', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('55', 'Frank Angelo ', 'Pissani Casanova', '14', '991705143', 'Frank2225', '307c4073d8c65b7f1d20c29e459dc1ba', '2', '1', 'M', 'N', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('56', 'Nataniel Jimena ', 'Castillo CastaÃ±eda ', '14', '987 458 253', 'nataniel castillo ', '18add30152604388a9b71fd1d442b728', '2', '1', 'M', 'N', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('57', 'samuel', 'panta ', '14', '926995314', 'samuelito', '2f0f0dde307da6aa90e18ea8ce07d823', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('60', 'Jorge Nicolas', 'Castillo ZuÃ±e ', '14', '996829635', '201301483', '0cba0f782ca2abf52469986c8f09380b', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('61', 'Sergio Daniel ', 'SÃ¡nchez Vera ', '14', '982220855', 'Daniel', '81dc9bdb52d04dc20036dbd8313ed055', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('62', 'Javier Adrian', 'Vigo Rodriguez', '14', '939 751 742', 'Javier Vigo ', 'e74f263e10bdf5b2ffa79ebd30183501', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('63', 'Jade JazmÃ­n', 'Valdivieso Burgos', '14', '931430748', 'jadejazminvaldiviesoburgos', '60cea7a4c9603f411f5e46df52e563d2', '2', '1', 'M', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('66', 'Mariana', 'Benavente', '14', '900801596', '61384775@cimacolegio.edu.pe', 'b3661a46c1290afb1d91ba16f677d9f0', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('67', 'Melany', 'Celis Soto', '14', '967200834', 'Melany cs', 'dedbfdc354b28b96b95a12260abfc521', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('68', 'Victor Daneil', 'Albines Custodio', '14', '934400804', 'VictorD', '40ba7028aa25b0f25a5e71094cc9d089', '2', '1', 'M', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('69', 'Julio Alejandro', 'Taboada Huancas', '14', '932478390', 'JulioT14', '2b1e7615b30d1f670e551bc8acb1de94', '2', '1', 'M', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('73', 'JOSUE IVAN', 'SCOTT MEDINA', '14', '936 493 128', '201400627', 'bf88381fc9dca3116473a28d6adeda14', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('74', 'Brad', 'Bustamante Garcia', '14', '943881384', '201903319', 'c3981fa8d26e95d911fe8eaeb6570f2f', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('76', 'Angeline', 'Chayan Verona', '14', '970 937 811', 'ANGELINE _Chayan ', 'bfd925fa86084bd0300fde7fd05ddd97', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('77', 'Sofia', 'Chavesta Gallardo', '13', '954335852', 'Sofia', 'a03718ca8498b359043d449720eddff0', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('78', 'ANAHI ESMERALDA ', 'CARRANZA SANCHEZ ', '15', '978967490', 'ANAHI', '432f45b44c432414d2f97df0e5743818', '2', '1', 'M', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('79', 'Caroline JoselÃ­n', 'RomÃ¡n VÃ¡squez', '13', '937 679 059', 'Caroline RomÃ¡n VÃ¡squez', 'd16e64f72b12d7e4de1ae5fdeca2262a', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('80', 'Eimmy Aracely ', 'Pupuche Vasquez ', '14', '937204264', 'Eimmy Pupuche ', '64adbf7c9d4dd8320243dfa8d43038f9', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('82', 'Cesar Augusto', 'Leon Clavijo', '14 aÃ±os ', '967 529 063', 'Cesar', '8d34c792653e1a30030baec92bf6db3c', '2', '1', 'M', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('83', 'KYARA', 'GARCIA GAMARRA', '14', '956748591', 'KYARA GARCIA GAMARRA', '7a98d43110ed700e678f1a540ccb5004', '2', '1', 'M', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('84', 'JosÃ© FabiÃ¡n ', 'Vega DÃ­az', '14', '970615310', 'JosÃ© FabiÃ¡n Vega DÃ­az', '80150cacb52b107b988dc92afd9d2888', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('85', 'Anibal', 'Muro Gonzales', '14', '915 379 307', 'Anibal Muro Gonzales', 'fd4944a882c2ba0ed08683d4b56cac77', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('86', 'Kiara Daniela', 'Sanchez Maza', '14', '936313925', '71185801@colegiocima.edu.pe', '50784cf6d97a817b47ad5e247b5325a4', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('87', 'Ariana ', 'Barturen Tarrillo', '14', '952806588', 'Ariana Barturen Tarrillo', 'd635202252effc95756aafa67546234c', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('88', 'Anderson ', 'Villoslada ', '14', '922787725 ', 'Ander', '7780881846ce5440e6c26d80fa73288b', '2', '1', 'M', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('90', 'Claudia Jimena', 'Perleche AlbÃºjar', '14', '937035518', 'claudia10', 'a93dfbdd51976b7bd6870067ee44447f', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('91', 'Dayana Nicole', 'Flores ChÃ¡vez', '14', '946 233 546', 'Dayanauvu', 'b300af4f1a1379d8f1f9e16ddd005a3e', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('92', 'Ximena Nicoll', 'Acosta Neyra', '13', '920655871', 'Ximena Acosta', '6f5428500ec1365bf70e000a7204db34', '2', '1', 'M', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('93', 'Luciana Briggitte', 'Fenco Reyes', '14', '972159872', 'Luciana Briggitte', '016eff090a5c2f26b5d401e912fc89a2', '2', '1', 'M', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('94', 'Carolina', 'Muro Espinoza', '14', '941027354', 'muro05@gmail.com', 'ae438a70c8cf796e40fc82efc0c29cb8', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('95', 'MARIANO ALEXANDER', 'CHANCAFE LIZA', '14', '997064804', 'MARIANO_ALEXANDER', 'ace585aa306b061588673d499f115b09', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('96', 'Victoria', 'SaldaÃ±a Ramirez ', '15', '946754994', 'Vickyghs', '8af433519d6e385e89bb280f8002f2b2', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('97', 'Fatima ', 'Clavo FernÃ¡ndez', '14', '913565958', 'Fatima Clavo FernÃ¡ndez', '8f8a242a71cec867f578fbf24e350188', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('98', 'SebastiÃ¡n Ernesto JosÃ©', 'Paredes Lecca', '14', '972604047', 'SebastianPL', 'ae2d105d3dc64d1e81f43f09900ef77d', '2', '1', 'M', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('99', 'Fernando Jose ', 'SigueÃ±as Effio ', '14', '977 569 833', '', 'd41d8cd98f00b204e9800998ecf8427e', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('100', 'Fernando Jose ', 'SigueÃ±as Effio ', '14', '977 569 833', 'Fernando ', 'e630a8be4b972ff0ca13d3cf84b3a36b', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('101', 'Gianpiero Fabian', 'Casella Paredes', '14', ' 51 948 211 584', 'Gianpiero', '91dd5d33ec13a89ec778008c4c936399', '2', '1', 'M', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('102', 'Brenda', 'Muguerza', '14', '922507730', '201502880', '946e8212855ef9f9ce7bea01bbd91155', '2', '1', 'M', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('103', 'Cristel', 'Chamba Espinoza', '14', '941201473', 'Cristel_ChambaE', 'f920ebf246a462373ee92a3752a12cef', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('104', 'Kristine Paola ', 'Ramos Saldarriaga', '14', '972168085', '201701509', 'b25b5e8708c7628e6b0c8a6c5e0de3fb', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('105', 'Fatima ', 'Clavo FernÃ¡ndez', '14', '913565983', 'Fatima Clavo FernÃ¡ndez', 'ddb5dcc7624860850bf9d441dc592346', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('106', 'Fatima', 'Clavo FernÃ¡ndez', '14', '913565983', 'Fatima Clavo FernÃ¡ndez', 'ddb5dcc7624860850bf9d441dc592346', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('107', 'Fatima', 'Clavo FernÃ¡ndez', '14', '913565983', 'Fatima Clavo FernÃ¡ndez', '8f8a242a71cec867f578fbf24e350188', '2', '1', 'M', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('108', 'Dayeli  del Rosario', 'Tiparra Serquen', '14', '966882851', 'dayeli', '3a824154b16ed7dab899bf000b80eeee', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('109', 'YRVIN ADRIAN', 'RAFAEL BANCES', '14', '952553526', 'rafaelbancesyrvin@gmail.com', '3a0ea7d903886218d64dd50c5b5cfab2', '2', '1', 'M', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('110', 'Alexia Nicolle ', 'Quijano Jimenez', '14', '948 640 999', 'Alexia_Quijano', '0a2282fcd474065c9bf7c0009e176bb6', '2', '1', 'M', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('111', 'Gino Antonio', 'Lozano Yanac', '14', '954448225', 'Gino', '8bb83e4a18d178e012db182f7eb95139', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('112', 'Kiara Maylin', 'ChÃ¡vez Pisfil', '14', '948407129', 'Kiara ChÃ¡vez ', '68cb81681a28dfa206a67bbcb615820c', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('113', 'Lyn Jing Arlette', ' Fan Llaque', '14', '934 870 246', 'lynfanllaque', '6d82deb5c83a8c0fe61a24c90fe88dc6', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('114', 'Lionel ', 'Acosta Salazar', '13', '993248833', 'Acosta S.Lionel', '3674e457f0f574e1e179cb2e24814d7d', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('115', 'Luis Alejandro', 'Herrera Mechato', '14', ' 51 962 758 411', 'Luis Alejandro Herrera', 'e16a6c9c7558d38c6f9d32c938642ec0', '2', '1', 'M', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('116', 'Fatima ', 'Clavo FernÃ¡ndez', '14', '913565983', 'Fatima Clavo FernÃ¡ndez', '1e48c4420b7073bc11916c6c1de226bb', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('117', 'Yurem Antonio', 'Chacon Vinces', '14', '923218688', 'Yurem_3E', 'b97a51f0f2da9e676c1ee6fcaa762648', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('118', 'Keneth Alessandro', 'Lopez Garcia', '14', '949359515', 'Alessan1055s', '90b9c010218856349e0017501ae3c928', '2', '1', 'M', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('119', 'Diego Alonso', 'Bautista Renteria', '14', '924 431 106', 'Diego Alonso Bautista Renteria ', 'a3f4f3a1da0f33d31cb42afc0dcec235', '2', '1', 'M', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('120', 'Maria Fernanda', 'Rodas Balladares', '14', '952652803', 'MaferRodas', 'fea0208b2230887bf31094be03594ab6', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('121', 'Farid Gonzalo', 'Castro Torres', '14', '988073813', 'Farid Gonzalo Castro Torres', '25f9e794323b453885f5181f1b624d0b', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('122', 'Vicenzo Alexander Luis Aldo', 'Otiniano NuÃ±ez', '14', '', 'Alex ><', '56f074aecbae03bbdf446b9dfb2e03fc', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('123', 'William ', 'Guevara clapes ', '14', '921408024', 'williamaaronguevaraclapes@gmail.com', 'ea115c8b4eb040540def3cdde200d843', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('124', 'fran', 'huaman aguilar', '14', '979342656', 'Fran1234', '8b796eee5ba573b18341c99150720706', '2', '1', 'M', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('125', 'fran', 'huaman choquehuanca', '14', '979642585', 'olasoyfran', 'a6eaf3c5b0d795564b698c807430389b', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('126', 'Julio Fabrizzio', 'Rosillo Velasquez', '13', '900603995', 'Julio Fabrizzio Rosillo', '24d4a63176c1f26ddaf1d0fd030223cf', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('127', 'Ytalo', 'Cabrera Vasquez', '14', '959022008', 'ytalo2007', '327823fd8b76774808df6cc1dc6d6575', '2', '1', 'M', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('128', 'Daniela Sayuri', 'Mejia Uchofen', '14', '964404262', 'Daniela234', '560d8e2157e4ce2e87efa3ade9d9f865', '2', '1', 'M', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('129', 'Bruno Sebastian', 'Medina Campos', '14', '994132114', 'Bruno', 'b30f63e07a42bc8a8501fcd8b1624b9c', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('130', 'Gabriela Esperanza', 'Lozano Miranda', '14', '', '71178034@colegiocima.edu.pe', 'c86b499a5f4ae9dbb4518a56232d5a8d', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('131', 'Veronica', 'Bravo', '14', '914 915 175', '70728820@colegiocima.edu.pe', '5fc7f11ab546d979bd1ea8b508a5ac81', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('132', 'Natzumi Yaitza ', 'FernÃ¡ndez Mundaca', '14', '989561483', '202001420', '1ad723668a03df14e0567e895e193fec', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('133', 'Ariana del Milagro', 'Jordan Reque', '14', '992399425', '121625', 'd1426ffda1e4b7225d40cc0b22c78c7e', '2', '1', 'M', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('134', 'Renatto Valentino ', 'Vera Barbadillo', '14', '934530739', 'renato', '25d55ad283aa400af464c76d713c07ad', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('135', 'Leydi Mariana', 'Leyva Gonzales', '14', '', 'mariana.leyva', '8cc7053b0ceed4b0ea8bbf8646d11dea', '2', '1', 'M', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('136', 'Billy Edilberto ', 'Nunayalle Arbaiza', '14', '933809965', 'Billy', '2eb7c731fcb20bd5cd4d9e3b0902ab3e', '2', '1', 'M', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('137', 'Cesar Alejamdro', 'Cordova Malca', '14', '984814382', 'Cesar Alejamdro Cordova Malca', '6c2c19d297b478fe23d1d44c33c3f01a', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('138', 'FabiÃ¡n Eduardo', 'Cornejo Delgado', '14', '963804858', 'fabianeduardocornejodelgado', '75bf2d5c25635bb93175a42e6e1a7bdc', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('139', 'Anier Emanuel', 'Castro Meza', '14', '954808973', 'Anier', 'a4a97ffc170ec7ab32b85b2129c69c50', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('140', 'LUCAS ', 'TICONA ', '14', '949678951', 'LUQUITAS', '202cb962ac59075b964b07152d234b70', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('141', 'isai eduardo', 'campos tarrillo', '14', '922 563 860', '70738800@colegiocima.edu.pe', '71e80d653ef73e1585867c6b119b23f9', '2', '1', 'M', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('142', 'Andrea ', 'Pupuche', '14 aÃ±os', '998727596', 'Andrea', '249860d3915fe25c9f6affdcc10f96a6', '2', '1', 'F', 'P', 'S', null, null, null);
INSERT INTO `usuario` VALUES ('143', 'luis', 'ventura', '24', '987654321', 'lventura', '202cb962ac59075b964b07152d234b70', '2', '1', 'm', 'pb', 'p', '1998-02-01', '2022-06-30 17:15:43', 'prueba@prueba.com');
