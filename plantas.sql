-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27/10/2025 às 16:08
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
-- Banco de dados: `plantas`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `plantas`
--

CREATE TABLE `plantas` (
  `id_plantas` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `especie` varchar(100) DEFAULT NULL,
  `necessita_sol` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `plantas`
--

INSERT INTO `plantas` (`id_plantas`, `nome`, `especie`, `necessita_sol`) VALUES
(1, 'Lírio', 'Liliaceae', 1),
(2, 'Espada-de-São-Jorge', 'Dracaena trifasciata', 0),
(3, 'Orquídea', 'Cattleya labiata ', 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `plantas`
--
ALTER TABLE `plantas`
  ADD PRIMARY KEY (`id_plantas`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `plantas`
--
ALTER TABLE `plantas`
  MODIFY `id_plantas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
