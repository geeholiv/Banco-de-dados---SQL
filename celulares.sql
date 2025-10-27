-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27/10/2025 às 16:07
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `celulares`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `celulares`
--

CREATE TABLE `celulares` (
  `id_celulares` int(11) NOT NULL,
  `marca` varchar(30) DEFAULT NULL,
  `cor` varchar(30) DEFAULT NULL,
  `GB` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `celulares`
--

INSERT INTO `celulares` (`id_celulares`, `marca`, `cor`, `GB`) VALUES
(1, 'Apple', 'Rosa', 128),
(2, 'Samsung', 'Branco', 64),
(3, 'Motorola', 'Preto', 218);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `celulares`
--
ALTER TABLE `celulares`
  ADD PRIMARY KEY (`id_celulares`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `celulares`
--
ALTER TABLE `celulares`
  MODIFY `id_celulares` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
