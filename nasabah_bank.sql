-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2023 at 03:37 PM
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
-- Table structure for table `customer_service`
--

CREATE TABLE `customer_service` (
  `id_cs` int(20) NOT NULL,
  `nama_cs` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_service`
--

INSERT INTO `customer_service` (`id_cs`, `nama_cs`) VALUES
(33344, 'cs01');

-- --------------------------------------------------------

--
-- Table structure for table `direktur_bank`
--

CREATE TABLE `direktur_bank` (
  `id_direktur` int(20) NOT NULL,
  `nama_direktur` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `direktur_bank`
--

INSERT INTO `direktur_bank` (`id_direktur`, `nama_direktur`) VALUES
(556677, 'direktur01');

-- --------------------------------------------------------

--
-- Table structure for table `nasabah`
--

CREATE TABLE `nasabah` (
  `id_nasabah` int(20) NOT NULL,
  `nik` int(20) NOT NULL,
  `no_rekening` int(20) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `pekerjaan` varchar(20) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nasabah`
--

INSERT INTO `nasabah` (`id_nasabah`, `nik`, `no_rekening`, `nama_lengkap`, `no_telp`, `pekerjaan`, `tanggal_lahir`, `alamat`) VALUES
(11111, 123456, 102030, 'Riolan Pratama', '08828384948', 'Mahasiswa', '2004-07-01', 'Jl. Ninjaku 07');

-- --------------------------------------------------------

--
-- Table structure for table `rekening`
--

CREATE TABLE `rekening` (
  `no_rekening` int(20) NOT NULL,
  `jenis_rekening` enum('tabungan','giro','deposito') NOT NULL,
  `saldo` int(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rekening`
--

INSERT INTO `rekening` (`no_rekening`, `jenis_rekening`, `saldo`) VALUES
(102030, 'tabungan', 1500000);

-- --------------------------------------------------------

--
-- Table structure for table `teller`
--

CREATE TABLE `teller` (
  `id_teller` int(20) NOT NULL,
  `nama_teller` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teller`
--

INSERT INTO `teller` (`id_teller`, `nama_teller`) VALUES
(112233, 'teller01');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `kode_transaksi` int(20) NOT NULL,
  `no_rekening` int(2) NOT NULL,
  `jenis_transaksi` enum('penarikan uang','setoran uang','transfer uang') NOT NULL,
  `jumlah_transaksi` int(20) NOT NULL,
  `tanggal_transaksi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`kode_transaksi`, `no_rekening`, `jenis_transaksi`, `jumlah_transaksi`, `tanggal_transaksi`) VALUES
(203040, 102030, 'penarikan uang', 2, '2023-09-16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer_service`
--
ALTER TABLE `customer_service`
  ADD PRIMARY KEY (`id_cs`);

--
-- Indexes for table `direktur_bank`
--
ALTER TABLE `direktur_bank`
  ADD PRIMARY KEY (`id_direktur`);

--
-- Indexes for table `nasabah`
--
ALTER TABLE `nasabah`
  ADD PRIMARY KEY (`id_nasabah`),
  ADD UNIQUE KEY `nik` (`nik`),
  ADD UNIQUE KEY `no_rekening` (`no_rekening`);

--
-- Indexes for table `rekening`
--
ALTER TABLE `rekening`
  ADD PRIMARY KEY (`no_rekening`);

--
-- Indexes for table `teller`
--
ALTER TABLE `teller`
  ADD PRIMARY KEY (`id_teller`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`kode_transaksi`),
  ADD UNIQUE KEY `no_rekening` (`no_rekening`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
