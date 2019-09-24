-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-09-2019 a las 18:09:38
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tareadb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarea`
--

CREATE TABLE `tarea` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `duracion` time NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tarea`
--

INSERT INTO `tarea` (`id`, `nombre`, `descripcion`, `duracion`, `estado`) VALUES
(2, 'cocinarle', 'debe estar saludable', '02:00:00', 0),
(3, 'Otra tarea', 'ella me quiere', '01:00:00', 0),
(4, 'Otra tarea', 'ella me quiere', '01:00:00', 0),
(5, 'Otra tarea', 'ella me quiere', '01:00:00', 0),
(6, 'Otra tarea', 'ella me quiere', '01:00:00', 0),
(7, 'Otra tarea', 'ella me quiere', '01:00:00', 0),
(8, 'Otra tarea', 'ella me quiere', '01:00:00', 0),
(9, 'Otra tarea', 'ella me quiere', '01:00:00', 0),
(10, 'Otra tarea', 'ella me quiere', '01:00:00', 0),
(11, 'Otra tarea', 'ella me quiere', '01:00:00', 0),
(12, 'Otra tarea', 'ella me quiere', '01:00:00', 0),
(13, 'Otra tarea', 'ella me quiere', '01:00:00', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tarea`
--
ALTER TABLE `tarea`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tarea`
--
ALTER TABLE `tarea`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
