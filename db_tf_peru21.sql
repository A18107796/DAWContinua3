-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 17-12-2019 a las 07:09:42
-- Versión del servidor: 8.0.17
-- Versión de PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_tf_peru21`
--
CREATE DATABASE db_tf_peru21;
-- --------------------------------------------------------
USE db_tf_peru21;
--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `id` bigint(20) NOT NULL,
  `cod_curso` varchar(255) DEFAULT NULL,
  `nombre_curso` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`id`, `cod_curso`, `nombre_curso`) VALUES
(1, 'CUR01', 'Matematica I'),
(2, 'CUR02', 'Matematica II'),
(3, 'CUR03', 'Ingles I'),
(4, 'CUR04', 'Ingles II'),
(5, 'CUR05', 'Teatro'),
(6, 'CUR06', 'Danza'),
(7, 'CUR07', 'Ética'),
(8, 'CUR08', 'Psicologia en Niños I'),
(9, 'CUR09', 'Psicologia en Niños II');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `distritos`
--

CREATE TABLE `distritos` (
  `id_distrito` bigint(20) NOT NULL,
  `nombre_distrito` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `distritos`
--

INSERT INTO `distritos` (`id_distrito`, `nombre_distrito`) VALUES
(1, 'Ancon'),
(2, 'Ate'),
(3, 'Barranco'),
(4, 'Breña'),
(5, 'Carabayllo'),
(6, 'Chaclacayo'),
(7, 'Cieneguilla'),
(8, 'Comas'),
(9, 'Chorrillos'),
(10, 'El Agostino'),
(11, 'Huaycan'),
(12, 'Independencia'),
(13, 'Jesus Maria'),
(14, 'La Molina'),
(15, 'La Victoria'),
(16, 'Lince'),
(17, 'Lima'),
(18, 'Los Olivos'),
(19, 'Lurigancho'),
(20, 'Lurin'),
(21, 'Magdalena del mar'),
(22, 'Miraflores'),
(23, 'Pachacamac'),
(24, 'Pucasana'),
(25, 'Pueblo Libre'),
(26, 'Puente Piedra'),
(27, 'Punta Hermosa'),
(28, 'Punta Negra'),
(29, 'Rimac'),
(30, 'San Isidro'),
(31, 'San Bartolo'),
(32, 'San Isidro'),
(33, 'San Juan de Lurigancho'),
(34, 'San juan de Miraflores'),
(35, 'San Luis'),
(36, 'San Martin de Porres'),
(37, 'San Miguel'),
(38, 'Santa Anita'),
(39, 'Santa Maria del Mar'),
(40, 'Santa Rosa'),
(41, 'Santiago de Surco'),
(42, 'Surquillo'),
(43, 'Villa el Salvador'),
(44, 'Villa María del Triunfo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` bigint(20) NOT NULL,
  `apellido_ma` varchar(255) DEFAULT NULL,
  `apellido_pa` varchar(255) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `dni` varchar(8) DEFAULT NULL,
  `fecha_nac` datetime NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `id_distrito` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `apellido_ma`, `apellido_pa`, `direccion`, `dni`, `fecha_nac`, `nombre`, `sexo`, `telefono`, `id_distrito`) VALUES
(1, 'ENRIQUE', 'SEGIO', 'Av Andres Avelino Caceres', '72812569', '2019-12-17 02:08:36', 'FERNANDEZ QUISPE', 'M', '970125650', 1),
(2, 'Colachagua', 'Izaguirre', 'Av Andres Avelino Caceres', '70875512', '2019-12-17 02:08:36', 'Jonathan', 'M', '927134123', 2),
(3, 'Camarena', 'Molina', 'Santa Clara', '70222563', '2019-12-17 02:08:36', 'Mishell', 'F', '9123125662', 1),
(4, 'Cardenas', 'Veli', 'Santa Anita', '12132569', '2019-12-17 02:08:36', 'Danixza', 'F', '920325620', 3),
(5, 'Yauri', 'Garcia', 'Los alamos', '22842163', '2019-12-17 02:08:36', 'Andres', 'M', '941234123', 4),
(6, 'Guera', 'Arrieta', 'Av Andres Avelino Caceres', '41231245', '2019-12-17 02:08:36', 'Franck', 'M', '923441021', 5),
(7, 'ENRIQUE', 'SERGIO ', 'Av Andres Avelino Caceres', '90921231', '2019-12-17 02:08:36', 'FERNANDEZ QUISPE ', 'M', '923441021', 5),
(8, 'FIAT', ' JOSEPH ', 'Av Andres Avelino Caceres', '41231245', '2019-12-17 02:08:36', 'ANDRADE GARTNER', 'M', '923441021', 5),
(9, 'EMILIANO', 'JOSE ', 'Av Andres Avelino Caceres', '41231245', '2019-12-17 02:08:36', 'HERNANDEZ CHUJUTALLI ', 'M', '923441021', 5),
(10, 'SEMINARIO', 'SEMINARIO', 'Av Andres Avelino Caceres', '41231245', '2019-12-17 02:08:36', 'LUIS ERNESTO', 'M', '923441021', 5),
(11, 'CASTILLO', 'CARDENAS', 'Av Andres Avelino Caceres', '41231245', '2019-12-17 02:08:36', 'JUAN FRANCISCO', 'M', '923441021', 5),
(12, 'ALIAGA', 'ALIAGA', 'Av Andres Avelino Caceres', '41231245', '2019-12-17 02:08:36', 'EVA ROXANA', 'M', '923441021', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especializaciones`
--

CREATE TABLE `especializaciones` (
  `id` bigint(20) NOT NULL,
  `cod_especializacion` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `especializaciones`
--

INSERT INTO `especializaciones` (`id`, `cod_especializacion`, `nombre`) VALUES
(1, 'ESP01', 'Docencia en educación inicial'),
(2, 'ESP02', 'Docencia en educacion Primaria'),
(3, 'ESP03', 'Tencnico Bibliotecario'),
(4, 'ESP04', 'Laboratiorio Escolar'),
(5, 'ESP05', 'Tecnico Deportivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especializacion_cursos`
--

CREATE TABLE `especializacion_cursos` (
  `id_curso` bigint(20) NOT NULL,
  `id_especializacion` bigint(20) NOT NULL,
  `ciclo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `especializacion_cursos`
--

INSERT INTO `especializacion_cursos` (`id_curso`, `id_especializacion`, `ciclo`) VALUES
(1, 1, '1'),
(1, 2, '1'),
(1, 3, '1'),
(2, 1, '2'),
(2, 2, '2'),
(2, 3, '2'),
(3, 1, '1'),
(3, 2, '1'),
(3, 3, '1'),
(4, 1, '2'),
(4, 2, '2'),
(4, 3, '2'),
(5, 1, '1'),
(5, 2, '1'),
(5, 3, '1'),
(6, 1, '1'),
(6, 2, '1'),
(6, 3, '1'),
(7, 1, '1'),
(7, 2, '1'),
(7, 3, '1'),
(8, 1, '1'),
(8, 2, '1'),
(8, 3, '1'),
(9, 1, '2'),
(9, 2, '2'),
(9, 3, '2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `id` bigint(20) NOT NULL,
  `apellido_ma` varchar(255) DEFAULT NULL,
  `apellido_pa` varchar(255) NOT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `dni` varchar(8) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `fecha_nac` datetime NOT NULL,
  `fecha_reg` datetime DEFAULT NULL,
  `nombres` varchar(255) NOT NULL,
  `sexo` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `id_distrito` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`id`, `apellido_ma`, `apellido_pa`, `direccion`, `dni`, `estado`, `fecha_nac`, `fecha_reg`, `nombres`, `sexo`, `telefono`, `id_distrito`) VALUES
(1, 'Colachagua', 'Izaguirre', 'AV SANTA CLARA', '90123412', 'Activo', '2019-12-17 02:08:36', '2019-12-17 02:08:36', 'Ricardo', 'M', '903123941', 1),
(2, 'Colachagua', 'Izaguirre', 'AV SANTA CLARA', '12340123', 'Activo', '2019-12-17 02:08:36', '2019-12-17 02:08:36', 'Jonathan', 'F', '903123941', 1),
(3, 'Camarena', 'Molina', 'AV SANTA CLARA', '90123412', 'Activo', '2019-12-17 02:08:36', '2019-12-17 02:08:36', 'Mishell', 'F', '903123941', 1),
(4, 'Veli', 'Cardenas', 'AV SANTA CLARA', '90124512', 'Activo', '2019-12-17 02:08:36', '2019-12-17 02:08:36', 'Nicol', 'M', '903123941', 1),
(5, 'Cardenas', 'Veli', 'AV SANTA CLARA', '41341212', 'Activo', '2019-12-17 02:08:36', '2019-12-17 02:08:36', 'Danixza', 'M', '903123941', 1),
(6, 'Ciri', 'Reye', 'AV SANTA CLARA', '03123412', 'Activo', '2019-12-17 02:08:36', '2019-12-17 02:08:36', 'Andrea', 'M', '903123941', 1),
(7, 'Neo', 'Reyes', 'AV SANTA CLARA', '34125612', 'Activo', '2019-12-17 02:08:36', '2019-12-17 02:08:36', 'Josselyn', 'M', '903123941', 1),
(8, 'Guere', 'Arrieta', 'AV SANTA CLARA', '03123412', 'Activo', '2019-12-17 02:08:36', '2019-12-17 02:08:36', 'Frank', 'M', '903123941', 1),
(9, 'Colachagua', 'Izaguirre', 'AV SANTA CLARA', '12340123', 'Activo', '2019-12-17 02:08:36', '2019-12-17 02:08:36', 'Jonathan', 'F', '903123941', 1),
(10, 'Camarena', 'Molina', 'AV SANTA CLARA', '90123412', 'Activo', '2019-12-17 02:08:36', '2019-12-17 02:08:36', 'Mishell', 'F', '903123941', 1),
(11, 'Veli', 'Cardenas', 'AV SANTA CLARA', '90124512', 'Activo', '2019-12-17 02:08:36', '2019-12-17 02:08:36', 'Nicol', 'M', '903123941', 1),
(12, 'Cardenas', 'Veli', 'AV SANTA CLARA', '41341212', 'Activo', '2019-12-17 02:08:36', '2019-12-17 02:08:36', 'Danixza', 'M', '903123941', 1),
(13, 'Ciri', 'Reye', 'AV SANTA CLARA', '03123412', 'Activo', '2019-12-17 02:08:36', '2019-12-17 02:08:36', 'Andrea', 'M', '903123941', 1),
(14, 'Neo', 'Reyes', 'AV SANTA CLARA', '34125612', 'Activo', '2019-12-17 02:08:36', '2019-12-17 02:08:36', 'Josselyn', 'M', '903123941', 1),
(15, 'Guere', 'Arrieta', 'AV SANTA CLARA', '03123412', 'Activo', '2019-12-17 02:08:36', '2019-12-17 02:08:36', 'Frank', 'M', '903123941', 1),
(16, 'Colachagua', 'Izaguirre', 'AV SANTA CLARA', '12340123', 'Activo', '2019-12-17 02:08:36', '2019-12-17 02:08:36', 'Jonathan', 'F', '903123941', 1),
(17, 'Camarena', 'Molina', 'AV SANTA CLARA', '90123412', 'Activo', '2019-12-17 02:08:36', '2019-12-17 02:08:36', 'Mishell', 'F', '903123941', 1),
(18, 'Veli', 'Cardenas', 'AV SANTA CLARA', '90124512', 'Activo', '2019-12-17 02:08:36', '2019-12-17 02:08:36', 'Nicol', 'M', '903123941', 1),
(19, 'Cardenas', 'Veli', 'AV SANTA CLARA', '41341212', 'Activo', '2019-12-17 02:08:36', '2019-12-17 02:08:36', 'Danixza', 'M', '903123941', 1),
(20, 'Ciri', 'Reye', 'AV SANTA CLARA', '03123412', 'Activo', '2019-12-17 02:08:36', '2019-12-17 02:08:36', 'Andrea', 'M', '903123941', 1),
(21, 'Neo', 'Reyes', 'AV SANTA CLARA', '34125612', 'Activo', '2019-12-17 02:08:36', '2019-12-17 02:08:36', 'Josselyn', 'M', '903123941', 1),
(22, 'Guere', 'Arrieta', 'AV SANTA CLARA', '03123412', 'Activo', '2019-12-17 02:08:36', '2019-12-17 02:08:36', 'Frank', 'M', '903123941', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante_pagos`
--

CREATE TABLE `estudiante_pagos` (
  `id_estudiante` bigint(20) NOT NULL,
  `id_pago` bigint(20) NOT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `fecha_pago` date DEFAULT NULL,
  `fecha_venc` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `estudiante_pagos`
--

INSERT INTO `estudiante_pagos` (`id_estudiante`, `id_pago`, `estado`, `fecha_pago`, `fecha_venc`) VALUES
(1, 2, 'Pendiente', NULL, '2019-12-24'),
(1, 3, 'Pendiente', NULL, '2020-01-16'),
(1, 4, 'Pendiente', NULL, '2020-02-15'),
(1, 5, 'Pendiente', NULL, '2020-03-16'),
(1, 6, 'Pendiente', NULL, '2020-04-15'),
(2, 2, 'Pendiente', NULL, '2019-12-24'),
(2, 3, 'Pendiente', NULL, '2020-01-16'),
(2, 4, 'Pendiente', NULL, '2020-02-15'),
(2, 5, 'Pendiente', NULL, '2020-03-16'),
(2, 6, 'Pendiente', NULL, '2020-04-15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matriculas`
--

CREATE TABLE `matriculas` (
  `id_matricula` bigint(20) NOT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `fecha_reg` datetime DEFAULT NULL,
  `id_empleado` bigint(20) DEFAULT NULL,
  `id_especializacion` bigint(20) DEFAULT NULL,
  `id_estudiante` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `matriculas`
--

INSERT INTO `matriculas` (`id_matricula`, `estado`, `fecha_reg`, `id_empleado`, `id_especializacion`, `id_estudiante`) VALUES
(1, 'Activo', '2019-12-17 02:08:36', 1, 1, 1),
(2, 'Activo', '2019-12-17 02:08:36', 2, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `id` bigint(20) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `monto` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `pagos`
--

INSERT INTO `pagos` (`id`, `descripcion`, `monto`) VALUES
(1, 'Matricula 2019 - Reinscripción', 250),
(2, 'CUOTA 01 CICLO 2019', 550),
(3, 'CUOTA 02 CICLO 2019', 550),
(4, 'CUOTA 03 CICLO 2019', 550),
(5, 'CUOTA 04 CICLO 2019', 550),
(6, 'CUOTA 05 CICLO 2019', 550);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `distritos`
--
ALTER TABLE `distritos`
  ADD PRIMARY KEY (`id_distrito`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK3vpllew1km5tuno1itwhaohu9` (`id_distrito`);

--
-- Indices de la tabla `especializaciones`
--
ALTER TABLE `especializaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `especializacion_cursos`
--
ALTER TABLE `especializacion_cursos`
  ADD PRIMARY KEY (`id_curso`,`id_especializacion`),
  ADD KEY `FKmbcd7omfe9e4pj1ynmagcgam8` (`id_especializacion`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK30k5rsyid5u2jxbppvckx1sk5` (`id_distrito`);

--
-- Indices de la tabla `estudiante_pagos`
--
ALTER TABLE `estudiante_pagos`
  ADD PRIMARY KEY (`id_estudiante`,`id_pago`),
  ADD KEY `FKdxvaoe0n4a4qjan8d2i38b1xs` (`id_pago`);

--
-- Indices de la tabla `matriculas`
--
ALTER TABLE `matriculas`
  ADD PRIMARY KEY (`id_matricula`),
  ADD KEY `FKoqeh78trtngsuaf9na0756a1q` (`id_empleado`),
  ADD KEY `FK2809dsqlq9yw9b71lq9flko1r` (`id_especializacion`),
  ADD KEY `FK7teemxeuh2m9ttodar3bwapdw` (`id_estudiante`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `distritos`
--
ALTER TABLE `distritos`
  MODIFY `id_distrito` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `especializaciones`
--
ALTER TABLE `especializaciones`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `matriculas`
--
ALTER TABLE `matriculas`
  MODIFY `id_matricula` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `FK3vpllew1km5tuno1itwhaohu9` FOREIGN KEY (`id_distrito`) REFERENCES `distritos` (`id_distrito`);

--
-- Filtros para la tabla `especializacion_cursos`
--
ALTER TABLE `especializacion_cursos`
  ADD CONSTRAINT `FKmbcd7omfe9e4pj1ynmagcgam8` FOREIGN KEY (`id_especializacion`) REFERENCES `especializaciones` (`id`),
  ADD CONSTRAINT `FKnqbwjqiemgcdqpjca7u6im8yn` FOREIGN KEY (`id_curso`) REFERENCES `cursos` (`id`);

--
-- Filtros para la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD CONSTRAINT `FK30k5rsyid5u2jxbppvckx1sk5` FOREIGN KEY (`id_distrito`) REFERENCES `distritos` (`id_distrito`);

--
-- Filtros para la tabla `estudiante_pagos`
--
ALTER TABLE `estudiante_pagos`
  ADD CONSTRAINT `FK76id9omhwoiquh3rrivgqad03` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiantes` (`id`),
  ADD CONSTRAINT `FKdxvaoe0n4a4qjan8d2i38b1xs` FOREIGN KEY (`id_pago`) REFERENCES `pagos` (`id`);

--
-- Filtros para la tabla `matriculas`
--
ALTER TABLE `matriculas`
  ADD CONSTRAINT `FK2809dsqlq9yw9b71lq9flko1r` FOREIGN KEY (`id_especializacion`) REFERENCES `especializaciones` (`id`),
  ADD CONSTRAINT `FK7teemxeuh2m9ttodar3bwapdw` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiantes` (`id`),
  ADD CONSTRAINT `FKoqeh78trtngsuaf9na0756a1q` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
