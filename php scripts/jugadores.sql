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
  PRIMARY KEY (`id_jugador`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jugadores
-- ----------------------------
INSERT INTO `jugadores` VALUES (1, 'Cristiano Ronaldo', 'Dos Santos Aveiro', '864', 'Portugal', 38);
INSERT INTO `jugadores` VALUES (2, 'Lionel Andrés', 'Messi Cuccitini', '821', 'Argentina', 36);
INSERT INTO `jugadores` VALUES (3, 'Pelé (Edson)', 'Arantes do Nascimento', '762', 'Brasil', 82);
INSERT INTO `jugadores` VALUES (4, 'Romario', 'de Souza Faria', '755', 'Brasil', 57);

SET FOREIGN_KEY_CHECKS = 1;
