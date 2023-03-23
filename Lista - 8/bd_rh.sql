-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 09-Jun-2022 às 02:39
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
-- Database: `bd_rh`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cargos`
--

CREATE TABLE `cargos` (
  `CODCARGO_CARGO` int(6) NOT NULL,
  `DESC_CARGO` char(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cargos`
--

INSERT INTO `cargos` (`CODCARGO_CARGO`, `DESC_CARGO`) VALUES
(101, 'Gerente'),
(102, 'Funcionário'),
(103, 'Supervisor'),
(104, 'Responsável'),
(105, 'Sub Gerente'),
(106, 'Promotor de Vendas'),
(107, 'Analista Comercial'),
(108, 'Assistente Comercial'),
(109, 'Analista Pós Venda'),
(110, 'Abordagem Consultiva');

-- --------------------------------------------------------

--
-- Estrutura da tabela `departamento`
--

CREATE TABLE `departamento` (
  `CODDEP_LOT` int(6) NOT NULL,
  `DESC_DEP` char(12) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `departamento`
--

INSERT INTO `departamento` (`CODDEP_LOT`, `DESC_DEP`) VALUES
(100001, 'Marketing'),
(100002, 'Financeiro'),
(100003, 'Logistica'),
(100004, 'Recursos Hum'),
(100005, 'Administrati'),
(100006, 'Marketing'),
(100010, 'Financeiro'),
(100011, 'Administrati'),
(100012, 'Logistica'),
(100013, 'Logistica'),
(100014, 'Marketing'),
(100015, 'Financeiro');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dependentes`
--

CREATE TABLE `dependentes` (
  `MAT_FUNC` int(6) NOT NULL,
  `NOMEDEP_DEP` char(30) NOT NULL,
  `DATANASC_DEP` int(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `dependentes`
--

INSERT INTO `dependentes` (`MAT_FUNC`, `NOMEDEP_DEP`, `DATANASC_DEP`) VALUES
(10001, 'Um', 20665),
(10002, 'Dois', 121270),
(10003, 'Três', 90667),
(10004, 'Quatro', 200955),
(10005, 'Cinco', 280950),
(10006, 'Seis', 170445),
(10008, 'Oito', 60666),
(10009, 'Nove', 250362),
(10010, 'Dez', 300570),
(10011, 'Onze', 160268),
(10007, 'Sete', 230570),
(10012, 'Doze', 140650),
(10013, 'Treze', 231160),
(10014, 'Quatorze', 30665),
(10015, 'Quinze', 300670);

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionários`
--

CREATE TABLE `funcionários` (
  `MAT_FUNC` int(5) NOT NULL,
  `NOME_FUNC` char(40) NOT NULL,
  `DATANASC_FUNC` int(6) NOT NULL,
  `NASCI_FUNC` int(4) NOT NULL,
  `SEXO_FUNC` char(3) NOT NULL,
  `ESTADOCIVIL_FUNC` char(10) NOT NULL,
  `RG_FUNC` int(8) NOT NULL,
  `CIC_FUNC` int(11) NOT NULL,
  `END_FUNC` char(40) NOT NULL,
  `FONE_FUNC` int(11) NOT NULL,
  `DATAADM_FUNC` int(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `funcionários`
--

INSERT INTO `funcionários` (`MAT_FUNC`, `NOME_FUNC`, `DATANASC_FUNC`, `NASCI_FUNC`, `SEXO_FUNC`, `ESTADOCIVIL_FUNC`, `RG_FUNC`, `CIC_FUNC`, `END_FUNC`, `FONE_FUNC`, `DATAADM_FUNC`) VALUES
(10001, 'Funcionário Um', 2105, 2000, 'Fem', 'Solteiro', 12345678, 1472583691, 'Rua um', 1191234567, 80622),
(10002, 'Funcionário Dois', 405, 2001, 'MAS', 'Casado', 478569256, 1254785698, 'Rua dois', 1195455789, 60822),
(10003, 'Funcionário Três', 506, 2000, 'FEM', 'Divorciado', 455745898, 321524544, 'Rua três', 1197487457, 140522),
(10004, 'Funcionário Quatro', 809, 1999, 'Mas', 'Solteiro', 245874889, 1442687854, 'Rua quatro', 1198745522, 100422),
(10005, 'Funcionário Cinco', 1405, 1998, 'Mas', 'Casado', 478559895, 1459875975, 'Rua cinco', 1198784854, 170422),
(10006, 'Funcionário Seis', 1510, 1980, 'MAS', 'Casado', 154844487, 415449655, 'Rua seis', 1198874275, 200522),
(10007, 'Funcionário Sete', 406, 1985, 'FEM', 'Solteiro', 64646546, 454564748, 'Rua sete', 1197484685, 170422),
(10008, 'Funcionário Oito', 1409, 1983, 'MAS', 'Casado', 31454548, 499756795, 'Rua oito', 1198547784, 160322),
(10009, 'Funcionário Nove', 912, 2001, 'FEM', 'Solteiro', 65444547, 545454489, 'Rua nove', 1191454415, 140722),
(10010, 'Funcionário Dez', 708, 1998, 'FEM', 'Solteiro', 54548484, 485484444, 'Rua dez', 1192544887, 200322),
(10011, 'Funcionário Onze', 2506, 1996, 'MAS', 'Divorciado', 15465474, 654799988, 'Rua onze', 1196658784, 300322),
(10012, 'Funcionário Doze', 2411, 1996, 'MAS', 'Solteiro', 48464477, 977845774, 'Rua doze', 119655448, 280921),
(10013, 'Funcionário Treze', 1812, 1999, 'FEM', 'Solteiro', 48548487, 488644559, 'Rua treze', 1195874874, 100122),
(10014, 'Funcionário Quatorze', 2903, 2001, 'MAS', 'Divorciado', 41545454, 874846475, 'Rua quatorze', 1193625478, 200322),
(10015, 'Funcionário Quinze', 1005, 2002, 'MAS', 'Solteiro', 4988774, 987745874, 'Rua quinze', 1196554788, 200522);

-- --------------------------------------------------------

--
-- Estrutura da tabela `lotação`
--

CREATE TABLE `lotação` (
  `MAT_FUNC` int(5) NOT NULL,
  `CODDEP_LOT` int(6) NOT NULL,
  `DATAINICIO_LOT` int(6) NOT NULL,
  `DATAFIM_LOT` int(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `lotação`
--

INSERT INTO `lotação` (`MAT_FUNC`, `CODDEP_LOT`, `DATAINICIO_LOT`, `DATAFIM_LOT`) VALUES
(10001, 100001, 70122, 41222),
(10002, 100002, 120222, 120223),
(10003, 100003, 100322, 100323),
(10004, 100004, 100522, 100523),
(10005, 100005, 100522, 100524),
(10006, 100006, 210522, 210523),
(10007, 100007, 250522, 250523),
(10008, 100008, 140721, 140722),
(10009, 100009, 10319, 10323),
(10010, 100010, 80621, 80622),
(10011, 100011, 260421, 260422),
(10012, 100012, 280621, 280622),
(10013, 100013, 300320, 300323),
(10014, 100014, 141021, 141022),
(10015, 100015, 231019, 231022);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ocupação`
--

CREATE TABLE `ocupação` (
  `MAT_FUNC` int(5) NOT NULL,
  `CODCARGO_CARGO` int(6) NOT NULL,
  `DATAINICIO_OCU` int(6) NOT NULL,
  `DATAFIM_OCU` int(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `ocupação`
--

INSERT INTO `ocupação` (`MAT_FUNC`, `CODCARGO_CARGO`, `DATAINICIO_OCU`, `DATAFIM_OCU`) VALUES
(10001, 101, 120519, 120523),
(10002, 109, 200322, 200324),
(10003, 107, 170522, 170524),
(10004, 109, 140621, 140622),
(10005, 103, 200521, 200522),
(10006, 105, 120522, 121122),
(10007, 110, 130520, 130523),
(10008, 109, 100321, 103),
(10009, 104, 120519, 120523),
(10010, 110, 200322, 200324),
(10011, 103, 120519, 120523),
(10012, 102, 200322, 200324),
(10013, 106, 120519, 120523),
(10014, 104, 200322, 200324),
(10015, 108, 120519, 120523);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`CODCARGO_CARGO`);

--
-- Indexes for table `funcionários`
--
ALTER TABLE `funcionários`
  ADD PRIMARY KEY (`MAT_FUNC`);

--
-- Indexes for table `lotação`
--
ALTER TABLE `lotação`
  ADD PRIMARY KEY (`CODDEP_LOT`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cargos`
--
ALTER TABLE `cargos`
  MODIFY `CODCARGO_CARGO` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT for table `funcionários`
--
ALTER TABLE `funcionários`
  MODIFY `MAT_FUNC` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10016;
--
-- AUTO_INCREMENT for table `lotação`
--
ALTER TABLE `lotação`
  MODIFY `CODDEP_LOT` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100016;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
