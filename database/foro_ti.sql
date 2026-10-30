-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-10-2026 a las 17:15:44
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `foro_ti`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistentes_foro`
--

CREATE TABLE `asistentes_foro` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido_paterno` varchar(50) NOT NULL,
  `apellido_materno` varchar(50) NOT NULL,
  `edad` int(11) NOT NULL,
  `matricula` varchar(20) NOT NULL,
  `carrera_id` bigint(20) UNSIGNED NOT NULL,
  `cuatrimestre` varchar(20) NOT NULL,
  `taller_id` bigint(20) UNSIGNED DEFAULT NULL,
  `correo` varchar(100) NOT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE `carreras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Ingeniería en Mantenimiento Industrial', NULL, NULL),
(2, 'Ingeniería en Mecatrónica', NULL, NULL),
(3, 'Ingeniería en Alimentos', NULL, NULL),
(4, 'Ingeniería en Agricultura Sustentable y Protegida', NULL, NULL),
(5, 'Ingeniería Industrial', NULL, NULL),
(6, 'Ingeniería en Tecnologías de la Información e Innovación Digital', NULL, NULL),
(7, 'Licenciatura en Negocios y Mercadotecnia', NULL, NULL),
(8, 'Licenciatura en Contaduría', NULL, NULL),
(9, 'Licenciatura en Administración', NULL, NULL),
(10, 'Ingeniería en Datos e Inteligencia Artificial', '2026-10-14 18:42:40', '2026-10-14 18:42:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `videojuego_id` bigint(20) UNSIGNED NOT NULL,
  `nombre_equipo` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `participantes_torneo`
--

CREATE TABLE `participantes_torneo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `equipo_id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido_paterno` varchar(50) NOT NULL,
  `apellido_materno` varchar(50) NOT NULL,
  `matricula` varchar(20) NOT NULL,
  `carrera_id` bigint(20) UNSIGNED NOT NULL,
  `correo` varchar(100) NOT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `es_capitan` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talleres`
--

CREATE TABLE `talleres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `clave` varchar(50) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `cupo` int(11) NOT NULL DEFAULT 20,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `talleres`
--

INSERT INTO `talleres` (`id`, `clave`, `nombre`, `cupo`, `created_at`, `updated_at`) VALUES
(1, 'analitica-predictiva', 'Next-Gen Data: Analítica Predictiva y Machine Learning Cloud', 20, '2026-10-24 04:33:50', '2026-10-24 04:33:50'),
(2, 'laptops', 'Mantenimiento y reparación de Laptops', 20, '2026-10-24 04:33:50', '2026-10-24 04:33:50'),
(3, 'base-datos', 'Bases de Datos en Entornos Empresariales', 20, '2026-10-24 04:33:50', '2026-10-24 04:33:50'),
(4, 'nube-local', 'Creación y Gestión de Nube Local', 20, '2026-10-24 04:33:50', '2026-10-24 04:33:50'),
(5, 'chatbots', 'Creación de Chatbots y asistentes virtuales', 20, '2026-10-24 04:33:50', '2026-10-24 04:33:50'),
(6, 'spring-boot', 'Creación de Microservicios Spring Boot', 20, '2026-10-24 04:33:50', '2026-10-24 04:33:50'),
(7, 'mikrotik', 'Despliegue de redes MikroTik con apoyo de IA', 20, '2026-10-24 04:33:50', '2026-10-24 04:33:50'),
(8, 'ia', 'Inteligencia Artificial (IA)', 20, '2026-10-24 04:33:50', '2026-10-24 04:33:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videojuegos`
--

CREATE TABLE `videojuegos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `jugadores_por_equipo` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `videojuegos`
--

INSERT INTO `videojuegos` (`id`, `nombre`, `jugadores_por_equipo`, `created_at`, `updated_at`) VALUES
(1, 'KOF (Individual)', 1, NULL, NULL),
(2, 'FIFA (Dúos)', 2, NULL, NULL),
(3, 'Free Fire (Escuadra 4)', 4, NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asistentes_foro`
--
ALTER TABLE `asistentes_foro`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `asistentes_matricula_unique` (`matricula`),
  ADD UNIQUE KEY `asistentes_correo_unique` (`correo`),
  ADD KEY `asistentes_carrera_id_foreign` (`carrera_id`),
  ADD KEY `asistentes_taller_id_foreign` (`taller_id`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `equipos_videojuego_id_foreign` (`videojuego_id`);

--
-- Indices de la tabla `participantes_torneo`
--
ALTER TABLE `participantes_torneo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `participantes_equipo_id_foreign` (`equipo_id`),
  ADD KEY `participantes_carrera_id_foreign` (`carrera_id`);

--
-- Indices de la tabla `talleres`
--
ALTER TABLE `talleres`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clave` (`clave`);

--
-- Indices de la tabla `videojuegos`
--
ALTER TABLE `videojuegos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asistentes_foro`
--
ALTER TABLE `asistentes_foro`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `carreras`
--
ALTER TABLE `carreras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `equipos`
--
ALTER TABLE `equipos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `participantes_torneo`
--
ALTER TABLE `participantes_torneo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `talleres`
--
ALTER TABLE `talleres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `videojuegos`
--
ALTER TABLE `videojuegos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asistentes_foro`
--
ALTER TABLE `asistentes_foro`
  ADD CONSTRAINT `asistentes_carrera_id_foreign` FOREIGN KEY (`carrera_id`) REFERENCES `carreras` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `asistentes_taller_id_foreign` FOREIGN KEY (`taller_id`) REFERENCES `talleres` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD CONSTRAINT `equipos_videojuego_id_foreign` FOREIGN KEY (`videojuego_id`) REFERENCES `videojuegos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `participantes_torneo`
--
ALTER TABLE `participantes_torneo`
  ADD CONSTRAINT `participantes_carrera_id_foreign` FOREIGN KEY (`carrera_id`) REFERENCES `carreras` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `participantes_equipo_id_foreign` FOREIGN KEY (`equipo_id`) REFERENCES `equipos` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
