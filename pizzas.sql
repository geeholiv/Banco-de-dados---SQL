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
-- Banco de dados: `pizzas`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `pizzas`
--

CREATE TABLE `pizzas` (
  `id_pizzas` int(11) NOT NULL,
  `sabor` varchar(50) DEFAULT NULL,
  `preco` decimal(5,2) DEFAULT NULL,
  `vegetariana` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pizzas`
--

INSERT INTO `pizzas` (`id_pizzas`, `sabor`, `preco`, `vegetariana`) VALUES
(1, 'Calabresa', 60.00, 0),
(2, 'Brócolis', 80.00, 1),
(3, 'Quatro Queijos', 50.00, 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `pizzas`
--
ALTER TABLE `pizzas`
  ADD PRIMARY KEY (`id_pizzas`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `pizzas`
--
ALTER TABLE `pizzas`
  MODIFY `id_pizzas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
