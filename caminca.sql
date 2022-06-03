/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : caminca

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2022-06-02 21:36:13
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of estatus
-- ----------------------------
INSERT INTO `estatus` VALUES ('1', '2', '3', '550', '00:00:59', '00:01:33', '00:01:09', '1', '4', '2', '136', '813', '271', '407', '12');
INSERT INTO `estatus` VALUES ('2', '3', '1', '100', '00:00:00', '00:00:00', '00:00:00', '0', '0', '0', '0', '0', '0', '0', '0');

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
INSERT INTO `preguntas` VALUES ('1', '2+1', '3', '2', '5', '4', '0', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '1', '1');
INSERT INTO `preguntas` VALUES ('2', '5-1', '1', '2', '3', '4', '5', '4', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '1', '2');
INSERT INTO `preguntas` VALUES ('3', '2*8', '14', '15', '16', '17', '18', '3', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '1', '3');
INSERT INTO `preguntas` VALUES ('4', '100/5', '10', '20', '30', '40', '50', '2', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '1', '4');
INSERT INTO `preguntas` VALUES ('5', '25+5', '20', '30', '40', '40', '60', '2', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '1', '5');
INSERT INTO `preguntas` VALUES ('6', '64-10', '54', '44', '34', '24', '12', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '1', '6');
INSERT INTO `preguntas` VALUES ('7', '20*6', '121', '1223', '120', '3', '654', '3', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '1', '7');
INSERT INTO `preguntas` VALUES ('8', '70/2', '45', '35', '1212', '8', '34', '2', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '1', '8');
INSERT INTO `preguntas` VALUES ('9', '201+101', '565', '434', '18', '302', '122', '4', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '1', '9');
INSERT INTO `preguntas` VALUES ('10', '402-102', '300', '776', '45', '2', '21', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '1', '10');
INSERT INTO `preguntas` VALUES ('11', '2*9', '21', '54', '18', '6', '1224', '3', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '1', '11');
INSERT INTO `preguntas` VALUES ('12', '18/2', '4', '23', '932', '1', '9', '5', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '1', '12');
INSERT INTO `preguntas` VALUES ('13', '32+100', '232', '132', '214', '9', '4555', '2', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '1', '13');
INSERT INTO `preguntas` VALUES ('14', '300-123', '344', '3234', '546', '177', '431', '4', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '1', '14');
INSERT INTO `preguntas` VALUES ('15', '8*7', '56', '43', '125', '12', '813', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '1', '15');
INSERT INTO `preguntas` VALUES ('16', '121/11', '11', '23', '823', '42', '12', '5', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '1', '16');
INSERT INTO `preguntas` VALUES ('17', '123+456', '432', '579', '157', '86', '33', '2', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '1', '17');
INSERT INTO `preguntas` VALUES ('18', '456-123', '333', '432', '778', '213', '235', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '1', '18');
INSERT INTO `preguntas` VALUES ('19', '12*12', '123', '67', '248', '144', '244', '4', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '1', '19');
INSERT INTO `preguntas` VALUES ('20', '144/12', '7', '8', '12', '11', '10', '3', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '1', '20');
INSERT INTO `preguntas` VALUES ('21', 'Raiz cuadrada de 25', '3', '6', '8', '2', '5', '5', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '1', '21');
INSERT INTO `preguntas` VALUES ('22', '1+1', '2', '3', '4', '5', '6', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '1', '22');
INSERT INTO `preguntas` VALUES ('23', '2+2', '4', '3', '2', '10', '1', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '1', '23');
INSERT INTO `preguntas` VALUES ('24', '2+1', '3', '2', '5', '4', '0', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '1', '24');
INSERT INTO `preguntas` VALUES ('25', '5-1', '1', '2', '3', '4', '5', '4', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '2', '1');
INSERT INTO `preguntas` VALUES ('26', '2*8', '14', '15', '16', '17', '18', '3', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '2', '2');
INSERT INTO `preguntas` VALUES ('27', '100/5', '10', '20', '30', '40', '50', '2', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '2', '3');
INSERT INTO `preguntas` VALUES ('28', '25+5', '20', '30', '40', '40', '60', '2', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '2', '4');
INSERT INTO `preguntas` VALUES ('29', '64-10', '54', '44', '34', '24', '12', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '2', '5');
INSERT INTO `preguntas` VALUES ('30', '20*6', '121', '1223', '120', '3', '654', '3', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '2', '6');
INSERT INTO `preguntas` VALUES ('31', '70/2', '45', '35', '1212', '8', '34', '2', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '2', '7');
INSERT INTO `preguntas` VALUES ('32', '201+101', '565', '434', '18', '302', '122', '4', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '2', '8');
INSERT INTO `preguntas` VALUES ('33', '402-102', '300', '776', '45', '2', '21', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '2', '9');
INSERT INTO `preguntas` VALUES ('34', '2*9', '21', '54', '18', '6', '1224', '3', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '2', '10');
INSERT INTO `preguntas` VALUES ('35', '18/2', '4', '23', '932', '1', '9', '5', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '2', '11');
INSERT INTO `preguntas` VALUES ('36', '32+100', '232', '132', '214', '9', '4555', '2', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '2', '12');
INSERT INTO `preguntas` VALUES ('37', '300-123', '344', '3234', '546', '177', '431', '4', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '2', '13');
INSERT INTO `preguntas` VALUES ('38', '8*7', '56', '43', '125', '12', '813', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '2', '14');
INSERT INTO `preguntas` VALUES ('39', '121/11', '11', '23', '823', '42', '12', '5', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '2', '15');
INSERT INTO `preguntas` VALUES ('40', '123+456', '432', '579', '157', '86', '33', '2', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '2', '16');
INSERT INTO `preguntas` VALUES ('41', '456-123', '333', '432', '778', '213', '235', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '2', '17');
INSERT INTO `preguntas` VALUES ('42', '12*12', '123', '67', '248', '144', '244', '4', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '2', '18');
INSERT INTO `preguntas` VALUES ('43', '144/12', '7', '8', '12', '11', '10', '3', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '2', '19');
INSERT INTO `preguntas` VALUES ('44', 'Raiz cuadrada de 25', '3', '6', '8', '2', '5', '5', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '2', '20');
INSERT INTO `preguntas` VALUES ('45', '1+1', '2', '3', '4', '5', '6', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '2', '21');
INSERT INTO `preguntas` VALUES ('46', '2+2', '4', '3', '2', '10', '1', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '2', '22');
INSERT INTO `preguntas` VALUES ('47', '2+1', '3', '2', '5', '4', '0', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '2', '23');
INSERT INTO `preguntas` VALUES ('48', '5-1', '1', '2', '3', '4', '5', '4', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '2', '24');
INSERT INTO `preguntas` VALUES ('49', '2*8', '14', '15', '16', '17', '18', '3', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '3', '1');
INSERT INTO `preguntas` VALUES ('50', '100/5', '10', '20', '30', '40', '50', '2', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '3', '2');
INSERT INTO `preguntas` VALUES ('51', '25+5', '20', '30', '40', '40', '60', '2', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '3', '3');
INSERT INTO `preguntas` VALUES ('52', '64-10', '54', '44', '34', '24', '12', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '3', '4');
INSERT INTO `preguntas` VALUES ('53', '20*6', '121', '1223', '120', '3', '654', '3', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '3', '5');
INSERT INTO `preguntas` VALUES ('54', '70/2', '45', '35', '1212', '8', '34', '2', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '3', '6');
INSERT INTO `preguntas` VALUES ('55', '201+101', '565', '434', '18', '302', '122', '4', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '3', '7');
INSERT INTO `preguntas` VALUES ('56', '402-102', '300', '776', '45', '2', '21', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '3', '8');
INSERT INTO `preguntas` VALUES ('57', '2*9', '21', '54', '18', '6', '1224', '3', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '3', '9');
INSERT INTO `preguntas` VALUES ('58', '18/2', '4', '23', '932', '1', '9', '5', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '3', '10');
INSERT INTO `preguntas` VALUES ('59', '32+100', '232', '132', '214', '9', '4555', '2', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '3', '11');
INSERT INTO `preguntas` VALUES ('60', '300-123', '344', '3234', '546', '177', '431', '4', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '3', '12');
INSERT INTO `preguntas` VALUES ('61', '8*7', '56', '43', '125', '12', '813', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '3', '13');
INSERT INTO `preguntas` VALUES ('62', '121/11', '11', '23', '823', '42', '12', '5', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '3', '14');
INSERT INTO `preguntas` VALUES ('63', '123+456', '432', '579', '157', '86', '33', '2', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '3', '15');
INSERT INTO `preguntas` VALUES ('64', '456-123', '333', '432', '778', '213', '235', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '3', '16');
INSERT INTO `preguntas` VALUES ('65', '12*12', '123', '67', '248', '144', '244', '4', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '3', '17');
INSERT INTO `preguntas` VALUES ('66', '144/12', '7', '8', '12', '11', '10', '3', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '3', '18');
INSERT INTO `preguntas` VALUES ('67', 'Raiz cuadrada de 25', '3', '6', '8', '2', '5', '5', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '3', '19');
INSERT INTO `preguntas` VALUES ('68', '1+1', '2', '3', '4', '5', '6', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '3', '20');
INSERT INTO `preguntas` VALUES ('69', '2+2', '4', '3', '2', '10', '1', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '3', '21');
INSERT INTO `preguntas` VALUES ('70', 'Raiz cuadrada de 25', '3', '6', '8', '2', '5', '5', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '3', '22');
INSERT INTO `preguntas` VALUES ('71', '1+1', '2', '3', '4', '5', '6', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '3', '23');
INSERT INTO `preguntas` VALUES ('72', '2+2', '4', '3', '2', '10', '1', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '3', '2', '3', '24');

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
  PRIMARY KEY (`idusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usuario
-- ----------------------------
INSERT INTO `usuario` VALUES ('1', null, null, null, null, 'admin', '202cb962ac59075b964b07152d234b70', '1', '1');
INSERT INTO `usuario` VALUES ('2', 'Bianka', 'Torres', '8', '979004799', 'biankat', '202cb962ac59075b964b07152d234b70', '2', '1');
INSERT INTO `usuario` VALUES ('3', 'Juan', 'Pacheco', '8', '987654336', 'juanp', '202cb962ac59075b964b07152d234b70', '2', '1');
