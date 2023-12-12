-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-12-2023 a las 06:34:00
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `adultosmayores`
--
CREATE DATABASE IF NOT EXISTS `adultosmayores` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `adultosmayores`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authentication_user`
--

CREATE TABLE `authentication_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `authentication_user`
--

INSERT INTO `authentication_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `email`, `first_name`, `last_name`, `is_active`, `is_staff`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$ilLn18sJtkg6$7AfeH5d1J84hKWU64/zqBbIOe6aNwF0V+NrbtNPRRoY=', '2023-12-12 05:33:13.178386', 1, 'admin', NULL, 'admin', 'admin', 1, 1, '2023-12-09 22:29:01.289474'),
(2, 'pbkdf2_sha256$216000$JjAnkxPZ2u4m$riKU3oZIa186mevl+6bC34CKwvFzf9iKiwaUIwpmy3Y=', '2023-12-12 04:29:50.675350', 0, 'ignacioRiffo', NULL, NULL, NULL, 1, 0, '2023-12-09 22:31:29.169851'),
(7, 'pbkdf2_sha256$216000$s2qPdhTdvdov$kDgXV78NchOcIAFdC2Hgc+jn5UrUKg4oDwxysPUbvjk=', '2023-12-12 05:06:05.481525', 0, 'davidEsp', 'david@hotmail.com', NULL, NULL, 1, 0, '2023-12-12 02:05:04.765739'),
(8, 'pbkdf2_sha256$216000$G3HsjNN8mYia$GsGqV1V1dNjHw+lvCI9IKeEhuhJ7zVJiap/oN4obwA4=', '2023-12-12 04:30:30.107688', 0, 'jorgeRiffo', 'jorge@gmail.com', NULL, NULL, 1, 0, '2023-12-12 02:07:22.885355');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authentication_user_groups`
--

CREATE TABLE `authentication_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `authentication_user_groups`
--

INSERT INTO `authentication_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 2, 1),
(6, 7, 3),
(8, 8, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authentication_user_user_permissions`
--

CREATE TABLE `authentication_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'adulto'),
(3, 'Funcionario'),
(2, 'Instructor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 1, 14),
(15, 1, 15),
(16, 1, 16),
(17, 1, 17),
(18, 1, 18),
(19, 1, 19),
(20, 1, 20),
(21, 1, 21),
(22, 1, 22),
(23, 1, 23),
(24, 1, 24),
(25, 1, 25),
(26, 1, 26),
(27, 1, 27),
(28, 1, 28),
(29, 1, 29),
(30, 1, 30),
(31, 1, 31),
(32, 1, 32),
(33, 1, 33),
(34, 1, 34),
(35, 1, 35),
(36, 1, 36),
(37, 1, 37),
(38, 1, 38),
(39, 1, 39),
(40, 1, 40),
(41, 1, 41),
(42, 1, 42),
(43, 1, 43),
(44, 1, 44),
(45, 1, 45),
(46, 1, 46),
(47, 1, 47),
(48, 1, 48),
(49, 1, 49),
(50, 1, 50),
(51, 1, 51),
(52, 1, 52),
(53, 1, 53),
(54, 1, 54),
(55, 1, 55),
(56, 1, 56),
(57, 1, 57),
(58, 1, 58),
(59, 1, 59),
(60, 1, 60),
(61, 2, 1),
(62, 2, 2),
(63, 2, 3),
(64, 2, 4),
(65, 2, 5),
(66, 2, 6),
(67, 2, 7),
(68, 2, 8),
(69, 2, 9),
(70, 2, 10),
(71, 2, 11),
(72, 2, 12),
(73, 2, 13),
(74, 2, 14),
(75, 2, 15),
(76, 2, 16),
(77, 2, 17),
(78, 2, 18),
(79, 2, 19),
(80, 2, 20),
(81, 2, 21),
(82, 2, 22),
(83, 2, 23),
(84, 2, 24),
(85, 2, 25),
(86, 2, 26),
(87, 2, 27),
(88, 2, 28),
(89, 2, 29),
(90, 2, 30),
(91, 2, 31),
(92, 2, 32),
(93, 2, 33),
(94, 2, 34),
(95, 2, 35),
(96, 2, 36),
(97, 2, 37),
(98, 2, 38),
(99, 2, 39),
(100, 2, 40),
(101, 2, 41),
(102, 2, 42),
(103, 2, 43),
(104, 2, 44),
(105, 2, 45),
(106, 2, 46),
(107, 2, 47),
(108, 2, 48),
(109, 2, 49),
(110, 2, 50),
(111, 2, 51),
(112, 2, 52),
(113, 2, 53),
(114, 2, 54),
(115, 2, 55),
(116, 2, 56),
(117, 2, 57),
(118, 2, 58),
(119, 2, 59),
(120, 2, 60),
(121, 3, 1),
(122, 3, 2),
(123, 3, 3),
(124, 3, 4),
(125, 3, 5),
(126, 3, 6),
(127, 3, 7),
(128, 3, 8),
(129, 3, 9),
(130, 3, 10),
(131, 3, 11),
(132, 3, 12),
(133, 3, 13),
(134, 3, 14),
(135, 3, 15),
(136, 3, 16),
(137, 3, 17),
(138, 3, 18),
(139, 3, 19),
(140, 3, 20),
(141, 3, 21),
(142, 3, 22),
(143, 3, 23),
(144, 3, 24),
(145, 3, 25),
(146, 3, 26),
(147, 3, 27),
(148, 3, 28),
(149, 3, 29),
(150, 3, 30),
(151, 3, 31),
(152, 3, 32),
(153, 3, 33),
(154, 3, 34),
(155, 3, 35),
(156, 3, 36),
(157, 3, 37),
(158, 3, 38),
(159, 3, 39),
(160, 3, 40),
(161, 3, 41),
(162, 3, 42),
(163, 3, 43),
(164, 3, 44),
(165, 3, 45),
(166, 3, 46),
(167, 3, 47),
(168, 3, 48),
(169, 3, 49),
(170, 3, 50),
(171, 3, 51),
(172, 3, 52),
(173, 3, 53),
(174, 3, 54),
(175, 3, 55),
(176, 3, 56),
(177, 3, 57),
(178, 3, 58),
(179, 3, 59),
(180, 3, 60);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_user'),
(22, 'Can change user', 6, 'change_user'),
(23, 'Can delete user', 6, 'delete_user'),
(24, 'Can view user', 6, 'view_user'),
(25, 'Can add instructor', 7, 'add_instructor'),
(26, 'Can change instructor', 7, 'change_instructor'),
(27, 'Can delete instructor', 7, 'delete_instructor'),
(28, 'Can view instructor', 7, 'view_instructor'),
(29, 'Can add sala', 8, 'add_sala'),
(30, 'Can change sala', 8, 'change_sala'),
(31, 'Can delete sala', 8, 'delete_sala'),
(32, 'Can view sala', 8, 'view_sala'),
(33, 'Can add municipalidad', 9, 'add_municipalidad'),
(34, 'Can change municipalidad', 9, 'change_municipalidad'),
(35, 'Can delete municipalidad', 9, 'delete_municipalidad'),
(36, 'Can view municipalidad', 9, 'view_municipalidad'),
(37, 'Can add adulto mayor', 10, 'add_adultomayor'),
(38, 'Can change adulto mayor', 10, 'change_adultomayor'),
(39, 'Can delete adulto mayor', 10, 'delete_adultomayor'),
(40, 'Can view adulto mayor', 10, 'view_adultomayor'),
(41, 'Can add inscripcion', 11, 'add_inscripcion'),
(42, 'Can change inscripcion', 11, 'change_inscripcion'),
(43, 'Can delete inscripcion', 11, 'delete_inscripcion'),
(44, 'Can view inscripcion', 11, 'view_inscripcion'),
(45, 'Can add adulto', 12, 'add_adulto'),
(46, 'Can change adulto', 12, 'change_adulto'),
(47, 'Can delete adulto', 12, 'delete_adulto'),
(48, 'Can view adulto', 12, 'view_adulto'),
(49, 'Can add bono', 13, 'add_bono'),
(50, 'Can change bono', 13, 'change_bono'),
(51, 'Can delete bono', 13, 'delete_bono'),
(52, 'Can view bono', 13, 'view_bono'),
(53, 'Can add taller', 14, 'add_taller'),
(54, 'Can change taller', 14, 'change_taller'),
(55, 'Can delete taller', 14, 'delete_taller'),
(56, 'Can view taller', 14, 'view_taller'),
(57, 'Can add funcionario', 15, 'add_funcionario'),
(58, 'Can change funcionario', 15, 'change_funcionario'),
(59, 'Can delete funcionario', 15, 'delete_funcionario'),
(60, 'Can view funcionario', 15, 'view_funcionario'),
(61, 'Can add postulacion', 16, 'add_postulacion'),
(62, 'Can change postulacion', 16, 'change_postulacion'),
(63, 'Can delete postulacion', 16, 'delete_postulacion'),
(64, 'Can view postulacion', 16, 'view_postulacion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_adulto`
--

CREATE TABLE `core_adulto` (
  `id` int(11) NOT NULL,
  `rut` int(11) NOT NULL,
  `dv` varchar(1) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellido` varchar(40) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_adultomayor`
--

CREATE TABLE `core_adultomayor` (
  `id` int(11) NOT NULL,
  `rut` varchar(50) NOT NULL,
  `primer_nombre` varchar(50) NOT NULL,
  `segundo_nombre` varchar(50) NOT NULL,
  `primer_apellido` varchar(50) NOT NULL,
  `segundo_apellido` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `telefono` int(11) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `comuna` varchar(50) NOT NULL,
  `genero` varchar(50) NOT NULL,
  `id_credencial_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `core_adultomayor`
--

INSERT INTO `core_adultomayor` (`id`, `rut`, `primer_nombre`, `segundo_nombre`, `primer_apellido`, `segundo_apellido`, `direccion`, `fecha_nacimiento`, `telefono`, `correo`, `comuna`, `genero`, `id_credencial_id`) VALUES
(1, '20426803-7', 'ignacio', 'david', 'riffo', 'pena', 'Av las nieves 02196', '2000-01-06', 968372902, 'ignacio@gmail.com', 'puente alto', 'masculino', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_bono`
--

CREATE TABLE `core_bono` (
  `id` int(11) NOT NULL,
  `periodo` varchar(30) NOT NULL,
  `monto` int(11) NOT NULL,
  `descripcion` varchar(30) NOT NULL,
  `funcionario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_funcionario`
--

CREATE TABLE `core_funcionario` (
  `id` int(11) NOT NULL,
  `rut` varchar(50) NOT NULL,
  `primer_nombre` varchar(50) NOT NULL,
  `primer_apellido` varchar(50) NOT NULL,
  `id_credencial_id` int(11) NOT NULL,
  `municipalidad_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_inscripcion`
--

CREATE TABLE `core_inscripcion` (
  `id` int(11) NOT NULL,
  `taller_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `core_inscripcion`
--

INSERT INTO `core_inscripcion` (`id`, `taller_id`, `usuario_id`) VALUES
(12, 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_instructor`
--

CREATE TABLE `core_instructor` (
  `id` int(11) NOT NULL,
  `rut` varchar(50) NOT NULL,
  `primer_nombre` varchar(50) NOT NULL,
  `segundo_nombre` varchar(50) NOT NULL,
  `primer_apellido` varchar(50) NOT NULL,
  `segundo_apellido` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `telefono` int(11) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `sueldo` int(11) NOT NULL,
  `comuna` varchar(50) NOT NULL,
  `genero` varchar(50) NOT NULL,
  `id_credencial_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `core_instructor`
--

INSERT INTO `core_instructor` (`id`, `rut`, `primer_nombre`, `segundo_nombre`, `primer_apellido`, `segundo_apellido`, `direccion`, `fecha_nacimiento`, `telefono`, `correo`, `sueldo`, `comuna`, `genero`, `id_credencial_id`) VALUES
(2, '10971348-1', 'jorge', 'david', 'riffo', 'riffo', 'Av las nieves 02196', '2023-12-12', 9832992, 'jorge@gmail.com', 900000, 'puente alto', 'masculino', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_municipalidad`
--

CREATE TABLE `core_municipalidad` (
  `id` int(11) NOT NULL,
  `nombreMunicipalidad` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `core_municipalidad`
--

INSERT INTO `core_municipalidad` (`id`, `nombreMunicipalidad`) VALUES
(1, 'Puente Alto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_postulacion`
--

CREATE TABLE `core_postulacion` (
  `id` int(11) NOT NULL,
  `fechapostulacion` date NOT NULL,
  `puntaje` int(11) DEFAULT NULL,
  `nombretaller` varchar(30) NOT NULL,
  `fecharesultado` date DEFAULT NULL,
  `adultomayor_id` int(11) DEFAULT NULL,
  `funcionario_id` int(11) DEFAULT NULL,
  `instructor_id` int(11) DEFAULT NULL,
  `descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `core_postulacion`
--

INSERT INTO `core_postulacion` (`id`, `fechapostulacion`, `puntaje`, `nombretaller`, `fecharesultado`, `adultomayor_id`, `funcionario_id`, `instructor_id`, `descripcion`) VALUES
(3, '2023-12-10', NULL, 'Manejo de nuevas tecnologías', NULL, 1, NULL, NULL, 'El programa desarrolla una serie de Talleres, enfocados al empoderamiento y la prevención de la dependencia.'),
(4, '2023-12-10', NULL, 'Ajedrez', NULL, 1, NULL, NULL, 'El ajedrez es un juego de tablero entre dos contrincantes en el que cada uno dispone al inicio de dieciséis piezas móviles, desiguales en importancia y valor, que se desplazan sobre un tablero capturando piezas del jugador contrario, según ciertas reglas.'),
(5, '2023-12-12', NULL, 'Manualidades', NULL, NULL, NULL, 2, 'Desarrollar actividades artisticas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_sala`
--

CREATE TABLE `core_sala` (
  `id` int(11) NOT NULL,
  `nombreSala` varchar(30) NOT NULL,
  `capacidad` int(11) NOT NULL,
  `descripcion` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `core_sala`
--

INSERT INTO `core_sala` (`id`, `nombreSala`, `capacidad`, `descripcion`) VALUES
(1, 'Biblioteca', 25, 'Espacio recreativo'),
(2, 'Gimnasio', 30, 'Actividades deportivas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_taller`
--

CREATE TABLE `core_taller` (
  `id` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `fechaInicio` date NOT NULL,
  `fechaTermino` date NOT NULL,
  `municipalidad_id` int(11) NOT NULL,
  `nombreInstructor_id` int(11) NOT NULL,
  `sala_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `core_taller`
--

INSERT INTO `core_taller` (`id`, `nombre`, `descripcion`, `fechaInicio`, `fechaTermino`, `municipalidad_id`, `nombreInstructor_id`, `sala_id`) VALUES
(3, 'Lectura', 'Lectura colectiva', '2023-12-12', '2023-12-20', 1, 2, 1),
(4, 'Dinamicas de grupo', 'juegos grupales entre los participantes', '2023-12-12', '2023-12-17', 1, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-12-09 22:29:54.035599', '1', 'adulto', 1, '[{\"added\": {}}]', 3, 1),
(2, '2023-12-09 22:30:02.952621', '2', 'Instructor', 1, '[{\"added\": {}}]', 3, 1),
(3, '2023-12-09 22:30:18.819696', '3', 'Funcionario', 1, '[{\"added\": {}}]', 3, 1),
(4, '2023-12-09 22:36:49.786316', '3', 'jorge', 1, '[{\"added\": {}}]', 6, 1),
(5, '2023-12-09 22:37:35.403564', '1', '10971348-1', 1, '[{\"added\": {}}]', 7, 1),
(6, '2023-12-09 22:38:07.819220', '1', 'Biblioteca', 1, '[{\"added\": {}}]', 8, 1),
(7, '2023-12-09 22:39:14.736783', '1', 'Puente Alto', 1, '[{\"added\": {}}]', 9, 1),
(8, '2023-12-09 22:39:50.970370', '1', 'Lectura', 1, '[{\"added\": {}}]', 14, 1),
(9, '2023-12-10 17:29:52.423030', '1', '20426803-7', 3, '', 11, 1),
(10, '2023-12-10 17:53:06.125691', '8', '20426803-7', 3, '', 11, 1),
(11, '2023-12-10 17:53:06.141050', '7', '20426803-7', 3, '', 11, 1),
(12, '2023-12-10 17:53:06.141050', '6', '20426803-7', 3, '', 11, 1),
(13, '2023-12-10 17:59:15.390837', '9', '20426803-7', 3, '', 11, 1),
(14, '2023-12-10 17:59:15.390837', '5', '20426803-7', 3, '', 11, 1),
(15, '2023-12-10 17:59:15.390837', '4', '20426803-7', 3, '', 11, 1),
(16, '2023-12-10 17:59:24.256601', '3', '20426803-7', 3, '', 11, 1),
(17, '2023-12-10 17:59:28.458739', '2', '20426803-7', 3, '', 11, 1),
(18, '2023-12-10 18:07:27.509404', '2', 'Gimnasio', 1, '[{\"added\": {}}]', 8, 1),
(19, '2023-12-10 18:08:42.324666', '2', 'Caminata', 1, '[{\"added\": {}}]', 14, 1),
(20, '2023-12-10 18:19:04.111737', '10', '20426803-7', 3, '', 11, 1),
(21, '2023-12-10 21:44:52.517271', '2', '20324524-3', 3, '', 10, 1),
(22, '2023-12-10 21:45:00.401384', '5', 'daniel', 3, '', 6, 1),
(23, '2023-12-10 21:45:00.401384', '4', 'Damian', 3, '', 6, 1),
(24, '2023-12-10 22:18:50.073176', '2', 'tenis', 3, '', 16, 1),
(25, '2023-12-10 22:18:50.084285', '1', 'tenis', 3, '', 16, 1),
(26, '2023-12-11 01:18:48.034112', '4', 'tenis', 2, '[{\"changed\": {\"fields\": [\"Descripcion\"]}}]', 16, 1),
(27, '2023-12-11 01:19:37.793157', '4', 'Ajedrez', 2, '[{\"changed\": {\"fields\": [\"Nombretaller\", \"Descripcion\"]}}]', 16, 1),
(28, '2023-12-11 01:19:48.500398', '4', 'Ajedrez', 2, '[]', 16, 1),
(29, '2023-12-11 01:23:06.799680', '3', 'Manejo de nuevas tecnologías', 2, '[{\"changed\": {\"fields\": [\"Nombretaller\", \"Descripcion\"]}}]', 16, 1),
(30, '2023-12-11 01:23:20.467570', '4', 'Ajedrez', 2, '[]', 16, 1),
(31, '2023-12-12 02:01:16.678748', '6', 'david', 1, '[{\"added\": {}}]', 6, 1),
(32, '2023-12-12 02:01:36.715591', '6', 'david', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 6, 1),
(33, '2023-12-12 02:04:10.855028', '6', 'davidEsp', 2, '[{\"changed\": {\"fields\": [\"Username\"]}}]', 6, 1),
(34, '2023-12-12 02:04:40.487226', '6', 'davidEsp', 3, '', 6, 1),
(35, '2023-12-12 02:05:35.677530', '7', 'davidEsp', 2, '[{\"changed\": {\"fields\": [\"Groups\", \"Email\"]}}]', 6, 1),
(36, '2023-12-12 02:08:10.749799', '8', 'franVe', 2, '[{\"changed\": {\"fields\": [\"Groups\", \"Email\"]}}]', 6, 1),
(37, '2023-12-12 02:08:26.243418', '3', 'jorge', 3, '', 6, 1),
(38, '2023-12-12 02:12:41.113219', '8', 'jorgeRiffo', 2, '[{\"changed\": {\"fields\": [\"Username\", \"Email\"]}}]', 6, 1),
(39, '2023-12-12 02:14:00.564045', '2', '10971348-1', 1, '[{\"added\": {}}]', 7, 1),
(40, '2023-12-12 02:14:42.424346', '3', 'Lectura', 1, '[{\"added\": {}}]', 14, 1),
(41, '2023-12-12 02:28:53.179497', '12', '20426803-7', 1, '[{\"added\": {}}]', 11, 1),
(42, '2023-12-12 04:26:08.057275', '4', 'Dinamicas de grupo', 1, '[{\"added\": {}}]', 14, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(6, 'authentication', 'user'),
(4, 'contenttypes', 'contenttype'),
(12, 'core', 'adulto'),
(10, 'core', 'adultomayor'),
(13, 'core', 'bono'),
(15, 'core', 'funcionario'),
(11, 'core', 'inscripcion'),
(7, 'core', 'instructor'),
(9, 'core', 'municipalidad'),
(16, 'core', 'postulacion'),
(8, 'core', 'sala'),
(14, 'core', 'taller'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-12-09 22:27:53.550770'),
(2, 'contenttypes', '0002_remove_content_type_name', '2023-12-09 22:27:53.650487'),
(3, 'auth', '0001_initial', '2023-12-09 22:27:53.796554'),
(4, 'auth', '0002_alter_permission_name_max_length', '2023-12-09 22:27:54.181124'),
(5, 'auth', '0003_alter_user_email_max_length', '2023-12-09 22:27:54.181124'),
(6, 'auth', '0004_alter_user_username_opts', '2023-12-09 22:27:54.203349'),
(7, 'auth', '0005_alter_user_last_login_null', '2023-12-09 22:27:54.211892'),
(8, 'auth', '0006_require_contenttypes_0002', '2023-12-09 22:27:54.219688'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2023-12-09 22:27:54.225891'),
(10, 'auth', '0008_alter_user_username_max_length', '2023-12-09 22:27:54.242473'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2023-12-09 22:27:54.253255'),
(12, 'auth', '0010_alter_group_name_max_length', '2023-12-09 22:27:54.273133'),
(13, 'auth', '0011_update_proxy_permissions', '2023-12-09 22:27:54.286242'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2023-12-09 22:27:54.295940'),
(15, 'authentication', '0001_initial', '2023-12-09 22:27:54.400676'),
(16, 'admin', '0001_initial', '2023-12-09 22:27:54.788699'),
(17, 'admin', '0002_logentry_remove_auto_add', '2023-12-09 22:27:54.984154'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2023-12-09 22:27:55.003198'),
(19, 'sessions', '0001_initial', '2023-12-09 22:27:55.040829'),
(20, 'core', '0001_initial', '2023-12-09 22:28:14.849427'),
(21, 'core', '0002_auto_20231209_1935', '2023-12-09 22:35:06.306848'),
(22, 'core', '0003_remove_inscripcion_correo', '2023-12-10 17:16:39.346220'),
(23, 'core', '0004_postulacion', '2023-12-10 21:08:18.950753'),
(24, 'core', '0005_postulacion_descripcion', '2023-12-10 21:17:55.868821');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `authentication_user`
--
ALTER TABLE `authentication_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `authentication_user_groups`
--
ALTER TABLE `authentication_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `authentication_user_groups_user_id_group_id_8af031ac_uniq` (`user_id`,`group_id`),
  ADD KEY `authentication_user_groups_group_id_6b5c44b7_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `authentication_user_user_permissions`
--
ALTER TABLE `authentication_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `authentication_user_user_user_id_permission_id_ec51b09f_uniq` (`user_id`,`permission_id`),
  ADD KEY `authentication_user__permission_id_ea6be19a_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `core_adulto`
--
ALTER TABLE `core_adulto`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indices de la tabla `core_adultomayor`
--
ALTER TABLE `core_adultomayor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_adultomayor_id_credencial_id_bbc1b1b8_fk_authentic` (`id_credencial_id`);

--
-- Indices de la tabla `core_bono`
--
ALTER TABLE `core_bono`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_bono_funcionario_id_93b3d323_fk_core_funcionario_id` (`funcionario_id`);

--
-- Indices de la tabla `core_funcionario`
--
ALTER TABLE `core_funcionario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_funcionario_id_credencial_id_8898294c_fk_authentic` (`id_credencial_id`),
  ADD KEY `core_funcionario_municipalidad_id_01631ee8_fk_core_muni` (`municipalidad_id`);

--
-- Indices de la tabla `core_inscripcion`
--
ALTER TABLE `core_inscripcion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_inscripcion_taller_id_f8437ab0_fk_core_taller_id` (`taller_id`),
  ADD KEY `core_inscripcion_usuario_id_cd398602_fk_core_adultomayor_id` (`usuario_id`);

--
-- Indices de la tabla `core_instructor`
--
ALTER TABLE `core_instructor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_instructor_id_credencial_id_4f295f52_fk_authentic` (`id_credencial_id`);

--
-- Indices de la tabla `core_municipalidad`
--
ALTER TABLE `core_municipalidad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `core_postulacion`
--
ALTER TABLE `core_postulacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_postulacion_adultomayor_id_e0feeab9_fk_core_adultomayor_id` (`adultomayor_id`),
  ADD KEY `core_postulacion_funcionario_id_83bddecd_fk_core_funcionario_id` (`funcionario_id`),
  ADD KEY `core_postulacion_instructor_id_b0a623f2_fk_core_instructor_id` (`instructor_id`);

--
-- Indices de la tabla `core_sala`
--
ALTER TABLE `core_sala`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `core_taller`
--
ALTER TABLE `core_taller`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_taller_municipalidad_id_2ec27083_fk_core_municipalidad_id` (`municipalidad_id`),
  ADD KEY `core_taller_nombreInstructor_id_d00f8b8a_fk_core_instructor_id` (`nombreInstructor_id`),
  ADD KEY `core_taller_sala_id_98c664c2_fk_core_sala_id` (`sala_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_authentication_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `authentication_user`
--
ALTER TABLE `authentication_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `authentication_user_groups`
--
ALTER TABLE `authentication_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `authentication_user_user_permissions`
--
ALTER TABLE `authentication_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de la tabla `core_adulto`
--
ALTER TABLE `core_adulto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `core_adultomayor`
--
ALTER TABLE `core_adultomayor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `core_bono`
--
ALTER TABLE `core_bono`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `core_funcionario`
--
ALTER TABLE `core_funcionario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `core_inscripcion`
--
ALTER TABLE `core_inscripcion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `core_instructor`
--
ALTER TABLE `core_instructor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `core_municipalidad`
--
ALTER TABLE `core_municipalidad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `core_postulacion`
--
ALTER TABLE `core_postulacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `core_sala`
--
ALTER TABLE `core_sala`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `core_taller`
--
ALTER TABLE `core_taller`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `authentication_user_groups`
--
ALTER TABLE `authentication_user_groups`
  ADD CONSTRAINT `authentication_user__user_id_30868577_fk_authentic` FOREIGN KEY (`user_id`) REFERENCES `authentication_user` (`id`),
  ADD CONSTRAINT `authentication_user_groups_group_id_6b5c44b7_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `authentication_user_user_permissions`
--
ALTER TABLE `authentication_user_user_permissions`
  ADD CONSTRAINT `authentication_user__permission_id_ea6be19a_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `authentication_user__user_id_736ebf7e_fk_authentic` FOREIGN KEY (`user_id`) REFERENCES `authentication_user` (`id`);

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `core_adulto`
--
ALTER TABLE `core_adulto`
  ADD CONSTRAINT `core_adulto_user_id_81024277_fk_authentication_user_id` FOREIGN KEY (`user_id`) REFERENCES `authentication_user` (`id`);

--
-- Filtros para la tabla `core_adultomayor`
--
ALTER TABLE `core_adultomayor`
  ADD CONSTRAINT `core_adultomayor_id_credencial_id_bbc1b1b8_fk_authentic` FOREIGN KEY (`id_credencial_id`) REFERENCES `authentication_user` (`id`);

--
-- Filtros para la tabla `core_bono`
--
ALTER TABLE `core_bono`
  ADD CONSTRAINT `core_bono_funcionario_id_93b3d323_fk_core_funcionario_id` FOREIGN KEY (`funcionario_id`) REFERENCES `core_funcionario` (`id`);

--
-- Filtros para la tabla `core_funcionario`
--
ALTER TABLE `core_funcionario`
  ADD CONSTRAINT `core_funcionario_id_credencial_id_8898294c_fk_authentic` FOREIGN KEY (`id_credencial_id`) REFERENCES `authentication_user` (`id`),
  ADD CONSTRAINT `core_funcionario_municipalidad_id_01631ee8_fk_core_muni` FOREIGN KEY (`municipalidad_id`) REFERENCES `core_municipalidad` (`id`);

--
-- Filtros para la tabla `core_inscripcion`
--
ALTER TABLE `core_inscripcion`
  ADD CONSTRAINT `core_inscripcion_taller_id_f8437ab0_fk_core_taller_id` FOREIGN KEY (`taller_id`) REFERENCES `core_taller` (`id`),
  ADD CONSTRAINT `core_inscripcion_usuario_id_cd398602_fk_core_adultomayor_id` FOREIGN KEY (`usuario_id`) REFERENCES `core_adultomayor` (`id`);

--
-- Filtros para la tabla `core_instructor`
--
ALTER TABLE `core_instructor`
  ADD CONSTRAINT `core_instructor_id_credencial_id_4f295f52_fk_authentic` FOREIGN KEY (`id_credencial_id`) REFERENCES `authentication_user` (`id`);

--
-- Filtros para la tabla `core_postulacion`
--
ALTER TABLE `core_postulacion`
  ADD CONSTRAINT `core_postulacion_adultomayor_id_e0feeab9_fk_core_adultomayor_id` FOREIGN KEY (`adultomayor_id`) REFERENCES `core_adultomayor` (`id`),
  ADD CONSTRAINT `core_postulacion_funcionario_id_83bddecd_fk_core_funcionario_id` FOREIGN KEY (`funcionario_id`) REFERENCES `core_funcionario` (`id`),
  ADD CONSTRAINT `core_postulacion_instructor_id_b0a623f2_fk_core_instructor_id` FOREIGN KEY (`instructor_id`) REFERENCES `core_instructor` (`id`);

--
-- Filtros para la tabla `core_taller`
--
ALTER TABLE `core_taller`
  ADD CONSTRAINT `core_taller_municipalidad_id_2ec27083_fk_core_municipalidad_id` FOREIGN KEY (`municipalidad_id`) REFERENCES `core_municipalidad` (`id`),
  ADD CONSTRAINT `core_taller_nombreInstructor_id_d00f8b8a_fk_core_instructor_id` FOREIGN KEY (`nombreInstructor_id`) REFERENCES `core_instructor` (`id`),
  ADD CONSTRAINT `core_taller_sala_id_98c664c2_fk_core_sala_id` FOREIGN KEY (`sala_id`) REFERENCES `core_sala` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_authentication_user_id` FOREIGN KEY (`user_id`) REFERENCES `authentication_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
