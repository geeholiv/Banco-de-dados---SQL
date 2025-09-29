-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29/09/2025 às 14:02
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
-- Banco de dados: `marketpro`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `campanha`
--

CREATE TABLE `campanha` (
  `id_campanha` int(9) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_midia` int(11) DEFAULT NULL,
  `nome_campanha` varchar(30) DEFAULT NULL,
  `data_inicio` date DEFAULT NULL,
  `data_fim` date DEFAULT NULL,
  `orcamento` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `campanha`
--

INSERT INTO `campanha` (`id_campanha`, `id_cliente`, `id_midia`, `nome_campanha`, `data_inicio`, `data_fim`, `orcamento`) VALUES
(1, 1, 1, 'Publicidade Dolce Gabanna', '2026-08-25', '2026-09-25', 23000.5),
(2, 2, 2, 'Clipe West Coast', '2025-10-26', '2025-10-27', 50000),
(3, 3, 3, 'Film Casamento', '2025-12-27', '2025-12-28', 12300.5),
(4, 4, 4, 'Campanha Versace', '2027-06-12', '2027-07-12', 20000),
(5, 5, 5, 'Campanha Valentino', '2028-09-17', '2028-09-18', 130000);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(9) NOT NULL,
  `nome_cliente` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `segmento` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nome_cliente`, `email`, `segmento`) VALUES
(1, 'Carol Couto', 'carolcoutinho@gmail.com', 'Internet'),
(2, 'Lana Del Rey', 'honeymoon@gmail.com', 'Música'),
(3, 'Selena Gomez', 'selenagomezz@gmail.com', 'Música'),
(4, 'Shalom Harlow', 'shalomhi@gmail.com', 'Moda'),
(5, 'Gisele Bündchen\r\n', 'giseleubermodel@gmail.com', 'Moda');

-- --------------------------------------------------------

--
-- Estrutura para tabela `midia`
--

CREATE TABLE `midia` (
  `id_midia` int(9) NOT NULL,
  `tipo_midia` varchar(15) DEFAULT NULL,
  `custo_unitario` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `midia`
--

INSERT INTO `midia` (`id_midia`, `tipo_midia`, `custo_unitario`) VALUES
(1, 'Vídeo', 29.99),
(2, 'Vídeo', 50.79),
(3, 'Vídeo Film', 43.9),
(4, 'Fotos', 90.99),
(5, 'Fotos', 15.47);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `campanha`
--
ALTER TABLE `campanha`
  ADD PRIMARY KEY (`id_campanha`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_midia` (`id_midia`);

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Índices de tabela `midia`
--
ALTER TABLE `midia`
  ADD PRIMARY KEY (`id_midia`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `campanha`
--
ALTER TABLE `campanha`
  MODIFY `id_campanha` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `midia`
--
ALTER TABLE `midia`
  MODIFY `id_midia` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `campanha`
--
ALTER TABLE `campanha`
  ADD CONSTRAINT `campanha_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  ADD CONSTRAINT `campanha_ibfk_2` FOREIGN KEY (`id_midia`) REFERENCES `midia` (`id_midia`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
