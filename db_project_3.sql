-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 06-09-2023 a las 14:49:00
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
(6, 24, 7),
(7, 25, 7);

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
(3, 'Balances de Materia y Energía'),
(2, 'Cinética Química'),
(15, 'Diseño de Reactores Químicos'),
(8, 'Fenómenos de Transporte'),
(5, 'Fisicoquímica'),
(14, 'Ingeniería de Procesos Químicos'),
(13, 'Ingeniería de Separaciones'),
(12, 'Instrumentación y Control de Procesos'),
(1, 'Laboratorio de Química'),
(11, 'Matemáticas Aplicadas a la Ingeniería Química'),
(4, 'Operaciones Unitarias'),
(7, 'Química Analítica'),
(10, 'Química Inorgánica'),
(9, 'Química Orgánica'),
(16, 'Termodinámica');

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
(1, 0, 'Carlos', 'Perez', 'Bogotá', '2002-04-15', 1),
(4, 15126383, 'Laura', 'Gomez', 'Medellin', '2001-07-22', 3),
(5, 15587385, 'Andres', 'Rodriguez', 'Cali', '2000-11-10', 3),
(6, 5588882, 'Maria', 'Lopez', 'Barranquilla', '2003-02-28', 3),
(7, 13123408, 'Juan', 'Martinez', 'Cartagena', '2002-09-07', 3),
(9, 0, 'Alejandro', 'Hernandez', 'Bucaramanga', '2001-05-14', 2),
(10, 0, 'Daniela', 'Castro', 'Pereira', '2000-03-19', 2),
(12, 0, 'Santiago', 'Diaz', 'Manizales', '2003-01-05', 2),
(13, 0, 'Camila', 'Gonzalez', 'Cúcuta', '2002-06-12', 2),
(14, 0, 'Isabella', 'Mendoza', 'Santa Marta', '2001-12-30', 2),
(15, 0, 'Felipe', 'Ramirez', 'Ibague', '2000-08-18', 2),
(17, 0, 'Valentina', 'Santos', 'Villavicencio', '2003-03-25', 2),
(20, 0, 'Mateo', 'Perez', 'Pasto', '2002-10-09', 2),
(22, 0, 'Laura', 'Gutierrez', 'Popayán', '2000-01-16', 2),
(24, 0, 'Sofia', 'Fernandez', 'Neiva', '2001-06-28', 2),
(25, 0, 'Daniel', 'Morales', 'Sincelejo', '2003-04-05', 2),
(34, 0, 'Ana', 'Ortega', 'Tunja', '2002-07-13', 2),
(35, 0, 'Raul', 'Silva', 'Armenia', '2001-09-20', 2),
(36, 0, 'Carolina', 'Rojas', 'Cartagena', '2000-02-03', 2),
(37, 0, 'Andrea', 'Fernandez', 'Barranquilla', '2003-05-11', 2),
(38, 0, 'Luis', 'Castillo', 'Barranquilla', '2002-08-26', 2),
(39, 0, 'Pedro', 'Garcia', 'Bogota', '2001-11-08', 2),
(40, 15346213, 'Diego', 'Vargas', 'Medellin', '2000-04-17', 3),
(41, 212321456, 'Javier', 'Mendez', 'Medellin', '2003-06-20', 3),
(42, 15126408, 'Admin', 'Admin', 'Barranquilla', '2002-12-10', 1);

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
(1, 'admin@admin', 'admin', 1),
(3, 'maestro@maestro', 'maestro', 9),
(4, 'alumno@alumno', 'alumno', 10),
(6, 'carlospd@funval.com', '$2y$10$T4DStRu/PQhPbvAi.gYm4O9M6tGxuynzjY2LLfDl86AobOBg6ieEm', 12),
(8, 'funval@funval.com', '$2y$10$10HqBEixafkndDeplk/rxOTI/WWAec/47gdZjkqBRCVfSi6LiUY2i', 14),
(9, 'barros@gmail.com', '$2y$10$/USQBvJlV2LIhEiQ60CnU.YmLb77b7YITMh7I4GgwUK1kjO2YXUPu', 15),
(12, 'Jose@byu.com', '$2y$10$LFfuaHeY1Cenzzbs3GG0fu2eTrQPMVrWPx5kcLWG9./ogfSqR9oRm', 20),
(14, 'Harold@Funval.com', '$2y$10$b2PRymYSK0vo595owLVFUOJNE7wkAkL9A8VSbdrTLe0ZMFg.0ItO.', 24),
(25, 'admin@funval.com', '$2y$10$JNtiGyCBnQfVKHulIlP5JOMCr26ZU8Oj6wwR2Qn1Hr/0W6f9MLWFS', 41),
(26, 'admin@admin.com', '$2y$10$EwE7UePjeEpkj001s1x8zuaGnRrjKex.2TBbc1eXnNK/fOS09bSg.', 42);

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

--
-- Filtros para la tabla `usuarios_login`
--
ALTER TABLE `usuarios_login`
  ADD CONSTRAINT `usuarios_login_fk0` FOREIGN KEY (`datos_id`) REFERENCES `usuarios_datos` (`id_ud`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
