-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           8.0.30 - MySQL Community Server - GPL
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Copiando estrutura para tabela agendamento.agenda
CREATE TABLE IF NOT EXISTS `agenda` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_tecnico` int DEFAULT NULL,
  `dia` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `nome_tecnico` varchar(50) DEFAULT NULL,
  `id_assunto` int DEFAULT NULL,
  `nome_assunto` varchar(50) DEFAULT NULL,
  `observacao` varchar(555) DEFAULT NULL,
  `ativo` char(2) DEFAULT NULL,
  `nome_cliente` varchar(50) DEFAULT NULL,
  `telefone_cliente` varchar(50) DEFAULT NULL,
  `pai` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela agendamento.agenda: ~13 rows (aproximadamente)
REPLACE INTO `agenda` (`id`, `id_tecnico`, `dia`, `hora`, `nome_tecnico`, `id_assunto`, `nome_assunto`, `observacao`, `ativo`, `nome_cliente`, `telefone_cliente`, `pai`) VALUES
	(141, 1, '2024-01-09', '08:30:00', 'tecnico', 1, 'Treinamento', 'teste', 'a', 'teste', '(14) 99999-9999', 0),
	(142, 1, '2024-01-09', '09:00:00', 'tecnico', 1, 'Treinamento', 'teste', 'x', 'teste', '(14) 99999-9999', 141),
	(143, 1, '2024-01-17', '09:30:00', 'tecnico', 1, 'Treinamento', 'teste', 'a', 'teste', '(14) 99999-9999', 0),
	(144, 1, '2024-01-17', '10:00:00', 'tecnico', 1, 'Treinamento', 'teste', 'x', 'teste', '(14) 99999-9999', 143),
	(145, 1, '2024-01-09', '09:30:00', 'tecnico', 1, 'Treinamento', 'teste', 'a', 'teste', '(14) 99999-9999', 0),
	(146, 1, '2024-01-09', '10:00:00', 'tecnico', 1, 'Treinamento', 'teste', 'x', 'teste', '(14) 99999-9999', 145),
	(147, 1, '2024-01-09', '10:30:00', 'tecnico', 1, 'Treinamento', 'teste', 'a', 'teste', '(14) 99999-9999', 0),
	(148, 1, '2024-01-09', '11:00:00', 'tecnico', 1, 'Treinamento', 'teste', 'x', 'teste', '(14) 99999-9999', 147),
	(149, 1, '2024-01-09', '11:30:00', 'tecnico', 1, 'Treinamento', '1', 'a', 'teste', '(14) 99999-9999', 0),
	(150, 1, '2024-01-09', '12:00:00', 'tecnico', 1, 'Treinamento', '1', 'x', 'teste', '(14) 99999-9999', 149),
	(151, 1, '2024-01-09', '12:30:00', 'tecnico', 1, 'Treinamento', 'teste', 'a', 'teste', '(14) 99999-9999', 0),
	(152, 1, '2024-01-09', '13:00:00', 'tecnico', 1, 'Treinamento', 'teste', 'x', 'teste', '(14) 99999-9999', 151),
	(153, 1, '2024-01-09', '14:00:00', 'tecnico', 2, 'Duvida', 'teste', 'a', 'teste', '(14) 99999-9999', 0);

-- Copiando estrutura para tabela agendamento.assunto
CREATE TABLE IF NOT EXISTS `assunto` (
  `id_assunto` int NOT NULL AUTO_INCREMENT,
  `nome_assunto` varchar(50) DEFAULT NULL,
  `tempo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_assunto`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela agendamento.assunto: ~2 rows (aproximadamente)
REPLACE INTO `assunto` (`id_assunto`, `nome_assunto`, `tempo`) VALUES
	(1, 'Treinamento', '60'),
	(2, 'Duvida', '30');

-- Copiando estrutura para tabela agendamento.cliente
CREATE TABLE IF NOT EXISTS `cliente` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nome_cliente` varchar(50) DEFAULT NULL,
  `email_cliente` varchar(120) DEFAULT NULL,
  `telefone_cliente` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela agendamento.cliente: ~4 rows (aproximadamente)
REPLACE INTO `cliente` (`id_cliente`, `nome_cliente`, `email_cliente`, `telefone_cliente`) VALUES
	(1, 'cliente1', 'teste@teste.com', '(14) 97777-7777'),
	(2, 'teste2', NULL, '(14) 96666-6666'),
	(3, 'cliente2', NULL, '(14) 98888-8888'),
	(4, 'teste', NULL, '(14) 99999-9999');

-- Copiando estrutura para tabela agendamento.feedback
CREATE TABLE IF NOT EXISTS `feedback` (
  `id_feedback` int NOT NULL AUTO_INCREMENT,
  `nome_cliente` varchar(50) DEFAULT NULL,
  `telefone_cliente` varchar(50) DEFAULT NULL,
  `avaliacao` int DEFAULT NULL,
  PRIMARY KEY (`id_feedback`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela agendamento.feedback: ~58 rows (aproximadamente)
REPLACE INTO `feedback` (`id_feedback`, `nome_cliente`, `telefone_cliente`, `avaliacao`) VALUES
	(4, 'teste', '(14)99999-9999', 5),
	(5, 'teste', '(14)99999-9999', 5),
	(6, 'teste', '(14)99999-9999', 5),
	(7, 'teste', '(14)99999-9999', 5),
	(8, 'teste', '(14)99999-9999', 5),
	(9, 'teste', '(14)99999-9999', 5),
	(10, 'teste', '(14)99999-9999', 5),
	(11, 'teste', '(14)99999-9999', 5),
	(12, 'teste', '(14)99999-9999', 4),
	(13, 'teste', '(14)99999-9999', 4),
	(14, 'teste', '(14)99999-9999', 5),
	(15, 'teste', '(14)99999-9999', 3),
	(16, 'teste', '(14)99999-9999', 5),
	(17, 'teste', '(14)99999-9999', 5),
	(18, 'teste', '(14)99999-9999', 5),
	(19, 'teste', '(14)99999-9999', 5),
	(20, 'teste', '(14)99999-9999', 5),
	(21, 'teste', '(14)99999-9999', 5),
	(22, 'teste', '(14)99999-9999', 5),
	(23, 'teste', '(14)99999-9999', 5),
	(24, 'teste', '(14)99999-9999', 4),
	(25, 'teste', '(14)99999-9999', 5),
	(26, 'teste', '(14)99999-9999', 4),
	(27, 'teste', '(14)99999-9999', 5),
	(28, 'teste', '(14)99999-9999', 5),
	(29, 'teste', '(14)99999-9999', 5),
	(30, 'teste', '(14)99999-9999', 5),
	(31, 'teste', '(14)99999-9999', 4),
	(32, 'teste', '(14)99999-9999', 5),
	(33, 'teste', '(14)99999-9999', 4),
	(34, 'teste', '(14)99999-9999', 5),
	(35, 'teste', '(14)99999-9999', 0),
	(36, 'teste', '(14)99999-9999', 5),
	(37, 'teste', '(14)99999-9999', 0),
	(38, 'teste', '(14)99999-9999', 5),
	(39, 'teste', '(14)99999-9999', 5),
	(40, 'teste', '(14)99999-9999', 3),
	(41, 'teste', '(14)99999-9999', 5),
	(42, 'teste', '(14)99999-9999', 5),
	(43, 'teste', '(14)99999-9999', 0),
	(44, 'teste', '(14)99999-9999', 0),
	(45, 'teste', '(14)99999-9999', 5),
	(46, 'teste', '(14)99999-9999', 5),
	(47, 'teste', '(14)99999-9999', 5),
	(48, 'teste', '(14)99999-9999', 5),
	(49, 'teste', '(14)99999-9999', 5),
	(50, 'teste', '(14)99999-9999', 5),
	(51, 'teste', '(14)99999-9999', 4),
	(52, 'teste', '(14)99999-9999', 5),
	(53, 'teste', '(14)99999-9999', 5),
	(54, 'teste', '(14)99999-9999', 5),
	(55, 'teste', '(14)99999-9999', 5),
	(56, 'teste', '(14)99999-9999', 5),
	(57, 'teste', '(14)99999-9999', 5),
	(58, 'teste', '(14)99999-9999', 5),
	(59, 'teste', '(14)99999-9999', 4),
	(60, 'teste', '(14)99999-9999', 0),
	(61, 'teste', '(14)99999-9999', 0);

-- Copiando estrutura para tabela agendamento.horario
CREATE TABLE IF NOT EXISTS `horario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `hora` time NOT NULL,
  `id_tecnico` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela agendamento.horario: ~40 rows (aproximadamente)
REPLACE INTO `horario` (`id`, `hora`, `id_tecnico`) VALUES
	(1, '08:30:00', 2),
	(2, '09:00:00', 2),
	(3, '09:30:00', 2),
	(4, '10:00:00', 2),
	(5, '10:30:00', 2),
	(6, '11:00:00', 2),
	(7, '11:30:00', 2),
	(8, '12:00:00', 2),
	(9, '12:30:00', 2),
	(10, '13:00:00', 2),
	(11, '13:30:00', 2),
	(12, '14:00:00', 2),
	(13, '14:30:00', 2),
	(14, '15:00:00', 2),
	(15, '15:30:00', 2),
	(16, '16:00:00', 2),
	(17, '16:30:00', 2),
	(18, '17:00:00', 2),
	(19, '17:30:00', 2),
	(20, '18:00:00', 2),
	(21, '08:30:00', 1),
	(22, '09:00:00', 1),
	(23, '09:30:00', 1),
	(24, '10:00:00', 1),
	(25, '10:30:00', 1),
	(26, '11:00:00', 1),
	(27, '11:30:00', 1),
	(28, '12:00:00', 1),
	(29, '12:30:00', 1),
	(30, '13:00:00', 1),
	(31, '13:30:00', 1),
	(32, '14:00:00', 1),
	(33, '14:30:00', 1),
	(34, '15:00:00', 1),
	(35, '15:30:00', 1),
	(36, '16:00:00', 1),
	(37, '16:30:00', 1),
	(38, '17:00:00', 1),
	(39, '17:30:00', 1),
	(40, '18:00:00', 1);

-- Copiando estrutura para tabela agendamento.setor
CREATE TABLE IF NOT EXISTS `setor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `profissionais` varchar(50) DEFAULT NULL,
  `ativa` char(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela agendamento.setor: ~2 rows (aproximadamente)
REPLACE INTO `setor` (`id`, `nome`, `profissionais`, `ativa`) VALUES
	(1, 'Suporte ERP', '1,2,3,4,5', 's'),
	(2, 'Suporte sistema', '6,7,8,9', 's');

-- Copiando estrutura para tabela agendamento.tecnico
CREATE TABLE IF NOT EXISTS `tecnico` (
  `id_tecnico` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `setor` varchar(50) DEFAULT NULL,
  `ativa` char(2) DEFAULT NULL,
  `email_tecnico` varchar(55) NOT NULL,
  `senha_tecnico` varchar(55) NOT NULL,
  PRIMARY KEY (`id_tecnico`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela agendamento.tecnico: ~3 rows (aproximadamente)
REPLACE INTO `tecnico` (`id_tecnico`, `nome`, `setor`, `ativa`, `email_tecnico`, `senha_tecnico`) VALUES
	(1, 'tecnico1', '1', 's', 'tecnico1@tecnico.com', '123'),
	(2, 'tecnico', '1', 's', 'tecnico@tecnico', '123'),
	(3, 'tecnico2', '1', 's', 'tecnico2@tecnico.com', '123');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
