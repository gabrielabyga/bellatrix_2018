-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 29-Out-2018 às 17:25
-- Versão do servidor: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bd_bellatrix`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `comenta`
--

CREATE TABLE `comenta` (
  `fk_posts_Cod_post` int(11) DEFAULT NULL,
  `fk_usuario_Id` int(11) DEFAULT NULL,
  `data_com` date DEFAULT NULL,
  `hora` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `imagens`
--

CREATE TABLE `imagens` (
  `titulo_imagem` varchar(100) DEFAULT NULL,
  `caminho_imagem` blob,
  `Cod_imagem` int(11) NOT NULL,
  `descimagem` varchar(300) DEFAULT NULL,
  `fk_posts_Cod_post` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `posts`
--

CREATE TABLE `posts` (
  `Cod_post` int(11) NOT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `descricao` varchar(300) DEFAULT NULL,
  `texto_post` varchar(8000) DEFAULT NULL,
  `fk_tema_post_id_tema` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tema_post`
--

CREATE TABLE `tema_post` (
  `desc_tema` varchar(300) DEFAULT NULL,
  `id_tema` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `Login_usu` varchar(100) DEFAULT NULL,
  `Senha_usu` varchar(100) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `Nome` varchar(100) DEFAULT NULL,
  `Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comenta`
--
ALTER TABLE `comenta`
  ADD KEY `FK_comenta_1` (`fk_posts_Cod_post`),
  ADD KEY `FK_comenta_2` (`fk_usuario_Id`);

--
-- Indexes for table `imagens`
--
ALTER TABLE `imagens`
  ADD PRIMARY KEY (`Cod_imagem`),
  ADD KEY `FK_imagens_2` (`fk_posts_Cod_post`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`Cod_post`),
  ADD KEY `FK_posts_2` (`fk_tema_post_id_tema`);

--
-- Indexes for table `tema_post`
--
ALTER TABLE `tema_post`
  ADD PRIMARY KEY (`id_tema`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Id`);

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `comenta`
--
ALTER TABLE `comenta`
  ADD CONSTRAINT `FK_comenta_1` FOREIGN KEY (`fk_posts_Cod_post`) REFERENCES `posts` (`Cod_post`),
  ADD CONSTRAINT `FK_comenta_2` FOREIGN KEY (`fk_usuario_Id`) REFERENCES `usuario` (`Id`);

--
-- Limitadores para a tabela `imagens`
--
ALTER TABLE `imagens`
  ADD CONSTRAINT `FK_imagens_2` FOREIGN KEY (`fk_posts_Cod_post`) REFERENCES `posts` (`Cod_post`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `FK_posts_2` FOREIGN KEY (`fk_tema_post_id_tema`) REFERENCES `tema_post` (`id_tema`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
