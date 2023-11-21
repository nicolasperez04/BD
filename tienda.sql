-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-11-2023 a las 02:35:54
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `ID_Producto` int(10) NOT NULL,
  `Nombre` varchar(99) NOT NULL,
  `Precio` float NOT NULL,
  `Imagen` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`ID_Producto`, `Nombre`, `Precio`, `Imagen`) VALUES
(1, 'Fjallraven', 109.95, 'Fjallraven.jpg'),
(2, 'Mens Casual', 22.3, 'mens casual.jpg'),
(3, 'Mens Cotton Jacket', 55.99, 'Mens_Cotton.jpg\r\n\r\n'),
(4, 'Mens Casual Slim Fit\r\n', 15.99, 'Mens_casual_slim.jpg'),
(5, 'John Hardy Women\'s', 695, 'John.jpg'),
(6, 'Solid Gold Petite Micropave', 168, 'Solid_gold.jpg'),
(7, 'White Gold Plated Princess', 9.99, 'White_gold.jpg'),
(8, 'Pierced Owl Rose Gold', 10.99, 'Pierced.jpg'),
(9, 'WD 2TB Elements Portable', 64, 'WD.jpg'),
(10, 'SanDisk SSD PLUS 1TB', 109, 'Sandisk.jpg'),
(11, 'Silicon Power 256GB', 109, 'Silicon_power.jpg'),
(12, 'WD 4TB ', 114, 'WD_4TB.jpg'),
(13, 'Acer SB220Q', 599, 'Acer.jpg'),
(14, 'Samsung 49', 999.99, 'Samsung.jpg'),
(15, 'BIYLACLESEN ', 56.99, 'BIYLACLESEN.jpg'),
(16, 'Lock and Love Women\'s', 29.95, 'Lock.jpg\r\n'),
(17, 'Rain Jacket Women', 39.99, 'Rain Jacket.jpg'),
(18, 'MBJ Women\'s', 9.85, 'MBJ.jpg'),
(19, 'Opna Women\'s', 7.95, 'Opna.jpg'),
(20, 'DANVOUY ', 12.99, 'DANVOUY.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID_Usuarios` int(255) NOT NULL,
  `Nombres` varchar(99) NOT NULL,
  `Apellidos` varchar(99) NOT NULL,
  `Correo` varchar(99) NOT NULL,
  `Contraseña` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID_Usuarios`, `Nombres`, `Apellidos`, `Correo`, `Contraseña`) VALUES
(1, 'Nicolas', 'Perez', 'nicolasperez15p@gmail.com', 'nicolas0412'),
(2, 'Wilson', 'Perez', 'wilsonperez@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `ID_venta` int(100) NOT NULL,
  `cliente` varchar(99) NOT NULL,
  `fecha` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`ID_Producto`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID_Usuarios`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`ID_venta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `ID_Producto` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID_Usuarios` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `ID_venta` int(100) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
