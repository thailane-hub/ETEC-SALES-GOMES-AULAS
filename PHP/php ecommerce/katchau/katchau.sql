-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 15-Jun-2024 às 01:49
-- Versão do servidor: 8.0.18
-- versão do PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `katchau`
--
CREATE DATABASE IF NOT EXISTS `katchau` DEFAULT CHARACTER SET utf8 COLLATE utf8_swedish_ci;
USE `katchau`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluguel`
--

DROP TABLE IF EXISTS `aluguel`;
CREATE TABLE IF NOT EXISTS `aluguel` (
  `id_aluguel` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) NOT NULL,
  `id_carro` int(11) NOT NULL,
  `data` date NOT NULL,
  `dataentrega` date NOT NULL,
  `valor_aluguel` float NOT NULL,
  `pago` bit(1) NOT NULL,
  PRIMARY KEY (`id_aluguel`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Extraindo dados da tabela `aluguel`
--

INSERT INTO `aluguel` (`id_aluguel`, `id_cliente`, `id_carro`, `data`, `dataentrega`, `valor_aluguel`, `pago`) VALUES
(3, 1, 1, '2024-06-14', '2024-06-18', 600, b'0'),
(2, 1, 1, '2024-06-14', '2024-06-18', 600, b'0'),
(4, 2, 2, '2024-06-14', '2024-06-21', 1750, b'0'),
(5, 3, 3, '2024-06-15', '2024-06-16', 150, b'0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `carros`
--

DROP TABLE IF EXISTS `carros`;
CREATE TABLE IF NOT EXISTS `carros` (
  `id_carro` int(11) NOT NULL AUTO_INCREMENT,
  `modelo` varchar(50) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `marca` varchar(50) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `placa` varchar(50) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `diaria` float NOT NULL,
  `disponibilidade` bit(1) NOT NULL,
  PRIMARY KEY (`id_carro`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Extraindo dados da tabela `carros`
--

INSERT INTO `carros` (`id_carro`, `modelo`, `marca`, `placa`, `diaria`, `disponibilidade`) VALUES
(1, 'hb20', 'cetroe', '5555', 150, b'0'),
(2, 'punto', 'hun', '58222', 250, b'0'),
(3, 'civix', 'bo', '55555', 150, b'0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE IF NOT EXISTS `clientes` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `endereco` varchar(50) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nome`, `endereco`, `email`) VALUES
(1, 'THAILANE', 'RUA DOS BOBOS', 'santosthailae@gmail.com'),
(2, 'raquel', 'maria ant', 'thaianemaaa@hahaaa'),
(3, 'Amanda silva', 'rua do amaral', 'amanda@gmail.com'),
(4, 'Amada', 'rua maravilha', 'amanda@babvep'),
(5, 'Jose', 'rua maravilha', 'jose@gmail.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
