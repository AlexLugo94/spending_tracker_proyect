-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 16-11-2022 a las 00:46:41
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gastos_categoria`
--

CREATE TABLE `gastos_categoria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(25) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `gastos_categoria`
--

INSERT INTO `gastos_categoria` (`id`, `nombre`) VALUES
(1, 'gastos de prueba'),
(2, 'sin categoria'),
(4, 'entretenimiento'),
(7, 'viaticos'),
(8, 'gasto semanal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gastos_personales`
--

CREATE TABLE `gastos_personales` (
  `id` int(11) NOT NULL,
  `cantidad` float(8,2) NOT NULL,
  `categoria` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `descripcion` varchar(255) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `gastos_personales`
--

INSERT INTO `gastos_personales` (`id`, `cantidad`, `categoria`, `fecha`, `descripcion`) VALUES
(5, 800.00, 1, '2022-09-26 23:11:11', 'TRANSPORTE'),
(6, 1200.00, 1, '2022-09-26 23:11:32', 'ROPA Y ACCESORIOS'),
(7, 1500.00, 1, '2022-09-26 23:11:58', 'AHORRO'),
(8, 2500.00, 1, '2022-09-26 23:12:15', 'COLEGIATURA'),
(9, 1500.00, 1, '2022-09-26 23:12:44', 'COMIDA'),
(10, 500.00, 1, '2022-09-26 23:13:23', 'SERVICIOS ONLINE'),
(11, 35.00, 1, '2022-10-10 22:03:08', 'comida rapida'),
(12, 34.00, 7, '2022-11-14 04:06:53', 'err'),
(13, 34.00, 7, '2022-11-14 04:07:05', 'err'),
(14, 34.00, 7, '2022-11-14 04:07:10', 'err'),
(15, 34.00, 7, '2022-11-14 04:08:59', 'err');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) UNSIGNED NOT NULL,
  `correo` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `password` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `telefono` varchar(16) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `nombre` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `correo`, `password`, `telefono`, `nombre`, `status`) VALUES
(3, 'alex1@gmail.com', '123123', '9988998899', 'alejandro', 1),
(5, 'pat@gmail.com', '123123', '9988998898', 'jose', 0),
(6, 'alex.lugo.94@hotmail.com', 'errorsistema1', '9988998888', 'alejandro', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `gastos_categoria`
--
ALTER TABLE `gastos_categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `gastos_personales`
--
ALTER TABLE `gastos_personales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `gastos_categoria`
--
ALTER TABLE `gastos_categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `gastos_personales`
--
ALTER TABLE `gastos_personales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
