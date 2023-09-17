-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2023 at 06:00 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nasabah_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `direktur_bank`
--

CREATE TABLE `direktur_bank` (
  `id_direktur` int(20) NOT NULL,
  `nama_direktur` varchar(50) NOT NULL,
  `no_telp_direktur` varchar(20) NOT NULL,
  `alamat_direktur` varchar(100) NOT NULL,
  `email_direktur` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `direktur_bank`
--

INSERT INTO `direktur_bank` (`id_direktur`, `nama_direktur`, `no_telp_direktur`, `alamat_direktur`, `email_direktur`) VALUES
(556677, 'direktur01', '082334556677', 'Jl. Dir 01', 'direktur01@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `direktur_bank`
--
ALTER TABLE `direktur_bank`
  ADD PRIMARY KEY (`id_direktur`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
