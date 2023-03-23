-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 24-Maio-2022 às 16:50
-- Versão do servidor: 5.7.17
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bd_empresa`
--
CREATE DATABASE IF NOT EXISTS `bd_empresa` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bd_empresa`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedores`
--

CREATE TABLE `fornecedores` (
  `COD_FORNECEDOR` int(11) NOT NULL,
  `RAZAO_SOCIAL` varchar(70) NOT NULL,
  `NOME_FANTASIA` varchar(70) NOT NULL,
  `CNPJ` varchar(20) NOT NULL,
  `ENDERECO` varchar(50) NOT NULL,
  `NUM` varchar(7) NOT NULL,
  `BAIRRO` varchar(25) NOT NULL,
  `CIDADE` varchar(25) NOT NULL,
  `FONE` varchar(18) NOT NULL,
  `NOME_CONTATO` varchar(20) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `SITE` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `fornecedores`
--

INSERT INTO `fornecedores` (`COD_FORNECEDOR`, `RAZAO_SOCIAL`, `NOME_FANTASIA`, `CNPJ`, `ENDERECO`, `NUM`, `BAIRRO`, `CIDADE`, `FONE`, `NOME_CONTATO`, `EMAIL`, `SITE`) VALUES
(1, 'Comércio de Papéis Yuki Ltda', 'Yuki Papéis', '03.847.955/0001-98', 'Rua das Ameixeiras', '21', 'Penha', 'São Paulo', '(11) 2695-6398', 'Sr. Pedro', 'yuki@provedor.com.br', ''),
(2, 'Comércio de Papéis ABC Ltda', 'Papelaria ABC', '14.218.835/0001-27', 'Av. Iguapé', '1690', 'Tatuapé', 'São Paulo', '(11) 2369-9685', 'Sra. Beta', 'p_ABC@provedor.com.br', ''),
(3, 'Distribuidora Kalunga S. A.', 'Kalunga', '23.222.835/0001-10', 'Rua das Bolhas', '900', 'Itaquera', 'São Paulo', '(11)2596-9586', 'Sr. Marcos', 'kalunga@provedor.com.br', ''),
(4, 'Indústria e Comércio Nobel S.A.', 'Nobel', '07.256.898/0001-04', 'Rua das Bolhas', '100', 'Itaquera', 'São Paulo', '(11) 2456-9874', 'Sr. Paulo', 'nobel@provedor.com.br', ''),
(5, 'Papelaria Americanas Ltda', 'Americanas', '01.659.427/0001-04', 'Rua das Ovelhas', '21', 'Pari', 'São Paulo', '(11) 2456-9874', 'Sr. Antonio', 'americanas@provedor.com.br', ''),
(6, 'Distribuidora Brasileiras S.A.', 'Brasileiras', '01.326.266/0001-04', 'Av. Brasil', '12', 'Brás', 'São Paulo', '(11) 6598-6968', 'Sra. Paula', 'brasileiras@provedor.com.br', ''),
(7, 'Ind e Comércio de Papéis OI Ltda', 'Papéis OI', '01.362.126/0001-04', 'Av dos Trilhos', '1362', 'Pari', 'São Paulo', '(11) 2365-2154', 'Sra. Ana', 'oi@provedor.com.br', ''),
(8, 'Armarinhos Fernando Ltda', 'Fernando', '01.956.236/0001-04', 'Alameda Santos', '362', 'Centro', 'São Paulo', '(11) 2362-3659', 'Sr. Matheus', 'fernando@provedor.com.br', ''),
(9, 'Armarinhos \\Alegria S.A.', 'Alegria', '14.632.326/0001-14', 'Rua das Fagulhas', '12', 'Cambuci', 'São Paulo', '(11) 2362-5487', 'Sr. Alegrate', 'alegria@provedor.com.br', ''),
(10, 'Comércio de Papéis Tchau Ltda', 'Tchau', '11.659.652/0001-04', 'Alameda dos Anhabiguaras', '326', 'Morumbi', 'São Paulo', '(11) 3265-6958', 'Sr. Betão', 'tchau@provedor.com.br', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `COD_PRODUTO` int(11) NOT NULL,
  `DESCRICAO` varchar(50) NOT NULL,
  `UNIDADE` varchar(2) NOT NULL,
  `QTDE_ESTOQUE` double NOT NULL,
  `CARACTERISTICAS` varchar(50) NOT NULL,
  `COD_FORNECEDOR` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`COD_PRODUTO`, `DESCRICAO`, `UNIDADE`, `QTDE_ESTOQUE`, `CARACTERISTICAS`, `COD_FORNECEDOR`) VALUES
(1, 'Caneta', 'un', 100, 'cor azul', 2),
(2, 'Caneta', 'un', 85, 'cor vermelha', 2),
(3, 'Caneta', 'un', 60, 'cor preta', 2),
(4, 'Lápis', 'un', 150, 'sem borracha', 3),
(5, 'Lápis', 'un', 100, 'com borracha', 4),
(6, 'Lápis de cor', 'cx', 25, '12 cores', 4),
(7, 'Lápis de cor', 'cx', 50, '24 cores', 4),
(8, 'Lápis de cor', 'cx', 35, '36 cores', 5),
(9, 'Borracha', 'dz', 35, 'Azul/Vermelha', 6),
(10, 'Borracha', 'dz', 25, 'Branca', 7),
(11, 'Papel Sulfite', 'pc', 100, 'Colorido', 8),
(12, 'Caderno Universitário', 'pc', 25, '1 matéria', 9),
(13, 'Caderno Universitário', 'pc', 150, '10 matérias', 9),
(14, 'Régua', 'un', 250, 'Acrílica - 30cm', 10),
(15, 'Lapiseira', 'pc', 86, 'Grafite 0.5', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fornecedores`
--
ALTER TABLE `fornecedores`
  ADD PRIMARY KEY (`COD_FORNECEDOR`);

--
-- Indexes for table `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`COD_PRODUTO`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fornecedores`
--
ALTER TABLE `fornecedores`
  MODIFY `COD_FORNECEDOR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
