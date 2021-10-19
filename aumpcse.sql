-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2021 at 06:38 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aumpcse`
--

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `image_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image_name`) VALUES
(1, 'b.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `enroll` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `mode` varchar(20) NOT NULL,
  `section` varchar(10) NOT NULL,
  `Vaccinated` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`enroll`, `name`, `email`, `mode`, `section`, `Vaccinated`) VALUES
('A60501586', 'Student1', 'Student1@gmail.com', 'Online', 'A', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `email`, `password`) VALUES
('', '', ''),
('asdf', 'a@gmail.com', '1561'),
('aasdfsdasdff', 'aasffdfd@gmail.com', 'as'),
('Prashant Goswami', 'adsfa@gmail.com', 'asdf'),
('asdf', 'as@gmail.com', 'asdfasd'),
('asdf', 'as@gmasdfil.com', 'asdfasd'),
('asasddf', 'asasasddf@gmasdfil.com', 'asdfasd'),
('asdf', 'asasdf@gmasdfil.com', 'asfd'),
('asdf', 'asd@gmail.com', 'asdf'),
('Prashant Goswami', 'asdf@gmail.com', 'adsfasd'),
('adsfasdf', 'asdsd165@gmail.com', '1651'),
('aasdfsdasdff', 'assasdffdfd@gmail.com', 'asd'),
('asdasdff', 'assdfd@gmail.com', 'asdf'),
('Prashant Goswami', 'dsfa@gmail.com', 'asdf'),
('Prashant Goswami', 'prashant.teachies@gmail.com', 'asdf'),
('sdfa', 'sa@gmail.com', '54654165'),
('Singh gupta', 'Sing@gmail.com', '45165'),
('YoYo', 'YOYO@gmail.com', '12345'),
('asasddf', 'zasddf@gmasdfil.com', 'fasdfas'),
('dfs', 'zx@gmail.com', 'adsfasdf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
