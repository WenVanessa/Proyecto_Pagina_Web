-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-10-2023 a las 04:35:42
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto_lopez_calderon`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administracion`
--

CREATE TABLE `administracion` (
  `admi_codigo` bigint(20) NOT NULL,
  `admi_identificacion` varchar(50) NOT NULL,
  `admi_tipoIdentificacion` varchar(50) NOT NULL,
  `admi_nombre` varchar(50) NOT NULL,
  `admi_apellido` varchar(50) NOT NULL,
  `admi_celular` varchar(50) NOT NULL,
  `admi_direccion` varchar(50) NOT NULL,
  `usua_codigo_fk` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `administracion`
--

INSERT INTO `administracion` (`admi_codigo`, `admi_identificacion`, `admi_tipoIdentificacion`, `admi_nombre`, `admi_apellido`, `admi_celular`, `admi_direccion`, `usua_codigo_fk`) VALUES
(28, '6537098', 'CC', 'Homero', 'Casas', '3184421944', 'calle 147b #08-165', 280),
(41, '1019026158', 'CC', 'Marcela', 'Valencia', '3102856570', 'calle 145a #56-80', 280),
(95, '5046645', 'CC', 'Kevin', 'Lopez', '3144746411', 'cra6 18-12', 280),
(387, '24228075', 'CC', 'Sofia', 'Martinez', '3144731076', 'calle 40c #167-09', 280),
(501, '1026054701', 'CC', 'Ivan', 'Ruiz', '3155801249', 'cra40 80-09', 280);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `clie_codigo` bigint(20) NOT NULL,
  `clie_identificacion` varchar(50) NOT NULL,
  `clie_tipoIdentificacion` varchar(50) NOT NULL,
  `clie_nombre` varchar(50) NOT NULL,
  `clie_telefono` varchar(50) NOT NULL,
  `clie_direccion` varchar(50) NOT NULL,
  `clie_telefono2` varchar(50) NOT NULL,
  `clie_correo` varchar(50) NOT NULL,
  `usua_codigo_2fk` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`clie_codigo`, `clie_identificacion`, `clie_tipoIdentificacion`, `clie_nombre`, `clie_telefono`, `clie_direccion`, `clie_telefono2`, `clie_correo`, `usua_codigo_2fk`) VALUES
(230, '54387456', 'CC', 'Miguel', '3114567429', 'calle 138 bis #125 89', '3137894535', 'mijotaguel22@gmail.com', 237),
(240, '64351008', 'CC', 'Fredy', '3184569834', 'calle 134 bis #145 11', '3176543825', 'docenfred22@hotmail.com', 110),
(280, '10184950', 'CC', 'Camila', '3224568930', 'cra 145a #117 20', '3156789451', 'camilaalv3@gmail.com', 321),
(430, '11451184', 'CC', 'Diego', '32278903987', 'cra 123c #223 13', '3124568534', 'diegagu19@hotmail.com', 321),
(670, '10084230', 'CC', 'Valeria', '3105734567', 'cra 20b #123 22', '3217895436', 'valelinda33@gmail.com', 621);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta`
--

CREATE TABLE `detalle_venta` (
  `deve_codigo` bigint(20) NOT NULL,
  `vent_codigo_fk` bigint(20) NOT NULL,
  `prod_codigo_fk` bigint(20) NOT NULL,
  `deve_subtotal` varchar(50) NOT NULL,
  `deve_cantidaPorProducto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalle_venta`
--

INSERT INTO `detalle_venta` (`deve_codigo`, `vent_codigo_fk`, `prod_codigo_fk`, `deve_subtotal`, `deve_cantidaPorProducto`) VALUES
(120, 78, 24, '17900', '4'),
(230, 78, 24, '20000', '7'),
(245, 78, 24, '60000', '10'),
(450, 78, 24, '10000', '2'),
(546, 78, 24, '12000', '5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `prod_codigo` bigint(20) NOT NULL,
  `prod_nombre` varchar(50) NOT NULL,
  `prod_precioVenta` varchar(50) NOT NULL,
  `prod_descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`prod_codigo`, `prod_nombre`, `prod_precioVenta`, `prod_descripcion`) VALUES
(6, 'Aceite de coco ', '25.000', 'Huele rico xd'),
(8, 'Te', '5.000', 'de manzanilla'),
(12, 'Aceite de argan', '50.000', 'Cuida el cabello '),
(24, 'extracto te verde', '25.000', 'buen estado'),
(32, 'Crema andrinas ', '10.000', 'Quita manchas oscuras ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `codigo` bigint(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `clave` varchar(50) NOT NULL,
  `tipoUsuario` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`codigo`, `nombre`, `clave`, `tipoUsuario`) VALUES
(4, 'tokyo', '502', ''),
(108, 'M4rco77', '1141marco', 'administrador'),
(110, 'kirar900', '2946mom', 'cliente'),
(237, 'Mariaal30a', 'Gatolulo098', 'cliente'),
(321, 'LuisCa22', 'MilloS24', 'administrador'),
(621, 'Valelin2', '12345lol', 'cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `vent_codigo` bigint(20) NOT NULL,
  `vent_fecha` varchar(50) NOT NULL,
  `vent_cantidad` varchar(50) NOT NULL,
  `vent_total` varchar(50) NOT NULL,
  `vend_codigo_fk` bigint(20) NOT NULL,
  `clie_codigo_fk` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`vent_codigo`, `vent_fecha`, `vent_cantidad`, `vent_total`, `vend_codigo_fk`, `clie_codigo_fk`) VALUES
(24, '12/10/2019', '15', '145.000', 28, 240),
(34, '20/05/2020', '5', '50.000', 28, 240),
(42, '08/01/2015', '3', '65.000', 28, 240),
(56, '16/04/2021', '13', '270.000', 28, 240),
(78, '13/04/2018', '32', '530.000', 28, 240);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administracion`
--
ALTER TABLE `administracion`
  ADD PRIMARY KEY (`admi_codigo`),
  ADD KEY `usua_codigo_fk` (`usua_codigo_fk`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`clie_codigo`);

--
-- Indices de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD PRIMARY KEY (`deve_codigo`),
  ADD KEY `prod_codigo_fk` (`prod_codigo_fk`),
  ADD KEY `vent_codigo_fk` (`vent_codigo_fk`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`prod_codigo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`vent_codigo`),
  ADD KEY `clie_codigo_fk` (`clie_codigo_fk`),
  ADD KEY `vend_codigo_fk` (`vend_codigo_fk`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `administracion`
--
ALTER TABLE `administracion`
  ADD CONSTRAINT `usua_codigo_fk` FOREIGN KEY (`usua_codigo_fk`) REFERENCES `cliente` (`clie_codigo`);

--
-- Filtros para la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD CONSTRAINT `prod_codigo_fk` FOREIGN KEY (`prod_codigo_fk`) REFERENCES `producto` (`prod_codigo`),
  ADD CONSTRAINT `vent_codigo_fk` FOREIGN KEY (`vent_codigo_fk`) REFERENCES `venta` (`vent_codigo`);

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `clie_codigo_fk` FOREIGN KEY (`clie_codigo_fk`) REFERENCES `cliente` (`clie_codigo`),
  ADD CONSTRAINT `vend_codigo_fk` FOREIGN KEY (`vend_codigo_fk`) REFERENCES `administracion` (`admi_codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
