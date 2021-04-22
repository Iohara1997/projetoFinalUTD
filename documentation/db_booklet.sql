-- phpMyAdmin SQL Dump
-- version 4.6.5.1deb3+deb.cihar.com~precise.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 19/12/2019 às 09:11
-- Versão do servidor: 5.6.36
-- Versão do PHP: 7.1.1-1+deb.sury.org~precise+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_booklet`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_notes`
--

CREATE TABLE `tb_notes` (
  `id_note` int(11) NOT NULL,
  `note_value` float(6,2) DEFAULT NULL,
  `note_desc` varchar(255) DEFAULT NULL,
  `note_date` date DEFAULT NULL,
  `note_created_in` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_profiles`
--

CREATE TABLE `tb_profiles` (
  `id_profile` int(1) NOT NULL,
  `profile_name` varchar(20) NOT NULL,
  `profile_desc` varchar(255) NOT NULL,
  `profile_page` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tb_profiles`
--

INSERT INTO `tb_profiles` (`id_profile`, `profile_name`, `profile_desc`, `profile_page`) VALUES
(1, 'Administrador', 'Admin da Poha Toda', 'admin.php'),
(2, 'Funcionário', 'Pião', 'func.php'),
(3, 'Cliente', 'O cara mais chato de todos', 'client.php'),
(4, 'Cliente', 'O cara mais chato de todos', 'client.php'),
(5, 'Super Admin', 'Caf&eacute;, &Aacute;gua', 'super_admin.php'),
(6, 'Super Admin 2', 'Caf&eacute;, &Aacute;gua', 'super_admin.php'),
(7, 'Super Admin 3', 'CafÃƒÂ©, ÃƒÂgua', 'super_admin.php'),
(8, 'Super Admin 4', 'Café, Água', 'super_admin.php');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_users`
--

CREATE TABLE `tb_users` (
  `id_user` int(11) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `user_birth` date DEFAULT NULL,
  `user_cpf` varchar(25) DEFAULT NULL,
  `user_phone` varchar(25) DEFAULT NULL,
  `user_cellphone` varchar(25) DEFAULT NULL,
  `user_address` varchar(200) DEFAULT NULL,
  `user_limit` int(11) DEFAULT NULL,
  `user_created_in` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `profile_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tb_users`
--

INSERT INTO `tb_users` (`id_user`, `user_name`, `user_email`, `user_password`, `user_birth`, `user_cpf`, `user_phone`, `user_cellphone`, `user_address`, `user_limit`, `user_created_in`, `profile_id`) VALUES
(1, 'Anthony', 'anthony@email.com', '$2y$10$5Ac.tC/syFSa.dOvpdaryOkIRTBzVoaP/laSW9MLU4o1Q9av6Rb5m', '2019-12-01', '123.123.123-00', '(85) 3099-0000', '(85) 99990-0001', 'Rua Bem Alí', 0, '2019-12-18 13:42:21', 1),
(2, 'Pattricia da Silva de Moura', 'paty@email.com', '$2y$10$cBynHBLrsabx1rCgqQsxvuo4QBZSFRhY6G6On9L/39wSG0i7awdUO', '2001-01-01', '12312312312321', '(85) 3099-0268', '213123213132', 'Rua Bem AlÃ­, 23', NULL, '2019-12-18 13:45:32', 2);

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `tb_notes`
--
ALTER TABLE `tb_notes`
  ADD PRIMARY KEY (`id_note`);

--
-- Índices de tabela `tb_profiles`
--
ALTER TABLE `tb_profiles`
  ADD PRIMARY KEY (`id_profile`);

--
-- Índices de tabela `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `user_email` (`user_email`),
  ADD UNIQUE KEY `user_cpf` (`user_cpf`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `tb_notes`
--
ALTER TABLE `tb_notes`
  MODIFY `id_note` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `tb_profiles`
--
ALTER TABLE `tb_profiles`
  MODIFY `id_profile` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de tabela `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
