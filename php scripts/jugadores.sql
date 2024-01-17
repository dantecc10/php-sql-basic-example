/*
 Navicat Premium Data Transfer

 Source Server         : Servidor
 Source Server Type    : MySQL
 Source Server Version : 100612 (10.6.12-MariaDB-0ubuntu0.22.04.1)
 Source Host           : 74.208.62.188:3306
 Source Schema         : comercial_demo

 Target Server Type    : MySQL
 Target Server Version : 100612 (10.6.12-MariaDB-0ubuntu0.22.04.1)
 File Encoding         : 65001

 Date: 16/01/2024 21:56:57
*/
DROP DATABASE IF EXISTS `soccer`;
CREATE DATABASE `soccer`;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for jugadores
-- ----------------------------
DROP TABLE IF EXISTS `jugadores`;
CREATE TABLE `jugadores`  (
  `id_jugador` int NOT NULL AUTO_INCREMENT,
  `nombre_jugador` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `apellidos_jugador` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `goles_jugador` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `país_jugador` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `edad_jugador` int NOT NULL,
  `imagen_jugador` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id_jugador`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jugadores
-- ----------------------------
INSERT INTO `jugadores` VALUES (1, 'Cristiano Ronaldo', 'Dos Santos Aveiro', '864', 'Portugal', 38, 'https://caracoltv.brightspotcdn.com/dims4/default/2e7844b/2147483647/strip/true/crop/1600x1066+0+0/resize/1000x666!/format/webp/quality/90/?url=http%3A%2F%2Fcaracol-brightspot.s3.amazonaws.com%2F67%2Fd4%2Fbfc902824b75b2716f2b27a51766%2Fwhatsapp-image-2023-12-01-at-4.22.33%20PM.jpeg');
INSERT INTO `jugadores` VALUES (2, 'Lionel Andrés', 'Messi Cuccitini', '821', 'Argentina', 36, 'https://media.admagazine.com/photos/637d11a6e63c8afac40e7a01/16:9/w_1600,c_limit/1442809583');
INSERT INTO `jugadores` VALUES (3, 'Pelé (Edson)', 'Arantes do Nascimento', '762', 'Brasil', 82, 'https://www.publico.es/files/article_main/uploads/2022/12/26/63a8daf9d2725.jpeg');
INSERT INTO `jugadores` VALUES (4, 'Romario', 'de Souza Faria', '755', 'Brasil', 57, 'https://www.biografiasyvidas.com/biografia/r/fotos/romario.jpg');

SET FOREIGN_KEY_CHECKS = 1;
