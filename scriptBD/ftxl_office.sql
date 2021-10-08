-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 08-10-2021 a las 10:15:26
-- Versión del servidor: 8.0.26
-- Versión de PHP: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ftxl_office`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `addres_ip`
--

CREATE TABLE `addres_ip` (
  `id` int NOT NULL,
  `ip` text NOT NULL,
  `padre` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradorgastos`
--

CREATE TABLE `administradorgastos` (
  `id` int NOT NULL,
  `nombre` text NOT NULL,
  `descripcion` longtext NOT NULL,
  `tipo` tinyint DEFAULT NULL,
  `date` date DEFAULT NULL,
  `cantidad` double DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradorlista`
--

CREATE TABLE `administradorlista` (
  `id` int NOT NULL,
  `nombre` text NOT NULL,
  `tipo` tinyint DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuncios`
--

CREATE TABLE `anuncios` (
  `id` int NOT NULL,
  `titulo` longtext,
  `contenido` longtext,
  `color` varchar(250) DEFAULT NULL,
  `inicio` date DEFAULT NULL,
  `vencimiento` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `archivos`
--

CREATE TABLE `archivos` (
  `id` int UNSIGNED NOT NULL,
  `titulo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `contenido` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `archivo` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `imagen_muestra` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articles`
--

CREATE TABLE `articles` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `articles`
--

INSERT INTO `articles` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(6, 'prueba1', '<p>prueba1</p>', '2020-12-30 19:54:54', '2020-12-30 19:54:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `avatares`
--

CREATE TABLE `avatares` (
  `id` int NOT NULL,
  `avatar` longtext,
  `activo_mujer` varchar(300) DEFAULT NULL,
  `activo_hombre` varchar(300) DEFAULT NULL,
  `inactivo_mujer` varchar(300) DEFAULT NULL,
  `inactivo_hombre` varchar(300) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `avatares`
--

INSERT INTO `avatares` (`id`, `avatar`, `activo_mujer`, `activo_hombre`, `inactivo_mujer`, `inactivo_hombre`, `updated_at`) VALUES
(1, '[{\"avatar\":\"avatar_1576185092.png\"},{\"avatar\":\"avatar_1576189159.png\"},{\"avatar\":\"avatar_1576189177.png\"},{\"avatar\":\"avatar_1576189187.png\"},{\"avatar\":\"avatar_1576189196.png\"},{\"avatar\":\"avatar_1576189203.png\"},{\"avatar\":\"avatar_1576189213.png\"},{\"avatar\":\"avatar_15762497471.png\"},{\"avatar\":\"avatar_15762497472.png\"},{\"avatar\":\"avatar_15762497473.png\"},{\"avatar\":\"avatar_15762497474.png\"},{\"avatar\":\"avatar_15763101171.png\"}]', 'avatar_1576189196.png', 'avatar_1576189187.png', 'avatar_1576189213.png', 'avatar_1576189203.png', '2019-12-14 12:55:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banners`
--

CREATE TABLE `banners` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `page` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0 = No Visible. 1 = Visible',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `banners`
--

INSERT INTO `banners` (`id`, `title`, `page`, `image`, `url`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Nueva Prueba', 'Streaming', '.png', NULL, 0, '2020-12-30 19:43:13', '2020-12-30 19:44:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `binario`
--

CREATE TABLE `binario` (
  `id` int NOT NULL,
  `binario` double DEFAULT NULL,
  `pata` varchar(250) DEFAULT NULL,
  `autobinario` int DEFAULT NULL COMMENT '1 - automitico 0 - semiautomatico',
  `inicio` varchar(250) DEFAULT NULL,
  `tipo` varchar(250) DEFAULT NULL,
  `auto` varchar(250) DEFAULT NULL COMMENT 'automatico - se paga de una ves - semi - se guarda en la base de datos y el admin decide si la acepta',
  `puntos_inicio` varchar(250) DEFAULT NULL,
  `patrocinador` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonoinicio`
--

CREATE TABLE `bonoinicio` (
  `id` int NOT NULL,
  `usuario` varchar(250) NOT NULL,
  `iduser` int NOT NULL,
  `idcomision` int NOT NULL,
  `total` varchar(250) NOT NULL,
  `correo` varchar(250) NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calendarios`
--

CREATE TABLE `calendarios` (
  `id` int NOT NULL,
  `iduser` int NOT NULL,
  `event_id` int NOT NULL,
  `titulo` varchar(250) NOT NULL,
  `contenido` longtext NOT NULL,
  `color` varchar(250) DEFAULT '#28a745',
  `inicio` date NOT NULL,
  `vence` datetime DEFAULT NULL,
  `time` time DEFAULT NULL,
  `lugar` varchar(250) NOT NULL,
  `tipo` varchar(250) DEFAULT NULL,
  `especifico` varchar(250) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `calendarios`
--

INSERT INTO `calendarios` (`id`, `iduser`, `event_id`, `titulo`, `contenido`, `color`, `inicio`, `vence`, `time`, `lugar`, `tipo`, `especifico`, `created_at`, `updated_at`) VALUES
(23, 10098, 12, 'Prueba', '<p>Esto es una prueba de los tipos de eventos que podemos crear (Video Conferencia)</p>', '#B70F1E', '2021-01-13', NULL, '21:30:00', 'Ninguno', NULL, NULL, '2021-01-13 16:31:30', '2021-01-13 16:31:30'),
(24, 1, 0, 'Prueba', '<p>Esto es una prueba de los tipos de eventos que podemos crear (Video Conferencia)</p>', ' #B70F1E', '2021-01-13', NULL, '21:30:00', 'Ninguno', NULL, NULL, '2021-01-13 18:25:47', '2021-01-13 18:25:47'),
(25, 10098, 13, 'Próxima transmisión 2', '<p>Pr&oacute;xima transmisi&oacute;n 2</p>', '#B70F1E', '2021-01-27', NULL, '20:38:00', 'Ninguno', NULL, NULL, '2021-01-13 18:39:16', '2021-01-13 18:39:16'),
(26, 10098, 14, 'Próxima transmisión 3', '<p>Pr&oacute;xima transmisi&oacute;n 3</p>', '#B70F1E', '2021-01-30', NULL, '23:44:00', 'Ninguno', NULL, NULL, '2021-01-13 18:45:16', '2021-01-13 18:45:16'),
(27, 10098, 15, 'Video Conferencia', '<p>Esto es una prueba para una video conferencia el 14-01-2021</p>', '#B70F1E', '2021-01-14', NULL, '13:35:00', 'Ninguno', NULL, NULL, '2021-01-14 08:30:08', '2021-01-14 08:30:08'),
(28, 10099, 0, 'Video Conferencia', '<p>Esto es una prueba para una video conferencia el 14-01-2021</p>', ' #B70F1E', '2021-01-14', NULL, '13:35:00', 'Ninguno', NULL, NULL, '2021-01-14 08:30:54', '2021-01-14 08:30:54'),
(29, 10098, 16, 'Evento 14-01-2021', '<p>Esto es una prueba de funcionaiento para Alexis el 14-01-2021</p>', '#B70F1E', '2021-01-14', NULL, '14:45:00', 'Ninguno', NULL, NULL, '2021-01-14 09:43:53', '2021-01-14 09:43:53'),
(30, 1, 0, 'Próxima transmisión 2', '<p>Pr&oacute;xima transmisi&oacute;n 2</p>', ' #B70F1E', '2021-01-27', NULL, '20:38:00', 'Ninguno', NULL, NULL, '2021-01-14 10:11:59', '2021-01-14 10:11:59'),
(31, 10098, 17, 'Prueba 14 enero', '<p>Prueba evento interactivo y videoconferencia ftxlive 2021</p>', '#B70F1E', '2021-01-14', NULL, '23:35:00', 'Ninguno', NULL, NULL, '2021-01-14 18:31:59', '2021-01-14 18:31:59'),
(32, 1, 0, 'Prueba 14 enero', '<p>Prueba evento interactivo y videoconferencia ftxlive 2021</p>', ' #B70F1E', '2021-01-14', NULL, '23:35:00', 'Ninguno', NULL, NULL, '2021-01-14 18:35:42', '2021-01-14 18:35:42'),
(33, 10098, 18, 'Nueva Prueba', '<p>probando ftxlive 2021</p>\r\n\r\n<p>prueba</p>', '#B70F1E', '2021-01-15', NULL, '01:35:00', 'Ninguno', NULL, NULL, '2021-01-14 20:34:23', '2021-01-14 20:34:23'),
(34, 1, 0, 'Nueva Prueba', '<p>probando ftxlive 2021</p>\r\n\r\n<p>prueba</p>', ' #B70F1E', '2021-01-15', NULL, '01:35:00', 'Ninguno', NULL, NULL, '2021-01-14 20:35:51', '2021-01-14 20:35:51'),
(35, 10098, 19, 'Equipo tecnico', '<p>Hoy es el momento de aprender como hacer las video conferencias en el grupo especializado</p>', '#B70F1E', '2021-01-15', NULL, '18:09:00', 'Ninguno', NULL, NULL, '2021-01-15 12:48:19', '2021-01-15 13:06:53'),
(36, 10129, 0, 'Equipo tecnico', '<p>Hoy es el momento de aprender como hacer las video conferencias en el grupo especializado</p>', ' #B70F1E', '2021-01-15', NULL, '18:09:00', 'Ninguno', NULL, NULL, '2021-01-15 13:10:01', '2021-01-15 13:10:01'),
(37, 10128, 0, 'Próxima transmisión 3', '<p>Pr&oacute;xima transmisi&oacute;n 3</p>', ' #B70F1E', '2021-01-30', NULL, '23:44:00', 'Ninguno', NULL, NULL, '2021-01-15 13:10:02', '2021-01-15 13:10:02'),
(38, 10127, 0, 'Equipo tecnico', '<p>Hoy es el momento de aprender como hacer las video conferencias en el grupo especializado</p>', ' #B70F1E', '2021-01-15', NULL, '18:09:00', 'Ninguno', NULL, NULL, '2021-01-15 13:10:05', '2021-01-15 13:10:05'),
(39, 10128, 0, 'Equipo tecnico', '<p>Hoy es el momento de aprender como hacer las video conferencias en el grupo especializado</p>', ' #B70F1E', '2021-01-15', NULL, '18:09:00', 'Ninguno', NULL, NULL, '2021-01-15 13:10:11', '2021-01-15 13:10:11'),
(40, 10098, 20, 'Prueba Luisana', '<p>Esto es una prueba de funcionamiento el 15-01-2021</p>', '#B70F1E', '2021-01-15', NULL, '19:10:00', 'Ninguno', NULL, NULL, '2021-01-15 14:09:05', '2021-01-15 14:09:05'),
(41, 10099, 0, 'Prueba Luisana', '<p>Esto es una prueba de funcionamiento el 15-01-2021</p>', ' #B70F1E', '2021-01-15', NULL, '19:10:00', 'Ninguno', NULL, NULL, '2021-01-15 14:10:37', '2021-01-15 14:10:37'),
(42, 10127, 0, 'Prueba Luisana', '<p>Esto es una prueba de funcionamiento el 15-01-2021</p>', ' #B70F1E', '2021-01-15', NULL, '19:10:00', 'Ninguno', NULL, NULL, '2021-01-15 14:26:38', '2021-01-15 14:26:38'),
(43, 10098, 21, 'Evento de Prueba', '<p>Blockchain es una tecnologia o sistema de programacion, tambien conocida como cadena de Bloques y que ahora esta en boca de todos gracias al Bitcoin, Ya que el Blockchain es una tecnologia que esta detras de la Criptomoneda</p>', '#B70F1E', '2021-01-15', NULL, '22:30:00', 'Ninguno', NULL, NULL, '2021-01-15 17:24:08', '2021-01-15 17:24:08'),
(44, 10127, 0, 'Evento de Prueba', '<p>Blockchain es una tecnologia o sistema de programacion, tambien conocida como cadena de Bloques y que ahora esta en boca de todos gracias al Bitcoin, Ya que el Blockchain es una tecnologia que esta detras de la Criptomoneda</p>', ' #B70F1E', '2021-01-15', NULL, '22:30:00', 'Ninguno', NULL, NULL, '2021-01-15 17:32:41', '2021-01-15 17:32:41'),
(45, 10098, 22, 'Equipo2', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '#B70F1E', '2021-01-16', NULL, '14:27:00', 'Ninguno', NULL, NULL, '2021-01-16 09:25:28', '2021-01-16 09:25:28'),
(46, 10127, 0, 'Equipo2', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', ' #B70F1E', '2021-01-16', NULL, '14:27:00', 'Ninguno', NULL, NULL, '2021-01-16 09:27:38', '2021-01-16 09:27:38'),
(47, 10098, 23, 'Equipo 3', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '#B70F1E', '2021-01-16', NULL, '14:29:00', 'Ninguno', NULL, NULL, '2021-01-16 09:41:58', '2021-01-16 09:41:58'),
(48, 10127, 0, 'Equipo 3', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', ' #B70F1E', '2021-01-16', NULL, '14:29:00', 'Ninguno', NULL, NULL, '2021-01-16 09:42:27', '2021-01-16 09:42:27'),
(49, 10098, 24, 'Equipo 4', '<p>&nbsp;</p>\r\n\r\n<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently wi</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>&nbsp;</h2>', '#B70F1E', '2021-01-16', NULL, '15:30:00', 'Ninguno', NULL, NULL, '2021-01-16 10:23:40', '2021-01-16 10:25:50'),
(50, 10127, 0, 'Equipo 4', '<p>&nbsp;</p>\r\n\r\n<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently wi</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>&nbsp;</h2>', ' #B70F1E', '2021-01-16', NULL, '15:30:00', 'Ninguno', NULL, NULL, '2021-01-16 10:26:18', '2021-01-16 10:26:18'),
(51, 10098, 25, 'Equipo 4', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker</p>', '#B70F1E', '2021-01-16', NULL, '15:40:00', 'Ninguno', NULL, NULL, '2021-01-16 10:34:04', '2021-01-16 10:34:04'),
(52, 10127, 0, 'Equipo 4', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker</p>', ' #B70F1E', '2021-01-16', NULL, '15:40:00', 'Ninguno', NULL, NULL, '2021-01-16 10:35:49', '2021-01-16 10:35:49'),
(53, 10128, 0, 'Equipo 4', '<p>&nbsp;</p>\r\n\r\n<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently wi</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>&nbsp;</h2>', ' #B70F1E', '2021-01-16', NULL, '15:30:00', 'Ninguno', NULL, NULL, '2021-01-16 10:46:48', '2021-01-16 10:46:48'),
(54, 10129, 0, 'Equipo 4', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker</p>', ' #B70F1E', '2021-01-16', NULL, '15:40:00', 'Ninguno', NULL, NULL, '2021-01-16 10:47:38', '2021-01-16 10:47:38'),
(55, 10128, 0, 'Equipo 4', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker</p>', ' #B70F1E', '2021-01-16', NULL, '15:40:00', 'Ninguno', NULL, NULL, '2021-01-16 10:47:38', '2021-01-16 10:47:38'),
(56, 10098, 26, 'presentación sabado 100', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '#B70F1E', '2021-01-16', NULL, '18:14:00', 'Ninguno', NULL, NULL, '2021-01-16 13:05:48', '2021-01-16 13:08:10'),
(57, 10132, 0, 'presentación sabado 100', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', ' #B70F1E', '2021-01-16', NULL, '18:10:00', 'Ninguno', NULL, NULL, '2021-01-16 13:07:39', '2021-01-16 13:07:39'),
(58, 10127, 0, 'presentación sabado 100', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', ' #B70F1E', '2021-01-16', NULL, '18:14:00', 'Ninguno', NULL, NULL, '2021-01-16 13:11:24', '2021-01-16 13:11:24'),
(59, 10129, 0, 'presentación sabado 100', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', ' #B70F1E', '2021-01-16', NULL, '18:14:00', 'Ninguno', NULL, NULL, '2021-01-16 13:15:03', '2021-01-16 13:15:03'),
(60, 10098, 27, 'Sabado 2000', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '#B70F1E', '2021-01-16', NULL, '18:24:00', 'Ninguno', NULL, NULL, '2021-01-16 13:20:17', '2021-01-16 13:20:17'),
(61, 10127, 0, 'Sabado 2000', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', ' #B70F1E', '2021-01-16', NULL, '18:24:00', 'Ninguno', NULL, NULL, '2021-01-16 13:21:13', '2021-01-16 13:21:13'),
(62, 10132, 0, 'Sabado 2000', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', ' #B70F1E', '2021-01-16', NULL, '18:24:00', 'Ninguno', NULL, NULL, '2021-01-16 13:21:40', '2021-01-16 13:21:40'),
(63, 10129, 0, 'Sabado 2000', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', ' #B70F1E', '2021-01-16', NULL, '18:24:00', 'Ninguno', NULL, NULL, '2021-01-16 13:21:53', '2021-01-16 13:21:53'),
(64, 10098, 28, 'Reunion de Trabajo', '<p>Reunion de trabajo de inicio de actividades 3ra semana de enero 2021, probando vidoconferencias con ftxlive</p>', '#B70F1E', '2021-01-18', NULL, '18:35:00', 'Ninguno', NULL, NULL, '2021-01-18 11:32:16', '2021-01-18 11:32:16'),
(65, 1, 0, 'Reunion de Trabajo', '<p>Reunion de trabajo de inicio de actividades 3ra semana de enero 2021, probando vidoconferencias con ftxlive</p>', ' #B70F1E', '2021-01-18', NULL, '18:35:00', 'Ninguno', NULL, NULL, '2021-01-18 11:32:41', '2021-01-18 11:32:41'),
(66, 10098, 29, 'Reunion de Trabajo 18Enero', '<p>Prueba transmisi&ograve;n videoconferencia con ftxlive 18 enero, validando sistema de videoconferencias</p>', '#B70F1E', '2021-01-18', NULL, '17:07:00', 'Ninguno', NULL, NULL, '2021-01-18 12:04:54', '2021-01-18 12:04:54'),
(67, 1, 0, 'Reunion de Trabajo 18Enero', '<p>Prueba transmisi&ograve;n videoconferencia con ftxlive 18 enero, validando sistema de videoconferencias</p>', ' #B70F1E', '2021-01-18', NULL, '17:07:00', 'Ninguno', NULL, NULL, '2021-01-18 12:05:19', '2021-01-18 12:05:19'),
(68, 10098, 30, 'Evento de Prueba 5', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '#B70F1E', '2021-01-18', NULL, '19:15:00', 'Ninguno', NULL, NULL, '2021-01-18 13:22:08', '2021-01-18 13:22:08'),
(69, 10127, 0, 'Evento de Prueba 5', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', ' #B70F1E', '2021-01-18', NULL, '19:15:00', 'Ninguno', NULL, NULL, '2021-01-18 13:44:33', '2021-01-18 13:44:33'),
(70, 10098, 31, 'prueba reunion lunes1', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '#B70F1E', '2021-01-18', NULL, '21:48:00', 'Ninguno', NULL, NULL, '2021-01-18 16:44:47', '2021-01-18 16:46:41'),
(71, 10098, 32, 'Prueba Ajustes 20-01', '<p>Esto es una prueba de Luisana para los ajustes del Cerrar Sesi&oacute;n</p>', '#B70F1E', '2021-01-20', NULL, '22:50:00', 'Ninguno', NULL, NULL, '2021-01-20 17:54:21', '2021-01-20 17:54:21'),
(72, 1, 0, 'Próxima transmisión 3', '<p>Pr&oacute;xima transmisi&oacute;n 3</p>', ' #B70F1E', '2021-01-30', NULL, '23:44:00', 'Ninguno', NULL, NULL, '2021-01-21 10:44:37', '2021-01-21 10:44:37'),
(73, 10098, 33, 'Evento prueba 23 enero 2020', '<p>Prueba sistema de streaming y videoconferencias ftxlive</p>', '#B70F1E', '2021-01-23', NULL, '20:04:00', 'Ninguno', NULL, NULL, '2021-01-23 17:50:46', '2021-01-23 18:02:26'),
(74, 1, 0, 'Evento prueba 23 enero 2020', '<p>Prueba sistema de streaming y videoconferencias ftxlive</p>', ' #B70F1E', '2021-01-23', NULL, '22:55:00', 'Ninguno', NULL, NULL, '2021-01-23 17:51:06', '2021-01-23 17:51:06'),
(75, 10098, 34, 'Evento prueba 23 enero 2020 2', '<p>Prueba Streaming y videoconferencia ftxlive2020 23 enero</p>', '#B70F1E', '2021-01-23', NULL, '23:05:00', 'Ninguno', NULL, NULL, '2021-01-23 18:04:26', '2021-01-23 18:04:26'),
(76, 1, 0, 'Evento prueba 23 enero 2020 2', '<p>Prueba Streaming y videoconferencia ftxlive2020 23 enero</p>', ' #B70F1E', '2021-01-23', NULL, '23:05:00', 'Ninguno', NULL, NULL, '2021-01-23 18:04:34', '2021-01-23 18:04:34'),
(77, 10098, 35, 'Videoconferencia prueba enero 2020', '<p>Envento de prueba, videoconferencia ftxlive 2020</p>', '#B70F1E', '2021-01-23', NULL, '18:12:00', 'Ninguno', NULL, NULL, '2021-01-23 18:09:14', '2021-01-23 18:09:14'),
(78, 1, 0, 'Videoconferencia prueba enero 2020', '<p>Envento de prueba, videoconferencia ftxlive 2020</p>', ' #B70F1E', '2021-01-23', NULL, '18:12:00', 'Ninguno', NULL, NULL, '2021-01-23 18:09:41', '2021-01-23 18:09:41'),
(79, 10098, 36, 'Videoconferencia de prueba enero 2020', '<p>Evento de transmisi&oacute;n en videoconferencia a trav&eacute;s de ftxlive, pruebas enero 2021</p>', '#B70F1E', '2021-01-23', NULL, '23:17:00', 'Ninguno', NULL, NULL, '2021-01-23 18:15:33', '2021-01-23 18:15:33'),
(80, 1, 0, 'Videoconferencia de prueba enero 2020', '<p>Evento de transmisi&oacute;n en videoconferencia a trav&eacute;s de ftxlive, pruebas enero 2021</p>', ' #B70F1E', '2021-01-23', NULL, '23:17:00', 'Ninguno', NULL, NULL, '2021-01-23 18:15:48', '2021-01-23 18:15:48'),
(81, 10098, 37, 'pruebasinergia lunes', '<p>Notice:&nbsp;<strong>Divi Supreme Pro</strong>&nbsp;requires&nbsp;<strong>Divi Supreme Lite</strong>&nbsp;to be installed and activated. You will need to keep the&nbsp;<strong>Divi Supreme Lite</strong>&nbsp;version installed/activated to use the&nbsp;<strong>Divi Supreme Pro</strong>&nbsp;version. This is a fallback method to keep your site running smoothly without any issue in case the Divi Supreme Pro is not activated. This will not slow down your website or has any impact on performance when both are activated.</p>', '#B70F1E', '2021-01-25', NULL, '17:34:00', 'Ninguno', NULL, NULL, '2021-01-25 15:26:50', '2021-01-25 15:42:46'),
(82, 10098, 38, 'Evento 26-01 Luisana', '<p>Esto es una prueba de funcionamiento de hora</p>', '#B70F1E', '2021-01-26', NULL, '18:30:00', 'Ninguno', NULL, NULL, '2021-01-26 13:27:34', '2021-01-26 13:27:34'),
(83, 10098, 39, 'pruebas', '<p>esto es una prueba para el funci</p>', '#B70F1E', '2021-01-26', NULL, '19:30:00', 'Ninguno', NULL, NULL, '2021-01-26 14:29:13', '2021-01-26 14:29:13'),
(84, 10098, 40, 'reunion martes 1', '<p>Added a new item&nbsp;<strong>agregar en los footer de mybusines, ftxlive y mytrading los logos de rebolut para que se puedan colocar esta en el droxpox donde estaban todos las marcas que se colocaron los footer anexaron dos mas para cargarlos</strong>&nbsp;to the checklist&nbsp;<strong>Linea de trabajo</strong>&nbsp;on&nbsp;<strong><a href=\"https://trello.com/c/sWA3lnPO\" target=\"_blank\">tarea 11</a></strong>.</p>', '#B70F1E', '2021-01-26', NULL, '19:50:00', 'Ninguno', NULL, NULL, '2021-01-26 14:43:14', '2021-01-26 14:46:11'),
(85, 10127, 0, 'reunion martes 1', '<p>Added a new item&nbsp;<strong>agregar en los footer de mybusines, ftxlive y mytrading los logos de rebolut para que se puedan colocar esta en el droxpox donde estaban todos las marcas que se colocaron los footer anexaron dos mas para cargarlos</strong>&nbsp;to the checklist&nbsp;<strong>Linea de trabajo</strong>&nbsp;on&nbsp;<strong><a href=\"https://trello.com/c/sWA3lnPO\" target=\"_blank\">tarea 11</a></strong>.</p>', ' #B70F1E', '2021-01-26', NULL, '19:59:00', 'Ninguno', NULL, NULL, '2021-01-26 14:45:08', '2021-01-26 14:45:08'),
(86, 10098, 41, 'Reunion martes 2', '<p>Added a new item&nbsp;<strong>agregar en los footer de mybusines, ftxlive y mytrading los logos de rebolut para que se puedan colocar esta en el droxpox donde estaban todos las marcas que se colocaron los footer anexaron dos mas para cargarlos</strong>&nbsp;to the checklist&nbsp;<strong>Linea de trabajo</strong>&nbsp;on&nbsp;<strong><a href=\"https://trello.com/c/sWA3lnPO\" target=\"_blank\">tarea 11</a></strong>.</p>', '#B70F1E', '2021-01-26', NULL, '20:08:00', 'Ninguno', NULL, NULL, '2021-01-26 15:03:25', '2021-01-26 15:05:12'),
(87, 10127, 0, 'Reunion martes 2', '<p>Added a new item&nbsp;<strong>agregar en los footer de mybusines, ftxlive y mytrading los logos de rebolut para que se puedan colocar esta en el droxpox donde estaban todos las marcas que se colocaron los footer anexaron dos mas para cargarlos</strong>&nbsp;to the checklist&nbsp;<strong>Linea de trabajo</strong>&nbsp;on&nbsp;<strong><a href=\"https://trello.com/c/sWA3lnPO\" target=\"_blank\">tarea 11</a></strong>.</p>', ' #B70F1E', '2021-01-26', NULL, '20:25:00', 'Ninguno', NULL, NULL, '2021-01-26 15:04:18', '2021-01-26 15:04:18'),
(88, 10098, 42, 'Reunion martes 3', '<p>Added a new item&nbsp;<strong>agregar en los footer de mybusines, ftxlive y mytrading los logos de rebolut para que se puedan colocar esta en el droxpox donde estaban todos las marcas que se colocaron los footer anexaron dos mas para cargarlos</strong>&nbsp;to the checklist&nbsp;<strong>Linea de trabajo</strong>&nbsp;on&nbsp;<strong><a href=\"https://trello.com/c/sWA3lnPO\" target=\"_blank\">tarea 11</a></strong>.</p>', '#B70F1E', '2021-01-26', NULL, '20:20:00', 'Ninguno', NULL, NULL, '2021-01-26 15:14:37', '2021-01-26 15:14:37'),
(89, 10127, 0, 'Reunion martes 3', '<p>Added a new item&nbsp;<strong>agregar en los footer de mybusines, ftxlive y mytrading los logos de rebolut para que se puedan colocar esta en el droxpox donde estaban todos las marcas que se colocaron los footer anexaron dos mas para cargarlos</strong>&nbsp;to the checklist&nbsp;<strong>Linea de trabajo</strong>&nbsp;on&nbsp;<strong><a href=\"https://trello.com/c/sWA3lnPO\" target=\"_blank\">tarea 11</a></strong>.</p>', ' #B70F1E', '2021-01-26', NULL, '20:20:00', 'Ninguno', NULL, NULL, '2021-01-26 15:16:17', '2021-01-26 15:16:17'),
(90, 10098, 43, 'Evento 27-01 Luisana', '<p>Esto es una prueba para probar el funcionamiento de la video conferencia</p>', '#B70F1E', '2021-01-27', NULL, '13:10:00', 'Ninguno', NULL, NULL, '2021-01-27 08:06:20', '2021-01-27 08:06:20'),
(91, 10099, 0, 'Evento 27-01 Luisana', '<p>Esto es una prueba para probar el funcionamiento de la video conferencia</p>', ' #B70F1E', '2021-01-27', NULL, '13:10:00', 'Ninguno', NULL, NULL, '2021-01-27 08:08:00', '2021-01-27 08:08:00'),
(92, 10098, 44, 'Evento 27-01 Luisana (Webinar)', '<p>Esto es una prueba para la actualizaci&oacute;n autom&aacute;tica del bot&oacute;n de entrar en usuarios</p>', '#B70F1E', '2021-01-27', NULL, '13:25:00', 'Ninguno', NULL, NULL, '2021-01-27 08:19:44', '2021-01-27 08:19:44'),
(93, 10099, 0, 'Evento 27-01 Luisana (Webinar)', '<p>Esto es una prueba para la actualizaci&oacute;n autom&aacute;tica del bot&oacute;n de entrar en usuarios</p>', ' #B70F1E', '2021-01-27', NULL, '13:25:00', 'Ninguno', NULL, NULL, '2021-01-27 08:20:59', '2021-01-27 08:20:59'),
(94, 10098, 45, 'Reunion miercoles en la mañana', '<p>Added a new item&nbsp;<strong>agregar en los footer de mybusines, ftxlive y mytrading los logos de rebolut para que se puedan colocar esta en el droxpox donde estaban todos las marcas que se colocaron los footer anexaron dos mas para cargarlos</strong>&nbsp;to the checklist&nbsp;<strong>Linea de trabajo</strong>&nbsp;on&nbsp;<strong><a href=\"https://trello.com/c/sWA3lnPO\" target=\"_blank\">tarea 11</a></strong>.</p>', '#B70F1E', '2021-01-27', NULL, '13:40:00', 'Ninguno', NULL, NULL, '2021-01-27 08:47:21', '2021-01-27 08:50:06'),
(95, 10129, 0, 'Reunion miercoles en la mañana', '<p>Added a new item&nbsp;<strong>agregar en los footer de mybusines, ftxlive y mytrading los logos de rebolut para que se puedan colocar esta en el droxpox donde estaban todos las marcas que se colocaron los footer anexaron dos mas para cargarlos</strong>&nbsp;to the checklist&nbsp;<strong>Linea de trabajo</strong>&nbsp;on&nbsp;<strong><a href=\"https://trello.com/c/sWA3lnPO\" target=\"_blank\">tarea 11</a></strong>.</p>', ' #B70F1E', '2021-01-27', NULL, '13:59:00', 'Ninguno', NULL, NULL, '2021-01-27 08:48:22', '2021-01-27 08:48:22'),
(96, 10127, 0, 'Reunion miercoles en la mañana', '<p>Added a new item&nbsp;<strong>agregar en los footer de mybusines, ftxlive y mytrading los logos de rebolut para que se puedan colocar esta en el droxpox donde estaban todos las marcas que se colocaron los footer anexaron dos mas para cargarlos</strong>&nbsp;to the checklist&nbsp;<strong>Linea de trabajo</strong>&nbsp;on&nbsp;<strong><a href=\"https://trello.com/c/sWA3lnPO\" target=\"_blank\">tarea 11</a></strong>.</p>', ' #B70F1E', '2021-01-27', NULL, '13:40:00', 'Ninguno', NULL, NULL, '2021-01-27 08:51:34', '2021-01-27 08:51:34'),
(97, 10098, 46, 'Reunion 4 miercoles en la mañana', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '#B70F1E', '2021-01-27', NULL, '14:49:00', 'Ninguno', NULL, NULL, '2021-01-27 09:39:58', '2021-01-27 09:39:58'),
(98, 10128, 0, 'Próxima transmisión 2', '<p>Pr&oacute;xima transmisi&oacute;n 2</p>', ' #B70F1E', '2021-01-27', NULL, '20:38:00', 'Ninguno', NULL, NULL, '2021-01-27 09:44:33', '2021-01-27 09:44:33'),
(99, 10128, 0, 'Reunion 4 miercoles en la mañana', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', ' #B70F1E', '2021-01-27', NULL, '14:49:00', 'Ninguno', NULL, NULL, '2021-01-27 09:45:00', '2021-01-27 09:45:00'),
(100, 10098, 47, 'Prueba 30-01', '<p>asdn ajkdns afkdskjfhdsjkhfvjsd dshfjkhdskjfhjkdsbfjsd cdshjfhdjkshgjkdshgkjds</p>', '#B70F1E', '2021-01-30', NULL, '13:50:00', 'Ninguno', NULL, NULL, '2021-01-30 08:48:59', '2021-01-30 08:48:59'),
(101, 10099, 0, 'Prueba 30-01', '<p>asdn ajkdns afkdskjfhdsjkhfvjsd dshfjkhdskjfhjkdsbfjsd cdshjfhdjkshgjkdshgkjds</p>', ' #B70F1E', '2021-01-30', NULL, '13:50:00', 'Ninguno', NULL, NULL, '2021-01-30 09:07:16', '2021-01-30 09:07:16'),
(102, 10098, 48, 'Evento de Prueba Mentor', '<p>Esto es una prueba de un evento creado desde el backoffice del mentor</p>', '#B70F1E', '2021-02-03', NULL, '15:00:00', 'Ninguno', NULL, NULL, '2021-02-03 08:13:06', '2021-02-03 08:13:06'),
(103, 1, 49, 'Prueba 10-02', '<p>Esto es una prueba para ver el dise&ntilde;o de las proximas transmisiones</p>', '#B70F1E', '2021-02-11', NULL, '14:30:00', 'Ninguno', NULL, NULL, '2021-02-10 12:29:40', '2021-02-10 12:29:40'),
(104, 1, 50, 'Prueba 22-02', '<p>Esto es una prueba del equipo t&eacute;cnico...</p>', '#B70F1E', '2021-02-22', NULL, '14:40:00', 'Ninguno', NULL, NULL, '2021-02-22 09:34:50', '2021-02-22 09:34:50'),
(105, 10134, 0, 'Prueba 22-02', '<p>Esto es una prueba del equipo t&eacute;cnico...</p>', ' #B70F1E', '2021-02-22', NULL, '14:40:00', 'Ninguno', NULL, NULL, '2021-02-22 09:46:59', '2021-02-22 09:46:59'),
(106, 10098, 51, 'Prueba Final 11-03', '<p>Esto es una prueba para verificar el funcionamiento despu&eacute;s de la actualizaci&oacute;n final del sistema de streaming</p>', '#B70F1E', '2021-03-11', NULL, '18:20:00', 'Ninguno', NULL, NULL, '2021-03-11 13:17:41', '2021-03-11 13:17:41'),
(107, 1, 0, 'Prueba Final 11-03', '<p>Esto es una prueba para verificar el funcionamiento despu&eacute;s de la actualizaci&oacute;n final del sistema de streaming</p>', ' #B70F1E', '2021-03-11', NULL, '18:20:00', 'Ninguno', NULL, NULL, '2021-03-11 13:22:18', '2021-03-11 13:22:18'),
(108, 10098, 52, 'Nueva Prueba 23-03', '<p>Esto es una prueba del equipo t&eacute;cnico para la transmisi&oacute;n de audio y video</p>', '#B70F1E', '2021-03-23', NULL, '14:40:00', 'Ninguno', NULL, NULL, '2021-03-23 09:38:41', '2021-03-23 09:38:41'),
(109, 1, 0, 'Nueva Prueba 23-03', '<p>Esto es una prueba del equipo t&eacute;cnico para la transmisi&oacute;n de audio y video</p>', ' #B70F1E', '2021-03-23', NULL, '14:40:00', 'Ninguno', NULL, NULL, '2021-03-23 09:39:05', '2021-03-23 09:39:05'),
(110, 10130, 53, 'evento test', '<p>adsfgdhmvbn,bm,ghfdfdasgdhmn, werrshteshfesgfes</p>', '#B70F1E', '2021-04-19', NULL, '00:42:00', 'Ninguno', NULL, NULL, '2021-04-18 19:36:13', '2021-04-18 19:36:13'),
(111, 10130, 54, 'Test DE EVENTO', '<p>dsafsgdhjvhm,vgfeqwdfrtghfjghgdfghggmnhbmngmfngh</p>', '#B70F1E', '2021-04-19', NULL, '01:59:00', 'Ninguno', NULL, NULL, '2021-04-18 19:53:10', '2021-04-18 19:53:10'),
(112, 10098, 55, 'Test DE EVENTO', '<p>wersdtfhgjhkjlkhjfdthrsgdtytuyiuohipjp&iacute;&ntilde;lkjhrgrstrdyuhkjlkhyjterw</p>', '#B70F1E', '2021-04-19', NULL, '14:12:00', 'Ninguno', NULL, NULL, '2021-04-18 19:56:24', '2021-04-18 19:56:24'),
(113, 10136, 56, 'PRUEBA DOMINGUERA CON DOUG FTX', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '#B70F1E', '2021-04-18', NULL, '01:58:00', 'Ninguno', NULL, NULL, '2021-04-18 19:59:40', '2021-04-18 20:04:41'),
(114, 10136, 57, 'PRUEBA DOMINGUERA CON DOUG FTX 2', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '#B70F1E', '2021-04-18', NULL, '02:30:00', 'Ninguno', NULL, NULL, '2021-04-18 20:27:22', '2021-04-18 20:27:22'),
(115, 10136, 58, 'Streaming revisión plataformas', '<p>Validaci&oacute;n plataformas streaming ftxlive, mbapro, mytrading, revisi&oacute;n completa</p>', '#B70F1E', '2021-04-21', NULL, '00:40:00', 'Ninguno', NULL, NULL, '2021-04-20 19:35:02', '2021-04-20 19:35:02'),
(116, 10136, 59, 'Streaming Sinergy Team Demo', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '#B70F1E', '2021-04-21', NULL, '14:59:00', 'Ninguno', NULL, NULL, '2021-04-21 09:55:31', '2021-04-21 09:55:31'),
(117, 10137, 0, 'Streaming Sinergy Team Demo', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', ' #B70F1E', '2021-04-21', NULL, '14:59:00', 'Ninguno', NULL, NULL, '2021-04-21 09:56:28', '2021-04-21 09:56:28'),
(118, 10138, 0, 'Streaming Sinergy Team Demo', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', ' #B70F1E', '2021-04-21', NULL, '14:59:00', 'Ninguno', NULL, NULL, '2021-04-21 09:57:13', '2021-04-21 09:57:13'),
(119, 10139, 0, 'Streaming Sinergy Team Demo', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', ' #B70F1E', '2021-04-21', NULL, '14:59:00', 'Ninguno', NULL, NULL, '2021-04-21 10:15:59', '2021-04-21 10:15:59'),
(120, 10136, 60, 'Streaming Demo FTXLive', '<p>Evento para validar&nbsp; Streaming de FTXLive, MBAPro, MTAPRO junto a Noemy y Douglas</p>', '#B70F1E', '2021-04-21', NULL, '17:30:00', 'Ninguno', NULL, NULL, '2021-04-21 11:45:19', '2021-04-21 11:45:19'),
(121, 10139, 0, 'Streaming Demo FTXLive', '<p>Evento para validar&nbsp; Streaming de FTXLive, MBAPro, MTAPRO junto a Noemy y Douglas</p>', ' #B70F1E', '2021-04-21', NULL, '17:30:00', 'Ninguno', NULL, NULL, '2021-04-21 11:47:40', '2021-04-21 11:47:40'),
(122, 10137, 0, 'Streaming Demo FTXLive', '<p>Evento para validar&nbsp; Streaming de FTXLive, MBAPro, MTAPRO junto a Noemy y Douglas</p>', ' #B70F1E', '2021-04-21', NULL, '17:30:00', 'Ninguno', NULL, NULL, '2021-04-21 12:35:51', '2021-04-21 12:35:51'),
(123, 10138, 0, 'Streaming Demo FTXLive', '<p>Evento para validar&nbsp; Streaming de FTXLive, MBAPro, MTAPRO junto a Noemy y Douglas</p>', ' #B70F1E', '2021-04-21', NULL, '17:30:00', 'Ninguno', NULL, NULL, '2021-04-21 12:55:06', '2021-04-21 12:55:06'),
(124, 10098, 61, 'Evento de Soporte Técnico', '<p>Este es un evento para uso de pruebas del equipo de desarrollo para incluir las mejoras y correcciones</p>', '#B70F1E', '2021-04-23', NULL, '14:00:00', 'Ninguno', NULL, NULL, '2021-04-23 08:58:58', '2021-04-23 08:58:58'),
(125, 10099, 0, 'Evento de Soporte Técnico', '<p>Este es un evento para uso de pruebas del equipo de desarrollo para incluir las mejoras y correcciones</p>', ' #B70F1E', '2021-04-23', NULL, '14:00:00', 'Ninguno', NULL, NULL, '2021-04-23 09:38:05', '2021-04-23 09:38:05'),
(126, 10136, 62, 'Evento de prueba septiembre 17', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '#B70F1E', '2021-09-19', NULL, '16:00:00', 'Ninguno', NULL, NULL, '2021-09-17 17:52:26', '2021-09-17 17:52:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canjes`
--

CREATE TABLE `canjes` (
  `id` int NOT NULL,
  `iduser` int NOT NULL,
  `cantidad` double NOT NULL,
  `total` double DEFAULT NULL COMMENT 'total en pesos',
  `tipo` int NOT NULL COMMENT '0 - puntos propios 1 - puntos grupales ',
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `capital`
--

CREATE TABLE `capital` (
  `id` int NOT NULL,
  `nombre` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `departa` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `costo` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carritos`
--

CREATE TABLE `carritos` (
  `id` int NOT NULL,
  `iduser` int NOT NULL,
  `producto` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` double NOT NULL,
  `idproducto` int NOT NULL,
  `cantidad` int NOT NULL,
  `total` double NOT NULL,
  `iva` double DEFAULT NULL,
  `ip` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referido` int DEFAULT NULL,
  `info` double DEFAULT NULL,
  `porcentaje` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `carritos`
--

INSERT INTO `carritos` (`id`, `iduser`, `producto`, `precio`, `idproducto`, `cantidad`, `total`, `iva`, `ip`, `referido`, `info`, `porcentaje`, `updated_at`) VALUES
(3, 0, 'Mensualidad', 280, 29, 1, 210, 0, '186.91.112.240', 7, 0, '0', '2020-08-04 13:48:14'),
(5, 0, 'Mensualidad', 280, 29, 1, 210, 0, '201.209.106.45', 1, 0, '0', '2020-09-18 21:46:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `uuid` varchar(40) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `icon` varchar(40) NOT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `cover_name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `uuid`, `title`, `slug`, `icon`, `cover`, `cover_name`, `created_at`, `updated_at`) VALUES
(1, '5a4edf05-2450-4c17-9874-b8f23790cff4', 'Finanzas', 'finanzas', 'fa fa-line-chart', '1.jpg', '1.jpg', '2020-10-17 10:26:12', '2020-10-17 10:26:12'),
(2, '2ffa7f8c-fcaf-4041-8796-6778a8bc6781', 'Fintech', 'fintech', 'fa fa-suitcase', '2.jpg', '2.jpg', '2020-10-17 10:27:00', '2020-10-17 10:27:00'),
(3, 'f307abbf-413b-45cf-bdb6-916c961c97e2', 'Emprendurismo', 'emprendurismo', 'fa fa-area-chart', '3.jpg', '3.jpg', '2020-10-17 10:27:23', '2020-10-17 10:27:23'),
(4, 'd1a7fdf3-08c8-479a-a978-f4a1d5389dbd', 'Real State', 'real-state', 'fa fa-area-chart', '4.jpg', '4.jpg', '2020-10-17 10:27:46', '2020-10-17 10:27:46'),
(5, '6b0d7a7f-4f2b-4f3c-a2ab-ddffde94d555', 'Forex', 'forex', 'fab fa-bitcoin', '5.jpg', '5.jpg', '2020-10-17 10:28:10', '2020-10-17 10:28:10'),
(6, 'c3ceecdd-4b94-4a6c-aa7d-be9e8786c928', 'Networkmarketing', 'networmarketing', 'fas fa-tasks', '6.jpg', '6.jpg', '2020-10-17 10:28:38', '2020-10-17 10:28:38'),
(7, '258ce72d-b396-4643-9a09-f20bb6f5fb08', 'Social Media', 'social-media', 'fas fa-robot', '1.jpg', '1.jpg', '2020-10-17 10:28:52', '2020-10-17 10:28:52'),
(8, '579e944d-5d0f-4065-9fbd-2ff34d6420dd', 'Ventas', 'ventas', 'fab fa-btc', '2.jpg', '2.jpg', '2020-10-17 10:29:06', '2020-10-17 10:29:06'),
(9, 'b466909f-9990-4ff0-b263-b79e98404c7b', 'Liderazgo', 'liderazgo', 'fas fa-funnel-dollar', '3.jpg', '3.jpg', '2020-10-17 10:29:23', '2020-10-17 10:29:23'),
(10, '4d05542e-0cae-4f19-b143-c4a99a284808', 'Coaching', 'coaching', 'fab fa-btc', '4.jpg', '4.jpg', '2020-10-17 10:29:37', '2020-10-17 10:29:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chats`
--

CREATE TABLE `chats` (
  `id` int NOT NULL,
  `contenido` longtext,
  `origen` int DEFAULT NULL,
  `destino` int DEFAULT NULL,
  `codigo` varchar(250) DEFAULT NULL,
  `status` int DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chat_codigo`
--

CREATE TABLE `chat_codigo` (
  `id` int NOT NULL,
  `usuario_id` int DEFAULT NULL,
  `codigo` varchar(250) NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coinpayment_transactions`
--

CREATE TABLE `coinpayment_transactions` (
  `id` int UNSIGNED NOT NULL,
  `txn_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amountf` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coin` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirms_needed` int DEFAULT NULL,
  `payment_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qrcode_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `received` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receivedf` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recv_confirms` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_text` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timeout` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int UNSIGNED NOT NULL,
  `tickets_id` int NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `comentario` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `archivo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comments`
--

CREATE TABLE `comments` (
  `id` int UNSIGNED NOT NULL,
  `comment` varchar(250) NOT NULL,
  `lesson_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `commissions`
--

CREATE TABLE `commissions` (
  `id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `compra_id` int NOT NULL,
  `date` date NOT NULL,
  `total` double NOT NULL,
  `referred_email` varchar(100) NOT NULL,
  `referred_level` int NOT NULL,
  `status` tinyint(1) NOT NULL,
  `edo_liquidacion` tinyint(1) NOT NULL DEFAULT '0',
  `concepto` varchar(100) NOT NULL,
  `tipo_comision` varchar(200) NOT NULL,
  `eliminada` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 - activa, 1 - eliminada',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `commissions`
--

INSERT INTO `commissions` (`id`, `user_id`, `compra_id`, `date`, `total`, `referred_email`, `referred_level`, `status`, `edo_liquidacion`, `concepto`, `tipo_comision`, `eliminada`, `created_at`, `updated_at`) VALUES
(1, 1, 30, '2021-01-15', 2.997, 'yo100@gmail.com', 1, 1, 0, 'Ganancia por la compra del referido pietro1 por la Membresia Ver', 'membresias', 0, '2021-01-15 16:36:13', '2021-01-15 16:36:13'),
(2, 1, 29, '2021-01-15', 2.997, 'cliente4@sinergiared.com', 1, 1, 0, 'Ganancia por la compra del referido Maria P por la Membresia Ver', 'membresias', 0, '2021-01-15 16:36:13', '2021-01-15 16:36:13'),
(3, 1, 31, '2021-01-15', 2.997, 'ramalejtq@gmail.com', 1, 1, 0, 'Ganancia por la compra del referido ramonp por la Membresia Ver', 'membresias', 0, '2021-01-15 16:36:13', '2021-01-15 16:36:13'),
(4, 1, 32, '2021-01-15', 30, 'ramalejtq@gmail.com', 1, 1, 0, 'Ganancia por la compra del referido ramonp por la Membresia Equipo tecnico', 'membresias', 0, '2021-01-15 16:36:13', '2021-01-15 16:36:13'),
(5, 1, 36, '2021-01-18', 30, 'noemy.producer@gmail.com', 1, 1, 0, 'Ganancia por la compra del referido noemy por la Membresia Ver', 'membresias', 0, '2021-01-18 12:18:24', '2021-01-18 12:18:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `component`
--

CREATE TABLE `component` (
  `id` int NOT NULL,
  `slider` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `componentenoticias`
--

CREATE TABLE `componentenoticias` (
  `id` int NOT NULL,
  `noticias` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `componentestransf`
--

CREATE TABLE `componentestransf` (
  `id` int NOT NULL,
  `tipotransferencia` int DEFAULT NULL COMMENT '0 - monto fijo 1 - monto por porcentaje',
  `comisiontransf` double DEFAULT NULL COMMENT 'esta es para el metodo de pago, es la comision por transferencia de dinero en la billetera',
  `valor_conversion` double DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `componentestransferencias`
--

CREATE TABLE `componentestransferencias` (
  `id` int NOT NULL,
  `iduser` int NOT NULL,
  `usuario` varchar(250) NOT NULL,
  `descripcion` longtext NOT NULL,
  `debito` float NOT NULL,
  `credito` float NOT NULL,
  `balance` float NOT NULL,
  `descuento` float NOT NULL,
  `tipotransacion` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compradirectas`
--

CREATE TABLE `compradirectas` (
  `id` int NOT NULL,
  `iduser` int NOT NULL,
  `idcompra` int NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `precio` double DEFAULT NULL,
  `referido_correo` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consultacrypto`
--

CREATE TABLE `consultacrypto` (
  `id` int NOT NULL,
  `idcompra` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `idconsulta` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenidos`
--

CREATE TABLE `contenidos` (
  `id` int UNSIGNED NOT NULL,
  `titulo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `contenido` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `imagen` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `costo`
--

CREATE TABLE `costo` (
  `id` int NOT NULL,
  `iduser` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `localidad` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `idlocalidad` int DEFAULT NULL,
  `provincia` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `costo` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `courses`
--

CREATE TABLE `courses` (
  `id` int NOT NULL,
  `mentor_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `category_id` int NOT NULL,
  `subcategory_id` int NOT NULL,
  `membership_id` int DEFAULT NULL,
  `description` text,
  `cover` varchar(255) DEFAULT NULL,
  `cover_name` varchar(255) DEFAULT NULL,
  `thumbnail_cover` varchar(255) DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `featured_cover` varchar(255) DEFAULT NULL,
  `featured_cover_name` varchar(255) DEFAULT NULL,
  `featured_at` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 = No Disponible. 1 = Disponible',
  `likes` int UNSIGNED DEFAULT '0' COMMENT 'Para guardar el numero de likes que tiene ese curso',
  `shares` int UNSIGNED DEFAULT '0' COMMENT 'Para guardar el numero de veces que ha sido compartido',
  `views` int UNSIGNED DEFAULT '0' COMMENT 'Para guardar el numero de visualizaciones',
  `duration` varchar(50) DEFAULT NULL,
  `price` double NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `courses`
--

INSERT INTO `courses` (`id`, `mentor_id`, `title`, `slug`, `category_id`, `subcategory_id`, `membership_id`, `description`, `cover`, `cover_name`, `thumbnail_cover`, `featured`, `featured_cover`, `featured_cover_name`, `featured_at`, `status`, `likes`, `shares`, `views`, `duration`, `price`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 10136, 'Como vender Mas', 'como-vender-mas', 8, 0, 1, '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', '2.png', 'Vender mas portada.png', '2-thumbnail.png', 0, NULL, NULL, NULL, 1, 0, 0, 0, '1hora', 0, '2021-03-31 10:46:02', '2021-03-31 10:46:02', NULL),
(3, 10136, 'Como vender por Internet', 'como-vender-por-internet', 8, 0, 1, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', '3.png', 'Diseño sin título (3).png', '3-thumbnail.png', 0, NULL, NULL, NULL, 1, 0, 0, 0, '1 Hora', 0, '2021-03-31 13:44:12', '2021-03-31 13:44:12', NULL),
(4, 10136, 'Claves de un vendedor Exitoso', 'claves-de-un-vendedor-exitoso', 8, 0, 1, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', '4.png', 'Diseño sin título (5).png', '4-thumbnail.png', 0, NULL, NULL, NULL, 1, 0, 0, 0, '1 Hora', 0, '2021-03-31 13:46:18', '2021-03-31 13:46:18', NULL),
(5, 10136, 'Aprende cómo llevar tus Finanzas', 'aprende-como-llevar-tus-finanzas', 1, 0, 2, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', '5.png', 'Diseño sin título (15).png', '5-thumbnail.png', 0, NULL, NULL, NULL, 1, 0, 0, 0, '1 Hora', 0, '2021-03-31 13:48:08', '2021-03-31 13:48:08', NULL),
(6, 10136, 'Bolsa de Valores', 'bolsa-de-valores', 1, 0, 2, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', '6.png', 'Diseño sin título (13).png', '6-thumbnail.png', 0, NULL, NULL, NULL, 1, 0, 0, 0, '1 Hora', 0, '2021-03-31 13:49:53', '2021-03-31 13:49:53', NULL),
(7, 10136, 'Cómo tomar decisiones Financieras', 'como-tomar-decisiones-financieras', 1, 0, 2, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', '7.png', 'Diseño sin título (16).png', '7-thumbnail.png', 0, NULL, NULL, NULL, 1, 0, 0, 0, '1 Hora', 0, '2021-03-31 13:52:44', '2021-03-31 13:52:44', NULL),
(8, 10136, 'Aprende cómo tomar decisiones para ser un buen Líder', 'aprende-como-tomar-decisiones-para-ser-un-buen-lider', 9, 0, 3, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', '8.png', 'Diseño sin título (38).png', '8-thumbnail.png', 0, NULL, NULL, NULL, 1, 0, 0, 0, '1 Hora', 0, '2021-03-31 13:57:33', '2021-03-31 17:27:00', NULL),
(9, 10136, 'Como se construye el liderazgo en un equipo', 'como-se-construye-el-liderazgo-en-un-equipo', 9, 0, 3, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', '9.png', 'Diseño sin título (28).png', '9-thumbnail.png', 0, NULL, NULL, NULL, 1, 0, 0, 0, '1 Hora', 0, '2021-03-31 13:59:09', '2021-03-31 13:59:09', NULL),
(10, 10136, 'Liderazgo efectivo en pleno Siglo 21', 'liderazgo-efectivo-en-pleno-siglo-21', 9, 0, 3, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', '10.png', 'Diseño sin título (30).png', '10-thumbnail.png', 0, NULL, NULL, NULL, 1, 0, 0, 0, '1 Hora', 0, '2021-03-31 14:00:46', '2021-03-31 14:00:46', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `courses_orden`
--

CREATE TABLE `courses_orden` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `total` float NOT NULL,
  `detalles` text,
  `type_product` varchar(50) NOT NULL DEFAULT 'membresia',
  `idtransacion_stripe` varchar(100) DEFAULT NULL,
  `idtransacion_coinpaymen` varchar(100) DEFAULT NULL,
  `idtransacion_paypal` text,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0 - procesando, 1 - completado, 2 - cancelado',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `courses_orden`
--

INSERT INTO `courses_orden` (`id`, `user_id`, `total`, `detalles`, `type_product`, `idtransacion_stripe`, `idtransacion_coinpaymen`, `idtransacion_paypal`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 220, '{\"idmembresia\":2,\"nombre\":\"Hacer\",\"precio\":220,\"tipo\":\"Anual\",\"img\":\"https:\\/\\/ftxlive.com\\/office\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":0}', 'membresia', NULL, NULL, NULL, 0, '2020-12-29 14:15:22', '2020-12-29 14:15:22'),
(2, 1, 220, '{\"idmembresia\":2,\"nombre\":\"Hacer\",\"precio\":220,\"tipo\":\"Anual\",\"img\":\"https:\\/\\/ftxlive.com\\/office\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":0}', 'membresia', NULL, NULL, '20201229161532', 0, '2020-12-29 14:15:32', '2020-12-29 14:15:32'),
(3, 1, 220, '{\"idmembresia\":2,\"nombre\":\"Hacer\",\"precio\":220,\"tipo\":\"Anual\",\"img\":\"https:\\/\\/ftxlive.com\\/office\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":0}', 'membresia', NULL, NULL, NULL, 1, '2020-12-29 14:15:45', '2020-12-29 14:15:45'),
(4, 1, 220, '{\"idmembresia\":2,\"nombre\":\"Hacer\",\"precio\":220,\"tipo\":\"Anual\",\"img\":\"https:\\/\\/ftxlive.com\\/office\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":0}', 'membresia', NULL, NULL, NULL, 1, '2020-12-29 14:34:55', '2020-12-29 14:34:55'),
(5, 1, 9.99, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":9.9900000000000002131628207280300557613372802734375,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/ftxlive.com\\/office\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":0}', 'membresia', NULL, NULL, NULL, 1, '2020-12-29 14:35:55', '2020-12-29 14:35:55'),
(6, 1, 100, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":100,\"tipo\":\"Anual\",\"img\":\"https:\\/\\/ftxlive.com\\/office\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":0}', 'membresia', NULL, NULL, NULL, 0, '2020-12-29 14:42:30', '2020-12-29 14:42:30'),
(7, 1, 100, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":100,\"tipo\":\"Anual\",\"img\":\"https:\\/\\/ftxlive.com\\/office\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":0}', 'membresia', NULL, NULL, NULL, 0, '2020-12-29 14:42:31', '2020-12-29 14:42:31'),
(8, 1, 100, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":100,\"tipo\":\"Anual\",\"img\":\"https:\\/\\/ftxlive.com\\/office\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":0}', 'membresia', NULL, NULL, '20201229164301', 0, '2020-12-29 14:43:01', '2020-12-29 14:43:01'),
(9, 10108, 9.99, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":9.9900000000000002131628207280300557613372802734375,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/ftxlive.com\\/office\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":1}', 'membresia', NULL, NULL, NULL, 0, '2020-12-30 18:12:13', '2020-12-30 18:12:13'),
(10, 1, 9.99, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":9.9900000000000002131628207280300557613372802734375,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/ftxlive.com\\/office\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":0}', 'membresia', NULL, NULL, NULL, 0, '2021-01-07 14:43:18', '2021-01-07 14:43:18'),
(11, 1, 9.99, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":9.9900000000000002131628207280300557613372802734375,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/ftxlive.com\\/office\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":0}', 'membresia', NULL, NULL, '20210107164330', 0, '2021-01-07 14:43:30', '2021-01-07 14:43:30'),
(12, 1, 9.99, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":9.9900000000000002131628207280300557613372802734375,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/ftxlive.com\\/office\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":0}', 'membresia', NULL, NULL, NULL, 1, '2021-01-07 14:43:44', '2021-01-07 14:43:44'),
(13, 10121, 1, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/ftxlive.com\\/office\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":1}', 'membresia', NULL, NULL, NULL, 1, '2021-01-07 15:11:03', '2021-01-07 15:11:03'),
(14, 10121, 1, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":1,\"tipo\":\"Anual\",\"img\":\"https:\\/\\/ftxlive.com\\/office\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":1}', 'membresia', NULL, NULL, NULL, 1, '2021-01-07 15:14:52', '2021-01-07 15:14:52'),
(15, 10121, 1, '{\"idmembresia\":2,\"nombre\":\"Hacer\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/ftxlive.com\\/office\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":1}', 'membresia', NULL, NULL, '20210107172712', 1, '2021-01-07 15:27:12', '2021-01-07 15:27:12'),
(16, 10121, 1, '{\"idmembresia\":2,\"nombre\":\"Hacer\",\"precio\":1,\"tipo\":\"Anual\",\"img\":\"https:\\/\\/ftxlive.com\\/office\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":1}', 'membresia', NULL, NULL, '20210107173004', 1, '2021-01-07 15:30:04', '2021-01-07 15:30:04'),
(17, 10121, 1, '{\"idmembresia\":2,\"nombre\":\"Hacer\",\"precio\":1,\"tipo\":\"Anual\",\"img\":\"https:\\/\\/ftxlive.com\\/office\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":1}', 'membresia', 'tok_1I776ZFKU1xhP2bFxm8Lt9bR', NULL, NULL, 1, '2021-01-07 15:37:25', '2021-01-07 15:37:25'),
(18, 10121, 1, '{\"idmembresia\":3,\"nombre\":\"Tener\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/ftxlive.com\\/office\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":1}', 'membresia', NULL, NULL, NULL, 1, '2021-01-07 15:47:49', '2021-01-07 15:47:49'),
(19, 10121, 1, '{\"idmembresia\":3,\"nombre\":\"Tener\",\"precio\":1,\"tipo\":\"Anual\",\"img\":\"https:\\/\\/ftxlive.com\\/office\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":1}', 'membresia', NULL, NULL, '20210107174850', 1, '2021-01-07 15:48:50', '2021-01-07 15:48:50'),
(20, 10121, 1, '{\"idmembresia\":3,\"nombre\":\"Tener\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/ftxlive.com\\/office\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":1}', 'membresia', NULL, NULL, NULL, 1, '2021-01-07 15:50:21', '2021-01-07 15:50:21'),
(21, 10121, 1, '{\"idmembresia\":3,\"nombre\":\"Tener\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/ftxlive.com\\/office\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":1}', 'membresia', NULL, NULL, '20210108143727', 1, '2021-01-08 12:37:27', '2021-01-08 12:37:27'),
(22, 10121, 1, '{\"idmembresia\":4,\"nombre\":\"Trascender\",\"precio\":1,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/ftxlive.com\\/office\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":1}', 'membresia', NULL, NULL, NULL, 1, '2021-01-08 12:40:32', '2021-01-08 12:40:32'),
(23, 10121, 1, '{\"idmembresia\":4,\"nombre\":\"Trascender\",\"precio\":1,\"tipo\":\"Anual\",\"img\":\"https:\\/\\/ftxlive.com\\/office\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":1}', 'membresia', NULL, NULL, '20210108144132', 1, '2021-01-08 12:41:32', '2021-01-08 12:41:32'),
(24, 10121, 1, '{\"idmembresia\":1,\"nombre\":\"Ser\",\"precio\":1,\"tipo\":\"Anual\",\"img\":\"https:\\/\\/ftxlive.com\\/office\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":1}', 'membresia', NULL, NULL, NULL, 1, '2021-01-08 12:42:34', '2021-01-08 12:42:34'),
(25, 10121, 1, '{\"idmembresia\":4,\"nombre\":\"Trascender\",\"precio\":1,\"tipo\":\"Anual\",\"img\":\"https:\\/\\/ftxlive.com\\/office\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":1}', 'membresia', NULL, NULL, NULL, 1, '2021-01-12 13:45:46', '2021-01-12 13:45:46'),
(26, 10099, 12, '{\"idmembresia\":2,\"nombre\":\"do\",\"precio\":12,\"tipo\":\"\",\"img\":\"https:\\/\\/ftxlive.com\\/office\\/uploads\\/images\\/offers\\/offer_11_1610485352.png\",\"links\":10098}', 'oferta', NULL, NULL, NULL, 0, '2021-01-12 14:21:08', '2021-01-12 14:21:08'),
(27, 10099, 12, '{\"idmembresia\":2,\"nombre\":\"do\",\"precio\":12,\"tipo\":\"\",\"img\":\"https:\\/\\/ftxlive.com\\/office\\/uploads\\/images\\/offers\\/offer_11_1610485352.png\",\"links\":10098}', 'oferta', NULL, NULL, '20210112162148', 0, '2021-01-12 14:21:48', '2021-01-12 14:21:48'),
(28, 10099, 12, '{\"idmembresia\":2,\"nombre\":\"do\",\"precio\":12,\"tipo\":\"\",\"img\":\"https:\\/\\/ftxlive.com\\/office\\/uploads\\/images\\/offers\\/offer_11_1610485352.png\",\"links\":10098}', 'oferta', NULL, NULL, '20210112162259', 0, '2021-01-12 14:22:59', '2021-01-12 14:22:59'),
(29, 10127, 9.99, '{\"idmembresia\":1,\"nombre\":\"Ver\",\"precio\":9.9900000000000002131628207280300557613372802734375,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/ftxlive.com\\/office\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":1}', 'membresia', NULL, NULL, NULL, 1, '2021-01-15 11:09:48', '2021-01-15 11:09:48'),
(30, 10129, 9.99, '{\"idmembresia\":1,\"nombre\":\"Ver\",\"precio\":9.9900000000000002131628207280300557613372802734375,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/ftxlive.com\\/office\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":1}', 'membresia', NULL, NULL, NULL, 1, '2021-01-15 11:09:54', '2021-01-15 11:09:54'),
(31, 10128, 9.99, '{\"idmembresia\":1,\"nombre\":\"Ver\",\"precio\":9.9900000000000002131628207280300557613372802734375,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/ftxlive.com\\/office\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":1}', 'membresia', NULL, NULL, NULL, 1, '2021-01-15 11:09:54', '2021-01-15 11:09:54'),
(32, 10128, 100, '{\"idmembresia\":3,\"nombre\":\"Equipo tecnico\",\"precio\":100,\"tipo\":\"\",\"img\":\"https:\\/\\/ftxlive.com\\/office\\/uploads\\/images\\/offers\\/offer_19_1610734903.jpg\",\"links\":1}', 'oferta', NULL, NULL, NULL, 1, '2021-01-15 11:22:28', '2021-01-15 11:22:28'),
(33, 10127, 5, '{\"idmembresia\":6,\"nombre\":\"Equipo1\",\"precio\":5,\"tipo\":\"\",\"img\":\"https:\\/\\/ftxlive.com\\/office\\/uploads\\/images\\/offers\\/offer_22_1610807692.png\",\"links\":1}', 'oferta', NULL, NULL, NULL, 1, '2021-01-16 07:36:40', '2021-01-16 07:36:40'),
(34, 10127, 2, '{\"idmembresia\":7,\"nombre\":\"Equipo 3\",\"precio\":2,\"tipo\":\"\",\"img\":\"https:\\/\\/ftxlive.com\\/office\\/uploads\\/images\\/offers\\/offer_23_1610808350.png\",\"links\":1}', 'oferta', NULL, NULL, NULL, 1, '2021-01-16 07:46:09', '2021-01-16 07:46:09'),
(35, 10127, 5, '{\"idmembresia\":8,\"nombre\":\"Especial\",\"precio\":5,\"tipo\":\"\",\"img\":\"https:\\/\\/ftxlive.com\\/office\\/uploads\\/images\\/offers\\/offer_25_1610811857.png\",\"links\":1}', 'oferta', NULL, NULL, NULL, 1, '2021-01-16 08:44:31', '2021-01-16 08:44:31'),
(36, 10132, 100, '{\"idmembresia\":1,\"nombre\":\"Ver\",\"precio\":100,\"tipo\":\"Anual\",\"img\":\"https:\\/\\/ftxlive.com\\/office\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":1}', 'membresia', NULL, NULL, NULL, 1, '2021-01-16 11:02:24', '2021-01-16 11:02:24'),
(37, 10129, 10, '{\"idmembresia\":10,\"nombre\":\"Oferta de Prueba\",\"precio\":10,\"tipo\":\"\",\"img\":\"https:\\/\\/ftxlive.com\\/office\\/uploads\\/images\\/offers\\/offer_27_1610822379.png\",\"links\":1}', 'oferta', NULL, NULL, NULL, 1, '2021-01-16 11:41:12', '2021-01-16 11:41:12'),
(38, 10143, 19.99, '{\"idmembresia\":2,\"nombre\":\"Dar\",\"precio\":19.989999999999998436805981327779591083526611328125,\"tipo\":\"Mensual\",\"img\":\"https:\\/\\/ftxlive.com\\/office\\/uploads\\/images\\/memberships\\/default.jpg\",\"links\":1}', 'membresia', NULL, NULL, NULL, 0, '2021-09-14 21:02:25', '2021-09-14 21:02:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `courses_tags`
--

CREATE TABLE `courses_tags` (
  `id` int NOT NULL,
  `course_id` int NOT NULL,
  `tag_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `courses_tags`
--

INSERT INTO `courses_tags` (`id`, `course_id`, `tag_id`) VALUES
(1, 1, 4),
(2, 1, 1),
(3, 1, 2),
(5, 2, 2),
(6, 3, 2),
(7, 4, 2),
(8, 5, 2),
(9, 6, 2),
(10, 7, 2),
(11, 10, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `courses_users`
--

CREATE TABLE `courses_users` (
  `id` int NOT NULL,
  `course_id` int NOT NULL,
  `user_id` int NOT NULL,
  `progress` int NOT NULL DEFAULT '0',
  `start_date` date NOT NULL,
  `finish_date` date DEFAULT NULL,
  `certificate` tinyint(1) NOT NULL DEFAULT '0',
  `favorite` int UNSIGNED DEFAULT NULL,
  `language` varchar(2) NOT NULL DEFAULT 'es',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `courses_users`
--

INSERT INTO `courses_users` (`id`, `course_id`, `user_id`, `progress`, `start_date`, `finish_date`, `certificate`, `favorite`, `language`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 1, 0, '2021-03-31', NULL, 0, 0, 'es', '2021-03-31 15:11:34', '2021-03-31 15:57:26', NULL),
(2, 4, 1, 0, '2021-03-31', NULL, 0, 0, 'es', '2021-03-31 15:12:02', '2021-03-31 15:57:26', NULL),
(3, 2, 1, 0, '2021-03-31', NULL, 0, 0, 'es', '2021-03-31 15:29:43', '2021-03-31 15:57:26', NULL),
(4, 8, 1, 0, '2021-03-31', NULL, 0, 0, 'es', '2021-03-31 15:49:35', '2021-03-31 15:57:26', NULL),
(5, 9, 1, 0, '2021-03-31', NULL, 0, 0, 'es', '2021-03-31 15:50:09', '2021-03-31 15:57:26', NULL),
(6, 10, 1, 0, '2021-03-31', NULL, 0, 0, 'es', '2021-03-31 15:50:37', '2021-03-31 15:57:26', NULL),
(7, 7, 1, 0, '2021-03-31', NULL, 0, 0, 'es', '2021-03-31 15:51:14', '2021-03-31 15:57:26', NULL),
(8, 6, 1, 0, '2021-03-31', NULL, 0, 0, 'es', '2021-03-31 15:52:05', '2021-03-31 15:57:26', NULL),
(9, 5, 1, 0, '2021-03-31', NULL, 0, 0, 'es', '2021-03-31 15:52:46', '2021-03-31 15:57:26', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `id` int NOT NULL,
  `nombre` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entradas`
--

CREATE TABLE `entradas` (
  `id` int NOT NULL,
  `titulo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `autor` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `descripcion_completa` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen_destacada` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `banner` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `entradas`
--

INSERT INTO `entradas` (`id`, `titulo`, `autor`, `descripcion`, `descripcion_completa`, `imagen_destacada`, `banner`, `created_at`, `updated_at`) VALUES
(2, 'Todos debemos tener algo de militar en nuestra vida', 'José Gordo', '<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">El escritor, conferencista internacional, exmilitar, padre y hombre de negocios utiliza la enseñanza militar en su diario andar. Aconseja incluir la disciplina en todas las acciones.</span></span></span></em></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>', '<p>Mucha gente dice: &lsquo;tengo miedo a fracasar, a comenzar un negocio, a cambiar de empleo, a terminar una relaci&oacute;n&hellip; ante esto respondo:</p>\r\n\r\n<blockquote>\r\n<p>El miedo no existe, nadie nace con miedo. Es un pensamiento forjado por lo que nos transmite la sociedad.</p>\r\n</blockquote>\r\n\r\n<p>Resalta Jos&eacute; Gordo. Escritor, coach, conferencista internacional, exmilitar, padre, hombre de negocios, amante de la actitud positiva del ser humano y estudioso de ello. Asegura que, en lugar de miedo, la humanidad sufre inseguridades, siendo el hombre quien cobija, a mayor escala, este sentir.</p>\r\n\r\n<p>El hombre es un ser totalmente imperfecto y por eso tiene muchas inseguridades; cuando la mujer es perfecta y a la vez complicada&rsquo;. M&aacute;s de mil libros le&iacute;dos, su pluma, como forjador de Los 12 regalos de pap&aacute; , Cenado con millonario y De una vida tr&aacute;gica a una vida m&aacute;gica le acreditan para valorar la literatura en una sociedad en constante movimiento.</p>\r\n\r\n<blockquote>\r\n<p>Las letras te abren los ojos al mundo, a la realidad y a la actualidad.&nbsp;Jose Gordo</p>\r\n</blockquote>\r\n\r\n<p>Nacido en Barcelona, Espa&ntilde;a, con un especial amor por Panam&aacute;, es miembro activo de la ICF (Internacional Coach Federation). Ha organizado seminarios y entrenamientos como la gira &lsquo;Millionaire Mentorship&rsquo; con la que ense&ntilde;a liderazgo y toma de decisiones para convertirse en un millonario, en Am&eacute;rica y Europa. Se considera una persona solidaria con aquellos que experimentan dificultades, especialmente los ni&ntilde;os. Por ello, participa en campa&ntilde;as ben&eacute;ficas, organiza eventos de concienciaci&oacute;n y colaboraci&oacute;n, contribuyendo con material escolar, medicinas y juguetes a escuelas y ni&ntilde;os en varios pa&iacute;ses, incluido Panam&aacute;.</p>\r\n\r\n<h3><strong><span style=\"color:#2980b9\">&iquest;Qu&eacute; lugar ocupa la infancia en una sociedad dominada por la inmediatez?</span></strong></h3>\r\n\r\n<p>La infancia lo es todo. Los ni&ntilde;os necesitan de nosotros. Son maravillosos, no tienen maldad, no nacen con defectos. Vienen con la idea de crear, de ser astronautas, bomberos, cient&iacute;ficos; de descubrir la Luna&hellip; Nacen con muchos sue&ntilde;os, no tienen l&iacute;mites. Es injusto que nosotros, los adultos, la mayor&iacute;a, y no te hablo de gobiernos, la responsabilidad no es no de ellos; acabemos o no trabajemos a favor de esos sue&ntilde;os. Es necesario que le demos todo lo que tenemos para que sigan creyendo que pueden ser todo lo que quieran ser. Tengo una fundaci&oacute;n privada, pero trabajo con varios comedores sociales y albergues juveniles aqu&iacute; en Panam&aacute; y en otros pa&iacute;ses.</p>\r\n\r\n<h3><span style=\"color:#2980b9\"><strong>&iquest;Se considera un mentor?</strong></span></h3>\r\n\r\n<p>Esa es una palabra muy grande. Ser padre es ser mentor, al final todos somos mentores; una madre, un padre, los abuelos, un t&iacute;o, alguien que puede aportar a otra persona informaci&oacute;n valiosa y, sobre todo, valores para la vida, para andar en el mundo. Creo que tengo habilidades muy arraigadas que he practicado durante mucho tiempo y eso me ha ayudado a ser un buen comunicador, una persona que trasmite mucha energ&iacute;a, pasi&oacute;n e informaci&oacute;n. Tuve la fortuna de leer mucho, he le&iacute;do m&aacute;s de mil libros, tengo mucho material en mi biblioteca. Me he entrenado con grandes, gente que ha impactado mucho mi vida, gente con gran experiencia en el mercado y eso me ha ayudado a aportar a la sociedad. S&iacute;, me considero un mentor.</p>\r\n\r\n<h3><span style=\"color:#2980b9\"><strong>&iquest;Qu&eacute; ense&ntilde;anza le dej&oacute; sus d&iacute;as como militar?</strong></span></h3>\r\n\r\n<p>La principal, la que intento aplicar a todas las personas cercanas a m&iacute;, es el honor. Tambi&eacute;n la disciplina y la honestidad.</p>\r\n\r\n<h3><strong><span style=\"color:#2980b9\">&iquest;Qu&eacute; debemos tener de militar en nuestras vidas?</span></strong></h3>\r\n\r\n<blockquote>\r\n<p>Ser una persona de honor te llevar&aacute; por el camino correcto. No te dar&aacute; la opci&oacute;n de fallarle a nadie, en cierta medida, ni de sentirte mal contigo mismo. Luego la disciplina; sin disciplina, hoy no podemos ir a ning&uacute;n lado, es imposible</p>\r\n</blockquote>\r\n\r\n<p>Todos debemos tener algo de militar en nuestra vida, como m&iacute;nimo el factor del honor. Ser una persona de honor te llevar&aacute; por el camino correcto. No te dar&aacute; la opci&oacute;n de fallarle a nadie, en cierta medida, ni de sentirte mal contigo mismo. Luego la disciplina. Sin disciplina hoy no podemos ir a ning&uacute;n lado, es imposible.</p>\r\n\r\n<h3><span style=\"color:#2980b9\"><strong>&iquest;C&oacute;mo transmitir esto a las nuevas generaciones?</strong></span></h3>\r\n\r\n<p>Todos debemos tener algo de militar en nuestra vida, como m&iacute;nimo el factor del honor. Ser una persona de honor te llevar&aacute; por el camino correcto. No te dar&aacute; la opci&oacute;n de fallarle a nadie, en cierta medida, ni de sentirte mal contigo mismo. Luego la disciplina. Sin disciplina hoy no podemos ir a ning&uacute;n lado, es imposible.</p>\r\n\r\n<p>No creo que no lo tengan. Somos nosotros los que no tenemos disciplina, al final ellos hacen lo que ven. La sociedad est&aacute; entrando en una din&aacute;mica en la que nunca hay tiempo para nada: &lsquo;no puedo acompa&ntilde;arte al parque&rsquo;, &lsquo;no puedo estar contigo el fin de semana en el f&uacute;tbol&rsquo;, &lsquo;no puedo sentarme contigo a leer un libro&rsquo;, &lsquo;lo siento, hijo, pero estoy cansado&hellip;&rsquo;. Son muchos factores, los hijos se dan cuenta de esto y buscan ejemplos afuera que regularmente son err&oacute;neos.</p>\r\n\r\n<h3><span style=\"color:#2980b9\"><strong>Escritor, conferencista, empresario, exmilitar&hellip; &iquest;Qu&eacute; se requiere para ser una persona polifac&eacute;tica?</strong></span></h3>\r\n\r\n<p>Todos nacemos con esa habilidad. Tenemos muchas facetas, lo que pasa es que mucha gente toma la decisi&oacute;n de quedarse en una, estancarse en ella y all&iacute; entra la conformidad. La gente se limita muchas veces. Evidentemente, a nivel de profesi&oacute;n estamos especializ&aacute;ndonos, por ejemplo, hoy un abogado no abarca diferentes temas sino que se especializa en un aspecto para ser muy bueno en lo que hace, pero luego podr&aacute; ser escritor, conferencista, deportista&hellip; hoy no hay esos l&iacute;mites que ten&iacute;amos antiguamente. Quien no logra lo que quiere, es porque no quiere lograrlo.</p>\r\n\r\n<p>Voy a leer una de sus frases para que me d&eacute; su argumento:</p>\r\n\r\n<blockquote>\r\n<p>Cualquier cosa que la mente del hombre puede concebir y creer puede conseguir&hellip;</p>\r\n</blockquote>\r\n\r\n<p>Creo mucho en la ley de la atracci&oacute;n. La gente hoy tiene miedo a pedir y a dar a la vez, a la gente, cuando quiere algo, le cuesta pedirlo. Todo lo que tu mente piensa, lo puede planificar con un deseo ardiente. Debemos obsesionarnos con lo que queremos y lo lograremos. La gente dice:</p>\r\n\r\n<blockquote>\r\n<p>Obsesionarse no es bueno, no es bueno obsesionarse por la droga, el juego, el sexo; pero por tus metas, objetivos, familias, por el amor de tu vida es lo mejor que te puede pasar</p>\r\n</blockquote>\r\n\r\n<p>Por all&iacute; es que va esa frase, obsesi&oacute;nate por lo que quieres en la vida y llegar&aacute;, porque la ley de la atracci&oacute;n funciona.</p>\r\n\r\n<h3><span style=\"color:#2980b9\"><strong>&iquest;Cu&aacute;l es su filosof&iacute;a de vida?</strong></span></h3>\r\n\r\n<p>Simple, humildad basada en el amor y las energ&iacute;as.</p>\r\n\r\n<p>Ri&ntilde;e o es amigable con un ser supremo</p>\r\n\r\n<p>Es amigable. En cierta medida, soy un firme creyente, aunque no sea devoto de ninguna religi&oacute;n. He tenido la fortuna de leer el Cor&aacute;n y la Biblia. He estado con gente que trasmite energ&iacute;a, me he sentido muy cercano al hinduismo y al budismo. He visitado la Iglesia cat&oacute;lica. Al descubrir tantas religiones y entrar en su mundo, he comprendido que al final todo se trata de lo mismo, de un ser supremo que vela por nosotros. Lo ideal es ser firme en las creencias de uno mismo y no dejarse influenciar de otras personas. Para llenar la parte espiritual, lo primero que hay que hacer es aclarar lo que se siente y quiere, saber c&oacute;mo voy a nutrir la parte interior, si creo que existe Dios, si creo en la religi&oacute;n cristiana, budista, hind&uacute;&hellip;</p>\r\n\r\n<h3><strong><span style=\"color:#2980b9\">&iquest;Qu&eacute; le ha dado Gordo a Panam&aacute;?</span></strong></h3>\r\n\r\n<p>Creo, porque no soy yo quien lo tiene que decir, que le he dado empleo a muchas personas, he aportado felicidad, alegr&iacute;a y una actitud diferente de la vida enfocada en que todo se puede. Adem&aacute;s, pago mis impuestos ( risas ). Creo firmemente que cuando vives en un pa&iacute;s perteneces a ese pa&iacute;s, aunque no seas de all&iacute;. Intento ser un buen ciudadano y ayudar con lo puedo. Quiero aportar a la sociedad no solo con el pago de mis impuestos y con las compa&ntilde;&iacute;as que tengo, sino tambi&eacute;n utilizar mis habilidades en lo que soy bueno, trasmitiendo a la gente buena energ&iacute;a.</p>\r\n\r\n<h3><span style=\"color:#2980b9\"><strong>&iquest;Y qu&eacute; le ha dado Panam&aacute; a Gordo?</strong></span></h3>\r\n\r\n<p>Me ha ayudado a ser m&aacute;s paciente, Me siento como en casa. Me ha ayudado mucho a bajarme de la nube. Amo Panam&aacute;.</p>', 'entrada_1615223710.jpg', 'banner_entrada_1615223710.jpg', '2021-03-08 10:15:10', '2021-03-08 10:15:10'),
(3, 'Padre Rico, Padre Pobre', 'Tania Tostado', '<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">La verdadera raz&oacute;n para comenzar un negocio, es que usted se convierta en un gran hombre de negocios.</span></span></span></em></span></span></span></p>', '<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">La verdadera raz&oacute;n para comenzar un negocio, es que usted se convierta en un gran hombre de negocios.</span></span></span></em></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><em>&nbsp;</em></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">Los grandes productos se encuentran por todas partes. Pero los grandes hombres de negocios son escasos y ricos.&nbsp;</span></span></span></em></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">Padre rico padre pobre es por mucho el libro de finanzas personales m&aacute;s conocido y difundido de los &uacute;ltimos a&ntilde;os, Robert Kiyosaki fue best seller con esta publicaci&oacute;n durante a&ntilde;os, hoy d&iacute;a sigue siendo un libro muy vendido, m&aacute;s all&aacute; de la calidad literaria o de la simpleza que muchas personas piensan que tiene, sin duda Padre rico padre pobre fue un parteaguas en la sociedad con respecto de la auto educaci&oacute;n financiera.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">El resumen general es el siguiente: Robert narra haber visto el ejemplo de dos tipos de padre.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">Su padre biol&oacute;gico quien era un hombre tradicional que apostaba por la educaci&oacute;n acad&eacute;mica formal, ingresar a un trabajo seguro en el cual escalar posiciones, permanecer durante a&ntilde;os en la misma compa&ntilde;&iacute;a, tomar una hipoteca para comprar una casa etc., </span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">Por otro lado conoci&oacute; al padre de uno de sus mejores amigos quien era un hombre visionario, alejado de los estereotipos, inversionista arriesgado con visi&oacute;n a largo plazo, y de &eacute;l aprendi&oacute; todos los conceptos b&aacute;sicos bajo los cuales se rigen los hombres m&aacute;s exitosos del mundo. </span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">Con el tiempo &eacute;l ve como su padre biol&oacute;gico se estanca en sus propias tradiciones mientras que el padre rico va haciendo cada vez m&aacute;s fortuna.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">Dentro de su relato Kiyosaki nos introduce a conceptos que marcaron una tendencia&nbsp;en la sociedad, antes de la publicaci&oacute;n de este libro pocas personas hablaban de:</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">lujo del dinero, </span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">ingresos residuales, </span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">gasto e inversi&oacute;n, </span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">Entre otros valisos conceptos.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">Y de todo esto lo que considero m&aacute;s valioso, es el auto examen que nos invita a hacer con lo que llama &ldquo;El cuadrante del flujo del dinero&rdquo; se trata b&aacute;sicamente de ubicar la fuente de la cual provienen tus ingresos para de esta forma saber hacia d&oacute;nde debes dirigirte para tener paz financiera.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\"><img alt=\"\" src=\"https://ftxlive.com/office/images/art1-tania_1614882842.jpg\" style=\"height:365px; width:565px\" /></span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">Por &uacute;ltimo el libro deja tambi&eacute;n frases poderosas sobre empoderamiento financiero que se fueron convirtiendo en mantras para muchas personas que gustaron de la filosof&iacute;a del autor, les comparto algunas de ellas:</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">1.&nbsp;Los perdedores evitan el fracaso, y el fracaso convierte a los perdedores en ganadores.</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">2.&nbsp;La verdadera raz&oacute;n para comenzar un negocio es que usted se convierta en un gran hombre de negocios. Los grandes productos se encuentran por todas partes. Pero los grandes hombres de negocios son escasos y ricos.</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">3. Hay una diferencia entre ser pobre y estar quebrado. Uno puede estar quebrado temporalmente, uno es pobre eternamente.</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">4.&nbsp;Uno (se refiere a sus padres) me ense&ntilde;&oacute; a escribir una excelente hoja de vida para conseguir empleo, y el otro a armar un plan de negocios que genere empleos.</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">5. Lo importante no es lo que uno sabe, sino que tan r&aacute;pido aprende.</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#444444\">6. La inteligencia financiera consiste simplemente en tener m&aacute;s opciones</span></span></span></p>', 'entrada_1614882886.jpg', 'banner_entrada_1614882886.jpg', '2021-03-04 11:34:46', '2021-03-04 11:34:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluations`
--

CREATE TABLE `evaluations` (
  `id` int NOT NULL,
  `course_id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluations_users`
--

CREATE TABLE `evaluations_users` (
  `id` int NOT NULL,
  `evaluation_id` int NOT NULL,
  `user_id` int NOT NULL,
  `score` double NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluations_users_answers`
--

CREATE TABLE `evaluations_users_answers` (
  `id` int NOT NULL,
  `evaluation_user_id` int NOT NULL COMMENT 'Id de la tabla evaluations_users',
  `question_id` int NOT NULL,
  `selected_answer` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `events`
--

CREATE TABLE `events` (
  `id` int NOT NULL,
  `uuid` varchar(40) NOT NULL,
  `user_id` int DEFAULT NULL,
  `category_id` int NOT NULL,
  `subcategory_id` int UNSIGNED NOT NULL DEFAULT '1',
  `streaming_type` varchar(30) NOT NULL DEFAULT 'Webinar',
  `title` varchar(255) NOT NULL,
  `description` text,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `duration` int NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '0 = No Disponible. 1 = Disponible',
  `correos` int NOT NULL DEFAULT '0' COMMENT '0 - no se a enviado correos 1 - se envio correo 1 hora nates de empezar 2 - se envio correo al iniciar',
  `type` varchar(100) DEFAULT NULL,
  `url_streaming` varchar(255) DEFAULT NULL,
  `url_video` varchar(255) DEFAULT NULL,
  `miniatura` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `events`
--

INSERT INTO `events` (`id`, `uuid`, `user_id`, `category_id`, `subcategory_id`, `streaming_type`, `title`, `description`, `date`, `time`, `duration`, `image`, `status`, `correos`, `type`, `url_streaming`, `url_video`, `miniatura`, `created_at`, `updated_at`) VALUES
(53, 'ec9eb1d9-674c-4983-b086-b50bcbc72125', 10130, 1, 2, 'webinar', 'evento test', '<p>adsfgdhmvbn,bm,ghfdfdasgdhmn, werrshteshfesgfes</p>', '2021-04-19', '00:42:00', 30, '53.png', '2', 0, NULL, 'https://streaming.ftxlive.com/app/live/meetings/ec9eb1d9-674c-4983-b086-b50bcbc72125', NULL, '53.png', '2021-04-18 16:36:13', '2021-04-18 16:52:01'),
(54, '82c5b453-2db3-4ace-9e30-b6af0f99afda', 10130, 2, 2, 'webinar', 'Test DE EVENTO', '<p>dsafsgdhjvhm,vgfeqwdfrtghfjghgdfghggmnhbmngmfngh</p>', '2021-04-19', '01:59:00', 30, '54.png', '2', 0, NULL, 'https://streaming.ftxlive.com/app/live/meetings/82c5b453-2db3-4ace-9e30-b6af0f99afda', NULL, '54.png', '2021-04-18 16:53:10', '2021-04-18 16:55:32'),
(55, '32b4c08b-7dc1-4dbf-9f80-bb4c0a12e80b', 10098, 1, 2, 'webinar', 'Test DE EVENTO', '<p>wersdtfhgjhkjlkhjfdthrsgdtytuyiuohipjp&iacute;&ntilde;lkjhrgrstrdyuhkjlkhyjterw</p>', '2021-04-19', '14:12:00', 30, '55.png', '0', 0, NULL, 'https://streaming.ftxlive.com/app/live/meetings/32b4c08b-7dc1-4dbf-9f80-bb4c0a12e80b', NULL, '55.png', '2021-04-18 16:56:24', '2021-04-19 17:00:02'),
(56, 'e770912f-4d93-4e43-8a82-6639c40fa5ef', 10136, 3, 2, 'video_conference', 'PRUEBA DOMINGUERA CON DOUG FTX', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '2021-04-18', '01:58:00', 30, '56.jpg', '2', 0, NULL, 'https://streaming.ftxlive.com/app/live/meetings/e770912f-4d93-4e43-8a82-6639c40fa5ef', NULL, '56.jpg', '2021-04-18 16:59:40', '2021-04-18 17:26:12'),
(57, '03b01031-2f22-41bd-a658-dce5ccd6d99c', 10136, 3, 2, 'webinar', 'PRUEBA DOMINGUERA CON DOUG FTX 2', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '2021-04-18', '02:30:00', 30, '57.png', '0', 0, NULL, 'https://streaming.ftxlive.com/app/live/meetings/03b01031-2f22-41bd-a658-dce5ccd6d99c', NULL, '57.png', '2021-04-18 17:27:22', '2021-04-18 18:00:02'),
(58, '9805e3f5-e95d-4ea4-86e7-c992f6a12d91', 10136, 6, 2, 'video_conference', 'Streaming revisión plataformas', '<p>Validaci&oacute;n plataformas streaming ftxlive, mbapro, mytrading, revisi&oacute;n completa</p>', '2021-04-21', '00:40:00', 60, '58.png', '0', 0, NULL, 'https://streaming.ftxlive.com/app/live/meetings/9805e3f5-e95d-4ea4-86e7-c992f6a12d91', NULL, '58.png', '2021-04-20 16:35:02', '2021-04-21 03:00:02'),
(59, 'f14b6f05-e180-4b83-8665-1447783d47a1', 10136, 6, 2, 'video_conference', 'Streaming Sinergy Team Demo', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2021-04-21', '14:59:00', 30, '59.png', '0', 0, NULL, 'https://streaming.ftxlive.com/app/live/meetings/f14b6f05-e180-4b83-8665-1447783d47a1', NULL, '59.png', '2021-04-21 06:55:31', '2021-04-21 17:00:03'),
(60, '851d5045-7a09-4ce0-a31f-455fc3e5e67a', 10136, 7, 2, 'video_conference', 'Streaming Demo FTXLive', '<p>Evento para validar&nbsp; Streaming de FTXLive, MBAPro, MTAPRO junto a Noemy y Douglas</p>', '2021-04-21', '17:30:00', 45, '60.png', '0', 0, NULL, 'https://streaming.ftxlive.com/app/live/meetings/851d5045-7a09-4ce0-a31f-455fc3e5e67a', NULL, '60.png', '2021-04-21 08:45:19', '2021-04-21 20:00:02'),
(61, '132254d8-d239-43a6-9f77-b1e82b9897f9', 10098, 10, 2, 'webinar', 'Evento de Soporte Técnico', '<p>Este es un evento para uso de pruebas del equipo de desarrollo para incluir las mejoras y correcciones</p>', '2021-04-23', '14:00:00', 45, '61.png', '0', 0, NULL, 'https://streaming.ftxlive.com/app/live/meetings/132254d8-d239-43a6-9f77-b1e82b9897f9', NULL, '61.jpg', '2021-04-23 05:58:58', '2021-04-23 16:00:02'),
(62, 'b5f80f22-7b00-47da-909c-47ce7ec739f3', 10136, 2, 2, 'webinar', 'Evento de prueba septiembre 17', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2021-09-19', '16:00:00', 90, '62.png', '0', 0, NULL, 'https://streaming.ftxlive.com/app/live/meetings/b5f80f22-7b00-47da-909c-47ce7ec739f3', NULL, '62.png', '2021-09-17 22:52:26', '2021-09-20 02:00:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `events_users`
--

CREATE TABLE `events_users` (
  `id` int NOT NULL,
  `event_id` int NOT NULL,
  `user_id` int NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `favorite` int UNSIGNED DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `events_users`
--

INSERT INTO `events_users` (`id`, `event_id`, `user_id`, `date`, `time`, `favorite`, `created_at`, `updated_at`) VALUES
(1, 53, 10130, '2021-04-19', '00:42:00', NULL, '2021-04-18 19:36:13', '2021-04-18 19:36:13'),
(2, 54, 10130, '2021-04-19', '01:59:00', NULL, '2021-04-18 19:53:10', '2021-04-18 19:53:10'),
(3, 55, 10098, '2021-04-19', '14:12:00', NULL, '2021-04-18 19:56:24', '2021-04-18 19:56:24'),
(4, 56, 10136, '2021-04-18', '01:58:00', NULL, '2021-04-18 19:59:40', '2021-04-18 20:04:41'),
(5, 57, 10136, '2021-04-18', '02:30:00', NULL, '2021-04-18 20:27:22', '2021-04-18 20:27:22'),
(6, 58, 10136, '2021-04-21', '00:40:00', NULL, '2021-04-20 19:35:02', '2021-04-20 19:35:02'),
(7, 59, 10136, '2021-04-21', '14:59:00', NULL, '2021-04-21 09:55:31', '2021-04-21 09:55:31'),
(8, 59, 10137, '2021-04-21', '14:59:00', NULL, '2021-04-21 09:56:28', '2021-04-21 09:56:28'),
(9, 59, 10138, '2021-04-21', '14:59:00', NULL, '2021-04-21 09:57:13', '2021-04-21 09:57:13'),
(10, 59, 10139, '2021-04-21', '14:59:00', NULL, '2021-04-21 10:15:59', '2021-04-21 10:15:59'),
(11, 60, 10136, '2021-04-21', '17:30:00', NULL, '2021-04-21 11:45:19', '2021-04-21 11:45:19'),
(12, 60, 10139, '2021-04-21', '17:30:00', NULL, '2021-04-21 11:47:40', '2021-04-21 11:47:40'),
(13, 60, 10137, '2021-04-21', '17:30:00', NULL, '2021-04-21 12:35:51', '2021-04-21 12:35:51'),
(14, 60, 10138, '2021-04-21', '17:30:00', NULL, '2021-04-21 12:55:06', '2021-04-21 12:55:06'),
(15, 61, 10098, '2021-04-23', '14:00:00', NULL, '2021-04-23 08:58:58', '2021-04-23 08:58:58'),
(16, 61, 10099, '2021-04-23', '14:00:00', NULL, '2021-04-23 09:38:05', '2021-04-23 09:38:05'),
(17, 62, 10136, '2021-09-19', '16:00:00', NULL, '2021-09-17 17:52:26', '2021-09-17 17:52:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `event_content`
--

CREATE TABLE `event_content` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `event_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `event_content`
--

INSERT INTO `event_content` (`id`, `title`, `type`, `url`, `event_id`, `created_at`, `updated_at`) VALUES
(1, 'null', 'survey', NULL, 60, '2021-04-21 15:30:16', '2021-04-21 15:30:16'),
(2, 'null', 'video', 'https://www.youtube.com/embed/ZrUrwUwSHR0', 60, '2021-04-21 15:33:16', '2021-04-21 15:33:16'),
(3, 'ProxySeller-20210209.txt', 'file', 'file_60_1619030062.txt', 60, '2021-04-21 15:34:22', '2021-04-21 15:34:22'),
(4, 'Promo Lanzamiento Membresia Fundador', 'oferta', 'offer_60_1619030101.png', 60, '2021-04-21 15:35:01', '2021-04-21 15:35:01'),
(5, 'Como Realizar Publicaciones en el Blog.pdf', 'presentation', 'presentation_60_1619030229.pdf', 60, '2021-04-21 15:37:09', '2021-04-21 15:37:09'),
(11, 'null', 'survey', NULL, 61, '2021-04-23 12:01:12', '2021-04-23 12:01:12'),
(12, 'beyond-academy-150x150.png', 'presentation', 'presentation_61_1619190301.png', 61, '2021-04-23 12:05:01', '2021-04-23 12:05:01'),
(13, 'null', 'video', 'https://www.youtube.com/embed/6zv3e4DAS0E', 61, '2021-04-23 12:23:59', '2021-04-23 12:23:59'),
(14, 'beyond-academy-150x150.png', 'file', 'file_61_1619191470.png', 61, '2021-04-23 12:24:30', '2021-04-23 12:24:30'),
(15, 'Oferta 1', 'oferta', 'offer_61_1619191492.png', 61, '2021-04-23 12:24:52', '2021-04-23 12:24:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `event_countries`
--

CREATE TABLE `event_countries` (
  `id` int NOT NULL,
  `event_id` int NOT NULL,
  `country_id` int NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `event_countries`
--

INSERT INTO `event_countries` (`id`, `event_id`, `country_id`, `date`, `time`) VALUES
(1, 53, 140, '2021-04-18', '21:42:00'),
(2, 53, 167, '2021-04-18', '19:42:00'),
(3, 54, 140, '2021-04-18', '22:59:00'),
(4, 54, 167, '2021-04-18', '20:59:00'),
(5, 55, 140, '2021-04-19', '11:12:00'),
(6, 55, 167, '2021-04-19', '09:12:00'),
(7, 56, 140, '2021-04-18', '22:58:00'),
(8, 56, 167, '2021-04-18', '20:58:00'),
(9, 57, 140, '2021-04-17', '23:30:00'),
(10, 57, 167, '2021-04-17', '21:30:00'),
(11, 58, 1, '2021-04-20', '18:40:00'),
(12, 58, 12, '2021-04-20', '21:40:00'),
(13, 58, 44, '2021-04-20', '21:40:00'),
(14, 58, 48, '2021-04-20', '19:40:00'),
(15, 58, 52, '2021-04-20', '18:40:00'),
(16, 58, 62, '2021-04-20', '19:40:00'),
(17, 58, 140, '2021-04-20', '21:40:00'),
(18, 58, 167, '2021-04-20', '19:40:00'),
(19, 58, 170, '2021-04-20', '19:40:00'),
(20, 58, 199, '2021-04-21', '02:40:00'),
(21, 58, 232, '2021-04-20', '20:40:00'),
(22, 59, 1, '2021-04-21', '08:59:00'),
(23, 59, 12, '2021-04-21', '11:59:00'),
(24, 59, 44, '2021-04-21', '11:59:00'),
(25, 59, 48, '2021-04-21', '09:59:00'),
(26, 59, 52, '2021-04-21', '08:59:00'),
(27, 59, 62, '2021-04-21', '09:59:00'),
(28, 59, 140, '2021-04-21', '11:59:00'),
(29, 59, 167, '2021-04-21', '09:59:00'),
(30, 59, 170, '2021-04-21', '09:59:00'),
(31, 59, 199, '2021-04-21', '16:59:00'),
(32, 59, 232, '2021-04-21', '10:59:00'),
(33, 60, 1, '2021-04-21', '11:30:00'),
(34, 60, 12, '2021-04-21', '14:30:00'),
(35, 60, 44, '2021-04-21', '14:30:00'),
(36, 60, 48, '2021-04-21', '12:30:00'),
(37, 60, 52, '2021-04-21', '11:30:00'),
(38, 60, 62, '2021-04-21', '12:30:00'),
(39, 60, 140, '2021-04-21', '14:30:00'),
(40, 60, 167, '2021-04-21', '12:30:00'),
(41, 60, 170, '2021-04-21', '12:30:00'),
(42, 60, 199, '2021-04-21', '19:30:00'),
(43, 60, 232, '2021-04-21', '13:30:00'),
(44, 61, 232, '2021-04-23', '10:00:00'),
(45, 62, 1, '2021-09-19', '10:00:00'),
(46, 62, 12, '2021-09-19', '13:00:00'),
(47, 62, 44, '2021-09-19', '13:00:00'),
(48, 62, 48, '2021-09-19', '11:00:00'),
(49, 62, 52, '2021-09-19', '10:00:00'),
(50, 62, 62, '2021-09-19', '11:00:00'),
(51, 62, 140, '2021-09-19', '13:00:00'),
(52, 62, 167, '2021-09-19', '11:00:00'),
(53, 62, 170, '2021-09-19', '11:00:00'),
(54, 62, 199, '2021-09-19', '18:00:00'),
(55, 62, 232, '2021-09-19', '12:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `event_resources`
--

CREATE TABLE `event_resources` (
  `id` int NOT NULL,
  `resources_id` int NOT NULL,
  `event_id` int NOT NULL,
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `event_resources`
--

INSERT INTO `event_resources` (`id`, `resources_id`, `event_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 53, '1', '2021-04-18 19:36:13', '2021-04-18 19:36:13'),
(2, 2, 53, '1', '2021-04-18 19:36:13', '2021-04-18 19:36:13'),
(3, 3, 53, '1', '2021-04-18 19:36:13', '2021-04-18 19:36:13'),
(4, 1, 54, '1', '2021-04-18 19:53:10', '2021-04-18 19:53:10'),
(5, 2, 54, '1', '2021-04-18 19:53:10', '2021-04-18 19:53:10'),
(6, 3, 54, '1', '2021-04-18 19:53:10', '2021-04-18 19:53:10'),
(7, 1, 55, '1', '2021-04-18 19:56:24', '2021-04-18 19:56:24'),
(8, 2, 55, '1', '2021-04-18 19:56:24', '2021-04-18 19:56:24'),
(9, 3, 55, '1', '2021-04-18 19:56:24', '2021-04-18 19:56:24'),
(10, 1, 56, '1', '2021-04-18 19:59:40', '2021-04-18 19:59:40'),
(11, 2, 56, '1', '2021-04-18 19:59:40', '2021-04-18 19:59:40'),
(12, 3, 56, '1', '2021-04-18 19:59:40', '2021-04-18 19:59:40'),
(13, 1, 57, '1', '2021-04-18 20:27:22', '2021-04-18 20:27:22'),
(14, 2, 57, '1', '2021-04-18 20:27:22', '2021-04-18 20:27:22'),
(15, 3, 57, '1', '2021-04-18 20:27:22', '2021-04-18 20:27:22'),
(16, 1, 58, '1', '2021-04-20 19:35:02', '2021-04-20 19:35:02'),
(17, 2, 58, '1', '2021-04-20 19:35:02', '2021-04-20 19:35:02'),
(18, 3, 58, '1', '2021-04-20 19:35:02', '2021-04-20 19:35:02'),
(19, 1, 59, '1', '2021-04-21 09:55:31', '2021-04-21 09:55:31'),
(20, 2, 59, '1', '2021-04-21 09:55:31', '2021-04-21 09:55:31'),
(21, 3, 59, '1', '2021-04-21 09:55:31', '2021-04-21 09:55:31'),
(22, 1, 60, '1', '2021-04-21 11:45:19', '2021-04-21 11:45:19'),
(23, 2, 60, '1', '2021-04-21 11:45:19', '2021-04-21 11:45:19'),
(24, 3, 60, '1', '2021-04-21 11:45:19', '2021-04-21 11:45:19'),
(25, 4, 60, '1', '2021-04-21 18:30:16', '2021-04-21 18:30:16'),
(26, 6, 60, '1', '2021-04-21 18:33:16', '2021-04-21 18:33:16'),
(27, 7, 60, '1', '2021-04-21 18:34:22', '2021-04-21 18:34:22'),
(28, 8, 60, '1', '2021-04-21 18:35:01', '2021-04-21 18:35:01'),
(29, 5, 60, '1', '2021-04-21 18:37:09', '2021-04-21 18:37:09'),
(30, 1, 61, '1', '2021-04-23 08:58:58', '2021-04-23 08:58:58'),
(31, 2, 61, '1', '2021-04-23 08:58:58', '2021-04-23 08:58:58'),
(32, 3, 61, '1', '2021-04-23 08:58:58', '2021-04-23 08:58:58'),
(36, 4, 61, '1', '2021-04-23 15:01:12', '2021-04-23 15:01:12'),
(37, 5, 61, '1', '2021-04-23 15:05:01', '2021-04-23 15:05:01'),
(38, 6, 61, '1', '2021-04-23 15:23:59', '2021-04-23 15:23:59'),
(39, 7, 61, '1', '2021-04-23 15:24:30', '2021-04-23 15:24:30'),
(40, 8, 61, '1', '2021-04-23 15:24:52', '2021-04-23 15:24:52'),
(41, 1, 62, '1', '2021-09-17 17:52:26', '2021-09-17 17:52:26'),
(42, 2, 62, '1', '2021-09-17 17:52:26', '2021-09-17 17:52:26'),
(43, 3, 62, '1', '2021-09-17 17:52:26', '2021-09-17 17:52:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formulario`
--

CREATE TABLE `formulario` (
  `id` int NOT NULL,
  `label` varchar(250) NOT NULL,
  `nameinput` varchar(200) NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '1',
  `requerido` tinyint(1) NOT NULL DEFAULT '0',
  `input_edad` tinyint(1) NOT NULL DEFAULT '0',
  `tipo` varchar(200) NOT NULL DEFAULT 'text',
  `min` int DEFAULT NULL,
  `max` int DEFAULT NULL,
  `desactivable` tinyint(1) NOT NULL DEFAULT '1',
  `unico` int DEFAULT NULL,
  `tip` int DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ganancias`
--

CREATE TABLE `ganancias` (
  `id` int NOT NULL,
  `configuracion` longtext,
  `tipo` varchar(250) DEFAULT NULL,
  `nota` longtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informacionbancaria`
--

CREATE TABLE `informacionbancaria` (
  `id` int NOT NULL,
  `titulo` varchar(250) DEFAULT NULL,
  `contenido` longtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insignia`
--

CREATE TABLE `insignia` (
  `id` int NOT NULL,
  `course_id` int NOT NULL,
  `course_name` varchar(40) NOT NULL,
  `nivel_id` int NOT NULL,
  `nivel_name` varchar(40) NOT NULL,
  `insignia` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insignia_user`
--

CREATE TABLE `insignia_user` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `course_id` int NOT NULL,
  `insignia_id` int NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `iva`
--

CREATE TABLE `iva` (
  `id` int NOT NULL,
  `configuracion` longtext NOT NULL,
  `tipo` varchar(250) NOT NULL,
  `tipocalculo` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `legal_clauses`
--

CREATE TABLE `legal_clauses` (
  `id` int NOT NULL,
  `legal_tab_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `clause` text NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0 = Oculto. 1 = Visible',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `legal_clauses`
--

INSERT INTO `legal_clauses` (`id`, `legal_tab_id`, `title`, `clause`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '1.- Introducción', '<p>Al convertirse en un representante de FTX Live, acepta respetar nuestro C&oacute;digo de &Eacute;tica y conducta. Gracias a estas reglas, su participaci&oacute;n en la red de FTX Live se llevar&aacute; a cabo de acuerdo con nuestros valores de equidad, moralidad e integridad.<br />\r\n<br />\r\nEste C&oacute;digo de &Eacute;tica rige el comportamiento y las relaciones de los representantes con clientes y prospectos.<br />\r\n<br />\r\nEste C&oacute;digo de &Eacute;tica es un anexo al contrato de FTX Live.<br />\r\n<br />\r\nLos representantes de FTX Live, deben cumplir con las reglas de este C&oacute;digo de &Eacute;tica en todo momento en sus tratos comerciales. Cualquier violaci&oacute;n de las reglas de este C&oacute;digo de &Eacute;tica conlleva sanciones como se describe a continuaci&oacute;n.</p>', 1, '2021-04-16 12:37:44', '2021-04-19 15:03:46'),
(2, 1, '2.- Códigos de Conducta', '<p>-- HACIA EL CLIENTE EXTERNO<br />\r\n<br />\r\nLos afiliados y promotores del sistema educativo FTX Live deben ofrecer al cliente final excelente servicio. En este contexto, cada afiliado y promotor se compromete a:<br />\r\n2.1: Adoptar un m&eacute;todo de trabajo saludable y leal hacia FTX Live<br />\r\n2.2: Representar a FTX Live de manera seria y profesional ante terceros en el contexto de presentaciones, videos y otros medios comunicados a terceros;<br />\r\n2.3: Proporcione solo informaci&oacute;n y documentos oficiales de FTX Live. La informaci&oacute;n del producto solo se proporciona en la medida en que cumpla con los datos y declaraciones oficiales de FTX Live.<br />\r\n2.4: Sea honesto en sus relaciones con las personas suscritas y br&iacute;ndeles la informaci&oacute;n necesaria que les permita tomar una decisi&oacute;n plenamente informada, en particular sobre el precio y las condiciones de pago;<br />\r\n2.5: No realice declaraciones falsas o exageradas en la plataformaFTX Live (ftxlive.com) y / o las suscripciones ofrecidas en esta plataforma;<br />\r\n2.6: No d&eacute; ninguna garant&iacute;a sobre los ingresos esperados;<br />\r\n2.7: Respetar la privacidad de los clientes finales y, por ejemplo, presentarles la oferta de FTX Live solo con su consentimiento expreso y en horarios razonables para llamadas telef&oacute;nicas;<br />\r\n2.8: No se acerque a terceros de manera agresiva o demasiado insistente;<br />\r\n2.9: Favorecer los intercambios personalizados con los clientes finales y no enviar correos electr&oacute;nicos o mensajes promocionando la actividad de FTX Live de forma masiva;<br />\r\n2.10: No abusar de la confianza de los clientes finales y, en particular, no explotar la falta de experiencia, enfermedades, edad o habilidades ling&uuml;&iacute;sticas limitadas de los clientes finales;<br />\r\n2.11: No solicite con firmeza, agresividad o insistencia la suscripci&oacute;n de clientes finales a productos FTX Live. Est&aacute; prohibido el uso de fuerza f&iacute;sica, acoso o cualquier otro medio opresivo;<br />\r\n2.12: No condicione la suscripci&oacute;n de un cliente final a la oferta FTX Live o al cumplimiento de otra obligaci&oacute;n. Por ejemplo, la compra de otro producto por parte del cliente final, el pago de una suma de dinero, etc. ;<br />\r\n2.13: Esforzarse por trabajar con vestimenta correcta y adoptar un lenguaje distinguido para presentar FTX Live.<br />\r\n<br />\r\n- HACIA EL CLIENTE INTERNO<br />\r\n<br />\r\nTodos los representantes de FTX Live deben respetarse mutuamente en todo sentido. Teniendo esto en cuenta, todos los afiliados nos comprometemos a respetar y sumar a la organizaci&oacute;n bajo el estricto seguimiento de las siguientes reglas:<br />\r\n3.1: Queda expresamente prohibido a los representantes y promotores de FTX Live, robar material de otros socios comerciales.<br />\r\n3.2: Queda expresamente prohibido a los representantes y promotores de FTX Live promover junto con FTX Live el unirse a otra organizaci&oacute;n comercial prometiendo una mejor supervisi&oacute;n o mejores resultados, es decir, mencionar nuestra academia como beneficio del paquete educativo de otra organizaci&oacute;n.<br />\r\n3.3: Queda expresamente prohibido a los representantes y promotores de FTX Live hacer comentarios negativos y / o degradantes sobre otros representantes y promotores de FTX Live<br />\r\n3.4: Queda expresamente prohibido a los representantes y promotores de FTX Live, tratar p&uacute;blicamente en las redes sociales, las disputas con otros representantes y promotores de FTX Live<br />\r\n4. Queda expresamente prohibido a los representantes y promotores de FTX Live, tener actividad competitiva o fraudulenta<br />\r\nLos representantes y promotores de FTX Live, deben comportarse con un alto sentido de lealtad.- Sin embargo, el ejercicio de la actividad de los representantes y promotores no es exclusivo. No obstante, se abstienen de participar en actividades concurrentes o fraudulentas. Por lo tanto, los socios de FTX Live se comprometen a:<br />\r\n4.1: Queda expresamente prohibido a los representantes y promotores de FTX Live, participar en una red del tipo &ldquo;marketing relacional&rdquo; del gremio educativo o de formaci&oacute;n online (E-Learning) o similar, o participar simult&aacute;neamente con alg&uacute;n competidor de FTX Live, en particular<br />\r\n4.2: Queda expresamente prohibido a los representantes y promotores de FTX Live, participar en una red de tipo &quot;marketing relacional&quot; o similar, en sectores financieros de riesgo, como comercio, divisas, inversiones de riesgo o criptomonedas;<br />\r\n4.3: Queda expresamente prohibido a los representantes y promotores de FTX Live, participar en una actividad fraudulenta, como venta piramidal, cadena de reclutamiento de afiliados o esquema Ponzi.</p>', 1, '2021-04-16 12:47:19', '2021-04-19 15:04:17'),
(3, 1, '3.- Comunicaciones', '<p>Todos los contactos con la prensa, la televisi&oacute;n y la radio relacionados con FTX Live est&aacute;n reservados para FTX Live, a menos que la direcci&oacute;n de la organizaci&oacute;n acepte alguna excepci&oacute;n y bajo un estricto acuerdo por escrito.<br />\r\n<br />\r\nFTX Live, informa a representantes, promotores y afiliados, que las comunicaciones a trav&eacute;s de las redes sociales no est&aacute;n exentas de riesgos y los invita a estar atentos al respecto.</p>', 1, '2021-04-16 13:12:35', '2021-04-19 15:04:40'),
(4, 2, '1.- Introducción', '<p>1.1 - FENTTIX CORP, con domicilio en Panam&aacute; City y bajo el nombre comercial de: Fenttix Presentan a continuaci&oacute;n las siguientes condiciones de relaci&oacute;n entre la marca y producto: FTX Live, referenciadas en estas especificaciones como: FTX Live, proporcionando un marco legal para los t&eacute;rminos de prestaci&oacute;n de sus servicios de educaci&oacute;n en l&iacute;nea al sitio web: www.ftxlive.com , denominado como: el &quot;Sitio&quot; y definiendo las condiciones de acceso y uso de los servicios del Sitio por &quot;el Usuario&quot;.<br />\r\nLa organizaci&oacute;n es representada, administrada y operada desde Guadalajara, Jalisco, M&eacute;xico por la Lic. Noemy Alem&aacute;n Cabrera y en lo sucesivo, &quot;FTX Live&quot; por un lado, y<br />\r\n1.2 - La persona f&iacute;sica o jur&iacute;dica abajo firmante y, en adelante, el &quot;Instructor FTX Live&quot; por otro lado, en lo sucesivo denominadas colectivamente las &quot;Partes&quot; o individualmente una &quot;Parte&quot;.<br />\r\n<br />\r\n<strong>Lo siguiente se explica de antemano:</strong><br />\r\n<br />\r\nFTX Live (FTX Live) es una plataforma de e-learning que ofrece un cat&aacute;logo de cursos de formaci&oacute;n variados accesibles en el sitio web: www.ftxlive.com en adelante, la &ldquo;Plataforma&rdquo;) dise&ntilde;ada para el desarrollo personal, profesional y financiero, la cual facilita su contenido a trav&eacute;s de diferentes f&oacute;rmulas de suscripci&oacute;n en funci&oacute;n de las opciones suscritas por los suscriptores (en adelante: en lo sucesivo denominados conjuntamente la &quot;Suscripci&oacute;n&quot;).<br />\r\n<br />\r\nEntre las Suscripciones que ofrece FTX Live, se encuentra la Suscripciones y categor&iacute;as denominadas &quot;SER&quot; &ldquo;HACER&rdquo; &ldquo;TENER&rdquo; y &ldquo;TRASCENDER&rdquo;, que permiten a su beneficiario acceso limitado al contenido correspondiente a cada paquete (incluidos los streaming de FTX Live y de nuestro partner FTX Live ) ofrecido en la Plataforma al vencimiento de su Suscripci&oacute;n para todo el contenido publicado en esa fecha (en adelante, la &ldquo;Suscripci&oacute;n FTX Live&rdquo;). FTX Live tambi&eacute;n ofrece a los titulares de cualquiera de sus suscripciones, la posibilidad de obtener ventajas y beneficios, denominadas en el presente documento como &ldquo;comisiones y bonos&rdquo; particularmente establecidos en cada membres&iacute;a y a adquirirse bajo el ejercicio de promoci&oacute;n y venta de una nueva Suscripci&oacute;n gracias a su intervenci&oacute;n o referencia.<br />\r\n<br />\r\n<strong>Pre&aacute;mbulo:</strong><br />\r\n<br />\r\nEl instructor trabaja como instructor y especialista en un campo de acci&oacute;n, en particular y desea poner videos de capacitaci&oacute;n a disposici&oacute;n de FTX Live. Las Partes desean comprometerse mutuamente con lo siguiente:</p>', 1, '2021-04-16 13:17:49', '2021-04-19 15:05:32'),
(5, 1, '4.- Reportes y Sanciones', '<p>Dependiendo de su gravedad, la (s) violaci&oacute;n (es) de una o m&aacute;s de las reglas mencionadas en este C&oacute;digo de &Eacute;tica podr&iacute;an ser primero objeto de una o m&aacute;s advertencias. FTX Live tambi&eacute;n se reserva el derecho, a su sola discreci&oacute;n, de aplicar las sanciones que se mencionan a continuaci&oacute;n en funci&oacute;n de la gravedad del incumplimiento y bajo previa y estricta investigaci&oacute;n: 1.- Bajar de categor&iacute;a, posponer por un per&iacute;odo fijo o cancelar permanentemente una afiliaci&oacute;n. 2.- Posponer por un per&iacute;odo fijo o cancelar definitivamente el pago de una solicitud de retiro de comisiones. 3. Suspender por un per&iacute;odo fijo su cuenta FTX Live y las comisiones adeudadas durante este per&iacute;odo. Cualquier persona puede denunciar bajo estricta confidencialidad toda practica que atente contra este c&oacute;digo de &eacute;tica o en general los intereses de la organizaci&oacute;n. Con cualquier denuncia abriremos un proceso de investigaci&oacute;n sobre el cual se tomar&aacute;n las medidas pertinentes. Tenga en cuenta que si FTX Live considera que el incumplimiento de las reglas mencionadas en este C&oacute;digo de &Eacute;tica es particularmente grave, FTX Live se reserva el derecho de rescindir unilateralmente el Contrato FTX Live y cerrar su cuenta en el sitio: www.ftxlive.com sin previo aviso. Cualquier solicitud de aclaraci&oacute;n sobre las normas descritas en este C&oacute;digo &Eacute;tico y / o reclamaci&oacute;n sobre su aplicaci&oacute;n deber&aacute; realizarse a la direcci&oacute;n de correo electr&oacute;nico indicada en su Contrato FTX Live.</p>', 1, '2021-04-16 13:19:05', '2021-04-19 15:04:57'),
(6, 2, '2.- Objeto del Contrato', '<p>Las Partes acuerdan que el objeto de este Contrato es regular contractualmente los servicios de capacitaci&oacute;n, instrucci&oacute;n y apoyo a las personas orientados al desarrollo de habilidades espec&iacute;ficas en el sector personal, profesional o financiero; los videos de capacitaci&oacute;n est&aacute;n disponibles para los suscriptores en la plataforma de aprendizaje electr&oacute;nico de FTX Live (la &quot;Plataforma&quot;) proporcionada por el Instructor (el &quot;Contenido&quot;) y la remuneraci&oacute;n por este Contenido es cobrada por FTX Live.</p>', 1, '2021-04-19 15:07:03', '2021-04-19 15:07:03'),
(7, 2, '3.- Remuneración', '<p>Las Partes acuerdan que la remuneraci&oacute;n que FTX Live pagar&aacute; al Instructor por el Contenido Contratado resultar&aacute; del reparto mensual del 10% del valor de la membres&iacute;a mensual/anual/vitalicia correspondiente a su modulo, siempre y cuando cumpla con el # m&iacute;nimo de vistas y compras requeridas, el cual deber&aacute; ser mayor a 50 tickets generados por la venta y la renovaci&oacute;n de planes educativos cada mes, excluyendo los USD49 (cuarenta y nueve d&oacute;lares estadounidenses) correspondientes a la licencia FTX Live y destinados a la gesti&oacute;n y administraci&oacute;n de las herramientas del programa FTX Live, cargos bancarios, impuestos y cualquier tarifa relacionada con la producci&oacute;n del Contenido.<br />\r\n<br />\r\nCada mes, los resultados del Instructor se calcular&aacute;n de acuerdo con la cantidad de personas que han seguido y comprado la (s) formaci&oacute;n (es) del Instructor, facilitada en el m&oacute;dulo y bajo el costo correspondiente a su expertiz., seg&uacute;n un algoritmo y reglas definidas por FTX Live, que pueden causar fluctuaciones que el Instructor acepta, y que pueden ser modificado por FTX Live. Al comienzo de cada mes, FTX Live enviar&aacute; por correo electr&oacute;nico al Instructor un informe detallado de los resultados generados por la (s) formaci&oacute;n (es) del Instructor durante el mes anterior (el &quot;Informe mensual&quot;).<br />\r\n<br />\r\nAl recibir el Informe Mensual, el Instructor debe emitir la factura correspondiente a FTX Live. La contraprestaci&oacute;n se abonar&aacute; mensualmente, a partir del d&iacute;a 15 de cada mes siguiente al env&iacute;o de la correspondiente factura, a la cuenta bancaria del Instructor, una vez que su formaci&oacute;n haya sido puesta en la plataforma por un per&iacute;odo m&iacute;nimo de 30 (treinta ) d&iacute;as. El monto m&iacute;nimo por cada pago realizado por FTX Live es USD149 (ciento cuarenta y nueve d&oacute;lares estadounidenses). Si el monto indicado en una factura mensual es menor a USD 149, este monto ser&aacute; transferido a las pr&oacute;ximas facturas mensuales y ser&aacute; liquidado por FTX Live cuando el monto total de facturas adeudadas al Instructor haya alcanzado los USD 149.</p>', 1, '2021-04-19 15:07:35', '2021-04-19 15:07:35'),
(8, 2, '4.- Naturaleza del Contrato', '<p>Dada la naturaleza de este Acuerdo, la relaci&oacute;n entre FTX Live y el Instructor es la de un contratista independiente y ambas Partes acuerdan que no se consideran ni deben considerarse agentes o empleados del otro. Este Contrato no establece una relaci&oacute;n de subordinaci&oacute;n como la de un empleador y un empleado, una asociaci&oacute;n o una empresa conjunta.</p>', 1, '2021-04-19 15:08:54', '2021-04-19 15:08:54'),
(9, 2, '5.- Obligaciones del Instructor', '<p>Bajo este Contrato, el Instructor tendr&aacute; las siguientes obligaciones: Proporcionar el Contenido con total responsabilidad, integridad y diligencia. No distribuya gratuitamente los cursos de formaci&oacute;n encomendados a FTX Live en ning&uacute;n medio.<br />\r\n<br />\r\nNo vender el Contenido producido por FTX Live o contenido similar por sus propios medios a un tercero en cualquier medio.<br />\r\n<br />\r\nEn el caso de la producci&oacute;n personal por parte del Instructor de los entrenamientos puestos en la Plataforma, no vender sus entrenamientos sin informar a FTX Live por escrito para generar los acuerdos correspondientes y mantener siempre la mejor relaci&oacute;n y distinci&oacute;n de la propuesta de valor de FTX Live.<br />\r\n<br />\r\nOtorgar a FTX Live una licencia exclusiva para todo el mundo, exclusiva, libre de derechos, transferible y asignable para usar el Contenido, el derecho a reproducirlo, alojarlo, crear copias t&eacute;cnicas, distribuirlo, comunicarlo al p&uacute;blico, modificarlo, analizarlo, visualizarlo y ejecutarlo con el &uacute;nico fin de operar, promover y mejorar la Plataforma.<br />\r\n<br />\r\nGarantizar a FTX Live frente a cualquier recurso o acci&oacute;n que se le pueda interponer por cualquier causa, con motivo de la cesi&oacute;n cedida, a los autores, beneficiarios, editores y en general a cualquier persona que considere tener alg&uacute;n derecho para hacer valer sobre todo o parte del Contenido o sobre su uso.<br />\r\n<br />\r\nGarantizar a FTX Live el ejercicio pac&iacute;fico de los derechos cedidos y en particular que no introducir&aacute; en su obra reminiscencias o semejanzas que vulneren los derechos de un tercero; que no ha realizado ni har&aacute; ning&uacute;n acto que pueda impedir o interferir con el pleno disfrute por FTX Live de los derechos que le confiere esta cesi&oacute;n. En general, el Instructor deber&aacute; abstenerse de cualquier hecho que pueda obstaculizar la explotaci&oacute;n de la obra por parte de FTX Live.</p>', 1, '2021-04-19 15:09:06', '2021-04-19 15:09:06'),
(10, 2, '6.- Derechos del Instructor', '<p>Bajo este Contrato, el Instructor tiene los siguientes derechos:<br />\r\n<br />\r\nRecibir el pago dentro de los plazos especificados en la cl&aacute;usula 2 de este Contrato. Tener acceso en la Plataforma a su formaci&oacute;n.<br />\r\n<br />\r\nEn el caso de la producci&oacute;n personal por parte del Instructor de sus entrenamientos colocados en la Plataforma de FTX Live, el Instructor puede revender el contenido de estos entrenamientos siempre que haya notificado a FTX Live por escrito y obtenido su aprobaci&oacute;n previa por escrito con las condiciones de venta definidas y en particular el precio de venta, el comprador y / o la plataforma en la que estar&aacute; disponible la formaci&oacute;n.<br />\r\n<br />\r\nUtilizar el contenido intelectual del Contenido (es decir, el conocimiento / know-how del Instructor y su conocimiento que hizo posible la producci&oacute;n del Contenido) en medios y formas distintas del Contenido y la Plataforma.<br />\r\n<br />\r\nFTX Live proh&iacute;be estrictamente cualquier contenido que infrinja los derechos de autor en su Plataforma y eliminar&aacute; cualquier Contenido de este tipo que viole los derechos de propiedad intelectual o derechos de imagen de otros.</p>', 1, '2021-04-19 15:09:23', '2021-04-19 15:09:23'),
(11, 2, '7.- Obligaciones de FTXLIVE', '<p>Bajo este Acuerdo, FTX Live tiene las siguientes obligaciones:<br />\r\n<br />\r\nPagar oportunamente la contraprestaci&oacute;n a que se refiere la cl&aacute;usula 2 de este Acuerdo. No ofrezca ni venda la formaci&oacute;n del Instructor fuera de su Plataforma.<br />\r\n<br />\r\nProteja la informaci&oacute;n personal del Instructor de acuerdo con las leyes y regulaciones aplicables en materia de protecci&oacute;n de datos personales y nunca la comunique a un tercero sin el consentimiento por escrito del Instructor.<br />\r\n<br />\r\nTodo el contenido, fotos, cursos de instructor, solo se utilizar&aacute;n en el contexto definido por FTX Live a trav&eacute;s de su sitio web y / o redes sociales.<br />\r\n<br />\r\nFTX Live nunca promover&aacute; ni utilizar&aacute; la imagen del Instructor o del experto fuera de este contexto sin su consentimiento por escrito.</p>', 1, '2021-04-19 15:10:00', '2021-04-19 15:10:00'),
(12, 2, '8.- Derechos de FTXLIVE', '<p>FTX Live tiene los siguientes derechos:<br />\r\n<br />\r\nRecibir el Contenido amparado por este Contrato, con diligencia, honestidad, prontitud y profesionalismo en la ejecuci&oacute;n del mismo;<br />\r\n<br />\r\nQue cualquier anomal&iacute;a que pueda surgir en el contexto del Contenido ser&aacute; tratada por el Instructor, incluidos los problemas de derechos de autor;<br />\r\n<br />\r\nEditar los videos producidos a su conveniencia, de acuerdo con las reglas de edici&oacute;n y cualidades que estime adecuadas.<br />\r\n<br />\r\nObtener del Instructor durante toda la duraci&oacute;n del Contrato un derecho y una licencia limitados, exclusivos, no sublicenciables, intransferibles e intransferibles para utilizar la propiedad intelectual del contenido de la formaci&oacute;n del Instructor de acuerdo con las condiciones definidas por este Contrato.</p>', 1, '2021-04-19 15:10:24', '2021-04-19 15:10:24'),
(13, 2, '9.- Duración del Contrato', '<p>Este Contrato se concluye por un per&iacute;odo de un (1) a&ntilde;o a partir de la fecha de firma. Puede ser prorrogado por acuerdo t&aacute;cito por per&iacute;odos sucesivos de un (1) a&ntilde;o cada uno. Podr&aacute; ser rescindido unilateralmente por cualquiera de las Partes, sujeto al cumplimiento de una notificaci&oacute;n previa en las condiciones descritas en la cl&aacute;usula 9.</p>', 1, '2021-04-19 15:10:44', '2021-04-19 15:10:44'),
(14, 2, '10.- Terminación del Contrato', '<p>En el caso de que, por cualquier motivo, FTX Live decida renunciar a todo o parte del Contenido amparado por este Acuerdo, deber&aacute; informar al Instructor con 15 (quince) d&iacute;as de anticipaci&oacute;n por correo electr&oacute;nico con acuse de recibo. El Contrato se rescindir&aacute; autom&aacute;ticamente dentro de los 15 (quince) d&iacute;as posteriores al env&iacute;o del correo electr&oacute;nico.<br />\r\n<br />\r\nEl Instructor que por cualquier motivo decida renunciar a todo o parte del Contenido amparado por este Contrato se encuentra en la misma situaci&oacute;n y deber&aacute; informar a FTX Live con 15 (quince) d&iacute;as de antelaci&oacute;n por correo electr&oacute;nico con acuse de recibo enviado a la direcci&oacute;n indicada en este Acuerdo. El Contrato se rescindir&aacute; autom&aacute;ticamente dentro de los 15 (quince) d&iacute;as posteriores al env&iacute;o del correo electr&oacute;nico.<br />\r\n<br />\r\nEn el caso de que el servicio del Instructor no cumpla con los requisitos de calidad definidos por FTX Live bajo este Contrato o de vez en cuando por escrito, o el servicio del Instructor no cumpla con el plan de entrenamiento y Aspectos pedag&oacute;gicos definidos por escrito con el equipo de producci&oacute;n de vez en cuando, FTX Live se reserva el derecho de no publicar la formaci&oacute;n del Instructor en su Plataforma.<br />\r\n<br />\r\nEl Instructor podr&aacute; entonces obtener los videos sin procesar de su entrenamiento sujeto a pagarle a FTX Live los costos de producci&oacute;n, correspondientes a una suma global de USD 1.000</p>', 1, '2021-04-19 15:11:01', '2021-04-19 15:11:01'),
(15, 2, '11.- Modificación del Contrato', '<p>FTX Live se reserva el derecho de modificar unilateralmente cualquier estipulaci&oacute;n de este Contrato que se considere no sustancial, mediante el env&iacute;o de una notificaci&oacute;n por escrito al Instructor, que el Instructor acepta.<br />\r\n<br />\r\nCualquier modificaci&oacute;n contractual considerada sustancial solo es v&aacute;lida de mutuo acuerdo por escrito y firmada por ambas Partes.</p>', 1, '2021-04-19 15:11:17', '2021-04-19 15:11:17'),
(16, 2, '12.- Capacidad', '<p>El Instructor y FTX Live reconocen y garantizan que:<br />\r\n<br />\r\nEste Acuerdo y el cumplimiento de sus respectivas obligaciones en virtud de este Acuerdo no constituyen ni constituir&aacute;n una violaci&oacute;n de ninguna otra consulta, no divulgaci&oacute;n, confidencialidad u otro acuerdo del que sean partes;<br />\r\n<br />\r\nTienen plena capacidad, poder y jurisdicci&oacute;n para ejecutar este Acuerdo y cumplir sus t&eacute;rminos;<br />\r\n<br />\r\nDurante la ejecuci&oacute;n del Contrato, las Partes no deben infringir, desviar o violar ninguna patente, derecho de autor, secreto comercial, marca registrada o cualquier otro derecho de propiedad intelectual de terceros;<br />\r\n<br />\r\nEl Instructor garantiza que es el propietario de los derechos de propiedad intelectual relacionados con las capacitaciones que ofrece a FTX Live y que estas capacitaciones no violan los derechos de propiedad intelectual de terceros. El Instructor se compromete a indemnizar y proteger a FTX Live contra todos los reclamos, acciones, responsabilidades, da&ntilde;os, p&eacute;rdidas, multas, sanciones, costos y gastos, incluidos los honorarios razonables de abogados y expertos, que surjan de una violaci&oacute;n. real o alegado de esta cl&aacute;usula 11.</p>', 1, '2021-04-19 15:11:31', '2021-04-19 15:11:31'),
(17, 2, '13.- Datos Personales', '<p>El Instructor acepta que FTX Live recopila, almacena y procesa datos, incluidos los datos personales relacionados con el Instructor, en el contexto de la ejecuci&oacute;n de este Contrato y para las necesidades del funcionamiento de la Plataforma dentro del marco de las leyes y regulaciones aplicables y Las pol&iacute;ticas de privacidad de FTX Live est&aacute;n disponibles para el instructor.</p>', 1, '2021-04-19 15:11:43', '2021-04-19 15:11:43'),
(18, 2, '14.- Divisibilidad', '<p>Si una de las disposiciones de este Contrato se considera inv&aacute;lida o inaplicable, la validez y aplicabilidad de las dem&aacute;s disposiciones del Contrato no se ver&aacute;n afectadas.</p>', 1, '2021-04-19 15:11:54', '2021-04-19 15:11:54'),
(19, 2, '15.- Ley Aplicable', '<p>La ejecuci&oacute;n e interpretaci&oacute;n de este Acuerdo se realiza de conformidad con las leyes de M&eacute;xico, pa&iacute;s donde se lleva a cabo la representaci&oacute;n, administraci&oacute;n, producci&oacute;n y operaci&oacute;n de la plataforma.</p>', 1, '2021-04-19 15:12:06', '2021-04-19 15:12:06'),
(20, 2, '16.- Jurisdicción', '<p>El contrato est&aacute; sujeto a la ley mexicana. Para todas las disputas que surjan del Contrato, incluidas las relacionadas con su validez, interpretaci&oacute;n, ejecuci&oacute;n, terminaci&oacute;n y / o las consecuencias de su terminaci&oacute;n, las Partes otorgan jurisdicci&oacute;n al Tribunal Comercial de M&eacute;xico.<br />\r\n<br />\r\nDespu&eacute;s de haber le&iacute;do este Acuerdo en su totalidad y conocer su contenido y alcance legal, las Partes aceptan sus t&eacute;rminos y condiciones.</p>', 1, '2021-04-19 15:12:22', '2021-04-19 15:12:22'),
(21, 3, '1.- Antecedentes entre los firmantes', '<p>1.1 - FENTTIX CORP, con domicilio en Panama City y bajo el nombre comercial de: Fenttix Presentan a continuaci&oacute;n las siguientes condiciones generales de uso y venta, conocidas como CGUV de la marca y producto: FTX Live, referenciadas en estas especificaciones como: FTX Live, proporcionando un marco legal para los t&eacute;rminos de prestaci&oacute;n de sus servicios de educaci&oacute;n en l&iacute;nea al sitio web: www.ftxlive.com , denominado como: el &quot;Sitio&quot; y definiendo las condiciones de acceso y uso de los servicios del Sitio por &quot;el Usuario&quot;.<br />\r\n<br />\r\nLa organizaci&oacute;n es representada, administrada y operada desde Guadalajara, Jalisco, M&eacute;xico por la Lic. Noemy Alem&aacute;n Cabrera y en lo sucesivo, &quot;FTX Live&quot; por un lado, y<br />\r\n1.2 - La persona f&iacute;sica o jur&iacute;dica abajo firmante y, en adelante, el &quot;Asociado FTX Live&quot; por otro lado, en lo sucesivo denominadas colectivamente las &quot;Partes&quot; o individualmente una &quot;Parte&quot;.<br />\r\n<br />\r\n<strong>Lo siguiente se explica de antemano:</strong><br />\r\n<br />\r\nFTX Live (FTX Live) es una plataforma de e-learning que ofrece un cat&aacute;logo de cursos de formaci&oacute;n variados accesibles en el sitio web: www.ftxlive.com en adelante, la &ldquo;Plataforma&rdquo;) dise&ntilde;ada para el desarrollo personal, profesional y financiero, la cual facilita su contenido a trav&eacute;s de diferentes f&oacute;rmulas de suscripci&oacute;n en funci&oacute;n de las opciones suscritas por los suscriptores (en adelante: en lo sucesivo denominados conjuntamente la &quot;Suscripci&oacute;n&quot;).<br />\r\n<br />\r\nEntre las Suscripciones que ofrece FTX Live, se encuentra la Suscripciones y categor&iacute;as denominadas &quot;SER&quot; &ldquo;HACER&rdquo; &ldquo;TENER&rdquo; y &ldquo;TRASCENDER&rdquo;, que permiten a su beneficiario acceso limitado al contenido correspondiente a cada paquete (incluidos los streaming de FTX Live y de nuestro partner FTX Live ) ofrecido en la Plataforma al vencimiento de su Suscripci&oacute;n para todo el contenido publicado en esa fecha (en adelante, la &ldquo;Suscripci&oacute;n FTX Live&rdquo;). FTX Live tambi&eacute;n ofrece a los titulares de cualquiera de sus suscripciones, la posibilidad de obtener ventajas y beneficios, denominadas en el presente documento como &ldquo;comisiones y bonos&rdquo; particularmente establecidos en cada membres&iacute;a y a adquirirse bajo el ejercicio de promoci&oacute;n y venta de una nueva Suscripci&oacute;n gracias a su intervenci&oacute;n o referencia.<br />\r\nEl asociado de FTX Live que ha contratado una Suscripci&oacute;n FTX Live para para beneficiarse del acceso a la Plataforma, y ha manifestado el deseo de poder beneficiarse de las ventajas mencionadas anteriormente en el caso de que las Suscripciones sean contratadas por terceros gracias a su intervenci&oacute;n o referencia.<br />\r\nLas Partes se han unido para definir los t&eacute;rminos y condiciones bajo los cuales el Asociado FTX Live se beneficia de ciertas ventajas en este contexto.<br />\r\nSe especifica en este documento que cada una de las partes ha tenido tiempo que considera suficiente para examinar y analizar este contrato, negociado de com&uacute;n acuerdo, en caso de ser necesario, recurriendo al asesoramiento de su elecci&oacute;n si fuera necesario. Por lo tanto, despu&eacute;s de haber tenido toda la informaci&oacute;n &uacute;til para aclarar su consentimiento, FTX Live y el asociado FTX Live se acercaron para concluir este contrato de intermediaci&oacute;n (en adelante, el &ldquo;Contrato&rdquo;).<br />\r\n<br />\r\nDicho esto, se acord&oacute; lo siguiente:</p>', 1, '2021-04-19 15:13:16', '2021-04-19 15:13:16'),
(22, 3, '2.- Objeto del Contrato', '<p>FTX Live encomienda al asociado de FTX Live que lo acepte, la posibilidad de promocionar las Suscripciones a personas o empresas susceptibles de estar interesadas en ellas. La direcci&oacute;n comercial de FTX Live pondr&aacute; en contacto con los nuevos suscriptores de la Plataforma. No tendr&aacute; el poder de negociar y/o celebrar contratos adicionales a este sin el consentimiento de la direcci&oacute;n general de FTX Live y dichos suscriptores ni dar&aacute; beneficios exclusivos ni fuera de los ya marcados en cada membres&iacute;a y especificados en este y los contratos establecidos en la parte legal de la plataforma.<br />\r\n<br />\r\nEn cualquier caso, FTX Live conservar&aacute; plena libertad para aceptar o rechazar, sin tener que justificarlo, contratar uno o m&aacute;s suscriptores potenciales presentados por el asociado FTX Live, denomin&aacute;ndolos bajo el rol de: Mentor y formalizando su relaci&oacute;n bajo un estricto criterio legal establecido en su respectivo contrato. De acuerdo con lo dispuesto entre ambas partes, el asociado FTX Live tiene la calidad de promotor y comerciante, ejerciendo su profesi&oacute;n con total independencia y libertad y, por lo tanto, puede desplegar cualquier actividad de su elecci&oacute;n, realizar cualquier negocio y otras operaciones por cuenta propia fuera de su actividad en los t&eacute;rminos del Contrato, sujeto a las estipulaciones previstas en el Contrato.<br />\r\n<br />\r\nEn consecuencia, el asociado FTX Live declara que nunca ha sido objeto de condena penal, ni de ninguna de las medidas encaminadas a restringir su capacidad comercial, lo que FTX Live reconoce en base a esta declaraci&oacute;n.<br />\r\n<br />\r\nEl Asociado FTX Live no podr&aacute; en ning&uacute;n caso reclamar el desconocimiento de ninguna de las cl&aacute;usulas establecidas en este contrato u otros anexos a la secci&oacute;n legal del sitio: www.ftxlive.com asumiendo este &uacute;ltimo todos los costos y gastos relacionados con el desempe&ntilde;o de su misi&oacute;n y declarando estar plenamente satisfecho con las condiciones. resultados financieros derivados del Contrato.<br />\r\n<br />\r\nComo corredor que ejerce una profesi&oacute;n comercial independiente, el Asociado FTX Live har&aacute; su propio negocio y asumir&aacute; el costo de todos los impuestos y aranceles fiscales y parafiscales, as&iacute; como todas las contribuciones sociales que correspondan en el pa&iacute;s de residencia y comercializaci&oacute;n.</p>', 1, '2021-04-19 15:13:31', '2021-04-19 15:13:31'),
(23, 3, '3.- Condiciones de ejecución del contrato', '<p>3.1.- El Asociado FTX Live deber&aacute; realizar todos los pasos y tr&aacute;mites que sean &uacute;tiles y necesarios para el cumplimiento de su misi&oacute;n seg&uacute;n se define en el art&iacute;culo &ldquo;Objeto del Contrato&rdquo;.<br />\r\n<br />\r\nPor lo tanto, el Asociado FTX Live debe informar a los posibles suscriptores de todas las condiciones comerciales, administrativas, legales y financieras relacionadas con las Suscripciones, sean esquemas de comisiones, bonificaciones, pagos, pol&iacute;ticas y en general todos los requerimientos que deber&aacute; aceptar para incorporarse a la plataforma.<br />\r\n<br />\r\nEl asociado FTX Live determinar&aacute; por s&iacute; solo sus m&eacute;todos de trabajo, de forma independiente y sin ning&uacute;n v&iacute;nculo de subordinaci&oacute;n con FTX Live. En consecuencia, el asociado FTX Live asegurar&aacute; los riesgos inherentes a su actividad personal. El Asociado FTX Live ser&aacute; as&iacute; personalmente responsable de las p&oacute;lizas de seguro necesarias para el ejercicio de su profesi&oacute;n, en particular en materia de responsabilidad civil.<br />\r\n<br />\r\nLos precios y condiciones de las Suscripciones son establecidos por FTX Live, especific&aacute;ndose que estas &uacute;ltimas son escalables. Todos los cambios en las condiciones de las Suscripciones, as&iacute; como las variaciones de precio relacionadas, se comunicar&aacute;n al Asociado FTX Live antes de su implementaci&oacute;n.<br />\r\n<br />\r\nAdem&aacute;s, el asociado FTX Live debe asegurarse en particular de que ni la apariencia de sus instalaciones profesionales, ni el estado de su equipo o la calidad de su servicio, puedan dar al p&uacute;blico y suscriptores o suscriptores potenciales un Imagen desfavorable de FTX Live. El Asociado FTX Live se compromete a comportarse siempre con FTX Live como un asociado leal y de buena fe.<br />\r\n<br />\r\n3.2.- El Asociado FTX Live se compromete a respetar la &eacute;tica y la moralidad en el marco de la actividad que desarrolla en aplicaci&oacute;n de la presente, y en particular al respeto de la &ldquo;Carta de &eacute;tica&rdquo; FTX Live del que declara haber cursado. conocimiento previo a la firma del presente, que aparece en la secci&oacute;n de &ldquo;informaci&oacute;n legal&rdquo; de la Plataforma, y que describe los comportamientos que el Asociado FTX Live debe asegurarse de respetar en el contexto de sus intercambios con prospectos suscritos.<br />\r\n<br />\r\n3.3.- FTX Live proporcionar&aacute; al asociado de FTX Live el material publicitario y la documentaci&oacute;n necesaria para su actividad en formato digital, as&iacute; como varias herramientas de formaci&oacute;n dedicadas, dentro del &aacute;rea del back office de &ldquo;FTX Live&rdquo; que aparece dentro de la Plataforma. El Asociado FTX Live se compromete a velar por la conservaci&oacute;n de los elementos as&iacute; puestos a su disposici&oacute;n y a evitar su divulgaci&oacute;n a terceros. No se podr&aacute; realizar el uso o difusi&oacute;n por parte del Asociado FTX Live de otros medios y / o herramientas de comunicaci&oacute;n o cualquier otro documento que mencione a FTX Live, sus marcas, logotipos o servicios y / o cualquier modificaci&oacute;n de los medios existentes por parte del Asociado FTX Live. que en el respeto de la imagen de marca de FTX Live.<br />\r\n<br />\r\nComo tal, el asociado FTX Live se compromete a cesar todo uso de un medio de comunicaci&oacute;n que FTX Live considere no acorde con la imagen de la red y / o su &eacute;tica, en un plazo m&aacute;ximo de 48 horas desde la notificaci&oacute;n de FTX Live y para eliminar dicho contenido contencioso dentro de un per&iacute;odo m&aacute;ximo de 15 d&iacute;as desde esta notificaci&oacute;n. En caso contrario, FTX Live podr&aacute; reclamar la rescisi&oacute;n del Contrato en las condiciones definidas en el art&iacute;culo &quot;Rescisi&oacute;n anticipada&quot;.<br />\r\n<br />\r\n3.4.- Por la presente, FTX Live otorga al Asociado de FTX Live un link de referidos disponible en el Backoffice y que probablemente otorgue reducciones en los costos de las membres&iacute;as a los nuevos suscriptores.</p>\r\n\r\n<table>\r\n	<thead>\r\n		<tr>\r\n			<th>Tipo de Membres&iacute;a</th>\r\n			<th>Costo Mensual con Link de Referido FTX Live</th>\r\n			<th>Comisi&oacute;n mensual para el asociado FTX Live</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Suscripci&oacute;n mensual Membres&iacute;a del VER<br />\r\n			(con link de referencia FTX Live)</td>\r\n			<td>$ 9.99 / mes</td>\r\n			<td>$ 2.99 / mes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Suscripci&oacute;n mensual Membres&iacute;a del DAR<br />\r\n			(con link de referencia FTX Live)</td>\r\n			<td>$ 19.99 / mes</td>\r\n			<td>$ 5.99 / mes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Suscripci&oacute;n mensual Membres&iacute;a del GANAR<br />\r\n			(con link de referencia FTX Live)</td>\r\n			<td>$ 29.99 / mes</td>\r\n			<td>$ 8.99 / mes</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>A solicitud del asociado de FTX Live, FTX Live se compromete a saldar todas las comisiones comprobables por las ventas efectivas bajo los links de referidos de cada asociado y para lo cual se configura un c&oacute;digo espec&iacute;fico incrustado en el mismo link de referencia, el cual permite mayor control y seguridad.<br />\r\n<br />\r\n3.5: En general y bajo el compromiso de actuar con la mayor &eacute;tica establecida y ser parte de la comunidad, el asociado FTX Live debe brindar informaci&oacute;n exacta sobre el avance de su misi&oacute;n y justificar su debida diligencia ante la primera solicitud de FTX Live.<br />\r\n<br />\r\nLa colaboraci&oacute;n del asociado FTX Live y FTX Live requiere un intercambio regular de informaci&oacute;n, por cualquier medio apropiado, en particular por el Backoffice, el correo electr&oacute;nico, la herramienta Telegram Messenger, el grupo dedicado de Facebook y otras redes sociales, pero tambi&eacute;n las videoconferencias / reuniones telef&oacute;nicas a las que las partes participar&aacute;n, teniendo en cuenta su respectiva disponibilidad.</p>', 1, '2021-04-19 15:14:38', '2021-04-19 15:14:38'),
(24, 3, '4.- Independencia de las partes', '<p>Todos los actos realizados por el Asociado FTX Live en el marco de la ejecuci&oacute;n del Contrato se realizan con total independencia y con exclusi&oacute;n de cualquier relaci&oacute;n de subordinaci&oacute;n, siendo cada una de las Partes responsable del cumplimiento de la normativa aplicable, relativa a la actividad que su propio.<br />\r\n<br />\r\nEl Asociado de FTX Live reconoce que FTX Live de ninguna manera le ha otorgado un mandato representativo y, en consecuencia, se reserva el derecho de elegir cuidadosamente a sus socios, representantes, comisionistas, agentes, promotores, influencer, mentores, afiliados o asociados de FTX Live para actuar en nombre y / o en nombre de FTX Live.<br />\r\n<br />\r\nEl Asociado FTX LiveA no debe recibir fondos bajo ninguna circunstancia a nombre y / o en representaci&oacute;n de FTX Live, salvo las establecidas en este documento y/o la secci&oacute;n legal de la plataforma por concepto de comisiones y bonos correspondientes a la promoci&oacute;n con venta efectiva de las membres&iacute;as &ldquo;Ser&rdquo;, &ldquo;Hacer&rdquo;, &ldquo;Tener&rdquo; y &ldquo;Trascender&rdquo; o cualquier otra derivada del mismo contenido y programa de compensaciones.</p>', 1, '2021-04-19 15:14:53', '2021-04-19 15:14:53'),
(25, 3, '5.- Comisiones pagadas al asociado FTXLIVE', '<p>A cambio de ejecuci&oacute;n exitosa de la referencia del asociado FTX Live resultante del presente, FTX Live se compromete a pagar al asociado FTX Live las comisiones definidas en la cl&aacute;usula 3.4 del Contrato sobre una billetera digital y accesible en el Backoffice de la plataforma. El Asociado FTX Live solo adquirir&aacute; el derecho a la comisi&oacute;n si la transacci&oacute;n es por una venta efectiva, proporcionado exclusivamente a trav&eacute;s de la intervenci&oacute;n del comit&eacute; de administraci&oacute;n de FTX Live confirmado y auditado por el departamento de calidad de la organizaci&oacute;n.<br />\r\n<br />\r\nEl pago de las comisiones adeudadas se realizar&aacute; despu&eacute;s de la deducci&oacute;n de los impuestos adeudados o de la retenci&oacute;n en origen. El Asociado FTX Live se compromete as&iacute; a declarar a las autoridades competentes la compensaci&oacute;n recibida en este contexto, y a pagar todos los derechos e impuestos relacionados, sin que FTX Live pueda preocuparse.<br />\r\n<br />\r\nEl Asociado FTX Live tendr&aacute; la opci&oacute;n de transferir los fondos disponibles en billetera a su cuenta bancaria, registrada desde su inscripci&oacute;n a la plataforma, disponible en el Backoffice, siendo dicha transferencia efectiva dentro de los 7 d&iacute;as a partir de la fecha en que el Asociado FTX Live realiza la solicitud. Tambi&eacute;n se aplicar&aacute;n cargos adicionales equivalentes a US $10 si la solicitud de transferencia del Asociado FTX Live es a paypal o alg&uacute;n otro banco fuera del convenio y solo ocurre cuando el saldo disponible en su billetera es inferior a US $ 49. Estos costos adicionales no se aplican en caso de rescisi&oacute;n del Contrato en las condiciones definidas en el art&iacute;culo &ldquo;Terminaci&oacute;n anticipada&rdquo; del Contrato.<br />\r\n<br />\r\nEl pago de las comisiones adeudadas al Asociado FTX Live se realiza en d&oacute;lares estadounidenses o en la moneda local aplicable en el pa&iacute;s del Asociado FTX Live cuando esta moneda sea admitida por FTX Live y si el Asociado FTX Live as&iacute; lo elige. En su caso, la conversi&oacute;n del importe a abonar en la cuenta bancaria del Asociado FTX Live en moneda local se realizar&aacute; mediante la herramienta que especifique la organizaci&oacute;n de FTX Live, a la tasa vigente el d&iacute;a en que FTX Live inicie la transferencia.<br />\r\n<br />\r\nEn caso de cancelaci&oacute;n de una compra por parte de un suscriptor proporcionada por el asociado de FTX Live, las comisiones relacionadas, si las hubiera, recibidas por el Asociado FTX Live deben devolverse a FTX Live. En caso de que se incumpla alguna de las condiciones previstas en el Contrato, las comisiones relacionadas recibidas por el Asociado FTX Live deber&aacute;n devolverse a FTX Live.<br />\r\n<br />\r\nLas Partes acuerdan expresamente a este efecto que la compensaci&oacute;n puede tener lugar de pleno derecho entre todas las sumas adeudadas por FTX Live al Asociado de FTX Live en aplicaci&oacute;n del presente, y todas las sumas adeudadas por el Asociado de FTX Live a FTX Live. Esta compensaci&oacute;n tendr&aacute; lugar dentro la billetera de la plataforma y asignada a su numero de afiliaci&oacute;n correspondiente.</p>', 1, '2021-04-19 15:15:14', '2021-04-19 15:15:14'),
(26, 3, '6.- Duración del Contrato', '<p>El Contrato es indivisible del contrato de Suscripci&oacute;n FTX Live A suscrito por el Asociado FTX Live durante la validaci&oacute;n del documento de Condiciones Generales de Uso y Venta, y concluido por la duraci&oacute;n de este.<br />\r\n<br />\r\nEl Contrato podr&aacute; renovarse por pacto t&aacute;cito, y finalizar&aacute; autom&aacute;ticamente af&iacute;n con la extinci&oacute;n (sea cual sea la causa: finalizaci&oacute;n de su plazo, extinci&oacute;n anticipada, vigencia o desvinculaci&oacute;n del medio de pago etc.) de la Suscripci&oacute;n de que se trate.<br />\r\n<br />\r\nEsta indivisibilidad no es rec&iacute;proca, y cada una de las Partes tendr&aacute; la opci&oacute;n de rescindir este Contrato en las condiciones previstas en las cl&aacute;usulas 7 y 8 de este documento, sin que ello d&eacute; lugar a la rescisi&oacute;n del contrato relativo a la Suscripci&oacute;n.</p>', 1, '2021-04-19 15:15:29', '2021-04-19 15:15:29'),
(27, 3, '7.- Intuitu Personae', '<p>El Contrato se concluye en consideraci&oacute;n de la persona del Asociado FTX Live, quien se compromete a involucrarse personalmente en el desempe&ntilde;o de los objetivos establecidos, derivada de estos presentes.<br />\r\n<br />\r\nEn consecuencia, el Asociado FTX Live no puede transferir, ceder o subcontratar la totalidad o parte de los derechos y / u obligaciones derivados de estos a un tercero sin el consentimiento previo por escrito de FTX Live.<br />\r\n<br />\r\nPor su parte, FTX Live queda libre de transferir, ceder o subcontratar la totalidad o parte de los derechos y / u obligaciones derivados de estos a cualquier tercero de su elecci&oacute;n, sin que el Asociado FTX Live pueda invocarlos a efectos de cancelar el contrato.</p>', 1, '2021-04-19 15:15:44', '2021-04-19 15:15:44'),
(28, 3, '8.- Terminación Anticipada', '<p>El Contrato podr&aacute; ser rescindido anticipadamente, por cualquiera de las Partes, en caso de incumplimiento de cualquiera de las obligaciones.<br />\r\n<br />\r\nLa rescisi&oacute;n anticipada se producir&aacute; quince d&iacute;as despu&eacute;s de la notificaci&oacute;n formal por correo certificado con acuse de recibo a la Parte incumplidora, indicando la intenci&oacute;n de aplicar esta cl&aacute;usula de rescisi&oacute;n expresa, que ha quedado sin efecto.<br />\r\n<br />\r\nEn particular, se considerar&aacute; como una falla que justifica la implementaci&oacute;n de esta cl&aacute;usula, sin que esta lista sea exhaustiva:<br />\r\n<br />\r\n- el incumplimiento por parte del asociado de una de las obligaciones derivadas del art&iacute;culo 2;<br />\r\n- incumplimiento de la normativa aplicable por parte del Asociado FTX Live y / o de la imagen de marca de FTX Live;<br />\r\n- incumplimiento por parte de FTX Live de su compromiso de pagar una comisi&oacute;n adeudada por FTX Live al asociado de FTX Live en la fecha de vencimiento;<br />\r\n- Incumplimiento por parte de FTX Live de su compromiso de recompra de membres&iacute;as por parte del asociado FTX Live.</p>', 1, '2021-04-19 15:16:00', '2021-04-19 15:16:00'),
(29, 3, '9.- Consecuencias de la rescisión del contrato', '<p>En caso de rescisi&oacute;n del Contrato, cualquiera que sea la causa, el compromiso del Asociado FTX Live finalizar&aacute; autom&aacute;ticamente.<br />\r\n<br />\r\nNo obstante lo anterior, en caso de rescisi&oacute;n del Contrato por un motivo distinto a la rescisi&oacute;n del Contrato por culpa del Asociado FTX Live, FTX Live se compromete a abonar a este &uacute;ltimo las comisiones relativas y acumuladas a la fecha de su salida.<br />\r\n<br />\r\nEl Asociado FTX Live tambi&eacute;n puede seguir teniendo acceso limitado al contenido correspondiente a cada paquete adquirido (incluidos los streaming de FTX Live y de nuestro partner FTX Live ) ofrecido en la Plataforma al vencimiento de su Suscripci&oacute;n para todo el contenido publicado en esa fecha y al Backoffice, sujeto a disponibilidad de la Plataforma, siendo FTX Live libre de rescindirla en cualquier momento.<br />\r\n<br />\r\nEn cualquier caso, el Asociado FTX Live no podr&aacute; reclamar ninguna compensaci&oacute;n al finalizar el Contrato.</p>', 1, '2021-04-19 15:16:14', '2021-04-19 15:16:14'),
(30, 3, '10.- Derechos de propiedad intelectual e industrial', '<p>El Asociado FTX Live tiene derecho a utilizar las marcas, logotipos y signos distintivos de FTX Live para la promoci&oacute;n y venta exclusiva de Suscripciones, en estricto cumplimiento de estas condiciones.<br />\r\n<br />\r\nEl Asociado FTX Live no adquiere ning&uacute;n derecho de propiedad o licencia, cualquiera que sea la base o el contenido, sobre estas marcas comerciales y signos distintivos. Bajo ninguna circunstancia el Asociado FTX Live est&aacute; autorizado a registrar una marca y / o cualquier derecho de propiedad intelectual o industrial de cualquier tipo y / o un nombre de dominio que comprenda los t&eacute;rminos de FTX Live</p>', 1, '2021-04-19 15:16:29', '2021-04-19 15:16:29'),
(31, 3, '11.- Confidencialidad', '<p>Las Partes se comprometen a mantener la confidencialidad de la informaci&oacute;n recopilada durante o durante la aplicaci&oacute;n del Contrato.<br />\r\n<br />\r\nTomar&aacute;n todas las precauciones &uacute;tiles para evitar la divulgaci&oacute;n prohibida o el uso de informaci&oacute;n confidencial por parte de sus empleados, subagentes o cualquier profesional que trabaje en su nombre.<br />\r\n<br />\r\nEsta obligaci&oacute;n sobrevivir&aacute; a la rescisi&oacute;n del Contrato sin l&iacute;mite de tiempo, cualquiera que sea la causa de la rescisi&oacute;n (vencimiento, rescisi&oacute;n anticipada), siempre que la informaci&oacute;n en cuesti&oacute;n no haya pasado al dominio p&uacute;blico</p>', 1, '2021-04-19 15:16:46', '2021-04-19 15:16:46'),
(32, 3, '12.- Modificaciones', '<p>Para ser exigible contra las Partes, cualquier modificaci&oacute;n realizada al Contrato debe ser objeto de una enmienda escrita firmada por las Partes.</p>', 1, '2021-04-19 15:16:58', '2021-04-19 15:16:58'),
(33, 3, '13.- Ley aplicable y atribución de competencia', '<p>El contrato est&aacute; sujeto a la ley mexicana. Para todas las disputas que surjan del Contrato, incluidas las relacionadas con su validez, interpretaci&oacute;n, ejecuci&oacute;n, terminaci&oacute;n y / o las consecuencias de su terminaci&oacute;n, las Partes otorgan jurisdicci&oacute;n al Tribunal Comercial de M&eacute;xico.</p>', 1, '2021-04-19 15:17:08', '2021-04-19 15:17:08');
INSERT INTO `legal_clauses` (`id`, `legal_tab_id`, `title`, `clause`, `status`, `created_at`, `updated_at`) VALUES
(34, 4, 'Introducción', '<p>FENTTIX CORP, con domicilio en Panama City y bajo el nombre comercial de: Fenttix Presentan a continuaci&oacute;n las siguientes condiciones generales de uso y venta, conocidas como CGUV de la marca y producto: FTX Live, referenciadas en estas especificaciones como: FTX Live, proporcionando un marco legal para los t&eacute;rminos de prestaci&oacute;n de sus servicios de educaci&oacute;n en l&iacute;nea al sitio web: www.ftxlive.com , denominado como: el &quot;Sitio&quot; y definiendo las condiciones de acceso y uso de los servicios del Sitio por &quot;el Usuario&quot;.<br />\r\n<br />\r\nEl sitio FTX Live, ofrece un servicio de suscripci&oacute;n personalizado que permite a los usuarios acceder a su contenido a trav&eacute;s de tutoriales de capacitaci&oacute;n, transmitidos a trav&eacute;s de wifi en cualquier modelo de PC, laptop, smartphone, tablet u otros dispositivos que puedan reproducir con wifi el sitio y su contenido.<br />\r\n<br />\r\nEstos t&eacute;rminos y condiciones rigen el uso de nuestro servicio. Tal como se utilizan en este documento, las expresiones &quot;servicio FTX Live&quot;, &quot;nuestro servicio&quot; o &quot;el servicio&quot; se refieren al servicio personalizado proporcionado por FTX Live que le permite buscar y ver su contenido , incluidas todas las funciones, recomendaciones, el Sitio y las interfaces de usuario, as&iacute; como todo el Contenido de FTX Live y el software asociado con nuestro servicio.<br />\r\n<br />\r\nFTX Live invita a los usuarios a leer detenidamente estos T &amp; C. La suscripci&oacute;n a cualquier membres&iacute;a en el Sitio implica la aceptaci&oacute;n del CGUV. Las caracter&iacute;sticas de cada suscripci&oacute;n se indican en la p&aacute;gina dedicada del Sitio.<br />\r\n<br />\r\nLas fotograf&iacute;as de los especialistas, mentores y profesores si son contractuales, los gr&aacute;ficos y el resto de las ilustraciones fueron adquiridos mediante una biblioteca digital con una licencia pagada para la adquisici&oacute;n de dicho material.<br />\r\n<br />\r\nEl Usuario reconoce haber le&iacute;do y aceptado los TyC al marcar la casilla provista para hacerlo antes de suscribirse a una suscripci&oacute;n en l&iacute;nea. Estos TyC se comunican sistem&aacute;ticamente al Usuario que los solicita.</p>', 1, '2021-04-19 15:22:18', '2021-04-19 15:22:18'),
(35, 4, '1.- Suscripción', '<p>1.1: Su suscripci&oacute;n FTX Live le permite el acceso al servicio de educaci&oacute;n en l&iacute;nea (Contenido de FTX Live) de forma continua hasta su terminaci&oacute;n o vencimiento, seg&uacute;n las condiciones del paquete de suscripci&oacute;n. Para utilizar el servicio FTX Live, debe tener acceso a Internet y un dispositivo compatible con FTX Live, y debe proporcionarnos uno o m&aacute;s M&eacute;todos de pago. Un &quot;M&eacute;todo de pago&quot; significa un m&eacute;todo de pago actual, v&aacute;lido y aceptado que puede actualizarse de vez en cuando y puede incluir el pago a trav&eacute;s de su cuenta con un tercero. A menos que cancele su suscripci&oacute;n antes de la fecha de facturaci&oacute;n, en donde nos reservamos el derecho de su ingreso a la academia a partir del d&iacute;a final de su per&iacute;odo de facturaci&oacute;n en curso.<br />\r\n<br />\r\n1.2: Podemos ofrecer diferentes paquetes de suscripci&oacute;n, incluidos paquetes promocionales especiales. Algunos de ellos pueden tener diferentes condiciones y restricciones, sobre las cuales se le informar&aacute; cuando se registre o en otras comunicaciones que se le pongan a su disposici&oacute;n. Puede encontrar los detalles espec&iacute;ficos de su suscripci&oacute;n a FTX Live visitando nuestro sitio web: www.ftxlive.com y haciendo clic en el enlace &ldquo;t&eacute;rminos y condiciones&rdquo; disponible en la parte inferior de la p&aacute;gina principal del sitio.<br />\r\n<br />\r\n1.3 : Precio. Cuando un usuario desea suscribirse a una suscripci&oacute;n al servicio FTX Live, el precio de la suscripci&oacute;n correspondiente que aparece en este Sitio, el cual ser&aacute; especificado en D&oacute;lares (USD) sin impuestos y tiene en cuenta las reducciones aplicables vigentes el d&iacute;a de la suscripci&oacute;n. Las suscripciones se describen en la p&aacute;gina correspondiente dentro del Sitio.<br />\r\n<br />\r\n1.4 : Para suscribirse, el Usuario debe completar todos los campos obligatorios o en su defecto no se podr&aacute; completar la suscripci&oacute;n al paquete educativo que desee adquirir.<br />\r\n<br />\r\n1.5 : Usted garantiza y declara por su honor que toda la informaci&oacute;n comunicada en el Sitio, en particular durante su suscripci&oacute;n, es exacta y conforme. Usted acepta actualizar su informaci&oacute;n personal desde la p&aacute;gina dedicada a este &uacute;ltimo y disponible en la pesta&ntilde;a &quot;Mi perfil&quot; del Sitio.</p>', 1, '2021-04-19 15:22:37', '2021-04-19 15:22:37'),
(36, 4, '2.- Facturación y Rescisión', '<p>2.1 : Ciclo de facturaci&oacute;n<br />\r\nLas tarifas de suscripci&oacute;n al servicio FTX Live se facturar&aacute;n a trav&eacute;s de su M&eacute;todo de pago en la fecha de facturaci&oacute;n espec&iacute;fica y el impuesto indicado en su p&aacute;gina &quot;Mi perfil&quot;. La duraci&oacute;n de su ciclo de facturaci&oacute;n depender&aacute; del tipo de suscripci&oacute;n que elija cuando se inscriba en el servicio. En algunos casos, su fecha de facturaci&oacute;n puede cambiar, por ejemplo, si su m&eacute;todo de pago no funcion&oacute; o si su suscripci&oacute;n paga comenz&oacute; en un d&iacute;a que no figura en un mes determinado. Acceda a nuestro sitio web y a la p&aacute;gina &quot;Mi perfil&quot; para conocer la fecha de su pr&oacute;xima factura.<br />\r\n<br />\r\n2.2 : Medios de pago<br />\r\nPara utilizar el servicio FTX Live, debe proporcionarnos uno o m&aacute;s m&eacute;todos de pago. Usted nos autoriza a debitar su cuenta a trav&eacute;s de cualquier M&eacute;todo de pago asociado con su cuenta en caso de que su M&eacute;todo de pago principal sea rechazado o ya no est&eacute; disponible para el pago de sus tarifas de suscripci&oacute;n. Usted es responsable de cualquier monto no retirado. Si un pago no se liquida debido al vencimiento de la tarjeta, saldo insuficiente o cualquier otro motivo, y no cancela su cuenta, podemos suspender su acceso a nuestro servicio hasta que ha registrado correctamente su cuenta a trav&eacute;s de un m&eacute;todo de pago v&aacute;lido. Para ciertos m&eacute;todos de pago, el proveedor de servicios puede cobrarle ciertos costos, como tarifas por transacciones internacionales u otras tarifas relacionadas con el procesamiento de su M&eacute;todo de pago. Los cargos por impuestos locales pueden variar seg&uacute;n el m&eacute;todo de pago utilizado. Comun&iacute;quese con el proveedor de su m&eacute;todo de pago para obtener m&aacute;s informaci&oacute;n.<br />\r\n<br />\r\n2.3 : Actualizaci&oacute;n de sus m&eacute;todos de pago<br />\r\nPuede actualizar sus m&eacute;todos de ingresando a la secci&oacute;n dentro de la p&aacute;gina de &quot;Back Office&quot;. Tambi&eacute;n podemos actualizar sus m&eacute;todos de pago con la informaci&oacute;n proporcionada por los proveedores de servicios de pago. Despu&eacute;s de cualquier actualizaci&oacute;n, nos autoriza a continuar debitando su cuenta a trav&eacute;s de los m&eacute;todos de pago correspondientes.<br />\r\n<br />\r\n2.4 : Cancelaci&oacute;n<br />\r\nPuede cancelar su suscripci&oacute;n a FTX Live en cualquier momento y seguir&aacute; teniendo acceso al servicio hasta el final de su per&iacute;odo de facturaci&oacute;n. Los pagos no son reembolsables y no otorgamos reembolsos ni cr&eacute;ditos por per&iacute;odos de uso parcial o por cualquier Contenido de FTX Live no visto. Para cancelar su suscripci&oacute;n, vaya a la p&aacute;gina &quot;Mi perfil&quot;, haga clic en &quot;Cancelar mi suscripci&oacute;n&quot; y siga las instrucciones. Si cancela su suscripci&oacute;n, su cuenta se cerrar&aacute; autom&aacute;ticamente al final de su per&iacute;odo de facturaci&oacute;n actual. Para saber cu&aacute;ndo se cerrar&aacute; su cuenta, haga clic en la p&aacute;gina &quot;Mi perfil&quot;.<br />\r\n<br />\r\n2.5 : Cambios de precio y suscripci&oacute;n<br />\r\nEs posible que cambiemos nuestras suscripciones y el precio de nuestro servicio de vez en cuando. Sin embargo, cualquier cambio en los precios o sus suscripciones solo ser&aacute; aplicable despu&eacute;s de un per&iacute;odo m&iacute;nimo de 30 d&iacute;as despu&eacute;s de recibir una notificaci&oacute;n nuestra.</p>', 1, '2021-04-19 15:22:53', '2021-04-19 15:22:53'),
(37, 4, '3.- Servicio FTXLIVE', '<p>3.1 : Debes tener 18 a&ntilde;os o haber alcanzado la mayor&iacute;a de edad legal en tu provincia, territorio o pa&iacute;s para suscribirte al servicio FTX Live. Los menores pueden utilizar el servicio solo bajo la supervisi&oacute;n de un adulto.<br />\r\n<br />\r\n3.2 : El servicio FTX Live, as&iacute; como cualquier contenido visualizado a trav&eacute;s del servicio, est&aacute; reservado solo para uso personal y no comercial y no debe compartirse con terceros. Durante el plazo de su suscripci&oacute;n, le otorgamos un derecho limitado, no exclusivo e intransferible para acceder al servicio FTX Live y ver el Contenido FTX Live. Salvo lo anterior, no se le otorga ning&uacute;n derecho, t&iacute;tulo o inter&eacute;s. Acepta no utilizar el servicio para proyecciones p&uacute;blicas.<br />\r\n<br />\r\n3.3 : Solo podr&aacute; ver Contenido de FTX Live en los pa&iacute;ses donde ofrecemos nuestro servicio. El contenido disponible puede variar seg&uacute;n la regi&oacute;n y se puede cambiar en cualquier momento.<br />\r\n<br />\r\n3.4 : El servicio FTX Live, incluido el contenido de la biblioteca, se actualiza peri&oacute;dicamente. Asimismo, probamos peri&oacute;dicamente varios aspectos de nuestro servicio, incluido nuestro sitio web, las interfaces de usuario, las ofertas promocionales y la disponibilidad de Contenido FTX Live.<br />\r\n<br />\r\n3.5: Usted acepta no archivar, reproducir, distribuir, modificar, mostrar, ejecutar, publicar, otorgar, crear trabajos derivados, vender o usar (excepto con la autorizaci&oacute;n expresa mencionada en estos TyC) el contenido y la informaci&oacute;n del servicio FTX Live ( u obtenido a trav&eacute;s de &eacute;l). Tambi&eacute;n acepta no: eludir, eliminar, modificar, desactivar, destruir o anular las protecciones del contenido dentro del marco del servicio FTX Live; utilizar bots, rastreadores web, herramientas de recolecci&oacute;n web u otros m&eacute;todos automatizados para acceder al servicio FTX Live; descompilar, realizar ingenier&iacute;a inversa o desensamblar cualquier software, producto o proceso accesible a trav&eacute;s del servicio FTX Live; insertar cualquier c&oacute;digo o producto, o manipular el contenido del servicio FTX Live de cualquier forma; o utilizar cualquier m&eacute;todo de extracci&oacute;n, recopilaci&oacute;n o extracci&oacute;n de datos. As&iacute; mismo, acepta no descargar, mostrar, enviar por correo electr&oacute;nico o enviar o transmitir de ninguna manera ning&uacute;n contenido con el fin de interrumpir, destruir o restringir la funcionalidad de cualquier software o equipo inform&aacute;tico o telecomunicaciones asociadas con el servicio FTX Live, incluido cualquier virus o cualquier otro c&oacute;digo, archivo o programa inform&aacute;tico. Nos reservamos el derecho de terminar o restringir su uso de nuestro servicio si viola estos TyC o hace un uso ilegal o ileg&iacute;timo del servicio, enviar por correo electr&oacute;nico o enviar o transmitir de cualquier manera cualquier contenido con el fin de interrumpir, destruir o restringir la funcionalidad de cualquier software o computadora o equipo de telecomunicaciones asociado con el servicio FTX Live, incluido cualquier virus o cualquier otro c&oacute;digo, archivo o programa inform&aacute;tico. Nos reservamos el derecho de terminar o restringir su uso de nuestro servicio si viola estos TyC o hace un uso ilegal o ileg&iacute;timo del servicio. enviar por correo electr&oacute;nico o enviar o transmitir de cualquier manera cualquier contenido con el fin de interrumpir, destruir o restringir la funcionalidad de cualquier software o computadora o equipo de telecomunicaciones asociado con el servicio FTX Live, incluido cualquier virus o cualquier otro c&oacute;digo, archivo o programa inform&aacute;tico. Nos reservamos el derecho de terminar o restringir su uso de nuestro servicio si viola estos TyC o hace un uso ilegal o ileg&iacute;timo del servicio.<br />\r\n<br />\r\n3.6 : La calidad de visualizaci&oacute;n del Contenido FTX Live puede variar de un dispositivo a otro y puede verse influenciada por varios factores, incluida su ubicaci&oacute;n, ancho de banda disponible y / o la velocidad de su conexi&oacute;n a Internet. Los costos de conexi&oacute;n a Internet son su responsabilidad. Comun&iacute;quese con su proveedor de servicios de Internet para obtener detalles sobre posibles cargos por uso de datos de Internet.</p>', 1, '2021-04-19 15:23:13', '2021-04-19 15:23:13'),
(38, 4, '4.- Contraseñas y acceso a la cuenta', '<p>4.1: El Usuario que ha creado la cuenta FTX Live y se le facturan las tarifas de suscripci&oacute;n a trav&eacute;s del M&eacute;todo de pago elegido (el &quot;Titular de la cuenta&quot;) tiene acceso a la cuenta FTX Live y tiene control sobre ella y los dispositivos compatibles con FTX Live utilizados para acceder a nuestro servicio. Este Usuario es responsable de toda la actividad que ocurra a trav&eacute;s de su cuenta FTX Live. Con el fin de mantener el control de la cuenta y evitar que alguien acceda a ella (y, en particular, acceder a la informaci&oacute;n del historial de lectura de la cuenta)<br />\r\n<br />\r\n4.2 : Usted es personalmente responsable de actualizar y mantener informaci&oacute;n precisa relacionada con su cuenta. Podemos cancelar o suspender su cuenta para protegerlo, as&iacute; como para proteger a FTX Live o a sus socios, contra cualquier robo de identidad u otra actividad fraudulenta. El borrado de la cuenta conlleva la p&eacute;rdida definitiva de todas las ventajas y servicios adquiridos en el Sitio.<br />\r\n<br />\r\n4.3 : En el caso de que FTX Live elimine una cuenta por incumplimiento de los deberes y obligaciones establecidos en estos TyC, el titular de la cuenta infractor tiene formalmente prohibido volver a registrarse en el Sitio directamente, a trav&eacute;s de otra direcci&oacute;n de correo electr&oacute;nico o por intermediario sin la autorizaci&oacute;n expresa de FTX Live.<br />\r\n<br />\r\n4.4 : Si un Titular sospecha de fraude en alg&uacute;n momento, deber&aacute; ponerse en contacto con FTX Live lo antes posible, para que FTX Live pueda tomar las medidas necesarias y regularizar la situaci&oacute;n.</p>', 1, '2021-04-19 15:23:29', '2021-04-19 15:23:29'),
(39, 4, '5.- Tratamiento de datos personales', '<p>5.1 : FTX Live , es responsable del procesamiento, puede recopilar y procesar datos personales relativos a los Usuarios que deseen acceder al Sitio, en particular a trav&eacute;s del formulario de registro, las cookies o cualquier otro formulario que pueda ser ofrecidos a trav&eacute;s del Sitio. Si el Usuario rechaza el procesamiento de sus datos, se recomienda que se abstenga de utilizar el Sitio.<br />\r\n<br />\r\n5.2 : Los datos recabados son imprescindibles para la tramitaci&oacute;n de sus solicitudes y su fichero dentro de FTX Live y se conservar&aacute;n por periodos de tiempo proporcionales a los fines para los que fueron recabados y en cumplimiento de las obligaciones que incumben al responsable de tratos. Est&aacute;n destinados principalmente a los departamentos relevantes de FTX Live.<br />\r\n<br />\r\n5.3 : Dentro de los l&iacute;mites establecidos por nuestras pol&iacute;ticas, t&eacute;rminos y condiciones los Usuarios tienen, en lo particular, el derecho de acceso a sus datos personales, los derechos de modificar, rectificar, limitar, oponerse al tratamiento de estos o el derecho a solicitar su cesi&oacute;n y supresi&oacute;n siempre que pueda estar justificado por un motivo leg&iacute;timo. Las solicitudes deben dirigirse al gerente a soporte@ftxlive.com - El titular de los datos tambi&eacute;n tiene la posibilidad de emprender una queja por cualquier controversia. Si tenemos alguna duda sobre su identidad, es posible que se le solicite una copia de un documento oficial de su identidad.<br />\r\n<br />\r\n5.4 : El responsable del tratamiento se compromete a implementar la protecci&oacute;n f&iacute;sica y l&oacute;gica de los datos personales de acuerdo con los requisitos de nuestro Reglamento.<br />\r\n<br />\r\n5.5 : FTX Live podr&aacute; recurrir a terceras empresas para realizar determinadas operaciones. Al navegar por el Sitio, el Usuario acepta que terceras empresas puedan tener acceso a sus datos para permitir el correcto funcionamiento del Sitio. Estas empresas de terceros solo tienen acceso a los datos recopilados en el contexto de la realizaci&oacute;n de una tarea espec&iacute;fica. FTX Live sigue siendo responsable del procesamiento de estos datos. Adem&aacute;s, es posible que el Usuario deba recibir informaci&oacute;n u ofertas comerciales de FTX Live y/o sus socios. El Usuario podr&aacute; en cualquier momento oponerse a la recepci&oacute;n de estas ofertas comerciales, dirigi&eacute;ndose a la siguiente direcci&oacute;n de correo electr&oacute;nico: soporte@ftxlive.com<br />\r\n<br />\r\n5.6 : La informaci&oacute;n de los usuarios podr&aacute; ser transmitida a terceros sin su consentimiento previo expreso con el fin de lograr los siguientes objetivos:<br />\r\n1. Respetar la ley,<br />\r\n2. Proteger a cualquier persona contra da&ntilde;os graves,<br />\r\n3. Luchar contra el fraude o infracciones de FTX Live y sus usuarios,<br />\r\n4. Proteger los derechos de propiedad de FTX Live .</p>', 1, '2021-04-19 15:23:46', '2021-04-19 15:23:46'),
(40, 4, '6.- Cookies', '<p>6.1 : Para permitir que sus Usuarios se beneficien de una navegaci&oacute;n &oacute;ptima en el Sitio y un mejor funcionamiento de las diferentes interfaces y aplicaciones, FTX Live puede colocar una cookie en la computadora del Usuario. Esta cookie se utiliza para almacenar informaci&oacute;n relacionada con la navegaci&oacute;n en el Sitio, as&iacute; como cualquier dato ingresado por los Usuarios (en particular b&uacute;squedas, inicio de sesi&oacute;n, correo electr&oacute;nico, contrase&ntilde;a).<br />\r\n<br />\r\n6.2 : El Usuario autoriza expresamente a FTX Live a colocar un archivo denominado &quot;cookie&quot; en el disco duro del usuario.<br />\r\n<br />\r\n6.3 : El Usuario tiene la opci&oacute;n de bloquear, modificar el per&iacute;odo de retenci&oacute;n o eliminar esta cookie a trav&eacute;s de la interfaz de su navegador. Si la desactivaci&oacute;n sistem&aacute;tica de las cookies en el navegador del Usuario le impide utilizar determinados servicios o caracter&iacute;sticas del Sitio, este mal funcionamiento no puede en modo alguno constituir un perjuicio para el Usuario, que no puede reclamar ninguna indemnizaci&oacute;n por este hecho.</p>', 1, '2021-04-19 15:23:58', '2021-04-19 15:23:58'),
(41, 4, '7.- Responsabilidad', '<p>7.1 : FTX Live no se hace responsable en modo alguno de la indisponibilidad, ya sea temporal o permanente del Sitio y aunque FTX Live implementa todos sus medios para garantizar el servicio en todo momento, es posible que se interrumpe en cualquier momento. Adem&aacute;s, FTX Live se reserva el derecho, mediante acto voluntario, de hacer que el Sitio no est&eacute; disponible para llevar a cabo cualquier operaci&oacute;n de actualizaci&oacute;n, mejora o mantenimiento. En la medida de lo posible, FTX Live se esforzar&aacute; por notificar a los Usuarios de esto a trav&eacute;s del Sitio.<br />\r\n<br />\r\n7.2 : Como se mencion&oacute; anteriormente en este documento, FTX Live de ninguna manera se hace responsable de cualquier falla en la operaci&oacute;n de los servicios por razones fuera de su control, imprevisibles e irresistibles o cuya culpa no pueda ser atribuible a ello.</p>', 1, '2021-04-19 15:24:10', '2021-04-19 15:24:10'),
(42, 4, '8.- Derecho de desistimiento del usuario', '<p>8.1 : La provisi&oacute;n intangible, digital, directa e inmediata de Contenido FTX Live al Usuario constituye una excepci&oacute;n al Consumidor y solo se dar&aacute; por situaciones en donde se comprometa el contenido a actividades no legales o no permitidas y estipuladas en este documento. En consecuencia, al aceptar estos TyC y desear tener acceso al Contenido de FTX Live, el Usuario renuncia expresamente a su derecho de desistimiento.</p>', 1, '2021-04-19 15:24:29', '2021-04-19 15:24:29'),
(43, 4, '9.- Propiedad intelectual', '<p>9.1 : La marca, logo, tecnolog&iacute;as, carta gr&aacute;fica, datos, textos, comentarios, ilustraciones, im&aacute;genes, animadas o no, secuencias de video, sonidos, patentes, datos privados, tecnolog&iacute;as, productos, publicaciones, proceso de este Sitio son propiedad exclusiva de FTX Live y de terceros que le hayan otorgado una licencia y obras intelectuales protegidas por derechos de autor. Cualquier distribuci&oacute;n, explotaci&oacute;n, representaci&oacute;n, reproducci&oacute;n, ya sea parcial o total, sin la previa y expresa autorizaci&oacute;n de FTX Live est&aacute; estrictamente prohibida y expondr&aacute; al infractor a procesos civiles y penales.</p>', 1, '2021-04-19 15:24:41', '2021-04-19 15:24:41'),
(44, 4, '10.- Varios', '<p>10.1 : Leyes aplicables. Estas CGUV se rigen e interpretan de acuerdo con la ley mexicana, pa&iacute;s en donde se llev&oacute; a cabo el desarrollo intelectual del proyecto y sus contenidos y/o en Colombia, pa&iacute;s en donde se llev&oacute; el desarrollo del software. Estos TyC no pueden limitar las disposiciones relativas a la protecci&oacute;n del consumidor de las que puede beneficiarse en virtud de la legislaci&oacute;n vigente en su pa&iacute;s de residencia. Cualquier disputa que pueda surgir entre FTX Live y un Usuario durante la ejecuci&oacute;n de estas condiciones ser&aacute; objeto de un intento de resoluci&oacute;n amistosa. De lo contrario, las disputas se llevar&aacute;n a la atenci&oacute;n de los tribunales de derecho com&uacute;n competentes a los pa&iacute;ses antes mencionados.<br />\r\n<br />\r\n10.2 : Contenido no solicitado. FTX Live no acepta ning&uacute;n contenido o ideas no solicitados relacionados con el Contenido de FTX Live y no es responsable de las similitudes entre su contenido o programaci&oacute;n y el contenido o las ideas que se le transmiten.<br />\r\n<br />\r\n10.3 : Atenci&oacute;n al cliente. Para obtener m&aacute;s informaci&oacute;n sobre nuestro servicio y sus caracter&iacute;sticas o si necesita ayuda para usar su cuenta, comun&iacute;quese con nosotros a la siguiente direcci&oacute;n: soporte@ftxlive.com , visite la secci&oacute;n de soporte dentro del home de FTX Live disponible.<br />\r\n<br />\r\n10.4 : Nulidad - Invalidez. Si una o m&aacute;s disposiciones de estas CGUV resultan ser inv&aacute;lidas, ilegales o inaplicables, las disposiciones restantes seguir&aacute;n siendo plenamente aplicables y conservar&aacute;n sus efectos.<br />\r\n<br />\r\n10.5 : No renuncia. El hecho de que FTX Live o el Usuario no ejerza, en ning&uacute;n momento, una prerrogativa reconocida por estos TyC en ning&uacute;n caso podr&aacute; interpretarse como una renuncia expresa o t&aacute;cita al derecho a ejercer dicha prerrogativa en el futuro.<br />\r\n<br />\r\n10.6 : Modificaci&oacute;n del sitio. FTX Live se reserva el derecho de modificar el Sitio, as&iacute; como cualquier otro componente de los servicios FTX Live proporcionados por FTX Live a trav&eacute;s del Sitio.<br />\r\n<br />\r\n10.7 : Modificaci&oacute;n del CGUV. FTX Live puede, de vez en cuando, modificar estos TyC. Le notificaremos al menos 30 d&iacute;as antes de que dichos cambios sean aplicables.<br />\r\n<br />\r\n10.8 : Comunicaciones electr&oacute;nicas. Le enviaremos informaci&oacute;n de la cuenta (por ejemplo, autorizaciones de pago, facturas, cambios de contrase&ntilde;a o m&eacute;todo de pago, mensajes de confirmaci&oacute;n, notificaciones) solo de forma electr&oacute;nica, por ejemplo, por correo electr&oacute;nico. &#39;enviando un correo electr&oacute;nico a la direcci&oacute;n que nos proporcion&oacute; al registrarse.<br />\r\n<br />\r\n<strong>IDIOMAS DISPONIBLES</strong></p>\r\n\r\n<ul>\r\n	<li>ALEM&Aacute;N</li>\r\n	<li>&Aacute;RABE</li>\r\n	<li>CHINO</li>\r\n	<li>ESPA&Ntilde;OL</li>\r\n	<li>FRANC&Eacute;S</li>\r\n	<li>HINDI</li>\r\n	<li>INGL&Eacute;S</li>\r\n	<li>ITALIANO</li>\r\n	<li>JAPON&Eacute;S</li>\r\n	<li>POSTUGU&Eacute;S</li>\r\n	<li>RUSO</li>\r\n	<li>VIETNAMITA</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>NUESTRA COMUNIDAD</strong><br />\r\n<a href=\"http://localhost:8000/shopping-cart/memberships\">&nbsp;&Uacute;nase a FTX Live con un plan principiante</a><br />\r\n<a href=\"http://localhost:8000/afiliados\">&nbsp;Convi&eacute;rtete en entrenador</a><br />\r\n<br />\r\n<strong>SOPORTE Y ATENCI&Oacute;N AL CLIENTE</strong><br />\r\nNuestro servicio de atenci&oacute;n al cliente internacional est&aacute; disponible las 24 horas del d&iacute;a, los 365 d&iacute;as del a&ntilde;o, sin embargo y su solicitud ser&aacute; enlistada en un sistema de tickets calendarizados y atendidos en tiempo y forma por nuestros agentes de soporte, inform&aacute;ndole cualquier detalle de su solicitud via correo electr&oacute;nico.<br />\r\n<a href=\"http://localhost:8000/admin/soporte\">&nbsp;Ir a soporte</a><br />\r\n<br />\r\n&copy; Copyright 2020-2021, Todos los derechos reservados<br />\r\nFTX Live<br />\r\n<strong>FTX Live</strong>&nbsp;es una marca impulsada por<br />\r\n<strong>FENTTIX CORP</strong></p>', 1, '2021-04-19 15:25:01', '2021-04-19 15:25:01'),
(45, 5, 'Introducción', '<p>El Afiliado de FTX Live recibir&aacute;, una comisi&oacute;n abonada a su billetera interna de acuerdo con los siguientes criterios:<br />\r\n<br />\r\nSe acuerda expresamente que el afiliado a FTX Live recibir&aacute; &uacute;nica y exclusivamente compensaciones de ventas efectivas.<br />\r\nEn general, el derecho de comisi&oacute;n solo ser&aacute; adquirido una vez al mes por el afiliado de FTX Live a condici&oacute;n del total de las ventas efectivas referidas y confirmadas por su n&uacute;mero de afiliaci&oacute;n.<br />\r\nEl afiliado de FTX Live podr&aacute; consultar los detalles de las transacciones y sus comisiones en el Backoffice en el marco de estos presentes puntos:</p>', 1, '2021-04-19 15:25:24', '2021-04-19 15:25:24'),
(46, 5, '1.- Comisión residual mensual', '<p>La comisi&oacute;n residual mensual consiste en el monto que recibe el afiliado de FTX Live, por la venta de una suscripci&oacute;n concluida a trav&eacute;s de uno de sus enlaces de patrocinio entre FTX Live y un nuevo suscriptor. El registro de la comisi&oacute;n se generar&aacute; en cada pago de la suscripci&oacute;n elegida por parte del nuevo firmante hasta su terminaci&oacute;n. Por lo tanto, el afiliado de FTX Live que refiere, seguir&aacute; recibiendo dicha comisi&oacute;n hasta que el afiliado referido deje de pagar su membres&iacute;a.<br />\r\n<br />\r\nLa tasa de comisi&oacute;n del Afiliado de FTX Live se establece en el 30% de la facturaci&oacute;n mensual, solo de sus ventas efectivas, registradas bajo su n&uacute;mero de afiliaci&oacute;n y disponibles para su contabilidad en su backoffice.<br />\r\n<br />\r\nLos montos establecidos son sin incluir los impuestos generados por las mismas ventas y van de acuerdo con la siguiente tabla:</p>\r\n\r\n<table>\r\n	<thead>\r\n		<tr>\r\n			<th>Tipo de Membres&iacute;a</th>\r\n			<th>Costo Mensual con Link de Referido FTX Live</th>\r\n			<th>Comisi&oacute;n mensual para el afiliado FTX Live</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Suscripci&oacute;n mensual Membres&iacute;a del VER<br />\r\n			(con link de referencia FTX Live)</td>\r\n			<td>$ 9.99 / mes</td>\r\n			<td>$ 2.99 / mes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Suscripci&oacute;n mensual Membres&iacute;a del DAR<br />\r\n			(con link de referencia FTX Live)</td>\r\n			<td>$ 19.99 / mes</td>\r\n			<td>$ 5.99 / mes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Suscripci&oacute;n mensual Membres&iacute;a del GANAR<br />\r\n			(con link de referencia FTX Live)</td>\r\n			<td>$ 29.99 / mes</td>\r\n			<td>$ 8.99 / mes</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, '2021-04-19 15:25:49', '2021-04-19 15:25:49'),
(47, 5, '2.- Comisión residual anual', '<p>La comisi&oacute;n residual anual consiste en el monto que recibe el afiliado de FTX Live, por la venta de una Suscripci&oacute;n concluida a trav&eacute;s de uno de sus enlaces de patrocinio entre FTX Live y un nuevo suscriptor. La comisi&oacute;n se generar&aacute; en cada pago de la Suscripci&oacute;n elegida por parte del nuevo suscriptor hasta su terminaci&oacute;n. Por lo tanto, el Socio FTX Live seguir&aacute; recibiendo la comisi&oacute;n hasta que el afiliado referido deje de pagar su membres&iacute;a.<br />\r\n<br />\r\nLa tasa de comisi&oacute;n del Afiliado de FTX Live se establece en el 30% de la facturaci&oacute;n anual, solo de sus ventas efectivas, sin incluir los impuestos generados por las mismas, de acuerdo con la siguiente tabla:</p>\r\n\r\n<table>\r\n	<thead>\r\n		<tr>\r\n			<th>Tipo de Membres&iacute;a</th>\r\n			<th>Costo con Link de Referido FTX Live</th>\r\n			<th>Comisi&oacute;n mensual para el afiliado FTX Live</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Suscripci&oacute;n mensual Membres&iacute;a del VER<br />\r\n			(con link de referencia FTX Live)</td>\r\n			<td>$ 100 por a&ntilde;o</td>\r\n			<td>$ 30 por a&ntilde;o</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Suscripci&oacute;n mensual Membres&iacute;a del DAR<br />\r\n			(con link de referencia FTX Live)</td>\r\n			<td>$ 220 por a&ntilde;o</td>\r\n			<td>$ 66 por a&ntilde;o</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Suscripci&oacute;n mensual Membres&iacute;a del GANAR<br />\r\n			(con link de referencia FTX Live)</td>\r\n			<td>$ 340 por a&ntilde;o</td>\r\n			<td>$ 102 por a&ntilde;o</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, '2021-04-19 15:26:05', '2021-04-19 15:26:05'),
(48, 5, '3.- Fechas de pago', '<p>Todas las comisiones son acumulativas y se especifica que por est&aacute;ndar de calidad y procesos administrativos internos, los pagos de comisiones por las ventas efectivas con links de referidos se generar&aacute;n dentro de los 7 primeros d&iacute;as posteriores al mes consiguiente de sus registros, es decir:</p>\r\n\r\n<table>\r\n	<thead>\r\n		<tr>\r\n			<th>Ejemplos</th>\r\n			<th>Tipo de Membres&iacute;a Adquirida</th>\r\n			<th>Tipo de Suscripci&oacute;n</th>\r\n			<th>Costo de la Membres&iacute;a</th>\r\n			<th>Registros realizados de compras efectivas y pagos de nuevos afiliados con link de referido FTX Live</th>\r\n			<th>Monto de Comisi&oacute;n</th>\r\n			<th>Fecha de Pago de Comisiones</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>VER</td>\r\n			<td>MENSUAL</td>\r\n			<td>$ 9.99 USD</td>\r\n			<td>Del 1 al 30 de Enero</td>\r\n			<td>Pago mensual $ 2.99 USD</td>\r\n			<td>Entre el 5 y 7 de Febrero</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td>DAR</td>\r\n			<td>ANUAL</td>\r\n			<td>1 solo cobro anual $ 340 USD</td>\r\n			<td>D&iacute;a: 12 de Agosto</td>\r\n			<td>1 solo pago anual $ 102 USD</td>\r\n			<td>Entre el 5 y 7 de Septiembre</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, '2021-04-19 15:26:18', '2021-04-19 15:26:18'),
(49, 5, '4.- Límites de comisiones', '<p>Las comisiones de todos los afiliados de FTX Live est&aacute;n delimitadas al 30% de la facturaci&oacute;n total de sus ventas efectivas y confirmadas a trav&eacute;s del link de referencia y configuraci&oacute;n de numero de afiliaci&oacute;n, excluidos los impuestos generados por FTX Live durante el mes.<br />\r\nPara el calculo de comisiones se tomar&aacute; en consideraci&oacute;n los siguientes criterios:</p>\r\n\r\n<table>\r\n	<thead>\r\n		<tr>\r\n			<th>Ejemplo</th>\r\n			<th>Tipo de Membres&iacute;a Adquirida</th>\r\n			<th>Tipo de Suscripci&oacute;n</th>\r\n			<th>Costo de la Membres&iacute;a</th>\r\n			<th>Fecha de Compra</th>\r\n			<th>Monto de Comisi&oacute;n</th>\r\n			<th>Medio de Pago</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>VER</td>\r\n			<td>MENSUAL</td>\r\n			<td>$ 9.99 USD</td>\r\n			<td>15-01-2021</td>\r\n			<td>$ 2.99 USD</td>\r\n			<td>Tarjeta de Cr&eacute;dito</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td>HACER</td>\r\n			<td>ANUAL</td>\r\n			<td>$ 450 USD</td>\r\n			<td>15-01-2021</td>\r\n			<td>$ 135 USD</td>\r\n			<td>Bitcoin</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, '2021-04-19 15:26:31', '2021-04-19 15:26:31'),
(50, 5, '5.- Reembolsos', '<p>Los reembolsos enumerados se generar&aacute;n directamente en la billetera del afiliado FTX Live en un plazo m&aacute;ximo de 15 d&iacute;as a partir de la solicitud realizada por este &uacute;ltimo, sujeto a la presentaci&oacute;n de los documentos de respaldo pertinentes al an&aacute;lisis del caso.</p>', 1, '2021-04-19 15:26:43', '2021-04-19 15:26:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `legal_tabs`
--

CREATE TABLE `legal_tabs` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0 = Oculto. 1 = Visible',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `legal_tabs`
--

INSERT INTO `legal_tabs` (`id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Código Ético', 1, '2021-04-16 10:37:37', '2021-04-16 12:30:43'),
(2, 'Contrato del Instructor', 1, '2021-04-16 10:40:43', '2021-04-16 12:07:30'),
(3, 'Contrato del Afiliado', 1, '2021-04-16 10:41:08', '2021-04-16 12:07:30'),
(4, 'Condiciones Generales de Uso y Venta', 1, '2021-04-16 10:41:39', '2021-04-16 12:07:30'),
(5, 'Programa de Afiliados', 1, '2021-04-16 10:42:11', '2021-04-16 12:07:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lessons`
--

CREATE TABLE `lessons` (
  `id` int NOT NULL,
  `course_id` int NOT NULL,
  `subcategory_id` int DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `english_title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text,
  `url` varchar(255) NOT NULL,
  `english_url` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lessons`
--

INSERT INTO `lessons` (`id`, `course_id`, `subcategory_id`, `title`, `english_title`, `slug`, `description`, `url`, `english_url`, `created_at`, `updated_at`) VALUES
(2, 2, 4, 'Como vender mas', 'How to sell more', 'como-vender-mas', 'Grabación evento como vender mas', 'https://player.vimeo.com/video/525315663', 'https://player.vimeo.com/video/525315663', '2021-03-31 10:47:10', '2021-03-31 10:47:10'),
(3, 3, 4, 'Como vender por Internet', 'How to sell online', 'como-vender-por-internet', 'Aprenderás a través de tips como venderle a la mente', 'https://player.vimeo.com/video/525315663', 'https://player.vimeo.com/video/525315663', '2021-03-31 14:13:34', '2021-03-31 14:13:34'),
(4, 4, 4, 'Claves de un vendedor Exitoso', 'Keys to a successful seller', 'claves-de-un-vendedor-exitoso', 'Conoce a fondo como tener éxitos en tus ventas', 'https://player.vimeo.com/video/525315423', 'https://player.vimeo.com/video/525315423', '2021-03-31 14:20:15', '2021-03-31 14:20:15'),
(5, 5, 4, 'Aprende cómo llevar tus Finanzas', 'Learn how to manage your finances', 'aprende-como-llevar-tus-finanzas', 'Conocerás a fondo sobre como  llevar tus Finanzas', 'https://player.vimeo.com/video/525314838', 'https://player.vimeo.com/video/525314838', '2021-03-31 14:24:37', '2021-03-31 14:24:37'),
(6, 6, 4, 'Bolsa de Valores', 'Stock Exchange', 'bolsa-de-valores', 'Conocerás lo relacionado a la Bolsa de Valores', 'https://player.vimeo.com/video/525314838', 'https://player.vimeo.com/video/525314838', '2021-03-31 14:33:53', '2021-03-31 14:33:53'),
(7, 7, 4, 'Cómo tomar decisiones Financieras', 'How to make financial decisions', 'como-tomar-decisiones-financieras', 'Aprenderás como ir evolucionando', 'https://player.vimeo.com/video/525314690', 'https://player.vimeo.com/video/525314690', '2021-03-31 14:37:58', '2021-03-31 14:37:58'),
(8, 8, 4, 'Aprende cómo tomar decisiones para ser un buen Líder', 'Learn how to make decisions to be a good Leader', 'aprende-como-tomar-decisiones-para-ser-un-buen-lider', 'Como ser un buen Líder', 'https://player.vimeo.com/video/525301809', 'https://player.vimeo.com/video/525301809', '2021-03-31 15:40:00', '2021-03-31 15:40:00'),
(9, 9, 4, 'Como se construye el liderazgo en un equipo', 'How to build leadership in a team', 'como-se-construye-el-liderazgo-en-un-equipo', 'Como se construye un Liderazgo en equipo', 'https://player.vimeo.com/video/525301622', 'https://player.vimeo.com/video/525301622', '2021-03-31 15:43:54', '2021-03-31 15:43:54'),
(10, 10, 4, 'Liderazgo efectivo en pleno Siglo 21', 'Effective leadership in the 21st century', 'liderazgo-efectivo-en-pleno-siglo-21', 'Liderazgo en pleno siglo 21', 'https://player.vimeo.com/video/525301984', 'https://player.vimeo.com/video/525301984', '2021-03-31 15:48:55', '2021-03-31 15:48:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lessons_users`
--

CREATE TABLE `lessons_users` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `lesson_id` int UNSIGNED NOT NULL,
  `course_id` int UNSIGNED NOT NULL,
  `status` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lessons_users`
--

INSERT INTO `lessons_users` (`id`, `user_id`, `lesson_id`, `course_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 3, 1, '2021-03-31 15:11:34', '2021-03-31 15:56:37'),
(2, 1, 4, 4, 1, '2021-03-31 15:12:02', '2021-03-31 15:57:26'),
(3, 1, 2, 2, 1, '2021-03-31 15:29:43', '2021-03-31 15:55:09'),
(4, 1, 8, 8, 1, '2021-03-31 15:49:36', '2021-03-31 15:49:36'),
(5, 1, 9, 9, 1, '2021-03-31 15:50:09', '2021-03-31 15:50:09'),
(6, 1, 10, 10, 1, '2021-03-31 15:50:37', '2021-03-31 15:50:37'),
(7, 1, 7, 7, 1, '2021-03-31 15:51:15', '2021-03-31 15:51:15'),
(8, 1, 6, 6, 1, '2021-03-31 15:52:06', '2021-03-31 15:58:25'),
(9, 1, 5, 5, 1, '2021-03-31 15:52:47', '2021-04-22 17:02:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `linkpagos`
--

CREATE TABLE `linkpagos` (
  `id` int NOT NULL,
  `iduser` int NOT NULL,
  `titulo` varchar(250) NOT NULL,
  `archivo` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `memberships`
--

CREATE TABLE `memberships` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `price_annual` double NOT NULL DEFAULT '0',
  `descuento` double NOT NULL DEFAULT '0',
  `discount_annual` double NOT NULL DEFAULT '0',
  `ganancia` double NOT NULL DEFAULT '0',
  `streamings` int DEFAULT '0',
  `type` varchar(20) NOT NULL DEFAULT 'monthly',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `memberships`
--

INSERT INTO `memberships` (`id`, `name`, `image`, `price`, `price_annual`, `descuento`, `discount_annual`, `ganancia`, `streamings`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Ver', 'default.jpg', 25, 200, 9.99, 100, 30, 2, 'monthly', '2020-09-29 18:39:11', '2020-12-30 19:49:29'),
(2, 'Dar', 'default.jpg', 50, 250, 19.99, 220, 30, 4, 'monthly', '2020-09-29 18:39:11', '2020-09-29 18:39:11'),
(3, 'Ganar', 'default.jpg', 100, 400, 29.99, 340, 30, 6, 'monthly', '2020-09-29 18:40:16', '2020-09-29 18:40:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `id` int NOT NULL,
  `inicio` text,
  `actualizar` text,
  `registro` text,
  `registro_cliente` text,
  `red_usuario` text,
  `transacciones` text,
  `billetera` text,
  `calendario` text,
  `informes` text,
  `prospeccion` text,
  `correos` text,
  `tickets` text,
  `ranking` text,
  `tienda` text,
  `herramientas` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`id`, `inicio`, `actualizar`, `registro`, `registro_cliente`, `red_usuario`, `transacciones`, `billetera`, `calendario`, `informes`, `prospeccion`, `correos`, `tickets`, `ranking`, `tienda`, `herramientas`, `created_at`, `updated_at`) VALUES
(1, '{\"activo\":1}', '{\"activo\":1}', '{\"activo\":1}', '{\"activo\":1}', '{\"activo\":1,\"usuario\":1,\"cliente\":1,\"directos\":1,\"red\":1}', '{\"activo\":1,\"personales\":1,\"red\":1,\"directos\":0,\"link\":1}', '{\"activo\":1,\"billetera\":1,\"transferencia\":1,\"corte\":1,\"canje\":1}', '{\"activo\":1}', '{\"activo\":1,\"activacion\":1,\"comisiones\":1,\"liquidacion\":1,\"repor_comisiones\":1,\"afiliados\":1}', '{\"activo\":1}', '{\"activo\":1}', '{\"activo\":1,\"mios\":1,\"generar\":1}', '{\"activo\":1}', '{\"activo\":1,\"productos\":1,\"bancaria\":1,\"pagos\":1,\"lista_pagos\":1,\"paypal\":1,\"paga_paypal\":1}', '{\"activo\":1,\"documentos\":1,\"articulos\":1,\"notas\":1,\"activacion_correos\":1}', NULL, '0000-00-00 00:00:00'),
(2, '{\"activo\":\"1\"}', '{\"activo\":\"1\"}', '{\"activo\":\"1\"}', '{\"activo\":\"1\"}', '{\"activo\":\"1\",\"usuario\":\"1\",\"cliente\":\"1\",\"directos\":\"1\",\"red\":\"1\"}', '{\"activo\":\"1\",\"personales\":\"1\",\"red\":\"1\",\"link\":\"1\"}', '{\"activo\":\"1\",\"billetera\":\"1\",\"transferencia\":\"1\",\"corte\":\"1\",\"canje\":\"1\"}', '{\"activo\":\"1\"}', '{\"activo\":\"1\",\"activacion\":\"1\",\"comisiones\":\"1\",\"liquidacion\":\"1\",\"repor_comisiones\":\"1\",\"afiliados\":\"1\"}', '{\"activo\":\"1\"}', '{\"activo\":\"1\"}', '{\"activo\":\"1\",\"generar\":\"1\",\"mios\":\"1\"}', '{\"activo\":\"1\"}', '{\"activo\":\"1\",\"productos\":\"1\",\"bancaria\":\"1\",\"pagos\":\"1\",\"lista_pagos\":\"1\",\"paypal\":\"1\",\"paga_paypal\":\"1\"}', '{\"activo\":\"1\",\"documentos\":\"1\",\"articulos\":\"1\",\"notas\":\"1\",\"activacion_correos\":\"1\"}', NULL, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulocomplementario`
--

CREATE TABLE `modulocomplementario` (
  `id` int NOT NULL,
  `contenido` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `monedadicional`
--

CREATE TABLE `monedadicional` (
  `id` int NOT NULL,
  `configuracion` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `monedas`
--

CREATE TABLE `monedas` (
  `id` int NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `simbolo` varchar(200) NOT NULL,
  `mostrar_a_d` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 o false - despue del monto, 1 o true - antes del monto',
  `principal` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `monedas`
--

INSERT INTO `monedas` (`id`, `nombre`, `simbolo`, `mostrar_a_d`, `principal`, `updated_at`) VALUES
(1, 'Dolar', '$', 0, 1, '2020-03-26 20:49:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE `notas` (
  `id` int NOT NULL,
  `iduser` int NOT NULL,
  `titulo` longtext NOT NULL,
  `contenido` longtext NOT NULL,
  `inicio` date NOT NULL,
  `fin` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notes`
--

CREATE TABLE `notes` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `streaming_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `notes`
--

INSERT INTO `notes` (`id`, `title`, `content`, `user_id`, `streaming_id`, `created_at`, `updated_at`) VALUES
(13, '', 'Hola libreta', 10138, 60, '2021-04-21 15:25:35', '2021-04-21 15:25:35'),
(14, 'prueba de notas', 'blablabla', 10137, 60, '2021-04-21 15:25:39', '2021-04-21 15:25:39'),
(15, 'hola', 'hola', 10138, 60, '2021-04-21 15:25:41', '2021-04-21 15:25:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificacion_tickets`
--

CREATE TABLE `notificacion_tickets` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `user` varchar(250) NOT NULL,
  `ticket` varchar(250) NOT NULL,
  `contenido` varchar(250) NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notifications`
--

CREATE TABLE `notifications` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `notification_type` varchar(5) DEFAULT NULL,
  `date` date NOT NULL,
  `route` varchar(200) NOT NULL,
  `description` varchar(255) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `calendario` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `offers_live`
--

CREATE TABLE `offers_live` (
  `id` int NOT NULL,
  `event_id` int DEFAULT NULL,
  `title` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `url_resource` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `offers_live`
--

INSERT INTO `offers_live` (`id`, `event_id`, `title`, `price`, `url_resource`, `created_at`, `updated_at`) VALUES
(1, 60, 'Promo Lanzamiento Membresia Fundador', 1000, 'offer_60_1619030101.png', '2021-04-21 15:35:01', '2021-04-21 15:35:01'),
(2, 61, 'Oferta 1', 20, 'offer_61_1619191492.png', '2021-04-23 12:24:52', '2021-04-23 12:24:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `offers_users`
--

CREATE TABLE `offers_users` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `offer_id` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opciones_select`
--

CREATE TABLE `opciones_select` (
  `id` int NOT NULL,
  `idselect` int NOT NULL,
  `valor` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `opciones_select`
--

INSERT INTO `opciones_select` (`id`, `idselect`, `valor`, `updated_at`) VALUES
(1, 3, 'M', '2019-01-08 02:13:50'),
(2, 3, 'F', '2019-01-08 02:13:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `optioncarritos`
--

CREATE TABLE `optioncarritos` (
  `id` int NOT NULL,
  `nombre` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `medio_pago` int NOT NULL COMMENT '0- otros metodos de pago 1- billetera',
  `activo` int DEFAULT NULL,
  `link` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagocarritos`
--

CREATE TABLE `pagocarritos` (
  `id` int NOT NULL,
  `name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iduser` int DEFAULT NULL,
  `idcompra` int NOT NULL,
  `metodo` int NOT NULL,
  `nombre` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `id` int NOT NULL,
  `iduser` bigint NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `monto` float NOT NULL,
  `fechasoli` date NOT NULL,
  `fechapago` date DEFAULT NULL,
  `metodo` varchar(200) NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tipopago` text,
  `descuento` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

CREATE TABLE `paises` (
  `id` int NOT NULL,
  `nombre` text NOT NULL,
  `idface` int NOT NULL,
  `abbreviation` varchar(5) DEFAULT NULL,
  `event` tinyint(1) NOT NULL COMMENT 'Si está disponible o no para la configuración horaria de los eventos',
  `operation` varchar(10) NOT NULL,
  `quantity` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `paises`
--

INSERT INTO `paises` (`id`, `nombre`, `idface`, `abbreviation`, `event`, `operation`, `quantity`, `updated_at`) VALUES
(1, 'United States', 1, 'EU', 1, 'subtract', 6, '0000-00-00 00:00:00'),
(2, 'Canada', 2, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(3, 'Afghanistan', 3, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(4, 'Albania', 4, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(5, 'Algeria', 5, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(6, 'American Samoa', 6, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(7, 'Andorra', 7, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(8, 'Angola', 8, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(9, 'Anguilla', 9, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(10, 'Antartica', 10, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(11, 'Antigua and/or Barbuda', 11, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(12, 'Argentina', 12, 'AR', 1, 'subtract', 3, '0000-00-00 00:00:00'),
(13, 'Armenia', 13, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(14, 'Aruba', 14, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(15, 'Australia', 15, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(16, 'Austria', 16, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(17, 'Azerbaijan', 17, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(18, 'Bahamas', 18, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(19, 'Bahrain', 19, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(20, 'Bangladesh', 20, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(21, 'Barbados', 21, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(22, 'Belarus', 22, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(23, 'Belgium', 23, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(24, 'Belize', 24, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(25, 'Benin', 25, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(26, 'Bermuda', 26, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(27, 'Bhutan', 27, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(28, 'Bolivia', 28, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(29, 'Bosnia and Herzegovina', 29, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(30, 'Botswana', 30, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(31, 'Bouvet Island', 31, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(32, 'Brazil', 32, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(34, 'Brunei Darussalam', 34, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(35, 'Bulgaria', 35, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(36, 'Burkina Faso', 36, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(37, 'Burundi', 37, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(38, 'Cambodia', 38, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(39, 'Cameroon', 39, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(40, 'Cape Verde', 40, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(41, 'Cayman Islands', 41, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(42, 'Central African Republic', 42, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(43, 'Chad', 43, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(44, 'Chile', 44, 'CH', 1, 'subtract', 3, '0000-00-00 00:00:00'),
(45, 'China', 45, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(46, 'Christmas Island', 46, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(47, 'Cocos (Keeling) Islands', 47, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(48, 'Colombia', 48, 'CO', 1, 'subtract', 5, '0000-00-00 00:00:00'),
(49, 'Comoros', 49, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(50, 'Congo', 50, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(51, 'Cook Islands', 51, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(52, 'Costa Rica', 52, 'CR', 1, 'subtract', 6, '0000-00-00 00:00:00'),
(53, 'Croatia (Hrvatska)', 53, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(54, 'Cuba', 54, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(55, 'Cyprus', 55, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(56, 'Czech Republic', 56, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(57, 'Denmark', 57, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(58, 'Djibouti', 58, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(59, 'Dominica', 59, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(60, 'Dominican Republic', 60, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(61, 'East Timor', 61, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(62, 'Ecuador', 62, 'EC', 1, 'subtract', 5, '0000-00-00 00:00:00'),
(63, 'Egypt', 63, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(64, 'El Salvador', 64, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(65, 'Equatorial Guinea', 65, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(66, 'Eritrea', 66, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(67, 'Estonia', 67, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(68, 'Ethiopia', 68, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(69, 'Falkland Islands (Malvinas)', 69, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(70, 'Faroe Islands', 70, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(71, 'Fiji', 71, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(72, 'Finland', 72, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(73, 'France', 73, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(74, 'France, Metropolitan', 74, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(75, 'French Guiana', 75, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(76, 'French Polynesia', 76, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(77, 'French Southern Territories', 77, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(78, 'Gabon', 78, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(79, 'Gambia', 79, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(80, 'Georgia', 80, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(81, 'Germany', 81, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(82, 'Ghana', 82, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(83, 'Gibraltar', 83, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(84, 'Greece', 84, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(85, 'Greenland', 85, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(86, 'Grenada', 86, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(87, 'Guadeloupe', 87, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(88, 'Guam', 88, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(89, 'Guatemala', 89, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(90, 'Guinea', 90, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(91, 'Guinea-Bissau', 91, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(92, 'Guyana', 92, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(93, 'Haiti', 93, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(94, 'Heard and Mc Donald Islands', 94, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(95, 'Honduras', 95, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(96, 'Hong Kong', 96, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(97, 'Hungary', 97, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(98, 'Iceland', 98, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(99, 'India', 99, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(100, 'Indonesia', 100, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(101, 'Iran (Islamic Republic of)', 101, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(102, 'Iraq', 102, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(103, 'Ireland', 103, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(104, 'Israel', 104, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(105, 'Italy', 105, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(106, 'Ivory Coast', 106, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(107, 'Jamaica', 107, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(108, 'Japan', 108, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(109, 'Jordan', 109, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(110, 'Kazakhstan', 110, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(111, 'Kenya', 111, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(112, 'Kiribati', 112, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(113, 'Korea, Democratic People\'s Republic of', 113, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(114, 'Korea, Republic of', 114, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(115, 'Kosovo', 115, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(116, 'Kuwait', 116, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(117, 'Kyrgyzstan', 117, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(118, 'Lao People\'s Democratic Republic', 118, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(119, 'Latvia', 119, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(120, 'Lebanon', 120, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(121, 'Lesotho', 121, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(122, 'Liberia', 122, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(123, 'Libyan Arab Jamahiriya', 123, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(124, 'Liechtenstein', 124, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(125, 'Lithuania', 125, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(126, 'Luxembourg', 126, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(127, 'Macau', 127, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(128, 'Macedonia', 128, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(129, 'Madagascar', 129, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(130, 'Malawi', 130, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(131, 'Malaysia', 131, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(132, 'Maldives', 132, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(133, 'Mali', 133, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(134, 'Malta', 134, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(135, 'Marshall Islands', 135, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(136, 'Martinique', 136, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(137, 'Mauritania', 137, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(138, 'Mauritius', 138, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(139, 'Mayotte', 139, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(140, 'México', 140, 'MEX', 1, 'subtract', 3, '0000-00-00 00:00:00'),
(141, 'Micronesia, Federated States of', 141, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(142, 'Moldova, Republic of', 142, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(143, 'Monaco', 143, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(144, 'Mongolia', 144, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(145, 'Montenegro', 145, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(146, 'Montserrat', 146, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(147, 'Morocco', 147, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(148, 'Mozambique', 148, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(149, 'Myanmar', 149, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(150, 'Namibia', 150, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(151, 'Nauru', 151, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(152, 'Nepal', 152, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(153, 'Netherlands', 153, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(154, 'Netherlands Antilles', 154, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(155, 'New Caledonia', 155, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(156, 'New Zealand', 156, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(157, 'Nicaragua', 157, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(158, 'Niger', 158, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(159, 'Nigeria', 159, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(160, 'Niue', 160, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(161, 'Norfork Island', 161, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(162, 'Northern Mariana Islands', 162, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(163, 'Norway', 163, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(164, 'Oman', 164, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(165, 'Pakistan', 165, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(166, 'Palau', 166, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(167, 'Panama', 167, 'PA', 1, 'subtract', 5, '0000-00-00 00:00:00'),
(168, 'Papua New Guinea', 168, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(169, 'Paraguay', 169, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(170, 'Peru', 170, 'PE', 1, 'subtract', 5, '0000-00-00 00:00:00'),
(171, 'Philippines', 171, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(172, 'Pitcairn', 172, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(173, 'Poland', 173, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(174, 'Portugal', 174, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(175, 'Puerto Rico', 175, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(176, 'Qatar', 176, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(177, 'Reunion', 177, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(178, 'Romania', 178, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(179, 'Russian Federation', 179, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(180, 'Rwanda', 180, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(181, 'Saint Kitts and Nevis', 181, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(182, 'Saint Lucia', 182, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(183, 'Saint Vincent and the Grenadines', 183, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(184, 'Samoa', 184, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(185, 'San Marino', 185, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(186, 'Sao Tome and Principe', 186, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(187, 'Saudi Arabia', 187, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(188, 'Senegal', 188, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(189, 'Serbia', 189, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(190, 'Seychelles', 190, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(191, 'Sierra Leone', 191, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(192, 'Singapore', 192, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(193, 'Slovakia', 193, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(194, 'Slovenia', 194, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(195, 'Solomon Islands', 195, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(196, 'Somalia', 196, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(197, 'South Africa', 197, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(198, 'South Georgia South Sandwich Islands', 198, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(199, 'Spain', 199, 'ES', 1, 'add', 2, '0000-00-00 00:00:00'),
(200, 'Sri Lanka', 200, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(201, 'St. Helena', 201, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(202, 'St. Pierre and Miquelon', 202, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(203, 'Sudan', 203, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(204, 'Suriname', 204, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(205, 'Svalbarn and Jan Mayen Islands', 205, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(206, 'Swaziland', 206, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(207, 'Sweden', 207, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(208, 'Switzerland', 208, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(209, 'Syrian Arab Republic', 209, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(210, 'Taiwan', 210, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(211, 'Tajikistan', 211, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(212, 'Tanzania, United Republic of', 212, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(213, 'Thailand', 213, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(214, 'Togo', 214, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(215, 'Tokelau', 215, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(216, 'Tonga', 216, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(217, 'Trinidad and Tobago', 217, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(218, 'Tunisia', 218, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(219, 'Turkey', 219, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(220, 'Turkmenistan', 220, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(221, 'Turks and Caicos Islands', 221, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(222, 'Tuvalu', 222, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(223, 'Uganda', 223, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(224, 'Ukraine', 224, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(225, 'United Arab Emirates', 225, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(226, 'United Kingdom', 226, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(227, 'United States minor outlying islands', 227, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(228, 'Uruguay', 228, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(229, 'Uzbekistan', 229, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(230, 'Vanuatu', 230, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(231, 'Vatican City State', 231, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(232, 'Venezuela', 232, 'VE', 1, 'subtract', 4, '0000-00-00 00:00:00'),
(233, 'Vietnam', 233, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(238, 'Yemen', 238, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(239, 'Yugoslavia', 239, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(240, 'Zaire', 240, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(241, 'Zambia', 241, NULL, 0, '', 0, '0000-00-00 00:00:00'),
(242, 'Zimbawe', 242, NULL, 0, '', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pop`
--

CREATE TABLE `pop` (
  `id` int NOT NULL,
  `titulo` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contenido` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `activado` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pop`
--

INSERT INTO `pop` (`id`, `titulo`, `contenido`, `activado`, `updated_at`) VALUES
(1, 'Bienvenidaa', '<div style=\"text-align: center;\"><iframe frameborder=\"0\" src=\"//www.youtube.com/embed/F3s4rtcy1Ps\" width=\"640\" height=\"360\" class=\"note-video-clip\"></iframe><br></div>', 1, '2020-12-30 17:54:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promotions`
--

CREATE TABLE `promotions` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `promotions`
--

INSERT INTO `promotions` (`id`, `title`, `description`, `banner`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Prueba1', '<p>1</p>', '1.png', 0, '2020-12-30 19:50:44', '2021-01-07 16:02:00'),
(2, 'Promo test', '<p>promo test</p>', '2.jpg', 1, '2021-02-09 16:48:04', '2021-02-09 16:48:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prospeccion`
--

CREATE TABLE `prospeccion` (
  `id` int NOT NULL,
  `iduser` int NOT NULL,
  `persona_natural` varchar(250) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `direccion` longtext NOT NULL,
  `ciudad` varchar(250) NOT NULL,
  `estado` varchar(250) NOT NULL,
  `user_email` varchar(250) DEFAULT NULL,
  `local` varchar(250) DEFAULT NULL,
  `zip` int DEFAULT NULL,
  `pais` varchar(250) NOT NULL,
  `telefono` varchar(250) NOT NULL,
  `website` varchar(250) DEFAULT NULL,
  `vap` varchar(250) DEFAULT NULL,
  `referred_id` int NOT NULL,
  `position_id` int NOT NULL,
  `ladomatriz` varchar(250) DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `tipo` varchar(250) DEFAULT NULL,
  `comentario` longtext,
  `observaciones` longtext,
  `perfil` longtext,
  `envioCorreo` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puntos`
--

CREATE TABLE `puntos` (
  `id` int NOT NULL,
  `iduser` int NOT NULL,
  `idcompra` int NOT NULL,
  `usuario` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `concepto` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `puntos` double NOT NULL,
  `cantidad` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puntosbonos`
--

CREATE TABLE `puntosbonos` (
  `id` int NOT NULL,
  `iduser` int DEFAULT NULL,
  `usuario` varchar(250) DEFAULT NULL,
  `concepto` varchar(250) DEFAULT NULL,
  `puntos` double DEFAULT NULL,
  `tipo` varchar(250) DEFAULT NULL COMMENT '1 - puntos que se pueden descontar 2 - puntos que se almacenan 3 - puntos descontados del 1',
  `lado` varchar(10) DEFAULT NULL,
  `balance` double DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `purchases`
--

CREATE TABLE `purchases` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `amount` double NOT NULL,
  `payment_method` varchar(100) NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `status` tinyint(1) NOT NULL,
  `link` int NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `purchases`
--

INSERT INTO `purchases` (`id`, `user_id`, `amount`, `payment_method`, `payment_id`, `date`, `status`, `link`, `created_at`, `updated_at`) VALUES
(18, 10127, 9.99, 'Billetera', '', '2021-01-15', 1, 1, '2021-01-15 13:09:48', '2021-01-15 13:09:48'),
(19, 10129, 9.99, 'Billetera', '', '2021-01-15', 1, 1, '2021-01-15 13:09:54', '2021-01-15 13:09:54'),
(20, 10128, 9.99, 'Billetera', '', '2021-01-15', 1, 1, '2021-01-15 13:09:54', '2021-01-15 13:09:54'),
(25, 10132, 100, 'Billetera', '', '2021-01-16', 1, 1, '2021-01-16 13:02:24', '2021-01-16 13:02:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `purchase_details`
--

CREATE TABLE `purchase_details` (
  `id` int NOT NULL,
  `purchase_id` int NOT NULL,
  `course_id` int DEFAULT NULL,
  `membership_id` int DEFAULT NULL,
  `membership_type` varchar(20) DEFAULT NULL,
  `offer_id` int DEFAULT NULL,
  `amount` double NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `purchase_details`
--

INSERT INTO `purchase_details` (`id`, `purchase_id`, `course_id`, `membership_id`, `membership_type`, `offer_id`, `amount`, `created_at`, `updated_at`) VALUES
(91, 18, NULL, 1, 'Mensual', NULL, 9.99, '2021-01-15 13:09:48', '2021-01-15 13:09:48'),
(92, 19, NULL, 1, 'Mensual', NULL, 9.99, '2021-01-15 13:09:54', '2021-01-15 13:09:54'),
(93, 20, NULL, 1, 'Mensual', NULL, 9.99, '2021-01-15 13:09:54', '2021-01-15 13:09:54'),
(98, 25, NULL, 1, 'Anual', NULL, 100, '2021-01-16 13:02:24', '2021-01-16 13:02:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pushs`
--

CREATE TABLE `pushs` (
  `id` int NOT NULL,
  `iduser` int DEFAULT NULL,
  `titulo` varchar(250) DEFAULT NULL,
  `body` varchar(250) DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `qr`
--

CREATE TABLE `qr` (
  `id` int NOT NULL,
  `contenido` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `questions`
--

CREATE TABLE `questions` (
  `id` int NOT NULL,
  `evaluation_id` int NOT NULL,
  `order` int NOT NULL,
  `question` text NOT NULL,
  `answer_1` text NOT NULL,
  `answer_2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `answer_3` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `answer_4` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `correct_answer` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ratings`
--

CREATE TABLE `ratings` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `course_id` int NOT NULL,
  `comment` text,
  `points` int NOT NULL,
  `date` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `redes_sociales`
--

CREATE TABLE `redes_sociales` (
  `id` int NOT NULL,
  `link` text NOT NULL,
  `tipo` int DEFAULT NULL COMMENT '1- glyphicon 2-imagen',
  `imagen` text NOT NULL,
  `color` varchar(250) DEFAULT NULL,
  `nombre` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `redes_sociales`
--

INSERT INTO `redes_sociales` (`id`, `link`, `tipo`, `imagen`, `color`, `nombre`, `updated_at`) VALUES
(2, 'https://web.whatsapp.com/', 1, 'fab fa-whatsapp', '00a65a', 'whatsapp', '2020-09-21 21:15:51'),
(3, 'https://www.facebook.com/sharer/sharer.php?u=https%3A//ftxlive.com/office/', 1, 'fab fa-facebook-f', '3c8dbc', 'Facebook', '2020-12-02 06:22:00'),
(4, 'https://twitter.com/intent/tweet?text=https%3A//ftxlive.com/office/', 1, 'fab fa-twitter', 'ADD8E6', 'twitter', '2020-12-02 06:22:28'),
(13, 'https://www.linkedin.com/shareArticle?mini=true&url=https%3A//ftxlive.com/office/&title=FTX%20Live&summary=&source=', 1, 'fab fa-linkedin', '007bb5', 'Linkedin', '2020-12-02 06:22:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resources`
--

CREATE TABLE `resources` (
  `id` int NOT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `icon` varchar(200) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `resources`
--

INSERT INTO `resources` (`id`, `title`, `icon`, `status`) VALUES
(1, 'Configuración', 'settings.svg', '1'),
(2, 'Participantes', 'person.svg', '1'),
(3, 'Chat', 'comment.svg', '1'),
(4, 'Encuesta', 'lista.svg', '1'),
(5, 'Presentación', 'presentacion.svg', '1'),
(6, 'Vídeo', 'video.svg', '1'),
(7, 'Archivos', 'documentos.svg', '1'),
(8, 'Ofertas', 'descuento.svg', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `referidos` int DEFAULT '0',
  `refeact` int DEFAULT '0',
  `referidosd` int DEFAULT NULL,
  `referidosInd` int DEFAULT NULL,
  `compras` float DEFAULT '0',
  `grupal` float DEFAULT NULL COMMENT 'puntos grupales',
  `comisiones` float DEFAULT '0',
  `bonos` float DEFAULT '0',
  `niveles` int DEFAULT '0',
  `rolprevio` int DEFAULT NULL,
  `acepta_comision` tinyint(1) DEFAULT '1',
  `rolnecesario` int DEFAULT NULL,
  `rolnecesariocant` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `referidos`, `refeact`, `referidosd`, `referidosInd`, `compras`, `grupal`, `comisiones`, `bonos`, `niveles`, `rolprevio`, `acepta_comision`, `rolnecesario`, `rolnecesariocant`, `created_at`, `updated_at`) VALUES
(0, 'administrador', 0, 0, NULL, NULL, 0, NULL, 0, 0, 0, NULL, 1, NULL, NULL, NULL, NULL),
(1, 'moderador', 0, 0, NULL, NULL, 0, NULL, 0, 0, 0, NULL, 1, NULL, NULL, NULL, NULL),
(2, 'mentor', 0, 0, NULL, NULL, 0, NULL, 0, 0, 0, NULL, 1, NULL, NULL, NULL, NULL),
(3, 'cliente', 0, 0, NULL, NULL, 0, NULL, 0, 0, 0, NULL, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schedule`
--

CREATE TABLE `schedule` (
  `id` int UNSIGNED NOT NULL,
  `event_id` int UNSIGNED DEFAULT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguridad`
--

CREATE TABLE `seguridad` (
  `id` int NOT NULL,
  `titulo` text,
  `contenido` longtext,
  `concepto` text,
  `tipo` int DEFAULT '1' COMMENT '1 - una ves al dia 2 - siempre 3 - cada treinta dias ',
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `seguridad`
--

INSERT INTO `seguridad` (`id`, `titulo`, `contenido`, `concepto`, `tipo`, `status`, `updated_at`) VALUES
(1, NULL, 'hola @nombre @correo le hemos enviado un codigo de seguridad para verificar que es usted su codigo es: @codigo', NULL, 1, 0, '2020-05-10 21:38:37'),
(2, 'Codigo Qr', NULL, 'Al activar el codigo Qr puede usar google autenticador, Authy o cualquier otra aplicacion para escanear los codigo qr este sera requerido al iniciar sesion\r\n', 1, 0, '2020-05-11 01:09:21'),
(3, 'Verificacion por correo', 'Hola @nombre @correo se a enviado un codigo para verificar que es usted su codigo es: @codigo', 'Se envia un codigo al correo el cual debera ingresar al iniciar sesion ', 1, 0, '2020-05-11 02:17:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `semiautobinario`
--

CREATE TABLE `semiautobinario` (
  `id` int NOT NULL,
  `usuario` varchar(250) DEFAULT NULL,
  `iduser` int DEFAULT NULL,
  `idcomision` int DEFAULT NULL,
  `total` double DEFAULT NULL,
  `correo` varchar(250) DEFAULT NULL,
  `status` varchar(2) NOT NULL DEFAULT '0',
  `lado` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sesions`
--

CREATE TABLE `sesions` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `fecha` date NOT NULL,
  `ip` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `actividad` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settingactivacion`
--

CREATE TABLE `settingactivacion` (
  `id` int NOT NULL,
  `tipoactivacion` tinyint NOT NULL DEFAULT '0' COMMENT '1 - producto, 2 - dinero',
  `tiporecompra` tinyint DEFAULT '0' COMMENT '1 - producto, 2 - dinero',
  `requisitoactivacion` float NOT NULL,
  `requisitorecompra` float DEFAULT NULL,
  `desativar_usuarios` tinyint DEFAULT NULL COMMENT '0 - desactivar a fin de mes, 1 - desctivar despues de haber cumplido un mes en el sistema ',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `settingactivacion`
--

INSERT INTO `settingactivacion` (`id`, `tipoactivacion`, `tiporecompra`, `requisitoactivacion`, `requisitorecompra`, `desativar_usuarios`, `updated_at`) VALUES
(1, 2, 0, 0, NULL, NULL, '2020-03-26 20:49:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settingcliente`
--

CREATE TABLE `settingcliente` (
  `id` int NOT NULL,
  `cliente` tinyint(1) NOT NULL,
  `permiso` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `settingcliente`
--

INSERT INTO `settingcliente` (`id`, `cliente`, `permiso`, `updated_at`) VALUES
(1, 0, 0, '2020-03-26 20:49:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settingcomision`
--

CREATE TABLE `settingcomision` (
  `id` int NOT NULL,
  `niveles` int NOT NULL,
  `tipocomision` varchar(200) NOT NULL,
  `valorgeneral` float NOT NULL,
  `valordetallado` text NOT NULL,
  `tipopago` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tipotransferencia` tinyint(1) DEFAULT NULL COMMENT '0 - monto fijo 1 - monto por porcentaje',
  `comisiontransf` float DEFAULT NULL COMMENT 'esta es para el metodo de pago, es la comision por transferencia de dinero en la billetera',
  `bonoactivacion` longtext,
  `directos` tinyint(1) DEFAULT '1' COMMENT 'si solo los directos aceptan el bono de activacion',
  `tipobono` varchar(50) DEFAULT NULL,
  `primera_compra` tinyint(1) DEFAULT '1',
  `activacioncomision` tinyint(1) DEFAULT NULL COMMENT '1 - cobrar comision desde la fecha de activacion, 2 - cobrar comision desde inicio del mes'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `settingcomision`
--

INSERT INTO `settingcomision` (`id`, `niveles`, `tipocomision`, `valorgeneral`, `valordetallado`, `tipopago`, `updated_at`, `tipotransferencia`, `comisiontransf`, `bonoactivacion`, `directos`, `tipobono`, `primera_compra`, `activacioncomision`) VALUES
(1, 5, 'producto', 0, '[{\"idproductos\":12,\"comisiones\":[{\"nivel\":1,\"comision\":170},{\"nivel\":2,\"comision\":10},{\"nivel\":3,\"comision\":10},{\"nivel\":4,\"comision\":0},{\"nivel\":5,\"comision\":0}]},{\"idproductos\":28,\"comisiones\":[{\"nivel\":1,\"comision\":250},{\"nivel\":2,\"comision\":10},{\"nivel\":3,\"comision\":10},{\"nivel\":4,\"comision\":0},{\"nivel\":5,\"comision\":0}]},{\"idproductos\":29,\"comisiones\":[{\"nivel\":1,\"comision\":0},{\"nivel\":2,\"comision\":0},{\"nivel\":3,\"comision\":0},{\"nivel\":4,\"comision\":0},{\"nivel\":5,\"comision\":0}]}]', 'normal', '2020-03-26 21:47:34', NULL, NULL, '[{\"producto\":\"12\",\"bono\":\"170\",\"tipobono\":\"fijo\"},{\"producto\":\"600\",\"bono\":\"250\",\"tipobono\":\"fijo\"}]', 1, 'fijo', 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settingpagos`
--

CREATE TABLE `settingpagos` (
  `id` int NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `feed` float NOT NULL,
  `monto_min` float DEFAULT '0',
  `tipofeed` tinyint(1) NOT NULL COMMENT '0 - monto fijo 1 - porcentaje',
  `estado` tinyint(1) NOT NULL DEFAULT '0',
  `correo` tinyint(1) DEFAULT '0',
  `wallet` tinyint(1) DEFAULT '0',
  `datosbancarios` tinyint(1) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settingpermiso`
--

CREATE TABLE `settingpermiso` (
  `id` int NOT NULL,
  `iduser` int NOT NULL,
  `nameuser` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `cursos` tinyint NOT NULL,
  `nuevo_registro` tinyint DEFAULT '0',
  `red_usuario` tinyint DEFAULT '0',
  `vision_usuario` tinyint DEFAULT '0',
  `billetera` tinyint DEFAULT '0',
  `pago` tinyint DEFAULT '0',
  `informes` tinyint DEFAULT '0',
  `tickets` tinyint DEFAULT '0',
  `buzon` tinyint DEFAULT '0',
  `ranking` tinyint DEFAULT '0',
  `historial_actividades` tinyint DEFAULT '0',
  `email_marketing` tinyint DEFAULT '0',
  `administrar_redes` tinyint DEFAULT '0',
  `soporte` tinyint DEFAULT '0',
  `ajuste` tinyint DEFAULT '0',
  `herramienta` tinyint DEFAULT '0',
  `calendario` tinyint DEFAULT '0',
  `correos` tinyint DEFAULT '0',
  `prospeccion` tinyint DEFAULT '0',
  `puntos` tinyint DEFAULT '0',
  `binario` tinyint DEFAULT '0',
  `usuario` tinyint DEFAULT '0',
  `tienda` tinyint DEFAULT '0',
  `transacciones` tinyint DEFAULT '0',
  `usuarios` tinyint DEFAULT '0',
  `red` tinyint DEFAULT '0',
  `eventos` tinyint DEFAULT '0',
  `banners` tinyint(1) NOT NULL DEFAULT '0',
  `entradas` tinyint DEFAULT '0',
  `historialcomision` tinyint DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `settingpermiso`
--

INSERT INTO `settingpermiso` (`id`, `iduser`, `nameuser`, `cursos`, `nuevo_registro`, `red_usuario`, `vision_usuario`, `billetera`, `pago`, `informes`, `tickets`, `buzon`, `ranking`, `historial_actividades`, `email_marketing`, `administrar_redes`, `soporte`, `ajuste`, `herramienta`, `calendario`, `correos`, `prospeccion`, `puntos`, `binario`, `usuario`, `tienda`, `transacciones`, `usuarios`, `red`, `eventos`, `banners`, `entradas`, `historialcomision`, `updated_at`) VALUES
(1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-03-26 20:49:07'),
(10101, 10127, 'Maria P', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-01-15 10:38:10'),
(10102, 10128, 'ramonp', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-01-15 10:41:20'),
(10103, 10129, 'pietro1', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-01-15 10:41:39'),
(10104, 10131, 'tes001', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-01-16 09:34:24'),
(10105, 10132, 'noemy', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-01-16 11:00:29'),
(10106, 10133, 'prueba5000', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-01-26 12:16:56'),
(10107, 10134, 'Freddy', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-01-26 12:42:52'),
(10108, 10135, 'prueba6000', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-01-26 12:48:17'),
(10109, 10137, 'usuario1', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-04-10 09:22:27'),
(10110, 10138, 'usuario2', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-04-10 09:24:12'),
(10111, 10139, 'usuario3', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-04-10 09:26:10'),
(10112, 10140, 'usuario4', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-04-10 09:27:26'),
(10113, 10141, 'usuario5', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-04-10 09:28:28'),
(10114, 10142, 'usuario6', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-04-10 09:29:24'),
(10115, 10143, 'quattro', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-09-14 20:54:29'),
(10116, 10144, 'jgordo', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, '2021-10-04 19:27:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settingplantilla`
--

CREATE TABLE `settingplantilla` (
  `id` int NOT NULL,
  `titulo` varchar(200) DEFAULT NULL,
  `contenido` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `settingplantilla`
--

INSERT INTO `settingplantilla` (`id`, `titulo`, `contenido`, `updated_at`) VALUES
(1, 'Bienvenido', '<p>@nombre</p><p>@usuario</p><p>@idpatrocionio</p><p>@clave</p><p>@correo</p> <p>@Nafiliacion</p>', '2020-03-26 21:51:53'),
(2, 'Pagos', '<p>@nombrecompleto</p><p><span style=\"color: rgb(165, 42, 42);\">@correo</span></p><p><span style=\"color: rgb(165, 42, 42);\">@pago</span></p><p><span style=\"color: rgb(165, 42, 42);\">@usuario</span></p><p><span style=\"color: rgb(165, 42, 42);\">@idpatrocinio<br></span><br></p>', '2020-03-26 21:52:52'),
(3, 'Compra', '<p>@nombre</p><p>@correo</p><p>@datos</p><p>@fecha</p><p>@total</p>', '2020-03-26 21:53:42'),
(4, 'Compra', '<p>@nombre</p><p>@correo</p><p>@datos</p><p>@fecha</p><p>@total</p>', '2020-03-26 21:54:53'),
(5, 'Liquidación', '<p>@nombre</p><p>@correo</p><p>@datosbancarios</p><p>@fecha</p><p>@total</p>', '2020-03-26 21:55:48'),
(6, NULL, NULL, '0000-00-00 00:00:00'),
(8, 'Evento Agendado', NULL, '2020-11-18 11:45:20'),
(9, 'Live esta apunto de iniciar', NULL, '2020-11-18 11:45:29'),
(10, 'El live a iniciado', NULL, '2020-12-30 17:54:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE `settings` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'AIO System',
  `slogan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Uno para todo.',
  `name_styled` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'AIO <strong>System</strong>',
  `company_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `category_type` int DEFAULT NULL,
  `enable_register` tinyint(1) DEFAULT '1',
  `enable_auth_fb` tinyint(1) DEFAULT '0',
  `enable_auth_tw` tinyint(1) DEFAULT '0',
  `enable_auth_google` tinyint(1) DEFAULT '0',
  `version` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0.2.0',
  `keycode` int DEFAULT NULL,
  `logo` int DEFAULT '1',
  `rol_default` int DEFAULT '3',
  `status_web` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `referred_id_default` int NOT NULL DEFAULT '1',
  `referred_level_max` int NOT NULL DEFAULT '5',
  `edad_minino` int NOT NULL COMMENT 'edad minimo para ingresar al sistema',
  `licencia` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fecha_vencimiento` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `prefijo_wp` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_no_comision` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `activarBotones` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'permite activar los botones de transferencia, retiro, pago total y pago masivo',
  `activarCorreos` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `firma` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `limitar` int NOT NULL DEFAULT '0',
  `traductor` int DEFAULT '0',
  `recarga` int NOT NULL DEFAULT '0',
  `canje` int NOT NULL DEFAULT '0',
  `total_canje` double DEFAULT NULL,
  `estilo` int DEFAULT '1',
  `posicionamiento` int DEFAULT '0',
  `btc` int NOT NULL DEFAULT '0',
  `paypal` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `scriptpaypal` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `htmlpaypal` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `login` int NOT NULL DEFAULT '1',
  `registro` int NOT NULL DEFAULT '2',
  `colorfondo` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fff',
  `cololetras` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '333'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `settings`
--

INSERT INTO `settings` (`id`, `name`, `slogan`, `name_styled`, `company_name`, `company_email`, `site_email`, `description`, `category_type`, `enable_register`, `enable_auth_fb`, `enable_auth_tw`, `enable_auth_google`, `version`, `keycode`, `logo`, `rol_default`, `status_web`, `created_at`, `updated_at`, `referred_id_default`, `referred_level_max`, `edad_minino`, `licencia`, `fecha_vencimiento`, `prefijo_wp`, `id_no_comision`, `activarBotones`, `activarCorreos`, `firma`, `limitar`, `traductor`, `recarga`, `canje`, `total_canje`, `estilo`, `posicionamiento`, `btc`, `paypal`, `scriptpaypal`, `htmlpaypal`, `login`, `registro`, `colorfondo`, `cololetras`) VALUES
(1, 'FTX Live', '123456', 'FTX Live', NULL, NULL, 'soporte@shapinetwork.com', NULL, NULL, 1, 0, 0, 0, '0.2.0', NULL, 1, 3, 1, '2020-03-26 20:49:07', '2020-03-26 20:49:07', 1, 5, 18, 'TlRBM0lWSTVObGxFT1RSVkxETTNVRklzSXloU0t6TmdVaXN6S0ZjS1lBbz0=', 'MjAyMy0wNy0yOQ==', 'wp98_', '/assets/img/image_landing_1603228894.png', '{\"btn_transferencia\":1,\"btn_retiro\":1,\"btn_masivo\":1,\"btn_todo\":1,\"btn_liquida\":1,\"btn_monto\":1}', '{\"pago\":1,\"compra\":1,\"pc\":1,\"liquidacion\":1}', '<p>Empresa</p><p>Telefono</p><p>direccion</p>', 0, 0, 0, 0, NULL, 1, 1, 0, NULL, NULL, NULL, 2, 2, 'fff', '333');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settingsestructura`
--

CREATE TABLE `settingsestructura` (
  `id` int NOT NULL,
  `tipoestructura` varchar(50) NOT NULL,
  `cantnivel` int NOT NULL,
  `cantfilas` int DEFAULT NULL,
  `estructuraprincipal` tinyint(1) DEFAULT NULL COMMENT '1: arbol - 2: matriz',
  `usuarioprincipal` tinyint(1) DEFAULT NULL COMMENT '1: admin - 2:user',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `settingsestructura`
--

INSERT INTO `settingsestructura` (`id`, `tipoestructura`, `cantnivel`, `cantfilas`, `estructuraprincipal`, `usuarioprincipal`, `updated_at`) VALUES
(1, 'arbol', 5, 0, 0, 0, '2020-03-26 21:33:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settingspuntos`
--

CREATE TABLE `settingspuntos` (
  `id` int NOT NULL,
  `configuracion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `valor` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipopuntos` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `setttingsroles`
--

CREATE TABLE `setttingsroles` (
  `id` int NOT NULL,
  `rangos` int NOT NULL,
  `compras` tinyint(1) DEFAULT '0',
  `comisiones` tinyint(1) DEFAULT '0',
  `niveles` tinyint(1) DEFAULT '0',
  `referidos` tinyint(1) DEFAULT '0',
  `referidosact` tinyint(1) DEFAULT '0',
  `referidosd` tinyint(1) DEFAULT '0',
  `referidosInd` tinyint(1) DEFAULT '0',
  `grupal` tinyint(1) DEFAULT '0' COMMENT 'puntos grupales',
  `valorpuntos` float DEFAULT NULL,
  `bonos` tinyint(1) DEFAULT '0',
  `rolnecesario` tinyint(1) DEFAULT '0',
  `reseteomensual` tinyint(1) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `setttingsroles`
--

INSERT INTO `setttingsroles` (`id`, `rangos`, `compras`, `comisiones`, `niveles`, `referidos`, `referidosact`, `referidosd`, `referidosInd`, `grupal`, `valorpuntos`, `bonos`, `rolnecesario`, `reseteomensual`, `updated_at`) VALUES
(1, 2, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, '2020-03-26 21:50:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shopping_cart`
--

CREATE TABLE `shopping_cart` (
  `id` int NOT NULL,
  `user_id` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `course_id` int DEFAULT NULL,
  `period` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `membership_id` int DEFAULT NULL,
  `offer_id` int DEFAULT NULL,
  `date` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `shopping_cart`
--

INSERT INTO `shopping_cart` (`id`, `user_id`, `course_id`, `period`, `membership_id`, `offer_id`, `date`, `created_at`, `updated_at`) VALUES
(51, '186.84.20.30', NULL, 'Mensual', 1, NULL, '2021-02-17', '2021-02-17 15:17:21', '2021-02-17 15:17:21'),
(53, '190.206.188.157', NULL, 'Anual', 2, NULL, '2021-02-22', '2021-02-22 10:28:17', '2021-02-22 10:28:17'),
(64, '177.241.41.162', NULL, 'Mensual', 2, NULL, '2021-03-06', '2021-03-06 01:46:14', '2021-03-06 01:46:14'),
(69, '108.53.119.33', NULL, 'Anual', 1, NULL, '2021-03-22', '2021-03-22 09:38:18', '2021-03-22 09:38:18'),
(70, '10137', NULL, NULL, NULL, 1, '2021-04-21', '2021-04-21 13:35:09', '2021-04-21 13:35:09'),
(76, '144.217.135.156', NULL, 'Mensual', 1, NULL, '2021-05-18', '2021-05-18 00:30:55', '2021-05-18 00:30:55'),
(77, '104.149.118.228', NULL, 'Anual', 1, NULL, '2021-05-25', '2021-05-25 23:04:42', '2021-05-25 23:04:42'),
(86, '207.46.13.172', NULL, NULL, 1, NULL, '2021-06-16', '2021-06-16 08:51:13', '2021-06-16 08:51:13'),
(92, '144.217.135.204', NULL, 'Mensual', 1, NULL, '2021-06-22', '2021-06-22 17:47:13', '2021-06-22 17:47:13'),
(98, '192.95.12.177', NULL, 'anual', 3, NULL, '2021-06-30', '2021-06-30 12:45:58', '2021-06-30 12:45:58'),
(105, '195.201.194.151', NULL, NULL, 1, NULL, '2021-07-02', '2021-07-02 19:53:33', '2021-07-02 19:53:33'),
(109, '72.79.45.44', NULL, 'Mensual', 1, NULL, '2021-07-15', '2021-07-15 15:45:05', '2021-07-15 15:45:05'),
(115, '149.56.150.50', NULL, 'Mensual', 1, NULL, '2021-07-22', '2021-07-22 17:59:05', '2021-07-22 17:59:05'),
(123, '114.119.139.104', NULL, NULL, 1, NULL, '2021-08-04', '2021-08-04 11:05:32', '2021-08-04 11:05:32'),
(124, '114.119.152.155', NULL, 'Mensual', 2, NULL, '2021-08-04', '2021-08-04 17:42:23', '2021-08-04 17:42:23'),
(127, '114.119.140.214', NULL, 'Anual', 1, NULL, '2021-08-05', '2021-08-05 23:56:14', '2021-08-05 23:56:14'),
(128, '114.119.146.223', NULL, 'Mensual', 1, NULL, '2021-08-06', '2021-08-06 15:35:50', '2021-08-06 15:35:50'),
(142, '114.119.148.102', NULL, 'Anual', 2, NULL, '2021-08-11', '2021-08-11 03:39:20', '2021-08-11 03:39:20'),
(143, '114.119.137.45', NULL, 'Mensual', 3, NULL, '2021-08-11', '2021-08-11 03:48:50', '2021-08-11 03:48:50'),
(145, '114.119.135.104', NULL, 'Mensual', 1, NULL, '2021-08-11', '2021-08-11 21:45:08', '2021-08-11 21:45:08'),
(171, '144.217.135.134', NULL, 'Mensual', 1, NULL, '2021-08-23', '2021-08-23 23:31:01', '2021-08-23 23:31:01'),
(177, '103.107.198.211', NULL, 'Mensual', 2, NULL, '2021-08-27', '2021-08-27 08:16:11', '2021-08-27 08:16:11'),
(179, '216.244.66.232', NULL, NULL, 1, NULL, '2021-08-27', '2021-08-27 11:41:15', '2021-08-27 11:41:15'),
(191, '114.119.149.159', NULL, NULL, 1, NULL, '2021-09-05', '2021-09-05 02:55:32', '2021-09-05 02:55:32'),
(192, '54.36.148.204', NULL, 'Anual', 1, NULL, '2021-09-05', '2021-09-05 20:02:20', '2021-09-05 20:02:20'),
(193, '54.36.148.190', NULL, 'Mensual', 1, NULL, '2021-09-05', '2021-09-05 20:08:53', '2021-09-05 20:08:53'),
(194, '54.36.148.100', NULL, 'Anual', 2, NULL, '2021-09-05', '2021-09-05 20:15:07', '2021-09-05 20:15:07'),
(195, '54.36.148.6', NULL, 'Mensual', 2, NULL, '2021-09-05', '2021-09-05 20:20:54', '2021-09-05 20:20:54'),
(196, '54.36.148.248', NULL, 'Anual', 3, NULL, '2021-09-05', '2021-09-05 20:27:07', '2021-09-05 20:27:07'),
(197, '54.36.148.195', NULL, 'Mensual', 3, NULL, '2021-09-05', '2021-09-05 20:33:12', '2021-09-05 20:33:12'),
(198, '54.36.148.114', NULL, NULL, 1, NULL, '2021-09-06', '2021-09-06 01:42:03', '2021-09-06 01:42:03'),
(200, '114.119.149.157', NULL, 'Mensual', 3, NULL, '2021-09-08', '2021-09-08 19:43:41', '2021-09-08 19:43:41'),
(205, '114.119.149.131', NULL, 'Mensual', 1, NULL, '2021-09-11', '2021-09-11 23:44:11', '2021-09-11 23:44:11'),
(206, '185.191.171.39', NULL, 'Mensual', 3, NULL, '2021-09-12', '2021-09-12 18:11:13', '2021-09-12 18:11:13'),
(207, '185.191.171.23', NULL, 'Mensual', 1, NULL, '2021-09-13', '2021-09-13 20:22:20', '2021-09-13 20:22:20'),
(208, '185.191.171.7', NULL, 'Anual', 3, NULL, '2021-09-14', '2021-09-14 02:10:51', '2021-09-14 02:10:51'),
(209, '185.191.171.19', NULL, 'Mensual', 2, NULL, '2021-09-14', '2021-09-14 12:48:58', '2021-09-14 12:48:58'),
(210, '81.198.255.188', NULL, 'Mensual', 2, NULL, '2021-09-14', '2021-09-14 15:53:18', '2021-09-14 15:53:18'),
(211, '10143', NULL, 'Mensual', 2, NULL, '2021-09-14', '2021-09-14 16:02:06', '2021-09-14 16:02:06'),
(213, '114.119.146.114', NULL, 'Mensual', 2, NULL, '2021-09-15', '2021-09-15 05:33:38', '2021-09-15 05:33:38'),
(214, '185.191.171.25', NULL, 'Anual', 1, NULL, '2021-09-15', '2021-09-15 06:50:55', '2021-09-15 06:50:55'),
(215, '185.191.171.11', NULL, 'Anual', 2, NULL, '2021-09-15', '2021-09-15 08:27:22', '2021-09-15 08:27:22'),
(217, '185.191.171.2', NULL, 'Mensual', 1, NULL, '2021-09-16', '2021-09-16 00:23:47', '2021-09-16 00:23:47'),
(219, '185.191.171.8', NULL, 'Mensual', 2, NULL, '2021-09-16', '2021-09-16 16:30:16', '2021-09-16 16:30:16'),
(225, '114.119.135.182', NULL, 'Anual', 3, NULL, '2021-09-22', '2021-09-22 18:00:04', '2021-09-22 18:00:04'),
(227, '185.191.171.34', NULL, NULL, 1, NULL, '2021-09-24', '2021-09-24 10:14:52', '2021-09-24 10:14:52'),
(229, '114.119.149.169', NULL, NULL, 1, NULL, '2021-09-24', '2021-09-24 18:54:34', '2021-09-24 18:54:34'),
(232, '185.191.171.14', NULL, NULL, 1, NULL, '2021-09-26', '2021-09-26 13:26:39', '2021-09-26 13:26:39'),
(233, '114.119.149.150', NULL, 'Mensual', 2, NULL, '2021-09-27', '2021-09-27 18:44:24', '2021-09-27 18:44:24'),
(239, '149.56.150.218', NULL, 'Mensual', 1, NULL, '2021-09-28', '2021-09-28 00:35:49', '2021-09-28 00:35:49'),
(247, '114.119.149.168', NULL, 'Anual', 2, NULL, '2021-09-28', '2021-09-28 19:44:19', '2021-09-28 19:44:19'),
(248, '114.119.149.142', NULL, 'Anual', 3, NULL, '2021-09-29', '2021-09-29 09:00:16', '2021-09-29 09:00:16'),
(249, '185.191.171.17', NULL, 'Mensual', 2, NULL, '2021-09-29', '2021-09-29 11:24:47', '2021-09-29 11:24:47'),
(251, '185.191.171.45', NULL, 'Anual', 2, NULL, '2021-10-02', '2021-10-02 09:48:07', '2021-10-02 09:48:07'),
(254, '185.191.171.43', NULL, 'Anual', 2, NULL, '2021-10-04', '2021-10-04 12:02:25', '2021-10-04 12:02:25'),
(256, '46.8.169.177', NULL, 'Mensual', 1, NULL, '2021-10-04', '2021-10-04 14:24:57', '2021-10-04 14:24:57'),
(257, '114.119.145.174', NULL, 'Mensual', 3, NULL, '2021-10-04', '2021-10-04 19:11:04', '2021-10-04 19:11:04'),
(258, '114.119.145.187', NULL, 'Anual', 3, NULL, '2021-10-07', '2021-10-07 01:18:21', '2021-10-07 01:18:21'),
(259, '114.119.145.169', NULL, 'Anual', 1, NULL, '2021-10-07', '2021-10-07 11:59:41', '2021-10-07 11:59:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `subcategories`
--

INSERT INTO `subcategories` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Principiante', 'principiante', '2020-08-19 14:51:50', '2020-08-19 14:52:04'),
(2, 'Básico', 'basico', '2020-09-03 14:16:07', '2020-09-03 14:16:07'),
(3, 'Intermedio', 'intermedio', '2020-09-03 14:16:07', '2020-09-03 14:16:07'),
(4, 'Avanzado', 'avanzado', '2020-09-03 14:17:00', '2020-09-03 14:17:00'),
(5, 'Pro', 'pro', '2020-09-03 14:17:15', '2020-09-03 14:17:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `support_material`
--

CREATE TABLE `support_material` (
  `id` int NOT NULL,
  `course_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL COMMENT 'Archivo o Link',
  `material` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `survey_options`
--

CREATE TABLE `survey_options` (
  `id` int NOT NULL,
  `question` text NOT NULL,
  `content_event_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `survey_options`
--

INSERT INTO `survey_options` (`id`, `question`, `content_event_id`, `created_at`, `updated_at`) VALUES
(1, 'Como calificas nuestra plataforma?', 1, '2021-04-21 15:30:16', '2021-04-21 15:30:16'),
(7, 'Como calificas nuestra plataforma?', 11, '2021-04-23 12:01:12', '2021-04-23 12:01:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `survey_options_response`
--

CREATE TABLE `survey_options_response` (
  `id` int NOT NULL,
  `response` text NOT NULL,
  `survey_options_id` int NOT NULL,
  `selected` int NOT NULL DEFAULT '0',
  `user_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `survey_options_response`
--

INSERT INTO `survey_options_response` (`id`, `response`, `survey_options_id`, `selected`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Genial', 1, 0, 10136, '2021-04-21 15:30:16', '2021-04-21 15:30:16'),
(2, 'Buena', 1, 0, 10136, '2021-04-21 15:30:16', '2021-04-21 15:30:16'),
(3, 'Tiene que mejorar', 1, 0, 10136, '2021-04-21 15:30:16', '2021-04-21 15:30:16'),
(4, 'Mala', 1, 0, 10136, '2021-04-21 15:30:16', '2021-04-21 15:30:16'),
(5, 'Genial', 1, 1, 10138, '2021-04-21 15:30:51', '2021-04-21 15:30:51'),
(6, 'Genial', 1, 1, 10137, '2021-04-21 15:30:56', '2021-04-21 15:30:56'),
(15, 'Primera Respuesta', 7, 0, 10098, '2021-04-23 12:01:12', '2021-04-23 12:01:12'),
(16, 'Respuesta 2', 7, 0, 10098, '2021-04-23 12:01:12', '2021-04-23 12:01:12'),
(17, 'Respuesta 1', 7, 1, 10099, '2021-04-23 12:01:25', '2021-04-23 12:01:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tags`
--

CREATE TABLE `tags` (
  `id` int NOT NULL,
  `tag` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tags`
--

INSERT INTO `tags` (`id`, `tag`, `created_at`, `updated_at`) VALUES
(1, 'mba', '2020-09-08 19:01:29', '2020-09-08 19:01:29'),
(2, 'trading', '2020-09-08 19:01:54', '2020-09-08 19:01:54'),
(4, 'dobo', '2020-10-07 17:35:28', '2020-10-07 17:35:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tickets`
--

CREATE TABLE `tickets` (
  `id` int UNSIGNED NOT NULL,
  `titulo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `comentario` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tipo` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` int UNSIGNED NOT NULL,
  `admin` int NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `archivo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fecha` date DEFAULT NULL,
  `soporte` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `upgrade_messages`
--

CREATE TABLE `upgrade_messages` (
  `id` int NOT NULL,
  `membership_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `upgrade_messages`
--

INSERT INTO `upgrade_messages` (`id`, `membership_id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, '¿Qué esperas para mejorar tu membresía y subir de nivel?', 'Con esto tendrás acceso a nuevas lecciones...', NULL, '2020-12-16 21:34:50', '2020-12-30 19:49:55'),
(2, 2, '¿Qué esperas para mejorar tu membresía y subir de nivel?', 'Con esto tedrás acceso a nuevas lecciones...', NULL, '2020-12-16 21:34:50', '2020-12-16 21:34:50'),
(3, 3, '¿Qué esperas para mejorar tu membresía y subir de nivel?', 'Con esto tedrás acceso a nuevas lecciones...', NULL, '2020-12-16 21:34:50', '2020-12-16 21:34:50'),
(4, 4, '¿Qué esperas para mejorar tu membresía y subir de nivel?', 'Con esto tedrás acceso a nuevas lecciones...', NULL, '2020-12-16 21:34:50', '2020-12-16 21:34:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_campo`
--

CREATE TABLE `user_campo` (
  `ID` bigint NOT NULL,
  `firstname` varchar(250) DEFAULT NULL,
  `lastname` varchar(250) DEFAULT NULL,
  `genero` varchar(250) DEFAULT NULL,
  `edad` date DEFAULT NULL,
  `nameuser` varchar(250) DEFAULT NULL,
  `direccion` varchar(250) DEFAULT NULL,
  `document` varchar(250) DEFAULT NULL,
  `direccion2` varchar(250) DEFAULT NULL,
  `estado` varchar(250) DEFAULT NULL,
  `ciudad` varchar(250) DEFAULT NULL,
  `codigo` varchar(250) DEFAULT NULL,
  `phone` varchar(250) DEFAULT NULL,
  `fijo` varchar(250) DEFAULT NULL,
  `facebook` varchar(250) DEFAULT NULL,
  `twitter` varchar(250) DEFAULT NULL,
  `instagram` varchar(250) DEFAULT NULL,
  `youtube` varchar(250) DEFAULT NULL,
  `linkedin` varchar(250) DEFAULT NULL,
  `banco` varchar(250) DEFAULT NULL,
  `tipocuenta` varchar(250) DEFAULT NULL,
  `titular` varchar(250) DEFAULT NULL,
  `documento_identidad_titular` varchar(250) DEFAULT NULL,
  `cuenta` varchar(250) DEFAULT NULL,
  `swift` varchar(250) DEFAULT NULL,
  `pan` varchar(250) DEFAULT NULL,
  `paypal` varchar(250) DEFAULT NULL,
  `blocktrail` varchar(250) DEFAULT NULL,
  `blockchain` varchar(250) DEFAULT NULL,
  `bitgo` varchar(250) DEFAULT NULL,
  `pais` varchar(250) DEFAULT NULL,
  `pago` varchar(250) DEFAULT NULL,
  `btc` longtext,
  `biografia` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user_campo`
--

INSERT INTO `user_campo` (`ID`, `firstname`, `lastname`, `genero`, `edad`, `nameuser`, `direccion`, `document`, `direccion2`, `estado`, `ciudad`, `codigo`, `phone`, `fijo`, `facebook`, `twitter`, `instagram`, `youtube`, `linkedin`, `banco`, `tipocuenta`, `titular`, `documento_identidad_titular`, `cuenta`, `swift`, `pan`, `paypal`, `blocktrail`, `blockchain`, `bitgo`, `pais`, `pago`, `btc`, `biografia`) VALUES
(1, 'FTX Live', 'Admin', 'M', NULL, 'FtxLive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10098, 'Luisanaelena', 'Marín', 'F', '1990-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Prueba mentor'),
(10099, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Venezuela', NULL, NULL, NULL),
(10127, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Venezuela', NULL, NULL, NULL),
(10128, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Colombia', NULL, NULL, NULL),
(10129, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Aruba', NULL, NULL, NULL),
(10130, 'Crisleivys', 'Gil', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10131, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Colombia', NULL, NULL, NULL),
(10132, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Colombia', NULL, NULL, NULL),
(10133, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Colombia', NULL, NULL, NULL),
(10134, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Venezuela', NULL, NULL, NULL),
(10135, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Colombia', NULL, NULL, NULL),
(10136, 'Mentor', 'Experto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10137, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Colombia', NULL, NULL, NULL),
(10138, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Colombia', NULL, NULL, NULL),
(10139, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Colombia', NULL, NULL, NULL),
(10140, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Colombia', NULL, NULL, NULL),
(10141, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Colombia', NULL, NULL, NULL),
(10142, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Colombia', NULL, NULL, NULL),
(10143, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Aruba', NULL, NULL, NULL),
(10144, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Spain', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `walletlog`
--

CREATE TABLE `walletlog` (
  `id` int NOT NULL,
  `iduser` int NOT NULL,
  `idcomision` int NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `debito` float NOT NULL,
  `credito` float NOT NULL,
  `balance` float NOT NULL,
  `descuento` float NOT NULL,
  `tipotransacion` tinyint NOT NULL COMMENT '0 - transferencia, 1 - retiros, 2 - comisiones,  3 - liquidaciones',
  `monedaAdicional` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `walletlog`
--

INSERT INTO `walletlog` (`id`, `iduser`, `idcomision`, `usuario`, `descripcion`, `debito`, `credito`, `balance`, `descuento`, `tipotransacion`, `monedaAdicional`, `updated_at`) VALUES
(13, 1, 0, 'Administrador', 'Orden 12 Compra con billetera del usuario: Administrador', 0, 9.99, 7.01, 0, 1, '', '2021-01-07 14:43:44'),
(14, 10121, 0, 'Yanira', 'Orden 13 Compra con billetera del usuario: Yanira', 0, 1, 99, 0, 1, '', '2021-01-07 15:11:03'),
(15, 10121, 0, 'Yanira', 'Orden 14 Compra con billetera del usuario: Yanira', 0, 1, 98, 0, 1, '', '2021-01-07 15:14:52'),
(16, 10121, 0, 'Yanira', 'Orden 18 Compra con billetera del usuario: Yanira', 0, 1, 97, 0, 1, '', '2021-01-07 15:47:49'),
(17, 10121, 0, 'Yanira', 'Orden 20 Compra con billetera del usuario: Yanira', 0, 1, 96, 0, 1, '', '2021-01-07 15:50:21'),
(18, 10121, 0, 'Yanira', 'Orden 22 Compra con billetera del usuario: Yanira', 0, 1, 95, 0, 1, '', '2021-01-08 12:40:32'),
(19, 10121, 0, 'Yanira', 'Orden 24 Compra con billetera del usuario: Yanira', 0, 1, 94, 0, 1, '', '2021-01-08 12:42:34'),
(20, 10121, 0, 'Yanira', 'Orden 25 Compra con billetera del usuario: Yanira', 0, 1, 93, 0, 1, '', '2021-01-12 13:45:46'),
(21, 10127, 0, 'Maria P', 'Orden 29 Compra con billetera del usuario: Maria P', 0, 9.99, 9990.01, 0, 1, '', '2021-01-15 11:09:48'),
(22, 10129, 0, 'pietro1', 'Orden 30 Compra con billetera del usuario: pietro1', 0, 9.99, 9990.01, 0, 1, '', '2021-01-15 11:09:54'),
(23, 10128, 0, 'ramonp', 'Orden 31 Compra con billetera del usuario: ramonp', 0, 9.99, 9990.01, 0, 1, '', '2021-01-15 11:09:54'),
(24, 1, 1, 'Administrador', 'Ganancia por la compra del referido pietro1 por la Membresia Ver', 2.997, 0, 10.007, 0, 2, '', '2021-01-15 14:36:13'),
(25, 1, 2, 'Administrador', 'Ganancia por la compra del referido Maria P por la Membresia Ver', 2.997, 0, 13.004, 0, 2, '', '2021-01-15 14:36:13'),
(26, 1, 3, 'Administrador', 'Ganancia por la compra del referido ramonp por la Membresia Ver', 2.997, 0, 16.001, 0, 2, '', '2021-01-15 14:36:13'),
(27, 1, 4, 'Administrador', 'Ganancia por la compra del referido ramonp por la Membresia Equipo tecnico', 30, 0, 46.001, 0, 2, '', '2021-01-15 14:36:13'),
(28, 10127, 0, 'Maria P', 'Orden 33 Compra con billetera del usuario: Maria P', 0, 5, 9985.01, 0, 1, '', '2021-01-16 07:36:40'),
(29, 10127, 0, 'Maria P', 'Orden 34 Compra con billetera del usuario: Maria P', 0, 2, 9983.01, 0, 1, '', '2021-01-16 07:46:09'),
(30, 10127, 0, 'Maria P', 'Orden 35 Compra con billetera del usuario: Maria P', 0, 5, 9978.01, 0, 1, '', '2021-01-16 08:44:31'),
(31, 10132, 0, 'noemy', 'Orden 36 Compra con billetera del usuario: noemy', 0, 100, 900, 0, 1, '', '2021-01-16 11:02:24'),
(32, 10129, 0, 'pietro1', 'Orden 37 Compra con billetera del usuario: pietro1', 0, 10, 9980.01, 0, 1, '', '2021-01-16 11:41:12'),
(33, 1, 5, 'Administrador', 'Ganancia por la compra del referido noemy por la Membresia Ver', 30, 0, 76.001, 0, 2, '', '2021-01-18 10:18:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_actionscheduler_actions`
--

CREATE TABLE `wp98_actionscheduler_actions` (
  `action_id` bigint UNSIGNED NOT NULL,
  `hook` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `scheduled_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `group_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `attempts` int NOT NULL DEFAULT '0',
  `last_attempt_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `extended_args` varchar(8000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_actionscheduler_claims`
--

CREATE TABLE `wp98_actionscheduler_claims` (
  `claim_id` bigint UNSIGNED NOT NULL,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_actionscheduler_groups`
--

CREATE TABLE `wp98_actionscheduler_groups` (
  `group_id` bigint UNSIGNED NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_actionscheduler_logs`
--

CREATE TABLE `wp98_actionscheduler_logs` (
  `log_id` bigint UNSIGNED NOT NULL,
  `action_id` bigint UNSIGNED NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_commentmeta`
--

CREATE TABLE `wp98_commentmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `comment_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_comments`
--

CREATE TABLE `wp98_comments` (
  `comment_ID` bigint UNSIGNED NOT NULL,
  `comment_post_ID` bigint UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_links`
--

CREATE TABLE `wp98_links` (
  `link_id` bigint UNSIGNED NOT NULL,
  `link_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_ms_snippets`
--

CREATE TABLE `wp98_ms_snippets` (
  `id` bigint NOT NULL,
  `name` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `scope` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'global',
  `priority` smallint NOT NULL DEFAULT '10',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_options`
--

CREATE TABLE `wp98_options` (
  `option_id` bigint UNSIGNED NOT NULL,
  `option_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_postmeta`
--

CREATE TABLE `wp98_postmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_posts`
--

CREATE TABLE `wp98_posts` (
  `ID` bigint UNSIGNED NOT NULL,
  `post_author` bigint UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_snippets`
--

CREATE TABLE `wp98_snippets` (
  `id` bigint NOT NULL,
  `name` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `scope` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'global',
  `priority` smallint NOT NULL DEFAULT '10',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_termmeta`
--

CREATE TABLE `wp98_termmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_terms`
--

CREATE TABLE `wp98_terms` (
  `term_id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_term_relationships`
--

CREATE TABLE `wp98_term_relationships` (
  `object_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_term_taxonomy`
--

CREATE TABLE `wp98_term_taxonomy` (
  `term_taxonomy_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_usermeta`
--

CREATE TABLE `wp98_usermeta` (
  `umeta_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp98_usermeta`
--

INSERT INTO `wp98_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 10098, 'nickname', 'luisanaelenamarin@gmail.com'),
(2, 10098, 'first_name', 'Luisanaelena'),
(3, 10098, 'last_name', 'Marín'),
(4, 10098, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(5, 10098, 'billing_first_name', 'Luisanaelena'),
(6, 10098, 'billing_last_name', 'Marín'),
(7, 10098, 'billing_email', 'luisanaelenamarin@gmail.com'),
(8, 10098, 'billing_phone', NULL),
(9, 10099, 'nickname', 'lvmb29@gmail.com'),
(10, 10099, 'first_name', NULL),
(11, 10099, 'last_name', NULL),
(12, 10099, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(13, 10099, 'billing_first_name', NULL),
(14, 10099, 'billing_last_name', NULL),
(15, 10099, 'billing_email', 'lvmb29@gmail.com'),
(16, 10099, 'billing_phone', NULL),
(17, 10100, 'nickname', 'mentor1@ftxlive.com'),
(18, 10100, 'first_name', 'David'),
(19, 10100, 'last_name', 'Suarez'),
(20, 10100, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(21, 10100, 'billing_first_name', 'David'),
(22, 10100, 'billing_last_name', 'Suarez'),
(23, 10100, 'billing_email', 'mentor1@ftxlive.com'),
(24, 10100, 'billing_phone', NULL),
(25, 10101, 'nickname', 'mentor2@ftxlive.com'),
(26, 10101, 'first_name', 'Natalia'),
(27, 10101, 'last_name', 'Gonzalez'),
(28, 10101, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(29, 10101, 'billing_first_name', 'Natalia'),
(30, 10101, 'billing_last_name', 'Gonzalez'),
(31, 10101, 'billing_email', 'mentor2@ftxlive.com'),
(32, 10101, 'billing_phone', NULL),
(33, 10102, 'nickname', 'mentor3@ftxlive.com'),
(34, 10102, 'first_name', 'Raul'),
(35, 10102, 'last_name', 'Bravo'),
(36, 10102, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(37, 10102, 'billing_first_name', 'Raul'),
(38, 10102, 'billing_last_name', 'Bravo'),
(39, 10102, 'billing_email', 'mentor3@ftxlive.com'),
(40, 10102, 'billing_phone', NULL),
(41, 10103, 'nickname', 'mentor4@ftxlive.com'),
(42, 10103, 'first_name', 'Alvaro'),
(43, 10103, 'last_name', 'Betancour'),
(44, 10103, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(45, 10103, 'billing_first_name', 'Alvaro'),
(46, 10103, 'billing_last_name', 'Betancour'),
(47, 10103, 'billing_email', 'mentor4@ftxlive.com'),
(48, 10103, 'billing_phone', NULL),
(49, 10104, 'nickname', '1@gmail.com'),
(50, 10104, 'first_name', NULL),
(51, 10104, 'last_name', NULL),
(52, 10104, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(53, 10104, 'billing_first_name', NULL),
(54, 10104, 'billing_last_name', NULL),
(55, 10104, 'billing_email', '1@gmail.com'),
(56, 10104, 'billing_phone', NULL),
(57, 10105, 'nickname', '2@gmail.com'),
(58, 10105, 'first_name', NULL),
(59, 10105, 'last_name', NULL),
(60, 10105, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(61, 10105, 'billing_first_name', NULL),
(62, 10105, 'billing_last_name', NULL),
(63, 10105, 'billing_email', '2@gmail.com'),
(64, 10105, 'billing_phone', NULL),
(65, 10106, 'nickname', '3@gmail.com'),
(66, 10106, 'first_name', NULL),
(67, 10106, 'last_name', NULL),
(68, 10106, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(69, 10106, 'billing_first_name', NULL),
(70, 10106, 'billing_last_name', NULL),
(71, 10106, 'billing_email', '3@gmail.com'),
(72, 10106, 'billing_phone', NULL),
(73, 10107, 'nickname', '4@gmail.com'),
(74, 10107, 'first_name', 'Mentor'),
(75, 10107, 'last_name', 'mentor1'),
(76, 10107, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(77, 10107, 'billing_first_name', 'Mentor'),
(78, 10107, 'billing_last_name', 'mentor1'),
(79, 10107, 'billing_email', '4@gmail.com'),
(80, 10107, 'billing_phone', NULL),
(81, 10108, 'nickname', 'alexisjoseva95@gmail.com'),
(82, 10108, 'first_name', NULL),
(83, 10108, 'last_name', NULL),
(84, 10108, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(85, 10108, 'billing_first_name', NULL),
(86, 10108, 'billing_last_name', NULL),
(87, 10108, 'billing_email', 'alexisjoseva95@gmail.com'),
(88, 10108, 'billing_phone', NULL),
(89, 10109, 'nickname', 'cliente1@ftxlive.com'),
(90, 10109, 'first_name', NULL),
(91, 10109, 'last_name', NULL),
(92, 10109, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(93, 10109, 'billing_first_name', NULL),
(94, 10109, 'billing_last_name', NULL),
(95, 10109, 'billing_email', 'cliente1@ftxlive.com'),
(96, 10109, 'billing_phone', NULL),
(97, 10110, 'nickname', 'cliente2@ftxlive.com'),
(98, 10110, 'first_name', NULL),
(99, 10110, 'last_name', NULL),
(100, 10110, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(101, 10110, 'billing_first_name', NULL),
(102, 10110, 'billing_last_name', NULL),
(103, 10110, 'billing_email', 'cliente2@ftxlive.com'),
(104, 10110, 'billing_phone', NULL),
(105, 10111, 'nickname', 'noemy.producer@gmail.com'),
(106, 10111, 'first_name', NULL),
(107, 10111, 'last_name', NULL),
(108, 10111, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(109, 10111, 'billing_first_name', NULL),
(110, 10111, 'billing_last_name', NULL),
(111, 10111, 'billing_email', 'noemy.producer@gmail.com'),
(112, 10111, 'billing_phone', NULL),
(113, 10112, 'nickname', 'proyectos@fentrix.com'),
(114, 10112, 'first_name', 'PANCHITA'),
(115, 10112, 'last_name', 'PEREZ'),
(116, 10112, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(117, 10112, 'billing_first_name', 'PANCHITA'),
(118, 10112, 'billing_last_name', 'PEREZ'),
(119, 10112, 'billing_email', 'proyectos@fentrix.com'),
(120, 10112, 'billing_phone', NULL),
(121, 10113, 'nickname', 'proyectos@fenttix.com'),
(122, 10113, 'first_name', 'PANCRACIO'),
(123, 10113, 'last_name', 'LOPEZ'),
(124, 10113, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(125, 10113, 'billing_first_name', 'PANCRACIO'),
(126, 10113, 'billing_last_name', 'LOPEZ'),
(127, 10113, 'billing_email', 'proyectos@fenttix.com'),
(128, 10113, 'billing_phone', NULL),
(129, 10114, 'nickname', 'conferencias.lestermorales@gmail.com'),
(130, 10114, 'first_name', NULL),
(131, 10114, 'last_name', NULL),
(132, 10114, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(133, 10114, 'billing_first_name', NULL),
(134, 10114, 'billing_last_name', NULL),
(135, 10114, 'billing_email', 'conferencias.lestermorales@gmail.com'),
(136, 10114, 'billing_phone', NULL),
(137, 10115, 'nickname', 'luisanaelenamarin123@gmail.com'),
(138, 10115, 'first_name', NULL),
(139, 10115, 'last_name', NULL),
(140, 10115, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(141, 10115, 'billing_first_name', NULL),
(142, 10115, 'billing_last_name', NULL),
(143, 10115, 'billing_email', 'luisanaelenamarin123@gmail.com'),
(144, 10115, 'billing_phone', NULL),
(145, 10116, 'nickname', 'admin@1.com'),
(146, 10116, 'first_name', NULL),
(147, 10116, 'last_name', NULL),
(148, 10116, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(149, 10116, 'billing_first_name', NULL),
(150, 10116, 'billing_last_name', NULL),
(151, 10116, 'billing_email', 'admin@1.com'),
(152, 10116, 'billing_phone', NULL),
(153, 10117, 'nickname', '2@2.com'),
(154, 10117, 'first_name', NULL),
(155, 10117, 'last_name', NULL),
(156, 10117, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(157, 10117, 'billing_first_name', NULL),
(158, 10117, 'billing_last_name', NULL),
(159, 10117, 'billing_email', '2@2.com'),
(160, 10117, 'billing_phone', NULL),
(161, 10118, 'nickname', '3@gmail.com3'),
(162, 10118, 'first_name', NULL),
(163, 10118, 'last_name', NULL),
(164, 10118, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(165, 10118, 'billing_first_name', NULL),
(166, 10118, 'billing_last_name', NULL),
(167, 10118, 'billing_email', '3@gmail.com3'),
(168, 10118, 'billing_phone', NULL),
(169, 10119, 'nickname', '1@mn.com'),
(170, 10119, 'first_name', 'Prueba'),
(171, 10119, 'last_name', 'doble'),
(172, 10119, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(173, 10119, 'billing_first_name', 'Prueba'),
(174, 10119, 'billing_last_name', 'doble'),
(175, 10119, 'billing_email', '1@mn.com'),
(176, 10119, 'billing_phone', NULL),
(177, 10120, 'nickname', '4@gmai.com'),
(178, 10120, 'first_name', NULL),
(179, 10120, 'last_name', NULL),
(180, 10120, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(181, 10120, 'billing_first_name', NULL),
(182, 10120, 'billing_last_name', NULL),
(183, 10120, 'billing_email', '4@gmai.com'),
(184, 10120, 'billing_phone', NULL),
(185, 10121, 'nickname', 'cliente2@sinergiared.com'),
(186, 10121, 'first_name', NULL),
(187, 10121, 'last_name', NULL),
(188, 10121, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(189, 10121, 'billing_first_name', NULL),
(190, 10121, 'billing_last_name', NULL),
(191, 10121, 'billing_email', 'cliente2@sinergiared.com'),
(192, 10121, 'billing_phone', NULL),
(193, 10122, 'nickname', 'cliente3@sinergiared.com'),
(194, 10122, 'first_name', NULL),
(195, 10122, 'last_name', NULL),
(196, 10122, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(197, 10122, 'billing_first_name', NULL),
(198, 10122, 'billing_last_name', NULL),
(199, 10122, 'billing_email', 'cliente3@sinergiared.com'),
(200, 10122, 'billing_phone', NULL),
(201, 10123, 'nickname', 'yo@gmail.com'),
(202, 10123, 'first_name', NULL),
(203, 10123, 'last_name', NULL),
(204, 10123, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(205, 10123, 'billing_first_name', NULL),
(206, 10123, 'billing_last_name', NULL),
(207, 10123, 'billing_email', 'yo@gmail.com'),
(208, 10123, 'billing_phone', NULL),
(209, 10124, 'nickname', 'yo2@gmail.com'),
(210, 10124, 'first_name', NULL),
(211, 10124, 'last_name', NULL),
(212, 10124, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(213, 10124, 'billing_first_name', NULL),
(214, 10124, 'billing_last_name', NULL),
(215, 10124, 'billing_email', 'yo2@gmail.com'),
(216, 10124, 'billing_phone', NULL),
(217, 10125, 'nickname', 'ramalejtq@gmail.com'),
(218, 10125, 'first_name', NULL),
(219, 10125, 'last_name', NULL),
(220, 10125, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(221, 10125, 'billing_first_name', NULL),
(222, 10125, 'billing_last_name', NULL),
(223, 10125, 'billing_email', 'ramalejtq@gmail.com'),
(224, 10125, 'billing_phone', NULL),
(225, 10126, 'nickname', 'crisleivys@mail.com'),
(226, 10126, 'first_name', 'Crisleivys'),
(227, 10126, 'last_name', 'Gil'),
(228, 10126, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(229, 10126, 'billing_first_name', 'Crisleivys'),
(230, 10126, 'billing_last_name', 'Gil'),
(231, 10126, 'billing_email', 'crisleivys@mail.com'),
(232, 10126, 'billing_phone', NULL),
(233, 10127, 'nickname', 'cliente4@sinergiared.com'),
(234, 10127, 'first_name', NULL),
(235, 10127, 'last_name', NULL),
(236, 10127, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(237, 10127, 'billing_first_name', NULL),
(238, 10127, 'billing_last_name', NULL),
(239, 10127, 'billing_email', 'cliente4@sinergiared.com'),
(240, 10127, 'billing_phone', NULL),
(241, 10128, 'nickname', 'ramalejtq@gmail.com'),
(242, 10128, 'first_name', NULL),
(243, 10128, 'last_name', NULL),
(244, 10128, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(245, 10128, 'billing_first_name', NULL),
(246, 10128, 'billing_last_name', NULL),
(247, 10128, 'billing_email', 'ramalejtq@gmail.com'),
(248, 10128, 'billing_phone', NULL),
(249, 10129, 'nickname', 'yo100@gmail.com'),
(250, 10129, 'first_name', NULL),
(251, 10129, 'last_name', NULL),
(252, 10129, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(253, 10129, 'billing_first_name', NULL),
(254, 10129, 'billing_last_name', NULL),
(255, 10129, 'billing_email', 'yo100@gmail.com'),
(256, 10129, 'billing_phone', NULL),
(257, 10130, 'nickname', 'crisleivys@mail.com'),
(258, 10130, 'first_name', 'Crisleivys'),
(259, 10130, 'last_name', 'Gil'),
(260, 10130, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(261, 10130, 'billing_first_name', 'Crisleivys'),
(262, 10130, 'billing_last_name', 'Gil'),
(263, 10130, 'billing_email', 'crisleivys@mail.com'),
(264, 10130, 'billing_phone', NULL),
(265, 10131, 'nickname', 'tes001@gmail.com'),
(266, 10131, 'first_name', NULL),
(267, 10131, 'last_name', NULL),
(268, 10131, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(269, 10131, 'billing_first_name', NULL),
(270, 10131, 'billing_last_name', NULL),
(271, 10131, 'billing_email', 'tes001@gmail.com'),
(272, 10131, 'billing_phone', NULL),
(273, 10132, 'nickname', 'noemy.producer@gmail.com'),
(274, 10132, 'first_name', NULL),
(275, 10132, 'last_name', NULL),
(276, 10132, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(277, 10132, 'billing_first_name', NULL),
(278, 10132, 'billing_last_name', NULL),
(279, 10132, 'billing_email', 'noemy.producer@gmail.com'),
(280, 10132, 'billing_phone', NULL),
(281, 10133, 'nickname', 'prueba5000@gmail.com'),
(282, 10133, 'first_name', NULL),
(283, 10133, 'last_name', NULL),
(284, 10133, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(285, 10133, 'billing_first_name', NULL),
(286, 10133, 'billing_last_name', NULL),
(287, 10133, 'billing_email', 'prueba5000@gmail.com'),
(288, 10133, 'billing_phone', NULL),
(289, 10134, 'nickname', 'lic.freddymillan@gmail.com'),
(290, 10134, 'first_name', NULL),
(291, 10134, 'last_name', NULL),
(292, 10134, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(293, 10134, 'billing_first_name', NULL),
(294, 10134, 'billing_last_name', NULL),
(295, 10134, 'billing_email', 'lic.freddymillan@gmail.com'),
(296, 10134, 'billing_phone', NULL),
(297, 10135, 'nickname', 'prueba6000@gmail.com'),
(298, 10135, 'first_name', NULL),
(299, 10135, 'last_name', NULL),
(300, 10135, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(301, 10135, 'billing_first_name', NULL),
(302, 10135, 'billing_last_name', NULL),
(303, 10135, 'billing_email', 'prueba6000@gmail.com'),
(304, 10135, 'billing_phone', NULL),
(305, 10136, 'nickname', 'mentor@ftxlive.com'),
(306, 10136, 'first_name', 'Mentor'),
(307, 10136, 'last_name', 'Experto'),
(308, 10136, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(309, 10136, 'billing_first_name', 'Mentor'),
(310, 10136, 'billing_last_name', 'Experto'),
(311, 10136, 'billing_email', 'mentor@ftxlive.com'),
(312, 10136, 'billing_phone', NULL),
(313, 10137, 'nickname', 'usuario1@ftxlive.com'),
(314, 10137, 'first_name', NULL),
(315, 10137, 'last_name', NULL),
(316, 10137, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(317, 10137, 'billing_first_name', NULL),
(318, 10137, 'billing_last_name', NULL),
(319, 10137, 'billing_email', 'usuario1@ftxlive.com'),
(320, 10137, 'billing_phone', NULL),
(321, 10138, 'nickname', 'usuario2@ftxlive.com'),
(322, 10138, 'first_name', NULL),
(323, 10138, 'last_name', NULL),
(324, 10138, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(325, 10138, 'billing_first_name', NULL),
(326, 10138, 'billing_last_name', NULL),
(327, 10138, 'billing_email', 'usuario2@ftxlive.com'),
(328, 10138, 'billing_phone', NULL),
(329, 10139, 'nickname', 'usuario3@ftxlive.com'),
(330, 10139, 'first_name', NULL),
(331, 10139, 'last_name', NULL),
(332, 10139, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(333, 10139, 'billing_first_name', NULL),
(334, 10139, 'billing_last_name', NULL),
(335, 10139, 'billing_email', 'usuario3@ftxlive.com'),
(336, 10139, 'billing_phone', NULL),
(337, 10140, 'nickname', 'usuario4@ftxlive.com'),
(338, 10140, 'first_name', NULL),
(339, 10140, 'last_name', NULL),
(340, 10140, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(341, 10140, 'billing_first_name', NULL),
(342, 10140, 'billing_last_name', NULL),
(343, 10140, 'billing_email', 'usuario4@ftxlive.com'),
(344, 10140, 'billing_phone', NULL),
(345, 10141, 'nickname', 'usuario5@ftxlive.com'),
(346, 10141, 'first_name', NULL),
(347, 10141, 'last_name', NULL),
(348, 10141, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(349, 10141, 'billing_first_name', NULL),
(350, 10141, 'billing_last_name', NULL),
(351, 10141, 'billing_email', 'usuario5@ftxlive.com'),
(352, 10141, 'billing_phone', NULL),
(353, 10142, 'nickname', 'usuario6@ftxlive.com'),
(354, 10142, 'first_name', NULL),
(355, 10142, 'last_name', NULL),
(356, 10142, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(357, 10142, 'billing_first_name', NULL),
(358, 10142, 'billing_last_name', NULL),
(359, 10142, 'billing_email', 'usuario6@ftxlive.com'),
(360, 10142, 'billing_phone', NULL),
(361, 10143, 'nickname', 'demo@demo.com'),
(362, 10143, 'first_name', NULL),
(363, 10143, 'last_name', NULL),
(364, 10143, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(365, 10143, 'billing_first_name', NULL),
(366, 10143, 'billing_last_name', NULL),
(367, 10143, 'billing_email', 'demo@demo.com'),
(368, 10143, 'billing_phone', NULL),
(369, 10144, 'nickname', 'byjosegordo@gmail.com'),
(370, 10144, 'first_name', NULL),
(371, 10144, 'last_name', NULL),
(372, 10144, 'wp98_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(373, 10144, 'billing_first_name', NULL),
(374, 10144, 'billing_last_name', NULL),
(375, 10144, 'billing_email', 'byjosegordo@gmail.com'),
(376, 10144, 'billing_phone', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_users`
--

CREATE TABLE `wp98_users` (
  `ID` bigint UNSIGNED NOT NULL,
  `birthdate` date DEFAULT NULL,
  `gender` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `user_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `user_nicename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `user_registered` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_activation_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'avatar.png',
  `provider` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `referred_id` int DEFAULT '0',
  `sponsor_id` bigint DEFAULT '0',
  `position_id` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `rol_id` int NOT NULL DEFAULT '1',
  `wallet_amount` double NOT NULL DEFAULT '0',
  `billetera` double NOT NULL DEFAULT '0',
  `bank_amount` double NOT NULL DEFAULT '0',
  `clave` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activacion` tinyint(1) DEFAULT '0',
  `fecha_activacion` datetime DEFAULT NULL,
  `token_correo` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipouser` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Normal',
  `ladomatriz` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `puntosPro` double DEFAULT '0',
  `puntosRed` double DEFAULT '0',
  `puntosDer` double DEFAULT '0',
  `puntosIzq` double DEFAULT '0',
  `debiDer` double NOT NULL DEFAULT '0',
  `debiIzq` double DEFAULT '0',
  `binario` date DEFAULT NULL,
  `codigo` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `correos` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `limitar` int NOT NULL DEFAULT '1',
  `pop_up` int NOT NULL DEFAULT '0',
  `autenticacion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `factor2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fechaver` date DEFAULT NULL,
  `modo_oscuro` int NOT NULL DEFAULT '0',
  `profession` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cover_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `membership_id` int DEFAULT NULL,
  `membership_status` int DEFAULT NULL,
  `membership_expiration` date DEFAULT NULL,
  `streaming_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `streamings` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp98_users`
--

INSERT INTO `wp98_users` (`ID`, `birthdate`, `gender`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_activation_key`, `user_status`, `display_name`, `password`, `avatar`, `provider`, `provider_id`, `access_token`, `remember_token`, `created_at`, `updated_at`, `referred_id`, `sponsor_id`, `position_id`, `status`, `rol_id`, `wallet_amount`, `billetera`, `bank_amount`, `clave`, `activacion`, `fecha_activacion`, `token_correo`, `tipouser`, `ladomatriz`, `puntosPro`, `puntosRed`, `puntosDer`, `puntosIzq`, `debiDer`, `debiIzq`, `binario`, `codigo`, `correos`, `limitar`, `pop_up`, `autenticacion`, `factor2`, `fechaver`, `modo_oscuro`, `profession`, `about`, `cover_name`, `membership_id`, `membership_status`, `membership_expiration`, `streaming_token`, `streamings`) VALUES
(1, NULL, NULL, 'FtxLive', 'e10adc3949ba59abbe56e057f20f883e', 'FtxLive', 'admin@ftxlive.com', '', '', 0, 'Administrador', '$2y$10$WjEgHmIzHYoVg5RSiXo/vetsMTbm/0YROYVvNO05CpxtykIKTNzN6', 'avatar.png', NULL, NULL, NULL, 'RQXcMKKGezHZnu0CIZ0jNV5aIcuE5DblDXdynjsAWR2kNvfEAFsBDa2xmEU8', '2020-03-26 11:49:07', '2021-01-18 10:18:24', 0, 0, 0, 1, 0, 76.001, 0, 0, 'eyJpdiI6ImFVOXBoL1FDckdzRDJJalFMdGNTblE9PSIsInZhbHVlIjoiVEtTM3UyV2Z3SGNGT2o4d0VoYm1tdz09IiwibWFjIjoiY2MzNzA0OTU3YzQ4NDEzNjRhMjU2ODNhZGFmNGNlMzAyMWE0ODUzMzhiZGMzOWIxOGY3YjgwOWUzYzQ0YTNkMyJ9', 0, NULL, NULL, 'Normal', NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, '', NULL, NULL, 3, 1, '2025-02-07', '25|vibFjPkrrgfx4eKIiPXjsQs5iwUYT2H9smJxbVdv', 0),
(10098, '1990-01-01', 'F', NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, 'luisanaelenamarin@gmail.com', '', '', 0, 'Luisanaelena Marín', '$2y$10$HfTeSa8O3nMYZRYEHUZ1qua5TuUPRgz.UHFmgGqC/OKPBk3mODFMW', 'user_1606179379.jpg', NULL, NULL, NULL, NULL, '2020-11-23 17:56:19', '2021-01-14 16:34:24', 1, 1, 1, 0, 2, 0, 0, 0, 'eyJpdiI6IkJ5Y0VrcW9hMlVuS09aQXRLdDl2V1E9PSIsInZhbHVlIjoiVlhzMGloVUVMTVNiVngyT1VoQ3hzZz09IiwibWFjIjoiOTM5MjVlM2U1MjY2YTgxZWJkZjlkMmZiZTk3ODhjNTRmZWE5Y2ZlNzIxMGU5Zjg0MTkyODM4MTIzNjc3MDE5YyJ9', 0, NULL, NULL, 'Normal', NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, 'Licenciada en Informática', 'Esto es una prueba', NULL, NULL, NULL, NULL, '11|xrOFtGoTGFrulplqjOmDRVsmwsTmYpU0z2jbcQU6', 0),
(10099, NULL, NULL, 'lvmb29', '8e90bc55fb687fa08dde18f7623c6aab', 'lvmb29', 'lvmb29@gmail.com', '', '', 0, 'lvmb29', '$2y$10$HfTeSa8O3nMYZRYEHUZ1qua5TuUPRgz.UHFmgGqC/OKPBk3mODFMW', 'avatar.png', NULL, NULL, NULL, NULL, '2020-11-23 18:52:40', '2021-01-07 12:20:42', 10098, 10098, 10098, 1, 3, 0, 0, 0, 'eyJpdiI6InFLWE41V0pNNmFSM2VMc0JvdnhnVUE9PSIsInZhbHVlIjoiS1IxSUJDV1VaUzFMOHQxZ1FCK1pXdz09IiwibWFjIjoiMjNmMTQ3ZjRiMjI2MWFkZGU0MTA0YzJmNTJmOWU4ZDg5MjhhZDc2NWZiMWNhNThmYTc2Mjc1NjU1MWE5YmYwNiJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, 3, 1, '2022-02-22', NULL, 0),
(10127, NULL, NULL, 'Maria P', 'e10adc3949ba59abbe56e057f20f883e', 'Maria P', 'cliente4@sinergiared.com', '', '', 0, 'Maria P', '$2y$10$lsC0tcMXmAzYcE/G4.UPw.BhYgLDt4iSN4u9X/KAt2GmCTAFpd5aO', 'avatar.png', NULL, NULL, NULL, NULL, '2021-01-15 10:38:10', '2021-01-16 08:44:31', 1, 1, 1, 1, 3, 9978.01, 0, 0, 'eyJpdiI6IkdwTEs0L2ZveUp6Z1BzSkMrMUlwR2c9PSIsInZhbHVlIjoiWE1zcUtnWkZyaVpyTitTOHJ0c3F6UT09IiwibWFjIjoiMmIwODNhMjliNDhiNTQwMzQ1NGRkZWE1YmFiYzdjOThhY2JmZmVkY2I0M2YwNmEwOWIxMDQ4NzUzMWZjNjU4YSJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, '2021-02-15', NULL, 0),
(10128, NULL, NULL, 'ramonp', 'e10adc3949ba59abbe56e057f20f883e', 'ramonp', 'ramalejtq@gmail.com', '', '', 0, 'ramonp', '$2y$10$zQrd4eGRU0IH3fBjnTqz4uBWEiXfyL/2pWoobSQMFSto5AttRwwxy', 'avatar.png', NULL, NULL, NULL, NULL, '2021-01-15 10:41:20', '2021-01-15 11:09:54', 1, 1, 1, 1, 3, 9990.01, 0, 0, 'eyJpdiI6IlJsMVp6YUJrdFl3emlPY2l2OE05QVE9PSIsInZhbHVlIjoiRER6QittU0NuTmthbysyU2Z4QkpIdz09IiwibWFjIjoiZjk0NTM5NTU0ZmU3ZWQwYThiN2ZlNmJlYjNhODk5ZTIxZGI2N2JlMDNjZjM3MTI5MzE4NmRlNjM2ODlhMWJiMiJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, '2021-02-15', NULL, 0),
(10129, NULL, NULL, 'pietro1', 'e10adc3949ba59abbe56e057f20f883e', 'pietro1', 'yo100@gmail.com', '', '', 0, 'pietro1', '$2y$10$eWGd2Mn2edaTyPM1OhhCU.rT.91Nu1v/hBhOVJmdbqqQKBXXKa9C.', 'avatar.png', NULL, NULL, NULL, NULL, '2021-01-15 10:41:39', '2021-01-16 11:41:12', 1, 1, 1, 1, 3, 9980.01, 0, 0, 'eyJpdiI6Ik0wYUd1VmVYSzI5TDZ5a1pNT3hlK2c9PSIsInZhbHVlIjoia0xMRVQ2RXprNkhadXFwNkRCVDFkQT09IiwibWFjIjoiOTUzNGM4ZDVjMjY2NTE0YjNlODg4NDMyMThmNzc3ZmZmM2NkMWNhNzc4MmI3ZmQ5OTlkZGM5MzE2MDBhNTMyYiJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, '2021-02-15', NULL, 0),
(10130, NULL, NULL, NULL, 'e19d5cd5af0378da05f63f891c7467af', NULL, 'crisleivys@mail.com', '', '', 0, 'Crisleivys Gil', '$2y$10$3D5dMc8xr0.FVVh0LLaPcewhxvzQ2n1xqCgZNDh9AIsBudhmNJpC2', 'user_1610739957.jpg', NULL, NULL, NULL, NULL, '2021-01-15 12:45:57', '2021-01-15 12:45:57', 1, 1, 1, 0, 2, 0, 0, 0, 'eyJpdiI6ImZqbmgwWWMyZk9YbzZpb3RrYTQ1R1E9PSIsInZhbHVlIjoiK21ac1E0c1dUMXdjMk5UdUVSUisxdz09IiwibWFjIjoiNTQwODc3ZjQ5OGQwNTZmN2ZhZmQ5ZjA3NWNjMjk0ZTZlNzVlNTkxNjc3OTE3ZmJiOGI2ZTRjMzMzZjdkMjZjNCJ9', 0, NULL, NULL, 'Normal', NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, 'Probando registro', 'Probando registro', NULL, NULL, NULL, NULL, NULL, 0),
(10131, NULL, NULL, 'tes001', 'e10adc3949ba59abbe56e057f20f883e', 'tes001', 'tes001@gmail.com', '', '', 0, 'tes001', '$2y$10$T8aB6gROPvGk2InRsiMrSOeE.KlExDHnLRS/BbgR58kNDqJ0pLU32', 'avatar.png', NULL, NULL, NULL, NULL, '2021-01-16 09:34:24', '2021-01-16 09:34:24', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6Im5iRG45MU9QRGtXVjJjOUNndmgzTVE9PSIsInZhbHVlIjoiUEY0dThDYTllMUxlTUhqWUxMZVk2Zz09IiwibWFjIjoiOGYwOTJiNWNiMjcyMmFlYjg0ZWIzMmFjZjBkOTRlNjhjNDlkOTY1ZDgxZmNkN2I3NmIxMTRiN2RiNjNmNDY2MyJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(10132, NULL, NULL, 'noemy', 'e10adc3949ba59abbe56e057f20f883e', 'noemy', 'noemy.producer@gmail.com', '', '', 0, 'noemy', '$2y$10$/ON8sxMhgFeOqbAXMhjr4u4JTMjx0luqbW.4kDQ0JSwHUfqTRTZBi', 'avatar.png', NULL, NULL, NULL, NULL, '2021-01-16 11:00:29', '2021-01-16 11:02:24', 1, 1, 1, 1, 3, 900, 0, 0, 'eyJpdiI6IjlrZjV6Mi8rek1xMU1wRlRmeExidVE9PSIsInZhbHVlIjoiWE1FQ1pGMXllVmtZM3krMnZ4SXZNdz09IiwibWFjIjoiN2RmNDgxYzU2MDhiNDUzYjExMWRhYzg2NjZlNjg3ZmIzY2U0N2ZlZWRjYzkxYWJhYjk4YmRkYjZhMjViZmMwMiJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, 1, '2022-01-16', NULL, 0),
(10133, NULL, NULL, 'prueba5000', 'e10adc3949ba59abbe56e057f20f883e', 'prueba5000', 'prueba5000@gmail.com', '', '', 0, 'prueba5000', '$2y$10$1Uh/dp1818ZT6u/k68tcfOOSh1ed3g2vEtt3C4BSkgGBqaJo5v7I2', 'avatar.png', NULL, NULL, NULL, NULL, '2021-01-26 12:16:56', '2021-01-26 12:16:56', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6InQxU1lKTUxWZzFKMllaUHlKNG12Mnc9PSIsInZhbHVlIjoiYkxvVmcyQVhSQk1LWTZ1WVZzSDEydz09IiwibWFjIjoiYjIxNDY2ZTMyYTI1ZDNmYWUzN2Q5MWZhMDNjZmRlOWY1N2QxNTVkNzg4ZTc1YTU3MDEyNGM5M2FmOWJkNjJkYiJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(10134, NULL, NULL, 'Freddy', '25f9e794323b453885f5181f1b624d0b', 'Freddy', 'lic.freddymillan@gmail.com', '', '', 0, 'Freddy', '$2y$10$JsPBIbK8d0u9/fyMrA/gWe8l8UmiX3jiHKAgwaOitURmqFBWWE99K', 'avatar.png', NULL, NULL, NULL, NULL, '2021-01-26 12:42:52', '2021-01-26 12:42:52', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6IkxWYkk4dVNjb2l3YVJXYmVPL0gwU1E9PSIsInZhbHVlIjoiZUlXaXVJOFFGSlVCQ2p1b3pGT240L2c5NkVlQ0NuMi9aUWloZlFDZWlrND0iLCJtYWMiOiIwODhlYTVkZWE4MmEwZjhlZGY3OGY4YTE2MDc4NzYxZmE0NDY0ZGExYmFkMDVmMzZiY2Q5MDQ5NjBkMWFhYjcxIn0=', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, '2021-03-31', NULL, 0),
(10135, NULL, NULL, 'prueba6000', 'e10adc3949ba59abbe56e057f20f883e', 'prueba6000', 'prueba6000@gmail.com', '', '', 0, 'prueba6000', '$2y$10$dQFRcdgs2q05frvaMmtTb.UWZ/bTqS3y8VEmXeLrIMl0bwDyKhgkq', 'avatar.png', NULL, NULL, NULL, NULL, '2021-01-26 12:48:17', '2021-01-26 12:48:17', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6IkxGZFlEY2l5ZWdhYUh4bVpsalFYNHc9PSIsInZhbHVlIjoicEVLblM5ME1WMTUwNkcvVWRzamtUQT09IiwibWFjIjoiMDMzZmFhMTBlN2JhZjVlNjJmYjVlN2U0NGI2MDJkNjkxYWUxZDYyYjZkMDFjMDU5MWQwZmUxNmM1YWI2OTJhZCJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(10136, NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, 'mentor@ftxlive.com', '', '', 0, 'Mentor Experto', '$2y$10$U7HXXWp96Zy7qhsXBxxkNeS6qBHy9zld/bRxJEI2yL85K9O8lSwGW', 'user_1617205072.jpg', NULL, NULL, NULL, NULL, '2021-03-31 07:37:52', '2021-03-31 07:37:52', 1, 1, 1, 0, 2, 0, 0, 0, 'eyJpdiI6InZzUlpOZjZrUmlqeHlVU0pMMEpvV1E9PSIsInZhbHVlIjoibjBPWlRqdVV1SkNQblN4SmVqYlVNQT09IiwibWFjIjoiMjZjNWQ0ZmUxMjUwZDMyYWM3YTc1MDVjYWIzMWM0OTkzMWRiYTk3MDA4MTRiYmU2ZmExMTljZmQ0MGRmMTBhYiJ9', 0, NULL, NULL, 'Normal', NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, 'Mentor Experto en Ventas y Negocios', 'Consultor, Asesor y capacitador', NULL, NULL, NULL, NULL, NULL, 0),
(10137, NULL, NULL, 'usuario1', 'e10adc3949ba59abbe56e057f20f883e', 'usuario1', 'usuario1@ftxlive.com', '', '', 0, 'usuario1', '$2y$10$Nm75MiDA37QhEWCZHcI1Du5GKSxpyl2AbU5iALe7Fohg8S.0cL1..', 'avatar.png', NULL, NULL, NULL, NULL, '2021-04-10 09:22:27', '2021-04-10 09:22:27', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6IkZSL0lacjJhQ1Z5bVB3NkhXOStGMnc9PSIsInZhbHVlIjoiaWk1dXBCOG1BS0FiWEVDUWI3L3phZz09IiwibWFjIjoiZmRjMDNlNTA4NmQ2M2FkNTVlZDFiZTEyN2QyZTlkMjk2ZTJlZjlkMzc4OWFmZDI3YzcwMTc4NDY0YzFhZDY2ZSJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, '2021-06-30', NULL, 0),
(10138, NULL, NULL, 'usuario2', 'e10adc3949ba59abbe56e057f20f883e', 'usuario2', 'usuario2@ftxlive.com', '', '', 0, 'usuario2', '$2y$10$G6Scmp4wIf6Kc92fVbTSN.AwxAcmARnQdBQNfjm5btN0zTHC4UFSW', 'avatar.png', NULL, NULL, NULL, NULL, '2021-04-10 09:24:11', '2021-04-10 09:24:11', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6IkI3M3JjVzBtWTQ0VjBjcG4zd3RqRGc9PSIsInZhbHVlIjoibGVmMDdqdXV2TmtjWU0ybWtKemlvUT09IiwibWFjIjoiYzZhNjZiOWI0YTg0YmY2ZGI2ZmZlZTAwOGM2NWQ1ZjQxZDY0NWFkYzI3NTYwZDBhYTc0Mjg3NTAzOWVhOWUzNCJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, 0, '2021-06-30', NULL, 0),
(10139, NULL, NULL, 'usuario3', 'e10adc3949ba59abbe56e057f20f883e', 'usuario3', 'usuario3@ftxlive.com', '', '', 0, 'usuario3', '$2y$10$tLaQNuV6gUHZD5O2hTDPXO4Y5JP/eiiPAqyLHy3f.HqLoYLKg8S9O', 'avatar.png', NULL, NULL, NULL, NULL, '2021-04-10 09:26:10', '2021-04-10 09:26:10', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6IlpsOE44QW5YOGxkU1kyLzRPUERRSVE9PSIsInZhbHVlIjoiMDg1WHpPdVVWano2dm95UVRJZFN3dz09IiwibWFjIjoiYzdmNzNmMjliMDgzMDI2YjFhYjRiNmQwYjYzZWY2M2ZlMzBlYmIxOTkzZTI0OWI5OWU5Y2JkZDkwMjQ5Y2QxZSJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, 2, 0, '2021-06-30', NULL, 0),
(10140, NULL, NULL, 'usuario4', 'e10adc3949ba59abbe56e057f20f883e', 'usuario4', 'usuario4@ftxlive.com', '', '', 0, 'usuario4', '$2y$10$aaq9E3KP5lK7YV8DkGXXzeE3K58dmexZxBR4zJGkH91bgDnQd0Z6O', 'avatar.png', NULL, NULL, NULL, NULL, '2021-04-10 09:27:26', '2021-04-10 09:27:26', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6Ikc4cG12aEJ0NkpsNVZWTkhRVzB1Z0E9PSIsInZhbHVlIjoiL3Z0bitYMTZYMS96djY3WnpkbmNYUT09IiwibWFjIjoiMTk5NDY4YzRkZTEwZjJmYTUzMjQ1YjI4ZDA3YTJhNWFjMDM3YmZkOGMwMmQ3M2E2YTFlNzFjNjg4MjczNDMyYSJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, 2, 0, '2021-06-30', NULL, 0),
(10141, NULL, NULL, 'usuario5', 'e10adc3949ba59abbe56e057f20f883e', 'usuario5', 'usuario5@ftxlive.com', '', '', 0, 'usuario5', '$2y$10$FLpoyxP.jH9QKGDP5JPZnOihq4mINsNjq0RG/Gn2MVcjk0npfYw.W', 'avatar.png', NULL, NULL, NULL, NULL, '2021-04-10 09:28:28', '2021-04-10 09:28:28', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6IjF6bVIrTHJHWmVCb1p2MCtlRWVOZ2c9PSIsInZhbHVlIjoiMHNGTWJldi9RVFVPRGRaSGJONGZuQT09IiwibWFjIjoiMjE0MDk0YTQzNzg2YzgyN2RjN2YxODA1ZjFjMWYzNTgzYmM3NTFhNDRlODk5ZmRiOTg2YWQ0NTQ3MjM4OWY0NiJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, 3, 0, '2021-06-30', NULL, 0),
(10142, NULL, NULL, 'usuario6', 'e10adc3949ba59abbe56e057f20f883e', 'usuario6', 'usuario6@ftxlive.com', '', '', 0, 'usuario6', '$2y$10$s.KoeWbE1sBki49W04FAcOBLErjyCy3KkGfi6lf/HrbY8PyCD1zaa', 'avatar.png', NULL, NULL, NULL, NULL, '2021-04-10 09:29:24', '2021-04-10 09:29:24', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6IlBqejdOVlZYQTV4b3RoRVF0YjJmRkE9PSIsInZhbHVlIjoiWmh6QUFWTkpPanRCaGdyQk9qR0Izdz09IiwibWFjIjoiNmY1OTZjNGEwZmUxY2Q5Nzc3MGQyN2NlYzMwZmYwNjk4NjhhOGIxYWM0MTBiNjIwYTFjNjJhNjZiOGMyZDc2MiJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, 3, 0, '2021-06-30', NULL, 0),
(10143, NULL, NULL, 'quattro', '96e79218965eb72c92a549dd5a330112', 'quattro', 'demo@demo.com', '', '', 0, 'quattro', '$2y$10$nYKfhEe3hAYMmHkJjRK0E.iQApi7VKerD0Y9WYVGGD7wMJonzwlF.', 'user_10143_1631653772.png', NULL, NULL, NULL, NULL, '2021-09-14 20:54:29', '2021-09-14 21:09:32', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6IjVIZVpHb2hHeXVHc2FHVkZhWTdEQ1E9PSIsInZhbHVlIjoiUjZxZ1JCR05YZ1p2ODFRMklKaGRhZz09IiwibWFjIjoiOGExODNmMmM3ZTViMmRkMzM3MjZiNTMyMDQxZDIzYTMyZTg0YWEyNTg2MDE5NWRlYWNiOGZlZmQ1MTUzZjExZCJ9', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(10144, NULL, NULL, 'jgordo', '2805130cc1dc5358115680c2c70489e5', 'jgordo', 'byjosegordo@gmail.com', '', '', 0, 'jgordo', '$2y$10$Acoe.ftCg.z2y.blydvqfO0VSqkmS5m/F/yxogOv9.9PpTMPGiv8q', 'avatar.png', NULL, NULL, NULL, NULL, '2021-10-04 19:27:38', '2021-10-04 19:27:38', 1, 1, 1, 0, 3, 0, 0, 0, 'eyJpdiI6ImN3M25yNXlvU0cvclZZa1k0R1UvVFE9PSIsInZhbHVlIjoiMWRpb2t1dTcvNlpoUU9ZRzJSc1BpMGt3Qmd0YlFPTmFmK2t6Zjd2NU1Baz0iLCJtYWMiOiJhNzI5MDFmMjU1Y2E5ZWIwNjBhNGUyZWY1ZGViZDMwMTgzYTBlYmExYWM0NjlmZWQzMTkxNjZjZGUyYWU0YzE3In0=', 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '{\"pago\":\"1\",\"compra\":\"1\",\"pc\":\"1\",\"liquidacion\":\"1\"}', 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_users_old`
--

CREATE TABLE `wp98_users_old` (
  `ID` bigint UNSIGNED NOT NULL,
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp98_users_old`
--

INSERT INTO `wp98_users_old` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'shapinetadmin', '$P$B992jwyhEJzww0CCIg4l57J0j.pdf60', 'shapinetadmin', 'admin@shapinetwork.com', '', '2020-03-26 20:05:35', '', 0, 'shapinetadmin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_wc_admin_notes`
--

CREATE TABLE `wp98_wc_admin_notes` (
  `note_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'info',
  `content_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT '0',
  `layout` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_wc_admin_note_actions`
--

CREATE TABLE `wp98_wc_admin_note_actions` (
  `action_id` bigint UNSIGNED NOT NULL,
  `note_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `query` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_wc_category_lookup`
--

CREATE TABLE `wp98_wc_category_lookup` (
  `category_tree_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_wc_customer_lookup`
--

CREATE TABLE `wp98_wc_customer_lookup` (
  `customer_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `username` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_wc_download_log`
--

CREATE TABLE `wp98_wc_download_log` (
  `download_log_id` bigint UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_wc_order_coupon_lookup`
--

CREATE TABLE `wp98_wc_order_coupon_lookup` (
  `order_id` bigint UNSIGNED NOT NULL,
  `coupon_id` bigint UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_wc_order_product_lookup`
--

CREATE TABLE `wp98_wc_order_product_lookup` (
  `order_item_id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `variation_id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT '0',
  `product_gross_revenue` double NOT NULL DEFAULT '0',
  `coupon_amount` double NOT NULL DEFAULT '0',
  `tax_amount` double NOT NULL DEFAULT '0',
  `shipping_amount` double NOT NULL DEFAULT '0',
  `shipping_tax_amount` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_wc_order_stats`
--

CREATE TABLE `wp98_wc_order_stats` (
  `order_id` bigint UNSIGNED NOT NULL,
  `parent_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int NOT NULL DEFAULT '0',
  `total_sales` double NOT NULL DEFAULT '0',
  `tax_total` double NOT NULL DEFAULT '0',
  `shipping_total` double NOT NULL DEFAULT '0',
  `net_total` double NOT NULL DEFAULT '0',
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_wc_order_tax_lookup`
--

CREATE TABLE `wp98_wc_order_tax_lookup` (
  `order_id` bigint UNSIGNED NOT NULL,
  `tax_rate_id` bigint UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT '0',
  `order_tax` double NOT NULL DEFAULT '0',
  `total_tax` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_wc_product_meta_lookup`
--

CREATE TABLE `wp98_wc_product_meta_lookup` (
  `product_id` bigint NOT NULL,
  `sku` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT '0',
  `downloadable` tinyint(1) DEFAULT '0',
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT '0',
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'instock',
  `rating_count` bigint DEFAULT '0',
  `average_rating` decimal(3,2) DEFAULT '0.00',
  `total_sales` bigint DEFAULT '0',
  `tax_status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'taxable',
  `tax_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_wc_reserved_stock`
--

CREATE TABLE `wp98_wc_reserved_stock` (
  `order_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `stock_quantity` double NOT NULL DEFAULT '0',
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_wc_tax_rate_classes`
--

CREATE TABLE `wp98_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_wc_webhooks`
--

CREATE TABLE `wp98_wc_webhooks` (
  `webhook_id` bigint UNSIGNED NOT NULL,
  `status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `delivery_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint NOT NULL,
  `failure_count` smallint NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_woocommerce_api_keys`
--

CREATE TABLE `wp98_woocommerce_api_keys` (
  `key_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp98_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint UNSIGNED NOT NULL,
  `attribute_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp98_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `download_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_woocommerce_log`
--

CREATE TABLE `wp98_woocommerce_log` (
  `log_id` bigint UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint NOT NULL,
  `source` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_woocommerce_order_itemmeta`
--

CREATE TABLE `wp98_woocommerce_order_itemmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `order_item_id` bigint UNSIGNED NOT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_woocommerce_order_items`
--

CREATE TABLE `wp98_woocommerce_order_items` (
  `order_item_id` bigint UNSIGNED NOT NULL,
  `order_item_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp98_woocommerce_payment_tokenmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `payment_token_id` bigint UNSIGNED NOT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_woocommerce_payment_tokens`
--

CREATE TABLE `wp98_woocommerce_payment_tokens` (
  `token_id` bigint UNSIGNED NOT NULL,
  `gateway_id` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_woocommerce_sessions`
--

CREATE TABLE `wp98_woocommerce_sessions` (
  `session_id` bigint UNSIGNED NOT NULL,
  `session_key` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_woocommerce_shipping_zones`
--

CREATE TABLE `wp98_woocommerce_shipping_zones` (
  `zone_id` bigint UNSIGNED NOT NULL,
  `zone_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp98_woocommerce_shipping_zone_locations` (
  `location_id` bigint UNSIGNED NOT NULL,
  `zone_id` bigint UNSIGNED NOT NULL,
  `location_code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp98_woocommerce_shipping_zone_methods` (
  `zone_id` bigint UNSIGNED NOT NULL,
  `instance_id` bigint UNSIGNED NOT NULL,
  `method_id` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_woocommerce_tax_rates`
--

CREATE TABLE `wp98_woocommerce_tax_rates` (
  `tax_rate_id` bigint UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint UNSIGNED NOT NULL,
  `tax_rate_compound` int NOT NULL DEFAULT '0',
  `tax_rate_shipping` int NOT NULL DEFAULT '1',
  `tax_rate_order` bigint UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp98_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp98_woocommerce_tax_rate_locations` (
  `location_id` bigint UNSIGNED NOT NULL,
  `location_code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint UNSIGNED NOT NULL,
  `location_type` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `addres_ip`
--
ALTER TABLE `addres_ip`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `administradorgastos`
--
ALTER TABLE `administradorgastos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `administradorlista`
--
ALTER TABLE `administradorlista`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `anuncios`
--
ALTER TABLE `anuncios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `archivos`
--
ALTER TABLE `archivos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `avatares`
--
ALTER TABLE `avatares`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `binario`
--
ALTER TABLE `binario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bonoinicio`
--
ALTER TABLE `bonoinicio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `calendarios`
--
ALTER TABLE `calendarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `canjes`
--
ALTER TABLE `canjes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `capital`
--
ALTER TABLE `capital`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `carritos`
--
ALTER TABLE `carritos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `chat_codigo`
--
ALTER TABLE `chat_codigo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `coinpayment_transactions`
--
ALTER TABLE `coinpayment_transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coinpayment_transactions_txn_id_unique` (`txn_id`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comentarios_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `commissions`
--
ALTER TABLE `commissions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `component`
--
ALTER TABLE `component`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `componentenoticias`
--
ALTER TABLE `componentenoticias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `componentestransf`
--
ALTER TABLE `componentestransf`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `componentestransferencias`
--
ALTER TABLE `componentestransferencias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `compradirectas`
--
ALTER TABLE `compradirectas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `consultacrypto`
--
ALTER TABLE `consultacrypto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contenidos`
--
ALTER TABLE `contenidos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `costo`
--
ALTER TABLE `costo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `courses_orden`
--
ALTER TABLE `courses_orden`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `courses_tags`
--
ALTER TABLE `courses_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `courses_users`
--
ALTER TABLE `courses_users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `entradas`
--
ALTER TABLE `entradas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `evaluations`
--
ALTER TABLE `evaluations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `evaluations_users`
--
ALTER TABLE `evaluations_users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `evaluations_users_answers`
--
ALTER TABLE `evaluations_users_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `events_users`
--
ALTER TABLE `events_users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `event_content`
--
ALTER TABLE `event_content`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `event_countries`
--
ALTER TABLE `event_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `event_resources`
--
ALTER TABLE `event_resources`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `formulario`
--
ALTER TABLE `formulario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `label` (`label`,`nameinput`);

--
-- Indices de la tabla `ganancias`
--
ALTER TABLE `ganancias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `informacionbancaria`
--
ALTER TABLE `informacionbancaria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `insignia`
--
ALTER TABLE `insignia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `insignia_user`
--
ALTER TABLE `insignia_user`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `iva`
--
ALTER TABLE `iva`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `legal_clauses`
--
ALTER TABLE `legal_clauses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `legal_tabs`
--
ALTER TABLE `legal_tabs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lessons_users`
--
ALTER TABLE `lessons_users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `linkpagos`
--
ALTER TABLE `linkpagos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `memberships`
--
ALTER TABLE `memberships`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `modulocomplementario`
--
ALTER TABLE `modulocomplementario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `monedadicional`
--
ALTER TABLE `monedadicional`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `monedas`
--
ALTER TABLE `monedas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notificacion_tickets`
--
ALTER TABLE `notificacion_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `offers_live`
--
ALTER TABLE `offers_live`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `offers_users`
--
ALTER TABLE `offers_users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `opciones_select`
--
ALTER TABLE `opciones_select`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `optioncarritos`
--
ALTER TABLE `optioncarritos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pagocarritos`
--
ALTER TABLE `pagocarritos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pop`
--
ALTER TABLE `pop`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `prospeccion`
--
ALTER TABLE `prospeccion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `puntos`
--
ALTER TABLE `puntos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `puntosbonos`
--
ALTER TABLE `puntosbonos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `purchase_details`
--
ALTER TABLE `purchase_details`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pushs`
--
ALTER TABLE `pushs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `qr`
--
ALTER TABLE `qr`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `redes_sociales`
--
ALTER TABLE `redes_sociales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `seguridad`
--
ALTER TABLE `seguridad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `semiautobinario`
--
ALTER TABLE `semiautobinario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sesions`
--
ALTER TABLE `sesions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sesions_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `settingactivacion`
--
ALTER TABLE `settingactivacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `settingcliente`
--
ALTER TABLE `settingcliente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `settingcomision`
--
ALTER TABLE `settingcomision`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `settingpagos`
--
ALTER TABLE `settingpagos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `settingpermiso`
--
ALTER TABLE `settingpermiso`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `settingplantilla`
--
ALTER TABLE `settingplantilla`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `settingsestructura`
--
ALTER TABLE `settingsestructura`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `settingspuntos`
--
ALTER TABLE `settingspuntos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `setttingsroles`
--
ALTER TABLE `setttingsroles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `shopping_cart`
--
ALTER TABLE `shopping_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `support_material`
--
ALTER TABLE `support_material`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `survey_options`
--
ALTER TABLE `survey_options`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `survey_options_response`
--
ALTER TABLE `survey_options_response`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `upgrade_messages`
--
ALTER TABLE `upgrade_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user_campo`
--
ALTER TABLE `user_campo`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `walletlog`
--
ALTER TABLE `walletlog`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wp98_actionscheduler_actions`
--
ALTER TABLE `wp98_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id` (`claim_id`);

--
-- Indices de la tabla `wp98_actionscheduler_claims`
--
ALTER TABLE `wp98_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Indices de la tabla `wp98_actionscheduler_groups`
--
ALTER TABLE `wp98_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Indices de la tabla `wp98_actionscheduler_logs`
--
ALTER TABLE `wp98_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Indices de la tabla `wp98_commentmeta`
--
ALTER TABLE `wp98_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp98_comments`
--
ALTER TABLE `wp98_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indices de la tabla `wp98_links`
--
ALTER TABLE `wp98_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `wp98_ms_snippets`
--
ALTER TABLE `wp98_ms_snippets`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wp98_options`
--
ALTER TABLE `wp98_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indices de la tabla `wp98_postmeta`
--
ALTER TABLE `wp98_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp98_posts`
--
ALTER TABLE `wp98_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `wp98_snippets`
--
ALTER TABLE `wp98_snippets`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wp98_termmeta`
--
ALTER TABLE `wp98_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp98_terms`
--
ALTER TABLE `wp98_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `wp98_term_relationships`
--
ALTER TABLE `wp98_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `wp98_term_taxonomy`
--
ALTER TABLE `wp98_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `wp98_usermeta`
--
ALTER TABLE `wp98_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp98_users`
--
ALTER TABLE `wp98_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indices de la tabla `wp98_users_old`
--
ALTER TABLE `wp98_users_old`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indices de la tabla `wp98_wc_admin_notes`
--
ALTER TABLE `wp98_wc_admin_notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Indices de la tabla `wp98_wc_admin_note_actions`
--
ALTER TABLE `wp98_wc_admin_note_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `note_id` (`note_id`);

--
-- Indices de la tabla `wp98_wc_category_lookup`
--
ALTER TABLE `wp98_wc_category_lookup`
  ADD PRIMARY KEY (`category_tree_id`,`category_id`);

--
-- Indices de la tabla `wp98_wc_customer_lookup`
--
ALTER TABLE `wp98_wc_customer_lookup`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `email` (`email`);

--
-- Indices de la tabla `wp98_wc_download_log`
--
ALTER TABLE `wp98_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indices de la tabla `wp98_wc_order_coupon_lookup`
--
ALTER TABLE `wp98_wc_order_coupon_lookup`
  ADD PRIMARY KEY (`order_id`,`coupon_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indices de la tabla `wp98_wc_order_product_lookup`
--
ALTER TABLE `wp98_wc_order_product_lookup`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indices de la tabla `wp98_wc_order_stats`
--
ALTER TABLE `wp98_wc_order_stats`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `status` (`status`(191));

--
-- Indices de la tabla `wp98_wc_order_tax_lookup`
--
ALTER TABLE `wp98_wc_order_tax_lookup`
  ADD PRIMARY KEY (`order_id`,`tax_rate_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indices de la tabla `wp98_wc_product_meta_lookup`
--
ALTER TABLE `wp98_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Indices de la tabla `wp98_wc_reserved_stock`
--
ALTER TABLE `wp98_wc_reserved_stock`
  ADD PRIMARY KEY (`order_id`,`product_id`);

--
-- Indices de la tabla `wp98_wc_tax_rate_classes`
--
ALTER TABLE `wp98_wc_tax_rate_classes`
  ADD PRIMARY KEY (`tax_rate_class_id`),
  ADD UNIQUE KEY `slug` (`slug`(191));

--
-- Indices de la tabla `wp98_wc_webhooks`
--
ALTER TABLE `wp98_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `wp98_woocommerce_api_keys`
--
ALTER TABLE `wp98_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indices de la tabla `wp98_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp98_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indices de la tabla `wp98_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp98_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Indices de la tabla `wp98_woocommerce_log`
--
ALTER TABLE `wp98_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indices de la tabla `wp98_woocommerce_order_itemmeta`
--
ALTER TABLE `wp98_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indices de la tabla `wp98_woocommerce_order_items`
--
ALTER TABLE `wp98_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indices de la tabla `wp98_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp98_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indices de la tabla `wp98_woocommerce_payment_tokens`
--
ALTER TABLE `wp98_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `wp98_woocommerce_sessions`
--
ALTER TABLE `wp98_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Indices de la tabla `wp98_woocommerce_shipping_zones`
--
ALTER TABLE `wp98_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indices de la tabla `wp98_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp98_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indices de la tabla `wp98_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp98_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indices de la tabla `wp98_woocommerce_tax_rates`
--
ALTER TABLE `wp98_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indices de la tabla `wp98_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp98_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `addres_ip`
--
ALTER TABLE `addres_ip`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `administradorgastos`
--
ALTER TABLE `administradorgastos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `administradorlista`
--
ALTER TABLE `administradorlista`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `anuncios`
--
ALTER TABLE `anuncios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `archivos`
--
ALTER TABLE `archivos`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `avatares`
--
ALTER TABLE `avatares`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `binario`
--
ALTER TABLE `binario`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bonoinicio`
--
ALTER TABLE `bonoinicio`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `calendarios`
--
ALTER TABLE `calendarios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT de la tabla `canjes`
--
ALTER TABLE `canjes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `capital`
--
ALTER TABLE `capital`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `carritos`
--
ALTER TABLE `carritos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `chats`
--
ALTER TABLE `chats`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `chat_codigo`
--
ALTER TABLE `chat_codigo`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `coinpayment_transactions`
--
ALTER TABLE `coinpayment_transactions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `commissions`
--
ALTER TABLE `commissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `component`
--
ALTER TABLE `component`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `componentenoticias`
--
ALTER TABLE `componentenoticias`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `componentestransf`
--
ALTER TABLE `componentestransf`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `componentestransferencias`
--
ALTER TABLE `componentestransferencias`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `compradirectas`
--
ALTER TABLE `compradirectas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `consultacrypto`
--
ALTER TABLE `consultacrypto`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contenidos`
--
ALTER TABLE `contenidos`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `costo`
--
ALTER TABLE `costo`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `courses_orden`
--
ALTER TABLE `courses_orden`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `courses_tags`
--
ALTER TABLE `courses_tags`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `courses_users`
--
ALTER TABLE `courses_users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `entradas`
--
ALTER TABLE `entradas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `evaluations`
--
ALTER TABLE `evaluations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `evaluations_users`
--
ALTER TABLE `evaluations_users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `evaluations_users_answers`
--
ALTER TABLE `evaluations_users_answers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `events`
--
ALTER TABLE `events`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de la tabla `events_users`
--
ALTER TABLE `events_users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `event_content`
--
ALTER TABLE `event_content`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `event_countries`
--
ALTER TABLE `event_countries`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `event_resources`
--
ALTER TABLE `event_resources`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `formulario`
--
ALTER TABLE `formulario`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ganancias`
--
ALTER TABLE `ganancias`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `informacionbancaria`
--
ALTER TABLE `informacionbancaria`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `insignia`
--
ALTER TABLE `insignia`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `insignia_user`
--
ALTER TABLE `insignia_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `iva`
--
ALTER TABLE `iva`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `legal_clauses`
--
ALTER TABLE `legal_clauses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `legal_tabs`
--
ALTER TABLE `legal_tabs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `lessons_users`
--
ALTER TABLE `lessons_users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `linkpagos`
--
ALTER TABLE `linkpagos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `memberships`
--
ALTER TABLE `memberships`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `modulocomplementario`
--
ALTER TABLE `modulocomplementario`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `monedadicional`
--
ALTER TABLE `monedadicional`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `monedas`
--
ALTER TABLE `monedas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `notas`
--
ALTER TABLE `notas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `notificacion_tickets`
--
ALTER TABLE `notificacion_tickets`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `offers_live`
--
ALTER TABLE `offers_live`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `offers_users`
--
ALTER TABLE `offers_users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `opciones_select`
--
ALTER TABLE `opciones_select`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT de la tabla `optioncarritos`
--
ALTER TABLE `optioncarritos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pagocarritos`
--
ALTER TABLE `pagocarritos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `paises`
--
ALTER TABLE `paises`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT de la tabla `pop`
--
ALTER TABLE `pop`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `prospeccion`
--
ALTER TABLE `prospeccion`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `puntos`
--
ALTER TABLE `puntos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `puntosbonos`
--
ALTER TABLE `puntosbonos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT de la tabla `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `purchase_details`
--
ALTER TABLE `purchase_details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT de la tabla `pushs`
--
ALTER TABLE `pushs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `qr`
--
ALTER TABLE `qr`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `redes_sociales`
--
ALTER TABLE `redes_sociales`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `resources`
--
ALTER TABLE `resources`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `seguridad`
--
ALTER TABLE `seguridad`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `semiautobinario`
--
ALTER TABLE `semiautobinario`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sesions`
--
ALTER TABLE `sesions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `settingactivacion`
--
ALTER TABLE `settingactivacion`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `settingcliente`
--
ALTER TABLE `settingcliente`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `settingcomision`
--
ALTER TABLE `settingcomision`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `settingpagos`
--
ALTER TABLE `settingpagos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `settingpermiso`
--
ALTER TABLE `settingpermiso`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10117;

--
-- AUTO_INCREMENT de la tabla `settingplantilla`
--
ALTER TABLE `settingplantilla`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `settingsestructura`
--
ALTER TABLE `settingsestructura`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `settingspuntos`
--
ALTER TABLE `settingspuntos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `setttingsroles`
--
ALTER TABLE `setttingsroles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `shopping_cart`
--
ALTER TABLE `shopping_cart`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=260;

--
-- AUTO_INCREMENT de la tabla `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `support_material`
--
ALTER TABLE `support_material`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `survey_options`
--
ALTER TABLE `survey_options`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `survey_options_response`
--
ALTER TABLE `survey_options_response`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `upgrade_messages`
--
ALTER TABLE `upgrade_messages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `walletlog`
--
ALTER TABLE `walletlog`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `wp98_actionscheduler_actions`
--
ALTER TABLE `wp98_actionscheduler_actions`
  MODIFY `action_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `wp98_actionscheduler_claims`
--
ALTER TABLE `wp98_actionscheduler_claims`
  MODIFY `claim_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18442;

--
-- AUTO_INCREMENT de la tabla `wp98_actionscheduler_groups`
--
ALTER TABLE `wp98_actionscheduler_groups`
  MODIFY `group_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `wp98_actionscheduler_logs`
--
ALTER TABLE `wp98_actionscheduler_logs`
  MODIFY `log_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `wp98_commentmeta`
--
ALTER TABLE `wp98_commentmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `wp98_comments`
--
ALTER TABLE `wp98_comments`
  MODIFY `comment_ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `wp98_links`
--
ALTER TABLE `wp98_links`
  MODIFY `link_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp98_ms_snippets`
--
ALTER TABLE `wp98_ms_snippets`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp98_options`
--
ALTER TABLE `wp98_options`
  MODIFY `option_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp98_postmeta`
--
ALTER TABLE `wp98_postmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp98_posts`
--
ALTER TABLE `wp98_posts`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp98_snippets`
--
ALTER TABLE `wp98_snippets`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp98_termmeta`
--
ALTER TABLE `wp98_termmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp98_terms`
--
ALTER TABLE `wp98_terms`
  MODIFY `term_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp98_term_taxonomy`
--
ALTER TABLE `wp98_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp98_usermeta`
--
ALTER TABLE `wp98_usermeta`
  MODIFY `umeta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=377;

--
-- AUTO_INCREMENT de la tabla `wp98_users`
--
ALTER TABLE `wp98_users`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10145;

--
-- AUTO_INCREMENT de la tabla `wp98_users_old`
--
ALTER TABLE `wp98_users_old`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp98_wc_admin_notes`
--
ALTER TABLE `wp98_wc_admin_notes`
  MODIFY `note_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp98_wc_admin_note_actions`
--
ALTER TABLE `wp98_wc_admin_note_actions`
  MODIFY `action_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp98_wc_customer_lookup`
--
ALTER TABLE `wp98_wc_customer_lookup`
  MODIFY `customer_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp98_wc_download_log`
--
ALTER TABLE `wp98_wc_download_log`
  MODIFY `download_log_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp98_wc_tax_rate_classes`
--
ALTER TABLE `wp98_wc_tax_rate_classes`
  MODIFY `tax_rate_class_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `wp98_wc_webhooks`
--
ALTER TABLE `wp98_wc_webhooks`
  MODIFY `webhook_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp98_woocommerce_api_keys`
--
ALTER TABLE `wp98_woocommerce_api_keys`
  MODIFY `key_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp98_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp98_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp98_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp98_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp98_woocommerce_log`
--
ALTER TABLE `wp98_woocommerce_log`
  MODIFY `log_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp98_woocommerce_order_itemmeta`
--
ALTER TABLE `wp98_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp98_woocommerce_order_items`
--
ALTER TABLE `wp98_woocommerce_order_items`
  MODIFY `order_item_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp98_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp98_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp98_woocommerce_payment_tokens`
--
ALTER TABLE `wp98_woocommerce_payment_tokens`
  MODIFY `token_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp98_woocommerce_sessions`
--
ALTER TABLE `wp98_woocommerce_sessions`
  MODIFY `session_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `wp98_woocommerce_shipping_zones`
--
ALTER TABLE `wp98_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp98_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp98_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp98_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp98_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp98_woocommerce_tax_rates`
--
ALTER TABLE `wp98_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp98_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp98_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
