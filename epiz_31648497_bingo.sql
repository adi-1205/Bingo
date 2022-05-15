-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql102.epizy.com
-- Generation Time: May 13, 2022 at 03:17 AM
-- Server version: 10.3.27-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_31648497_bingo`
--

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `gid` int(11) NOT NULL,
  `player1id` int(11) NOT NULL,
  `player2id` int(11) NOT NULL,
  `gameid` int(10) NOT NULL,
  `last_move` int(11) DEFAULT NULL,
  `turn` varchar(2) DEFAULT NULL,
  `last_act_game` datetime DEFAULT NULL,
  `p1status` varchar(20) NOT NULL DEFAULT 'notready',
  `p2status` varchar(20) NOT NULL DEFAULT 'notready',
  `p1act` datetime DEFAULT NULL,
  `p2act` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`gid`, `player1id`, `player2id`, `gameid`, `last_move`, `turn`, `last_act_game`, `p1status`, `p2status`, `p1act`, `p2act`) VALUES
(74, 2, 1, 519159091, 8, '1', '2022-05-09 22:49:58', 'winner', 'ready', '2022-05-09 22:49:58', '2022-05-09 22:49:53');

-- --------------------------------------------------------

--
-- Table structure for table `matches`
--

CREATE TABLE `matches` (
  `mid` int(11) NOT NULL,
  `p1` int(11) NOT NULL,
  `p2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `ufname` varchar(20) NOT NULL,
  `ulname` varchar(20) NOT NULL,
  `uemail` varchar(30) NOT NULL,
  `upassword` varchar(40) NOT NULL,
  `last_act` datetime DEFAULT NULL,
  `is_available` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `ufname`, `ulname`, `uemail`, `upassword`, `last_act`, `is_available`) VALUES
(1, 'Aditya', 'Vyas', 'aditya1205', '900150983cd24fb0d6963f7d28e17f72', '2022-05-09 22:49:53', 0),
(2, 'Gunjan', 'Vyas', 'gunjan2001', '900150983cd24fb0d6963f7d28e17f72', '2022-05-09 22:49:58', 0),
(3, 'Foram', 'Joshi', 'foram1512', '900150983cd24fb0d6963f7d28e17f72', '2022-05-03 23:43:07', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`gid`);

--
-- Indexes for table `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `game`
--
ALTER TABLE `game`
  MODIFY `gid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `matches`
--
ALTER TABLE `matches`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
