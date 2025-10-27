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
-- Banco de dados: `musicas`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `musicas`
--

CREATE TABLE `musicas` (
  `id_musicas` int(11) NOT NULL,
  `titulo` varchar(50) DEFAULT NULL,
  `artista` varchar(50) DEFAULT NULL,
  `ano_lancamento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `musicas`
--

INSERT INTO `musicas` (`id_musicas`, `titulo`, `artista`, `ano_lancamento`) VALUES
(1, 'Bohemian Rhapsody', 'Queen', 1975),
(2, 'Chamber of Reflection', 'Mac DeMarco', 2014),
(3, 'Physical', 'Dua Lipa', 2020);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `musicas`
--
ALTER TABLE `musicas`
  ADD PRIMARY KEY (`id_musicas`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `musicas`
--
ALTER TABLE `musicas`
  MODIFY `id_musicas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
