-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15/09/2025 às 18:55
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
-- Banco de dados: `clinica`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `consulta`
--

CREATE TABLE `consulta` (
  `id` int(11) NOT NULL,
  `id_paciente` int(11) DEFAULT NULL,
  `id_medico` int(11) DEFAULT NULL,
  `data_hora` datetime DEFAULT NULL,
  `observacoes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `consulta`
--

INSERT INTO `consulta` (`id`, `id_paciente`, `id_medico`, `data_hora`, `observacoes`) VALUES
(1, 1, 11, '2025-12-09 14:00:00', 'Consulta de Rotina'),
(2, 2, 2, '2025-08-14 18:00:00', 'Consulta de Particular'),
(3, 3, 10, '2025-09-19 13:00:00', 'Consulta de Online'),
(4, 4, 14, '2025-10-03 12:00:00', 'Consulta de Especializada'),
(5, 5, 9, '2025-11-27 17:00:00', 'Consulta de Emergencia');

-- --------------------------------------------------------

--
-- Estrutura para tabela `medico`
--

CREATE TABLE `medico` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `especialidade` varchar(50) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `crm` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `medico`
--

INSERT INTO `medico` (`id`, `nome`, `especialidade`, `telefone`, `crm`) VALUES
(1, 'Dr. Carlos Souza', 'Cardiologista', '2222-3333', 'CRM12345'),
(2, 'Dr. Edilson Lopes', 'Ortopedista', '3232-4602', 'CRM6534'),
(4, 'Dra Ana Clara', 'Pediatra', '7022-8922', 'CRM8967'),
(6, 'Dra. Rosana Domingues', 'Dermatologista', '2376-8934', 'CRM9054'),
(9, 'Dra. Geovanna Oliveira', 'Biomédica', '7170-7977', 'CRM1701'),
(10, 'Dra. Maitê Silva', 'Cirurgiã', '4602-6472', 'CRM2304'),
(11, 'Dr. Paulo Maluff', 'Urologista', '7063-7231', 'CRM9091'),
(12, 'Dr. Ivan Fernandes', 'Ginecologista Obstetra', '2467-0322', 'CRM7452'),
(14, 'Dra. Marcela Santos', 'Hematologista', '3367-0329', 'CRM27654'),
(15, 'Dra. Cristiane Oliveira', 'Dermatologista', '9883-7035', 'CRM10081');

-- --------------------------------------------------------

--
-- Estrutura para tabela `paciente`
--

CREATE TABLE `paciente` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `data_nascimento` date DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `endereco` varchar(200) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `paciente`
--

INSERT INTO `paciente` (`id`, `nome`, `data_nascimento`, `telefone`, `endereco`, `cep`, `email`) VALUES
(1, 'João Silva', '1990-02-05', '9998-9087', 'Rua da Luz', '16758-897', 'joaosilva@gmail.com'),
(2, 'Ana Laura Medeiros', '2009-06-09', '9867-9087', 'Rua da Paz', '19073-567', 'analaura@gmail.com'),
(3, 'Isabela Maria Medeiros', '2009-06-09', '9772-8913', 'Rua da Flor', '23346-123', 'isabelamaria@gmail.com'),
(4, 'Larissa Ros', '2009-09-23', '9662-7042', 'Rua da Saudade', '23346-123', 'larissaros@gmail.com'),
(5, 'Marcelo da Silva', '1978-04-18', '9912-0374', 'Rua da Felicidade', '18113-103', 'marcelosilva@gmail.com'),
(6, 'Tereza Oliveira', '1954-02-08', '9775-0102', 'Rua do Amor', '12035-389', 'terezaoliveira@gmail.com'),
(7, 'Celeste Silva', '1952-07-30', '9963-5432', 'Rua da Alegria', '18115-470', 'celestesilva@gmail.com'),
(8, 'Maria Eduarda', '2010-03-12', '9932-4462', 'Rua do Estresse', '18112-430', 'mariaeduarda@gmail.com'),
(9, 'Emilly Costa', '2009-12-03', '9712-4660', 'Rua da Mentira', '1250-340', 'emillyeduarda@gmail.com'),
(10, 'Davi Elias', '2024-07-11', '9987-3345', 'Rua da Criança', '1678-943', 'davielias@gmail.com');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `consulta`
--
ALTER TABLE `consulta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_paciente` (`id_paciente`),
  ADD KEY `id_medico` (`id_medico`);

--
-- Índices de tabela `medico`
--
ALTER TABLE `medico`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `consulta`
--
ALTER TABLE `consulta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `medico`
--
ALTER TABLE `medico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `paciente`
--
ALTER TABLE `paciente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `consulta`
--
ALTER TABLE `consulta`
  ADD CONSTRAINT `consulta_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `paciente` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `consulta_ibfk_2` FOREIGN KEY (`id_medico`) REFERENCES `medico` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
