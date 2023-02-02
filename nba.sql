-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30-Jan-2023 às 15:42
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `nba`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `games`
--

CREATE TABLE `games` (
  `GAME_DATE_EST` date DEFAULT NULL,
  `SEASON` int(11) DEFAULT NULL,
  `HOME_TEAM_WINS` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `games_details`
--

CREATE TABLE `games_details` (
  `GAME_ID` int(11) DEFAULT NULL,
  `TEAM_ID` int(11) DEFAULT NULL,
  `TEAM_ABBREVIATION` varchar(255) DEFAULT NULL,
  `TEAM_CITY` varchar(255) DEFAULT NULL,
  `PLAYER_ID` int(11) DEFAULT NULL,
  `PLAYER_NAME` varchar(255) DEFAULT NULL,
  `START_POSITION` varchar(255) DEFAULT NULL,
  `MI` int(11) DEFAULT NULL,
  `PTS` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `players`
--

CREATE TABLE `players` (
  `PLAYER_NAME` varchar(255) DEFAULT NULL,
  `TEAM_ID` int(11) DEFAULT NULL,
  `PLAYER_ID` int(11) DEFAULT NULL,
  `SEASON` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ranking`
--

CREATE TABLE `ranking` (
  `TEAM_ID` int(11) DEFAULT NULL,
  `LEAGUE_ID` int(11) DEFAULT NULL,
  `SEASON_ID` date DEFAULT NULL,
  `STANDINGSDATE` date DEFAULT NULL,
  `CONFERENCE` enum('W','E') DEFAULT NULL,
  `TEAM` varchar(55) DEFAULT NULL,
  `G` int(11) DEFAULT NULL,
  `W` int(11) DEFAULT NULL,
  `L` int(11) DEFAULT NULL,
  `W_PCT` int(11) DEFAULT NULL,
  `HOME_RECORD` int(11) DEFAULT NULL,
  `ROAD_RECORD` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `teams`
--

CREATE TABLE `teams` (
  `LEAGUE_ID` int(11) DEFAULT NULL,
  `MIN_YEAR` date DEFAULT NULL,
  `MAX_YEAR` date DEFAULT NULL,
  `ABBREVIATION` varchar(55) DEFAULT NULL,
  `NICKNAME` varchar(55) DEFAULT NULL,
  `CITY` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
