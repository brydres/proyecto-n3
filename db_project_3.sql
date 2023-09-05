-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 05-09-2023 a las 16:19:09
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestros`
--

DROP TABLE IF EXISTS `maestros`;
CREATE TABLE IF NOT EXISTS `maestros` (
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `direccion` varchar(70) NOT NULL,
  `rol_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `maestros`
--

INSERT INTO `maestros` (`nombre`, `apellidos`, `correo`, `fecha_nacimiento`, `direccion`, `rol_id`) VALUES
('Rafael', 'Barros', 'rbarros963@gmail.com', '0000-00-00', 'Colombia', 2),
('Kevin', 'Barros', 'kbarros1993@gmail.com', '0000-00-00', 'Colombia', 2),
('Windys', 'Chavez', 'windyschavez@gmail.com', '0000-00-00', 'Colombia', 2),
('Bryan', 'Barros', 'admin@funval.com', '0000-00-00', 'Colombia', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestro_materia`
--

DROP TABLE IF EXISTS `maestro_materia`;
CREATE TABLE IF NOT EXISTS `maestro_materia` (
  `id_mm` int NOT NULL AUTO_INCREMENT,
  `maestro_id` int NOT NULL,
  `materia_id` int NOT NULL,
  PRIMARY KEY (`id_mm`),
  KEY `maestro_materia_fk0` (`maestro_id`),
  KEY `maestro_materia_fk1` (`materia_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

DROP TABLE IF EXISTS `materia`;
CREATE TABLE IF NOT EXISTS `materia` (
  `id_materia` int NOT NULL AUTO_INCREMENT,
  `nombre_materia` varchar(50) NOT NULL,
  PRIMARY KEY (`id_materia`),
  UNIQUE KEY `nombre_materia` (`nombre_materia`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id_rol` int NOT NULL AUTO_INCREMENT,
  `nombre_rol` varchar(50) NOT NULL,
  PRIMARY KEY (`id_rol`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `rol_id` int NOT NULL,
  PRIMARY KEY (`id_ud`),
  KEY `usuarios_datos_fk0` (`rol_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuarios_datos`
--

INSERT INTO `usuarios_datos` (`id_ud`, `dni`, `nombre`, `apellidos`, `direccion`, `fecha_nacimiento`, `rol_id`) VALUES
(1, 0, 'Harold', 'Cuberos', 'Colombia', '1989-07-06', 1),
(3, 15436389, 'Laura', 'Luchuga', 'Colombia', '0000-00-00', 3),
(4, 15436383, 'Esther', 'del Duca', 'Colombia', '0000-00-00', 3),
(5, 15876585, 'Richard', 'Cuberos', 'Colombia', '0000-00-00', 3),
(6, 5686682, 'Daniela', 'Alvarez', 'Colombia', '0000-00-00', 3),
(7, 13324408, 'Katherine', 'Rodriguez', 'Quito', '0000-00-00', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_login`
--

DROP TABLE IF EXISTS `usuarios_login`;
CREATE TABLE IF NOT EXISTS `usuarios_login` (
  `id_ul` int NOT NULL AUTO_INCREMENT,
  `correo` varchar(70) NOT NULL,
  `contra` varchar(100) NOT NULL,
  `datos_id` int NOT NULL,
  PRIMARY KEY (`id_ul`),
  UNIQUE KEY `correo` (`correo`),
  KEY `usuarios_login_fk0` (`datos_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuarios_login`
--

INSERT INTO `usuarios_login` (`id_ul`, `correo`, `contra`, `datos_id`) VALUES
(1, 'admin@admin', '1234', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
