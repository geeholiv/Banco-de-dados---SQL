-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17/09/2025 às 15:25
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
-- Banco de dados: `locadora`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `carro`
--

CREATE TABLE `carro` (
  `id_carro` int(11) NOT NULL,
  `marca` varchar(20) DEFAULT NULL,
  `placa` varchar(11) DEFAULT NULL,
  `ano` varchar(4) DEFAULT NULL,
  `cor` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `carro`
--

INSERT INTO `carro` (`id_carro`, `marca`, `placa`, `ano`, `cor`) VALUES
(1, 'TOYOTA', 'JXP4B92', '2024', 'Branco'),
(2, 'HYUNDAI', 'MQA7D11', '2022', 'Azul Marinho'),
(3, 'FIAT', 'ZTR3H57', '2018', 'Vermelho'),
(4, 'CHEVROLET', 'KLV9E08', '2020', 'Amarelo'),
(5, 'VOLKSWAGEN', 'BNX2A64', '2023', 'Chumbo'),
(6, 'BMW', 'WQD1C39', '2025', 'Preto'),
(7, 'MERCEDES-BENZ', 'HFS8J27', '2021', 'Cinza'),
(8, 'HONDA', 'RGM5K14', '2019', 'Branco'),
(9, 'BYD', 'TUC6L70', '2025', 'Rosa'),
(10, 'FORD', 'YPO0M85', '2020', 'Preto');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nome` varchar(20) DEFAULT NULL,
  `cpf` int(11) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `data_nascimento` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nome`, `cpf`, `telefone`, `email`, `endereco`, `data_nascimento`) VALUES
(1, 'Cristiane Oliveira', 123456, '(11) 91234-5678', 'cristianeoliv@gmail.com', 'Rua do Amor', 1988),
(2, 'Marcelo Silva', 987654, '(15) 99876-5432', 'marcelosilva@gmail.com', 'Rua da Alegria', 1978),
(3, 'Maitê Oliveira Silva', 741852, '(15) 97654-3210', 'maiteolivs@gmail.com', 'Rua da Felicidade', 1990),
(4, 'Maria Fernandes', 369258, '(15) 98765-4321', 'mariafernandes@gmail.com', 'Rua da Conceição', 1980),
(5, 'Carlos Alberto', 258147, '(15) 93456-7890', 'carlosalberto@gmail.com', 'Rua das Flores', 1985),
(6, 'Pedro Campos', 654987, '(11) 96543-2109', 'pedrocampos@gmail.com', 'Rua das Monções', 1995),
(7, 'Lucas Costa', 852741, '(11) 91234-0987', 'lucascosta@gmail.com', 'Rua Gisele Constantino', 2000),
(8, 'Fernanda Maciel', 147369, '(15) 98765-1098', 'fernandamaciel@gmail.com', 'Rua Odete Gori', 2001),
(9, 'Júlia Mendes', 321654, '(15) 97654-8901', 'juliamend@gmail.com', 'Rua do Fogo', 1981),
(10, 'Fabrício Lopes', 963852, '(11) 93456-1230', 'fabriciolop@gmail.com', 'Rua das Praças', 1977);

-- --------------------------------------------------------

--
-- Estrutura para tabela `reserva`
--

CREATE TABLE `reserva` (
  `id_reserva` int(5) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_carro` int(11) DEFAULT NULL,
  `data_reserva` date DEFAULT NULL,
  `data_devolucao` date DEFAULT NULL,
  `valor_total` double(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `reserva`
--

INSERT INTO `reserva` (`id_reserva`, `id_cliente`, `id_carro`, `data_reserva`, `data_devolucao`, `valor_total`) VALUES
(11, 1, 8, '2025-09-18', '2025-09-23', 450.00),
(12, 2, 1, '2025-09-21', '2025-09-26', 520.00),
(13, 3, 6, '2025-09-25', '2025-09-30', 610.00),
(14, 4, 5, '2025-09-30', '2025-10-05', 480.00),
(15, 5, 3, '2025-10-03', '2025-10-09', 552.00),
(16, 6, 2, '2025-10-08', '2025-10-14', 630.00),
(17, 7, 4, '2025-10-12', '2025-10-19', 498.00),
(18, 8, 7, '2025-10-16', '2025-10-21', 540.00),
(19, 9, 9, '2025-10-20', '2025-10-23', 390.00),
(20, 10, 10, '2025-10-24', '2025-11-05', 650.00);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `carro`
--
ALTER TABLE `carro`
  ADD PRIMARY KEY (`id_carro`);

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Índices de tabela `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`id_reserva`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_carro` (`id_carro`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `carro`
--
ALTER TABLE `carro`
  MODIFY `id_carro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `reserva`
--
ALTER TABLE `reserva`
  MODIFY `id_reserva` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  ADD CONSTRAINT `reserva_ibfk_2` FOREIGN KEY (`id_carro`) REFERENCES `carro` (`id_carro`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
