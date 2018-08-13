-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 13, 2018 at 06:59 PM
-- Server version: 10.1.23-MariaDB-9+deb9u1
-- PHP Version: 7.0.30-0+deb9u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokobuku`
--

-- --------------------------------------------------------

--
-- Table structure for table `api_users`
--

CREATE TABLE `api_users` (
  `email` varchar(100) NOT NULL,
  `api_key` varchar(100) NOT NULL,
  `hit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `api_users`
--

INSERT INTO `api_users` (`email`, `api_key`, `hit`) VALUES
('dian@petanikode.com', '123', 2);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `sinopsis` text NOT NULL,
  `cover` varchar(255) NOT NULL DEFAULT 'default_cover.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `title`, `author`, `sinopsis`, `cover`) VALUES
(1, 'Belajar Pemrograman PHP dari Nol Hingga Mahir', 'Muhar Dian', 'Buku ini membahas tentang tutorial step by step pemrograman php dari awal hingga membuat aplikasi web.', 'default_cover.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `api_users`
--
ALTER TABLE `api_users`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `api_key` (`api_key`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
