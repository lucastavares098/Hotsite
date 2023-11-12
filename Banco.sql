-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12/11/2023 às 23:35
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `hotsite`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `interesses`
--

CREATE TABLE `interesses` (
  `Id` int(11) NOT NULL,
  `Nome` varchar(156) DEFAULT NULL,
  `Email` varchar(156) DEFAULT NULL,
  `Mensagem` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `interesses`
--

INSERT INTO `interesses` (`Id`, `Nome`, `Email`, `Mensagem`) VALUES
(1, 'Lucas', 'lucas@gmail.com', 'Teste'),
(3, 'Julia', 'julia@gmail.com', 'Teste 2'),
(4, 'Jessica', 'jessica@teste', 'Teste 3'),
(5, 'Cecilia', 'cica@gmail.com', 'Ciça'),
(6, 'Anne', 'anne@teste', 'Anne'),
(7, 'Fulvia', 'fulvia@teste', 'Jquery');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `interesses`
--
ALTER TABLE `interesses`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `interesses`
--
ALTER TABLE `interesses`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
