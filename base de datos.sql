-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 01-07-2019 a las 11:55:18
-- Versión del servidor: 5.6.44-cll-lve
-- Versión de PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


-- Base de datos: `xhanorg_coparmex`
--
DROP DATABASE IF EXISTS `xhanorg_coparmex`;
CREATE DATABASE IF NOT EXISTS `xhanorg_coparmex` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `xhanorg_coparmex`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

DROP TABLE IF EXISTS `categorias`;
CREATE TABLE IF NOT EXISTS `categorias` (
  `idSeccion` int(11) NOT NULL AUTO_INCREMENT,
  `tCodPadre` varchar(50) NOT NULL,
  `tCodSeccion` varchar(50) NOT NULL,
  `icono` varchar(50) NOT NULL,
  PRIMARY KEY (`idSeccion`)
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=latin1;

--
-- Truncar tablas antes de insertar `categorias`
--

TRUNCATE TABLE `categorias`;
--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`idSeccion`, `tCodPadre`, `tCodSeccion`, `icono`) VALUES
(1, 'ABARROTES', 'Abarrotes ', 'Abarrotes'),
(2, 'ABARROTES', 'Mini Super ', 'Abarrotes'),
(3, 'ALIMENTOS', 'Bar ', 'bar'),
(4, 'ALIMENTOS', 'Cafeteria ', 'Licores'),
(5, 'ALIMENTOS', 'Cantina ', 'Bar'),
(6, 'ALIMENTOS', 'Carnes ', 'Carnes'),
(7, 'ALIMENTOS', 'Carniceria ', 'Carnes'),
(8, 'ALIMENTOS', 'Comida ', 'alimentos'),
(9, 'ALIMENTOS', 'Cremeria ', 'Alimentos'),
(10, 'ALIMENTOS', 'Dulceria ', 'dulces'),
(11, 'ALIMENTOS', 'Dulces ', 'dulces'),
(12, 'ALIMENTOS', 'Fonda ', 'Restaurante'),
(13, 'ALIMENTOS', 'Frutas ', 'alimentos'),
(14, 'ALIMENTOS', 'Hamburguesas ', 'Hamburguesa'),
(15, 'ALIMENTOS', 'Heladeria ', 'paleteria'),
(16, 'ALIMENTOS', 'Mariscos ', 'Mariscos'),
(17, 'ALIMENTOS', 'Marisqueria ', 'Mariscos'),
(18, 'ALIMENTOS', 'Paleteria ', 'paleteria'),
(19, 'ALIMENTOS', 'Panaderia ', 'panadero'),
(20, 'ALIMENTOS', 'Pasteleria ', 'Pastel'),
(21, 'ALIMENTOS', 'Pizzeria ', 'Pizza'),
(22, 'ALIMENTOS', 'Polleria ', 'pollo'),
(23, 'ALIMENTOS', 'Pollos rostizados ', 'rostizado'),
(24, 'ALIMENTOS', 'Produc Gourmet', 'alimentos'),
(25, 'ALIMENTOS', 'Reposteria ', 'Pastel'),
(26, 'ALIMENTOS', 'Restaurante', 'restaurante'),
(27, 'ALIMENTOS', 'Restaurante Bar ', 'restaurante'),
(28, 'ALIMENTOS', 'Taqueria ', 'Taco'),
(29, 'ALIMENTOS', 'Tortas ', 'Tortas'),
(30, 'ALIMENTOS', 'Tortilleria ', 'Tortillas'),
(31, 'ANIMALES', 'Animales ', 'animales'),
(32, 'BEBIDAS', 'Licores ', 'licores'),
(33, 'BEBIDAS', 'Vinos y licores', 'licores'),
(34, 'BELLEZA', 'Estetica', 'estetica'),
(35, 'BELLEZA', 'Estetica infantil ', 'estetica'),
(36, 'BELLEZA', 'Peluqueria ', 'estetica'),
(37, 'BELLEZA', 'Spa', 'spa'),
(38, 'BELLEZA', 'Uñas ', 'unas'),
(39, 'DESCANSO', 'Colchas y blancos ', 'Blancos'),
(40, 'DESCANSO', 'Colchones ', 'colchon'),
(41, 'EDUCACION', 'Escuela ', 'escuela'),
(42, 'EDUCACION', 'Escuela ingles ', 'escuela'),
(43, 'HOGAR', 'Marcos ', 'marcos'),
(44, 'HOGAR', 'Muebles ', 'muebles'),
(45, 'HOGAR', 'Tapiceria ', 'tapiz'),
(46, 'HOGAR', 'Venta cocinas ', 'Cocina'),
(47, 'INMUEBLES', 'Inmobiliaria ', 'Inmueble'),
(48, 'LIMPIEZA', 'Produc Limpieza', 'Limpieza'),
(49, 'LIMPIEZA', 'Tintoreria ', 'Tintoreria'),
(50, 'OCIO', 'Danza ', 'danza'),
(51, 'OCIO', 'Manualidades ', 'manualidad'),
(52, 'OCIO', 'Salon de fiesta ', 'Fiesta'),
(53, 'OCIO', 'Salon de Fiestas ', 'Fiesta'),
(54, 'OCIO', 'Salon Infantil ', 'Fiesta'),
(55, 'OTROS', 'Alumbrado ', 'luz'),
(56, 'OTROS', 'Bazar antigueda', 'Bazar'),
(57, 'OTROS', 'Botique ', 'Bazar'),
(58, 'OTROS', 'Compra de libros', 'Libros'),
(59, 'OTROS', 'Empeños ', 'Empeno'),
(60, 'OTROS', 'Finanzas ', 'Dinero'),
(61, 'OTROS', 'Librería ', 'libros'),
(62, 'OTROS', 'Merceria ', 'Bazar'),
(63, 'OTROS', 'Productos arabes ', 'Bazar'),
(64, 'SALUD', 'Auditivo ', 'Audio'),
(65, 'SALUD', 'Consultorio ', 'Doctor'),
(66, 'SALUD', 'Dentista ', 'Dentista'),
(67, 'SALUD', 'Farmacia ', 'Farmacia'),
(68, 'SALUD', 'Homeopatia ', 'farmacia'),
(69, 'SALUD', 'Laboratorios ', 'Laboratorio'),
(70, 'SALUD', 'Naturista ', 'farmacia'),
(71, 'SALUD', 'Optica ', 'Optica'),
(72, 'SALUD', 'Reduccion peso ', 'bascula'),
(73, 'SERVICIOS', 'Agen-Viajes', 'viaje'),
(74, 'SERVICIOS', 'Auto lavado', 'lavado'),
(75, 'SERVICIOS', 'Casa empeño ', 'empeno'),
(76, 'SERVICIOS', 'Cerrajeria ', 'Herraje'),
(77, 'SERVICIOS', 'Copias ', 'Impresora'),
(78, 'SERVICIOS', 'Equipos alberca ', 'alberca'),
(79, 'SERVICIOS', 'Floreria ', 'flores'),
(80, 'SERVICIOS', 'Fotografia ', 'Foto'),
(81, 'SERVICIOS', 'Fotos ', 'Foto'),
(82, 'SERVICIOS', 'Impresiones ', 'impresora'),
(83, 'SERVICIOS', 'Internet ', 'Internet'),
(84, 'SERVICIOS', 'Lavanderia ', 'lavanderia'),
(85, 'SERVICIOS', 'Mensajeria ', 'Mensajeria'),
(86, 'SERVICIOS', 'Papeleria ', 'papeleria'),
(87, 'SERVICIOS', 'Paqueteria ', 'paqueteria'),
(88, 'SERVICIOS', 'Pinturas', 'pintura'),
(89, 'SERVICIOS', 'Planchaduria ', 'Plancha'),
(90, 'SERVICIOS', 'Plomeria ', 'plomero'),
(91, 'SERVICIOS', 'Purificadora ', 'Agua'),
(92, 'SERVICIOS', 'Repara-calzado ', 'zapatos'),
(93, 'SERVICIOS', 'Repara-Computo', 'Computadora'),
(94, 'SERVICIOS', 'Reparacion piel', 'Chamarra'),
(95, 'SERVICIOS', 'Sastreria', 'Sastre'),
(96, 'SERVICIOS', 'Seguridad ', 'seguridad'),
(97, 'SERVICIOS', 'Servicio APPLE ', 'apple'),
(98, 'SERVICIOS', 'Tlapareria ', 'Tlapaleria'),
(99, 'SERVICIOS', 'Velatorios ', 'Funeral'),
(100, 'SERVICIOS', 'Venta de pipas ', 'pipa'),
(101, 'SERVICIOS', 'Veterinaria ', 'animales'),
(102, 'VEHICULOS', 'Autos ', 'Autos'),
(103, 'VEHICULOS', 'Coches ', 'autos'),
(104, 'VEHICULOS', 'Venta Autos ', 'autos'),
(105, 'VEHICULOS', 'Venta motos ', 'motos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CatNegocios`
--

DROP TABLE IF EXISTS `CatNegocios`;
CREATE TABLE IF NOT EXISTS `CatNegocios` (
  `eCodNegocio` int(11) NOT NULL AUTO_INCREMENT,
  `tNombre` varchar(100) NOT NULL,
  `tCodPadre` varchar(15) NOT NULL,
  `tCodSeccion` varchar(20) NOT NULL,
  `tDomicilio` varchar(150) NOT NULL,
  `tTelefono` varchar(15) NOT NULL,
  `tDias` varchar(5) NOT NULL,
  `tHorario` varchar(20) NOT NULL,
  `tServDom` varchar(2) NOT NULL,
  `tLogotipo` varchar(250) DEFAULT NULL,
  `tEnlace` varchar(250) DEFAULT NULL,
  `tDescripcion` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`eCodNegocio`)
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=latin1;

--
-- Truncar tablas antes de insertar `CatNegocios`
--

TRUNCATE TABLE `CatNegocios`;
--
-- Volcado de datos para la tabla `CatNegocios`
--

INSERT INTO `CatNegocios` (`eCodNegocio`, `tNombre`, `tCodPadre`, `tCodSeccion`, `tDomicilio`, `tTelefono`, `tDias`, `tHorario`, `tServDom`, `tLogotipo`, `tEnlace`, `tDescripcion`) VALUES
(1, 'Estetica', 'BELLEZA', 'Estetica', 'Pitagoras y Concepcion ', '', 'L a S', '11:00am A 9:00pm ', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(2, 'Nails Salon ', 'BELLEZA', 'Uñas ', 'Pitagoras 708', '4168-3750', 'L a S', '11:00am A 8:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(3, 'Cova ', 'EDUCACION', 'Escuela ', 'Pitagoras 727', '5523-9493', 'L a V', '7:00am A 3:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(4, 'Gofox ', 'ALIMENTOS', 'Restaurante Bar ', 'Pitagoras y Concepcion ', '', 'L a S', '11:00am A 12:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(5, 'Magic', 'BELLEZA', 'Estetica ', 'Pitagoras y Concepcion ', '', 'L a S', '11:00am A 9:00pm ', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(6, 'Odontologia ', 'SALUD', 'Dentista ', 'Pitagoras 958', '5591-9114', 'L a S', '9:00am A 02:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(7, 'La Cavita ', 'ABARROTES', 'Mini Super ', 'Pitagoras 1000', '', 'L a D', '8:00am A 11:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(8, 'Carpinteria ', 'SERVICIOS', 'Carpinteria ', 'Pitagoras 1002', '', 'L a S', '10:00am A 7:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(10, 'Samborns ', 'ALIMENTOS', 'Cafeteria ', 'Div del Norte y Anaxagoras ', '', 'L a D', '8:00am A 12:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(11, 'Farmacia del Ahorro ', 'SALUD', 'Farmacia ', 'Angel Urraza y Anaxagoras ', '5593-4000', 'L a D', '24 horas ', 'SI', NULL, '#', 'Negocio afiliado a Regularizate'),
(12, 'Seminuevos ', 'VEHICULOS', 'Venta Autos ', 'Angel Urraza y Anaxagoras ', '558526-2942', 'L a D', '10:00 A 08:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(13, 'Samborns ', 'ALIMENTOS', 'Restaurante ', 'Cuahtemoc y Div del Norte ', '', 'L a D', '8:00am A 12:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(14, 'Dormimundo ', 'DESCANSO', 'Colchones ', 'Cuahtemoc y Div del Norte ', '', 'L a D', '09:00 A 08:00pm', 'SI', NULL, '#', 'Negocio afiliado a Regularizate'),
(15, 'Rio 10', 'ALIMENTOS', 'Pollos rostizados ', 'Cuahtemoc y Div del Norte ', '5605-3643', 'L a D', '10:00 A 08:00pm', 'SI', NULL, '#', 'Negocio afiliado a Regularizate'),
(16, 'Laboratorio Fotografico ', 'SERVICIOS', 'Fotos ', 'Cuahtemoc y Div del Norte ', '5559-1049', 'L a S', '10:00am A 07:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(17, 'Sherwin Willians', 'SERVICIOS', 'Pinturas', 'Cuahtemoc y Div del Norte ', '', 'L a S', '08:30 A 07:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(18, 'Inter Mobel ', 'HOGAR', 'Muebles ', 'Cuahtemoc y Div del Norte ', '', 'L a D', '10:00 A 08:00pm', 'SI', NULL, '#', 'Negocio afiliado a Regularizate'),
(19, 'Venta Dodge ', 'VEHICULOS', 'Autos ', 'Cuahtemoc y Div del Norte ', '5340-8400', 'L a D', '10:00am A 07:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(20, 'Tintoreria ', 'LIMPIEZA', 'Tintoreria ', 'Pitagoras y Luz Saviñon', '', 'L a S', '10:00am A 07:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(21, 'Venta de materiales ', 'SERVICIOS', 'Plomeria ', 'Pitagoras y Luz Saviñon', '5523-5362', 'L a S', '08:00am A 07:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(22, 'Imagen creativa ', 'BELLEZA', 'Estetica ', 'Pitagoras y Luz Saviñon', '5669-4740', 'L a S', '09:00am A 07:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(23, 'Desechables higienicos ', 'LIMPIEZA', 'Produc Limpieza', 'Pitagoras y Luz Saviñon', '', 'L a S', '10:00am A 05:00pm', 'SI', NULL, '#', 'Negocio afiliado a Regularizate'),
(24, 'Los globos ', 'ALIMENTOS', 'Panaderia ', 'Pitagoras y Luz Saviñon', '', 'L a D', '08:00am A 10:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(25, 'Mary ', 'BELLEZA', 'Estetica ', 'Pitagoras y Luz Saviñon', '5669-4190', 'L a S', '10:00am A 08:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(26, 'A Tiempo ', 'LIMPIEZA', 'Tintoreria ', 'Pitagoras y Luz Saviñon', '', 'L a S', '10:00am A 07:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(27, 'Farmacia opciones ', 'SALUD', 'Farmacia ', 'Pitagoras y Luz Saviñon', '', 'L a D', '08:00am A 11:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(28, 'Materia Primas ', 'ALIMENTOS', 'Reposteria ', 'Pitagoras y Luz Saviñon', '5543-7484', 'L a D', '10:00am A 07:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(29, 'Cremeria ', 'ALIMENTOS', 'Cremeria ', 'Pitagoras y Luz Saviñon', '', 'L a D', '09:00am A 08:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(30, 'Dulceria ', 'ALIMENTOS', 'Dulceria ', 'Pitagoras y Torres Adalid ', '', 'L a S', '10:00am A 07:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(31, 'Miscelanea ', 'ABARROTES', 'Abarrotes ', 'Pitagoras y Torres Adalid ', '', 'L a D', '08:00am A 10:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(32, 'Big Burger ', 'ALIMENTOS', 'Hamburguesas ', 'Pitagoras y Torres Adalid ', '5639-8021', 'L a D', '10:00am A 11:00pm', 'SI', NULL, '#', 'Negocio afiliado a Regularizate'),
(33, 'Nenina ', 'OTROS', 'Botique ', 'Pitagoras y Torres Adalid ', '', 'L a S', '10:00am A 07:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(34, 'Michoacana ', 'SERVICIOS', 'Paleteria ', 'Pitagoras y Torres Adalid ', '', 'L a D', '10:00am A 08:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(35, 'Santa Rita ', 'SALUD', 'Farmacia ', 'Pitagoras y Torres Adalid ', '', 'L a D', '08:00am A 11:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(36, 'Don Frank ', 'ALIMENTOS', 'Taqueria ', 'Pitagoras y Torres Adalid ', '5523-9101', 'L a D', '08:00am A 11:00pm', 'SI', NULL, '#', 'Negocio afiliado a Regularizate'),
(37, '7 Eleven ', 'ABARROTES', 'Mini Super ', 'Pitagoras y Torres Adalid ', '', 'L a D', '24 horas ', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(38, 'Polleria ', 'ALIMENTOS', 'Polleria ', 'Torres Adalid y Xochicalco ', '5682-7158', 'L a D', '08:00am A 04:00pm', 'SI', NULL, '#', 'Negocio afiliado a Regularizate'),
(39, 'Frutas y Legumbres ', 'ALIMENTOS', 'Frutas ', 'Torres Adalid y Xochicalco ', '', 'L a D', '08:00am A 09:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(40, 'Samys ', 'BELLEZA', 'Estetica ', 'Torres Adalid y Tajin ', '', 'L a S', '10:00am A 09:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(41, 'Flores ', 'ALIMENTOS', 'Fonda ', 'Torres Adalid y Tajin ', '6550-6011', 'L a S', '08:00am A 03:00pm', 'SI', NULL, '#', 'Negocio afiliado a Regularizate'),
(42, 'Las Sirenas del pacifico ', 'ALIMENTOS', 'Mariscos ', 'Universidad y Luz Saviñon ', '', 'L a D', '02:00pm A 09:00pm', 'SI', NULL, '#', 'Negocio afiliado a Regularizate'),
(43, 'Juan Bisteces ', 'ALIMENTOS', 'Taqueria ', 'Universidad y Luz Saviñon ', '5523-3175', 'L a D', '02:00pm A 12:00pm', 'SI', NULL, '#', 'Negocio afiliado a Regularizate'),
(44, 'La Taquiza ', 'ALIMENTOS', 'Taqueria ', 'Universidad y Luz Saviñon ', '', 'L a D', '09:00am A 11:00pm', 'SI', NULL, '#', 'Negocio afiliado a Regularizate'),
(45, 'Emilios ', 'ALIMENTOS', 'Hamburguesas ', 'Universidad y Torres Adalid ', '', 'L a D', '10:00am A 08:00pm', 'SI', NULL, '#', 'Negocio afiliado a Regularizate'),
(46, 'Farmacia Paris ', 'SALUD', 'Farmacia ', 'Universidad y Torres Adalid ', '5669-1253', 'L a D', '09:00am A 08:00pm', 'SI', NULL, '#', 'Negocio afiliado a Regularizate'),
(47, 'La Divina ', 'BEBIDAS', 'Licores ', 'Universidad y Torres Adalid ', '', 'L a D', '10:00am A 08:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(48, 'Digital ', 'SERVICIOS', 'Copias ', 'Tajin 357', '5682-7022', 'L a S', '09:00am A 08:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(49, 'Erneste coffire', 'BELLEZA', 'Estetica ', 'Universidad y Concepcion ', '8590-9833', 'L a D', '10:00am A 08:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(50, 'Bisquets Obregon ', 'ALIMENTOS', 'Cafeteria ', 'Universidad y Concepcion ', '', 'L a D', '09:00am A 10:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(51, 'Eduardos ', 'ALIMENTOS', 'Restaurante ', 'Universidad y Concepcion ', '6281-3862', 'L a D', '10:00am A 10:00pm', 'SI', NULL, '#', 'Negocio afiliado a Regularizate'),
(52, 'Mas kota ', 'ANIMALES', 'Animales ', 'Universidad y Concepcion ', '5687-1674', 'L a D', '10:00am A 06:00pm', 'SI', NULL, '#', 'Negocio afiliado a Regularizate'),
(53, 'Amore ', 'ALIMENTOS', 'Pizzeria ', 'Universidad y Concepcion ', '', 'L a S', '10:00am A 11:00pm', 'SI', NULL, '#', 'Negocio afiliado a Regularizate'),
(54, 'Tintoreria Itos ', 'LIMPIEZA', 'Tintoreria ', 'Universidad y Concepcion ', '5687-4057', 'L a S', '10:00am A 08:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(55, 'Santa Clara ', 'ALIMENTOS', 'Heladeria ', 'Universidad y Concepcion ', '', 'L a D', '11:00am A 09:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(56, 'I Green MX ', 'ALIMENTOS', 'Produc Gourmet', 'Luz Saviñon y Yacatas ', '', 'L a D', '10:00am A 08:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(57, 'Cristian ', 'SERVICIOS', 'Sastreria', 'Luz Saviñon y Yacatas ', '1107-7719', 'L a S', '10:00am A 07:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(58, 'Lavanderia ', 'LIMPIEZA', 'Tintoreria ', 'Luz Saviñon y Yacatas ', '', 'L a S', '11:00am A 07:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(59, 'Copias ', 'SERVICIOS', 'Copias ', 'Luz Saviñon y Cuauhtemoc ', '5523-8020', 'L a S', '09:00am A 08:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(60, 'Farmacity ', 'SALUD', 'Farmacia ', 'Luz Saviñon y Cuauhtemoc ', '5543-1407', 'L a D', '07:00am A 12:00pm', 'SI', NULL, '#', 'Negocio afiliado a Regularizate'),
(61, 'Conexión ', 'ALIMENTOS', 'Cafeteria ', 'Luz Saviñon y Cuauhtemoc ', '', 'L a S', '04:00am A 12:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(62, 'Inova ', 'BELLEZA', 'Peluqueria ', 'Luz Saviñon y Cuauhtemoc ', '5682-5613', 'L a S', '09:00am A 08:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(63, 'Taqueria Manolo ', 'ALIMENTOS', 'Taqueria ', 'Luz Saviñon y Anaxagoras', '', 'L a D', '02:00am A 12:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(64, 'Volcanes ', 'ALIMENTOS', 'Taqueria ', 'Luz Saviñon y Anaxagoras', '', 'L a D', '02:00am A 12:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(65, 'Tortilleria ', 'ALIMENTOS', 'Tortilleria ', 'Luz Saviñon y Anaxagoras', '', 'L a D', '08:00am A 07:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(66, 'Distribuidora ', 'ALIMENTOS', 'Carnes ', 'Luz Saviñon y Anaxagoras', '557591-2246', 'L a S', '07:00am A 07:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(67, 'Tapiceria ', 'HOGAR', 'Tapiceria ', 'Luz Saviñon y Anaxagoras', '', 'L a D', '09:00am A 07:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(68, 'Carnitas Zinapecuaro ', 'ALIMENTOS', 'Taqueria ', 'Luz Saviñon y Anaxagoras', '557037-8019', 'L a D', '09:00am A 05:00pm', 'SI', NULL, '#', 'Negocio afiliado a Regularizate'),
(69, 'Multigenrenicos ', 'SALUD', 'Farmacia ', 'Luz Saviñon y Anaxagoras', '5669-0180', 'L a S', '09:00am A 09:30pm', 'SI', NULL, '#', 'Negocio afiliado a Regularizate'),
(70, 'Cavalico ', 'BEBIDAS', 'Vinos y licores', 'Luz Saviñon y Anaxagoras', '5523-2577', 'L a S', '10:00am A 11:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(71, 'Naturismo', 'SALUD', 'Naturista ', 'Luz Saviñon y Pitagoras ', '', 'L a S', '10:00am A 06:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(72, 'El venadito ', 'SERVICIOS', 'Tlapareria ', 'Luz Saviñon y Pitagoras ', '', 'L a D', '09:00am A 08:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(73, 'Tortilleria ', 'ALIMENTOS', 'Tortilleria ', 'Luz Saviñon y Pitagoras ', '', 'L a D', '08:00am A 05:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(74, 'Reto Bazar ', 'OTROS', 'Bazar antigueda', 'Cuauhtemoc y Eje 5 ', '5536-0493', 'L a D', '11:00am A 07:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(75, 'Mane Ken ', 'ALIMENTOS', 'Cafeteria ', 'Cuauhtemoc 905', '', 'L a S', '09:00am A 10:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(76, 'Digital ', 'SERVICIOS', 'Copias ', 'Cuauhtemoc 893', '5687-843', 'L a S', '08:00am A 09:00pm', 'SI', NULL, '#', 'Negocio afiliado a Regularizate'),
(77, 'El Diamante ', 'OTROS', 'Empeños ', 'Cuauhtemoc 893A', '', 'L a S', '09:00am A 07:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(78, 'Librería ', 'OTROS', 'Compra de libros', 'Cuauhtemoc 891', '', 'L a S', '11:00am A 06:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(79, 'Torteria ', 'ALIMENTOS', 'Tortas ', 'Cuauhtemoc 891A', '5536-0283', 'L a S', '09:00am A 08:00pm', 'SI', NULL, '#', 'Negocio afiliado a Regularizate'),
(80, 'Abarrotes Eugenia ', 'ABARROTES', 'Abarrotes ', 'Cuauhtemoc 884', '', 'L a D', '07:00am A 11:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(81, 'Lira', 'SALUD', 'Optica ', 'Cuauhtemoc 883', '', 'L a S', '10:00am A 07:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(82, 'Concord', 'DESCANSO', 'Colchas y blancos ', 'Cuauhtemoc 883A', '1107-6036', 'L a S', '10:00am A 06:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(83, 'Anahuac ', 'OTROS', 'Librería ', 'Cuauhtemoc 883B', '5536-0261', 'L a S', '10:00am A 06:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(84, 'La Paz ', 'SALUD', 'Optica ', 'Cuauhtemoc 890', '', 'L a S', '10:00am A 07:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(85, 'Estafeta ', 'SERVICIOS', 'Paqueteria ', 'Cuauhtemoc 890B', '', 'L a S', '09:00am A 07:00pm', 'SI', NULL, '#', 'Negocio afiliado a Regularizate'),
(86, 'Dulceria ', 'ALIMENTOS', 'Dulces ', 'Cuauhtemoc 877', '', 'L a S', '11:00am A 08:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(87, 'Redu Facil ', 'SALUD', 'Reduccion peso ', 'Cuauhtemoc 873B', '5521-2135', 'L a S', '10:00am A 06:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(88, 'Leds Solar ', 'OTROS', 'Alumbrado ', 'Cuauhtemoc 873', '558581-3833', 'L a S', '10:00am A 07:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(89, 'Hop ', 'ALIMENTOS', 'Bar ', 'Cuauhtemoc 870', '', 'L a S', '10:00am A 11:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(90, 'El Silo', 'ALIMENTOS', 'Cafeteria ', 'Cuauhtemoc 862', '', 'L a S', '10:00am A 08:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(91, 'San Pablo', 'SALUD', 'Farmacia ', 'Cuauhtemoc y Concepcion ', '', 'L a D', '24 HORAS ', 'SI', NULL, '#', 'Negocio afiliado a Regularizate'),
(92, 'Kia Motors ', 'VEHICULOS', 'Venta Autos ', 'Cuauhtemoc y Eje 6 ', '', 'L a D', '09:00am A 08:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(93, 'Marina Bistro ', 'ALIMENTOS', 'Marisqueria ', 'Cuauhtemoc y Eje 6 ', '', 'L a D', '09:00am A 08:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(94, 'El Afan ', 'ALIMENTOS', 'Cantina ', 'Universidad 575 ', '5533-5533', 'L a D', '', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(95, 'Office Max ', 'SERVICIOS', 'Papeleria ', 'Cuauhtemoc 1033', '', 'L a D', '10:00am A 09:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(96, 'Look Capital ', 'BELLEZA', 'Estetica ', 'Cuauhtemoc 997', '7159-7439', 'L a S', '11:00am A 08:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(97, 'Wise UP ', 'EDUCACION', 'Escuela ingles ', 'Cuauhtemoc 997', '6823-4423', 'L a S', '10:00am A 07:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(98, 'Secretaria de Finanzas ', 'OTROS', 'Finanzas ', 'San Borja y Universidad ', '5588-3388', 'L a V', '08:30am A 03:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(99, 'Profesionales inmobilia', 'INMUEBLES', 'Inmobiliaria ', 'San Borja y Universidad ', '5575-4678', 'L a S', '10:00am A 05:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(100, 'Consultorio dental ', 'SALUD', 'Dentista ', 'Yacatas 515', '552655-8748', 'L a S', '10:00am A 07:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(101, 'Nureyev ', 'OCIO', 'Danza ', 'Yacatas 515', '5575-5158', 'L a S', '11:00am A 08:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(102, 'Moksha ', 'SERVICIOS', 'Veterinaria ', 'Yacatas 510', '5575-1498', 'L a S', '11:00am A 06:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(103, 'Agua inmaculada ', 'SERVICIOS', 'Purificadora ', 'Yacatas 510', '', 'L a D', '09:00am A 07:00pm', 'SI', NULL, '#', 'Negocio afiliado a Regularizate'),
(104, 'La malegria ', 'SERVICIOS', 'Venta de pipas ', 'San Borja y Universidad ', '', 'L a S', '11:00am A 05:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(105, 'Copias ', 'SERVICIOS', 'Copias ', 'San Borja y Universidad ', '', 'L a S', '08:00am A 07:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(106, 'Karlandys ', 'ALIMENTOS', 'Cafeteria ', 'San Borja 1212', '', 'L a S', '08:00am A 07:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(107, 'Las Marys ', 'ALIMENTOS', 'Fonda ', 'San Borja 1204 ', '', 'L a S', '08:00am A 05:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(108, 'Cute Nails ', 'BELLEZA', 'Uñas ', 'San Borja 1117', '553333-6897', 'L a S', '11:00am A 07:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(109, 'La Estrella ', 'ABARROTES', 'Abarrotes ', 'San Borja 1106', '', 'L a D', '08:00am A 11:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(110, 'Servicio Becerra ', 'VEHICULOS', 'Coches ', 'Eugenia 406', '5543-0712', 'L a S', '08:00am A 09:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(111, 'Dormimundo ', 'DESCANSO', 'Colchones ', 'Eugenia y Universidad ', '', 'L a D', '09:00am A 08:00pm', 'SI', NULL, '#', 'Negocio afiliado a Regularizate'),
(112, 'Gely ', 'HOGAR', 'Venta cocinas ', 'Universidad y Yacatas ', '', 'L a S', '10:00am A 08:00pm', 'SI', NULL, '#', 'Negocio afiliado a Regularizate'),
(113, 'Zipper ', 'SERVICIOS', 'Sastreria', 'Universidad 493c', '', 'L a S', '10:00am A 07:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(114, 'Pro animal ', 'ANIMALES', 'Veterinaria ', 'Universidad 493', '5543-9440', 'L a S', '11:00am A 07:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(115, 'Uñas y spa ', 'BELLEZA', 'Spa', 'Universidad 486B', '5523-9908', 'L a D', '11:00am A 10:00pm', 'SI', NULL, '#', 'Negocio afiliado a Regularizate'),
(116, 'Bistro Cheny ', 'ALIMENTOS', 'Cafeteria ', 'Universidad 486A', '5523-9908', 'L a S', '11:00am A 10:00pm', 'SI', NULL, '#', 'Negocio afiliado a Regularizate'),
(117, 'Vet Gronning', 'ANIMALES', 'Veterinaria ', 'Universidad 477', '6363-6609', 'L a S', '11:00am A 07:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(118, 'La planche ', 'SERVICIOS', 'Planchaduria ', 'Universidad 473', '', 'L a S', '09:00am A 06:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(119, 'Flequitos ', 'BELLEZA', 'Estetica infantil ', 'Universidad 457', '7573-3888', 'L a S', '11:00am A 06:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(120, 'DHL', 'SERVICIOS', 'Mensajeria ', 'Universidad 445', '', 'L a S', '10:00am A 06:00pm', 'SI', NULL, '#', 'Negocio afiliado a Regularizate'),
(121, 'Sistemas Hidraulicos ', 'SERVICIOS', 'Equipos alberca ', 'Universidad 443', '5536-2704', 'L a S', '10:00am A 08:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(122, 'Sushi Dashi', 'ALIMENTOS', 'Comida ', 'Universidad 441', '', 'L a D', '10:00am A 08:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(123, 'Laguna ', 'VEHICULOS', 'Venta de autos ', 'Eugenia y Universidad ', '', 'L a S', '10:00am A 07:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(124, 'Super Naturista ', 'ABARROTES', 'Mini Super ', 'Cuauhtemoc 919', '', 'L a S', '10:00am A 09:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(125, 'Esperanza ', 'ALIMENTOS', 'Panaderia ', 'Cuauhtemoc y Eje 5', '', 'L a D', '07:00am A 11:00pm', 'SI', NULL, '#', 'Negocio afiliado a Regularizate'),
(126, 'Oxxo ', 'ABARROTES', 'Mini Super ', 'Cuauhtemoc y Eje 5', '', 'L a D', '24 HORAS ', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(127, 'Aura', 'SALUD', 'Auditivo ', 'Cuahutemoc y Eje 5', '2463-1090', 'L a S', '08:00am A 06:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(128, 'Grupo Angeles ', 'SERVICIOS', 'Velatorios ', 'Cuauhtemoc 984', '', 'L a D', '24 HORAS ', 'SI', NULL, '#', 'Negocio afiliado a Regularizate'),
(129, 'Italika ', 'VEHICULOS', 'Venta motos ', 'Cuauhtemoc 980', '', 'L a S', '11:00am A 07:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(130, 'Unica ', 'BELLEZA', 'Uñas ', 'Cuauhtemoc 977', '5514-3322', 'L a D', '09:00am A 09:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(131, 'Monte di prieto', 'SERVICIOS', 'Casa empeño ', 'Cuauhtemoc 962B', '5575-8781', 'L a S', '09:00am A 06:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(132, 'Ford ', 'VEHICULOS', 'Venta Autos ', 'Cuauhtemoc 962', '', 'L a S', '09:00am A 07:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(133, 'Card wash ', 'SERVICIOS', 'Auto lavado', 'Cuauhtemoc 940', '', 'L a D', '09:00am A 10:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(134, 'Servicio APPLE ', 'SERVICIOS', 'Servicio APPLE ', 'Cuauhtemoc 936', '5518-6006', 'L a S', '09:00am A 05:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(135, 'Lorenz ', 'OCIO', 'Manualidades ', 'Cuauhtemoc 934', '6268-5533', 'L a S', '11:00am A 05:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(136, 'Sleepmart ', 'DESCANSO', 'Colchones ', 'Cuahutemoc y Eje 5', '', 'L a D', '10:00am A 07:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(137, 'Ninki blink ', 'SALUD', 'Optica ', 'Cuahutemoc y Eje 5', '5536-7734', 'L a S', '11:00am A 08:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(138, 'Reparacion computadoras ', 'SERVICIOS', 'Internet ', 'Eugenia 1357A', '5682-1821', 'L a S', '10:00am A 09:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(139, 'El rincon de maru ', 'ALIMENTOS', 'Fonda ', 'Eugenia 1357', '5682-1182', 'L a S', '08:00am A 05:00pm', 'SI', NULL, '#', 'Negocio afiliado a Regularizate'),
(140, 'Trazamos tus ideas ', 'SERVICIOS', 'Impresiones ', 'Eugenia 1354', '6590-9700', 'L a S', '10:00am A 07:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(141, 'Espejos decorativos ', 'HOGAR', 'Marcos ', 'Eugenia 1351', '5536-9748', 'L a S', '10:00am A 06:30pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(142, 'Cerrajeria ', 'SERVICIOS', 'Cerrajeria ', 'Eugenia 1349', '5687-0702', 'L a S', '10:00am A 04:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(143, 'Tapiceria Fina ', 'SERVICIOS', 'Tapiceria ', 'Eugenia y Yacatas ', '5536-3287', 'L a S', '11:00am A 07:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(144, 'Publitiendas ', 'ABARROTES', 'Abarrotes ', 'Eugenia 1400', '5564-6844', 'L a D', '10:00am A 10:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(145, 'El sol de Narvarte ', 'ALIMENTOS', 'Taqueria ', 'Eugenia 1403', '', 'L a S', '08:00am A 09:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(146, 'Impresiones ', 'SERVICIOS', 'Copias ', 'Luz Saviñon 1567', '', 'L a D', '08:00am A 09:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(147, 'Fashion ', 'BELLEZA', 'Estetica ', 'Luz Saviñon 1567', '5669-1630', 'L a S', '10:00am A 08:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(148, 'Yaya ', 'SERVICIOS', 'Papeleria ', 'Luz Saviñon 1567', '', 'L a D', '10:00am A 09:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(149, 'D`Rubi', 'OCIO', 'Salon de Fiestas ', 'Luz Saviñon 1512', '5530-0786', 'L a D', '10:00am A 08:00pm', 'SI', NULL, '#', 'Negocio afiliado a Regularizate'),
(150, 'Lucas ', 'ALIMENTOS', 'Cafeteria ', 'Luz Saviñon 1507', '', 'L a D', '08:00am A 10:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(151, 'Planchaduria Narvarte ', 'SERVICIOS', 'Lavanderia ', 'Luz Saviñon 1503', '551895-9407', 'L a S', '10:00am A 07:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(152, 'La Estrella ', 'ABARROTES', 'Mini Super ', 'Luz Saviñon 1453', '', 'L a D', '08:00am A 10:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(153, 'Yoli ', 'OTROS', 'Merceria ', 'Luz Saviñon 1450', '', 'L a S', '10:00am A 07:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(154, 'Villa Casona ', 'ALIMENTOS', 'Restaurante ', 'Luz Saviñon y Uxmal ', '5543-3867', 'L a D', '08:00am A 11:00pm', 'SI', NULL, '#', 'Negocio afiliado a Regularizate'),
(155, 'The mouse ', 'BELLEZA', 'Estetica ', 'Uxmal 305 ', '', 'L a S', '09:00am A 08:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(156, 'Tintoreria ', 'LIMPIEZA', 'Tintoreria ', 'Uxmal 308', '', 'L a S', '08:00am A 07:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(157, 'Sastreria ', 'SERVICIOS', 'Sastreria', 'Luz Saviñon 1408', '5235-3032', 'L a S', '10:00am A 06:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(158, 'Laptops redes', 'SERVICIOS', 'Repara-Computo', 'Yacatas 300 ', '', 'L a S', '11:00am A 07:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(159, 'Grupo Multisistemas ', 'SERVICIOS', 'Seguridad ', 'Yacatas 317', '5530-4050', 'L a S', '09:00am A 07:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(160, 'Fabrica Laboratorio', 'SALUD', 'Farmacia ', 'Yacatas 307', '', 'L a S', '07:30am A 04:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(161, 'Tortilleria ', 'ALIMENTOS', 'Tortilleria ', 'Luz Saviñon y Yacatas ', '', 'L a D', '08:00am A 05:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(162, 'San Jose ', 'ABARROTES', 'Mini Super ', 'Luz Saviñon y Yacatas ', '', 'L a D', '08:00am A 11:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(163, 'La Cicala ', 'ALIMENTOS', 'Pizzeria ', 'Luz Saviñon y Yacatas ', '3219-1940', 'L a D', '02:00pm A 11:00pm', 'SI', NULL, '#', 'Negocio afiliado a Regularizate'),
(164, 'D\'Leon ', 'SERVICIOS', 'Fotografia ', 'San Borja 1115', '5559-6276', 'L a S', '10:00am A 05:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(165, 'El popo ', 'SERVICIOS', 'Repara-calzado ', 'San Borja 1106B', '5559-6285', 'L a S', '11:00am A 06:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(166, 'Talabarteria ', 'SERVICIOS', 'Reparacion piel', 'San Borja 1106C', '5559-3022', 'L a S', '12:00pm A 08:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(167, 'Schussler', 'SALUD', 'Homeopatia ', 'San Borja 944', '5559-7543', 'L a S', '07:00am A 11:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(168, 'Consultorio medico ', 'SALUD', 'Consultorio ', 'Anaxagoras 915', '552124-2070', 'L a S', '04:00pm A 08:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(169, 'BH', 'BELLEZA', 'Estetica ', 'Anaxagoras y Eje 5 ', '', 'L a S', '07:00am A 07:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(170, 'Unimextur ', 'SERVICIOS', 'Agen-Viajes', 'Anaxagoras 905', '3095-3622', 'L a S', '10:00am A 08:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(171, 'Body Wrap ', 'BELLEZA', 'Spa ', 'Eugenia 1309', '5687-0223', 'L a S', '10:00am A 07:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(172, 'Similares ', 'SALUD', 'Farmacia ', 'Eugenia 1305', '', 'L a D', '08:00am A 10:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(173, 'Pint Laser ', 'SERVICIOS', 'Copias ', 'Eugenia 1307', '5536-7780', 'L a S', '10:00am A 06:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(174, 'Helados y paletas ', 'ALIMENTOS', 'Paleteria ', 'Eugenia 1307', '', 'L a D', '10:00am A 09:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(175, 'La gera ', 'ABARROTES', 'Mini Super ', 'Eugenia 1308', '', 'L a D', '08:00am A 11:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(176, 'Reposteria Samy ', 'ALIMENTOS', 'Reposteria ', 'Eugenia 1308', '', 'L a D', '09:00am A 06:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(177, 'Del Angel ', 'ALIMENTOS', 'Cafeteria ', 'Eugenia 1308', '5543-0457', 'L a S', '08:00am A 06:00pm', 'SI', NULL, '#', 'Negocio afiliado a Regularizate'),
(178, '7 Eleven ', 'ABARROTES', 'Mini Super ', 'Eugenia y Cuauhtemoc', '', 'L a D', '24 HORAS ', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(179, 'Farmacias del Ahorro ', 'SALUD', 'Farmacia ', 'Eugenia y Cuauhtemoc', '', 'L a D', '24 HORAS ', 'SI', NULL, '#', 'Negocio afiliado a Regularizate'),
(180, 'Dormimundo ', 'DESCANSO', 'Colchones ', 'Cuauhtemoc y San Borja ', '', 'L a D', '09:00am A 06:00pm', 'SI', NULL, '#', 'Negocio afiliado a Regularizate'),
(181, 'Oxxo ', 'ABARROTES', 'Mini Super ', 'Cuauhtemoc y San Borja ', '', 'L a D', '24 HORAS ', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(182, 'Oxxo ', 'ABARROTES', 'Mini Super ', 'Cuauhtemoc y Torres Adalid ', '', 'L a D', '24 HORAS ', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(183, 'La Santisima ', 'ALIMENTOS', 'Carniceria ', 'Cuauhtemoc y Luz Saviñon ', '', 'L a S', '12:00pm A 11:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(184, 'Live', 'ALIMENTOS', 'Bar ', 'Cuauhtemoc y Luz Saviñon ', '6363-2823', 'L a D', '08:00am A 03:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(185, 'Alta peluqueria ', 'BELLEZA', 'Estetica ', 'Cuauhtemoc 1318', '5543-3875', 'L a S', '10:00am A 08:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(186, 'Auto Lavado', 'VEHICULOS', 'Autos ', 'Cuauhtemoc y Luz Saviñon ', '', 'L a D', '09:00am A 07:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(187, 'Biblos ', 'OTROS', 'Productos arabes ', 'Cuauhtemoc y Luz Saviñon ', '', 'L a S', '10:00am A 07:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(188, 'Imagen Clinica ', 'SALUD', 'Laboratorios ', 'Cuauhtemoc 797', '5523-3861', 'L a S', '09:00am A 07:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(189, 'Similares ', 'SALUD', 'Farmacia ', 'Cuauhtemoc 803 ', '', 'L a D', '09:00am A 09:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(190, 'Laguna ', 'VEHICULOS', 'Venta de autos ', 'Cuauhtemoc y Torres Adalid ', '', 'L a S', '11:00am A 05:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(191, 'Body Brite ', 'BELLEZA', 'Spa ', 'Torres Adalid y Yacatas ', '', 'L a S', '11:00am A 07:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(192, 'Lo Kreativo ', 'SERVICIOS', 'Floreria ', 'Torres Adalid 1503A', '5687-4788', 'L a S', '10:00am A 08:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(193, 'Ricchi ', 'ALIMENTOS', 'Pizzeria ', 'Torres Adalid 1510', '5687-9115', 'L a D', '11:00am A 10:00pm', 'SI', NULL, '#', 'Negocio afiliado a Regularizate'),
(194, 'Spa nails ', 'BELLEZA', 'Uñas ', 'Torres Adalid y Uxmal ', '7580-8504', 'L a S', '11:00am A 08:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(195, 'Papeleria ', 'SERVICIOS', 'Papeleria ', 'Torres Adalid 1549', '', 'L a S', '08:00am A 08:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(196, 'Consultorio dental ', 'SALUD', 'Dentista ', 'Torres Adalid 1551', '', 'L a S', '04:00pm A 08:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(197, 'Spa ', 'BELLEZA', 'Estetica ', 'Torres Adalid y Xochicalco ', '6798-1011', 'L a S', '11:00am A 09:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(198, 'Mi Lupita ', 'ABARROTES', 'Abarrotes ', 'Torres Adalid y Xochicalco ', '', 'L a D', '08:00am A 11:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(199, 'Tortilleria ', 'ALIMENTOS', 'Tortilleria ', 'Torres Adalid y Xochicalco ', '', 'L a D', '08:00am A 08:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(200, 'Escuela de estilismo ', 'BELLEZA', 'Estetica ', 'Concepcion Beistegui 1409', '6584-7872', 'L a S', '10:30am A 07:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(201, 'Brazil ', 'ALIMENTOS', 'Restaurante ', 'Concepcion y Anaxagoras ', '5523-8951', 'L a S', '12:00pm A 11:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(202, 'La Nacional ', 'ABARROTES', 'Abarrotes ', 'Concepcion Beistegui 957', '', 'L a S', '09:00am A 09:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(203, 'Estetica', 'BELLEZA', 'Estetica ', 'Concepcion Beistegui 955', '', 'L a S', '11:00am A 09:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(204, 'Aurelio', 'BELLEZA', 'Estetica ', 'Concepcion Beistegui 953', '', 'L a S', '09:00am A 07:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(205, 'Tortas Gigantes ', 'ALIMENTOS', 'Comida ', 'Concepcion y Yacatas ', '5523-9640', 'L a S', '09:00am A 11:00pm', 'SI', NULL, '#', 'Negocio afiliado a Regularizate'),
(206, 'Orozco ', 'SALUD', 'Optica ', 'Cuauhtemoc 850B', '5536-5930', 'L a S', '11:00am A 06:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(207, 'Magic Sonrisas ', 'OCIO', 'Salon de fiesta ', 'Cuauhtemoc 848', '551228-4855', 'L a D', '11:00am A 05:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(208, 'Animalitos ', 'ANIMALES', 'Veterinaria ', 'Cuauhtemoc 825A', '5519-0424', 'L a S', '11:00am A 07:00pm', 'SI', NULL, '#', 'Negocio afiliado a Regularizate'),
(209, 'Hospital veterinario ', 'ANIMALES', 'Veterinaria ', 'Anaxagoras 708', '5536-6433', 'L a D', '24 HORAS ', 'SI', NULL, '#', 'Negocio afiliado a Regularizate'),
(210, 'Comex ', 'SERVICIOS', 'Pinturas', 'Torres Adalid y Anaxagoras ', '5536-7600', 'L a S', '08:30am A 07:00pm', 'SI', NULL, '#', 'Negocio afiliado a Regularizate'),
(211, 'La oberena ', 'ALIMENTOS', 'Panaderia ', 'Torres Adalid 1356', '', 'L a D', '07:00am A 10:00pm', 'SI', NULL, '#', 'Negocio afiliado a Regularizate'),
(212, 'Tlapareria ', 'SERVICIOS', 'Tlapareria ', 'Torres Adalid 1353', '', 'L a S', '08:00am A 06:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(213, 'El napolitano ', 'ALIMENTOS', 'Pasteleria ', 'Torres Adalid 1361', '5523-1329', 'L a S', '10:00am A 08:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(214, 'El rayo ', 'ABARROTES', 'Abarrotes ', 'Torres Adalid y Anaxagoras ', '', 'L a D', '09:00am A 11:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(215, 'El real ', 'ALIMENTOS', 'Cafeteria ', 'Torres Adalid y Anaxagoras ', '', 'L a S', '11:00am A 09:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(216, 'Estetica', 'BELLEZA', 'Estetica', 'Torres Adalid 1402', '554447-7942', 'L a S', '11:00am A 08:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(217, 'Estetica', 'BELLEZA', 'Estetica', 'Torres Adalid 1406 ', '6550-4687', 'L a S', '11:00am A 08:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(218, 'Nai Kery ', 'BELLEZA', 'Uñas ', 'Universidad y Uxmal ', '555197-4055', 'L a S', '10:00am A 09:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(219, 'El viejo Camilo ', 'ALIMENTOS', 'Restaurante', 'Universidad 399', '', 'M a D', '02:00pm A 12:00Am', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(220, 'Centro Artritis ', 'SALUD', 'Consultorio ', 'Uxmal 455', '5687-1515', 'L a S', '08:00am A 06:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(221, 'Norvan ', 'BELLEZA', 'Estetica ', 'Universidad 589', '', 'L a S', '10:00am A 08:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(222, 'Kids Fun ', 'OCIO', 'Salon Infantil ', 'Universidad 373', '7045-3570', 'L a D', '10:00am A 08:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(223, 'Mont Sucree', 'ALIMENTOS', 'Reposteria ', 'Universidad 371', '', 'L a S', '10:00am A 04:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(224, 'Autorutsa ', 'VEHICULOS', 'Venta Autos ', 'Universidad y Concepcion ', '5523-3434', 'L a S', '09:30am A 06:30pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate'),
(225, 'Barnabeu ', 'ALIMENTOS', 'Restaurante bar ', 'Universidad y Concepcion ', '5536-9943', 'M a D', '01:30am a 11:00pm', 'NO', NULL, '#', 'Negocio afiliado a Regularizate');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opciones`
--

DROP TABLE IF EXISTS `opciones`;
CREATE TABLE IF NOT EXISTS `opciones` (
  `eCodSeccion` int(11) NOT NULL AUTO_INCREMENT,
  `tCodPadre` varchar(20) NOT NULL,
  PRIMARY KEY (`eCodSeccion`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Truncar tablas antes de insertar `opciones`
--

TRUNCATE TABLE `opciones`;
--
-- Volcado de datos para la tabla `opciones`
--

INSERT INTO `opciones` (`eCodSeccion`, `tCodPadre`) VALUES
(1, 'ABARROTES'),
(2, 'ALIMENTOS'),
(3, 'ANIMALES'),
(4, 'BEBIDAS'),
(5, 'BELLEZA'),
(6, 'DESCANSO'),
(8, 'EDUCACION'),
(9, 'HOGAR'),
(11, 'INMUEBLES'),
(12, 'LIMPIEZA'),
(13, 'OCIO'),
(14, 'OTROS'),
(15, 'SALUD'),
(16, 'SERVICIOS'),
(17, 'VEHICULOS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `RelNegociosImagenes`
--

DROP TABLE IF EXISTS `RelNegociosImagenes`;
CREATE TABLE IF NOT EXISTS `RelNegociosImagenes` (
  `eCodNegocio` int(11) DEFAULT NULL,
  `tArchivo` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Truncar tablas antes de insertar `RelNegociosImagenes`
--

TRUNCATE TABLE `RelNegociosImagenes`;
