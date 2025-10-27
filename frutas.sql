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
-- Banco de dados: `frutas`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `frutas`
--

CREATE TABLE `frutas` (
  `id_frutas` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `cor` varchar(50) DEFAULT NULL,
  `calorias_por_100g` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `frutas`
--

INSERT INTO `frutas` (`id_frutas`, `nome`, `cor`, `calorias_por_100g`) VALUES
(1, 'Laranja', 'Laranja', 47),
(2, 'Melania', 'Vermelha', 30),
(3, 'Manga', 'Amarela', 60);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `frutas`
--
ALTER TABLE `frutas`
  ADD PRIMARY KEY (`id_frutas`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `frutas`
--
ALTER TABLE `frutas`
  MODIFY `id_frutas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
