-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-10-2013 a las 20:39:06
-- Versión del servidor: 5.5.27
-- Versión de PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `jm`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner`
--

CREATE TABLE IF NOT EXISTS `banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imagen` longtext COLLATE utf8_unicode_ci,
  `descripcion` longtext COLLATE utf8_unicode_ci,
  `titulo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `tipo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `banner`
--

INSERT INTO `banner` (`id`, `imagen`, `descripcion`, `titulo`, `link`, `estado`, `created`, `updated`, `tipo`) VALUES
(4, '1040358_10151774670178410_1854856199_o.jpg', 'descripcion', NULL, NULL, 0, '2013-10-15 18:32:59', '2013-10-15 18:32:59', 'p');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE IF NOT EXISTS `categoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen` longtext COLLATE utf8_unicode_ci,
  `descripcion` longtext COLLATE utf8_unicode_ci,
  `estado` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`, `imagen`, `descripcion`, `estado`, `created`, `updated`) VALUES
(1, 'Papeleria', NULL, NULL, NULL, NULL, NULL),
(2, 'Escolar', NULL, NULL, NULL, NULL, NULL),
(3, 'Arte', NULL, NULL, NULL, NULL, NULL),
(4, 'Manualidades', NULL, NULL, NULL, NULL, NULL),
(5, 'Oficina', NULL, NULL, NULL, NULL, NULL),
(6, 'Tecnologia', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE IF NOT EXISTS `compra` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle_envio_id` int(11) NOT NULL,
  `detalle_pago_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_996D34C94DF9B3AD` (`detalle_envio_id`),
  UNIQUE KEY `UNIQ_996D34C92B256D28` (`detalle_pago_id`),
  KEY `IDX_996D34C9DB38439E` (`usuario_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactenos`
--

CREATE TABLE IF NOT EXISTS `contactenos` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apellidos` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mensaje` longtext COLLATE utf8_unicode_ci,
  `estado` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `referencia` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenido`
--

CREATE TABLE IF NOT EXISTS `contenido` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contenido` longtext COLLATE utf8_unicode_ci,
  `estado` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `categoria` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `contenido`
--

INSERT INTO `contenido` (`id`, `titulo`, `contenido`, `estado`, `created`, `updated`, `categoria`) VALUES
(1, 'HISTORIA', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estßndar de las industrias desde el a±o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido us¾ una galerÝa de textos y los mezcl¾ de tal manera que logr¾ hacer un libro de textos especimen. No s¾lo sobrevivi¾ 500 a±os, sino que tambien ingres¾ como texto de relleno en documentos electr¾nicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creaci¾n de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y mßs recientemente con software de autoedici¾n, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.', NULL, NULL, NULL, 'nosotros'),
(2, 'pregunta 1', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estßndar de las industrias desde el a±o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido us¾ una galerÝa de textos y los mezcl¾ de tal manera que logr¾ hacer un libro de textos especimen. No s¾lo sobrevivi¾ 500 a±os, sino que tambien ingres¾ como texto de relleno en documentos electr¾nicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creaci¾n de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y mßs recientemente con software de autoedici¾n, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.', NULL, NULL, NULL, 'preguntas'),
(3, 'pregunta2', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estßndar de las industrias desde el a±o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido us¾ una galerÝa de textos y los mezcl¾ de tal manera que logr¾ hacer un libro de textos especimen. No s¾lo sobrevivi¾ 500 a±os, sino que tambien ingres¾ como texto de relleno en documentos electr¾nicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creaci¾n de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y mßs recientemente con software de autoedici¾n, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.', NULL, NULL, NULL, 'preguntas'),
(4, 'pregunta3', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estßndar de las industrias desde el a±o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido us¾ una galerÝa de textos y los mezcl¾ de tal manera que logr¾ hacer un libro de textos especimen. No s¾lo sobrevivi¾ 500 a±os, sino que tambien ingres¾ como texto de relleno en documentos electr¾nicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creaci¾n de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y mßs recientemente con software de autoedici¾n, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.', NULL, NULL, NULL, 'preguntas'),
(5, 'MISION', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estßndar de las industrias desde el a±o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido us¾ una galerÝa de textos y los mezcl¾ de tal manera que logr¾ hacer un libro de textos especimen. No s¾lo sobrevivi¾ 500 a±os, sino que tambien ingres¾ como texto de relleno en documentos electr¾nicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creaci¾n de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y mßs recientemente con software de autoedici¾n, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.', NULL, NULL, NULL, 'nosotros'),
(6, 'VISION', 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estßndar de las industrias desde el a±o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido us¾ una galerÝa de textos y los mezcl¾ de tal manera que logr¾ hacer un libro de textos especimen. No s¾lo sobrevivi¾ 500 a±os, sino que tambien ingres¾ como texto de relleno en documentos electr¾nicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creaci¾n de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y mßs recientemente con software de autoedici¾n, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.', NULL, NULL, NULL, 'nosotros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleenvio`
--

CREATE TABLE IF NOT EXISTS `detalleenvio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `calle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `departamento` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ciudad` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provincia` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `region` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `codigo_postal` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallepago`
--

CREATE TABLE IF NOT EXISTS `detallepago` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_tarjeta` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ccv` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mes_vence` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `anio_vence` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numero_tarjeta` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrevista`
--

CREATE TABLE IF NOT EXISTS `entrevista` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `personal_id` int(11) NOT NULL,
  `pregunta` longtext COLLATE utf8_unicode_ci,
  `respuesta` longtext COLLATE utf8_unicode_ci,
  `estado` int(11) DEFAULT NULL,
  `created` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_1381A8F65D430949` (`personal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes`
--

CREATE TABLE IF NOT EXISTS `imagenes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `multimedia_id` int(11) NOT NULL,
  `titulo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` longtext COLLATE utf8_unicode_ci,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_CE1C025720531EB8` (`multimedia_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `multimedia`
--

CREATE TABLE IF NOT EXISTS `multimedia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` longtext COLLATE utf8_unicode_ci,
  `descripcion` longtext COLLATE utf8_unicode_ci,
  `estado` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE IF NOT EXISTS `noticias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` longtext COLLATE utf8_unicode_ci,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `imagen` longtext COLLATE utf8_unicode_ci,
  `peso` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`id`, `titulo`, `descripcion`, `created`, `updated`, `estado`, `imagen`, `peso`) VALUES
(2, 'titulo2', 'linea de artesanias , visita en artsenal.com.ec', '2013-07-05 08:02:55', '2013-07-05 08:02:55', 0, 'collares.jpg', 3),
(5, 'noticia 5', 'linea de tecnologia , de todo para ti', '2013-07-05 08:04:54', '2013-07-05 08:04:54', 0, 'Samsung_Galaxy_Ace_2_analisis_20.jpg', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE IF NOT EXISTS `personal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estatura` double DEFAULT NULL,
  `sponsor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `anecdota` longtext COLLATE utf8_unicode_ci,
  `edad` int(11) DEFAULT NULL,
  `extra1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extra2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE IF NOT EXISTS `producto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subcategoria_id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` longtext COLLATE utf8_unicode_ci,
  `stock` int(11) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `visitas` int(11) DEFAULT NULL,
  `grupo` int(11) DEFAULT NULL,
  `codigo` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` longtext COLLATE utf8_unicode_ci,
  `foto` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_5ECD644388D3B71A` (`subcategoria_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1001 ;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `subcategoria_id`, `nombre`, `descripcion`, `stock`, `precio`, `created`, `updated`, `estado`, `visitas`, `grupo`, `codigo`, `tags`, `foto`) VALUES
(535, 1, 'Caja de 10 resmas de Papel Xerox', 'PAPEL BOND XEROX INEN A-4 BLANCO 75GRS. CJA.10 PAQ. X 500 HJS  ', NULL, NULL, NULL, NULL, NULL, NULL, 1, '0101110806', 'xerox, caja, papel, bond, 75 gr, 500 hojas, a4, paquete', NULL),
(536, 1, 'Papel bond A4 Xerox', 'PAPEL BOND XEROX INEN A-4 75GRS. PAQ.500HJS.  ', NULL, NULL, NULL, NULL, NULL, NULL, 2, '010192594', 'xerox, resma, papel, bond, 75 gr, 500 hojas, a4, paquete', NULL),
(537, 1, 'Papel bond A3 Xerox', 'PAPEL BOND XEROX A3 75GRS.PAQ.500HJS.0L124  ', NULL, NULL, NULL, NULL, NULL, NULL, 3, '0101114328', 'xerox, resma, papel, bond, 75 gr, 500 hojas, a3, paquete', NULL),
(538, 1, 'Papel bond A4 Xerox Alta Blancura', 'PAPEL BOND XEROX ALTA BLANCURA TAM. INEN A4 PAQ. 500HJS. REF. 103R00628  ', NULL, NULL, NULL, NULL, NULL, NULL, 4, '0101107354', 'xerox, resma, papel, bond, 75 gr, 500 hojas, a4, paquete, alta blancura', NULL),
(539, 1, 'Caja de 10 resmas de Papel Ideal', 'PAPEL BOND IDEAL INEN A-4 BLANCO 75GRS.CJA.10 PAQ X 500 HJS  ', NULL, NULL, NULL, NULL, NULL, NULL, 5, '0101110805', 'ideal, caja, papel, bond, 75 gr, 500 hojas, a4, paquete', NULL),
(540, 1, 'Papel bond oficio Ideal', 'PAPEL BOND IDEAL OFICIO BLANCO 90GRS. PAQ.500HJS. REF.7861151301148  ', NULL, NULL, NULL, NULL, NULL, NULL, 6, '00005651', 'ideal, resma, papel, bond, 90 gr, 500 hojas, oficio, paquete', NULL),
(541, 1, 'Papel bond A3 Xerox', 'PAPEL BOND IDEAL INEN A-4 BLANCO 75GRS.PAQ.500HJS. REF.7861151301056  ', NULL, NULL, NULL, NULL, NULL, NULL, 7, '00009532', 'ideal, resma, papel, bond, 75 gr, 500 hojas, a4, paquete', NULL),
(542, 2, 'Cart¾n Acolchado', 'CARTON ACOLCHADO CAFE 400GRS 110CMS DE ANCHO /4820-C/', NULL, NULL, NULL, NULL, NULL, NULL, 8, '010395131', 'cart¾n, acolchado, 400 gr, embalaje, metros, pliego', NULL),
(543, 2, 'Cart¾n Corrugado 1 cara', 'CARTON CORRUGADO 1 CARA 356 GRS. 188/205/215/225CM COD. 6839', NULL, NULL, NULL, NULL, NULL, NULL, 9, '010394042', 'cart¾n, corrugado, gr, embalaje, caja, 1 cara, pliego', NULL),
(544, 2, 'Cart¾n Corrugado aislante', 'CARTON CORRUGADO S/M 122X244/260 CMS  AISLANTE TES 175 206K 207 CYR', NULL, NULL, NULL, NULL, NULL, NULL, 10, '00000014', 'cart¾n, corrugado, gr, embalaje, caja, aislante, pliego', NULL),
(545, 2, 'Cart¾n Corrugado', 'CARTON CORRUGADO S/M 90X130 CMS.  175 REF.206K TES', NULL, NULL, NULL, NULL, NULL, NULL, 11, '00000013', 'cart¾n, corrugado, gr, embalaje, caja, aislante, pliego', NULL),
(546, 3, 'Corcho 1/8 de espesor', 'CORCHO 60 X 90 CMS. 1/8 DE ESPESOR', NULL, NULL, NULL, NULL, NULL, NULL, 12, '00004018', 'corcho, espesor, plancha, pliego', NULL),
(547, 3, 'Corcho 1/8 de espesor', 'CORCHO 30X30CMS. 1/8 ESPESOR /00004018', NULL, NULL, NULL, NULL, NULL, NULL, 12, '04018-30', 'corcho, espesor, plancha, pliego', NULL),
(548, 3, 'Corcho 1/4 de espesor', 'CORCHO 60 X 90 CMS. 1/4 DE ESPESOR', NULL, NULL, NULL, NULL, NULL, NULL, 12, '00004017', 'corcho, espesor, plancha, pliego', NULL),
(549, 3, 'Corcho 1/4 de espesor', 'CORCHO 30X30 CMS. 1/4 DE ESPESOR /00004017/', NULL, NULL, NULL, NULL, NULL, NULL, 12, '04017-30', 'corcho, espesor, plancha, pliego', NULL),
(550, 3, 'Corcho 1/4 de espesor', 'CORCHO S/M 90CMSX25MTS 1/4P DE ESPESOR', NULL, NULL, NULL, NULL, NULL, NULL, 12, '010294257', 'corcho, espesor, plancha, pliego', NULL),
(551, 3, 'Corcho 1/2 de espesor', 'CORCHO 30X30 CMS. 1/2 DE ESPESOR /00004016/', NULL, NULL, NULL, NULL, NULL, NULL, 12, '010293552', 'corcho, espesor, plancha, pliego', NULL),
(552, 3, 'Corcho 1/2 de espesor', 'CORCHO 60 X 90 CMS. 1/2 DE ESPESOR', NULL, NULL, NULL, NULL, NULL, NULL, 12, '00004016', 'corcho, espesor, plancha, pliego', NULL),
(553, 4, 'Compßs de Precisi¾n Steadtler', 'COMPAS D.PRECISION STAEDTLER   C/ADAPTADOR REF.551WP01 SKB', NULL, NULL, NULL, NULL, NULL, NULL, 13, '00006564', 'compßs, precisi¾n, steadtler, adaptador', NULL),
(554, 4, 'Compßs 8 Steadtler', 'COMPAS 8 STAEDTLER REF.550-01', NULL, NULL, NULL, NULL, NULL, NULL, 14, '020199077', 'compßs, 8, steadtler, adaptador', NULL),
(555, 4, 'Compßs de Precisi¾n Faber Castell Boys', 'COMPAS PRECISION FABER-A BOYS 2013 REF.174471', NULL, NULL, NULL, NULL, NULL, NULL, 15, '0201107747', 'compßs, faber castell, dise±o, precisi¾n, faber', NULL),
(556, 4, 'Compßs de Precisi¾n Faber Castell Twister', 'COMPAS PRECISION FABER-A COL.SU.TWISTER2013 174493', NULL, NULL, NULL, NULL, NULL, NULL, 16, '0201112084', 'compßs, faber castell, dise±o, precisi¾n, faber', NULL),
(557, 4, 'Compßs de Precisi¾n Faber Castell Girls', 'COMPAS PRECISION FABER-A GIRLS 2012 174441/174442', NULL, NULL, NULL, NULL, NULL, NULL, 17, '0201106775', 'compßs, faber castell, dise±o, precisi¾n, faber', NULL),
(558, 4, 'Compßs de Precisi¾n Faber Castell Grip', 'COMPAS PRECISION FABER-A GRIP MORA REF.174433', NULL, NULL, NULL, NULL, NULL, NULL, 18, '0201107748', 'compßs, faber castell, dise±o, precisi¾n, faber', NULL),
(559, 4, 'Cuaderno Espiral Andaluz Universitario', 'CUADERNO ESPIRAL NORMA ANDALUZ UNIVERSITARIO 1LINEA 100HJS 537654', NULL, NULL, NULL, NULL, NULL, NULL, 19, 'C-A100-L', 'cuaderno, econ¾mico, andaluz, universitario, hojas, espiral, 60, 100, 200, norma, 8', NULL),
(560, 4, 'Cuaderno Espiral Andaluz Universitario', 'CUADERNO ESPIRAL NORMA ANDALUZ UNIVERSITARIO 1LINEA 200HJS.537658', NULL, NULL, NULL, NULL, NULL, NULL, 19, '0201111160', 'cuaderno, econ¾mico, andaluz, universitario, hojas, espiral, 60, 100, 200, norma, 8', NULL),
(561, 4, 'Cuaderno Espiral Andaluz Universitario', 'CUADERNO ESPIRAL NORMA ANDALUZ UNIVERSITARIO 1LINEA 60HJS 537652', NULL, NULL, NULL, NULL, NULL, NULL, 19, '0201102735', 'cuaderno, econ¾mico, andaluz, universitario, hojas, espiral, 60, 100, 200, norma, 8', NULL),
(562, 4, 'Cuaderno Espiral Andaluz Universitario', 'CUADERNO ESPIRAL NORMA ANDALUZ UNIVERSITARIO 2LINEAS 100HJS 537655', NULL, NULL, NULL, NULL, NULL, NULL, 19, '0C-25124', 'cuaderno, econ¾mico, andaluz, universitario, hojas, espiral, 60, 100, 200, norma, 8', NULL),
(563, 4, 'Cuaderno Espiral Andaluz Universitario', 'CUADERNO ESPIRAL NORMA ANDALUZ UNIVERSITARIO 2LINEAS 200HJS.542712', NULL, NULL, NULL, NULL, NULL, NULL, 19, '0201111161', 'cuaderno, econ¾mico, andaluz, universitario, hojas, espiral, 60, 100, 200, norma, 8', NULL),
(564, 4, 'Cuaderno Espiral Andaluz Universitario', 'CUADERNO ESPIRAL NORMA ANDALUZ UNIVERSITARIO 4LINEAS 100HJS 537657', NULL, NULL, NULL, NULL, NULL, NULL, 19, '00024403', 'cuaderno, econ¾mico, andaluz, universitario, hojas, espiral, 60, 100, 200, norma, 8', NULL),
(565, 4, 'Cuaderno Espiral Andaluz Universitario', 'CUADERNO ESPIRAL NORMA ANDALUZ UNIVERSITARIO CUADROS 100HJS 537656', NULL, NULL, NULL, NULL, NULL, NULL, 19, '00C-A100', 'cuaderno, econ¾mico, andaluz, universitario, hojas, espiral, 60, 100, 200, norma, 8', NULL),
(566, 4, 'Cuaderno Espiral Andaluz Universitario', 'CUADERNO ESPIRAL NORMA ANDALUZ UNIVERSITARIO CUADROS 200HJS 537659', NULL, NULL, NULL, NULL, NULL, NULL, 19, '0C-26335', 'cuaderno, econ¾mico, andaluz, universitario, hojas, espiral, 60, 100, 200, norma, 8', NULL),
(567, 4, 'Cuaderno Espiral Andaluz Universitario', 'CUADERNO ESPIRAL NORMA ANDALUZ UNIVERSITARIO CUADROS 60HJS 537653', NULL, NULL, NULL, NULL, NULL, NULL, 19, '0201102736', 'cuaderno, econ¾mico, andaluz, universitario, hojas, espiral, 60, 100, 200, norma, 8', NULL),
(568, 4, 'Cuaderno Cosido Andaluz', 'CUADERNO COSIDO NORMA ANDALUZ 1LINEA 100HJS 537673', NULL, NULL, NULL, NULL, NULL, NULL, 20, '0201109341', 'cuaderno, econ¾mico, andaluz, cosido, hojas, 100, norma, 8', NULL),
(569, 4, 'Cuaderno Cosido Andaluz', 'CUADERNO COSIDO NORMA ANDALUZ 2LINEAS 100HJS 537675', NULL, NULL, NULL, NULL, NULL, NULL, 20, '0201109343', 'cuaderno, econ¾mico, andaluz, cosido, hojas, 100, norma, 8', NULL),
(570, 4, 'Cuaderno Cosido Andaluz', 'CUADERNO COSIDO NORMA ANDALUZ 4LINEAS 100HJS 537079', NULL, NULL, NULL, NULL, NULL, NULL, 20, '0201109344', 'cuaderno, econ¾mico, andaluz, cosido, hojas, 100, norma, 8', NULL),
(571, 4, 'Cuaderno Cosido Andaluz', 'CUADERNO COSIDO NORMA ANDALUZ CUADROS 100HJS 537674', NULL, NULL, NULL, NULL, NULL, NULL, 20, '0201109342', 'cuaderno, econ¾mico, andaluz, cosido, hojas, 100, norma, 8', NULL),
(572, 4, 'Cuaderno Espiral Andaluz Junior', 'CUADERNO ESPIRAL NORMA ANDALUZ JUNIOR 1LINEA 100HJS 539770', NULL, NULL, NULL, NULL, NULL, NULL, 21, '0C-100-L', 'cuaderno, econ¾mico, andaluz, espiral, junior, hojas, 60, 100, 200, norma, 8', NULL),
(573, 4, 'Cuaderno Espiral Andaluz Junior', 'CUADERNO ESPIRAL NORMA ANDALUZ JUNIOR 1LINEA 60HJS 539767', NULL, NULL, NULL, NULL, NULL, NULL, 21, '0201102737', 'cuaderno, econ¾mico, andaluz, espiral, junior, hojas, 60, 100, 200, norma, 8', NULL),
(574, 4, 'Cuaderno Espiral Andaluz Junior', 'CUADERNO ESPIRAL NORMA ANDALUZ JUNIOR 2LINEAS 100HJS 539772 431644', NULL, NULL, NULL, NULL, NULL, NULL, 21, '00025974', 'cuaderno, econ¾mico, andaluz, espiral, junior, hojas, 60, 100, 200, norma, 8', NULL),
(575, 4, 'Cuaderno Espiral Andaluz Junior', 'CUADERNO ESPIRAL NORMA ANDALUZ JUNIOR 2LINEAS 60HJS 539769', NULL, NULL, NULL, NULL, NULL, NULL, 21, '020195791', 'cuaderno, econ¾mico, andaluz, espiral, junior, hojas, 60, 100, 200, norma, 8', NULL),
(576, 4, 'Cuaderno Espiral Andaluz Junior', 'CUADERNO ESPIRAL NORMA ANDALUZ JUNIOR 4LINEAS 100 HJS 539773', NULL, NULL, NULL, NULL, NULL, NULL, 21, '00025197', 'cuaderno, econ¾mico, andaluz, espiral, junior, hojas, 60, 100, 200, norma, 8', NULL),
(577, 4, 'Cuaderno Espiral Andaluz Junior', 'CUADERNO ESPIRAL NORMA ANDALUZ JUNIOR CUADROS 100HJS 539771', NULL, NULL, NULL, NULL, NULL, NULL, 21, 'C-A100-C', 'cuaderno, econ¾mico, andaluz, espiral, junior, hojas, 60, 100, 200, norma, 8', NULL),
(578, 4, 'Cuaderno Espiral Andaluz Junior', 'CUADERNO ESPIRAL NORMA ANDALUZ JUNIOR CUADROS 200HJS 537699', NULL, NULL, NULL, NULL, NULL, NULL, 21, '0C-26333', 'cuaderno, econ¾mico, andaluz, espiral, junior, hojas, 60, 100, 200, norma, 8', NULL),
(579, 4, 'Cuaderno Espiral Andaluz Junior', 'CUADERNO ESPIRAL NORMA ANDALUZ JUNIOR CUADROS 60HJS 539768', NULL, NULL, NULL, NULL, NULL, NULL, 21, '0201102738', 'cuaderno, econ¾mico, andaluz, espiral, junior, hojas, 60, 100, 200, norma, 8', NULL),
(580, 4, 'Cuaderno Espiral Andaluz Junior', 'CUADERNO ESPIRAL NORMA ANDALUZ JUNIOR MIXTO 200HJS', NULL, NULL, NULL, NULL, NULL, NULL, 21, '0201111159', 'cuaderno, econ¾mico, andaluz, espiral, junior, hojas, 60, 100, 200, norma, 8', NULL),
(581, 4, 'Cuaderno Espiral Andaluz Parvulario', 'CUADERNO ESPIRAL NORMA ANDALUZ UNIVERSITARIO PARVULARIO 1LINEA 100HJS.537661', NULL, NULL, NULL, NULL, NULL, NULL, 22, '020195811', 'cuaderno, econ¾mico, andaluz, espiral, hojas, 100, norma, 8, universitario', NULL),
(582, 4, 'Cuaderno Espiral Andaluz Parvulario', 'CUADERNO ESPIRAL NORMA ANDALUZ UNIVERSITARIO PARVULARIO CUADROS 100HJS 529576', NULL, NULL, NULL, NULL, NULL, NULL, 22, '00029576', 'cuaderno, econ¾mico, andaluz, espiral, hojas, 100, norma, 8, universitario', NULL),
(583, 4, 'Cuaderno de CaligrafÝa Palmer', 'CUADERNO CALIGRAFIA PALMER   #3 D.SECUNDARIA', NULL, NULL, NULL, NULL, NULL, NULL, 23, '00006292', 'cuaderno, caligrafÝa, palmer, minuscula, mayuscula, primaria, secundaria, 8', NULL),
(584, 4, 'Cuaderno de CaligrafÝa Palmer', 'CUADERNO CALIGRAFIA PALMER   #4 D.SECUNDARIA', NULL, NULL, NULL, NULL, NULL, NULL, 23, '00006293', 'cuaderno, caligrafÝa, palmer, minuscula, mayuscula, primaria, secundaria, 8', NULL),
(585, 4, 'Cuaderno de CaligrafÝa Palmer', 'CUADERNO CALIGRAFIA PALMER # 1 D.SECUNDARIA', NULL, NULL, NULL, NULL, NULL, NULL, 23, '020194773', 'cuaderno, caligrafÝa, palmer, minuscula, mayuscula, primaria, secundaria, 8', NULL),
(586, 4, 'Cuaderno de CaligrafÝa Palmer', 'CUADERNO CALIGRAFIA PALMER # 1 MINUSCULA', NULL, NULL, NULL, NULL, NULL, NULL, 23, '020194769', 'cuaderno, caligrafÝa, palmer, minuscula, mayuscula, primaria, secundaria, 8', NULL),
(587, 4, 'Cuaderno de CaligrafÝa Palmer', 'CUADERNO CALIGRAFIA PALMER # 2 MINUSCULA', NULL, NULL, NULL, NULL, NULL, NULL, 23, '00006285', 'cuaderno, caligrafÝa, palmer, minuscula, mayuscula, primaria, secundaria, 8', NULL),
(588, 4, 'Cuaderno de CaligrafÝa Palmer', 'CUADERNO CALIGRAFIA PALMER # 3 MINUSCULA', NULL, NULL, NULL, NULL, NULL, NULL, 23, '020194770', 'cuaderno, caligrafÝa, palmer, minuscula, mayuscula, primaria, secundaria, 8', NULL),
(589, 4, 'Cuaderno de CaligrafÝa Palmer', 'CUADERNO CALIGRAFIA PALMER # 4 MINUSCULA', NULL, NULL, NULL, NULL, NULL, NULL, 23, '00002560', 'cuaderno, caligrafÝa, palmer, minuscula, mayuscula, primaria, secundaria, 8', NULL),
(590, 4, 'Cuaderno de CaligrafÝa Palmer', 'CUADERNO CALIGRAFIA PALMER # 5 MINUSCULA', NULL, NULL, NULL, NULL, NULL, NULL, 23, '00006288', 'cuaderno, caligrafÝa, palmer, minuscula, mayuscula, primaria, secundaria, 8', NULL),
(591, 4, 'Cuaderno de CaligrafÝa Palmer', 'CUADERNO CALIGRAFIA PALMER # 6 MINUSCULA', NULL, NULL, NULL, NULL, NULL, NULL, 23, '00006289', 'cuaderno, caligrafÝa, palmer, minuscula, mayuscula, primaria, secundaria, 8', NULL),
(592, 4, 'Cuaderno de CaligrafÝa Palmer', 'CUADERNO CALIGRAFIA Y ORTOGRAFIA PALMER # 1 MAYUSCULA', NULL, NULL, NULL, NULL, NULL, NULL, 23, '020194771', 'cuaderno, caligrafÝa, palmer, minuscula, mayuscula, primaria, secundaria, 8', NULL),
(593, 4, 'Cuaderno de CaligrafÝa Palmer', 'CUADERNO CALIGRAFIA Y ORTOGRAFIA PALMER # 2 MAYUSCULA', NULL, NULL, NULL, NULL, NULL, NULL, 23, '020194772', 'cuaderno, caligrafÝa, palmer, minuscula, mayuscula, primaria, secundaria, 8', NULL),
(594, 4, 'Cuaderno de CaligrafÝa Palmer', 'CUADERNO CALIGRAFIA Y ORTOGRAFIA PALMER # 3 MAYUSCULA', NULL, NULL, NULL, NULL, NULL, NULL, 23, '020194774', 'cuaderno, caligrafÝa, palmer, minuscula, mayuscula, primaria, secundaria, 8', NULL),
(595, 4, 'Cuaderno de CaligrafÝa Palmer', 'CUADERNO CALIGRAFIA Y ORTOGRAFIA PALMER # 4 MAYUSCULA', NULL, NULL, NULL, NULL, NULL, NULL, 23, '00002552', 'cuaderno, caligrafÝa, palmer, minuscula, mayuscula, primaria, secundaria, 8', NULL),
(596, 4, '5 Faber Castell', '5 FABER-A EST/12COL.BRILL.+TUB.TEMP.125023', NULL, NULL, NULL, NULL, NULL, NULL, 24, '0201110779', '5, 8, 12 colores, faber castell, faber, tubo, pincel, set, estuche, caja', NULL),
(597, 6, '5 Jovi', '5 JOVI C/PINCEL CJ.12 COL.REF.800/12', NULL, NULL, NULL, NULL, NULL, NULL, 25, '00800/12', '5, 8, 12 colores, jovi, pincel, set, estuche, caja', NULL),
(598, 5, '5 Pebeo', '5 PEBEO C/PINCEL SET 12 COL. REF. 633610', NULL, NULL, NULL, NULL, NULL, NULL, 26, '020393428', '5, arte, 12 colores, pebeo, pincel, studio, estuche, set, caja', NULL),
(599, 5, '5 Pebeo Studio', '5 PEBEO STUDIO WATERCOLOURS EST.12 COLORES REF.666014', NULL, NULL, NULL, NULL, NULL, NULL, 27, '0203105351', '5, arte, 12 colores, pebeo, pincel, studio, estuche, set, caja', NULL),
(600, 5, '5 Pebeo Studio', '5 PEBEO STUDIO WATERCOLOURS PINCEL EST.10COL.300062', NULL, NULL, NULL, NULL, NULL, NULL, 28, '0201109814', '5, arte, 12 colores, pebeo, pincel, studio, estuche, set, caja', NULL),
(601, 5, '5 Pebeo', '5 PEBEO WATERCOLOURS CJA.METALICA 12COL.REF.300035', NULL, NULL, NULL, NULL, NULL, NULL, 29, '0201112432', '5, arte, 12 colores, pebeo, estuche, set, caja', NULL),
(602, 6, 'Lapices de color Bic', 'LAPICES DE COLOR BIC EVOLUTION CJA.12 COL.1302200', NULL, NULL, NULL, NULL, NULL, NULL, 30, '0201112644', 'lapiz, lapices, color, colores, pinturas, unidades, caja, evolution, bic, 12, 8', NULL),
(603, 6, 'Lapices de color Bic triangular', 'LAPICES DE COLOR BIC KIDS ECOLUTIONS EVOLUTION TRIANGULAR CJA.12COL.1302201', NULL, NULL, NULL, NULL, NULL, NULL, 31, '0201111627', 'lapiz, lapices, color, colores, pinturas, unidades, caja, evolution, bic, 12, triangular, 8', NULL),
(604, 6, 'Lapices de color Bic 5bles', 'LAPICES DE COLOR BIC LARGOS 5BLES CJA.12UND.1300503', NULL, NULL, NULL, NULL, NULL, NULL, 32, '0201112778', 'lapiz, lapices, color, colores, pinturas, unidades, caja, evolution, bic, 12, 5ble, 8', NULL),
(605, 6, 'Lapices de Color Faber Castell 5bles', 'LAPICES DE COLOR FABER 5BLE TRIANGULAR JUMBO GRIP CJA.12UND REF.110912', NULL, NULL, NULL, NULL, NULL, NULL, 33, '020196976', 'lapiz, lapices, color, colores, pinturas, unidades, caja, faber castell, 12, triangular, jumbo, gigante, grip, 8', NULL),
(606, 6, 'Lapices de Color Faber Castell borrable', 'LAPICES DE COLOR FABER BORRABLE CJA/12COL. 116612', NULL, NULL, NULL, NULL, NULL, NULL, 34, '0201105845', 'lapiz, lapices, color, colores, pinturas, unidades, caja, faber castell, 12, borrable, 8', NULL),
(607, 6, 'Lapices de Color Faber Castell 5bles', 'LAPICES DE COLOR FABER-B 5BLE CJA.36COL.REF.120236E', NULL, NULL, NULL, NULL, NULL, NULL, 35, '0201102123', 'lapiz, lapices, color, colores, pinturas, unidades, caja, faber castell, 36, 5ble, 8', NULL),
(608, 6, 'Lapices de Color Faber Castell 5bles', 'LAPICES DE COLOR FABER-B 5BLE LARGO HEXAGONAL CJA.12UND.REF.120212E', NULL, NULL, NULL, NULL, NULL, NULL, 36, '0201102125', 'lapiz, lapices, color, colores, pinturas, unidades, caja, faber castell, 12, hexagonal, largo, 5ble, 8', NULL),
(609, 6, 'Lapices de Color Faber Castell 5bles', 'LAPICES DE COLOR FABER-B 5BLE LARGOS CJA.48UND.REF.120248E', NULL, NULL, NULL, NULL, NULL, NULL, 37, '0201102126', 'lapiz, lapices, color, colores, pinturas, unidades, caja, faber castell, 48, 5ble, largos, 8', NULL),
(610, 6, 'Lapices de Color Faber Castell 5bles', 'LAPICES DE COLOR FABER-B 5BLES CJA.24COL.REF.120224E', NULL, NULL, NULL, NULL, NULL, NULL, 38, '0201102121', 'lapiz, lapices, color, colores, pinturas, unidades, caja, faber castell, 24, 5ble, 8', NULL),
(611, 6, 'Lapices de Color Faber Castell bicolor', 'LAPICES DE COLOR FABER-B BICOLOR 6 LAPICES 12COL.REF.120606GE', NULL, NULL, NULL, NULL, NULL, NULL, 39, '0201102120', 'lapiz, lapices, color, colores, pinturas, unidades, caja, faber castell, bicolor, 6, 8', NULL),
(612, 6, 'Lapices de Color Faber Castell bicolor', 'LAPICES DE COLOR FABER-B BICOLOR CJA.12 UND. REF.120612GE', NULL, NULL, NULL, NULL, NULL, NULL, 40, '0201103120', 'lapiz, lapices, color, colores, pinturas, unidades, caja, faber castell, 12, bicolor, 8', NULL),
(613, 6, 'Lapices de Color Faber Castell bicolor', 'LAPICES DE COLOR FABER-B BICOLOR CJA.24 UND.REF.120624GE', NULL, NULL, NULL, NULL, NULL, NULL, 41, '0201103121', 'lapiz, lapices, color, colores, pinturas, unidades, caja, faber castell, bicolor, 24, 8', NULL),
(614, 6, 'Lapices de Color Faber Castell', 'LAPICES DE COLOR FABER-B CJA.36COL. REF.120136E', NULL, NULL, NULL, NULL, NULL, NULL, 42, '0201102122', 'lapiz, lapices, color, colores, pinturas, unidades, caja, faber castell, 36, 8', NULL),
(615, 6, 'Lapices de Color Faber Castell jumbo', 'LAPICES DE COLOR FABER-B JUMBO TRIANGULAR CJA.12COL.REF.12.5012APE', NULL, NULL, NULL, NULL, NULL, NULL, 43, '0201102130', 'lapiz, lapices, color, colores, pinturas, unidades, caja, faber castell, 12, triangular, jumbo, gigante, 8', NULL),
(616, 6, 'Lapices de Color Faber Castell', 'LAPICES DE COLOR FABER-B LARGOS C/SACAPUNTA CJA.48COL.REF.120148E', NULL, NULL, NULL, NULL, NULL, NULL, 44, '0201102127', 'lapiz, lapices, color, colores, pinturas, unidades, caja, faber castell, 48, largo, sacapuntas, 8', NULL),
(617, 6, 'Lapices de Color Faber Castell triangular', 'LAPICES DE COLOR FABER-B TRIANGULAR CJA.12 UND.REF.120512E', NULL, NULL, NULL, NULL, NULL, NULL, 45, '0201103122', 'lapiz, lapices, color, colores, pinturas, unidades, caja, faber castell, 12, triangular, 8', NULL),
(618, 6, 'Lapices de color Norma gigantes', 'LAPICES DE COLOR NORMA 12UND GIGANTES TRIANGULARES 545642', NULL, NULL, NULL, NULL, NULL, NULL, 46, '020195816', 'lapiz, lapices, color, colores, pinturas, unidades, caja, norma, 12, triangular, jumbo, gigante, 8', NULL),
(619, 6, 'Lapices de color Norma super triangulares', 'LAPICES DE COLOR NORMA 12UND SUPER TRIANGULARES 503957', NULL, NULL, NULL, NULL, NULL, NULL, 47, '0201101794', 'lapiz, lapices, color, colores, pinturas, unidades, caja, norma, 12, triangular, jumbo, gigante, 8', NULL),
(620, 6, 'Lapices de color Staedtler ', 'LAPICES DE COLOR STAEDTLER C/BORRADOR CJA.12COL.REF.144-50-NC12', NULL, NULL, NULL, NULL, NULL, NULL, 48, '0201103477', 'lapiz, lapices, color, colores, pinturas, unidades, caja, steadtler, 12, triangular, jumbo, gigante, 8', NULL),
(621, 6, 'Lapices de color Staedtler jumbo', 'LAPICES DE COLOR STAEDTLER TRIPLUS JUMBO CJA10UNID 128NC10', NULL, NULL, NULL, NULL, NULL, NULL, 49, '0201109913', 'lapiz, lapices, color, colores, pinturas, unidades, caja, steadtler, 12, triangular, jumbo, gigante, 8', NULL),
(622, 6, 'Marcadores Bic Borrable', 'MARCADORES BIC ERASABLE FELT SET.12UND.1300080', NULL, NULL, NULL, NULL, NULL, NULL, 50, '0201111628', 'marcadores, marcador, borrable, 12, colores, caja, bic, 8', NULL),
(623, 6, 'Marcadores Staedtler doble punta', 'MARCADORES STAEDTLER 8 DOBLE PUNTA 320NWP12', NULL, NULL, NULL, NULL, NULL, NULL, 51, '0201100330', 'marcadores, marcador, 8, bicolor, doble punta, 12, colores, caja, steadtler, 8', NULL),
(624, 6, '20 Pastel Staedtler', '20 PASTEL STAEDTLER CJA.16.COL REF.241NC16', NULL, NULL, NULL, NULL, NULL, NULL, 52, '0201102147', '20, pastel, caja, 16, colores, staedtler, 8, estuche', NULL),
(625, 6, 'Plastilina Bic Kids', 'PLASTILINA BIC KIDS JUMBO CJA.12COL. 1101353', NULL, NULL, NULL, NULL, NULL, NULL, 53, '0201111629', 'plastilina, jumbo, bic, bic kids, caja, set, estuche, 12, colores, 8, masa', NULL),
(626, 6, 'Plastilina Faber Castell', 'PLASTILINA FABER-P DELGADA CJA/10BARRAS REF.PLP-10', NULL, NULL, NULL, NULL, NULL, NULL, 54, '0201110219', 'plastilina, delgada, faber castell, caja, set, estuche, 10, colores, 8, masa, barra', NULL),
(627, 6, 'Plastilina Faber Castell Jumbo', 'PLASTILINA FABER-P JUMBO CJA/12BARRAS REF.PLPJ-12', NULL, NULL, NULL, NULL, NULL, NULL, 55, '0201110218', 'plastilina, faber castell, caja, set, estuche, 12, colores, 8, masa, barra', NULL),
(628, 6, 'Plastilina Norma', 'PLASTILINA NORMA 12 COL LARGA 522822', NULL, NULL, NULL, NULL, NULL, NULL, 56, '00022822', 'plastilina, delgada, norma, caja, set, estuche, 12, colores, 8, masa, barra', NULL),
(629, 6, 'Plastilina Staedtler', 'PLASTILINA STAEDTLER EST.10COL. REF.840 PE10/8420 C 10', NULL, NULL, NULL, NULL, NULL, NULL, 57, '020196212', 'plastilina, delgada, staedtler, caja, set, estuche, 10, colores, 8, masa, barra', NULL),
(630, 6, 'Plastilina Staedtler', 'PLASTILINA STAEDTLER EST.6COL.REF.8420 C6', NULL, NULL, NULL, NULL, NULL, NULL, 58, '0201111540', 'plastilina, delgada, staedtler, caja, set, estuche, 6, colores, 8, masa, barra', NULL),
(631, 6, 'Plastilina Jovi Flourescente', 'PLASTILINA JOVI FLUORESCENTE BLS.6UNI REF. 33', NULL, NULL, NULL, NULL, NULL, NULL, 59, '0000P-33', 'plastilina, jovi, caja, set, estuche, 6, colores, 8, masa, barra', NULL),
(632, 6, 'Plastilina Jovi', 'PLASTILINA JOVI CAJA/10 COLORES SURT.90/10', NULL, NULL, NULL, NULL, NULL, NULL, 60, '0201112382', 'plastilina, jovi, caja, set, estuche, 10, colores, 8, masa, barra', NULL),
(633, 6, 'Plastilina Faber Castell 150 grs', 'PLASTILINA FABER-P EN BARRA 150G.AMAR.NEON PLB-150', NULL, NULL, NULL, NULL, NULL, NULL, 61, '0201112111', 'plastilina, barra, 150, gr, faber castell, color, 8, masa, barra', NULL),
(634, 6, 'Plastilina Faber Castell 150 grs', 'PLASTILINA FABER-P EN BARRA 150GRS AZUL PLB-150', NULL, NULL, NULL, NULL, NULL, NULL, 61, '0201112108', 'plastilina, barra, 150, gr, faber castell, color, 8, masa, barra', NULL),
(635, 6, 'Plastilina Faber Castell 150 grs', 'PLASTILINA FABER-P EN BARRA 150GRS ROJA PLB-150', NULL, NULL, NULL, NULL, NULL, NULL, 61, '0201112107', 'plastilina, barra, 150, gr, faber castell, color, 8, masa, barra', NULL),
(636, 6, 'Plastilina Faber Castell 150 grs', 'PLASTILINA FABER-P EN BARRA 150GRS VERDE PLB-150', NULL, NULL, NULL, NULL, NULL, NULL, 61, '0201112110', 'plastilina, barra, 150, gr, faber castell, color, 8, masa, barra', NULL),
(637, 6, 'Plastilina Faber Castell 150 grs', 'PLASTILINA FABER-P EN BARRA150GR AMARILLO PLB-150', NULL, NULL, NULL, NULL, NULL, NULL, 61, '0201112109', 'plastilina, barra, 150, gr, faber castell, color, 8, masa, barra', NULL),
(638, 6, 'Plastilina Jovi 150 grs', 'PLASTILINA JOVI 150GR AMARILLO OSCURO REF.7103', NULL, NULL, NULL, NULL, NULL, NULL, 62, '0201107872', 'plastilina, barra, 150, gr, jovi, color, 8, masa, barra', NULL),
(639, 6, 'Plastilina Jovi 150 grs', 'PLASTILINA JOVI 150GR AMARILLO REF.7102', NULL, NULL, NULL, NULL, NULL, NULL, 62, '0201107871', 'plastilina, barra, 150, gr, jovi, color, 8, masa, barra', NULL),
(640, 6, 'Plastilina Jovi 150 grs', 'PLASTILINA JOVI 150GR AZUL OSCURO REF.7113', NULL, NULL, NULL, NULL, NULL, NULL, 62, '0201107882', 'plastilina, barra, 150, gr, jovi, color, 8, masa, barra', NULL),
(641, 6, 'Plastilina Jovi 150 grs', 'PLASTILINA JOVI 150GR AZUL REF.7112', NULL, NULL, NULL, NULL, NULL, NULL, 62, '0201107881', 'plastilina, barra, 150, gr, jovi, color, 8, masa, barra', NULL),
(642, 6, 'Plastilina Jovi 150 grs', 'PLASTILINA JOVI 150GR BLANCO REF.7101', NULL, NULL, NULL, NULL, NULL, NULL, 62, '0201107870', 'plastilina, barra, 150, gr, jovi, color, 8, masa, barra', NULL),
(643, 6, 'Plastilina Jovi 150 grs', 'PLASTILINA JOVI 150GR FLESH CARNE REF.7108', NULL, NULL, NULL, NULL, NULL, NULL, 62, '0201107877', 'plastilina, barra, 150, gr, jovi, color, 8, masa, barra', NULL),
(644, 6, 'Plastilina Jovi 150 grs', 'PLASTILINA JOVI 150GR LILA REF.7114', NULL, NULL, NULL, NULL, NULL, NULL, 62, '0201107935', 'plastilina, barra, 150, gr, jovi, color, 8, masa, barra', NULL),
(645, 6, 'Plastilina Jovi 150 grs', 'PLASTILINA JOVI 150GR MARRON REF.7109', NULL, NULL, NULL, NULL, NULL, NULL, 62, '0201107878', 'plastilina, barra, 150, gr, jovi, color, 8, masa, barra', NULL),
(646, 6, 'Plastilina Jovi 150 grs', 'PLASTILINA JOVI 150GR NARANJA REF.7104', NULL, NULL, NULL, NULL, NULL, NULL, 62, '0201107873', 'plastilina, barra, 150, gr, jovi, color, 8, masa, barra', NULL),
(647, 6, 'Plastilina Jovi 150 grs', 'PLASTILINA JOVI 150GR NEGRO REF.7115', NULL, NULL, NULL, NULL, NULL, NULL, 62, '0201107936', 'plastilina, barra, 150, gr, jovi, color, 8, masa, barra', NULL),
(648, 6, 'Plastilina Jovi 150 grs', 'PLASTILINA JOVI 150GR ROJO REF.7105', NULL, NULL, NULL, NULL, NULL, NULL, 62, '0201107874', 'plastilina, barra, 150, gr, jovi, color, 8, masa, barra', NULL),
(649, 6, 'Plastilina Jovi 150 grs', 'PLASTILINA JOVI 150GR ROSA REF.7107', NULL, NULL, NULL, NULL, NULL, NULL, 62, '0201107876', 'plastilina, barra, 150, gr, jovi, color, 8, masa, barra', NULL),
(650, 6, 'Plastilina Jovi 150 grs', 'PLASTILINA JOVI 150GR RUBI REF.7106', NULL, NULL, NULL, NULL, NULL, NULL, 62, '0201107875', 'plastilina, barra, 150, gr, jovi, color, 8, masa, barra', NULL),
(651, 6, 'Plastilina Jovi 150 grs', 'PLASTILINA JOVI 150GR VERDE CLARO REF.7110', NULL, NULL, NULL, NULL, NULL, NULL, 62, '0201107879', 'plastilina, barra, 150, gr, jovi, color, 8, masa, barra', NULL),
(652, 6, 'Plastilina Jovi 150 grs', 'PLASTILINA JOVI 150GR VERDE OSCURO REF.7111', NULL, NULL, NULL, NULL, NULL, NULL, 62, '0201107880', 'plastilina, barra, 150, gr, jovi, color, 8, masa, barra', NULL),
(653, 6, 'Plastilina Jovi Patcolor', 'PLASTILINA JOVI AZUL CLARO BAR. 100G PATCOLOR REF.36012', NULL, NULL, NULL, NULL, NULL, NULL, 63, '020196520', 'plastilina, barra, 100, gr, jovi, color, 8, masa, barra, moldear, modelar, endurecible', NULL),
(654, 6, 'Plastilina Jovi Patcolor', 'PLASTILINA JOVI ROJO BAR. 100G PATCOLOR REF. 36005', NULL, NULL, NULL, NULL, NULL, NULL, 63, '020196526', 'plastilina, barra, 100, gr, jovi, color, 8, masa, barra, moldear, modelar, endurecible', NULL),
(655, 6, 'Plastilina Jovi Patcolor', 'PLASTILINA JOVI VERDE CLARO BAR. 100G. PATCOLOR REF. 36010', NULL, NULL, NULL, NULL, NULL, NULL, 63, '020196528', 'plastilina, barra, 100, gr, jovi, color, 8, masa, barra, moldear, modelar, endurecible', NULL),
(656, 6, 'Moldes plastilina', 'MODELADORES JOVI BOLSA COLG./12 + ROD. 7/6R', NULL, NULL, NULL, NULL, NULL, NULL, 64, '0201112396', '8, modeladores, moldes, plßstico, formas, plastilina', NULL),
(657, 6, 'Moldes plastilina', 'MODELADORES JOVI BOLSA COLG./3 REF:422', NULL, NULL, NULL, NULL, NULL, NULL, 64, '0201112392', '8, modeladores, moldes, plßstico, formas, plastilina', NULL),
(658, 6, 'Moldes plastilina', 'MODELADORES JOVI BOLSA COLG./4RODILLO 426', NULL, NULL, NULL, NULL, NULL, NULL, 64, '0201112393', '8, modeladores, moldes, plßstico, formas, plastilina', NULL),
(659, 6, 'Moldes plastilina', 'MODELADORES JOVI BOLSA FORM.GEOM.REF:21', NULL, NULL, NULL, NULL, NULL, NULL, 64, '0201112397', '8, modeladores, moldes, plßstico, formas, plastilina', NULL),
(660, 6, 'Modeladores', 'MODELADORES JOVI EST/3 REF: 9', NULL, NULL, NULL, NULL, NULL, NULL, 65, '0201112388', '8, modeladores, moldes, plßstico, formas, plastilina', NULL),
(661, 6, 'Tempera Jovi Escarchada', 'TEMPERA ESCARCHADA JOVI FLUORESCENTE 4COL.REF.504', NULL, NULL, NULL, NULL, NULL, NULL, 66, '0201104165', '8, tempera, escarchada, escarcha, pintura, flourescente, 4, colores, jovi, caja', NULL),
(662, 6, 'Tempera Bic Kids', 'TEMPERA BIC KIDS 6 COL BASICOS FCO 20ML REF. 1101324', NULL, NULL, NULL, NULL, NULL, NULL, 67, '0201109761', '8, tempera, colores, 6, pintura, bic, kids, caja', NULL),
(663, 6, 'Tempera Bester', 'TEMPERA BESTER 15ML.CJA.6COL.REF.BESTEM033', NULL, NULL, NULL, NULL, NULL, NULL, 68, '0201100389', '8, tempera, 6, pintura, colores, bester, caja', NULL),
(664, 6, 'Tempera Bester Metßlica', 'TEMPERA BESTER METALICA CJA.6 COL.REF.BESTEMPM090', NULL, NULL, NULL, NULL, NULL, NULL, 69, '0201103478', '8, tempera, metßlica, 6, pintura, colores, bester, caja', NULL),
(665, 6, 'Tempera Bester para dedos', 'TEMPERA BESTER P.DEDOS CJA.6 COL.REF.BESTEMPD092', NULL, NULL, NULL, NULL, NULL, NULL, 70, '0201103480', '8, tempera, pintura, dedos, caja, 6, colores, bester', NULL),
(666, 6, 'Tempera Conda', 'TEMPERA CONDA V/COL. TUB.12ML CJ.12  A14121/7312L', NULL, NULL, NULL, NULL, NULL, NULL, 71, '020197437', '8, tempera, conda, tubo, 12, caja, colores', NULL),
(667, 6, 'Tempera Bester Neon', 'TEMPERA BESTER NEON CJA.6 COL.REF.BETEMPN091', NULL, NULL, NULL, NULL, NULL, NULL, 72, '0201103479', '8, tempera, bester, neon, 6, colores, caja', NULL),
(668, 6, 'Tempera Jovi Escarchada', 'TEMPERA ESCARCHADA JOVI CJ 6 COL.+1PINCEL 70CC.518', NULL, NULL, NULL, NULL, NULL, NULL, 73, '0201104164', '8, tempera, escarcha, escarcahda, pintura, 6, colores, jovi', NULL),
(669, 6, 'Temperar Faber Castell', 'TEMPERA FABER-P CJA/7FCOS V/COL.30MLC/PINCEL164007', NULL, NULL, NULL, NULL, NULL, NULL, 74, '0201108289', '8, tempera, 7, colores, faber castell, caja', NULL),
(670, 6, 'Tempera Jovi', 'TEMPERA JOVI 15ML  CJA. 6 COL. REF.520', NULL, NULL, NULL, NULL, NULL, NULL, 75, '000T-520', '8, tempera, jovi, caja, 6, colores', NULL),
(671, 6, 'Tempera Pebeo', 'TEMPERA PEBEO STUDIO EST.12 COLORES REF.666011', NULL, NULL, NULL, NULL, NULL, NULL, 76, '0201105348', '8, tempera, pebeo, studio, estuche, 12, colores, caja', NULL),
(672, 6, 'Tempera Staedtler', 'TEMPERA STAEDTLER FCO 30ML 6COL 885', NULL, NULL, NULL, NULL, NULL, NULL, 77, '020196210', '8, tempera, colores, 6, pintura, caja, staetdler', NULL),
(673, 6, 'Tempera Jovi', 'TEMPERA JOVI CJA/5COLOR SURT. 35ML REF: 505', NULL, NULL, NULL, NULL, NULL, NULL, 78, '0201112352', '8, tempera, jovi, caja, 5, colores', NULL),
(674, 6, 'Tempera Lion', 'TEMPERA LION REF. WC-12-2   EST. 12 TUBOS', NULL, NULL, NULL, NULL, NULL, NULL, 79, '00008313', '8, tempera, lion, estuche, 12, colores, tubos, caja', NULL),
(675, 6, 'Tempera Jovi 500 ml', 'TEMPERA PEBEO PRIMA COLOR PRIMARY MAGENT 500ML. REF.55150', NULL, NULL, NULL, NULL, NULL, NULL, 80, '020193194', '8, tempera, 500 ml, frasco, color, prima, pebeo, pintura, grande', NULL),
(676, 6, 'Tempera Jovi 500 ml', 'TEMPERA PEBEO PRIMA COLOR GOLDEN YELLOW 500ML. REF.55123', NULL, NULL, NULL, NULL, NULL, NULL, 80, '020193196', '8, tempera, 500 ml, frasco, color, prima, pebeo, pintura, grande', NULL),
(677, 6, 'Tempera Jovi 500 ml', 'TEMPERA PEBEO PRIMA COLOR COBALT BLUE 500ML. REF.55114', NULL, NULL, NULL, NULL, NULL, NULL, 80, '020193197', '8, tempera, 500 ml, frasco, color, prima, pebeo, pintura, grande', NULL),
(678, 6, 'Tempera Jovi 500 ml', 'TEMPERA PEBEO PRIMA COLOR YELLOW OCHRE 500ML. REF.55127', NULL, NULL, NULL, NULL, NULL, NULL, 80, '020193198', '8, tempera, 500 ml, frasco, color, prima, pebeo, pintura, grande', NULL),
(679, 6, 'Tempera Jovi 500 ml', 'TEMPERA PEBEO PRIMA COLOR IVORY BLACK 500ML. REF.55126', NULL, NULL, NULL, NULL, NULL, NULL, 80, '020193199', '8, tempera, 500 ml, frasco, color, prima, pebeo, pintura, grande', NULL),
(680, 6, 'Tempera Jovi 500 ml', 'TEMPERA PEBEO PRIMA COLOR BRIGHT ORANGE 500ML. REF.55132', NULL, NULL, NULL, NULL, NULL, NULL, 80, '020193200', '8, tempera, 500 ml, frasco, color, prima, pebeo, pintura, grande', NULL),
(681, 6, 'Tempera Jovi 500 ml', 'TEMPERA PEBEO PRIMA COLOR LEMON YELLOW 500ML. REF.55122', NULL, NULL, NULL, NULL, NULL, NULL, 80, '020193201', '8, tempera, 500 ml, frasco, color, prima, pebeo, pintura, grande', NULL),
(682, 6, 'Tempera Jovi 500 ml', 'TEMPERA PEBEO PRIMA COLOR TYRIAN PINK 500ML. REF.55134', NULL, NULL, NULL, NULL, NULL, NULL, 80, '020193202', '8, tempera, 500 ml, frasco, color, prima, pebeo, pintura, grande', NULL),
(683, 6, 'Tempera Jovi 500 ml', 'TEMPERA PEBEO PRIMA COLOR CARMINE 500ML. REF.55118', NULL, NULL, NULL, NULL, NULL, NULL, 80, '020193203', '8, tempera, 500 ml, frasco, color, prima, pebeo, pintura, grande', NULL),
(684, 6, 'Tempera Jovi 500 ml', 'TEMPERA PEBEO PRIMA COLOR ULTRAMAR BLUE 500ML. REF.55115', NULL, NULL, NULL, NULL, NULL, NULL, 80, '020193204', '8, tempera, 500 ml, frasco, color, prima, pebeo, pintura, grande', NULL),
(685, 6, 'Tempera Jovi 500 ml', 'TEMPERA PEBEO PRIMA COLOR BURNT SIENNA 500ML. REF.55138', NULL, NULL, NULL, NULL, NULL, NULL, 80, '020193205', '8, tempera, 500 ml, frasco, color, prima, pebeo, pintura, grande', NULL),
(686, 6, 'Tempera Jovi 500 ml', 'TEMPERA PEBEO PRIMA COLOR VIOLET 500ML. REF.55147', NULL, NULL, NULL, NULL, NULL, NULL, 80, '020193206', '8, tempera, 500 ml, frasco, color, prima, pebeo, pintura, grande', NULL),
(687, 6, 'Tempera Jovi 500 ml', 'TEMPERA PEBEO PRIMA COLOR RAW SIENNA 500ML. REF.55141', NULL, NULL, NULL, NULL, NULL, NULL, 80, '020193208', '8, tempera, 500 ml, frasco, color, prima, pebeo, pintura, grande', NULL),
(688, 6, 'Tempera Jovi 500 ml', 'TEMPERA PEBEO PRIMA COLOR PRIMARY YELLOW 500ML. REF.55148', NULL, NULL, NULL, NULL, NULL, NULL, 80, '020193209', '8, tempera, 500 ml, frasco, color, prima, pebeo, pintura, grande', NULL),
(689, 6, 'Tempera Jovi 500 ml', 'TEMPERA PEBEO PRIMA COLOR CYAN 500ML. REF.55149', NULL, NULL, NULL, NULL, NULL, NULL, 80, '020193210', '8, tempera, 500 ml, frasco, color, prima, pebeo, pintura, grande', NULL),
(690, 6, 'Tempera Jovi 500 ml', 'TEMPERA PEBEO PRIMA COLOR EMERALD GREEN 500ML. REF.55142', NULL, NULL, NULL, NULL, NULL, NULL, 80, '020193211', '8, tempera, 500 ml, frasco, color, prima, pebeo, pintura, grande', NULL),
(691, 6, 'Tempera Jovi 500 ml', 'TEMPERA PEBEO PRIMA COLOR SILVER 500ML. REF.55152', NULL, NULL, NULL, NULL, NULL, NULL, 80, '020193212', '8, tempera, 500 ml, frasco, color, prima, pebeo, pintura, grande', NULL),
(692, 6, 'Tempera Jovi 500 ml', 'TEMPERA PEBEO PRIMA COLOR LIGHT GREEN 500ML. REF.55143', NULL, NULL, NULL, NULL, NULL, NULL, 80, '020193213', '8, tempera, 500 ml, frasco, color, prima, pebeo, pintura, grande', NULL),
(693, 6, 'Tempera Jovi 500 ml', 'TEMPERA PEBEO PRIMA COLOR SPRING GREEN 500ML. REF.55145', NULL, NULL, NULL, NULL, NULL, NULL, 80, '020193214', '8, tempera, 500 ml, frasco, color, prima, pebeo, pintura, grande', NULL),
(694, 6, 'Tempera Jovi 250 cc Glitter', 'TEMPERA ESCARCHADA JOVI GLITTER VERDE MEDIO 250CM REF.517', NULL, NULL, NULL, NULL, NULL, NULL, 81, '020196563', '8, tempera, 250cm, frasco, color, jovi, pintura, grande, escarcha, escarchado, glitter', NULL),
(695, 6, 'Tempera Jovi 250 cc Glitter', 'TEMPERA ESCARCHADA JOVI GLITTER AMARILLO 250CM REF.51702', NULL, NULL, NULL, NULL, NULL, NULL, 81, '020196566', '8, tempera, 250cm, frasco, color, jovi, pintura, grande, escarcha, escarchado, glitter', NULL),
(696, 6, 'Tempera Jovi 250 cc Glitter', 'TEMPERA ESCARCHADA JOVI GLITTER AZUL CYAN 250CM REF.517/21', NULL, NULL, NULL, NULL, NULL, NULL, 81, '020196567', '8, tempera, 250cm, frasco, color, jovi, pintura, grande, escarcha, escarchado, glitter', NULL),
(697, 6, 'Tempera Jovi 250 cc Glitter', 'TEMPERA ESCARCHADA JOVI GLITTER ROSA 250CM REF.51708', NULL, NULL, NULL, NULL, NULL, NULL, 81, '020196570', '8, tempera, 250cm, frasco, color, jovi, pintura, grande, escarcha, escarchado, glitter', NULL),
(698, 6, 'Tempera Jovi 250 cc Glitter', 'TEMPERA ESCARCHADA JOVI PLATEADA 250ML. REF.51737', NULL, NULL, NULL, NULL, NULL, NULL, 81, '0201104162', '8, tempera, 250cm, frasco, color, jovi, pintura, grande, escarcha, escarchado, glitter', NULL),
(699, 6, 'Tempera Jovi 250 cc Glitter', 'TEMPERA ESCARCHADA JOVI DORADA 250ML. REF.51738', NULL, NULL, NULL, NULL, NULL, NULL, 81, '0201104163', '8, tempera, 250cm, frasco, color, jovi, pintura, grande, escarcha, escarchado, glitter', NULL),
(700, 6, 'Tempera Jovi 250 cc Glitter', 'TEMPERA ESCARCHADA JOVI GLITTER VIOLETA 250CM REF.51723', NULL, NULL, NULL, NULL, NULL, NULL, 81, '020196582', '8, tempera, 250cm, frasco, color, jovi, pintura, grande, escarcha, escarchado, glitter', NULL),
(701, 6, 'Tempera Jovi 250 cc Glitter', 'TEMPERA ESCARCHADA JOVI GLITTER NARANJA 250CM REF.51706', NULL, NULL, NULL, NULL, NULL, NULL, 81, '020196588', '8, tempera, 250cm, frasco, color, jovi, pintura, grande, escarcha, escarchado, glitter', NULL),
(702, 6, 'Tempera Faber Castell 250 ml', 'TEMPERA FABER-P 250ML AZUL REF.1641', NULL, NULL, NULL, NULL, NULL, NULL, 82, '0201108290', '8, tempera, 250 ml, frasco, color, faber castell, pintura, grande', NULL),
(703, 6, 'Tempera Faber Castell 250 ml', 'TEMPERA FABER-P 250ML.ROJO REF.1641', NULL, NULL, NULL, NULL, NULL, NULL, 82, '0201108291', '8, tempera, 250 ml, frasco, color, faber castell, pintura, grande', NULL),
(704, 6, 'Tempera Faber Castell 250 ml', 'TEMPERA FABER-P 250ML. NEGRO REF.1641', NULL, NULL, NULL, NULL, NULL, NULL, 82, '0201108292', '8, tempera, 250 ml, frasco, color, faber castell, pintura, grande', NULL),
(705, 6, 'Tempera Faber Castell 250 ml', 'TEMPERA FABER-P 250ML. VERDE REF.1641', NULL, NULL, NULL, NULL, NULL, NULL, 82, '0201108293', '8, tempera, 250 ml, frasco, color, faber castell, pintura, grande', NULL),
(706, 6, 'Tempera Faber Castell 250 ml', 'TEMPERA FABER-P 250ML. MARRON REF.1641', NULL, NULL, NULL, NULL, NULL, NULL, 82, '0201108294', '8, tempera, 250 ml, frasco, color, faber castell, pintura, grande', NULL),
(707, 6, 'Tempera Faber Castell 250 ml', 'TEMPERA FABER-P 250ML.AMARILLO REF.1641', NULL, NULL, NULL, NULL, NULL, NULL, 82, '0201108295', '8, tempera, 250 ml, frasco, color, faber castell, pintura, grande', NULL),
(708, 6, 'Tempera Faber Castell 250 ml', 'TEMPERA FABER-P 250ML. COLOR PIEL REF.1641', NULL, NULL, NULL, NULL, NULL, NULL, 82, '0201108296', '8, tempera, 250 ml, frasco, color, faber castell, pintura, grande', NULL),
(709, 6, 'Tempera Faber Castell 250 ml', 'TEMPERA FABER-P 250ML. BLANCO REF.1641', NULL, NULL, NULL, NULL, NULL, NULL, 82, '0201108297', '8, tempera, 250 ml, frasco, color, faber castell, pintura, grande', NULL),
(710, 6, 'Tempera Faber Castell 125 ml', 'TEMPERA FABER-P ROJA FCO.125ML REF. 1640N', NULL, NULL, NULL, NULL, NULL, NULL, 83, '0201112101', '8, tempera, 125 ml, frasco, color, faber castell, pintura, grande', NULL),
(711, 6, 'Tempera Faber Castell 125 ml', 'TEMPERA FABER-P FCO.125ML VERDE REF.1640N', NULL, NULL, NULL, NULL, NULL, NULL, 83, '0201112102', '8, tempera, 125 ml, frasco, color, faber castell, pintura, grande', NULL),
(712, 6, 'Tempera Faber Castell 125 ml', 'TEMPERA FABER-P FCO.125ML AMARILLO REF.1640N', NULL, NULL, NULL, NULL, NULL, NULL, 83, '0201112103', '8, tempera, 125 ml, frasco, color, faber castell, pintura, grande', NULL),
(713, 6, 'Tempera Faber Castell 125 ml', 'TEMPERA FABER-P FCO. 125ML VIOLETA REF.1640N', NULL, NULL, NULL, NULL, NULL, NULL, 83, '0201112104', '8, tempera, 125 ml, frasco, color, faber castell, pintura, grande', NULL),
(714, 6, 'Tempera Faber Castell 125 ml', 'TEMPERA FABER-P FCO.125ML ROSADO REF.1640N', NULL, NULL, NULL, NULL, NULL, NULL, 83, '0201112105', '8, tempera, 125 ml, frasco, color, faber castell, pintura, grande', NULL),
(715, 6, 'Tempera Faber Castell 125 ml', 'TEMPERA FABER-P  FCO.125ML NARANJA REF.1640N', NULL, NULL, NULL, NULL, NULL, NULL, 83, '0201112106', '8, tempera, 125 ml, frasco, color, faber castell, pintura, grande', NULL),
(716, 6, 'Tempera Jovi 250 cc', 'TEMPERA LIQUIDA JOVI FCO/250cc BLANCO REF:50201', NULL, NULL, NULL, NULL, NULL, NULL, 84, '0201112353', '8, tempera, 250cc, frasco, color, jovi, pintura, grande', NULL),
(717, 6, 'Tempera Jovi 250 cc', 'TEMPERA LIQUIDA JOVI FCO/250cc AMARILLO 50202', NULL, NULL, NULL, NULL, NULL, NULL, 84, '0201112354', '8, tempera, 250cc, frasco, color, jovi, pintura, grande', NULL),
(718, 6, 'Tempera Jovi 250 cc', 'TEMPERA LIQUIDA JOVI FCO/250cc NARANJA 50206', NULL, NULL, NULL, NULL, NULL, NULL, 84, '0201112355', '8, tempera, 250cc, frasco, color, jovi, pintura, grande', NULL),
(719, 6, 'Tempera Jovi 250 cc', 'TEMPERA LIQUIDA JOVI FCO/250cc ROJO BERMELLON50207', NULL, NULL, NULL, NULL, NULL, NULL, 84, '0201112356', '8, tempera, 250cc, frasco, color, jovi, pintura, grande', NULL),
(720, 6, 'Tempera Jovi 250 cc', 'TEMPERA LIQUIDA JOVI FCO/250cc MAGENTA 50208', NULL, NULL, NULL, NULL, NULL, NULL, 84, '0201112357', '8, tempera, 250cc, frasco, color, jovi, pintura, grande', NULL),
(721, 6, 'Tempera Jovi 250 cc', 'TEMPERA LIQUIDA JOVI FCO/250cc CARNE REF:50209', NULL, NULL, NULL, NULL, NULL, NULL, 84, '0201112358', '8, tempera, 250cc, frasco, color, jovi, pintura, grande', NULL),
(722, 6, 'Tempera Jovi 250 cc', 'TEMPERA LIQUIDA JOVI FCO/250cc CAF╔ REF: 50212', NULL, NULL, NULL, NULL, NULL, NULL, 84, '0201112359', '8, tempera, 250cc, frasco, color, jovi, pintura, grande', NULL),
(723, 6, 'Tempera Jovi 250 cc', 'TEMPERA LIQUIDA JOVI FCO/250cc VERDE MEDIO 50217', NULL, NULL, NULL, NULL, NULL, NULL, 84, '0201112360', '8, tempera, 250cc, frasco, color, jovi, pintura, grande', NULL),
(724, 6, 'Tempera Jovi 250 cc', 'TEMPERA LIQUIDA JOVI FCO/250cc VERDE OSCURO 50219', NULL, NULL, NULL, NULL, NULL, NULL, 84, '0201112361', '8, tempera, 250cc, frasco, color, jovi, pintura, grande', NULL),
(725, 6, 'Tempera Jovi 250 cc', 'TEMPERA LIQUIDA JOVI FCO/250cc AZUL CYAN 50221', NULL, NULL, NULL, NULL, NULL, NULL, 84, '0201112362', '8, tempera, 250cc, frasco, color, jovi, pintura, grande', NULL),
(726, 6, 'Tempera Jovi 250 cc', 'TEMPERA LIQUIDA JOVI FCO/250cc VIOLETA 50223', NULL, NULL, NULL, NULL, NULL, NULL, 84, '0201112363', '8, tempera, 250cc, frasco, color, jovi, pintura, grande', NULL),
(727, 6, 'Tempera Jovi 250 cc', 'TEMPERA LIQUIDA JOVI FCO/250cc AZUL ULTRAMAR 50224', NULL, NULL, NULL, NULL, NULL, NULL, 84, '0201112364', '8, tempera, 250cc, frasco, color, jovi, pintura, grande', NULL),
(728, 6, 'Tempera Jovi 250 cc', 'TEMPERA LIQUIDA JOVI FCO/250cc NEGRO 50230', NULL, NULL, NULL, NULL, NULL, NULL, 84, '0201112365', '8, tempera, 250cc, frasco, color, jovi, pintura, grande', NULL),
(729, 6, 'Tempera Jovi 250 ml Flourescente', 'TEMPERA LIQ.JOVI FLUORESC.FCO/250ML AMARILLO 51902', NULL, NULL, NULL, NULL, NULL, NULL, 85, '0201112366', '8, tempera, 250ml, frasco, color, jovi, pintura, grande', NULL),
(730, 6, 'Tempera Jovi 250 ml Flourescente', 'TEMPERA LIQ. JOVI FLUORESC.FCO/250ML NARANJA 51906', NULL, NULL, NULL, NULL, NULL, NULL, 85, '0201112367', '8, tempera, 250ml, frasco, color, jovi, pintura, grande', NULL),
(731, 6, 'Tempera Jovi 250 ml Flourescente', 'TEMPERA LIQ. JOVI FLUORESC.FCO/250ML MAGENTA 51908', NULL, NULL, NULL, NULL, NULL, NULL, 85, '0201112368', '8, tempera, 250ml, frasco, color, jovi, pintura, grande', NULL),
(732, 6, 'Tempera Jovi 250 ml Flourescente', 'TEMPERA LIQ. JOVI FLUORESC.FCO/250ML VERDE 51917', NULL, NULL, NULL, NULL, NULL, NULL, 85, '0201112369', '8, tempera, 250ml, frasco, color, jovi, pintura, grande', NULL),
(733, 6, 'Tempera Jovi 500 cc', 'TEMPERA LIQ. JOVI FCO/500cc CARNE REF.50609', NULL, NULL, NULL, NULL, NULL, NULL, 86, '0201112370', '8, tempera, 500cc, frasco, color, jovi, pintura, grande', NULL),
(734, 6, 'Tempera Jovi 500 cc', 'TEMPERA LIQUIDA JOVI FCO/500ml. VIOLETA 50623', NULL, NULL, NULL, NULL, NULL, NULL, 86, '0201112371', '8, tempera, 500cc, frasco, color, jovi, pintura, grande', NULL),
(735, 6, 'Tempera Jovi 500 cc', 'TEMPERA LIQUIDA JOVI 500CM3 AZUL CYAN REF.50621', NULL, NULL, NULL, NULL, NULL, NULL, 86, '0T-506AZ', '8, tempera, 500cc, frasco, color, jovi, pintura, grande', NULL),
(736, 6, 'Tempera Jovi 500 cc', 'TEMPERA LIQUIDA JOVI 500CM3 AMARILLO CL REF.50602', NULL, NULL, NULL, NULL, NULL, NULL, 86, 'T-506AMA', '8, tempera, 500cc, frasco, color, jovi, pintura, grande', NULL),
(737, 6, 'Tempera Jovi 500 cc', 'TEMPERA LIQUIDA JOVI 500CM3 AZUL ULTRA REF.50624', NULL, NULL, NULL, NULL, NULL, NULL, 86, 'T-506AUL', '8, tempera, 500cc, frasco, color, jovi, pintura, grande', NULL),
(738, 6, 'Tempera Jovi 500 cc', 'TEMPERA LIQUIDA JOVI 500CM3 BLANCO REF.50601', NULL, NULL, NULL, NULL, NULL, NULL, 86, 'T-506BLA', '8, tempera, 500cc, frasco, color, jovi, pintura, grande', NULL),
(739, 6, 'Tempera Jovi 500 cc', 'TEMPERA LIQUIDA JOVI 500CM3 MAGENTA REF.50608', NULL, NULL, NULL, NULL, NULL, NULL, 86, 'T-506MAG', '8, tempera, 500cc, frasco, color, jovi, pintura, grande', NULL),
(740, 6, 'Tempera Jovi 500 cc', 'TEMPERA LIQ.JOVI 500CM3 MARRON 506/3698  REF.50612', NULL, NULL, NULL, NULL, NULL, NULL, 86, 'T-506MAR', '8, tempera, 500cc, frasco, color, jovi, pintura, grande', NULL),
(741, 6, 'Tempera Jovi 500 cc', 'TEMPERA LIQ. JOVI 500CM3 NARANJA 506/3667 RF.50606', NULL, NULL, NULL, NULL, NULL, NULL, 86, 'T-506NAR', '8, tempera, 500cc, frasco, color, jovi, pintura, grande', NULL),
(742, 6, 'Tempera Jovi 500 cc', 'TEMPERA LIQ.JOVI 500CM3 NEGRO 506/3742 REF.50630', NULL, NULL, NULL, NULL, NULL, NULL, 86, 'T-506NEG', '8, tempera, 500cc, frasco, color, jovi, pintura, grande', NULL),
(743, 6, 'Tempera Jovi 500 cc', 'TEMPERA LIQ.JOVI 500CM3 ORO  METALI506/7443  50638', NULL, NULL, NULL, NULL, NULL, NULL, 86, 'T-506ORM', '8, tempera, 500cc, frasco, color, jovi, pintura, grande', NULL),
(744, 6, 'Tempera Jovi 500 cc', 'TEMPERA LIQ.JOVI 500CM3 PLATA METALI506/7450 50637', NULL, NULL, NULL, NULL, NULL, NULL, 86, 'T-506PLM', '8, tempera, 500cc, frasco, color, jovi, pintura, grande', NULL),
(745, 6, 'Tempera Jovi 500 cc', 'TEMPERA LIQUIDA JOVI 500CM3 ROJO BERMELL REF.50607', NULL, NULL, NULL, NULL, NULL, NULL, 86, 'T-506RJB', '8, tempera, 500cc, frasco, color, jovi, pintura, grande', NULL),
(746, 6, 'Tempera Jovi 500 cc', 'TEMPERA LIQ.JOVI 500CM3 VERDE OSCU 506/3711  50619', NULL, NULL, NULL, NULL, NULL, NULL, 86, 'T-506VEO', '8, tempera, 500cc, frasco, color, jovi, pintura, grande', NULL),
(747, 6, 'Tempera Jovi 500 cc', 'TEMPERA LIQUIDA JOVI 500CM3 VERDE MEDIO REF.50617', NULL, NULL, NULL, NULL, NULL, NULL, 86, 'T-506VME', '8, tempera, 500cc, frasco, color, jovi, pintura, grande', NULL),
(748, 7, 'Abaco Circular', 'ABACO COSMI CIRCULAR 3 VARILLAS', NULL, NULL, NULL, NULL, NULL, NULL, 87, '0201101778', '8, juego, didßctico, ßbaco, circular, 3, 5, varillas, madera', NULL),
(749, 7, 'Abaco Circular', 'ABACO COSMI CIRCULAR 5 VARILLAS', NULL, NULL, NULL, NULL, NULL, NULL, 87, '0201101779', '8, juego, didßctico, ßbaco, circular, 3, 5, varillas, madera', NULL),
(750, 7, 'Abaco', 'ABACO H.M. 19X21CMS V/COLORES 100 MULLOS', NULL, NULL, NULL, NULL, NULL, NULL, 88, '00A-100M', '8, juego, didßctico, ßbaco, mullos, 100, madera', NULL),
(751, 7, 'Abaco', 'ABACO H.M. 21X33CMS V/COLORES 100 MULLOS C/PIZARRA ACRILICA', NULL, NULL, NULL, NULL, NULL, NULL, 88, 'A-100PIZ', '8, juego, didßctico, ßbaco, mullos, 100, madera', NULL),
(752, 7, 'Abaco', 'ABACO ZUMAG 28X22CMS. 100MULLOS', NULL, NULL, NULL, NULL, NULL, NULL, 88, '001326-Z', '8, juego, didßctico, ßbaco, mullos, 100, madera', NULL),
(753, 7, 'Abaco', 'ABACO ZUMAG C/PIZARRA MATEMATICA D.100 MULLOS', NULL, NULL, NULL, NULL, NULL, NULL, 88, '0BC-1326', '8, juego, didßctico, ßbaco, mullos, 100, madera, pizarra', NULL),
(754, 7, 'Bloques 7', 'JUEGO DIDACTICO BLOQUE FDA 21 PZS DBD 021-PVC', NULL, NULL, NULL, NULL, NULL, NULL, 89, '0201104774', '8, juego, didßctico, bloques, piezas, plastico', NULL),
(755, 7, 'Bloques 7', 'JUEGO DIDACTICO BLOQUE FDA 28 PZAS DBD 028-PVC', NULL, NULL, NULL, NULL, NULL, NULL, 89, '0201104775', '8, juego, didßctico, bloques, piezas, plastico', NULL),
(756, 7, 'Bloques 7', 'JUEGO DIDACTICO BLOQUE FDA 35 PZAS DBD 035-PVC', NULL, NULL, NULL, NULL, NULL, NULL, 89, '0201102181', '8, juego, didßctico, bloques, piezas, plastico', NULL),
(757, 7, 'Bloques 7', 'JUEGO DIDACTICO BLOQUE FDA 42 PZAS DBD 042-PVC', NULL, NULL, NULL, NULL, NULL, NULL, 89, '0201102184', '8, juego, didßctico, bloques, piezas, plastico', NULL),
(758, 7, 'Tangram', 'JUEGO DIDACTICO CELINA TANGRAM 7 PCS MDF REF.2-LC102-0527', NULL, NULL, NULL, NULL, NULL, NULL, 90, '0201113320', '8, tangram, didßctico, madera', NULL),
(759, 7, 'Tangram', 'JUEGO DIDACTICO CELINA TANGRAM 7 PCS.MDF REF.2-LC102-0528', NULL, NULL, NULL, NULL, NULL, NULL, 90, '0201113321', '8, tangram, didßctico, madera', NULL),
(760, 23, 'Estuche de Cuero para Iphone 4', 'ESTUCHE AVANTREE D.CUERO P.IPHONE 4 C/TAPA KSLT-IF4-001', NULL, NULL, NULL, NULL, NULL, NULL, 91, '0302113383', 'estuche, forro, iphone 4, cuero, protector', NULL),
(761, 23, 'Stand para Ipad 2', 'ESTUCHE AVANTREE PLEGABLE C/STAND P.IPAD 2 KSLT-IPAD2-03', NULL, NULL, NULL, NULL, NULL, NULL, 92, '0302113384', 'Stand, case, ipad 2, accesorio', NULL),
(762, 23, 'Estuche de cuero para Ipad 2', 'ESTUCHE AVANTREE PLEGLABLE D.CUERO C/STANDP.IPAD2 KSLT-IPA3-01', NULL, NULL, NULL, NULL, NULL, NULL, 93, '0302113385', 'estuche, case, protector, forro, ipad 2, cuero, forro, protector, stand', NULL),
(763, 23, 'Brazaleta para ipod/iphone', 'ESTUCHE AVANTREE TIPO BRAZALETE P.IPOD/IPHONE/IPAD KSAM-54', NULL, NULL, NULL, NULL, NULL, NULL, 94, '0302113381', 'brazalete, accesorio, ipad, iphone', NULL);
INSERT INTO `producto` (`id`, `subcategoria_id`, `nombre`, `descripcion`, `stock`, `precio`, `created`, `updated`, `estado`, `visitas`, `grupo`, `codigo`, `tags`, `foto`) VALUES
(764, 23, 'Estuche para cßmara digital varios colores case logic', 'ESTUCHE CASE LOGIC P. 25 DIGITAL C/1 BOLSILLO GRIS CLGPHOT0012 REF.DCB301', NULL, NULL, NULL, NULL, NULL, NULL, 95, '0302113302', 'Estuche, protector, forro, funda, cßmara digital, celeste, rojo, negro, magenta, rosado, azul, gris, case logic', NULL),
(765, 23, 'Estuche para cßmara digital varios colores case logic', 'ESTUCHE CASE LOGIC P. 25 DIGITAL C/2 BOLSILLOS NEGRO CLGPHOT0014 REF.TBC302', NULL, NULL, NULL, NULL, NULL, NULL, 95, '0302113303', 'Estuche, protector, forro, funda, cßmara digital, celeste, rojo, negro, magenta, rosado, azul, gris, case logic', NULL),
(766, 23, 'Estuche para cßmara digital varios colores case logic', 'ESTUCHE CASE LOGIC P. 25 DIGITAL CELESTE CLGPHOT0041 REF.QPB201', NULL, NULL, NULL, NULL, NULL, NULL, 95, '0302113305', 'Estuche, protector, forro, funda, cßmara digital, celeste, rojo, negro, magenta, rosado, azul, gris, case logic', NULL),
(767, 23, 'Estuche para cßmara digital varios colores case logic', 'ESTUCHE CASE LOGIC P. 25 DIGITAL GRIS CLGPHOT0042 REF.QPB201', NULL, NULL, NULL, NULL, NULL, NULL, 95, '0302113306', 'Estuche, protector, forro, funda, cßmara digital, celeste, rojo, negro, magenta, rosado, azul, gris, case logic', NULL),
(768, 23, 'Estuche para cßmara digital varios colores case logic', 'ESTUCHE CASE LOGIC P. 25 DIGITAL MAGENTA CLGPHOT0043 REF.QPB201', NULL, NULL, NULL, NULL, NULL, NULL, 95, '0302113307', 'Estuche, protector, forro, funda, cßmara digital, celeste, rojo, negro, magenta, rosado, azul, gris, case logic', NULL),
(769, 23, 'Estuche para cßmara digital varios colores case logic', 'ESTUCHE CASE LOGIC P. 25 DIGITAL NEGRO CLGPHOT0044 REF.QPB201', NULL, NULL, NULL, NULL, NULL, NULL, 95, '0302113308', 'Estuche, protector, forro, funda, cßmara digital, celeste, rojo, negro, magenta, rosado, azul, gris, case logic', NULL),
(770, 23, 'Estuche para cßmara digital varios colores case logic', 'ESTUCHE CASE LOGIC P. 25 DIGITAL ROJO CLGPHOT0045 REF.QPB201', NULL, NULL, NULL, NULL, NULL, NULL, 95, '0302113309', 'Estuche, protector, forro, funda, cßmara digital, celeste, rojo, negro, magenta, rosado, azul, gris, case logic', NULL),
(771, 23, 'Estuche para cßmara digital varios colores case logic', 'ESTUCHE CASE LOGIC P. 25 DIGITAL ROSADO CLGPHOT00079 REF.UNZB2', NULL, NULL, NULL, NULL, NULL, NULL, 95, '0302113311', 'Estuche, protector, forro, funda, cßmara digital, celeste, rojo, negro, magenta, rosado, azul, gris, case logic', NULL),
(772, 23, 'Estuche para cßmara digital varios colores case logic', 'ESTUCHE CASE LOGIC P. 25 DIGITAL AZUL CLGPHOT00075 REF.UNZB2', NULL, NULL, NULL, NULL, NULL, NULL, 95, '0302113310', 'Estuche, protector, forro, funda, cßmara digital, celeste, rojo, negro, magenta, rosado, azul, gris, case logic', NULL),
(773, 23, 'Case de aluminio para Iphone 4', 'ESTUCHE CASE PROTECTOR D.ALUMINIO ULTRA SLIM P.PHONE 4 KSMT-IF4G-004', NULL, NULL, NULL, NULL, NULL, NULL, 96, '0302113387', 'Estuche, case, forro, aluminio, iphone4, slim, protector', NULL),
(774, 23, 'Case de aluminio para Iphone 5', 'ESTUCHE CASE PROTECTOR MT001 P.IPHONE 4 D.ALUMINIO /AMPLIFICADOR D.SEÐAL KSMT-IF4G-001', NULL, NULL, NULL, NULL, NULL, NULL, 96, '0302113386', 'Estuche, case, forro, aluminio, iphone4, slim, protector', NULL),
(775, 23, 'Estuche para 28 7"', 'ESTUCHE KLIP XTREME MICROS P.28 KNS-010', NULL, NULL, NULL, NULL, NULL, NULL, 97, '0302113396', '"estuche, forro, protector, sleeve, 28, 7"""', NULL),
(776, 23, 'Estuche para 28 7"', 'ESTUCHE KLIP XTREME TABULA P.28 KNS-020', NULL, NULL, NULL, NULL, NULL, NULL, 97, '0302113397', '"estuche, forro, protector, sleeve, 28, 7"""', NULL),
(777, 23, 'Estuche para 28 7"', 'ESTUCHE P.28 7 COL.SURTIDOS ROJ/NEG/AZ/MOR/VER/CAF/CRE/FUC ROTATING 360', NULL, NULL, NULL, NULL, NULL, NULL, 97, '0302114296', '"estuche, forro, protector, sleeve, 28, 7"""', NULL),
(778, 23, 'Estuche para 28 7"', 'ESTUCHE P.28 7 NEGRO ROTATING 360', NULL, NULL, NULL, NULL, NULL, NULL, 97, '0302114295', '"estuche, forro, protector, sleeve, 28, 7"""', NULL),
(779, 23, 'Estuche para 28 7"', 'ESTUCHE P.28 CERRADO 7 3A', NULL, NULL, NULL, NULL, NULL, NULL, 97, '0302114454', '"estuche, forro, protector, sleeve, 28, 7"""', NULL),
(780, 23, 'Estuche para 28 7"', 'ESTUCHE P.28 GIRATORIO 7NEGRO CON MARCA', NULL, NULL, NULL, NULL, NULL, NULL, 97, '0302114460', '"estuche, forro, protector, sleeve, 28, 7"""', NULL),
(781, 23, 'Estuche para 28 7"', 'ESTUCHE P.28 GIRATORIO CON MARCA COL.SURTIDOS', NULL, NULL, NULL, NULL, NULL, NULL, 97, '0302114461', '"estuche, forro, protector, sleeve, 28, 7"""', NULL),
(782, 23, 'Estuche para 28 7"', 'ESTUCHE P.28 SAMSUNG 7 P3100 RANURA VERTICAL TRASERA 3A', NULL, NULL, NULL, NULL, NULL, NULL, 97, '0302114453', '"estuche, forro, protector, sleeve, 28, 7"""', NULL),
(783, 23, 'Estuche para 28 7"', 'PROTECTOR AVANTREE P.28 7 NEOPRENO NEGRO KSFB-TAB-7-A', NULL, NULL, NULL, NULL, NULL, NULL, 97, '0302114439', '"estuche, forro, protector, sleeve, 28, 7"""', NULL),
(784, 23, 'Estuche para cßmara digital varios colores Klip Xtream', 'ESTUCHE KLIP XTREME P.25 COMPACTA NEGRO C/VERDE RF.KCB-310/AN125KLX04', NULL, NULL, NULL, NULL, NULL, NULL, 98, '0302109026', 'Estuche, protector, forro, funda, klip xtream, neopreno', NULL),
(785, 23, 'Estuche para cßmara digital varios colores Klip Xtream', 'ESTUCHE KLIP XTREME P.25 COMPACTO KCB-340B AG128KLX50', NULL, NULL, NULL, NULL, NULL, NULL, 98, '0302110846', 'Estuche, protector, forro, funda, klip xtream, neopreno', NULL),
(786, 23, 'Estuche para cßmara digital varios colores Klip Xtream', 'ESTUCHE KLIP XTREME P.25 COMPACTO KCB-340OL AG128KLX52', NULL, NULL, NULL, NULL, NULL, NULL, 98, '0302110844', 'Estuche, protector, forro, funda, klip xtream, neopreno', NULL),
(787, 23, 'Estuche para cßmara digital varios colores Klip Xtream', 'ESTUCHE KLIP XTREME P.25 COMPACTO KCB-340P AG128KLX51', NULL, NULL, NULL, NULL, NULL, NULL, 98, '0302110845', 'Estuche, protector, forro, funda, klip xtream, neopreno', NULL),
(788, 23, 'Estuche para cßmara digital varios colores Klip Xtream', 'ESTUCHE KLIP XTREME P.25 DELGADO KCB-330A AG128KLX01', NULL, NULL, NULL, NULL, NULL, NULL, 98, '0302110847', 'Estuche, protector, forro, funda, klip xtream, neopreno', NULL),
(789, 23, 'Estuche para cßmara digital varios colores Klip Xtream', 'ESTUCHE P.25 KLIP XTREME D.CUERO KCB-500', NULL, NULL, NULL, NULL, NULL, NULL, 98, '0302113401', 'Estuche, protector, forro, funda, klip xtream, neopreno', NULL),
(790, 23, 'Estuche para cßmara digital varios colores Klip Xtream', 'ESTUCHE P.25 KLIP XTREME TATOO ROSADOKCB-330P', NULL, NULL, NULL, NULL, NULL, NULL, 98, '0302113399', 'Estuche, protector, forro, funda, klip xtream, neopreno', NULL),
(791, 23, 'Estuche para cßmara digital varios colores Klip Xtream', 'ESTUCHE P.25 KLIP XTREME TATOO VERDE KCB-330G', NULL, NULL, NULL, NULL, NULL, NULL, 98, '0302113400', 'Estuche, protector, forro, funda, klip xtream, neopreno', NULL),
(792, 23, 'Estuche para laptop 12.1", 15.4" varios colores', 'ESTUCHE P. LAPTOP MANHATAN NEGRO/GRIS 12.1 421843', NULL, NULL, NULL, NULL, NULL, NULL, 99, '0301105165', '"Estuche, forro, sleeve, protector, neopreno, laptop, 12.1"", 15.4"", manhattan"', NULL),
(793, 23, 'Estuche para laptop 12.1", 15.4" varios colores"', 'ESTUCHE P. LAPTOP MANHATAN VIOLET/CREMA15.4421850', NULL, NULL, NULL, NULL, NULL, NULL, 99, '0301105164', '"Estuche, forro, sleeve, protector, neopreno, laptop, 12.1"", 15.4"", manhattan"', NULL),
(794, 23, 'Estuche para laptop 12.1", 15.4" varios colores"', 'ESTUCHE P.LAPTOP MANHATAN VIOLET/CREM 12.1 421867', NULL, NULL, NULL, NULL, NULL, NULL, 99, '0301105170', '"Estuche, forro, sleeve, protector, neopreno, laptop, 12.1"", 15.4"", manhattan"', NULL),
(795, 23, 'Estuche para laptop 12.1", 15.4" varios colores"', 'ESTUCHE P.LAPTOP MANHATTAN 12.1 VERDE/BABY 421928', NULL, NULL, NULL, NULL, NULL, NULL, 99, '0302106885', '"Estuche, forro, sleeve, protector, neopreno, laptop, 12.1"", 15.4"", manhattan"', NULL),
(796, 23, 'Estuche para laptop 12.1", 15.4" varios colores"', 'ESTUCHE P.LAPTOP MANHATTAN 15.4 VERDE/BABY 421935', NULL, NULL, NULL, NULL, NULL, NULL, 99, '0302106886', '"Estuche, forro, sleeve, protector, neopreno, laptop, 12.1"", 15.4"", manhattan"', NULL),
(797, 23, 'Estuche para laptop 12.1", 15.4" varios colores"', 'ESTUCHE P.LAPTOP MANHATTAN NEGRO/GRIS 15.4 421829', NULL, NULL, NULL, NULL, NULL, NULL, 99, '0301105163', '"Estuche, forro, sleeve, protector, neopreno, laptop, 12.1"", 15.4"", manhattan"', NULL),
(798, 23, 'Estuche de Neopreno para Ipad/ Ipad 2', 'ESTUCHE PROTECTOR AVANTREE P.IPAD/IPAD2 NEOPRENO KSFB-TAB-10-C', NULL, NULL, NULL, NULL, NULL, NULL, 100, '0302113382', 'estuche, forro, sleeve, protector, neopreno, 28, ipad, ipad2', NULL),
(799, 23, 'Estuche para laptop 10.2", 14.1""', 'ESTUCHE PROTECTOR KLIP XTREME P.PORTATIL 14.1 NEOPRENO KNS-310B/KSN-310GR', NULL, NULL, NULL, NULL, NULL, NULL, 101, '0302113395', '"Estuche, forro, sleeve, protector, neopreno, laptop, 10.1"", 14.1"", Klip Xtream, reversible"', NULL),
(800, 23, 'Estuche para laptop 10.2", 14.1""', 'ESTUCHE REVERSIBLE KLIP XTREME P. LAPTOP 10.2 V/COLORES REF.KSN-110', NULL, NULL, NULL, NULL, NULL, NULL, 101, '0302109022', '"Estuche, forro, sleeve, protector, neopreno, laptop, 10.1"", 14.1"", Klip Xtream, reversible"', NULL),
(801, 23, 'Estuche de cuero con teclado para Ipad2', 'ESTUCHE TOTTO PORTA IPAD PADITO AC54IND045-112OZ', NULL, NULL, NULL, NULL, NULL, NULL, 102, '0302111434', 'Estuche, cuero, teclado, bluetooth, ipad2', NULL),
(802, 23, 'Kit de limpieza para ipod/ipad/iphone', 'KIT DE LIMPIEZA AVANTREE P.IPOD/IPHONE/IPAD SCCL-SET-01', NULL, NULL, NULL, NULL, NULL, NULL, 103, '0302113389', 'kit, limpieza, ipad, iphone, ipod', NULL),
(803, 23, 'Kit de impieza para pantallas', 'KIT LIMPIEZA K-BYTE INC. ESPUMA/LIMPIA PANTALLA', NULL, NULL, NULL, NULL, NULL, NULL, 104, '00K-BYTE', 'kit, limpieza, pantalla, monitor, espuma', NULL),
(804, 23, 'Mouse inalßmbrimo para presentaciones', 'MOUSE MANHATAN INALAMB.P. PRESENTACIO 2.4GHZ177184', NULL, NULL, NULL, NULL, NULL, NULL, 105, '0302105178', 'mouse, inlßmbrico, presentaci¾n, diapositivas, power point', NULL),
(805, 23, 'Mouse micro Ëptico con Hub USB de 2 puertos', 'MOUSE MANHATAN OPTICO 2PORT USB2.0 HUB NANO 177559', NULL, NULL, NULL, NULL, NULL, NULL, 106, '0302106880', 'mouse, mouse usb, mouse ¾ptico, hub, micro, mini', NULL),
(806, 23, 'Mouse inalßmbrico para presentaciones', 'MOUSE MANHATTAN OPTICAL INALAMB. USB 176828', NULL, NULL, NULL, NULL, NULL, NULL, 107, '0302103648', 'mouse, inlßmbrico, presentaci¾n, diapositivas, power point', NULL),
(807, 23, 'Mouse ¾ptico USB varios colores', 'MOUSE MANHATTAN OPTICO AMARILLO REF.177689', NULL, NULL, NULL, NULL, NULL, NULL, 108, '0302109843', 'mouse, usb, ¾ptico, varios colores', NULL),
(808, 23, 'Mouse ¾ptico USB varios colores', 'MOUSE MANHATTAN OPTICO ROJO REF.177702', NULL, NULL, NULL, NULL, NULL, NULL, 108, '0302109845', 'mouse, usb, ¾ptico, varios colores', NULL),
(809, 23, 'Mouse ¾ptico USB varios colores', 'MOUSE MANHATTAN OPTICO AZUL REF.177719', NULL, NULL, NULL, NULL, NULL, NULL, 108, '0302109844', 'mouse, usb, ¾ptico, varios colores', NULL),
(810, 23, 'Mouse mini ¾ptico USB varios colores', 'MOUSE MANHATTAN OPTICO USB MINI NEGRO REF.176835', NULL, NULL, NULL, NULL, NULL, NULL, 109, '0302102411', 'mini mouse, mouse, usb, varios colores', NULL),
(811, 23, 'Mouse mini ¾ptico USB varios colores', 'MOUSE MANHATTAN OPTICO USB MINI NEGRO REF.176927', NULL, NULL, NULL, NULL, NULL, NULL, 109, '0302102420', 'mini mouse, mouse, usb, varios colores', NULL),
(812, 23, 'Mouse mini ¾ptico USB varios colores', 'MOUSE MANHATTAN OPTICO USB MINI PLATEADO REF.176910', NULL, NULL, NULL, NULL, NULL, NULL, 109, '0302102419', 'mini mouse, mouse, usb, varios colores', NULL),
(813, 23, 'Mouse mini ¾ptico USB varios colores', 'MOUSE MANHATTAN OPTICO USB MINI ROJO REF.176880', NULL, NULL, NULL, NULL, NULL, NULL, 109, '0302102421', 'mini mouse, mouse, usb, varios colores', NULL),
(814, 23, 'Mouse ¾ptico Wireless LG  varios colores', 'MOUSE OPTICO L.G. WIRELESS USB 2.4GHZ.BLANCO CM-400', NULL, NULL, NULL, NULL, NULL, NULL, 110, '0302112245', 'mouse, ¾ptico, wireless, inalßmbrico, varios colores', NULL),
(815, 23, 'Mouse ¾ptico Wireless LG  varios colores', 'MOUSE OPTICO L.G. WIRELESS USB 2.4GHZ.CELESTE CM-400', NULL, NULL, NULL, NULL, NULL, NULL, 110, '0302112244', 'mouse, ¾ptico, wireless, inalßmbrico, varios colores', NULL),
(816, 23, 'Mouse ¾ptico Wireless LG  varios colores', 'MOUSE OPTICO L.G. WIRELESS USB 2.4GHZ.NEGRO CM-400', NULL, NULL, NULL, NULL, NULL, NULL, 110, '0302112246', 'mouse, ¾ptico, wireless, inalßmbrico, varios colores', NULL),
(817, 23, 'Mouse pad con descansa mu±eca', 'MOUSE PAD MANHATTAN AZUL WRIST REST REF.434386', NULL, NULL, NULL, NULL, NULL, NULL, 112, '0302105172', 'mouse pad, descansa mu±eca', NULL),
(818, 23, 'Mouse pad con descansa mu±eca', 'MOUSE PAD MANHATTAN NEGRO WRIST REST REF.434362', NULL, NULL, NULL, NULL, NULL, NULL, 112, '0302105171', 'mouse pad, descansa mu±eca', NULL),
(819, 23, 'Mouse pad varios dise±os', 'MOUSE PAD MANHATTAN VARIOS DISEÐOS REF.423373', NULL, NULL, NULL, NULL, NULL, NULL, 113, '0302109847', 'mouse pad, varios dise±os, varios colores', NULL),
(820, 23, 'Mouse pad varios dise±os', 'MOUSE PAD MANHATTAN VARIOS DISEÐOS REF.423496', NULL, NULL, NULL, NULL, NULL, NULL, 113, '0302109846', 'mouse pad, varios dise±os, varios colores', NULL),
(821, 23, 'Mouse mini usb wireless', 'MOUSE VERBATIM OPTICO USB MINI WIRELEES ROJO REF.97540', NULL, NULL, NULL, NULL, NULL, NULL, 114, '0302112166', 'mouse, usb, mini, wireless, inalßmbrico', NULL),
(822, 23, 'Mouse mini usb wireless', 'MOUSE VERBATIM OPTICO USB MINI WIRELESS AZUL REF.97471', NULL, NULL, NULL, NULL, NULL, NULL, 114, '0302112164', 'mouse, usb, mini, wireless, inalßmbrico', NULL),
(823, 23, 'Mouse mini usb wireless', 'MOUSE VERBATIM OPTICO USB MINI WIRELESS GRAFITO REF.97470', NULL, NULL, NULL, NULL, NULL, NULL, 114, '0302112163', 'mouse, usb, mini, wireless, inalßmbrico', NULL),
(824, 23, 'Mouse mini usb wireless', 'MOUSE VERBATIM OPTICO USB MINI WIRELESS PURPURA REF.97473', NULL, NULL, NULL, NULL, NULL, NULL, 114, '0302112165', 'mouse, usb, mini, wireless, inalßmbrico', NULL),
(825, 23, 'Parlante portatil avantalk inalßmbrico', 'PARLANTE AVANTALK PORTATIL BLUETOOTH INALAMBRICO BTSP-200R', NULL, NULL, NULL, NULL, NULL, NULL, 115, '0302113373', 'parlante, portatil, inalßmbrico. Bluetooth, wireless', NULL),
(826, 23, 'parlante mini bluetooth avantree', 'PARLANTE AVANTREE MINI BLUETOOTH JAK 3.5MM BTSP-TR401-WOR', NULL, NULL, NULL, NULL, NULL, NULL, 116, '0302113374', 'parlante, portatil, inalßmbrico. Bluetooth, wireless', NULL),
(827, 23, 'Parlante portatil USB divoom', 'PARLANTE DIVOOM 2.0 P.MP3/PC/IPOD/CELULAR AZUL REF.IRIS-02-BL', NULL, NULL, NULL, NULL, NULL, NULL, 117, '0302109816', 'parlante, portatil, usb, mp3, pc, ipod, celular, SD', NULL),
(828, 23, 'Parlante portatil USB divoom', 'PARLANTE DIVOOM 2.0 P.MP3/PC/IPOD/CELULAR BLANCO REF.IRIS-02', NULL, NULL, NULL, NULL, NULL, NULL, 117, '0302110826', 'parlante, portatil, usb, mp3, pc, ipod, celular, SD', NULL),
(829, 23, 'Parlante portatil USB divoom', 'PARLANTE DIVOOM 2.0 P.MP3/PC/IPOD/CELULAR NARANJA REF.IRIS-02', NULL, NULL, NULL, NULL, NULL, NULL, 117, '0302110827', 'parlante, portatil, usb, mp3, pc, ipod, celular, SD', NULL),
(830, 23, 'Parlante portatil USB divoom', 'PARLANTE DIVOOM 2.0 P.MP3/PC/IPOD/CELULAR NEGRO REF.IRIS-02-BK', NULL, NULL, NULL, NULL, NULL, NULL, 117, '0302109865', 'parlante, portatil, usb, mp3, pc, ipod, celular, SD', NULL),
(831, 23, 'Parlante portatil USB divoom', 'PARLANTE DIVOOM 2.0 P.MP3/PC/IPOD/CELULAR ROSADO REF.IRIS-02', NULL, NULL, NULL, NULL, NULL, NULL, 117, '0302110828', 'parlante, portatil, usb, mp3, pc, ipod, celular, SD', NULL),
(832, 23, 'Parlante portatil USB divoom', 'PARLANTE DIVOOM 2.0 P.MP3/PC/IPOD/CELULAR VERDE REF.IRIS-02', NULL, NULL, NULL, NULL, NULL, NULL, 117, '0302110829', 'parlante, portatil, usb, mp3, pc, ipod, celular, SD', NULL),
(833, 23, 'Parlante portatil USB divoom', 'PARLANTE DIVOOM P.MP3/PC/IPOD/CELULAR AZUL I-TOUR-20', NULL, NULL, NULL, NULL, NULL, NULL, 117, '0302110832', 'parlante, portatil, usb, mp3, pc, ipod, celular, SD', NULL),
(834, 23, 'Parlante portatil USB divoom', 'PARLANTE DIVOOM P.MP3/PC/IPOD/CELULAR BLANCO I-TOUR-20', NULL, NULL, NULL, NULL, NULL, NULL, 117, '0302110833', 'parlante, portatil, usb, mp3, pc, ipod, celular, SD', NULL),
(835, 23, 'Parlante portatil USB divoom', 'PARLANTE DIVOOM P.MP3/PC/IPOD/CELULAR DORADO I-TOUR-20', NULL, NULL, NULL, NULL, NULL, NULL, 117, '0302110839', 'parlante, portatil, usb, mp3, pc, ipod, celular, SD', NULL),
(836, 23, 'Parlante portatil USB divoom', 'PARLANTE DIVOOM P.MP3/PC/IPOD/CELULAR MORADO I-TOUR-20', NULL, NULL, NULL, NULL, NULL, NULL, 117, '0302110835', 'parlante, portatil, usb, mp3, pc, ipod, celular, SD', NULL),
(837, 23, 'Parlante portatil USB divoom', 'PARLANTE DIVOOM P.MP3/PC/IPOD/CELULAR NARANJA I-TOUR-20', NULL, NULL, NULL, NULL, NULL, NULL, 117, '0302110836', 'parlante, portatil, usb, mp3, pc, ipod, celular, SD', NULL),
(838, 23, 'Parlante portatil USB divoom', 'PARLANTE DIVOOM P.MP3/PC/IPOD/CELULAR NEGRO I-TOUR-20', NULL, NULL, NULL, NULL, NULL, NULL, 117, '0302110838', 'parlante, portatil, usb, mp3, pc, ipod, celular, SD', NULL),
(839, 23, 'Parlante portatil USB divoom', 'PARLANTE DIVOOM P.MP3/PC/IPOD/CELULAR ROJO I-TOUR-20', NULL, NULL, NULL, NULL, NULL, NULL, 117, '0302110830', 'parlante, portatil, usb, mp3, pc, ipod, celular, SD', NULL),
(840, 23, 'Parlante portatil USB divoom', 'PARLANTE DIVOOM P.MP3/PC/IPOD/CELULAR SD AZUL REF.ITOUR-BOOM-A', NULL, NULL, NULL, NULL, NULL, NULL, 117, '0302109815', 'parlante, portatil, usb, mp3, pc, ipod, celular, SD', NULL),
(841, 23, 'Parlante portatil USB divoom', 'PARLANTE DIVOOM P.MP3/PC/IPOD/CELULAR SD BLANCO REF.ITOUR-BOOM-W', NULL, NULL, NULL, NULL, NULL, NULL, 117, '0302109870', 'parlante, portatil, usb, mp3, pc, ipod, celular, SD', NULL),
(842, 23, 'Parlante portatil USB divoom', 'PARLANTE DIVOOM P.MP3/PC/IPOD/CELULAR SD NEGRO REF.ITOUR-BOOM-B', NULL, NULL, NULL, NULL, NULL, NULL, 117, '0302109871', 'parlante, portatil, usb, mp3, pc, ipod, celular, SD', NULL),
(843, 23, 'Parlante portatil USB divoom', 'PARLANTE DIVOOM P.MP3/PC/IPOD/CELULAR SD ROJO REF.ITOUR-BOOM-R', NULL, NULL, NULL, NULL, NULL, NULL, 117, '0302109873', 'parlante, portatil, usb, mp3, pc, ipod, celular, SD', NULL),
(844, 23, 'Parlante portatil USB divoom', 'PARLANTE DIVOOM UPO BUD USB AZUL REF.UPO-A', NULL, NULL, NULL, NULL, NULL, NULL, 117, '0302109866', 'parlante, portatil, usb, mp3, pc, ipod, celular, SD', NULL),
(845, 23, 'Parlante portatil USB divoom', 'PARLANTE DIVOOM UPO BUD USB GRIS REF.UPO-S', NULL, NULL, NULL, NULL, NULL, NULL, 117, '0302109869', 'parlante, portatil, usb, mp3, pc, ipod, celular, SD', NULL),
(846, 23, 'Parlante portatil USB divoom', 'PARLANTE DIVOOM UPO BUD USB NEGRO REF.UPO-B', NULL, NULL, NULL, NULL, NULL, NULL, 117, '0302109867', 'parlante, portatil, usb, mp3, pc, ipod, celular, SD', NULL),
(847, 23, 'Parlante portatil USB divoom', 'PARLANTE DIVOOM UPO BUD USB ROJO REF.UPO-R', NULL, NULL, NULL, NULL, NULL, NULL, 117, '0302109868', 'parlante, portatil, usb, mp3, pc, ipod, celular, SD', NULL),
(848, 23, 'Parlante solar bluetooth para carros', 'PARLANTE IOGEAR SOLAR P.CARROS BLUETOOTH GBHFK231', NULL, NULL, NULL, NULL, NULL, NULL, 118, '0302112152', 'parlante, solar, bluetooth, carro, portatil', NULL),
(849, 23, 'Parlante logitech 2.0 stereo', 'PARLANTE LOGITECH 2.0 REF.S120', NULL, NULL, NULL, NULL, NULL, NULL, 119, '0302110824', 'parlante, sistema de audio, 2.0, stereo, sistema de altavoces, altavoces', NULL),
(850, 23, 'Parlante logitech 2.1 stereo', 'PARLANTE LOGITECH 2.1 STEREO SPEAKER REF.LS21', NULL, NULL, NULL, NULL, NULL, NULL, 120, '0302110825', 'parlante, sistema de audio, 2.1, stereo, sistema de altavoces, altavoces', NULL),
(851, 23, 'Parlante bluetooth manhattan', 'PARLANTE MANHATTAN ACUSTICO BLUETOOTH NEGRO 150194', NULL, NULL, NULL, NULL, NULL, NULL, 121, '0302106902', 'parlante, bluetooth, acustico', NULL),
(852, 23, 'Parlantes', 'PARLANTE MANHATTAN MULTIMEDIA REV.2.0 REF.160650', NULL, NULL, NULL, NULL, NULL, NULL, 122, '0302105151', 'Parlantes, usb, 3.5, 2.0, usb', NULL),
(853, 23, 'Parlantes', 'PARLANTE MANHATTAN NEGRO SERIE 2800 ACUSTICO150149', NULL, NULL, NULL, NULL, NULL, NULL, 122, '0302106901', 'Parlantes, usb, 3.5, 2.0, usb', NULL),
(854, 23, 'Parlantes', 'PARLANTE MANHATTAN P.IPOD IPHONE REF.150125', NULL, NULL, NULL, NULL, NULL, NULL, 122, '0302106900', 'Parlantes, usb, 3.5, 2.0, usb', NULL),
(855, 23, 'Parlantes', 'PARLANTE MANHATTAN SERIES 2300 2W X2 160HZ REV 3.01 REF. 160780', NULL, NULL, NULL, NULL, NULL, NULL, 122, '0302100078', 'Parlantes, usb, 3.5, 2.0, usb', NULL),
(856, 23, 'Parlantes', 'PARLANTE MANHATTAN USB SERIE 2700 NEGRO 161114', NULL, NULL, NULL, NULL, NULL, NULL, 122, '0302108695', 'Parlantes, usb, 3.5, 2.0, usb', NULL),
(857, 23, 'Parlantes', 'PARLANTE MINI SPEAKER AVANTREE UNIVERSAL P.IPOD/MP3/MP4/CD/ /MOVIL/PC MNSP-TR402-WHT', NULL, NULL, NULL, NULL, NULL, NULL, 122, '0302113388', 'Parlantes, usb, 3.5, 2.0, usb', NULL),
(858, 23, 'Teclados Bluethoot para 28s con estuche', 'TECLADO AVANTALK BLUETOOTH C/ESTUCHE CUERO P.PC/PS3/ /IPHONE4/IPHONE 3GS BTKB-3500-BLK', NULL, NULL, NULL, NULL, NULL, NULL, 123, '0302113372', 'Teclado, bluetooth, 28, mini, inalßmbrico, estuche, case, ipad', NULL),
(859, 23, 'Teclados Bluethoot para 28s con estuche', 'TECLADO AVANTREE BLUETOOTH P.IPAD/IPAD2 TRIPLE FUNCION TELADO/SPORTE/CASE BTKB-2902-EN', NULL, NULL, NULL, NULL, NULL, NULL, 123, '0302113371', 'Teclado, bluetooth, 28, mini, inalßmbrico, estuche, case, ipad', NULL),
(860, 23, 'Teclados Bluetooth para 28s', 'TECLADO GENIUS MINI LUX PAD BLUETOOTH 31320004104', NULL, NULL, NULL, NULL, NULL, NULL, 124, '0302113081', 'Teclado, Bluetooth, mini, 28', NULL),
(861, 23, 'Teclados Bluetooth para 28s', 'TECLADO MANHATAN MULT./BLUETOTH MINI 28177887', NULL, NULL, NULL, NULL, NULL, NULL, 124, '0302113163', 'Teclado, Bluetooth, mini, 28', NULL),
(862, 23, 'Teclados Bluetooth para 28s', 'TECLADO IOGEAR MINI MULTI BLUETOOHT REF.GKB601B', NULL, NULL, NULL, NULL, NULL, NULL, 124, '0302112151', 'Teclado, Bluetooth, mini, 28', NULL),
(863, 23, 'Ventilador para Laptop', 'VENTILADOR MANHATTAN P.LAPTOP PAD1 20CM REF.703406', NULL, NULL, NULL, NULL, NULL, NULL, 125, '0302106776', 'Ventilador, laptop, usb, portatil', NULL),
(864, 23, 'Ventilador para Laptop', 'VENTILADOR MANHATTAN P.LAPTOP REF.700467', NULL, NULL, NULL, NULL, NULL, NULL, 125, '0302103646', 'Ventilador, laptop, usb, portatil', NULL),
(865, 23, 'Ventilador para Laptop', 'VENTILADOR PARA PORTATIL MANHATTAN 2PTOS.USB190046', NULL, NULL, NULL, NULL, NULL, NULL, 125, '0302108694', 'Ventilador, laptop, usb, portatil', NULL),
(866, 23, 'Ventilador para Laptop', 'VENTILADOR PARA PORTATIL MANHATTAN 4PTOS.USB190039', NULL, NULL, NULL, NULL, NULL, NULL, 125, '0302108693', 'Ventilador, laptop, usb, portatil', NULL),
(867, 29, 'Adaptador de audio 2 salidas', 'ADAPTADOR AVANTREE D.AUDIO TIPO LLAVERO 2SALIDAS D.AUDIFONO P.IPOD/IPHONE/IPAD ADAD-2W-F3', NULL, NULL, NULL, NULL, NULL, NULL, 126, '0301113362', 'adaptador, audio, accesorio, llavero, 2 salidas de audio, split', NULL),
(868, 29, 'Cargador USB', 'ADAPTADOR DE PODER MANHATTAN USB NEMA 5-15  407489', NULL, NULL, NULL, NULL, NULL, NULL, 127, '0302109821', 'Adaptador, usb, cargador', NULL),
(869, 29, 'Adaptador de audio 3D USB', 'ADAPTADOR DE SONIDO MANHATTAN 3D USB REF.150859', NULL, NULL, NULL, NULL, NULL, NULL, 128, '0302109822', 'Adaptador de audio, adaptador de sonido, usb, 3d', NULL),
(870, 29, 'Adaptador USB 2.0 a Fast Ethernet', 'ADAPTADOR INTELINET P.RED USB2.010/100RJ45 524766', NULL, NULL, NULL, NULL, NULL, NULL, 129, '0301106998', 'Adaptador, adpatador de red, usb 2.0, ethernet', NULL),
(871, 29, 'Adaptador USB 2.0 a Fast Ethernet', 'ADAPTADOR INTELLINET USB 2.0 GIGABIT ETHERNET REF.502245', NULL, NULL, NULL, NULL, NULL, NULL, 129, '0302102474', 'Adaptador, adpatador de red, usb 2.0, ethernet', NULL),
(872, 29, 'Adaptador USB 2.0 a Fast Ethernet', 'ADAPTADOR INTELLINET ETHERNET 10/100 FAST USB REF.501262', NULL, NULL, NULL, NULL, NULL, NULL, 129, '030194040', 'Adaptador, adpatador de red, usb 2.0, ethernet', NULL),
(873, 29, 'Adaptador inalßmbrico USB 150N', 'ADAPTADOR INTELLINET USB 150MBPS C/CD REF.524438', NULL, NULL, NULL, NULL, NULL, NULL, 130, '0301106924', 'Adaptador de red, adaptador, wireless, inalßmbrico, usb, 150N', NULL),
(874, 29, 'Adaptador de corriente para laptop 70W', 'ADAPTADOR MANHATTAN P.LAPTOP70W.UNIVERSAL AC100854', NULL, NULL, NULL, NULL, NULL, NULL, 131, '0302105912', 'Adaptador de corriente, adaptador para laptop, cargador para laptop, 70w', NULL),
(875, 29, 'Adaptador USB 2.0 a HDMI', 'ADAPTADOR MANHATTAN USB  2.0 TO HDMI.151061', NULL, NULL, NULL, NULL, NULL, NULL, 132, '0302113167', 'Adaptador usb, adaptador hdmi, convertidor, us, hdmi', NULL),
(876, 29, 'Adaptador inalßmbrico USB 300N', 'ADAPTADOR USB WIRELESS 300MBPS 2.0 REF.523974', NULL, NULL, NULL, NULL, NULL, NULL, 133, '0301106896', 'Adaptador usb, inalßmbrico, wireless, 300N, usb', NULL),
(877, 24, '24 de datos para Iphone y Ipad', '24 DE DATOS AVANTREE P.IPOD/IPHONE/IPAD Y CARGADOR FDKB-IFA', NULL, NULL, NULL, NULL, NULL, NULL, 134, '0302113378', 'Cargador, 24 de datos, ipad, iphone', NULL),
(878, 24, '24 retractil Micro USB', '24 DE DATOS AVANTREE RETRACTIL MICRO USB/CARGADOR D.TELF FDKB-MICRO-RT', NULL, NULL, NULL, NULL, NULL, NULL, 135, '0302113379', '24, 24 de datos, cargador, micro USB, celular', NULL),
(879, 24, 'Extensor HDMI 1.2 Cat5e/ Cat6', 'EXT.MANHATAN HDMI 1.2 CAT.5E 30MT.177276', NULL, NULL, NULL, NULL, NULL, NULL, 136, '0302110928', 'extensor, hdmi, 24 utp, patch cord, cat 5e, cat 6', NULL),
(880, 24, '24 HDMI 1.8m, 3m, 5m, 10m', '24 EXT.MANHAT.MONIT.HDMI1.3NEGRO3M391528/306126', NULL, NULL, NULL, NULL, NULL, NULL, 137, '0302105932', '24 hdmi, 3m, 1.8m, 5m, 10m', NULL),
(881, 24, '24 HDMI 1.8m, 3m, 5m, 10m', '24 EXT.MANHATAN HDMI NEGRO 33FT/10MT.322539', NULL, NULL, NULL, NULL, NULL, NULL, 137, '0302110929', '24 hdmi, 3m, 1.8m, 5m, 10m', NULL),
(882, 24, '24 HDMI 1.8m, 3m, 5m, 10m', '24 EXTENS.MANHAT. HDMI1.3 NEG1.8M 391511/306119', NULL, NULL, NULL, NULL, NULL, NULL, 137, '0302105931', '24 hdmi, 3m, 1.8m, 5m, 10m', NULL),
(883, 24, '24 HDMI 1.8m, 3m, 5m, 10m', '24 EXT.MANHATAN HDMI19 NEGRO 16.5FT/5MT.306133', NULL, NULL, NULL, NULL, NULL, NULL, 137, '0302110930', '24 hdmi, 3m, 1.8m, 5m, 10m', NULL),
(884, 24, '24 HDMI con Canal Ethernet', '24 EXTENS. MANHATAN VIDEO HDMI NEGRO 3MT.323222', NULL, NULL, NULL, NULL, NULL, NULL, 138, '0302113172', '24 HDMI, con ethernet, red', NULL),
(885, 24, '24 HDMI con Canal Ethernet', '24 EXTENS.MANHATAN VIDEO HDMI NEGRO 5MT.323239', NULL, NULL, NULL, NULL, NULL, NULL, 138, '0302113173', '24 HDMI, con ethernet, red', NULL),
(886, 24, '24 HDMI con Canal Ethernet', '24 EXTENS.MANHATAN VIDEO HDMI NEGRO 2MT. 324427', NULL, NULL, NULL, NULL, NULL, NULL, 139, '0302113174', '24 HDMI, con ethernet, red, HDMI micro, hdmi', NULL),
(887, 24, '24 extensi¾n de Alta Velocidad USB 2.0', '24 EXTENS MANHATAN 5MT NEG.USB2  302050', NULL, NULL, NULL, NULL, NULL, NULL, 140, '0302105930', '24 usb, extensi¾n usb, usb macho a usb hembra, usb hembra.', NULL),
(888, 24, '24 AV Compuesto con USB', '24 EXTENS.MANHATAN ILYNK USB IPOD/TV BCO393713', NULL, NULL, NULL, NULL, NULL, NULL, 141, '0302113177', '24 para iphone, iphone a tv, iphone, tv', NULL),
(889, 24, '24 VÝdeo Splitter HDMI', '24 EXTENS.MANHATAN VIDEO SPLIT.HDMI NEGRO307833', NULL, NULL, NULL, NULL, NULL, NULL, 142, '0302113175', '24 HDMI, adaptador, video, HDMI, 2 salidas HDMI', NULL),
(890, 24, '24 USB 3.0 A Macho / B Macho', '24 EXTENSION MANHATTAN USB 3.0 AZUL 2MT. 322430', NULL, NULL, NULL, NULL, NULL, NULL, 143, '0302113168', '24 USB, USB 3.0, macho, b macho 3.0, b macho', NULL),
(891, 24, '24 USB 3.0 A Macho / Micro B Macho', '24 EXTENSION MANHATTAN USB 3.0 AZUL 2MT. 325424', NULL, NULL, NULL, NULL, NULL, NULL, 144, '0302113169', '24 USB, USB 3.0, macho, micro b macho, micro usb 3.0', NULL),
(892, 24, '24 USB 2.0 a Micro USB ', '24 EXTENS.MANHATAN USB2.0 AM A MICRO BM 307161', NULL, NULL, NULL, NULL, NULL, NULL, 145, '0302113170', '24 USB, Cargador, celular, 24 de datos, micro USB', NULL),
(893, 24, '24 SVGA macho a macho 1.8m, 3m, 7.5m, 10m, 20m, 30m', '24 MANHATAN MON.SVGA HD15MM NEG.25FT/7.5 372978', NULL, NULL, NULL, NULL, NULL, NULL, 146, '0302110937', '24 svga, 24 vga, monitor, video, macho a macho, macho', NULL),
(894, 24, '24 SVGA macho a macho 1.8m, 3m, 7.5m, 10m, 20m, 30m', '24 MANHATAN MON.SVGA HD15MM NEG.33FT/10M.312776', NULL, NULL, NULL, NULL, NULL, NULL, 146, '0302110938', '24 svga, 24 vga, monitor, video, macho a macho, macho', NULL),
(895, 24, '24 SVGA macho a macho 1.8m, 3m, 7.5m, 10m, 20m, 30m', '24 MANHATAN MON.SVGA HD15MM NEG.66FT/20M.335607', NULL, NULL, NULL, NULL, NULL, NULL, 146, '0302110939', '24 svga, 24 vga, monitor, video, macho a macho, macho', NULL),
(896, 24, '24 SVGA macho a macho 1.8m, 3m, 7.5m, 10m, 20m, 30m', '24 MANHATAN MONI.SVGA HD15M-M NE.6FT/1.8M309035', NULL, NULL, NULL, NULL, NULL, NULL, 146, '0302110936', '24 svga, 24 vga, monitor, video, macho a macho, macho', NULL),
(897, 24, '24 SVGA macho a macho 1.8m, 3m, 7.5m, 10m, 20m, 30m', '24 MANHATAN MONIT.VGA HD15M-M 10FT/3M.300926', NULL, NULL, NULL, NULL, NULL, NULL, 146, '0302110948', '24 svga, 24 vga, monitor, video, macho a macho, macho', NULL),
(898, 24, '24 SVGA macho a macho 1.8m, 3m, 7.5m, 10m, 20m, 30m', '24 MANHATAN MONITOR SVGA HD15M-M NEG.30M.337342', NULL, NULL, NULL, NULL, NULL, NULL, 146, '0302110935', '24 svga, 24 vga, monitor, video, macho a macho, macho', NULL),
(899, 24, '24 HDMI a DVI macho', '24 MANHATAN P.MONI HDMI 3M/10FTDVI391115/372510', NULL, NULL, NULL, NULL, NULL, NULL, 147, '0302105934', '24 Hdmi, 24 DVI, convertidor, hdmi, dvi, adaptador', NULL),
(900, 24, '24 HDMI a DVI macho', '24 MANHATAN P.MONIT HDMI MACHO A DVI-D24 391108', NULL, NULL, NULL, NULL, NULL, NULL, 147, '0302105933', '24 Hdmi, 24 DVI, convertidor, hdmi, dvi, adaptador', NULL),
(901, 24, '24 USB 2.0 para impresora', '24 MANHATAN USB2.0 PRINTE.AM-BM 6FT/1.8M.333368', NULL, NULL, NULL, NULL, NULL, NULL, 148, '0302110945', '24 USB, impresora, a macho, b macho', NULL),
(902, 24, '24 USB 2.0 para impresora', '24 MANHATAN USB2.0 PRINTER AM-BM 10FT/3M 333382', NULL, NULL, NULL, NULL, NULL, NULL, 148, '0302110944', '24 USB, impresora, a macho, b macho', NULL),
(903, 24, '24 USB a mini macho', '24 USB MANHATTAN AM-MINI 1.8M TRANS 333412', NULL, NULL, NULL, NULL, NULL, NULL, 149, '00364829', '24 USB, mini, macho', NULL),
(904, 24, 'Patch cord Cat 5e varios colores 1.8m, 3m, 5m', 'PATCH CORD INTELINE 3FT CAT.5EAZUL UTP24AWG 318938', NULL, NULL, NULL, NULL, NULL, NULL, 150, '00031893', '24 utp, patch cord, cat 5e, categoria 5e, cat 5, categoria 5, cat5, 24 de red', NULL),
(905, 24, 'Patch cord Cat 5e varios colores 1.8m, 3m, 5m', 'PATCH CORD INTELINE CAT.5E 3FT.GRISUTP24AWG318921', NULL, NULL, NULL, NULL, NULL, NULL, 150, '00031892', '24 utp, patch cord, cat 5e, categoria 5e, cat 5, categoria 5, cat5, 24 de red', NULL),
(906, 24, 'Patch cord Cat 5e varios colores 1.8m, 3m, 5m', 'PATCH CORD INTELINE CAT.5E 7FT.GRIS 24AWG 8H318976', NULL, NULL, NULL, NULL, NULL, NULL, 150, '00318976', '24 utp, patch cord, cat 5e, categoria 5e, cat 5, categoria 5, cat5, 24 de red', NULL),
(907, 24, 'Patch cord Cat 5e varios colores 1.8m, 3m, 5m', 'PATCH CORD INTELINET 3FT CAT.5EROJO UTP24AWG318952', NULL, NULL, NULL, NULL, NULL, NULL, 150, '00031895', '24 utp, patch cord, cat 5e, categoria 5e, cat 5, categoria 5, cat5, 24 de red', NULL),
(908, 24, 'Patch cord Cat 5e varios colores 1.8m, 3m, 5m', 'PATCH CORD INTELINET 5E 3FT VERDE UTP24AWG 318945', NULL, NULL, NULL, NULL, NULL, NULL, 150, '00031894', '24 utp, patch cord, cat 5e, categoria 5e, cat 5, categoria 5, cat5, 24 de red', NULL),
(909, 24, 'Patch cord Cat 5e varios colores 1.8m, 3m, 5m', 'PATCH CORD INTELINET CAT.5E 10FT.VERD.24AWG319782', NULL, NULL, NULL, NULL, NULL, NULL, 150, '00031978', '24 utp, patch cord, cat 5e, categoria 5e, cat 5, categoria 5, cat5, 24 de red', NULL),
(910, 24, 'Patch cord Cat 5e varios colores 1.8m, 3m, 5m', 'PATCH CORD INTELINET CAT.5E 5.M GRIS329446/329750', NULL, NULL, NULL, NULL, NULL, NULL, 150, '0304102436', '24 utp, patch cord, cat 5e, categoria 5e, cat 5, categoria 5, cat5, 24 de red', NULL),
(911, 24, 'Patch cord Cat 5e varios colores 1.8m, 3m, 5m', 'PATCH CORD INTELINET CAT.5E 7FT.AZUL24AWG 8H318983', NULL, NULL, NULL, NULL, NULL, NULL, 150, '00318983', '24 utp, patch cord, cat 5e, categoria 5e, cat 5, categoria 5, cat5, 24 de red', NULL),
(912, 24, 'Patch cord Cat 5e varios colores 1.8m, 3m, 5m', 'PATCH CORD INTELLINET CAT. 5E 7FT. VERDE 24AWG 8 HILOS 318990', NULL, NULL, NULL, NULL, NULL, NULL, 150, '00318990', '24 utp, patch cord, cat 5e, categoria 5e, cat 5, categoria 5, cat5, 24 de red', NULL),
(913, 24, 'Patch cord Cat 6 varios colores 1m, 3m', 'PATCH CORD INTELLINET CAT. 6 1.0M AMARILLO 342346', NULL, NULL, NULL, NULL, NULL, NULL, 151, '0304102440', '24 utp, patch cord, cat 6, categoria 6, cat 6, categoria 6, cat6, 24 de red', NULL),
(914, 24, 'Patch cord Cat 6 varios colores 1m, 3m', 'PATCH CORD INTELLINET CAT. 6 1.0M AZUL REF.342575', NULL, NULL, NULL, NULL, NULL, NULL, 151, '0304102442', '24 utp, patch cord, cat 6, categoria 6, cat 6, categoria 6, cat6, 24 de red', NULL),
(915, 24, 'Patch cord Cat 6 varios colores 1m, 3m', 'PATCH CORD INTELLINET CAT. 6 1.0M GRIS REF.340373', NULL, NULL, NULL, NULL, NULL, NULL, 151, '0304102431', '24 utp, patch cord, cat 6, categoria 6, cat 6, categoria 6, cat6, 24 de red', NULL),
(916, 24, 'Patch cord Cat 6 varios colores 1m, 3m', 'PATCH CORD INTELLINET CAT. 6 1.0M ROJO REF.342148', NULL, NULL, NULL, NULL, NULL, NULL, 151, '0304102439', '24 utp, patch cord, cat 6, categoria 6, cat 6, categoria 6, cat6, 24 de red', NULL),
(917, 24, 'Patch cord Cat 6 varios colores 1m, 3m', 'PATCH CORD INTELLINET CAT. 6 1.0M VERDE REF.342476', NULL, NULL, NULL, NULL, NULL, NULL, 151, '0304102433', '24 utp, patch cord, cat 6, categoria 6, cat 6, categoria 6, cat6, 24 de red', NULL),
(918, 24, 'Patch cord Cat 6 varios colores 1m, 3m', 'PATCH CORD INTELLINET CAT. 6 3.0M AMARILLO 342377', NULL, NULL, NULL, NULL, NULL, NULL, 151, '0304102441', '24 utp, patch cord, cat 6, categoria 6, cat 6, categoria 6, cat6, 24 de red', NULL),
(919, 24, 'Patch cord Cat 6 varios colores 1m, 3m', 'PATCH CORD INTELLINET CAT. 6 3.0M AZUL REF.342605', NULL, NULL, NULL, NULL, NULL, NULL, 151, '0304102443', '24 utp, patch cord, cat 6, categoria 6, cat 6, categoria 6, cat6, 24 de red', NULL),
(920, 24, 'Patch cord Cat 6 varios colores 1m, 3m', 'PATCH CORD INTELLINET CAT. 6 3.0M GRIS REF.334129', NULL, NULL, NULL, NULL, NULL, NULL, 151, '0304102445', '24 utp, patch cord, cat 6, categoria 6, cat 6, categoria 6, cat6, 24 de red', NULL),
(921, 24, 'Patch cord Cat 6 varios colores 1m, 3m', 'PATCH CORD INTELLINET CAT. 6 3.0M ROJO REF.342179', NULL, NULL, NULL, NULL, NULL, NULL, 151, '0304102429', '24 utp, patch cord, cat 6, categoria 6, cat 6, categoria 6, cat6, 24 de red', NULL),
(922, 24, 'Patch cord Cat 6 varios colores 1m, 3m', 'PATCH CORD INTELLINET CAT. 6 3.0M VERDE REF.342506', NULL, NULL, NULL, NULL, NULL, NULL, 151, '0304102428', '24 utp, patch cord, cat 6, categoria 6, cat 6, categoria 6, cat6, 24 de red', NULL),
(923, 25, '25 DIGITAL CASIO 14.1MP  QV-R200', '25 DIGITAL CASIO 14.1 MP/ZO 5X P.LCD C/ESTUCHE BLANCA QV-R200WE', NULL, NULL, NULL, NULL, NULL, NULL, 152, '0302112269', 'cßmara digital, casio, 14 mp, 14.1mp, qv-r200, 5x, zoom, pantalla lcd', NULL),
(924, 25, '25 DIGITAL CASIO 14.1MP  QV-R201', '25 DIGITAL CASIO 14.1 MP/ZO 5X P.LCD C/ESTUCHE FUCSIA QV-R200PE', NULL, NULL, NULL, NULL, NULL, NULL, 152, '0302112267', 'cßmara digital, casio, 14 mp, 14.1mp, qv-r200, 5x, zoom, pantalla lcd', NULL),
(925, 25, '25 DIGITAL CASIO 14.1MP  QV-R202', '25 DIGITAL CASIO 14.1 MP/ZO 5X P.LCD C/ESTUCHE GRIS QV-R200SR', NULL, NULL, NULL, NULL, NULL, NULL, 152, '0302112268', 'cßmara digital, casio, 14 mp, 14.1mp, qv-r200, 5x, zoom, pantalla lcd', NULL),
(926, 25, '25 DIGITAL CASIO 14.1MP  QV-R203', '25 DIGITAL CASIO 14.1 MP/ZO 5X P.LCD C/ESTUCHE NEGRA QV-R200BK', NULL, NULL, NULL, NULL, NULL, NULL, 152, '0302112266', 'cßmara digital, casio, 14 mp, 14.1mp, qv-r200, 5x, zoom, pantalla lcd', NULL),
(927, 25, '25 DIGITAL CASIO 14.1 MP EX-ZS10', '25 DIGITAL CASIO 14.1 MP/ZO.5X P.LCD C/ESTUCHE NEGRA EX-ZS10BK', NULL, NULL, NULL, NULL, NULL, NULL, 153, '0302112262', 'cßmara digital, casio, 14 mp, 14.1mp, 5x, zoom, exz-s10, pantalla lcd', NULL),
(928, 25, '25 DIGITAL CASIO 14.1 MP EX-ZS11', '25 DIGITAL CASIO 14.1 MP/ZO.5X P.LCD C/ESTUCHE ROJA EX-ZS10RD', NULL, NULL, NULL, NULL, NULL, NULL, 153, '0302112263', 'cßmara digital, casio, 14 mp, 14.1mp, 5x, zoom, exz-s10, pantalla lcd', NULL),
(929, 25, '25 DIGITAL CASIO 16.1 MP EX-ZS6', '25 DIGITAL CASIO 16.1 MP/ZO 5X P.LCD C/ESTUCHE EX-ZS6BK', NULL, NULL, NULL, NULL, NULL, NULL, 154, '0302112270', 'cßmara digital, casio, 16 mp, 16.1mp, 5x, zoom, exz-s6, pantalla lcd', NULL),
(930, 25, '25 DIGITAL CASIO 16.1 MP EX-ZS7', '25 DIGITAL CASIO 16.1 MP/ZO 5X P.LCD C/ESTUCHE GRIS EX-ZS6SR', NULL, NULL, NULL, NULL, NULL, NULL, 154, '0302112273', 'cßmara digital, casio, 16 mp, 16.1mp, 5x, zoom, exz-s6, pantalla lcd', NULL),
(931, 25, '25 DIGITAL CASIO 16.1 MP EX-ZS8', '25 DIGITAL CASIO 16.1 MP/ZO 5X P.LCD C/ESTUCHE ROJA EX-ZS6RD', NULL, NULL, NULL, NULL, NULL, NULL, 154, '0302112272', 'cßmara digital, casio, 16 mp, 16.1mp, 5x, zoom, exz-s6, pantalla lcd', NULL),
(932, 25, '25 DIGITAL CASIO 16.1 MP EX-ZS9', '25 DIGITAL CASIO 16.1 MP/ZO 5X P.LCD C/ESTUCHE ROSADA EX-ZS6PK', NULL, NULL, NULL, NULL, NULL, NULL, 154, '0302112271', 'cßmara digital, casio, 16 mp, 16.1mp, 5x, zoom, exz-s6, pantalla lcd', NULL),
(933, 25, '25 DIGITAL CASIO TOUCH 14.1 MP EX-ZS15', '25 DIGITAL CASIO TOUCH 14.1 MP/ZO 5X P.LCD C/ESTUCH NEGRA EX-ZS15BK', NULL, NULL, NULL, NULL, NULL, NULL, 155, '0302112264', 'cßmara digital, casio, tactil, touch, 14 mp, 14.1mp, 5x, zoom,  pantalla lcd, exz-s15', NULL),
(934, 25, '25 DIGITAL CASIO TOUCH 14.1 MP EX-ZS16', '25 DIGITAL CASIO TOUCH 14.1 MP/ZO 5X P.LCD C/ESTUCH ROJA EX-ZS15 RD', NULL, NULL, NULL, NULL, NULL, NULL, 155, '0302112265', 'cßmara digital, casio, tactil, touch, 14 mp, 14.1mp, 5x, zoom,  pantalla lcd, exz-s16', NULL),
(935, 25, '25 DIGITAL SONY 14.1 MP DSC-W610', '25 DIGITAL SONY 14.1 MP 4X 2.7¿ DSC-W610/G VERDE EST+MEM 4GB', NULL, NULL, NULL, NULL, NULL, NULL, 156, '0302113296', 'cßmara, cßmara digital, sony, 14 mp, 14.1mp, 4x zoom, dsc-w610', NULL),
(936, 25, '25 DIGITAL SONY 14.1 MP DSC-W611', '25 DIGITAL SONY 14.1 MP 4X 2.7¿ DSC-W610/P ROSADA EST+MEM 4GB', NULL, NULL, NULL, NULL, NULL, NULL, 156, '0302113298', 'cßmara, cßmara digital, sony, 14 mp, 14.1mp, 4x zoom, dsc-w611', NULL),
(937, 25, '25 DIGITAL SONY 14.1 MP DSC-W612', '25 DIGITAL SONY 14.1 MP 4X 2.7¿DSC-W610/L AZUL EST+MEM 4GB', NULL, NULL, NULL, NULL, NULL, NULL, 156, '0302113297', 'cßmara, cßmara digital, sony, 14 mp, 14.1mp, 4x zoom, dsc-w612', NULL),
(938, 25, '25 DIGITAL SONY 14.1 MP DSC-W613', '25 DIGITAL SONY 14.1 MP 4X 2.7¿DSC-W610/S PLATEADA EST+MEM 4GB', NULL, NULL, NULL, NULL, NULL, NULL, 156, '0302113299', 'cßmara, cßmara digital, sony, 14 mp, 14.1mp, 4x zoom, dsc-w613', NULL),
(939, 25, '25 DIGITAL SONY 14.1 MP DSC-W620', '25 DIGITAL SONY 14.1 MP 5X 2.7¿DSC-W620/B NEGRA EST+MEM 4GB', NULL, NULL, NULL, NULL, NULL, NULL, 157, '0302113300', 'cßmara, cßmara digital, sony, 14 mp, 14.1mp, 4x zoom, dsc-w620', NULL),
(940, 26, 'COMPUTADOR COMPAQ ALL IN ONE CQ1-1407', 'COMPUTADOR COMPAQ ALL IN ONE CQ1-1407LA ATOM D525/500GB/2G/DVD-RW/ WIND7 STAR WEBCAM INC P', NULL, NULL, NULL, NULL, NULL, NULL, 158, '0302113083', 'all in one, desktop, escritorio, compaq, atom, d525, 500gb, 20 plg', NULL),
(941, 26, 'COMPUTADOR H.P. ALL IN ONE OMNI 120-1106 ', 'COMPUTADOR H.P. ALL IN ONE OMNI 120-1106 AMD 1.65/2GB/500GB PANT 20 PLG WIND7', NULL, NULL, NULL, NULL, NULL, NULL, 159, '0302113084', 'all in one, desktop, escritorio, HP, H.P., amd, 120-1106, 500gb, 20 plg', NULL),
(942, 26, 'COMPUTADOR H.P. MINI 110-3830LA ', 'COMPUTADOR H.P. MINI 110-3830LA ATOM DUAL CORE N570/2GB/320GB/WIN7 STARTER', NULL, NULL, NULL, NULL, NULL, NULL, 160, '0302112257', 'laptop, netbook, HP, H.P., mini, 110-3830LA, dual core, N570, portßtil', NULL),
(943, 26, 'NETBOOK ACER AOD 270-1678 10.1""', 'COMPUTADOR NETBOOK ACER AOD 270-1678 INTEL ATOM 1.6/2GB/500GB 10.1PLG TURQ', NULL, NULL, NULL, NULL, NULL, NULL, 161, '0302113078', '"laptop, netbook, ACER, intel, 10.1"", 270-1678, portßtil"', NULL),
(944, 26, 'NETBOOK H.P. 110-3519LA 10" LED"', 'COMPUTADOR NETBOOK H.P. 110-3519LA WIN7 1.66GHZ/1GB/250GB/10 LED', NULL, NULL, NULL, NULL, NULL, NULL, 162, '0302109367', '"laptop. Netbook, 10"", lED, 110-3519la, HP, H.P., portßtil"', NULL),
(945, 26, 'NETBOOK H.P. PAVILION DM1-4150LA 11.6""', 'COMPUTADOR NETBOOK H.P. PAVILION DM1-4150LA AMD DUAL CORE 1.3/2GB/500GB 11.6PLG WIND7', NULL, NULL, NULL, NULL, NULL, NULL, 163, '0302113064', '"laptop, netbook, 11.6"", HP, H.P., Paviliom, DM1-4150LA, dual core, port┤til"', NULL),
(946, 26, 'NOTEBOOK COMPAQ CQ43-408LA AMD ', 'COMPUTADOR NOTEBOOK COMPAQ CQ43-408LA AMD DC 1.3/4GB/500GB WIND7', NULL, NULL, NULL, NULL, NULL, NULL, 164, '0302113082', 'laptop, notebook, compaq, amd, cq43-408la, portßtil', NULL),
(947, 26, 'NOTEBOOK HP G4-2162 CI3 14""', 'COMPUTADOR NOTEBOOK H.P. HP G4-2162 CI3 4GB/500GB DVD 14.0PLG', NULL, NULL, NULL, NULL, NULL, NULL, 165, '0302113086', '"laptop, notebook, HP, core i3, corei3, 14"", g4-2162, computador"', NULL),
(948, 26, 'COMPUTADOR XTRATECH DESKTOP H61MXL-K INTEL CI5', 'COMPUTADOR XTRATECH DESKTOP H61MXL-K INTEL CI5 3.1GHZ 4GB DD1TB DVDW WIND7 STAR TEC MOU PA', NULL, NULL, NULL, NULL, NULL, NULL, 166, '0302113301', 'computador, desktop, computador de escritorio, xtratech, h61mxl-k, ci5, core i5, corei5', NULL),
(949, 26, 'COMPUTADOR XTRATECH DESKTOP H61MXL-K INTEL G630', 'COMPUTADOR XTRATECH DESKTOP H61MXL-K INTEL G630 2.7GHZ 4GB 500GB DVD W WIN7STAR T/M/P', NULL, NULL, NULL, NULL, NULL, NULL, 167, '0302113270', 'computador, desktop, computador de escritorio, xtratech, h61mxl-k, intel', NULL),
(950, 27, 'IMPRESORA CANON INK JET MULTIFUNCION WIRELESS MG3110', 'IMPRESORA CANON INK JET MULTIFUNCION 3 EN 1 IMP/COPIA/ESC WIRELESS WIFI MG3110', NULL, NULL, NULL, NULL, NULL, NULL, 168, '0302113358', 'impresora, multifunci¾n, copia, scaner, escaner, wireless, wifi, canon, mg3110, inkjet, inyeccion a tinta', NULL),
(951, 27, 'IMPRESORA H.P. MULTIFUNCION 3 EN 1 3525', 'IMPRESORA H.P. MULTIFUNCION 3 EN 1 ALL IN ONE USB 3525', NULL, NULL, NULL, NULL, NULL, NULL, 169, '0302113181', 'impresora, multifunci¾n, copia, scaner, escaner, USB, HP, H.P., 3525, inkjet, inyecci¾n a tinta', NULL),
(952, 27, 'IMPRESORA H.P. MULTIFUNCION 3 EN 1 2515', 'IMPRESORA H.P. MULTIFUNCION INK JET 3 EN 1 USB 2515', NULL, NULL, NULL, NULL, NULL, NULL, 170, '0302113178', 'impresora, multifunci¾n, copia, scaner, escaner, USB, HP, H.P., 2515, inkjet, inyecci¾n a tinta', NULL),
(953, 27, 'IMPRESORA SAMSUNG LASER COLOR CLP-365W', 'IMPRESORA SAMSUNG LASER COLOR CLP-365W', NULL, NULL, NULL, NULL, NULL, NULL, 171, '0302113443', 'impresora laser, samsung, laser color, laser, color, clp-365w', NULL),
(954, 27, 'IMPRESORA SAMSUNG LASER MONOCROMATICA ML-2165', 'IMPRESORA SAMSUNG LASER MONOCROMATICA 20PPM ML-2165', NULL, NULL, NULL, NULL, NULL, NULL, 172, '0302112536', 'impresora laser, samsung, laser monocromatica, laser, blanco y negro, ML-2165', NULL),
(955, 30, 'MONITOR L.G. LED 18.5" E1942CBN"', 'MONITOR L.G. LED 18.5 PLG E1942CBN', NULL, NULL, NULL, NULL, NULL, NULL, 173, '0302112258', '"monitor, pantalla, led, LG, L.G.,  E1942CBN, 18"", 18.5"", 18plg, 18.5 plg, 18 pulgadas, 18.5 pulgadas"', NULL),
(956, 28, '28 SAMSUNG GALAXY GT-P3100  7¿', '28 SAMSUNG GALAXY GT-P3100  3G  7¿ 8GB WIFI BT', NULL, NULL, NULL, NULL, NULL, NULL, 174, '0302113267', '"28, galaxy tab, galaxy, GT-P3100, 3G, 7"", 7 plg, 7 pulgadas, 8GB, wi-fi, wifi, bluetooth"', NULL),
(957, 23, 'AUDIFONO PANASONIC RP-HT260PP-K', 'AUDIFONO PANASONIC RP-HT260PP-K', NULL, NULL, NULL, NULL, NULL, NULL, 175, '0302114166', 'Audifono, audifono grande, skullcandy, beats, tipo DJ, Panasonic', NULL),
(958, 23, 'AUDIFONO SONY MDRZX300WQU', 'AUDIFONO SONY BLANCO MDRZX300WQU SO58MDRZX300WQU', NULL, NULL, NULL, NULL, NULL, NULL, 176, '0302114365', 'Audifono, audifono grande, skullcandy, beats, tipo DJ, Sony', NULL),
(959, 23, 'AUDIFONO SONY MDRZX300WQU', 'AUDIFONO SONY NEGRO MDRZX300BQU SO58MDRZX300BQU', NULL, NULL, NULL, NULL, NULL, NULL, 176, '0302114363', 'Audifono, audifono grande, skullcandy, beats, tipo DJ, Sony', NULL),
(960, 23, 'AUDIFONO SONY MDRZX300WQU', 'AUDIFONO SONY ROJO MDRZX300RQU SO58MDRZX300RQU', NULL, NULL, NULL, NULL, NULL, NULL, 176, '0302114364', 'Audifono, audifono grande, skullcandy, beats, tipo DJ, Sony', NULL),
(961, 23, 'AUDIFONO SONY MDRXB200VQU SO58MDRXB200VQU', 'AUDIFONO SONY MORADO MDRXB200VQU SO58MDRXB200VQU', NULL, NULL, NULL, NULL, NULL, NULL, 177, '0302114370', 'Audifono, audifono grande, skullcandy, beats, tipo DJ, Sony', NULL),
(962, 23, 'AUDIFONO SONY MDRXB200VQU SO58MDRXB200VQU', 'AUDIFONO SONY NARANJA MDRXB200DQU SO58MDRXB200DQU', NULL, NULL, NULL, NULL, NULL, NULL, 177, '0302114366', 'Audifono, audifono grande, skullcandy, beats, tipo DJ, Sony', NULL),
(963, 23, 'AUDIFONO SONY MDRXB200VQU SO58MDRXB200VQU', 'AUDIFONO SONY ROSADO MDRXB200PQU SO58MDRXB200PQU', NULL, NULL, NULL, NULL, NULL, NULL, 177, '0302114369', 'Audifono, audifono grande, skullcandy, beats, tipo DJ, Sony', NULL),
(964, 23, 'AUDIFONO SONY MDRXB200VQU SO58MDRXB200VQU', 'AUDIFONO SONY TURQUESA MDRXB200LQU SO58MDRXB200LQ', NULL, NULL, NULL, NULL, NULL, NULL, 177, '0302114368', 'Audifono, audifono grande, skullcandy, beats, tipo DJ, Sony', NULL),
(965, 23, 'AUDIFONO SONY MDRXB200VQU SO58MDRXB200VQU', 'AUDIFONO SONY VERDE MDRXB200GQU SO58MDRXB200GQU', NULL, NULL, NULL, NULL, NULL, NULL, 177, '0302114367', 'Audifono, audifono grande, skullcandy, beats, tipo DJ, Sony', NULL),
(966, 23, 'BANCO DE BATERIA PORTATIL P.IPHONE/ IPOD/SAMSUNG/HTC/BB/25', 'CARGADOR AVANTREE BANCO PORTATIL P.IPHONE/ IPOD/SAMSUNG/HTC/BB/CAMERA/PSP SPPW-220-SLR', NULL, NULL, NULL, NULL, NULL, NULL, 178, '0301114441', 'banco de bateria, bateria de respaldo, bateria portatil, ipod, iphone, samsung, 25s, blackberry, htc', NULL),
(967, 23, 'CARGADOR DOBLE P.AUTO USB/IPHONE/SAMSUNG/DATOS/CORRIENTE CGST-09', 'CARGADOR AVANTREE DOBLE P.AUTO USB/IPHONE/SAMSUNG/DATOS/CORRIENTE CGST-09', NULL, NULL, NULL, NULL, NULL, NULL, 178, '0301114438', 'cargador para carro, cargador para auto, cargadador de celular para carro, cargador dual, cargador con 2 puertos usb, cargador con dos entradas, iphone, ipod, samsung, corriente', NULL),
(968, 23, 'KIT CARGADOR PARA IPHONE 4S', 'CARGADOR P.IPHONE 4S KIT 3 EN 1', NULL, NULL, NULL, NULL, NULL, NULL, 178, '0301114448', 'cargador, cargador para carro, cargador para auto, iphone 4s, iphone', NULL),
(969, 23, 'KIT CARGADOR PARA IPHONE 5S', 'CARGADOR P.IPHONE 5S KIT 3 EN 1', NULL, NULL, NULL, NULL, NULL, NULL, 178, '0301114449', 'cargador, cargador para carro, cargador para auto, iphone 5s, iphone', NULL),
(970, 23, 'KIT CARGADOR PARA GALAXY TAB', 'CARGADOR P.28 SAMSUNG KIT 3 EN 1', NULL, NULL, NULL, NULL, NULL, NULL, 178, '0301114450', 'cargador, cargador para carro, cargador para auto, GALAXY TAB, GALAXY, 28', NULL),
(971, 23, 'ESTUCHE PARA GALAXY NOTE ', 'ESTUCHE P.GALAXY NOTE V/COLORES', NULL, NULL, NULL, NULL, NULL, NULL, 178, '0302114459', 'estuche, protector, forro, galaxy note', NULL),
(972, 23, 'ESTUCHE PARA 28 DE 10.1""', 'ESTUCHE P.28 10.1 NEGRO S/MARCA', NULL, NULL, NULL, NULL, NULL, NULL, 179, '0302114457', '"estuche, 28, forro, galaxy tab, galaxy, 10.1"""', NULL),
(973, 23, 'ESTUCHE PARA 28 DE 10.1""', 'ESTUCHE P.28 CERRADO P.28 10.1NEGRO C/MARCA 4A', NULL, NULL, NULL, NULL, NULL, NULL, 179, '0302114455', '"estuche, 28, forro, galaxy tab, galaxy, 10.1"""', NULL),
(974, 23, 'ESTUCHE PARA 28 DE 10.1""', 'ESTUCHE P.28 CON TECLADO 10.1', NULL, NULL, NULL, NULL, NULL, NULL, 179, '0302114462', '"estuche, 28, forro, galaxy tab, galaxy, 10.1"""', NULL),
(975, 23, 'ESTUCHE PARA 28 DE 10.1""', 'ESTUCHE P.28 CERRADO 10.1 V/COLORES C/MARCA', NULL, NULL, NULL, NULL, NULL, NULL, 179, '0302114456', '"estuche, 28, forro, galaxy tab, galaxy, 10.1"""', NULL),
(976, 23, 'ESTUCHE PARA 28 DE 10.1""', 'ESTUCHE P.28 CERRADO 10.1V/COLORES SIN MARCA', NULL, NULL, NULL, NULL, NULL, NULL, 179, '0302114458', '"estuche, 28, forro, galaxy tab, galaxy, 10.1"""', NULL),
(977, 23, 'ESTUCHE CON TECLADO PARA 28 DE 7""', 'ESTUCHE PROTECTOR P.28 7 C/TECLADO USB', NULL, NULL, NULL, NULL, NULL, NULL, 180, '0302114306', '"estuche, 28, forro, galaxy tab, galaxy, 7"", estuche con teclado"', NULL),
(978, 27, 'IMPRESORA EPSON MULTIFUNCION DE TINTA CONTINUA L210', 'IMPRESORA EPSON INK JET MULTIFUNCION 3 EN 1 IMP/COPIA/SCA REF.L210', NULL, NULL, NULL, NULL, NULL, NULL, 181, '0302114208', 'impresora de tinta continua, tinta continua, sistema de tinta continua, impresora, copiadora, scaner', NULL),
(979, 27, 'IMPRESORA EPSON MULTIFUNCION DE TINTA CONTINUA L355 CON WIFI', 'IMPRESORA EPSON INK JET MULTIFUNCION 3 EN 1 IMP/COPIA/SCA WI FI REF.L355', NULL, NULL, NULL, NULL, NULL, NULL, 182, '0302114209', 'impresora de tinta continua, tinta continua, sistema de tinta continua, impresora, copiadora, scaner, wifi, wi-fi, inalambrica', NULL),
(980, 23, 'LAMINAS PROTECTORAS DE PANTALLA', 'LAMINA PROTECTORA DE PANTALLA MIKA P.GALAXY 1-2  10.1', NULL, NULL, NULL, NULL, NULL, NULL, 183, '0302113737', 'LAMINA, PROTECTOR DE PANTALLA, MICA, MIKA', NULL),
(981, 23, 'LAMINAS PROTECTORAS DE PANTALLA', 'LAMINA PROTECTORA DE PANTALLA MIKA P.GALAXY 1-2  7.2', NULL, NULL, NULL, NULL, NULL, NULL, 183, '0302113736', 'LAMINA, PROTECTOR DE PANTALLA, MICA, MIKA', NULL);
INSERT INTO `producto` (`id`, `subcategoria_id`, `nombre`, `descripcion`, `stock`, `precio`, `created`, `updated`, `estado`, `visitas`, `grupo`, `codigo`, `tags`, `foto`) VALUES
(982, 23, 'LAMINAS PROTECTORAS DE PANTALLA', 'LAMINA PROTECTORA DE PANTALLA MIKA P.IPAD 1/2/3', NULL, NULL, NULL, NULL, NULL, NULL, 183, '0302113735', 'LAMINA, PROTECTOR DE PANTALLA, MICA, MIKA', NULL),
(983, 23, 'LAMINAS PROTECTORAS DE PANTALLA', 'LAMINA PROTECTORA DE PANTALLA MIKA P.LAPTOP 10.1', NULL, NULL, NULL, NULL, NULL, NULL, 183, '0302113738', 'LAMINA, PROTECTOR DE PANTALLA, MICA, MIKA', NULL),
(984, 23, 'LAMINAS PROTECTORAS DE PANTALLA', 'LAMINA PROTECTORA DE PANTALLA MIKA P.LAPTOP 14', NULL, NULL, NULL, NULL, NULL, NULL, 183, '0302113739', 'LAMINA, PROTECTOR DE PANTALLA, MICA, MIKA', NULL),
(985, 23, 'LAMINAS PROTECTORAS DE PANTALLA', 'LAMINA PROTECTORA DE PANTALLA MIKA P.LAPTOP 15.1', NULL, NULL, NULL, NULL, NULL, NULL, 183, '0302113740', 'LAMINA, PROTECTOR DE PANTALLA, MICA, MIKA', NULL),
(986, 23, 'LAMINAS PROTECTORAS DE PANTALLA', 'LAMINA PROTECTORA DE PANTALLA MIKA P.28 10 TAPA DELANTERA', NULL, NULL, NULL, NULL, NULL, NULL, 183, '0302113734', 'LAMINA, PROTECTOR DE PANTALLA, MICA, MIKA', NULL),
(987, 23, 'LAMINAS PROTECTORAS DE PANTALLA', 'LAMINA PROTECTORA DE PANTALLA MIKA P.28 7 TAPA DELANTERA', NULL, NULL, NULL, NULL, NULL, NULL, 183, '0302113733', 'LAMINA, PROTECTOR DE PANTALLA, MICA, MIKA', NULL),
(988, 23, 'LAMINAS PROTECTORAS DE PANTALLA', 'LAMINA PROTECTORA DE PANTALLA P.SAMSUNG 10.1 P5100', NULL, NULL, NULL, NULL, NULL, NULL, 183, '0302114452', 'LAMINA, PROTECTOR DE PANTALLA, MICA, MIKA', NULL),
(989, 23, 'LAMINAS PROTECTORAS DE PANTALLA', 'LAMINA PROTECTORA DE PANTALLA P.SAMSUNG 7 P3100', NULL, NULL, NULL, NULL, NULL, NULL, 183, '0302114451', 'LAMINA, PROTECTOR DE PANTALLA, MICA, MIKA', NULL),
(990, 23, 'LAPIZ OPTICO PARA 28S Y TEL╔FONOS T┴CTILES', 'LAPIZ OPTICO TOUCH V/COLORES BK-364', NULL, NULL, NULL, NULL, NULL, NULL, 184, '0302114463', 'lapiz optico, lapiz, lapiz touch, 28, smartphone', NULL),
(991, 23, 'PARLANTE PORT┴TIL GENIUS ', 'PARLANTE GENIUS SP-I165 NEGRO', NULL, NULL, NULL, NULL, NULL, NULL, 185, '0302114289', 'parlante, portatil, bocina, smartphone, 28, mp3, mp4', NULL),
(992, 23, 'PARLANTE PORT┴TIL GENIUS ', 'PARLANTE GENIUS SP-I165 ROJO', NULL, NULL, NULL, NULL, NULL, NULL, 185, '0302114288', 'parlante, portatil, bocina, smartphone, 28, mp3, mp5', NULL),
(993, 23, 'PARLANTE PORT┴TIL GENIUS ', 'PARLANTE GENIUS SP-U110', NULL, NULL, NULL, NULL, NULL, NULL, 185, '0302114293', 'parlante, portatil, bocina, smartphone, 28, mp3, mp6', NULL),
(994, 23, 'PENDRIVE VARIAS MARCAS, CAPACIDADES Y DISEÐOS', 'PEN DRIVE KINGSTON 8 GB DTSE9H METAL GRIS', NULL, NULL, NULL, NULL, NULL, NULL, 186, '0302113716', 'pendrive, pen drive, flas, memory, memoria', NULL),
(995, 23, 'PENDRIVE VARIAS MARCAS, CAPACIDADES Y DISEÐOS', 'PEN DRIVE SANDISK 32 GB SDCZ50-32G-B35 CRUZER BLADE USB', NULL, NULL, NULL, NULL, NULL, NULL, 186, '0302113474', 'pendrive, pen drive, flas, memory, memoria', NULL),
(996, 23, 'PENDRIVE VARIAS MARCAS, CAPACIDADES Y DISEÐOS', 'PEN DRIVE SANDISK 8 GB SDCZ53B-8G-B35 CRUZER POP  ROJO TRIBAL', NULL, NULL, NULL, NULL, NULL, NULL, 186, '0302114244', 'pendrive, pen drive, flas, memory, memoria', NULL),
(997, 28, '28 AOC MW0712  1GB WIFI  7 PLG  8GB ', '28 AOC MW0712  1GB WIFI  7 PLG  8GB AND 4.0  C/EST.', NULL, NULL, NULL, NULL, NULL, NULL, 187, '0302114361', '"28, 28 7"", 28 7, aoc"', NULL),
(998, 28, '28 SAMSUNG GALAXY GT-P5100 3G 10.1""', '28 SAMSUNG GALAXY GT-P5100 3G 10.1PLG 16GB EXP. 32GBWIFI BTá', NULL, NULL, NULL, NULL, NULL, NULL, 188, '0302113961', '"28, samsung, galaxy tab, 3g, 10.1"", GT-P5100"', NULL),
(999, 28, '28 VIEWSONIC 10" V10E"', '28 VIEWSONIC 10 PLG 4GB V10E', NULL, NULL, NULL, NULL, NULL, NULL, 189, '0302114207', '"28, viewsonic, 10.1"", 10"", V10E"', NULL),
(1000, 23, 'ADAPTADOR GALAXY TAB OTG CONECTOR SD USB', 'ADAPTADOR GALAXY TAB OTG CONECTOR SD USB', NULL, NULL, NULL, NULL, NULL, NULL, 190, '0302114713', 'adaptador, galaxy tab, galaxy, usb otg, otg, sd, usb', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productoimagen`
--

CREATE TABLE IF NOT EXISTS `productoimagen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `producto_id` int(11) NOT NULL,
  `url` longtext COLLATE utf8_unicode_ci,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `descripcion` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `IDX_83CE4BAB7645698E` (`producto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_tmp`
--

CREATE TABLE IF NOT EXISTS `producto_tmp` (
  `col11` text NOT NULL,
  `col12` text NOT NULL,
  `col13` text NOT NULL,
  `col14` text NOT NULL,
  `col15` text NOT NULL,
  `col16` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto_tmp`
--

INSERT INTO `producto_tmp` (`col11`, `col12`, `col13`, `col14`, `col15`, `col16`) VALUES
('23', 'Estuche de Cuero para Iphone 4', 'ESTUCHE AVANTREE D.CUERO P.IPHONE 4 C/TAPA KSLT-IF4-001', '0302113383', 'estuche, forro, iphone 4, cuero, protector', '91\r'),
('23', 'Stand para Ipad 2', 'ESTUCHE AVANTREE PLEGABLE C/STAND P.IPAD 2 KSLT-IPAD2-03', '0302113384', 'Stand, case, ipad 2, accesorio', '92\r'),
('23', 'Estuche de cuero para Ipad 2', 'ESTUCHE AVANTREE PLEGLABLE D.CUERO C/STANDP.IPAD2 KSLT-IPA3-01', '0302113385', 'estuche, case, protector, forro, ipad 2, cuero, forro, protector, stand', '93\r'),
('23', 'Brazaleta para ipod/iphone', 'ESTUCHE AVANTREE TIPO BRAZALETE P.IPOD/IPHONE/IPAD KSAM-54', '0302113381', 'brazalete, accesorio, ipad, iphone', '94\r'),
('23', 'Estuche para cßmara digital varios colores case logic', 'ESTUCHE CASE LOGIC P. 25 DIGITAL C/1 BOLSILLO GRIS CLGPHOT0012 REF.DCB301', '0302113302', 'Estuche, protector, forro, funda, cßmara digital, celeste, rojo, negro, magenta, rosado, azul, gris, case logic', '95\r'),
('23', 'Estuche para cßmara digital varios colores case logic', 'ESTUCHE CASE LOGIC P. 25 DIGITAL C/2 BOLSILLOS NEGRO CLGPHOT0014 REF.TBC302', '0302113303', 'Estuche, protector, forro, funda, cßmara digital, celeste, rojo, negro, magenta, rosado, azul, gris, case logic', '95\r'),
('23', 'Estuche para cßmara digital varios colores case logic', 'ESTUCHE CASE LOGIC P. 25 DIGITAL CELESTE CLGPHOT0041 REF.QPB201', '0302113305', 'Estuche, protector, forro, funda, cßmara digital, celeste, rojo, negro, magenta, rosado, azul, gris, case logic', '95\r'),
('23', 'Estuche para cßmara digital varios colores case logic', 'ESTUCHE CASE LOGIC P. 25 DIGITAL GRIS CLGPHOT0042 REF.QPB201', '0302113306', 'Estuche, protector, forro, funda, cßmara digital, celeste, rojo, negro, magenta, rosado, azul, gris, case logic', '95\r'),
('23', 'Estuche para cßmara digital varios colores case logic', 'ESTUCHE CASE LOGIC P. 25 DIGITAL MAGENTA CLGPHOT0043 REF.QPB201', '0302113307', 'Estuche, protector, forro, funda, cßmara digital, celeste, rojo, negro, magenta, rosado, azul, gris, case logic', '95\r'),
('23', 'Estuche para cßmara digital varios colores case logic', 'ESTUCHE CASE LOGIC P. 25 DIGITAL NEGRO CLGPHOT0044 REF.QPB201', '0302113308', 'Estuche, protector, forro, funda, cßmara digital, celeste, rojo, negro, magenta, rosado, azul, gris, case logic', '95\r'),
('23', 'Estuche para cßmara digital varios colores case logic', 'ESTUCHE CASE LOGIC P. 25 DIGITAL ROJO CLGPHOT0045 REF.QPB201', '0302113309', 'Estuche, protector, forro, funda, cßmara digital, celeste, rojo, negro, magenta, rosado, azul, gris, case logic', '95\r'),
('23', 'Estuche para cßmara digital varios colores case logic', 'ESTUCHE CASE LOGIC P. 25 DIGITAL ROSADO CLGPHOT00079 REF.UNZB2', '0302113311', 'Estuche, protector, forro, funda, cßmara digital, celeste, rojo, negro, magenta, rosado, azul, gris, case logic', '95\r'),
('23', 'Estuche para cßmara digital varios colores case logic', 'ESTUCHE CASE LOGIC P. 25 DIGITAL AZUL CLGPHOT00075 REF.UNZB2', '0302113310', 'Estuche, protector, forro, funda, cßmara digital, celeste, rojo, negro, magenta, rosado, azul, gris, case logic', '95\r'),
('23', 'Case de aluminio para Iphone 4', 'ESTUCHE CASE PROTECTOR D.ALUMINIO ULTRA SLIM P.PHONE 4 KSMT-IF4G-004', '0302113387', 'Estuche, case, forro, aluminio, iphone4, slim, protector', '96\r'),
('23', 'Case de aluminio para Iphone 5', 'ESTUCHE CASE PROTECTOR MT001 P.IPHONE 4 D.ALUMINIO /AMPLIFICADOR D.SEÐAL KSMT-IF4G-001', '0302113386', 'Estuche, case, forro, aluminio, iphone4, slim, protector', '96\r'),
('23', '"Estuche para 28 7"""', 'ESTUCHE KLIP XTREME MICROS P.28 KNS-010', '0302113396', '"estuche, forro, protector, sleeve, 28, 7"""', '97\r'),
('23', '"Estuche para 28 7"""', 'ESTUCHE KLIP XTREME TABULA P.28 KNS-020', '0302113397', '"estuche, forro, protector, sleeve, 28, 7"""', '97\r'),
('23', '"Estuche para 28 7"""', 'ESTUCHE P.28 7 COL.SURTIDOS ROJ/NEG/AZ/MOR/VER/CAF/CRE/FUC ROTATING 360', '0302114296', '"estuche, forro, protector, sleeve, 28, 7"""', '97\r'),
('23', '"Estuche para 28 7"""', 'ESTUCHE P.28 7 NEGRO ROTATING 360', '0302114295', '"estuche, forro, protector, sleeve, 28, 7"""', '97\r'),
('23', '"Estuche para 28 7"""', 'ESTUCHE P.28 CERRADO 7 3A', '0302114454', '"estuche, forro, protector, sleeve, 28, 7"""', '97\r'),
('23', '"Estuche para 28 7"""', 'ESTUCHE P.28 GIRATORIO 7NEGRO CON MARCA', '0302114460', '"estuche, forro, protector, sleeve, 28, 7"""', '97\r'),
('23', '"Estuche para 28 7"""', 'ESTUCHE P.28 GIRATORIO CON MARCA COL.SURTIDOS', '0302114461', '"estuche, forro, protector, sleeve, 28, 7"""', '97\r'),
('23', '"Estuche para 28 7"""', 'ESTUCHE P.28 SAMSUNG 7 P3100 RANURA VERTICAL TRASERA 3A', '0302114453', '"estuche, forro, protector, sleeve, 28, 7"""', '97\r'),
('23', '"Estuche para 28 7"""', 'PROTECTOR AVANTREE P.28 7 NEOPRENO NEGRO KSFB-TAB-7-A', '0302114439', '"estuche, forro, protector, sleeve, 28, 7"""', '97\r'),
('23', 'Estuche para cßmara digital varios colores Klip Xtream', 'ESTUCHE KLIP XTREME P.25 COMPACTA NEGRO C/VERDE RF.KCB-310/AN125KLX04', '0302109026', 'Estuche, protector, forro, funda, klip xtream, neopreno', '98\r'),
('23', 'Estuche para cßmara digital varios colores Klip Xtream', 'ESTUCHE KLIP XTREME P.25 COMPACTO KCB-340B AG128KLX50', '0302110846', 'Estuche, protector, forro, funda, klip xtream, neopreno', '98\r'),
('23', 'Estuche para cßmara digital varios colores Klip Xtream', 'ESTUCHE KLIP XTREME P.25 COMPACTO KCB-340OL AG128KLX52', '0302110844', 'Estuche, protector, forro, funda, klip xtream, neopreno', '98\r'),
('23', 'Estuche para cßmara digital varios colores Klip Xtream', 'ESTUCHE KLIP XTREME P.25 COMPACTO KCB-340P AG128KLX51', '0302110845', 'Estuche, protector, forro, funda, klip xtream, neopreno', '98\r'),
('23', 'Estuche para cßmara digital varios colores Klip Xtream', 'ESTUCHE KLIP XTREME P.25 DELGADO KCB-330A AG128KLX01', '0302110847', 'Estuche, protector, forro, funda, klip xtream, neopreno', '98\r'),
('23', 'Estuche para cßmara digital varios colores Klip Xtream', 'ESTUCHE P.25 KLIP XTREME D.CUERO KCB-500', '0302113401', 'Estuche, protector, forro, funda, klip xtream, neopreno', '98\r'),
('23', 'Estuche para cßmara digital varios colores Klip Xtream', 'ESTUCHE P.25 KLIP XTREME TATOO ROSADOKCB-330P', '0302113399', 'Estuche, protector, forro, funda, klip xtream, neopreno', '98\r'),
('23', 'Estuche para cßmara digital varios colores Klip Xtream', 'ESTUCHE P.25 KLIP XTREME TATOO VERDE KCB-330G', '0302113400', 'Estuche, protector, forro, funda, klip xtream, neopreno', '98\r'),
('23', '"Estuche para laptop 12.1"", 15.4"" varios colores"', 'ESTUCHE P. LAPTOP MANHATAN NEGRO/GRIS 12.1 421843', '0301105165', '"Estuche, forro, sleeve, protector, neopreno, laptop, 12.1"", 15.4"", manhattan"', '99\r'),
('23', '"Estuche para laptop 12.1"", 15.4"" varios colores"', 'ESTUCHE P. LAPTOP MANHATAN VIOLET/CREMA15.4421850', '0301105164', '"Estuche, forro, sleeve, protector, neopreno, laptop, 12.1"", 15.4"", manhattan"', '99\r'),
('23', '"Estuche para laptop 12.1"", 15.4"" varios colores"', 'ESTUCHE P.LAPTOP MANHATAN VIOLET/CREM 12.1 421867', '0301105170', '"Estuche, forro, sleeve, protector, neopreno, laptop, 12.1"", 15.4"", manhattan"', '99\r'),
('23', '"Estuche para laptop 12.1"", 15.4"" varios colores"', 'ESTUCHE P.LAPTOP MANHATTAN 12.1 VERDE/BABY 421928', '0302106885', '"Estuche, forro, sleeve, protector, neopreno, laptop, 12.1"", 15.4"", manhattan"', '99\r'),
('23', '"Estuche para laptop 12.1"", 15.4"" varios colores"', 'ESTUCHE P.LAPTOP MANHATTAN 15.4 VERDE/BABY 421935', '0302106886', '"Estuche, forro, sleeve, protector, neopreno, laptop, 12.1"", 15.4"", manhattan"', '99\r'),
('23', '"Estuche para laptop 12.1"", 15.4"" varios colores"', 'ESTUCHE P.LAPTOP MANHATTAN NEGRO/GRIS 15.4 421829', '0301105163', '"Estuche, forro, sleeve, protector, neopreno, laptop, 12.1"", 15.4"", manhattan"', '99\r'),
('23', 'Estuche de Neopreno para Ipad/ Ipad 2', 'ESTUCHE PROTECTOR AVANTREE P.IPAD/IPAD2 NEOPRENO KSFB-TAB-10-C', '0302113382', 'estuche, forro, sleeve, protector, neopreno, 28, ipad, ipad2', '100\r'),
('23', '"Estuche para laptop 10.2"", 14.1"""', 'ESTUCHE PROTECTOR KLIP XTREME P.PORTATIL 14.1 NEOPRENO KNS-310B/KSN-310GR', '0302113395', '"Estuche, forro, sleeve, protector, neopreno, laptop, 10.1"", 14.1"", Klip Xtream, reversible"', '101\r'),
('23', '"Estuche para laptop 10.2"", 14.1"""', 'ESTUCHE REVERSIBLE KLIP XTREME P. LAPTOP 10.2 V/COLORES REF.KSN-110', '0302109022', '"Estuche, forro, sleeve, protector, neopreno, laptop, 10.1"", 14.1"", Klip Xtream, reversible"', '101\r'),
('23', 'Estuche de cuero con teclado para Ipad2', 'ESTUCHE TOTTO PORTA IPAD PADITO AC54IND045-112OZ', '0302111434', 'Estuche, cuero, teclado, bluetooth, ipad2', '102\r'),
('23', 'Kit de limpieza para ipod/ipad/iphone', 'KIT DE LIMPIEZA AVANTREE P.IPOD/IPHONE/IPAD SCCL-SET-01', '0302113389', 'kit, limpieza, ipad, iphone, ipod', '103\r'),
('23', 'Kit de impieza para pantallas', 'KIT LIMPIEZA K-BYTE INC. ESPUMA/LIMPIA PANTALLA', '00K-BYTE', 'kit, limpieza, pantalla, monitor, espuma', '104\r'),
('23', 'Mouse inalßmbrimo para presentaciones', 'MOUSE MANHATAN INALAMB.P. PRESENTACIO 2.4GHZ177184', '0302105178', 'mouse, inlßmbrico, presentaci¾n, diapositivas, power point', '105\r'),
('23', 'Mouse micro Ëptico con Hub USB de 2 puertos', 'MOUSE MANHATAN OPTICO 2PORT USB2.0 HUB NANO 177559', '0302106880', 'mouse, mouse usb, mouse ¾ptico, hub, micro, mini', '106\r'),
('23', 'Mouse inalßmbrico para presentaciones', 'MOUSE MANHATTAN OPTICAL INALAMB. USB 176828', '0302103648', 'mouse, inlßmbrico, presentaci¾n, diapositivas, power point', '107\r'),
('23', 'Mouse ¾ptico USB varios colores', 'MOUSE MANHATTAN OPTICO AMARILLO REF.177689', '0302109843', 'mouse, usb, ¾ptico, varios colores', '108\r'),
('23', 'Mouse ¾ptico USB varios colores', 'MOUSE MANHATTAN OPTICO ROJO REF.177702', '0302109845', 'mouse, usb, ¾ptico, varios colores', '108\r'),
('23', 'Mouse ¾ptico USB varios colores', 'MOUSE MANHATTAN OPTICO AZUL REF.177719', '0302109844', 'mouse, usb, ¾ptico, varios colores', '108\r'),
('23', 'Mouse mini ¾ptico USB varios colores', 'MOUSE MANHATTAN OPTICO USB MINI NEGRO REF.176835', '0302102411', 'mini mouse, mouse, usb, varios colores', '109\r'),
('23', 'Mouse mini ¾ptico USB varios colores', 'MOUSE MANHATTAN OPTICO USB MINI NEGRO REF.176927', '0302102420', 'mini mouse, mouse, usb, varios colores', '109\r'),
('23', 'Mouse mini ¾ptico USB varios colores', 'MOUSE MANHATTAN OPTICO USB MINI PLATEADO REF.176910', '0302102419', 'mini mouse, mouse, usb, varios colores', '109\r'),
('23', 'Mouse mini ¾ptico USB varios colores', 'MOUSE MANHATTAN OPTICO USB MINI ROJO REF.176880', '0302102421', 'mini mouse, mouse, usb, varios colores', '109\r'),
('23', 'Mouse ¾ptico Wireless LG  varios colores', 'MOUSE OPTICO L.G. WIRELESS USB 2.4GHZ.BLANCO CM-400', '0302112245', 'mouse, ¾ptico, wireless, inalßmbrico, varios colores', '110\r'),
('23', 'Mouse ¾ptico Wireless LG  varios colores', 'MOUSE OPTICO L.G. WIRELESS USB 2.4GHZ.CELESTE CM-400', '0302112244', 'mouse, ¾ptico, wireless, inalßmbrico, varios colores', '110\r'),
('23', 'Mouse ¾ptico Wireless LG  varios colores', 'MOUSE OPTICO L.G. WIRELESS USB 2.4GHZ.NEGRO CM-400', '0302112246', 'mouse, ¾ptico, wireless, inalßmbrico, varios colores', '110\r'),
('23', 'Mouse pad con descansa mu±eca', 'MOUSE PAD MANHATTAN AZUL WRIST REST REF.434386', '0302105172', 'mouse pad, descansa mu±eca', '112\r'),
('23', 'Mouse pad con descansa mu±eca', 'MOUSE PAD MANHATTAN NEGRO WRIST REST REF.434362', '0302105171', 'mouse pad, descansa mu±eca', '112\r'),
('23', 'Mouse pad varios dise±os', 'MOUSE PAD MANHATTAN VARIOS DISEÐOS REF.423373', '0302109847', 'mouse pad, varios dise±os, varios colores', '113\r'),
('23', 'Mouse pad varios dise±os', 'MOUSE PAD MANHATTAN VARIOS DISEÐOS REF.423496', '0302109846', 'mouse pad, varios dise±os, varios colores', '113\r'),
('23', 'Mouse mini usb wireless', 'MOUSE VERBATIM OPTICO USB MINI WIRELEES ROJO REF.97540', '0302112166', 'mouse, usb, mini, wireless, inalßmbrico', '114\r'),
('23', 'Mouse mini usb wireless', 'MOUSE VERBATIM OPTICO USB MINI WIRELESS AZUL REF.97471', '0302112164', 'mouse, usb, mini, wireless, inalßmbrico', '114\r'),
('23', 'Mouse mini usb wireless', 'MOUSE VERBATIM OPTICO USB MINI WIRELESS GRAFITO REF.97470', '0302112163', 'mouse, usb, mini, wireless, inalßmbrico', '114\r'),
('23', 'Mouse mini usb wireless', 'MOUSE VERBATIM OPTICO USB MINI WIRELESS PURPURA REF.97473', '0302112165', 'mouse, usb, mini, wireless, inalßmbrico', '114\r'),
('23', 'Parlante portatil avantalk inalßmbrico', 'PARLANTE AVANTALK PORTATIL BLUETOOTH INALAMBRICO BTSP-200R', '0302113373', 'parlante, portatil, inalßmbrico. Bluetooth, wireless', '115\r'),
('23', 'parlante mini bluetooth avantree', 'PARLANTE AVANTREE MINI BLUETOOTH JAK 3.5MM BTSP-TR401-WOR', '0302113374', 'parlante, portatil, inalßmbrico. Bluetooth, wireless', '116\r'),
('23', 'Parlante portatil USB divoom', 'PARLANTE DIVOOM 2.0 P.MP3/PC/IPOD/CELULAR AZUL REF.IRIS-02-BL', '0302109816', 'parlante, portatil, usb, mp3, pc, ipod, celular, SD', '117\r'),
('23', 'Parlante portatil USB divoom', 'PARLANTE DIVOOM 2.0 P.MP3/PC/IPOD/CELULAR BLANCO REF.IRIS-02', '0302110826', 'parlante, portatil, usb, mp3, pc, ipod, celular, SD', '117\r'),
('23', 'Parlante portatil USB divoom', 'PARLANTE DIVOOM 2.0 P.MP3/PC/IPOD/CELULAR NARANJA REF.IRIS-02', '0302110827', 'parlante, portatil, usb, mp3, pc, ipod, celular, SD', '117\r'),
('23', 'Parlante portatil USB divoom', 'PARLANTE DIVOOM 2.0 P.MP3/PC/IPOD/CELULAR NEGRO REF.IRIS-02-BK', '0302109865', 'parlante, portatil, usb, mp3, pc, ipod, celular, SD', '117\r'),
('23', 'Parlante portatil USB divoom', 'PARLANTE DIVOOM 2.0 P.MP3/PC/IPOD/CELULAR ROSADO REF.IRIS-02', '0302110828', 'parlante, portatil, usb, mp3, pc, ipod, celular, SD', '117\r'),
('23', 'Parlante portatil USB divoom', 'PARLANTE DIVOOM 2.0 P.MP3/PC/IPOD/CELULAR VERDE REF.IRIS-02', '0302110829', 'parlante, portatil, usb, mp3, pc, ipod, celular, SD', '117\r'),
('23', 'Parlante portatil USB divoom', 'PARLANTE DIVOOM P.MP3/PC/IPOD/CELULAR AZUL I-TOUR-20', '0302110832', 'parlante, portatil, usb, mp3, pc, ipod, celular, SD', '117\r'),
('23', 'Parlante portatil USB divoom', 'PARLANTE DIVOOM P.MP3/PC/IPOD/CELULAR BLANCO I-TOUR-20', '0302110833', 'parlante, portatil, usb, mp3, pc, ipod, celular, SD', '117\r'),
('23', 'Parlante portatil USB divoom', 'PARLANTE DIVOOM P.MP3/PC/IPOD/CELULAR DORADO I-TOUR-20', '0302110839', 'parlante, portatil, usb, mp3, pc, ipod, celular, SD', '117\r'),
('23', 'Parlante portatil USB divoom', 'PARLANTE DIVOOM P.MP3/PC/IPOD/CELULAR MORADO I-TOUR-20', '0302110835', 'parlante, portatil, usb, mp3, pc, ipod, celular, SD', '117\r'),
('23', 'Parlante portatil USB divoom', 'PARLANTE DIVOOM P.MP3/PC/IPOD/CELULAR NARANJA I-TOUR-20', '0302110836', 'parlante, portatil, usb, mp3, pc, ipod, celular, SD', '117\r'),
('23', 'Parlante portatil USB divoom', 'PARLANTE DIVOOM P.MP3/PC/IPOD/CELULAR NEGRO I-TOUR-20', '0302110838', 'parlante, portatil, usb, mp3, pc, ipod, celular, SD', '117\r'),
('23', 'Parlante portatil USB divoom', 'PARLANTE DIVOOM P.MP3/PC/IPOD/CELULAR ROJO I-TOUR-20', '0302110830', 'parlante, portatil, usb, mp3, pc, ipod, celular, SD', '117\r'),
('23', 'Parlante portatil USB divoom', 'PARLANTE DIVOOM P.MP3/PC/IPOD/CELULAR SD AZUL REF.ITOUR-BOOM-A', '0302109815', 'parlante, portatil, usb, mp3, pc, ipod, celular, SD', '117\r'),
('23', 'Parlante portatil USB divoom', 'PARLANTE DIVOOM P.MP3/PC/IPOD/CELULAR SD BLANCO REF.ITOUR-BOOM-W', '0302109870', 'parlante, portatil, usb, mp3, pc, ipod, celular, SD', '117\r'),
('23', 'Parlante portatil USB divoom', 'PARLANTE DIVOOM P.MP3/PC/IPOD/CELULAR SD NEGRO REF.ITOUR-BOOM-B', '0302109871', 'parlante, portatil, usb, mp3, pc, ipod, celular, SD', '117\r'),
('23', 'Parlante portatil USB divoom', 'PARLANTE DIVOOM P.MP3/PC/IPOD/CELULAR SD ROJO REF.ITOUR-BOOM-R', '0302109873', 'parlante, portatil, usb, mp3, pc, ipod, celular, SD', '117\r'),
('23', 'Parlante portatil USB divoom', 'PARLANTE DIVOOM UPO BUD USB AZUL REF.UPO-A', '0302109866', 'parlante, portatil, usb, mp3, pc, ipod, celular, SD', '117\r'),
('23', 'Parlante portatil USB divoom', 'PARLANTE DIVOOM UPO BUD USB GRIS REF.UPO-S', '0302109869', 'parlante, portatil, usb, mp3, pc, ipod, celular, SD', '117\r'),
('23', 'Parlante portatil USB divoom', 'PARLANTE DIVOOM UPO BUD USB NEGRO REF.UPO-B', '0302109867', 'parlante, portatil, usb, mp3, pc, ipod, celular, SD', '117\r'),
('23', 'Parlante portatil USB divoom', 'PARLANTE DIVOOM UPO BUD USB ROJO REF.UPO-R', '0302109868', 'parlante, portatil, usb, mp3, pc, ipod, celular, SD', '117\r'),
('23', 'Parlante solar bluetooth para carros', 'PARLANTE IOGEAR SOLAR P.CARROS BLUETOOTH GBHFK231', '0302112152', 'parlante, solar, bluetooth, carro, portatil', '118\r'),
('23', 'Parlante logitech 2.0 stereo', 'PARLANTE LOGITECH 2.0 REF.S120', '0302110824', 'parlante, sistema de audio, 2.0, stereo, sistema de altavoces, altavoces', '119\r'),
('23', 'Parlante logitech 2.1 stereo', 'PARLANTE LOGITECH 2.1 STEREO SPEAKER REF.LS21', '0302110825', 'parlante, sistema de audio, 2.1, stereo, sistema de altavoces, altavoces', '120\r'),
('23', 'Parlante bluetooth manhattan', 'PARLANTE MANHATTAN ACUSTICO BLUETOOTH NEGRO 150194', '0302106902', 'parlante, bluetooth, acustico', '121\r'),
('23', 'Parlantes', 'PARLANTE MANHATTAN MULTIMEDIA REV.2.0 REF.160650', '0302105151', 'Parlantes, usb, 3.5, 2.0, usb', '122\r'),
('23', 'Parlantes', 'PARLANTE MANHATTAN NEGRO SERIE 2800 ACUSTICO150149', '0302106901', 'Parlantes, usb, 3.5, 2.0, usb', '122\r'),
('23', 'Parlantes', 'PARLANTE MANHATTAN P.IPOD IPHONE REF.150125', '0302106900', 'Parlantes, usb, 3.5, 2.0, usb', '122\r'),
('23', 'Parlantes', 'PARLANTE MANHATTAN SERIES 2300 2W X2 160HZ REV 3.01 REF. 160780', '0302100078', 'Parlantes, usb, 3.5, 2.0, usb', '122\r'),
('23', 'Parlantes', 'PARLANTE MANHATTAN USB SERIE 2700 NEGRO 161114', '0302108695', 'Parlantes, usb, 3.5, 2.0, usb', '122\r'),
('23', 'Parlantes', 'PARLANTE MINI SPEAKER AVANTREE UNIVERSAL P.IPOD/MP3/MP4/CD/ /MOVIL/PC MNSP-TR402-WHT', '0302113388', 'Parlantes, usb, 3.5, 2.0, usb', '122\r'),
('23', 'Teclados Bluethoot para 28s con estuche', 'TECLADO AVANTALK BLUETOOTH C/ESTUCHE CUERO P.PC/PS3/ /IPHONE4/IPHONE 3GS BTKB-3500-BLK', '0302113372', 'Teclado, bluetooth, 28, mini, inalßmbrico, estuche, case, ipad', '123\r'),
('23', 'Teclados Bluethoot para 28s con estuche', 'TECLADO AVANTREE BLUETOOTH P.IPAD/IPAD2 TRIPLE FUNCION TELADO/SPORTE/CASE BTKB-2902-EN', '0302113371', 'Teclado, bluetooth, 28, mini, inalßmbrico, estuche, case, ipad', '123\r'),
('23', 'Teclados Bluetooth para 28s', 'TECLADO GENIUS MINI LUX PAD BLUETOOTH 31320004104', '0302113081', 'Teclado, Bluetooth, mini, 28', '124\r'),
('23', 'Teclados Bluetooth para 28s', 'TECLADO MANHATAN MULT./BLUETOTH MINI 28177887', '0302113163', 'Teclado, Bluetooth, mini, 28', '124\r'),
('23', 'Teclados Bluetooth para 28s', 'TECLADO IOGEAR MINI MULTI BLUETOOHT REF.GKB601B', '0302112151', 'Teclado, Bluetooth, mini, 28', '124\r'),
('23', 'Ventilador para Laptop', 'VENTILADOR MANHATTAN P.LAPTOP PAD1 20CM REF.703406', '0302106776', 'Ventilador, laptop, usb, portatil', '125\r'),
('23', 'Ventilador para Laptop', 'VENTILADOR MANHATTAN P.LAPTOP REF.700467', '0302103646', 'Ventilador, laptop, usb, portatil', '125\r'),
('23', 'Ventilador para Laptop', 'VENTILADOR PARA PORTATIL MANHATTAN 2PTOS.USB190046', '0302108694', 'Ventilador, laptop, usb, portatil', '125\r'),
('23', 'Ventilador para Laptop', 'VENTILADOR PARA PORTATIL MANHATTAN 4PTOS.USB190039', '0302108693', 'Ventilador, laptop, usb, portatil', '125\r'),
('29', 'Adaptador de audio 2 salidas', 'ADAPTADOR AVANTREE D.AUDIO TIPO LLAVERO 2SALIDAS D.AUDIFONO P.IPOD/IPHONE/IPAD ADAD-2W-F3', '0301113362', 'adaptador, audio, accesorio, llavero, 2 salidas de audio, split', '126\r'),
('29', 'Cargador USB', 'ADAPTADOR DE PODER MANHATTAN USB NEMA 5-15  407489', '0302109821', 'Adaptador, usb, cargador', '127\r'),
('29', 'Adaptador de audio 3D USB', 'ADAPTADOR DE SONIDO MANHATTAN 3D USB REF.150859', '0302109822', 'Adaptador de audio, adaptador de sonido, usb, 3d', '128\r'),
('29', 'Adaptador USB 2.0 a Fast Ethernet', 'ADAPTADOR INTELINET P.RED USB2.010/100RJ45 524766', '0301106998', 'Adaptador, adpatador de red, usb 2.0, ethernet', '129\r'),
('29', 'Adaptador USB 2.0 a Fast Ethernet', 'ADAPTADOR INTELLINET USB 2.0 GIGABIT ETHERNET REF.502245', '0302102474', 'Adaptador, adpatador de red, usb 2.0, ethernet', '129\r'),
('29', 'Adaptador USB 2.0 a Fast Ethernet', 'ADAPTADOR INTELLINET ETHERNET 10/100 FAST USB REF.501262', '030194040', 'Adaptador, adpatador de red, usb 2.0, ethernet', '129\r'),
('29', 'Adaptador inalßmbrico USB 150N', 'ADAPTADOR INTELLINET USB 150MBPS C/CD REF.524438', '0301106924', 'Adaptador de red, adaptador, wireless, inalßmbrico, usb, 150N', '130\r'),
('29', 'Adaptador de corriente para laptop 70W', 'ADAPTADOR MANHATTAN P.LAPTOP70W.UNIVERSAL AC100854', '0302105912', 'Adaptador de corriente, adaptador para laptop, cargador para laptop, 70w', '131\r'),
('29', 'Adaptador USB 2.0 a HDMI', 'ADAPTADOR MANHATTAN USB  2.0 TO HDMI.151061', '0302113167', 'Adaptador usb, adaptador hdmi, convertidor, us, hdmi', '132\r'),
('29', 'Adaptador inalßmbrico USB 300N', 'ADAPTADOR USB WIRELESS 300MBPS 2.0 REF.523974', '0301106896', 'Adaptador usb, inalßmbrico, wireless, 300N, usb', '133\r'),
('24', '24 de datos para Iphone y Ipad', '24 DE DATOS AVANTREE P.IPOD/IPHONE/IPAD Y CARGADOR FDKB-IFA', '0302113378', 'Cargador, 24 de datos, ipad, iphone', '134\r'),
('24', '24 retractil Micro USB', '24 DE DATOS AVANTREE RETRACTIL MICRO USB/CARGADOR D.TELF FDKB-MICRO-RT', '0302113379', '24, 24 de datos, cargador, micro USB, celular', '135\r'),
('24', 'Extensor HDMI 1.2 Cat5e/ Cat6', 'EXT.MANHATAN HDMI 1.2 CAT.5E 30MT.177276', '0302110928', 'extensor, hdmi, 24 utp, patch cord, cat 5e, cat 6', '136\r'),
('24', '24 HDMI 1.8m, 3m, 5m, 10m', '24 EXT.MANHAT.MONIT.HDMI1.3NEGRO3M391528/306126', '0302105932', '24 hdmi, 3m, 1.8m, 5m, 10m', '137\r'),
('24', '24 HDMI 1.8m, 3m, 5m, 10m', '24 EXT.MANHATAN HDMI NEGRO 33FT/10MT.322539', '0302110929', '24 hdmi, 3m, 1.8m, 5m, 10m', '137\r'),
('24', '24 HDMI 1.8m, 3m, 5m, 10m', '24 EXTENS.MANHAT. HDMI1.3 NEG1.8M 391511/306119', '0302105931', '24 hdmi, 3m, 1.8m, 5m, 10m', '137\r'),
('24', '24 HDMI 1.8m, 3m, 5m, 10m', '24 EXT.MANHATAN HDMI19 NEGRO 16.5FT/5MT.306133', '0302110930', '24 hdmi, 3m, 1.8m, 5m, 10m', '137\r'),
('24', '24 HDMI con Canal Ethernet', '24 EXTENS. MANHATAN VIDEO HDMI NEGRO 3MT.323222', '0302113172', '24 HDMI, con ethernet, red', '138\r'),
('24', '24 HDMI con Canal Ethernet', '24 EXTENS.MANHATAN VIDEO HDMI NEGRO 5MT.323239', '0302113173', '24 HDMI, con ethernet, red', '138\r'),
('24', '24 HDMI con Canal Ethernet', '24 EXTENS.MANHATAN VIDEO HDMI NEGRO 2MT. 324427', '0302113174', '24 HDMI, con ethernet, red, HDMI micro, hdmi', '139\r'),
('24', '24 extensi¾n de Alta Velocidad USB 2.0', '24 EXTENS MANHATAN 5MT NEG.USB2  302050', '0302105930', '24 usb, extensi¾n usb, usb macho a usb hembra, usb hembra.', '140\r'),
('24', '24 AV Compuesto con USB', '24 EXTENS.MANHATAN ILYNK USB IPOD/TV BCO393713', '0302113177', '24 para iphone, iphone a tv, iphone, tv', '141\r'),
('24', '24 VÝdeo Splitter HDMI', '24 EXTENS.MANHATAN VIDEO SPLIT.HDMI NEGRO307833', '0302113175', '24 HDMI, adaptador, video, HDMI, 2 salidas HDMI', '142\r'),
('24', '24 USB 3.0 A Macho / B Macho', '24 EXTENSION MANHATTAN USB 3.0 AZUL 2MT. 322430', '0302113168', '24 USB, USB 3.0, macho, b macho 3.0, b macho', '143\r'),
('24', '24 USB 3.0 A Macho / Micro B Macho', '24 EXTENSION MANHATTAN USB 3.0 AZUL 2MT. 325424', '0302113169', '24 USB, USB 3.0, macho, micro b macho, micro usb 3.0', '144\r'),
('24', '24 USB 2.0 a Micro USB ', '24 EXTENS.MANHATAN USB2.0 AM A MICRO BM 307161', '0302113170', '24 USB, Cargador, celular, 24 de datos, micro USB', '145\r'),
('24', '24 SVGA macho a macho 1.8m, 3m, 7.5m, 10m, 20m, 30m', '24 MANHATAN MON.SVGA HD15MM NEG.25FT/7.5 372978', '0302110937', '24 svga, 24 vga, monitor, video, macho a macho, macho', '146\r'),
('24', '24 SVGA macho a macho 1.8m, 3m, 7.5m, 10m, 20m, 30m', '24 MANHATAN MON.SVGA HD15MM NEG.33FT/10M.312776', '0302110938', '24 svga, 24 vga, monitor, video, macho a macho, macho', '146\r'),
('24', '24 SVGA macho a macho 1.8m, 3m, 7.5m, 10m, 20m, 30m', '24 MANHATAN MON.SVGA HD15MM NEG.66FT/20M.335607', '0302110939', '24 svga, 24 vga, monitor, video, macho a macho, macho', '146\r'),
('24', '24 SVGA macho a macho 1.8m, 3m, 7.5m, 10m, 20m, 30m', '24 MANHATAN MONI.SVGA HD15M-M NE.6FT/1.8M309035', '0302110936', '24 svga, 24 vga, monitor, video, macho a macho, macho', '146\r'),
('24', '24 SVGA macho a macho 1.8m, 3m, 7.5m, 10m, 20m, 30m', '24 MANHATAN MONIT.VGA HD15M-M 10FT/3M.300926', '0302110948', '24 svga, 24 vga, monitor, video, macho a macho, macho', '146\r'),
('24', '24 SVGA macho a macho 1.8m, 3m, 7.5m, 10m, 20m, 30m', '24 MANHATAN MONITOR SVGA HD15M-M NEG.30M.337342', '0302110935', '24 svga, 24 vga, monitor, video, macho a macho, macho', '146\r'),
('24', '24 HDMI a DVI macho', '24 MANHATAN P.MONI HDMI 3M/10FTDVI391115/372510', '0302105934', '24 Hdmi, 24 DVI, convertidor, hdmi, dvi, adaptador', '147\r'),
('24', '24 HDMI a DVI macho', '24 MANHATAN P.MONIT HDMI MACHO A DVI-D24 391108', '0302105933', '24 Hdmi, 24 DVI, convertidor, hdmi, dvi, adaptador', '147\r'),
('24', '24 USB 2.0 para impresora', '24 MANHATAN USB2.0 PRINTE.AM-BM 6FT/1.8M.333368', '0302110945', '24 USB, impresora, a macho, b macho', '148\r'),
('24', '24 USB 2.0 para impresora', '24 MANHATAN USB2.0 PRINTER AM-BM 10FT/3M 333382', '0302110944', '24 USB, impresora, a macho, b macho', '148\r'),
('24', '24 USB a mini macho', '24 USB MANHATTAN AM-MINI 1.8M TRANS 333412', '00364829', '24 USB, mini, macho', '149\r'),
('24', 'Patch cord Cat 5e varios colores 1.8m, 3m, 5m', 'PATCH CORD INTELINE 3FT CAT.5EAZUL UTP24AWG 318938', '00031893', '24 utp, patch cord, cat 5e, categoria 5e, cat 5, categoria 5, cat5, 24 de red', '150\r'),
('24', 'Patch cord Cat 5e varios colores 1.8m, 3m, 5m', 'PATCH CORD INTELINE CAT.5E 3FT.GRISUTP24AWG318921', '00031892', '24 utp, patch cord, cat 5e, categoria 5e, cat 5, categoria 5, cat5, 24 de red', '150\r'),
('24', 'Patch cord Cat 5e varios colores 1.8m, 3m, 5m', 'PATCH CORD INTELINE CAT.5E 7FT.GRIS 24AWG 8H318976', '00318976', '24 utp, patch cord, cat 5e, categoria 5e, cat 5, categoria 5, cat5, 24 de red', '150\r'),
('24', 'Patch cord Cat 5e varios colores 1.8m, 3m, 5m', 'PATCH CORD INTELINET 3FT CAT.5EROJO UTP24AWG318952', '00031895', '24 utp, patch cord, cat 5e, categoria 5e, cat 5, categoria 5, cat5, 24 de red', '150\r'),
('24', 'Patch cord Cat 5e varios colores 1.8m, 3m, 5m', 'PATCH CORD INTELINET 5E 3FT VERDE UTP24AWG 318945', '00031894', '24 utp, patch cord, cat 5e, categoria 5e, cat 5, categoria 5, cat5, 24 de red', '150\r'),
('24', 'Patch cord Cat 5e varios colores 1.8m, 3m, 5m', 'PATCH CORD INTELINET CAT.5E 10FT.VERD.24AWG319782', '00031978', '24 utp, patch cord, cat 5e, categoria 5e, cat 5, categoria 5, cat5, 24 de red', '150\r'),
('24', 'Patch cord Cat 5e varios colores 1.8m, 3m, 5m', 'PATCH CORD INTELINET CAT.5E 5.M GRIS329446/329750', '0304102436', '24 utp, patch cord, cat 5e, categoria 5e, cat 5, categoria 5, cat5, 24 de red', '150\r'),
('24', 'Patch cord Cat 5e varios colores 1.8m, 3m, 5m', 'PATCH CORD INTELINET CAT.5E 7FT.AZUL24AWG 8H318983', '00318983', '24 utp, patch cord, cat 5e, categoria 5e, cat 5, categoria 5, cat5, 24 de red', '150\r'),
('24', 'Patch cord Cat 5e varios colores 1.8m, 3m, 5m', 'PATCH CORD INTELLINET CAT. 5E 7FT. VERDE 24AWG 8 HILOS 318990', '00318990', '24 utp, patch cord, cat 5e, categoria 5e, cat 5, categoria 5, cat5, 24 de red', '150\r'),
('24', 'Patch cord Cat 6 varios colores 1m, 3m', 'PATCH CORD INTELLINET CAT. 6 1.0M AMARILLO 342346', '0304102440', '24 utp, patch cord, cat 6, categoria 6, cat 6, categoria 6, cat6, 24 de red', '151\r'),
('24', 'Patch cord Cat 6 varios colores 1m, 3m', 'PATCH CORD INTELLINET CAT. 6 1.0M AZUL REF.342575', '0304102442', '24 utp, patch cord, cat 6, categoria 6, cat 6, categoria 6, cat6, 24 de red', '151\r'),
('24', 'Patch cord Cat 6 varios colores 1m, 3m', 'PATCH CORD INTELLINET CAT. 6 1.0M GRIS REF.340373', '0304102431', '24 utp, patch cord, cat 6, categoria 6, cat 6, categoria 6, cat6, 24 de red', '151\r'),
('24', 'Patch cord Cat 6 varios colores 1m, 3m', 'PATCH CORD INTELLINET CAT. 6 1.0M ROJO REF.342148', '0304102439', '24 utp, patch cord, cat 6, categoria 6, cat 6, categoria 6, cat6, 24 de red', '151\r'),
('24', 'Patch cord Cat 6 varios colores 1m, 3m', 'PATCH CORD INTELLINET CAT. 6 1.0M VERDE REF.342476', '0304102433', '24 utp, patch cord, cat 6, categoria 6, cat 6, categoria 6, cat6, 24 de red', '151\r'),
('24', 'Patch cord Cat 6 varios colores 1m, 3m', 'PATCH CORD INTELLINET CAT. 6 3.0M AMARILLO 342377', '0304102441', '24 utp, patch cord, cat 6, categoria 6, cat 6, categoria 6, cat6, 24 de red', '151\r'),
('24', 'Patch cord Cat 6 varios colores 1m, 3m', 'PATCH CORD INTELLINET CAT. 6 3.0M AZUL REF.342605', '0304102443', '24 utp, patch cord, cat 6, categoria 6, cat 6, categoria 6, cat6, 24 de red', '151\r'),
('24', 'Patch cord Cat 6 varios colores 1m, 3m', 'PATCH CORD INTELLINET CAT. 6 3.0M GRIS REF.334129', '0304102445', '24 utp, patch cord, cat 6, categoria 6, cat 6, categoria 6, cat6, 24 de red', '151\r'),
('24', 'Patch cord Cat 6 varios colores 1m, 3m', 'PATCH CORD INTELLINET CAT. 6 3.0M ROJO REF.342179', '0304102429', '24 utp, patch cord, cat 6, categoria 6, cat 6, categoria 6, cat6, 24 de red', '151\r'),
('24', 'Patch cord Cat 6 varios colores 1m, 3m', 'PATCH CORD INTELLINET CAT. 6 3.0M VERDE REF.342506', '0304102428', '24 utp, patch cord, cat 6, categoria 6, cat 6, categoria 6, cat6, 24 de red', '151\r'),
('25', '25 DIGITAL CASIO 14.1MP  QV-R200', '25 DIGITAL CASIO 14.1 MP/ZO 5X P.LCD C/ESTUCHE BLANCA QV-R200WE', '0302112269', 'cßmara digital, casio, 14 mp, 14.1mp, qv-r200, 5x, zoom, pantalla lcd', '152\r'),
('25', '25 DIGITAL CASIO 14.1MP  QV-R201', '25 DIGITAL CASIO 14.1 MP/ZO 5X P.LCD C/ESTUCHE FUCSIA QV-R200PE', '0302112267', 'cßmara digital, casio, 14 mp, 14.1mp, qv-r200, 5x, zoom, pantalla lcd', '152\r'),
('25', '25 DIGITAL CASIO 14.1MP  QV-R202', '25 DIGITAL CASIO 14.1 MP/ZO 5X P.LCD C/ESTUCHE GRIS QV-R200SR', '0302112268', 'cßmara digital, casio, 14 mp, 14.1mp, qv-r200, 5x, zoom, pantalla lcd', '152\r'),
('25', '25 DIGITAL CASIO 14.1MP  QV-R203', '25 DIGITAL CASIO 14.1 MP/ZO 5X P.LCD C/ESTUCHE NEGRA QV-R200BK', '0302112266', 'cßmara digital, casio, 14 mp, 14.1mp, qv-r200, 5x, zoom, pantalla lcd', '152\r'),
('25', '25 DIGITAL CASIO 14.1 MP EX-ZS10', '25 DIGITAL CASIO 14.1 MP/ZO.5X P.LCD C/ESTUCHE NEGRA EX-ZS10BK', '0302112262', 'cßmara digital, casio, 14 mp, 14.1mp, 5x, zoom, exz-s10, pantalla lcd', '153\r'),
('25', '25 DIGITAL CASIO 14.1 MP EX-ZS11', '25 DIGITAL CASIO 14.1 MP/ZO.5X P.LCD C/ESTUCHE ROJA EX-ZS10RD', '0302112263', 'cßmara digital, casio, 14 mp, 14.1mp, 5x, zoom, exz-s10, pantalla lcd', '153\r'),
('25', '25 DIGITAL CASIO 16.1 MP EX-ZS6', '25 DIGITAL CASIO 16.1 MP/ZO 5X P.LCD C/ESTUCHE EX-ZS6BK', '0302112270', 'cßmara digital, casio, 16 mp, 16.1mp, 5x, zoom, exz-s6, pantalla lcd', '154\r'),
('25', '25 DIGITAL CASIO 16.1 MP EX-ZS7', '25 DIGITAL CASIO 16.1 MP/ZO 5X P.LCD C/ESTUCHE GRIS EX-ZS6SR', '0302112273', 'cßmara digital, casio, 16 mp, 16.1mp, 5x, zoom, exz-s6, pantalla lcd', '154\r'),
('25', '25 DIGITAL CASIO 16.1 MP EX-ZS8', '25 DIGITAL CASIO 16.1 MP/ZO 5X P.LCD C/ESTUCHE ROJA EX-ZS6RD', '0302112272', 'cßmara digital, casio, 16 mp, 16.1mp, 5x, zoom, exz-s6, pantalla lcd', '154\r'),
('25', '25 DIGITAL CASIO 16.1 MP EX-ZS9', '25 DIGITAL CASIO 16.1 MP/ZO 5X P.LCD C/ESTUCHE ROSADA EX-ZS6PK', '0302112271', 'cßmara digital, casio, 16 mp, 16.1mp, 5x, zoom, exz-s6, pantalla lcd', '154\r'),
('25', '25 DIGITAL CASIO TOUCH 14.1 MP EX-ZS15', '25 DIGITAL CASIO TOUCH 14.1 MP/ZO 5X P.LCD C/ESTUCH NEGRA EX-ZS15BK', '0302112264', 'cßmara digital, casio, tactil, touch, 14 mp, 14.1mp, 5x, zoom,  pantalla lcd, exz-s15', '155\r'),
('25', '25 DIGITAL CASIO TOUCH 14.1 MP EX-ZS16', '25 DIGITAL CASIO TOUCH 14.1 MP/ZO 5X P.LCD C/ESTUCH ROJA EX-ZS15 RD', '0302112265', 'cßmara digital, casio, tactil, touch, 14 mp, 14.1mp, 5x, zoom,  pantalla lcd, exz-s16', '155\r'),
('25', '25 DIGITAL SONY 14.1 MP DSC-W610', '25 DIGITAL SONY 14.1 MP 4X 2.7¿ DSC-W610/G VERDE EST+MEM 4GB', '0302113296', 'cßmara, cßmara digital, sony, 14 mp, 14.1mp, 4x zoom, dsc-w610', '156\r'),
('25', '25 DIGITAL SONY 14.1 MP DSC-W611', '25 DIGITAL SONY 14.1 MP 4X 2.7¿ DSC-W610/P ROSADA EST+MEM 4GB', '0302113298', 'cßmara, cßmara digital, sony, 14 mp, 14.1mp, 4x zoom, dsc-w611', '156\r'),
('25', '25 DIGITAL SONY 14.1 MP DSC-W612', '25 DIGITAL SONY 14.1 MP 4X 2.7¿DSC-W610/L AZUL EST+MEM 4GB', '0302113297', 'cßmara, cßmara digital, sony, 14 mp, 14.1mp, 4x zoom, dsc-w612', '156\r'),
('25', '25 DIGITAL SONY 14.1 MP DSC-W613', '25 DIGITAL SONY 14.1 MP 4X 2.7¿DSC-W610/S PLATEADA EST+MEM 4GB', '0302113299', 'cßmara, cßmara digital, sony, 14 mp, 14.1mp, 4x zoom, dsc-w613', '156\r'),
('25', '25 DIGITAL SONY 14.1 MP DSC-W620', '25 DIGITAL SONY 14.1 MP 5X 2.7¿DSC-W620/B NEGRA EST+MEM 4GB', '0302113300', 'cßmara, cßmara digital, sony, 14 mp, 14.1mp, 4x zoom, dsc-w620', '157\r'),
('26', 'COMPUTADOR COMPAQ ALL IN ONE CQ1-1407', 'COMPUTADOR COMPAQ ALL IN ONE CQ1-1407LA ATOM D525/500GB/2G/DVD-RW/ WIND7 STAR WEBCAM INC P', '0302113083', 'all in one, desktop, escritorio, compaq, atom, d525, 500gb, 20 plg', '158\r'),
('26', 'COMPUTADOR H.P. ALL IN ONE OMNI 120-1106 ', 'COMPUTADOR H.P. ALL IN ONE OMNI 120-1106 AMD 1.65/2GB/500GB PANT 20 PLG WIND7', '0302113084', 'all in one, desktop, escritorio, HP, H.P., amd, 120-1106, 500gb, 20 plg', '159\r'),
('26', 'COMPUTADOR H.P. MINI 110-3830LA ', 'COMPUTADOR H.P. MINI 110-3830LA ATOM DUAL CORE N570/2GB/320GB/WIN7 STARTER', '0302112257', 'laptop, netbook, HP, H.P., mini, 110-3830LA, dual core, N570, portßtil', '160\r'),
('26', '"NETBOOK ACER AOD 270-1678 10.1"""', 'COMPUTADOR NETBOOK ACER AOD 270-1678 INTEL ATOM 1.6/2GB/500GB 10.1PLG TURQ', '0302113078', '"laptop, netbook, ACER, intel, 10.1"", 270-1678, portßtil"', '161\r'),
('26', '"NETBOOK H.P. 110-3519LA 10"" LED"', 'COMPUTADOR NETBOOK H.P. 110-3519LA WIN7 1.66GHZ/1GB/250GB/10 LED', '0302109367', '"laptop. Netbook, 10"", lED, 110-3519la, HP, H.P., portßtil"', '162\r'),
('26', '"NETBOOK H.P. PAVILION DM1-4150LA 11.6"""', 'COMPUTADOR NETBOOK H.P. PAVILION DM1-4150LA AMD DUAL CORE 1.3/2GB/500GB 11.6PLG WIND7', '0302113064', '"laptop, netbook, 11.6"", HP, H.P., Paviliom, DM1-4150LA, dual core, port?til"', '163\r'),
('26', 'NOTEBOOK COMPAQ CQ43-408LA AMD ', 'COMPUTADOR NOTEBOOK COMPAQ CQ43-408LA AMD DC 1.3/4GB/500GB WIND7', '0302113082', 'laptop, notebook, compaq, amd, cq43-408la, portßtil', '164\r'),
('26', '"NOTEBOOK HP G4-2162 CI3 14"""', 'COMPUTADOR NOTEBOOK H.P. HP G4-2162 CI3 4GB/500GB DVD 14.0PLG', '0302113086', '"laptop, notebook, HP, core i3, corei3, 14"", g4-2162, computador"', '165\r'),
('26', 'COMPUTADOR XTRATECH DESKTOP H61MXL-K INTEL CI5', 'COMPUTADOR XTRATECH DESKTOP H61MXL-K INTEL CI5 3.1GHZ 4GB DD1TB DVDW WIND7 STAR TEC MOU PA', '0302113301', 'computador, desktop, computador de escritorio, xtratech, h61mxl-k, ci5, core i5, corei5', '166\r'),
('26', 'COMPUTADOR XTRATECH DESKTOP H61MXL-K INTEL G630', 'COMPUTADOR XTRATECH DESKTOP H61MXL-K INTEL G630 2.7GHZ 4GB 500GB DVD W WIN7STAR T/M/P', '0302113270', 'computador, desktop, computador de escritorio, xtratech, h61mxl-k, intel', '167\r'),
('27', 'IMPRESORA CANON INK JET MULTIFUNCION WIRELESS MG3110', 'IMPRESORA CANON INK JET MULTIFUNCION 3 EN 1 IMP/COPIA/ESC WIRELESS WIFI MG3110', '0302113358', 'impresora, multifunci¾n, copia, scaner, escaner, wireless, wifi, canon, mg3110, inkjet, inyeccion a tinta', '168\r'),
('27', 'IMPRESORA H.P. MULTIFUNCION 3 EN 1 3525', 'IMPRESORA H.P. MULTIFUNCION 3 EN 1 ALL IN ONE USB 3525', '0302113181', 'impresora, multifunci¾n, copia, scaner, escaner, USB, HP, H.P., 3525, inkjet, inyecci¾n a tinta', '169\r'),
('27', 'IMPRESORA H.P. MULTIFUNCION 3 EN 1 2515', 'IMPRESORA H.P. MULTIFUNCION INK JET 3 EN 1 USB 2515', '0302113178', 'impresora, multifunci¾n, copia, scaner, escaner, USB, HP, H.P., 2515, inkjet, inyecci¾n a tinta', '170\r'),
('27', 'IMPRESORA SAMSUNG LASER COLOR CLP-365W', 'IMPRESORA SAMSUNG LASER COLOR CLP-365W', '0302113443', 'impresora laser, samsung, laser color, laser, color, clp-365w', '171\r'),
('27', 'IMPRESORA SAMSUNG LASER MONOCROMATICA ML-2165', 'IMPRESORA SAMSUNG LASER MONOCROMATICA 20PPM ML-2165', '0302112536', 'impresora laser, samsung, laser monocromatica, laser, blanco y negro, ML-2165', '172\r'),
('30', '"MONITOR L.G. LED 18.5"" E1942CBN"', 'MONITOR L.G. LED 18.5 PLG E1942CBN', '0302112258', '"monitor, pantalla, led, LG, L.G.,  E1942CBN, 18"", 18.5"", 18plg, 18.5 plg, 18 pulgadas, 18.5 pulgadas"', '173\r'),
('28', '28 SAMSUNG GALAXY GT-P3100  7¿', '28 SAMSUNG GALAXY GT-P3100  3G  7¿ 8GB WIFI BT', '0302113267', '"28, galaxy tab, galaxy, GT-P3100, 3G, 7"", 7 plg, 7 pulgadas, 8GB, wi-fi, wifi, bluetooth"', '174\r'),
('23', 'AUDIFONO PANASONIC RP-HT260PP-K', 'AUDIFONO PANASONIC RP-HT260PP-K', '0302114166', 'Audifono, audifono grande, skullcandy, beats, tipo DJ, Panasonic', '175\r'),
('23', 'AUDIFONO SONY MDRZX300WQU', 'AUDIFONO SONY BLANCO MDRZX300WQU SO58MDRZX300WQU', '0302114365', 'Audifono, audifono grande, skullcandy, beats, tipo DJ, Sony', '176\r'),
('23', 'AUDIFONO SONY MDRZX300WQU', 'AUDIFONO SONY NEGRO MDRZX300BQU SO58MDRZX300BQU', '0302114363', 'Audifono, audifono grande, skullcandy, beats, tipo DJ, Sony', '176\r'),
('23', 'AUDIFONO SONY MDRZX300WQU', 'AUDIFONO SONY ROJO MDRZX300RQU SO58MDRZX300RQU', '0302114364', 'Audifono, audifono grande, skullcandy, beats, tipo DJ, Sony', '176\r'),
('23', 'AUDIFONO SONY MDRXB200VQU SO58MDRXB200VQU', 'AUDIFONO SONY MORADO MDRXB200VQU SO58MDRXB200VQU', '0302114370', 'Audifono, audifono grande, skullcandy, beats, tipo DJ, Sony', '177\r'),
('23', 'AUDIFONO SONY MDRXB200VQU SO58MDRXB200VQU', 'AUDIFONO SONY NARANJA MDRXB200DQU SO58MDRXB200DQU', '0302114366', 'Audifono, audifono grande, skullcandy, beats, tipo DJ, Sony', '177\r'),
('23', 'AUDIFONO SONY MDRXB200VQU SO58MDRXB200VQU', 'AUDIFONO SONY ROSADO MDRXB200PQU SO58MDRXB200PQU', '0302114369', 'Audifono, audifono grande, skullcandy, beats, tipo DJ, Sony', '177\r'),
('23', 'AUDIFONO SONY MDRXB200VQU SO58MDRXB200VQU', 'AUDIFONO SONY TURQUESA MDRXB200LQU SO58MDRXB200LQ', '0302114368', 'Audifono, audifono grande, skullcandy, beats, tipo DJ, Sony', '177\r'),
('23', 'AUDIFONO SONY MDRXB200VQU SO58MDRXB200VQU', 'AUDIFONO SONY VERDE MDRXB200GQU SO58MDRXB200GQU', '0302114367', 'Audifono, audifono grande, skullcandy, beats, tipo DJ, Sony', '177\r'),
('23', 'BANCO DE BATERIA PORTATIL P.IPHONE/ IPOD/SAMSUNG/HTC/BB/25', 'CARGADOR AVANTREE BANCO PORTATIL P.IPHONE/ IPOD/SAMSUNG/HTC/BB/CAMERA/PSP SPPW-220-SLR', '0301114441', 'banco de bateria, bateria de respaldo, bateria portatil, ipod, iphone, samsung, 25s, blackberry, htc', '178\r'),
('23', 'CARGADOR DOBLE P.AUTO USB/IPHONE/SAMSUNG/DATOS/CORRIENTE CGST-09', 'CARGADOR AVANTREE DOBLE P.AUTO USB/IPHONE/SAMSUNG/DATOS/CORRIENTE CGST-09', '0301114438', 'cargador para carro, cargador para auto, cargadador de celular para carro, cargador dual, cargador con 2 puertos usb, cargador con dos entradas, iphone, ipod, samsung, corriente', '178\r'),
('23', 'KIT CARGADOR PARA IPHONE 4S', 'CARGADOR P.IPHONE 4S KIT 3 EN 1', '0301114448', 'cargador, cargador para carro, cargador para auto, iphone 4s, iphone', '178\r'),
('23', 'KIT CARGADOR PARA IPHONE 5S', 'CARGADOR P.IPHONE 5S KIT 3 EN 1', '0301114449', 'cargador, cargador para carro, cargador para auto, iphone 5s, iphone', '178\r'),
('23', 'KIT CARGADOR PARA GALAXY TAB', 'CARGADOR P.28 SAMSUNG KIT 3 EN 1', '0301114450', 'cargador, cargador para carro, cargador para auto, GALAXY TAB, GALAXY, 28', '178\r'),
('23', 'ESTUCHE PARA GALAXY NOTE ', 'ESTUCHE P.GALAXY NOTE V/COLORES', '0302114459', 'estuche, protector, forro, galaxy note', '178\r'),
('23', '"ESTUCHE PARA 28 DE 10.1"""', 'ESTUCHE P.28 10.1 NEGRO S/MARCA', '0302114457', '"estuche, 28, forro, galaxy tab, galaxy, 10.1"""', '179\r'),
('23', '"ESTUCHE PARA 28 DE 10.1"""', 'ESTUCHE P.28 CERRADO P.28 10.1NEGRO C/MARCA 4A', '0302114455', '"estuche, 28, forro, galaxy tab, galaxy, 10.1"""', '179\r'),
('23', '"ESTUCHE PARA 28 DE 10.1"""', 'ESTUCHE P.28 CON TECLADO 10.1', '0302114462', '"estuche, 28, forro, galaxy tab, galaxy, 10.1"""', '179\r'),
('23', '"ESTUCHE PARA 28 DE 10.1"""', 'ESTUCHE P.28 CERRADO 10.1 V/COLORES C/MARCA', '0302114456', '"estuche, 28, forro, galaxy tab, galaxy, 10.1"""', '179\r'),
('23', '"ESTUCHE PARA 28 DE 10.1"""', 'ESTUCHE P.28 CERRADO 10.1V/COLORES SIN MARCA', '0302114458', '"estuche, 28, forro, galaxy tab, galaxy, 10.1"""', '179\r'),
('23', '"ESTUCHE CON TECLADO PARA 28 DE 7"""', 'ESTUCHE PROTECTOR P.28 7 C/TECLADO USB', '0302114306', '"estuche, 28, forro, galaxy tab, galaxy, 7"", estuche con teclado"', '180\r'),
('27', 'IMPRESORA EPSON MULTIFUNCION DE TINTA CONTINUA L210', 'IMPRESORA EPSON INK JET MULTIFUNCION 3 EN 1 IMP/COPIA/SCA REF.L210', '0302114208', 'impresora de tinta continua, tinta continua, sistema de tinta continua, impresora, copiadora, scaner', '181\r'),
('27', 'IMPRESORA EPSON MULTIFUNCION DE TINTA CONTINUA L355 CON WIFI', 'IMPRESORA EPSON INK JET MULTIFUNCION 3 EN 1 IMP/COPIA/SCA WI FI REF.L355', '0302114209', 'impresora de tinta continua, tinta continua, sistema de tinta continua, impresora, copiadora, scaner, wifi, wi-fi, inalambrica', '182\r'),
('23', 'LAMINAS PROTECTORAS DE PANTALLA', 'LAMINA PROTECTORA DE PANTALLA MIKA P.GALAXY 1-2  10.1', '0302113737', 'LAMINA, PROTECTOR DE PANTALLA, MICA, MIKA', '183\r'),
('23', 'LAMINAS PROTECTORAS DE PANTALLA', 'LAMINA PROTECTORA DE PANTALLA MIKA P.GALAXY 1-2  7.2', '0302113736', 'LAMINA, PROTECTOR DE PANTALLA, MICA, MIKA', '183\r'),
('23', 'LAMINAS PROTECTORAS DE PANTALLA', 'LAMINA PROTECTORA DE PANTALLA MIKA P.IPAD 1/2/3', '0302113735', 'LAMINA, PROTECTOR DE PANTALLA, MICA, MIKA', '183\r'),
('23', 'LAMINAS PROTECTORAS DE PANTALLA', 'LAMINA PROTECTORA DE PANTALLA MIKA P.LAPTOP 10.1', '0302113738', 'LAMINA, PROTECTOR DE PANTALLA, MICA, MIKA', '183\r'),
('23', 'LAMINAS PROTECTORAS DE PANTALLA', 'LAMINA PROTECTORA DE PANTALLA MIKA P.LAPTOP 14', '0302113739', 'LAMINA, PROTECTOR DE PANTALLA, MICA, MIKA', '183\r'),
('23', 'LAMINAS PROTECTORAS DE PANTALLA', 'LAMINA PROTECTORA DE PANTALLA MIKA P.LAPTOP 15.1', '0302113740', 'LAMINA, PROTECTOR DE PANTALLA, MICA, MIKA', '183\r'),
('23', 'LAMINAS PROTECTORAS DE PANTALLA', 'LAMINA PROTECTORA DE PANTALLA MIKA P.28 10 TAPA DELANTERA', '0302113734', 'LAMINA, PROTECTOR DE PANTALLA, MICA, MIKA', '183\r'),
('23', 'LAMINAS PROTECTORAS DE PANTALLA', 'LAMINA PROTECTORA DE PANTALLA MIKA P.28 7 TAPA DELANTERA', '0302113733', 'LAMINA, PROTECTOR DE PANTALLA, MICA, MIKA', '183\r'),
('23', 'LAMINAS PROTECTORAS DE PANTALLA', 'LAMINA PROTECTORA DE PANTALLA P.SAMSUNG 10.1 P5100', '0302114452', 'LAMINA, PROTECTOR DE PANTALLA, MICA, MIKA', '183\r'),
('23', 'LAMINAS PROTECTORAS DE PANTALLA', 'LAMINA PROTECTORA DE PANTALLA P.SAMSUNG 7 P3100', '0302114451', 'LAMINA, PROTECTOR DE PANTALLA, MICA, MIKA', '183\r'),
('23', 'LAPIZ OPTICO PARA 28S Y TEL?FONOS T?CTILES', 'LAPIZ OPTICO TOUCH V/COLORES BK-364', '0302114463', 'lapiz optico, lapiz, lapiz touch, 28, smartphone', '184\r'),
('23', 'PARLANTE PORT?TIL GENIUS ', 'PARLANTE GENIUS SP-I165 NEGRO', '0302114289', 'parlante, portatil, bocina, smartphone, 28, mp3, mp4', '185\r'),
('23', 'PARLANTE PORT?TIL GENIUS ', 'PARLANTE GENIUS SP-I165 ROJO', '0302114288', 'parlante, portatil, bocina, smartphone, 28, mp3, mp5', '185\r'),
('23', 'PARLANTE PORT?TIL GENIUS ', 'PARLANTE GENIUS SP-U110', '0302114293', 'parlante, portatil, bocina, smartphone, 28, mp3, mp6', '185\r'),
('23', 'PENDRIVE VARIAS MARCAS, CAPACIDADES Y DISEÐOS', 'PEN DRIVE KINGSTON 8 GB DTSE9H METAL GRIS', '0302113716', 'pendrive, pen drive, flas, memory, memoria', '186\r'),
('23', 'PENDRIVE VARIAS MARCAS, CAPACIDADES Y DISEÐOS', 'PEN DRIVE SANDISK 32 GB SDCZ50-32G-B35 CRUZER BLADE USB', '0302113474', 'pendrive, pen drive, flas, memory, memoria', '186\r'),
('23', 'PENDRIVE VARIAS MARCAS, CAPACIDADES Y DISEÐOS', 'PEN DRIVE SANDISK 8 GB SDCZ53B-8G-B35 CRUZER POP  ROJO TRIBAL', '0302114244', 'pendrive, pen drive, flas, memory, memoria', '186\r'),
('28', '28 AOC MW0712  1GB WIFI  7 PLG  8GB ', '28 AOC MW0712  1GB WIFI  7 PLG  8GB AND 4.0  C/EST.', '0302114361', '"28, 28 7"", 28 7, aoc"', '187\r'),
('28', '"28 SAMSUNG GALAXY GT-P5100 3G 10.1"""', '28 SAMSUNG GALAXY GT-P5100 3G 10.1PLG 16GB EXP. 32GBWIFI BTá', '0302113961', '"28, samsung, galaxy tab, 3g, 10.1"", GT-P5100"', '188\r'),
('28', '"28 VIEWSONIC 10"" V10E"', '28 VIEWSONIC 10 PLG 4GB V10E', '0302114207', '"28, viewsonic, 10.1"", 10"", V10E"', '189\r'),
('23', 'ADAPTADOR GALAXY TAB OTG CONECTOR SD USB', 'ADAPTADOR GALAXY TAB OTG CONECTOR SD USB', '0302114713', 'adaptador, galaxy tab, galaxy, usb otg, otg, sd, usb', '190\r');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategoria`
--

CREATE TABLE IF NOT EXISTS `subcategoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoria_id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imagen` longtext COLLATE utf8_unicode_ci,
  `descripcion` longtext COLLATE utf8_unicode_ci,
  `estado` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C24E62EC3397707A` (`categoria_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=31 ;

--
-- Volcado de datos para la tabla `subcategoria`
--

INSERT INTO `subcategoria` (`id`, `categoria_id`, `nombre`, `imagen`, `descripcion`, `estado`, `created`, `updated`) VALUES
(1, 1, 'IMPRESION', NULL, NULL, NULL, NULL, NULL),
(2, 1, 'EMBALAJE', NULL, NULL, NULL, NULL, NULL),
(3, 1, 'MANUALIDADES', NULL, NULL, NULL, NULL, NULL),
(4, 2, 'UTILES ESCOLARES', NULL, NULL, NULL, NULL, NULL),
(5, 3, 'ACUARELA', NULL, NULL, NULL, NULL, NULL),
(6, 2, 'EDUCACIËN ARTISTICA', NULL, NULL, NULL, NULL, NULL),
(7, 2, 'DID┴CTICOS', NULL, NULL, NULL, NULL, NULL),
(8, 1, 'ESCOLAR', NULL, NULL, NULL, NULL, NULL),
(9, 4, 'BALSA', NULL, NULL, NULL, NULL, NULL),
(10, 5, 'ARCHIVO', NULL, NULL, NULL, NULL, NULL),
(11, 5, 'EQUIPOS DE OFICINA', NULL, NULL, NULL, NULL, NULL),
(12, 5, 'ESCRITORIO', NULL, NULL, NULL, NULL, NULL),
(13, 5, 'PIZARRAS', NULL, NULL, NULL, NULL, NULL),
(14, 3, 'ACR═LICO', NULL, NULL, NULL, NULL, NULL),
(15, 1, 'AEROGRAFO', NULL, NULL, NULL, NULL, NULL),
(16, 1, 'ESCULTURA Y MODELADO', NULL, NULL, NULL, NULL, NULL),
(17, 1, 'BLOCK ARTE', NULL, NULL, NULL, NULL, NULL),
(18, 3, 'CABALLETE', NULL, NULL, NULL, NULL, NULL),
(19, 3, 'DIBUJO', NULL, NULL, NULL, NULL, NULL),
(20, 3, 'OLEO', NULL, NULL, NULL, NULL, NULL),
(21, 3, 'PALETA', NULL, NULL, NULL, NULL, NULL),
(22, 4, 'CAJAS DE BALSA', NULL, NULL, NULL, NULL, NULL),
(23, 6, 'ACCESORIOS', NULL, NULL, NULL, NULL, NULL),
(24, 6, 'CABLE', NULL, NULL, NULL, NULL, NULL),
(25, 6, 'CAMARA', NULL, NULL, NULL, NULL, NULL),
(26, 6, 'COMPUTADORAS', NULL, NULL, NULL, NULL, NULL),
(27, 6, 'IMPRESORAS', NULL, NULL, NULL, NULL, NULL),
(28, 6, 'TABLET', NULL, NULL, NULL, NULL, NULL),
(29, 6, 'ADAPTADORES', NULL, NULL, NULL, NULL, NULL),
(30, 6, 'MONITORES', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tienda`
--

CREATE TABLE IF NOT EXISTS `tienda` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `direccion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefono` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `atencion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `latitud` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longuitud` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajaconnosotros`
--

CREATE TABLE IF NOT EXISTS `trabajaconnosotros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cedula` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `apellidos` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nombres` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nacimiento` datetime NOT NULL,
  `genero` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `nacionalidad` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `direccion` longtext COLLATE utf8_unicode_ci NOT NULL,
  `celular` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `fijo` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `areaAplica` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `nivelAplica` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `estadoCivil` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `contactoEmergencia` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `telelfonoEmergencia` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apellido` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `genero` int(11) DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usuario` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videos`
--

CREATE TABLE IF NOT EXISTS `videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `multimedia_id` int(11) NOT NULL,
  `titulo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` longtext COLLATE utf8_unicode_ci,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_2E06610420531EB8` (`multimedia_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `FK_996D34C92B256D28` FOREIGN KEY (`detalle_pago_id`) REFERENCES `detallepago` (`id`),
  ADD CONSTRAINT `FK_996D34C94DF9B3AD` FOREIGN KEY (`detalle_envio_id`) REFERENCES `detalleenvio` (`id`),
  ADD CONSTRAINT `FK_996D34C9DB38439E` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `entrevista`
--
ALTER TABLE `entrevista`
  ADD CONSTRAINT `FK_1381A8F65D430949` FOREIGN KEY (`personal_id`) REFERENCES `personal` (`id`);

--
-- Filtros para la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD CONSTRAINT `FK_CE1C025720531EB8` FOREIGN KEY (`multimedia_id`) REFERENCES `multimedia` (`id`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `FK_5ECD644388D3B71A` FOREIGN KEY (`subcategoria_id`) REFERENCES `subcategoria` (`id`);

--
-- Filtros para la tabla `productoimagen`
--
ALTER TABLE `productoimagen`
  ADD CONSTRAINT `FK_83CE4BAB7645698E` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`);

--
-- Filtros para la tabla `subcategoria`
--
ALTER TABLE `subcategoria`
  ADD CONSTRAINT `FK_C24E62EC3397707A` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`);

--
-- Filtros para la tabla `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `FK_2E06610420531EB8` FOREIGN KEY (`multimedia_id`) REFERENCES `multimedia` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
