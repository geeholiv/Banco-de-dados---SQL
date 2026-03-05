-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05/03/2026 às 19:56
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
-- Banco de dados: `usuarios`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` bigint(20) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `perfil` enum('ADMIN','USER') NOT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `bairro` varchar(80) DEFAULT NULL,
  `complemento` varchar(80) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `foto` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `perfil`, `endereco`, `bairro`, `complemento`, `cep`, `cidade`, `estado`, `foto`) VALUES
(3, 'Maria da Silva', 'maria1.silva@email.com', '123456', 'ADMIN', 'Rua das Flores, 123', 'Centro', 'Apto 202', '12345-678', 'São Paulo', 'SP', NULL),
(4, 'Geovanna Oliveira', 'geovanna.oliveira@email.com', '64657', 'ADMIN', 'Rua da Conçeição, 123', 'Jardim Claro', 'Apto 505', '34576-098', 'São Paulo', 'SP', NULL),
(5, 'Sofia Campos', 'sofia.campos@gmail.com', '370986', 'USER', 'Rua da Paz N45', 'Jardim das Flores', 'Não tem', '18114-920', 'Jundiaí', 'SP', NULL),
(6, 'Maisa Silva', 'maisa.silva@gmail.com', '$2a$10$v0EL9xcnhSJoWcSDBAzyaeeKLGB/EvJYyraqxQwlac7uKXHS7Txme', 'USER', 'Rua dos Morros N12', 'Bairro da Felicidade', 'Não tem', '18117-130', 'São Paulo ', 'SP', NULL),
(7, 'Isabelam Mariazona Pivao Medeirao', 'isabelampivao@gmail.com', '$2a$10$4cs7OpTccgHUxlZXHMWIi.sKOFp2oJ3Tq7SLXc9SLK6gH6GIxVAVK', 'ADMIN', 'Rua das Rosas N34', 'Jardim das Claras', 'Não tem', '18125-178', 'Sorocaba', 'SP', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
