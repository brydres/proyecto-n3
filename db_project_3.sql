-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 06-09-2023 a las 13:37:30
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_project_3`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno_materia`
--

DROP TABLE IF EXISTS `alumno_materia`;
CREATE TABLE IF NOT EXISTS `alumno_materia` (
  `id_am` int NOT NULL AUTO_INCREMENT,
  `alumno_id` int NOT NULL,
  `materia_id` int NOT NULL,
  `calificacion` float DEFAULT NULL,
  PRIMARY KEY (`id_am`),
  KEY `alumno_materia_fk0` (`alumno_id`),
  KEY `alumno_materia_fk1` (`materia_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestros`
--

DROP TABLE IF EXISTS `maestros`;
CREATE TABLE IF NOT EXISTS `maestros` (
  `correo` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `apellidos` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `direccion` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `rol_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestro_materia`
--

DROP TABLE IF EXISTS `maestro_materia`;
CREATE TABLE IF NOT EXISTS `maestro_materia` (
  `id_mm` int NOT NULL AUTO_INCREMENT,
  `maestro_id` int DEFAULT NULL,
  `materia_id` int DEFAULT NULL,
  PRIMARY KEY (`id_mm`),
  KEY `maestro_materia_fk0` (`maestro_id`),
  KEY `maestro_materia_fk1` (`materia_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `maestro_materia`
--

INSERT INTO `maestro_materia` (`id_mm`, `maestro_id`, `materia_id`) VALUES
(7, 20, 7),
(8, 21, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

DROP TABLE IF EXISTS `materia`;
CREATE TABLE IF NOT EXISTS `materia` (
  `id_materia` int NOT NULL AUTO_INCREMENT,
  `nombre_materia` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_materia`),
  UNIQUE KEY `nombre_materia` (`nombre_materia`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`id_materia`, `nombre_materia`) VALUES
(16, 'Balances de Materia y Energía'),
(9, 'Cinética Química'),
(10, 'Diseño de Reactores Químicos'),
(7, 'Fenómenos de Transporte'),
(4, 'Fisicoquímica'),
(11, 'Ingeniería de Procesos Químicos'),
(1, 'Ingeniería de Seguridad'),
(12, 'Ingeniería de Separaciones'),
(13, 'Instrumentación y Control de Procesos'),
(14, 'Laboratorio de Química'),
(5, 'Matemáticas Aplicadas a la Ingeniería Química'),
(8, 'Operaciones Unitarias'),
(15, 'Química Analítica'),
(2, 'Química Inorgánica'),
(3, 'Química Orgánica'),
(6, 'Termodinámica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id_rol` int NOT NULL AUTO_INCREMENT,
  `nombre_rol` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_rol`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id_rol`, `nombre_rol`) VALUES
(1, 'admin'),
(2, 'maestro'),
(3, 'alumno');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_datos`
--

DROP TABLE IF EXISTS `usuarios_datos`;
CREATE TABLE IF NOT EXISTS `usuarios_datos` (
  `id_ud` int NOT NULL AUTO_INCREMENT,
  `dni` int NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `apellidos` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `direccion` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fecha_nacimiento` date NOT NULL,
  `rol_id` int NOT NULL,
  PRIMARY KEY (`id_ud`),
  KEY `usuarios_datos_fk0` (`rol_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios_datos`
--

INSERT INTO `usuarios_datos` (`id_ud`, `dni`, `nombre`, `apellidos`, `direccion`, `fecha_nacimiento`, `rol_id`) VALUES
(1, 1120, 'Alvaro', 'Bayona', 'Colombia', '2001-10-10', 1),
(2, 1121, 'Carlos', 'Viloria', 'Colombia', '2000-03-21', 3),
(3, 1122, 'Jeffrey', 'Andrade', 'Colombia', '2001-04-20', 3),
(4, 1123, 'Pedro', 'Perez', 'Colombia', '1998-09-12', 3),
(5, 1124, 'Josue', 'Cabrales', 'Colombia', '2001-07-18', 3),
(6, 1125, 'Mariana', 'Argon', 'Colombia', '2003-07-19', 2),
(7, 1126, 'Elena', 'Orta', 'Colombia', '2002-03-17', 2),
(8, 1127, 'Daniel', 'Briñez', 'Colombia', '2002-04-02', 2),
(9, 1128, 'Daniela', 'Alvarez', 'Colombia', '2001-01-21', 2),
(10, 1129, 'Maria', 'Mendoza', 'Colombia', '2001-11-22', 2),
(11, 1130, 'Alejandro', 'Castro', 'Colombia', '2002-01-01', 2),
(12, 1131, 'Santiago', 'Sierra', 'Colombia', '2002-10-30', 2),
(13, 1132, 'Felipe', 'Peñaranda', 'Colombia', '2000-04-30', 2),
(14, 1133, 'Rafael', 'de la Hoz', 'Colombia', '2000-11-05', 2),
(15, 1134, 'Harold ', 'Araujo', 'Colombia', '2001-09-25', 2),
(16, 1135, 'Esther ', 'Osorio', 'Colombia', '2002-02-15', 2),
(17, 1136, 'Yajaira', 'Cuberos', 'Colombia', '2002-08-09', 2),
(18, 1137, 'Windys', 'Chavez', 'Colombia', '1999-12-14', 2),
(19, 1138, 'Angel', 'Barros', 'Colombia', '2003-06-21', 2),
(20, 1139, 'Sebastian', 'Barros', 'Colombia', '2003-04-22', 2),
(21, 1140, 'Jaime', 'Barrios', 'Colombia', '2002-02-03', 2),
(22, 1141, 'Katherine', 'Del Duca', 'Colombia', '2001-12-03', 2),
(23, 1142, 'Kamila', 'Rodriguez', 'Colombia', '2000-06-06', 3),
(24, 1143, 'Gabriela', 'Santander', 'Colombia', '2001-02-22', 3),
(25, 1144, 'admin', 'admin', 'Colombia', '1989-08-01', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_login`
--

DROP TABLE IF EXISTS `usuarios_login`;
CREATE TABLE IF NOT EXISTS `usuarios_login` (
  `id_ul` int NOT NULL AUTO_INCREMENT,
  `correo` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `contra` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `datos_id` int NOT NULL,
  PRIMARY KEY (`id_ul`),
  UNIQUE KEY `correo` (`correo`),
  UNIQUE KEY `datos_id` (`datos_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios_login`
--

INSERT INTO `usuarios_login` (`id_ul`, `correo`, `contra`, `datos_id`) VALUES
(1, 'admin@admin', '1234', 1),
(3, 'bbarros@gmail.com', '$2y$10$WdvL2F5X5kmkTax/BzYM/.ajMQ35kkf/yFJLqVSHeyBmXBo0MpZr.', 9),
(4, 'carlosc@gmail.com', '$2y$10$IjFUa9AoSFvJd/7C.iwuF..Lv1UrxATnZ28yDhtVbzd8GG5IpWdb.', 10),
(6, 'kbarros963@gmail.com', '$2y$10$T4DStRu/PQhPbvAi.gYm4O9M6tGxuynzjY2LLfDl86AobOBg6ieEm', 12),
(8, 'Elian@gmail.com', '$2y$10$10HqBEixafkndDeplk/rxOTI/WWAec/47gdZjkqBRCVfSi6LiUY2i', 14),
(9, 'Arnulfob@gmail.com', '$2y$10$/USQBvJlV2LIhEiQ60CnU.YmLb77b7YITMh7I4GgwUK1kjO2YXUPu', 15),
(12, 'Josepe@gmail.com', '$2y$10$LFfuaHeY1Cenzzbs3GG0fu2eTrQPMVrWPx5kcLWG9./ogfSqR9oRm', 20),
(14, 'Haroldcu@gmail.com', '$2y$10$b2PRymYSK0vo595owLVFUOJNE7wkAkL9A8VSbdrTLe0ZMFg.0ItO.', 24),
(25, 'admin@gmail.com', '$2y$10$JNtiGyCBnQfVKHulIlP5JOMCr26ZU8Oj6wwR2Qn1Hr/0W6f9MLWFS', 41),
(26, 'admin@admin.net', '$2y$10$EwE7UePjeEpkj001s1x8zuaGnRrjKex.2TBbc1eXnNK/fOS09bSg.', 42);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumno_materia`
--
ALTER TABLE `alumno_materia`
  ADD CONSTRAINT `alumno_materia_fk0` FOREIGN KEY (`alumno_id`) REFERENCES `usuarios_datos` (`id_ud`),
  ADD CONSTRAINT `alumno_materia_fk1` FOREIGN KEY (`materia_id`) REFERENCES `materia` (`id_materia`);

--
-- Filtros para la tabla `maestro_materia`
--
ALTER TABLE `maestro_materia`
  ADD CONSTRAINT `maestro_materia_fk0` FOREIGN KEY (`maestro_id`) REFERENCES `usuarios_datos` (`id_ud`),
  ADD CONSTRAINT `maestro_materia_fk1` FOREIGN KEY (`materia_id`) REFERENCES `materia` (`id_materia`);

--
-- Filtros para la tabla `usuarios_datos`
--
ALTER TABLE `usuarios_datos`
  ADD CONSTRAINT `usuarios_datos_fk0` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id_rol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
