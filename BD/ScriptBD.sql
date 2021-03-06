-- phpMyAdmin SQL Dump
-- version 2.11.9.6
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generaci�n: 21-09-2018 a las 15:18:13
-- Versi�n del servidor: 5.1.73
-- Versi�n de PHP: 5.6.22

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Base de datos: `reciclapp`
--
CREATE DATABASE `reciclapp` DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci;
USE `reciclapp`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleparametro`
--

CREATE TABLE IF NOT EXISTS `detalleparametro` (
  `iddetalleparametro` smallint(6) NOT NULL,
  `idparametro` smallint(6) NOT NULL,
  `nombre` varchar(80) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`iddetalleparametro`),
  KEY `idparametro` (`idparametro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Volcar la base de datos para la tabla `detalleparametro`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metas`
--

CREATE TABLE IF NOT EXISTS `metas` (
  `idmeta` smallint(6) NOT NULL,
  `iddetalleparametro` smallint(6) NOT NULL,
  `idusuario` smallint(6) NOT NULL,
  `fechaexpiracion` datetime NOT NULL,
  `cantidad` smallint(6) NOT NULL,
  PRIMARY KEY (`idmeta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Volcar la base de datos para la tabla `metas`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parametro`
--

CREATE TABLE IF NOT EXISTS `parametro` (
  `idparametro` smallint(6) NOT NULL,
  `nombre` varchar(80) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`idparametro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Volcar la base de datos para la tabla `parametro`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puntoecologico`
--

CREATE TABLE IF NOT EXISTS `puntoecologico` (
  `idpuntoecologico` smallint(6) NOT NULL,
  `ubicacion` varchar(120) COLLATE latin1_general_ci NOT NULL,
  `nombre` varchar(120) COLLATE latin1_general_ci NOT NULL,
  `responsable` varchar(120) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`idpuntoecologico`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Volcar la base de datos para la tabla `puntoecologico`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puntuacion`
--

CREATE TABLE IF NOT EXISTS `puntuacion` (
  `idpuntuacion` smallint(6) NOT NULL,
  `idusuario` smallint(6) NOT NULL,
  `iddetalleparametro` smallint(6) NOT NULL,
  `idreto` smallint(6) NOT NULL,
  `idredencion` smallint(6) NOT NULL,
  `idpuntorecoleccion` smallint(6) NOT NULL,
  `fechareporte` datetime NOT NULL,
  `cantidad` smallint(6) NOT NULL,
  `estado` varchar(3) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`idpuntuacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Volcar la base de datos para la tabla `puntuacion`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `redcompartidas`
--

CREATE TABLE IF NOT EXISTS `redcompartidas` (
  `idredcompartida` smallint(6) NOT NULL,
  `idusuario` smallint(6) NOT NULL,
  `idredencion` smallint(6) NOT NULL,
  PRIMARY KEY (`idredcompartida`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Volcar la base de datos para la tabla `redcompartidas`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `redencion`
--

CREATE TABLE IF NOT EXISTS `redencion` (
  `idredencion` smallint(6) NOT NULL,
  `idusuario` smallint(6) NOT NULL,
  `idpremio` smallint(6) NOT NULL,
  `fecharedencion` datetime NOT NULL,
  `cantidadpremio` smallint(6) NOT NULL,
  PRIMARY KEY (`idredencion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Volcar la base de datos para la tabla `redencion`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reto`
--

CREATE TABLE IF NOT EXISTS `reto` (
  `idreto` smallint(6) NOT NULL,
  `idusuarioorigina` smallint(6) NOT NULL,
  `nombre` varchar(120) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`idreto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Volcar la base de datos para la tabla `reto`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `retousuario`
--

CREATE TABLE IF NOT EXISTS `retousuario` (
  `idretousuario` smallint(6) NOT NULL,
  `idreto` smallint(6) NOT NULL,
  `idusuario` smallint(6) NOT NULL,
  `nombre` varchar(120) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`idretousuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Volcar la base de datos para la tabla `retousuario`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `idusuario` smallint(6) NOT NULL,
  `nombre` varchar(80) COLLATE latin1_general_ci NOT NULL,
  `apellido` varchar(80) COLLATE latin1_general_ci NOT NULL,
  `celular` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `mail` varchar(80) COLLATE latin1_general_ci NOT NULL,
  `localidad` varchar(60) COLLATE latin1_general_ci NOT NULL,
  `direccion` varchar(120) COLLATE latin1_general_ci NOT NULL,
  `barrio` varchar(60) COLLATE latin1_general_ci NOT NULL,
  `edificio` varchar(60) COLLATE latin1_general_ci NOT NULL,
  `genero` varchar(2) COLLATE latin1_general_ci NOT NULL,
  `fechanacimiento` date NOT NULL,
  `clienteeaab` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `jac` varchar(60) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`idusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Volcar la base de datos para la tabla `usuario`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE IF NOT EXISTS `ventas` (
  `idventas` smallint(6) NOT NULL,
  `idpuntoecologico` smallint(6) NOT NULL,
  `iddetalleparametro` smallint(6) NOT NULL,
  `fechaventa` datetime NOT NULL,
  `cantidad` int(11) NOT NULL,
  `valor` int(11) NOT NULL,
  `donacion` varchar(2) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`idventas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Volcar la base de datos para la tabla `ventas`
--

