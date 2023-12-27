-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-12-2023 a las 21:26:29
-- Versión del servidor: 10.11.5-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ecommerce`
--
CREATE DATABASE IF NOT EXISTS `ecommerce` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ecommerce`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `pedido_carrito` varchar(255) DEFAULT NULL,
  `total_precio` varchar(255) DEFAULT NULL,
  `estado_carrito` tinyint(1) DEFAULT NULL,
  `ticket` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `apellido`, `telefono`, `email`, `direccion`, `pedido_carrito`, `total_precio`, `estado_carrito`, `ticket`) VALUES
(63, NULL, NULL, NULL, NULL, NULL, '[]', '0', 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `presupuesto` varchar(255) DEFAULT NULL,
  `orden` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Base de datos: `euis506`
--
CREATE DATABASE IF NOT EXISTS `euis506` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `euis506`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actas`
--

CREATE TABLE `actas` (
  `id` int(11) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `tipo_tenida` varchar(255) DEFAULT NULL,
  `acta_anterior` datetime DEFAULT NULL,
  `saco_prop` longtext DEFAULT NULL,
  `lect_planchas` longtext DEFAULT NULL,
  `eleva_camara` longtext DEFAULT NULL,
  `cir_bien_gral` longtext DEFAULT NULL,
  `saco_bfcia` int(11) DEFAULT NULL,
  `conclusiones` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `actas`
--

INSERT INTO `actas` (`id`, `fecha`, `tipo_tenida`, `acta_anterior`, `saco_prop`, `lect_planchas`, `eleva_camara`, `cir_bien_gral`, `saco_bfcia`, `conclusiones`) VALUES
(1, '2023-11-21 17:18:00', 'Ap:.', '2023-11-09 17:18:00', '100', '100', 'si', '100', 3000, 'justasyperfectas'),
(2, '2023-11-29 16:06:00', 'Ap:.', '2023-11-28 16:06:00', 'tres trabajos', 'tres trabajos', 'Se cubre el T:. de Ap:. para trabajar en grado de Comp:.', 'saludos', 5000, 'Justas y Perfectas'),
(3, '2023-11-29 16:53:00', 'Ap:.', '2023-11-28 16:54:00', 'dos trabajos', 'dos trabajos', 'Se cubre el T:. de Ap:. para trabajar en grado de Comp:.', 'saludos', 5000, 'Justas'),
(4, '2023-11-29 16:56:00', 'Ap:.', '2023-11-28 16:56:00', 'un trabajo', 'un trabajo', 'Se cubre el T:. de Ap:. para trabajar en grado de Comp:.', 'saludos', 5000, 'Justas y Perfectas'),
(8, '2023-11-29 17:12:00', 'Ap:.', '2023-11-28 17:12:00', 'tres trabajos', 'tres trabajos', 'Se cubre el T:. de Ap:. para trabajar en grado de Comp:.', 'saludos', 5000, 'Justas'),
(9, '2023-11-29 17:18:00', 'Ap:.', '2023-11-28 17:19:00', 'dos trabajo', 'un trabajo', 'Se cubre el T:. de Ap:. para trabajar en grado de Comp:.', 'saludos', 5000, 'Justas'),
(10, '2023-11-29 17:20:00', 'Ap:.', '2023-11-28 17:21:00', 'dos trabajo', 'dos trabajos', 'Se cubre el T:. de Ap:. para trabajar en grado de Comp:.', 'saludos', 5000, 'Justas'),
(11, '2023-11-29 17:22:00', 'Ap:.', '2023-11-28 17:22:00', 'dos trabajos', 'dos trabajo', 'Se cubre el T:. de Ap:. para trabajar en grado de Comp:.', 'saludos', 3000, 'Justas'),
(12, '2023-11-29 17:25:00', 'Ap:.', '2023-11-28 17:25:00', 'dos trabajos', 'dos trabajos', 'Se cubre el T:. de Ap:. para trabajar en grado de Comp:.', 'saludos', 5000, 'Justas y Perfectas'),
(13, '2023-11-29 17:27:00', 'Ap:.', '2023-11-28 17:27:00', 'dos trabajos', 'dos trabajos', 'Se cubre el T:. de Ap:. para trabajar en grado de Comp:.', 'saludos ', 3000, 'Justas'),
(14, '2023-11-29 17:37:00', 'Ap:.', '2023-11-28 17:37:00', 'dos trabajos', 'dos trabajos', 'Se cubre el T:. de Ap:. para trabajar en grado de Comp:.', 'saludos', 2000, 'Justas'),
(15, '2023-12-04 17:14:00', 'Ap:.', '2023-12-03 17:14:00', 'cinco trabajos', 'cinco trabajos', 'Se cubre el T:. de Ap:. para trabajar en grado de Comp:.', 'saludos de otros talleres', 5000, 'Justas y Perfectas'),
(16, '2023-12-04 17:16:00', 'Comp:.', '2023-12-03 17:16:00', 'cinco trabajos', 'cinco trabajos', 'Se cubre el T:. de Ap:. para trabajar en grado de Comp:.', 'saludos de otros talleres', 5000, 'Justas y Perfectas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `presencialidad`
--

CREATE TABLE `presencialidad` (
  `id_presencialidad` int(11) NOT NULL,
  `id_tenida` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `presencialidad` tinyint(1) NOT NULL,
  `disculpas` tinyint(1) NOT NULL,
  `disculpador` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `presencialidad`
--

INSERT INTO `presencialidad` (`id_presencialidad`, `id_tenida`, `id_user`, `presencialidad`, `disculpas`, `disculpador`) VALUES
(1, 1, 1, 1, 0, NULL),
(2, 1, 2, 1, 0, NULL),
(3, 1, 3, 1, 0, NULL),
(4, 1, 4, 0, 0, NULL),
(5, 1, 5, 0, 0, NULL),
(6, 1, 6, 0, 0, NULL),
(7, 1, 7, 0, 0, NULL),
(8, 1, 8, 0, 0, NULL),
(9, 1, 9, 0, 0, NULL),
(10, 1, 10, 0, 0, NULL),
(11, 1, 11, 0, 0, NULL),
(12, 1, 12, 0, 0, 'fabio'),
(13, 1, 13, 0, 0, NULL),
(14, 1, 14, 0, 0, NULL),
(15, 1, 15, 0, 0, NULL),
(16, 1, 18, 0, 0, NULL),
(17, 1, 19, 0, 0, NULL),
(18, 1, 20, 0, 0, NULL),
(19, 1, 21, 0, 0, NULL),
(20, 1, 22, 0, 0, NULL),
(21, 1, 23, 0, 0, NULL),
(22, 1, 24, 0, 0, NULL),
(23, 1, 25, 0, 0, NULL),
(24, 1, 26, 0, 1, NULL),
(25, 1, 27, 0, 1, NULL),
(26, 1, 28, 0, 1, NULL),
(27, 2, 1, 1, 0, NULL),
(28, 2, 2, 1, 0, NULL),
(29, 2, 3, 1, 0, NULL),
(30, 2, 4, 0, 0, NULL),
(31, 2, 5, 0, 0, NULL),
(32, 2, 6, 0, 0, NULL),
(33, 2, 7, 0, 0, NULL),
(34, 2, 8, 0, 0, NULL),
(35, 2, 9, 0, 0, NULL),
(36, 2, 10, 0, 0, NULL),
(37, 2, 11, 0, 0, NULL),
(38, 2, 12, 0, 0, NULL),
(39, 2, 13, 0, 0, NULL),
(40, 2, 14, 0, 0, NULL),
(41, 2, 15, 0, 0, NULL),
(42, 2, 18, 0, 0, NULL),
(43, 2, 19, 0, 0, NULL),
(44, 2, 20, 0, 0, NULL),
(45, 2, 21, 0, 0, NULL),
(46, 2, 22, 0, 0, NULL),
(47, 2, 23, 0, 0, NULL),
(48, 2, 24, 0, 0, NULL),
(49, 2, 25, 0, 0, NULL),
(50, 2, 26, 0, 1, NULL),
(51, 2, 27, 0, 1, NULL),
(52, 2, 28, 0, 1, NULL),
(53, 0, 0, 0, 0, 'fabio'),
(54, 3, 1, 1, 1, NULL),
(55, 3, 2, 1, 1, NULL),
(56, 3, 3, 1, 1, NULL),
(57, 3, 4, 0, 0, NULL),
(58, 3, 5, 0, 0, NULL),
(59, 3, 6, 0, 0, NULL),
(60, 3, 7, 0, 0, NULL),
(61, 3, 8, 0, 0, NULL),
(62, 3, 9, 0, 0, NULL),
(63, 3, 10, 0, 0, NULL),
(64, 3, 11, 0, 0, NULL),
(65, 3, 12, 0, 0, NULL),
(66, 3, 13, 0, 0, NULL),
(67, 3, 14, 0, 0, NULL),
(68, 3, 15, 0, 0, NULL),
(69, 3, 18, 0, 0, NULL),
(70, 3, 19, 0, 0, NULL),
(71, 3, 20, 0, 0, NULL),
(72, 3, 21, 0, 0, NULL),
(73, 3, 22, 0, 0, NULL),
(74, 3, 23, 0, 0, NULL),
(75, 3, 24, 0, 0, NULL),
(76, 3, 25, 0, 0, NULL),
(77, 3, 26, 0, 0, NULL),
(78, 3, 27, 0, 0, NULL),
(79, 3, 28, 0, 0, NULL),
(80, 0, 0, 0, 0, 'fabio'),
(81, 4, 1, 1, 1, NULL),
(82, 4, 2, 1, 1, NULL),
(83, 4, 3, 1, 1, NULL),
(84, 4, 4, 0, 0, NULL),
(85, 4, 5, 0, 0, NULL),
(86, 4, 6, 0, 0, NULL),
(87, 4, 7, 0, 0, NULL),
(88, 4, 8, 0, 0, NULL),
(89, 4, 9, 0, 0, NULL),
(90, 4, 10, 0, 0, NULL),
(91, 4, 11, 0, 0, NULL),
(92, 4, 12, 0, 0, NULL),
(93, 4, 13, 0, 0, NULL),
(94, 4, 14, 0, 0, NULL),
(95, 4, 15, 0, 0, NULL),
(96, 4, 18, 0, 0, NULL),
(97, 4, 19, 0, 0, NULL),
(98, 4, 20, 0, 0, NULL),
(99, 4, 21, 0, 0, NULL),
(100, 4, 22, 0, 0, NULL),
(101, 4, 23, 0, 0, NULL),
(102, 4, 24, 0, 0, NULL),
(103, 4, 25, 0, 0, NULL),
(104, 4, 26, 0, 0, NULL),
(105, 4, 27, 0, 0, NULL),
(106, 4, 28, 0, 0, NULL),
(107, 12, 1, 1, 1, NULL),
(108, 12, 2, 1, 1, NULL),
(109, 12, 3, 1, 1, NULL),
(110, 12, 4, 0, 0, NULL),
(111, 12, 5, 0, 0, NULL),
(112, 12, 6, 0, 0, NULL),
(113, 12, 7, 0, 0, NULL),
(114, 12, 8, 0, 0, NULL),
(115, 12, 9, 0, 0, NULL),
(116, 12, 10, 0, 0, NULL),
(117, 12, 11, 0, 0, NULL),
(118, 12, 12, 0, 0, NULL),
(119, 12, 13, 0, 0, NULL),
(120, 12, 14, 0, 0, NULL),
(121, 12, 15, 0, 0, NULL),
(122, 12, 18, 0, 0, NULL),
(123, 12, 19, 0, 0, NULL),
(124, 12, 20, 0, 0, NULL),
(125, 12, 21, 0, 0, NULL),
(126, 12, 22, 0, 0, NULL),
(127, 12, 23, 0, 0, NULL),
(128, 12, 24, 0, 0, NULL),
(129, 12, 25, 0, 0, NULL),
(130, 12, 26, 0, 0, NULL),
(131, 12, 27, 0, 0, NULL),
(132, 12, 28, 0, 0, NULL),
(133, 13, 1, 1, 1, NULL),
(134, 13, 2, 1, 1, NULL),
(135, 13, 3, 1, 1, NULL),
(136, 13, 4, 0, 0, NULL),
(137, 13, 5, 0, 0, NULL),
(138, 13, 6, 0, 0, NULL),
(139, 13, 7, 0, 0, NULL),
(140, 13, 8, 0, 0, NULL),
(141, 13, 9, 0, 0, NULL),
(142, 13, 10, 0, 0, NULL),
(143, 13, 11, 0, 0, NULL),
(144, 13, 12, 0, 0, NULL),
(145, 13, 13, 0, 0, NULL),
(146, 13, 14, 0, 0, NULL),
(147, 13, 15, 0, 0, NULL),
(148, 13, 18, 0, 0, NULL),
(149, 13, 19, 0, 0, NULL),
(150, 13, 20, 0, 0, NULL),
(151, 13, 21, 0, 0, NULL),
(152, 13, 22, 0, 0, NULL),
(153, 13, 23, 0, 0, NULL),
(154, 13, 24, 0, 0, NULL),
(155, 13, 25, 0, 0, NULL),
(156, 13, 26, 0, 0, NULL),
(157, 13, 27, 0, 0, NULL),
(158, 13, 28, 0, 0, NULL),
(159, 14, 1, 1, 1, NULL),
(160, 14, 2, 1, 1, NULL),
(161, 14, 3, 1, 1, NULL),
(162, 14, 4, 0, 0, NULL),
(163, 14, 5, 0, 0, NULL),
(164, 14, 6, 0, 0, NULL),
(165, 14, 7, 0, 0, NULL),
(166, 14, 8, 0, 0, NULL),
(167, 14, 9, 0, 0, NULL),
(168, 14, 10, 0, 0, NULL),
(169, 14, 11, 0, 0, NULL),
(170, 14, 12, 0, 0, NULL),
(171, 14, 13, 0, 0, NULL),
(172, 14, 14, 0, 0, NULL),
(173, 14, 15, 0, 0, NULL),
(174, 14, 18, 0, 0, NULL),
(175, 14, 19, 0, 0, NULL),
(176, 14, 20, 0, 0, NULL),
(177, 14, 21, 0, 0, NULL),
(178, 14, 22, 0, 0, NULL),
(179, 14, 23, 0, 0, NULL),
(180, 14, 24, 0, 0, NULL),
(181, 14, 25, 0, 0, NULL),
(182, 14, 26, 0, 0, NULL),
(183, 14, 27, 0, 0, NULL),
(184, 14, 28, 0, 0, NULL),
(185, 16, 1, 1, 0, NULL),
(186, 16, 2, 1, 0, NULL),
(187, 16, 3, 1, 0, NULL),
(188, 16, 4, 0, 0, NULL),
(189, 16, 5, 0, 0, NULL),
(190, 16, 6, 0, 0, NULL),
(191, 16, 7, 0, 0, NULL),
(192, 16, 8, 0, 0, NULL),
(193, 16, 9, 0, 0, NULL),
(194, 16, 10, 0, 0, NULL),
(195, 16, 11, 0, 0, NULL),
(196, 16, 12, 0, 0, NULL),
(197, 16, 13, 0, 0, NULL),
(198, 16, 14, 0, 0, NULL),
(199, 16, 15, 0, 0, NULL),
(200, 16, 18, 0, 0, NULL),
(201, 16, 19, 0, 0, NULL),
(202, 16, 20, 0, 0, NULL),
(203, 16, 21, 0, 0, NULL),
(204, 16, 22, 0, 0, NULL),
(205, 16, 23, 0, 0, NULL),
(206, 16, 24, 0, 0, NULL),
(207, 16, 25, 0, 0, NULL),
(208, 16, 26, 0, 1, NULL),
(209, 16, 27, 0, 1, NULL),
(210, 16, 28, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `saldos`
--

CREATE TABLE `saldos` (
  `id` int(11) NOT NULL,
  `id_transaccion` int(11) NOT NULL,
  `saldo` float NOT NULL,
  `id_cuenta` int(11) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transacciones`
--

CREATE TABLE `transacciones` (
  `id_transacciones` int(11) NOT NULL,
  `tipo_transaccion` varchar(255) NOT NULL,
  `id_de` int(11) NOT NULL,
  `id_hacia` int(11) NOT NULL,
  `motivo` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `monto` float NOT NULL,
  `id_saldo` int(255) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `Matricula` int(11) NOT NULL,
  `Grado` varchar(255) NOT NULL,
  `Correo_Electronico` varchar(255) DEFAULT NULL,
  `DNI` int(11) NOT NULL,
  `Fecha_de_Nacimiento` date DEFAULT NULL,
  `Telefono` varchar(255) NOT NULL,
  `Domicilio` varchar(255) NOT NULL,
  `Estado_Civil` varchar(255) DEFAULT NULL,
  `Hijos` int(11) DEFAULT NULL,
  `Nombres_Hijos` varchar(255) DEFAULT NULL,
  `Nacionalidad` varchar(255) DEFAULT NULL,
  `Profesion` varchar(255) DEFAULT NULL,
  `Trabajo` varchar(255) DEFAULT NULL,
  `Oficialidad` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `fullname`, `Matricula`, `Grado`, `Correo_Electronico`, `DNI`, `Fecha_de_Nacimiento`, `Telefono`, `Domicilio`, `Estado_Civil`, `Hijos`, `Nombres_Hijos`, `Nacionalidad`, `Profesion`, `Trabajo`, `Oficialidad`) VALUES
(1, 'NicolasBogado', 'pbkdf2:sha256:600000$7Pol43Zs0SrX3qWj$35a18a88c35753071b511beebbc4953cc962a236169dc2e7db2f426e6fe92624', 'Nicolas Pedro Bogado ', 102742, 'MM:.', 'nicolasbogadouai@gmail.com', 30851655, '1984-10-29', '3412785772', 'Thompson', 'Casado', 2, 'Victoria-Sofía', 'Argentino', 'Policía', 'Investigador', 'Secretario'),
(2, 'FranciscoAlassia', '123456', 'Francisco Javier Alassia', 97598, 'MM:.', 'franciscojalassia@gmail.com', 31937938, '1985-11-13', '3416140203', 'Callao 982 3 D', 'Casado', 2, 'Catalina ( 15/11/2014) / Martina ( 21/6/ 2017 )', 'Argentino', 'Lic. en Logistica', 'Ing. Soluciones B2B Telecom ', '2 do Vigilante'),
(3, 'FacundoBastian', '123456', 'Bastian Facundo Martin', 90422, 'MM:.', 'facundobastian@gmail.com', 23964657, '1974-09-16', '3415844226', 'gaboto 2061', 'Casado', 1, 'Benicio ( 09/03/2015 )', 'Argentino', 'imaginero', 'vendedor', NULL),
(4, 'PatricioIbarlucea', '123456', 'Ibarlucea Patricio', 98517, 'MM:.', 'patricioibarlucea@gmail.com', 36003920, '1991-10-13', '3413087344', 'San Juan 450 7B', 'Soltero', NULL, NULL, 'Argentino', NULL, 'Ventas  - Drogueria Monumento', '1 er Vigilante'),
(5, 'FabioPortapila', '123456', 'Portapila Fabio Nicolas', 102743, 'MM:.', 'fabionportapila@gmail.com', 26550679, '1978-03-17', ' 3413605271', '1 de Mayo 3119 PA', 'Concubinato', 2, 'Pedro ( 14/11/2012 ) / Juana  ( 16/03/2017 )', 'Argentino', 'Arquitecto', NULL, 'Hospitalario'),
(6, 'MauroDelmonte', '123456', 'Delmonte Mauro Antonio', 97486, 'MM:.', 'maurodelmonte82@gmail.com', 29762760, '1982-11-04', '3413623650', 'Urquiza 1064  02  02', 'Casado', 1, 'sofia luz ( 13/ 08/2020)', 'Argentino', 'Senior bussines developer', 'Charly . Io', 'EX:.VM:.'),
(7, 'FacundoPeralta', '123456', 'Peralta Facundo Ezequiel ', 102005, 'MM:.', 'facundoezequiel1990@gmail', 35648425, '1990-12-31', '3415455341', 'Av Pellegrini 451 PB C', 'Soltero', NULL, NULL, 'Argentino', 'Diplomado Cs. Politicas', 'Consultor Fund. Estudio e Investig. de la Mujer', NULL),
(8, 'LucasArzamendia', '123456', 'Arzamendia Lucas Demian', 94937, 'MM:.', 'ldarzamendia@gmail.com', 31535591, '1985-04-22', '3416872444', 'PJE. WOOD 3982', 'Soltero', NULL, NULL, 'Argentino', 'Contador', 'Contador', 'Or:.Fisc:.'),
(9, 'MarceloSevilla', '123456', 'Sevilla Marcelo Fabio', 90312, 'MM:.', 'marcelosevilla.ms@gmail.com', 123456, '2023-08-01', '3413723936', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'AgustinSkorpanich', '123456', 'Skorpanich Agustin Hernan', 97804, 'MM:.', 'agustinhs@gmail.com', 31850626, '1985-09-03', '3416595606', 'Buenos Aires 890 4to C', 'Soltero', NULL, NULL, 'Argentino', 'Administrativo', 'Adm. Expreso El charrua', 'VM:.'),
(11, 'PierHinkel', '123456', 'Hinkel Blenke Pier Ozires', 91848, 'MM:.', 'pier.hb@gmail.com', 95640322, '1987-06-07', '3416565875', 'Moreno 1461', 'Casado', NULL, NULL, 'Brasileño', 'Medico / Rescatista / Bombero', 'Medico / Centro Medico C. Aldao', NULL),
(12, 'LeandroLucarelli', '123456', 'Lucarelli Leandro Sebastian Raul', 93481, 'MM:.', 'lucarellileandrosr@gmail.com', 25079758, '1976-03-29', '3416237202', 'Cochabamba 3895', 'Casado', 2, 'Agustin (09/04/03) / Lourdes ( 10/11/08)', 'Argentino', 'Empleado Siderurgico', 'Supervisor Ternium Rosario', NULL),
(13, 'DiegoMaio', '123456', 'Maio Diego Martin', 95589, 'MM:.', 'diegommaio@gmail.com', 123456, '1972-11-10', '3416748052', 'San Lorenzo 3866', 'Casado', 2, 'Luca (30/12/2008) / Malena (02/08/2012)', 'Argentino', 'Abogado', 'Empresario', 'GTE:.'),
(14, 'DiegoPaez', '123456', 'Paez Diego Miguel', 95832, 'MM:.', 'paez.diegomiguel@gmail.com', 123456, '2023-08-01', '3416556866', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'PabloRusso', '123456', 'Russo Pablo', 92005, 'MM:.', 'cp.pablorusso@gmail.com', 123456, NULL, '3416759274', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'AccastelliNicolas', '123456', 'Accastelli Nicolás', 105875, 'Ap:.', 'nicolasaccastelli11@gmail.com', 41466148, '1999-04-06', '2473-510600', 'España 1559, piso 2, dto D', 'Soltero', 0, '', 'Argentino', 'Estudiante de Derecho', 'Estudiante', NULL),
(19, 'GiuntaMariano', '123456', 'Giunta Mariano', 104758, 'Ap:.', 'marianogiunta3@gmail.com', 33513286, '1988-01-27', '3413383922', 'Rodriguez 1674', 'En Pareja', 0, '', 'Argentino', 'Economista', 'Administración Pública-consultoría', NULL),
(20, 'BenettiHernandez', '123456', 'Benetti Hernandez Gonzalo', 104759, 'Ap:.', 'gonzalobenettih@gmail.com', 34934212, '1990-01-16', '3416056298', 'Sarmiento 1020, piso 4, dto 1.', 'Soltero', 0, NULL, 'Argentino', 'Estudiante Cs Políticas', 'Administración casa de Gobierno', NULL),
(21, 'BerrocalPablo', '123456', 'Berrocal Pablo David', 105882, 'Ap:.', 'pdberrocal@gmail.com', 21402987, '1970-04-06', '3412019141', 'Mexico 1330 bis', 'Casado', 2, 'Valentina 19/07/2000-Martina 06/10/2003', 'Argentino', 'Empresario', 'Encargado de prod. Fenix SA', NULL),
(22, 'GomezSergio', '123456', 'Gomez Valdez Sergio Ezequiel', 104211, 'Ap:.', 'gvsergio@gmail.com', 38905626, '1995-05-16', '3416122169', 'Entre Rios 1253, piso 3, dto A', 'Soltero', 0, NULL, 'Argentino', 'Programador-Diseñador UX/UI', 'Sr Front end Development, Difx.com', NULL),
(23, 'NochettiGerman', '123456', 'Nochetti Germán Ruben', 104209, 'Ap:.', 'germannochetti@gmai.com', 23688731, '1973-10-26', '3415443101', 'Tejeda 2663', 'Casado', 2, 'Agustina 01/09/2003-Bruno 10/02/2005', 'Argentino', 'Sub inspector', 'Operador Análisis Criminal', NULL),
(24, 'LopezAstrada', '123456', 'Lopez Astrada Tomas', 105815, 'Ap:.', 'bbudita96@gmail.com', 39662727, '1996-06-25', '3416709500', 'Zeballos 1129, piso 10', 'en Pareja', 0, NULL, 'Argentino', 'Personal Trainer', 'Gerente Empresarial', NULL),
(25, 'CasarellaBruno', '123456', 'Casarella Bruno Matias', 106585, 'Ap:.', 'casarellabruno@gmail.com', 32219103, '1986-06-09', '3415833652', 'Solis 341', 'Soltero', 0, NULL, 'Argentino', 'Lic. Comercio Internacional', 'Empresario/Seguridad Grupo Rosario', NULL),
(26, 'HennyGuillermo', '123456', 'Henny Guillermo Darío', 106350, 'Ap:.', 'guillermodariohenny@gmail.com', 21767916, '1970-08-13', '3416174756', 'Pte. Roca 591, Gdo Baigorria', 'Casado', 2, 'Lautaro 02/05/1996 - Lucio 29/11/1997', 'Argentino', 'Médico', 'Médico Laboral TERNIUM SA', NULL),
(27, 'MalatiniFranco', '123456', 'Mallatini Franco Sebastian ', 107109, 'Ap:.', 'francosebastian1935@gmail.com', 32114008, '1985-12-18', '3416752868', 'Córdoba 635, piso 2, dto A.', 'Divorciado', 0, NULL, 'Argentino', 'Productor', 'Productor', NULL),
(28, 'MolinaRodrigo', '123456', 'Molina Rodrigo Ivan', 106351, 'Ap:.', 'rodr23ivanm@gmail.com', 39948032, '1996-10-03', '3412654436', '8 de noviembre 0524', 'Soltero', 0, NULL, 'Argentino', 'Estudiante derecho/músico', 'Serv. Maestranza Pami 1', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actas`
--
ALTER TABLE `actas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `presencialidad`
--
ALTER TABLE `presencialidad`
  ADD PRIMARY KEY (`id_presencialidad`);

--
-- Indices de la tabla `saldos`
--
ALTER TABLE `saldos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `transacciones`
--
ALTER TABLE `transacciones`
  ADD PRIMARY KEY (`id_transacciones`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actas`
--
ALTER TABLE `actas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `presencialidad`
--
ALTER TABLE `presencialidad`
  MODIFY `id_presencialidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT de la tabla `saldos`
--
ALTER TABLE `saldos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `transacciones`
--
ALTER TABLE `transacciones`
  MODIFY `id_transacciones` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__bookmark: #1932 - La tabla &#039;phpmyadmin.pma__bookmark&#039; no existe en el motor
-- Error leyendo datos de la tabla phpmyadmin.pma__bookmark: #1064 - Existe un error en su sintaxis SQL; revise el manual que se corresponde con su versión del servidor MariaDB para averiguar la sintaxis correcta a utilizar cerca de &#039;FROM `phpmyadmin`.`pma__bookmark`&#039; en la línea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__central_columns: #1932 - La tabla &#039;phpmyadmin.pma__central_columns&#039; no existe en el motor
-- Error leyendo datos de la tabla phpmyadmin.pma__central_columns: #1064 - Existe un error en su sintaxis SQL; revise el manual que se corresponde con su versión del servidor MariaDB para averiguar la sintaxis correcta a utilizar cerca de &#039;FROM `phpmyadmin`.`pma__central_columns`&#039; en la línea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__column_info: #1932 - La tabla &#039;phpmyadmin.pma__column_info&#039; no existe en el motor
-- Error leyendo datos de la tabla phpmyadmin.pma__column_info: #1064 - Existe un error en su sintaxis SQL; revise el manual que se corresponde con su versión del servidor MariaDB para averiguar la sintaxis correcta a utilizar cerca de &#039;FROM `phpmyadmin`.`pma__column_info`&#039; en la línea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__designer_settings: #1932 - La tabla &#039;phpmyadmin.pma__designer_settings&#039; no existe en el motor
-- Error leyendo datos de la tabla phpmyadmin.pma__designer_settings: #1064 - Existe un error en su sintaxis SQL; revise el manual que se corresponde con su versión del servidor MariaDB para averiguar la sintaxis correcta a utilizar cerca de &#039;FROM `phpmyadmin`.`pma__designer_settings`&#039; en la línea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__export_templates: #1932 - La tabla &#039;phpmyadmin.pma__export_templates&#039; no existe en el motor
-- Error leyendo datos de la tabla phpmyadmin.pma__export_templates: #1064 - Existe un error en su sintaxis SQL; revise el manual que se corresponde con su versión del servidor MariaDB para averiguar la sintaxis correcta a utilizar cerca de &#039;FROM `phpmyadmin`.`pma__export_templates`&#039; en la línea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__favorite: #1932 - La tabla &#039;phpmyadmin.pma__favorite&#039; no existe en el motor
-- Error leyendo datos de la tabla phpmyadmin.pma__favorite: #1064 - Existe un error en su sintaxis SQL; revise el manual que se corresponde con su versión del servidor MariaDB para averiguar la sintaxis correcta a utilizar cerca de &#039;FROM `phpmyadmin`.`pma__favorite`&#039; en la línea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__history: #1932 - La tabla &#039;phpmyadmin.pma__history&#039; no existe en el motor
-- Error leyendo datos de la tabla phpmyadmin.pma__history: #1064 - Existe un error en su sintaxis SQL; revise el manual que se corresponde con su versión del servidor MariaDB para averiguar la sintaxis correcta a utilizar cerca de &#039;FROM `phpmyadmin`.`pma__history`&#039; en la línea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__navigationhiding: #1932 - La tabla &#039;phpmyadmin.pma__navigationhiding&#039; no existe en el motor
-- Error leyendo datos de la tabla phpmyadmin.pma__navigationhiding: #1064 - Existe un error en su sintaxis SQL; revise el manual que se corresponde con su versión del servidor MariaDB para averiguar la sintaxis correcta a utilizar cerca de &#039;FROM `phpmyadmin`.`pma__navigationhiding`&#039; en la línea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__pdf_pages: #1932 - La tabla &#039;phpmyadmin.pma__pdf_pages&#039; no existe en el motor
-- Error leyendo datos de la tabla phpmyadmin.pma__pdf_pages: #1064 - Existe un error en su sintaxis SQL; revise el manual que se corresponde con su versión del servidor MariaDB para averiguar la sintaxis correcta a utilizar cerca de &#039;FROM `phpmyadmin`.`pma__pdf_pages`&#039; en la línea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__recent: #1932 - La tabla &#039;phpmyadmin.pma__recent&#039; no existe en el motor
-- Error leyendo datos de la tabla phpmyadmin.pma__recent: #1064 - Existe un error en su sintaxis SQL; revise el manual que se corresponde con su versión del servidor MariaDB para averiguar la sintaxis correcta a utilizar cerca de &#039;FROM `phpmyadmin`.`pma__recent`&#039; en la línea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__relation: #1932 - La tabla &#039;phpmyadmin.pma__relation&#039; no existe en el motor
-- Error leyendo datos de la tabla phpmyadmin.pma__relation: #1064 - Existe un error en su sintaxis SQL; revise el manual que se corresponde con su versión del servidor MariaDB para averiguar la sintaxis correcta a utilizar cerca de &#039;FROM `phpmyadmin`.`pma__relation`&#039; en la línea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__savedsearches: #1932 - La tabla &#039;phpmyadmin.pma__savedsearches&#039; no existe en el motor
-- Error leyendo datos de la tabla phpmyadmin.pma__savedsearches: #1064 - Existe un error en su sintaxis SQL; revise el manual que se corresponde con su versión del servidor MariaDB para averiguar la sintaxis correcta a utilizar cerca de &#039;FROM `phpmyadmin`.`pma__savedsearches`&#039; en la línea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__table_coords: #1932 - La tabla &#039;phpmyadmin.pma__table_coords&#039; no existe en el motor
-- Error leyendo datos de la tabla phpmyadmin.pma__table_coords: #1064 - Existe un error en su sintaxis SQL; revise el manual que se corresponde con su versión del servidor MariaDB para averiguar la sintaxis correcta a utilizar cerca de &#039;FROM `phpmyadmin`.`pma__table_coords`&#039; en la línea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__table_info: #1932 - La tabla &#039;phpmyadmin.pma__table_info&#039; no existe en el motor
-- Error leyendo datos de la tabla phpmyadmin.pma__table_info: #1064 - Existe un error en su sintaxis SQL; revise el manual que se corresponde con su versión del servidor MariaDB para averiguar la sintaxis correcta a utilizar cerca de &#039;FROM `phpmyadmin`.`pma__table_info`&#039; en la línea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__table_uiprefs: #1932 - La tabla &#039;phpmyadmin.pma__table_uiprefs&#039; no existe en el motor
-- Error leyendo datos de la tabla phpmyadmin.pma__table_uiprefs: #1064 - Existe un error en su sintaxis SQL; revise el manual que se corresponde con su versión del servidor MariaDB para averiguar la sintaxis correcta a utilizar cerca de &#039;FROM `phpmyadmin`.`pma__table_uiprefs`&#039; en la línea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__tracking: #1932 - La tabla &#039;phpmyadmin.pma__tracking&#039; no existe en el motor
-- Error leyendo datos de la tabla phpmyadmin.pma__tracking: #1064 - Existe un error en su sintaxis SQL; revise el manual que se corresponde con su versión del servidor MariaDB para averiguar la sintaxis correcta a utilizar cerca de &#039;FROM `phpmyadmin`.`pma__tracking`&#039; en la línea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__userconfig: #1932 - La tabla &#039;phpmyadmin.pma__userconfig&#039; no existe en el motor
-- Error leyendo datos de la tabla phpmyadmin.pma__userconfig: #1064 - Existe un error en su sintaxis SQL; revise el manual que se corresponde con su versión del servidor MariaDB para averiguar la sintaxis correcta a utilizar cerca de &#039;FROM `phpmyadmin`.`pma__userconfig`&#039; en la línea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__usergroups: #1932 - La tabla &#039;phpmyadmin.pma__usergroups&#039; no existe en el motor
-- Error leyendo datos de la tabla phpmyadmin.pma__usergroups: #1064 - Existe un error en su sintaxis SQL; revise el manual que se corresponde con su versión del servidor MariaDB para averiguar la sintaxis correcta a utilizar cerca de &#039;FROM `phpmyadmin`.`pma__usergroups`&#039; en la línea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__users: #1932 - La tabla &#039;phpmyadmin.pma__users&#039; no existe en el motor
-- Error leyendo datos de la tabla phpmyadmin.pma__users: #1064 - Existe un error en su sintaxis SQL; revise el manual que se corresponde con su versión del servidor MariaDB para averiguar la sintaxis correcta a utilizar cerca de &#039;FROM `phpmyadmin`.`pma__users`&#039; en la línea 1
--
-- Base de datos: `remis_america`
--
CREATE DATABASE IF NOT EXISTS `remis_america` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `remis_america`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `choferes`
--

CREATE TABLE `choferes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `choferes`
--

INSERT INTO `choferes` (`id`, `nombre`, `apellido`, `estado`) VALUES
(24, 'nicolas', 'bogado', 0),
(25, 'pedro ', 'bogado', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre_apellido` varchar(255) DEFAULT NULL,
  `domicilio` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre_apellido`, `domicilio`, `telefono`) VALUES
(1, 'nico', '111', '111'),
(5, 'pedro', 'thompson 55', '4624129'),
(6, 'ayelen', 'thompson', '888888'),
(7, 'cleopatra', 'thompson', '99999'),
(8, 'nico', 'thompson 55', '1111111'),
(9, 'pedro', 'thompson 39', '444'),
(10, 'Juan Gomez', 'Alberdi 100 bis', '123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `fullname`) VALUES
(1, 'Admin', 'pbkdf2:sha256:600000$HIznlEBjFnGUyQ4R$04bb21359a9040011891074c69ac25be6f6daa0be8457a6422ffd1ecb6aad257', 'Admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `viajes`
--

CREATE TABLE `viajes` (
  `id` int(255) NOT NULL,
  `cliente` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `chofer` int(255) DEFAULT NULL,
  `fecha` varchar(255) DEFAULT NULL,
  `direccion` longtext DEFAULT NULL,
  `destino` longtext DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  `espera` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `viajes`
--

INSERT INTO `viajes` (`id`, `cliente`, `telefono`, `chofer`, `fecha`, `direccion`, `destino`, `estado`, `espera`) VALUES
(1, '10', '123', 24, '2023-12-26T17:21', 'Alberdi 100 bis', 'rosario', 0, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `choferes`
--
ALTER TABLE `choferes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `viajes`
--
ALTER TABLE `viajes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `choferes`
--
ALTER TABLE `choferes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `viajes`
--
ALTER TABLE `viajes`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Base de datos: `tienda_libros_db`
--
CREATE DATABASE IF NOT EXISTS `tienda_libros_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tienda_libros_db`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE `libro` (
  `id_libro` int(11) NOT NULL,
  `nombre_libro` varchar(255) DEFAULT NULL,
  `autor` varchar(255) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `existencias` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libro`
--

INSERT INTO `libro` (`id_libro`, `nombre_libro`, `autor`, `precio`, `existencias`) VALUES
(1, 'Trampas de la Fe', 'Octavio Paz', 500, 20),
(2, 'El Peregrino', 'Paulo Cohelo', 450, 30),
(3, 'El Diario de Ana Frank', 'Ana Frank', 200, 40);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`id_libro`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `libro`
--
ALTER TABLE `libro`
  MODIFY `id_libro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
