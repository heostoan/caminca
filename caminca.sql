
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
  `posicion_ficha_abajo` float DEFAULT NULL,
  `posicion_ficha_arriba` float DEFAULT NULL,
  `posicion_ficha_derecha` float DEFAULT NULL,
  `posicion_ficha_izquierda` float DEFAULT NULL,
  `acumulador_ficha` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_estatus`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of estatus
-- ----------------------------
INSERT INTO `estatus` VALUES ('1', '2', '3', '550', '00:00:59', '00:01:33', '00:00:05', '1', '4', '2', '136', '813', '271', '407', '12');
INSERT INTO `estatus` VALUES ('2', '3', '1', '100', '00:00:00', '00:00:00', '00:00:00', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `estatus` VALUES ('4', '12', '2', '760', '00:00:07', '00:00:06', '00:00:06', '3', '2', '0', '0', '0', '0', '0', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of preguntas
-- ----------------------------
INSERT INTO `preguntas` VALUES ('73', 'Si la magnitud  A  es Directamente Proporcional(DP) a la magnitud  B , cuando la magnitud  A  toma el valor numérico de 2 entonces la magnitud  B  asume 4 como valor numérico, ¿Qué valor asume la magnitud  A , cuando la magnitud  B  toma el valor numérico de 8?', '4', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '1', '1');
INSERT INTO `preguntas` VALUES ('74', 'Si la magnitud  M  es Directamente Proporcional(DP) a la magnitud  N , cuando la magnitud  M  toma el valor numérico de 3 entonces la magnitud  N  asume 6 como valor numérico, ¿Qué valor asume la magnitud  M , cuando la magnitud  N  toma el valor numérico de 12?', '6', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '1', '2');
INSERT INTO `preguntas` VALUES ('75', 'Si la magnitud  S  es Directamente Proporcional(DP) a la magnitud  Q , cuando la magnitud  S  toma el valor numérico de 5 entonces la magnitud  Q  asume 8 como valor numérico, ¿Qué valor asume la magnitud  S , cuando la magnitud  Q  toma el valor numérico de 16?', '10', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '1', '3');
INSERT INTO `preguntas` VALUES ('76', 'Si la magnitud  X  es Directamente Proporcional(DP) a la magnitud  Y , cuando la magnitud  X  toma el valor numérico de 4 entonces la magnitud  Y  asume 7 como valor numérico, ¿Qué valor asume la magnitud  X , cuando la magnitud  Y  toma el valor numérico de 14?', '8', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '1', '4');
INSERT INTO `preguntas` VALUES ('77', 'Si la magnitud  A  es Inversamente Proporcional(IP) a la magnitud  B , cuando la magnitud  A  toma el valor numérico de 2 entonces la magnitud  B  asume 4 como valor numérico, ¿Qué valor asume la magnitud  A , cuando la magnitud  B  toma el valor numérico de 8?', '1', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '1', '5');
INSERT INTO `preguntas` VALUES ('78', 'Si la magnitud  M  es Inversamente Proporcional(IP) a la magnitud  N , cuando la magnitud  M  toma el valor numérico de 3 entonces la magnitud  N  asume 6 como valor numérico, ¿Qué valor asume la magnitud  M , cuando la magnitud  N  toma el valor numérico de 9?', '2', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '1', '6');
INSERT INTO `preguntas` VALUES ('79', 'Si la magnitud  S  es Inversamente Proporcional(IP) a la magnitud  Q , cuando la magnitud  S  toma el valor numérico de 10 entonces la magnitud  Q  asume 8 como valor numérico, ¿Qué valor asume la magnitud  S , cuando la magnitud  Q  toma el valor numérico de 16?', '5', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '1', '7');
INSERT INTO `preguntas` VALUES ('80', 'Si la magnitud  X  es Inversamente Proporcional(IP) a la magnitud  Y , cuando la magnitud  X  toma el valor numérico de 4 entonces la magnitud  Y  asume 7 como valor numérico, ¿Qué valor asume la magnitud  X , cuando la magnitud  Y  toma el valor numérico de 14?', '2', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '1', '8');
INSERT INTO `preguntas` VALUES ('81', 'Si la magnitud  A  es Directamente Proporcional(DP) a la magnitud  B , cuando la magnitud  A  toma el valor numérico de 2 entonces la magnitud  B  asume 4 como valor numérico, ¿Qué valor asume la magnitud  B , cuando la magnitud  A  toma el valor numérico de 8?', '16', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '1', '9');
INSERT INTO `preguntas` VALUES ('82', 'Si la magnitud  M  es Directamente Proporcional(DP) a la magnitud  N , cuando la magnitud  M  toma el valor numérico de 3 entonces la magnitud  N  asume 6 como valor numérico, ¿Qué valor asume la magnitud  N , cuando la magnitud  M  toma el valor numérico de 12?', '24', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '1', '10');
INSERT INTO `preguntas` VALUES ('83', 'Si la magnitud  S  es Directamente Proporcional(DP) a la magnitud  Q , cuando la magnitud  S  toma el valor numérico de 4 entonces la magnitud  Q  asume 8 como valor numérico, ¿Qué valor asume la magnitud  Q , cuando la magnitud  S  toma el valor numérico de 16?', '32', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '1', '11');
INSERT INTO `preguntas` VALUES ('84', 'Si la magnitud  X  es Directamente Proporcional(DP) a la magnitud  Y , cuando la magnitud  X  toma el valor numérico de 4 entonces la magnitud  Y  asume 7 como valor numérico, ¿Qué valor asume la magnitud  Y , cuando la magnitud  X  toma el valor numérico de 12?', '21', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '1', '12');
INSERT INTO `preguntas` VALUES ('85', 'Si la magnitud  A  es Inversamente Proporcional(IP) a la magnitud  B , cuando la magnitud  A  toma el valor numérico de 6 entonces la magnitud  B  asume 4 como valor numérico, ¿Qué valor asume la magnitud  B , cuando la magnitud  A  toma el valor numérico de 8?', '3', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '1', '13');
INSERT INTO `preguntas` VALUES ('86', 'Si la magnitud  M  es Inversamente Proporcional(IP) a la magnitud  N , cuando la magnitud  M  toma el valor numérico de 9 entonces la magnitud  N  asume 6 como valor numérico, ¿Qué valor asume la magnitud  N , cuando la magnitud  M  toma el valor numérico de 27?', '2', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '1', '14');
INSERT INTO `preguntas` VALUES ('87', 'Si la magnitud  S  es Inversamente Proporcional(IP) a la magnitud  Q , cuando la magnitud  S  toma el valor numérico de 20 entonces la magnitud  Q  asume 4 como valor numérico, ¿Qué valor asume la magnitud  Q , cuando la magnitud  S  toma el valor numérico de 16?', '5', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '1', '15');
INSERT INTO `preguntas` VALUES ('88', 'Si la magnitud  X  es Inversamente Proporcional(IP) a la magnitud  Y , cuando la magnitud  X  toma el valor numérico de 4 entonces la magnitud  Y  asume 7 como valor numérico, ¿Qué valor asume la magnitud  Y , cuando la magnitud  X  toma el valor numérico de 14?', '2', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '1', '16');
INSERT INTO `preguntas` VALUES ('89', 'Si  P  es DP a  R  cuando P = 7, R = 3. Determinar  P  cuando R = 54.', '126', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '1', '17');
INSERT INTO `preguntas` VALUES ('90', 'Si  A  es IP a  B . Además, cuando A = 18, B es 7, calcula  A  cuando B es 14.', '9', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '1', '18');
INSERT INTO `preguntas` VALUES ('91', 'Si  A  es DP  B  cuando A = 18, B = 54, calcula  A  cuando B = 15.', '5', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '1', '19');
INSERT INTO `preguntas` VALUES ('92', 'Si  A  es IP a  B , y cuando  A  vale 18,  B  vale 20; calcula  B  cuando A es 36.', '10', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '1', '20');
INSERT INTO `preguntas` VALUES ('93', 'Si  A  es DP a  B , y cuando  A  vale 15,  B  vale 18, calcula  B  cuando A vale 20.', '24', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '1', '21');
INSERT INTO `preguntas` VALUES ('94', 'Si  A  es IP a  B  cuando A = 24 y B = 8, ¿cuál será el valor de  A  cuando B = 16?', '12', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '1', '22');
INSERT INTO `preguntas` VALUES ('95', 'Si  A  es DP a  B , y cuando  A  vale 16,  B  vale 24, calcula  B  cuando A vale 32.', '48', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '1', '23');
INSERT INTO `preguntas` VALUES ('96', 'Si  A  es IP a  B  cuando A = 36 y B = 9, ¿cuál será el valor de  A  cuando B = 12?', '27', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '1', '24');
INSERT INTO `preguntas` VALUES ('97', 'Si A es DP a B e IP a C, cuando A vale 12, B vale 18 y C vale 15, Hallar el valor de A, cuando B vale 9 y C vale 30.', '3', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '2', '1');
INSERT INTO `preguntas` VALUES ('98', 'Si M es DP a N e IP a P, cuando M vale 12, N vale 18 y P vale 15, Hallar el valor de M, cuando N vale 6 y P vale 10.', '6', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '2', '2');
INSERT INTO `preguntas` VALUES ('99', 'Si P es DP a Q e IP a R, cuando P vale 12, Q vale 18 y R vale 15, Hallar el valor de P, cuando Q vale 27 y R vale 30.', '9', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '2', '3');
INSERT INTO `preguntas` VALUES ('100', 'Si X es DP a Y e IP a Z, cuando X vale 12, Y vale 18 y Z vale 15, Hallar el valor de X, cuando Y vale 9 y Z vale 6.', '15', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '2', '4');
INSERT INTO `preguntas` VALUES ('101', 'Si X es DP a Y e IP a Z, cuando X vale 9, Y vale 25 y Z vale 16, Hallar el valor de X, cuando Y vale 50 y Z vale 8.', '36', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '2', '5');
INSERT INTO `preguntas` VALUES ('102', 'Si P es DP a Q e IP a R, cuando P vale 9, Q vale 25 y R vale 16, Hallar el valor de P, cuando Q vale 75 y R vale 12.', '36', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '2', '6');
INSERT INTO `preguntas` VALUES ('103', 'Si A es DP a B e IP a C, cuando A vale 9, B vale 25 y C vale 16, Hallar el valor de A, cuando B vale 125 y C vale 4.', '180', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '2', '7');
INSERT INTO `preguntas` VALUES ('104', 'Si A es DP a B e IP a C, cuando A vale 9, B vale 25 y C vale 16, Hallar el valor de A, cuando B vale 100 y C vale 64.', '9', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '2', '8');
INSERT INTO `preguntas` VALUES ('105', 'Si A es DP a B e IP a C, cuando A vale 12, B vale 18 y C vale 15, Hallar el valor de C, cuando B vale 9 y A vale 30.', '3', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '2', '9');
INSERT INTO `preguntas` VALUES ('106', 'Si X es DP a Y e IP a Z, cuando X vale 12, Y vale 18 y Z vale 15, Hallar el valor de Z, cuando Y vale 6 y X vale 10.', '6', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '2', '10');
INSERT INTO `preguntas` VALUES ('107', 'Si P es DP a Q e IP a R, cuando P vale 12, Q vale 18 y R vale 15, Hallar el valor de R, cuando Q vale 27 y P vale 30.', '9', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '2', '11');
INSERT INTO `preguntas` VALUES ('108', 'Si M es DP a N e IP a P, cuando M vale 12, N vale 18 y P vale 15, Hallar el valor de P, cuando N vale 9 y M vale 6.', '15', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '2', '12');
INSERT INTO `preguntas` VALUES ('109', 'Si M es DP a N e IP a P, cuando M vale 9, N vale 25 y P vale 16, Hallar el valor de P, cuando N vale 50 y M vale 8.', '36', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '2', '13');
INSERT INTO `preguntas` VALUES ('110', 'Si P es DP a Q e IP a R, cuando P vale 9, Q vale 25 y R vale 16, Hallar el valor de R, cuando Q vale 75 y P vale 12.', '36', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '2', '14');
INSERT INTO `preguntas` VALUES ('111', 'Si X es DP a Y e IP a Z, cuando X vale 9, Y vale 25 y Z vale 16, Hallar el valor de Z, cuando Y vale 125 y X vale 4.', '180', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '2', '15');
INSERT INTO `preguntas` VALUES ('112', 'Si A es DP a B e IP a C, cuando A vale 9, B vale 25 y C vale 16, Hallar el valor de C, cuando B vale 100 y A vale 64.', '9', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '2', '16');
INSERT INTO `preguntas` VALUES ('113', 'Si A es DP a B e IP a C, cuando A vale 12, B vale 18 y C vale 15, Hallar el valor de B, cuando A vale 4 y C vale 5.', '2', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '2', '17');
INSERT INTO `preguntas` VALUES ('114', 'Si M es DP a N e IP a P, cuando M vale 12, N vale 18 y P vale 15, Hallar el valor de N, cuando M vale 8 y P vale 10.', '8', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '2', '18');
INSERT INTO `preguntas` VALUES ('115', 'Si X es DP a Y e IP a Z, cuando X vale 12, Y vale 18 y Z vale 15, Hallar el valor de Y, cuando X vale 20 y Z vale 1.', '2', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '2', '19');
INSERT INTO `preguntas` VALUES ('116', 'Si P es DP a Q e IP a R, cuando P vale 12, Q vale 18 y R vale 15, Hallar el valor de Q, cuando P vale 6 y R vale 5.', '3', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '2', '20');
INSERT INTO `preguntas` VALUES ('117', 'Si X es DP a Y e IP a Z, cuando X vale 6, Y vale 8 y Z vale 25, Hallar el valor de Y, cuando X vale 3 y Z vale 25.', '4', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '2', '21');
INSERT INTO `preguntas` VALUES ('118', 'Si A es DP a B e IP a C, cuando A vale 6, B vale 8 y C vale 25, Hallar el valor de B, cuando A vale 10 y C vale 15.', '8', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '2', '22');
INSERT INTO `preguntas` VALUES ('119', 'Si M es DP a N e IP a P, cuando M vale 6, N vale 8 y P vale 25, Hallar el valor de N, cuando M vale 75 y P vale 3.', '12', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '2', '23');
INSERT INTO `preguntas` VALUES ('120', 'Si P es DP a Q e IP a R, cuando P vale 6, Q vale 8 y R vale 25, Hallar el valor de Q, cuando P vale 150 y R vale 2.', '16', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '2', '24');
INSERT INTO `preguntas` VALUES ('121', 'Si A es DP a la raíz cuadrada de B, cuando A vale 4, B vale 25, Hallar el valor de B, cuando A vale 8.', '100', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '3', '1');
INSERT INTO `preguntas` VALUES ('122', 'Si X es DP a la raíz cuadrada de Y, cuando X vale 12, Y vale 49, Hallar el valor de Y, cuando X vale 36.', '441', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '3', '2');
INSERT INTO `preguntas` VALUES ('123', 'Si M es DP a la raíz cuadrada de N, cuando M vale 6, N vale 36, Hallar el valor de M, cuando N vale 9.', '3', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '3', '3');
INSERT INTO `preguntas` VALUES ('124', 'Si P es DP a la raíz cuadrada de Q, cuando P vale 2, Q vale 25, Hallar el valor de P, cuando Q vale 625.', '10', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '3', '4');
INSERT INTO `preguntas` VALUES ('125', 'Si A es DP a B elevado al cuadrado, cuando A vale 4, B vale 5, Hallar el valor de B, cuando A vale 16.', '20', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '3', '5');
INSERT INTO `preguntas` VALUES ('126', 'Si M es DP a N elevado al cuadrado, cuando M vale 5, N vale 3, Hallar el valor de N, cuando M vale 45.', '9', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '3', '6');
INSERT INTO `preguntas` VALUES ('127', 'Si P es DP a Q elevado al cuadrado, cuando P vale 2, Q vale 3, Hallar el valor de P, cuando Q vale 6.', '8', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '3', '7');
INSERT INTO `preguntas` VALUES ('128', 'Si X es DP a Y elevado al cuadrado, cuando X vale 3, Y vale 7, Hallar el valor de X, cuando Y vale 21.', '27', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '3', '8');
INSERT INTO `preguntas` VALUES ('129', 'Si A es IP a la raíz cuadrada de B, cuando A vale 8, B vale 25, Hallar el valor de B, cuando A vale 4.', '100', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '3', '9');
INSERT INTO `preguntas` VALUES ('130', 'Si X es IP a la raíz cuadrada de Y, cuando X vale 36, Y vale 49, Hallar el valor de Y, cuando X vale 12.', '441', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '3', '10');
INSERT INTO `preguntas` VALUES ('131', 'Si M es IP a la raíz cuadrada de N, cuando M vale 6, N vale 36, Hallar el valor de M, cuando N vale 9.', '12', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '3', '11');
INSERT INTO `preguntas` VALUES ('132', 'Si P es IP a la raíz cuadrada de Q, cuando P vale 2, Q vale 625, Hallar el valor de P, cuando Q vale 25.', '10', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '3', '12');
INSERT INTO `preguntas` VALUES ('133', 'Si A es IP a B elevado al cuadrado, cuando A vale 16, B vale 5, Hallar el valor de B, cuando A vale 4.', '10', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '3', '13');
INSERT INTO `preguntas` VALUES ('134', 'Si M es IP a N elevado al cuadrado, cuando M vale 45, N vale 3, Hallar el valor de N, cuando M vale 5.', '9', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '3', '14');
INSERT INTO `preguntas` VALUES ('135', 'Si P es IP a Q elevado al cuadrado, cuando P vale 2, Q vale 6, Hallar el valor de P, cuando Q vale 3.', '8', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '3', '15');
INSERT INTO `preguntas` VALUES ('136', 'Si X es IP a Y elevado al cuadrado, cuando X vale 3, Y vale 21, Hallar el valor de X, cuando Y vale 7.', '27', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '3', '16');
INSERT INTO `preguntas` VALUES ('137', 'Si A es DP a la raíz cuadrada de B e IP a C elevado al cuadrado, cuando A vale 12, B vale 81 y C vale 15, Hallar el valor de A, cuando B vale 9 y C vale 3.', '100', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '3', '17');
INSERT INTO `preguntas` VALUES ('138', 'Si M es DP a la raíz cuadrada de N e IP a P elevado al cuadrado, cuando M vale 12, N vale 81 y P vale 15, Hallar el valor de M, cuando N vale 36 y P vale 10.', '18', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '3', '18');
INSERT INTO `preguntas` VALUES ('139', 'Si X es DP a la raíz cuadrada de Y e IP a Z elevado al cuadrado, cuando X vale 8, Y vale 36 y Z vale 6, Hallar el valor de X, cuando Y vale 4 y Z vale 4.', '6', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '3', '19');
INSERT INTO `preguntas` VALUES ('140', 'Si P es DP a la raíz cuadrada de Q e IP a R elevado al cuadrado, cuando P vale 8, Q vale 36 y R vale 6, Hallar el valor de P, cuando Q vale 1 y R vale 2.', '12', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '3', '20');
INSERT INTO `preguntas` VALUES ('141', 'Si A es DP a B elevado al cuadrado e IP a la raíz cuadrada de C, cuando A vale 2, B vale 5 y C vale 81, Hallar el valor de A, cuando B vale 15 y C vale 9.', '54', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '3', '21');
INSERT INTO `preguntas` VALUES ('142', 'Si M es DP a N elevado al cuadrado e IP a la raíz cuadrada de P, cuando M vale 2, N vale 5 y P vale 81, Hallar el valor de M, cuando N vale 25 y P vale 4.', '225', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '3', '22');
INSERT INTO `preguntas` VALUES ('143', 'Si X es DP a Y elevado al cuadrado e IP a la raíz cuadrada de Z, cuando X vale 2, Y vale 3 y Z vale 25, Hallar el valor de X, cuando Y vale 6 y Z vale 4.', '20', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '3', '23');
INSERT INTO `preguntas` VALUES ('144', 'Si P es DP a Q elevado al cuadrado e IP a la raíz cuadrada de R, cuando P vale 16, Q vale 5 y R vale 9, Hallar el valor de P, cuando Q vale 15 y R vale 4.', '216', '20', '30', '40', '50', '1', 'https://www.youtube.com/embed/4vZZHQHp2IY', '0', '0', '3', '24');

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usuario
-- ----------------------------
INSERT INTO `usuario` VALUES ('1', null, null, null, null, 'admin', '202cb962ac59075b964b07152d234b70', '1', '1', null, null, null, null, null, null);
INSERT INTO `usuario` VALUES ('2', 'Bianka', 'Torres', '8', '979004799', 'biankat', '202cb962ac59075b964b07152d234b70', '2', '1', null, null, null, null, null, null);
INSERT INTO `usuario` VALUES ('3', 'Juan', 'Pacheco', '8', '987654336', 'juanp', '202cb962ac59075b964b07152d234b70', '2', '1', null, null, null, null, null, null);
INSERT INTO `usuario` VALUES ('12', 'Horacion', 'Orlandini', '29', '998989898', 'horacior', '202cb962ac59075b964b07152d234b70', '2', '1', 'm', 'pv', 'p', '1993-02-12', '2022-06-18 16:52:56', 'peueb@kkss.com');