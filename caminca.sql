/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : caminca

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2022-06-02 10:10:48
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of estatus
-- ----------------------------
INSERT INTO `estatus` VALUES ('2', '4', '1', '50', '00:00:43', '00:01:52', '00:04:01', '0', '0', '0', '0', '136', '0', '0', '2');
INSERT INTO `estatus` VALUES ('3', '5', '1', '150', '00:00:00', '00:00:00', '00:00:00', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `estatus` VALUES ('4', '6', '1', '450', '00:00:00', '00:00:00', '00:00:00', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `estatus` VALUES ('5', '7', '1', '200', '00:00:00', '00:00:00', '00:00:00', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `estatus` VALUES ('6', '8', '1', '520', '00:00:00', '00:00:00', '00:00:00', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `estatus` VALUES ('7', '9', '1', '200', '00:00:00', '00:00:00', '00:00:00', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `estatus` VALUES ('8', '10', '1', '400', '00:00:00', '00:00:00', '00:00:00', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `estatus` VALUES ('9', '1', '1', '350', '00:00:00', '00:00:00', '00:00:00', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `estatus` VALUES ('10', '12', '1', '210', '00:00:00', '00:00:00', '00:00:00', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `estatus` VALUES ('11', '13', '1', '3000', '00:00:00', '00:00:00', '00:00:00', '0', '0', '0', '0', '0', '0', '0', '0');

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
  PRIMARY KEY (`idusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usuario
-- ----------------------------
INSERT INTO `usuario` VALUES ('3', null, null, null, null, 'admin', '202cb962ac59075b964b07152d234b70', '1', '1');
INSERT INTO `usuario` VALUES ('4', 'Bianka', 'Torres', '8', '987654321', 'biankat', '202cb962ac59075b964b07152d234b70', '2', '1');
INSERT INTO `usuario` VALUES ('5', 'Fernanda', 'Rodriguez', '7', '985478544', 'fernandar', '202cb962ac59075b964b07152d234b70', '2', '1');
INSERT INTO `usuario` VALUES ('6', 'Juan', 'Perez', '8', '943157846', 'juanp', '202cb962ac59075b964b07152d234b70', '2', '1');
INSERT INTO `usuario` VALUES ('7', 'Hernan', 'Gonzales', '8', '943157846', 'hernang', '202cb962ac59075b964b07152d234b70', '2', '1');
INSERT INTO `usuario` VALUES ('8', 'Anibal', 'Julca', '6', '941247856', 'anibalj', '202cb962ac59075b964b07152d234b70', '2', '1');
INSERT INTO `usuario` VALUES ('9', 'Maria', 'Buils', '6', '987654321', 'mariab', '202cb962ac59075b964b07152d234b70', '2', '1');
INSERT INTO `usuario` VALUES ('10', 'Juana', 'Mens', '7', '985478544', 'juanam', '202cb962ac59075b964b07152d234b70', '2', '1');
INSERT INTO `usuario` VALUES ('11', 'Andrea', 'Heers', '9', '943157846', 'andreah', '202cb962ac59075b964b07152d234b70', '2', '1');
INSERT INTO `usuario` VALUES ('12', 'Mario', 'Long', '10', '943157846', 'mariol', '202cb962ac59075b964b07152d234b70', '2', '1');
INSERT INTO `usuario` VALUES ('13', 'Kamilo', 'Lee', '11', '941247856', 'kamilol', '202cb962ac59075b964b07152d234b70', '2', '1');
