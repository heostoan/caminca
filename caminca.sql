/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : caminca

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2022-05-31 22:57:07
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
