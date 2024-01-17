CREATE DATABASE `soccer`;

CREATE TABLE `jugadores`  (
  `id_jugador` int NOT NULL AUTO_INCREMENT,
  `nombre_jugador` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `apellidos_jugador` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `goles_jugador` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `país_jugador` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `edad_jugador` int NOT NULL,
  PRIMARY KEY (`id_jugador`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

INSERT INTO `jugadores` VALUES (1, 'Cristiano Ronaldo', 'Dos Santos Aveiro', '864', 'Portugal', 38);
INSERT INTO `jugadores` VALUES (2, 'Lionel Andrés', 'Messi Cuccitini', '821', 'Argentina', 36);
INSERT INTO `jugadores` VALUES (3, 'Pelé (Edson)', 'Arantes do Nascimento', '762', 'Brasil', 82);
INSERT INTO `jugadores` VALUES (4, 'Romario', 'de Souza Faria', '755', 'Brasil', 57);