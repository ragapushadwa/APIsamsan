-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2020 at 04:18 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `delivery`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kurir`
--

CREATE TABLE `kurir` (
  `id_kurir` int(11) NOT NULL,
  `nama_kurir` varchar(255) DEFAULT NULL,
  `no_hp_kurir` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `penerima`
--

CREATE TABLE `penerima` (
  `id_penerima` int(11) NOT NULL,
  `nama_penerima` varchar(255) DEFAULT NULL,
  `no_hp_penerima` int(11) DEFAULT NULL,
  `alamat_penerima` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penerima`
--

INSERT INTO `penerima` (`id_penerima`, `nama_penerima`, `no_hp_penerima`, `alamat_penerima`) VALUES
(1, 'Dalmi', NULL, 'Gambir,Jakarta Pusat'),
(2, 'Riri', NULL, 'Senen,Jakarta Pusat'),
(3, 'Nagita', NULL, 'Mampang, Jakarta Selatan'),
(4, 'Rani', NULL, 'Senen,Jakarta Pusat'),
(5, 'Lisa', NULL, 'Kwitang, Jakarta Pusat'),
(6, 'Fina', NULL, 'Tangerang'),
(7, 'Sani', NULL, 'Cikini, Jakarta Pusat'),
(8, 'Adi', NULL, 'Bekasi'),
(9, 'Nana', NULL, 'Depok'),
(10, 'Via', NULL, 'Cikini, Jakarta Pusat');

-- --------------------------------------------------------

--
-- Table structure for table `pengirim`
--

CREATE TABLE `pengirim` (
  `id_pengirim` int(11) NOT NULL,
  `nama_pengirim` varchar(255) DEFAULT NULL,
  `alamat_pengirim` varchar(255) DEFAULT NULL,
  `no_hp_pengirim` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengirim`
--

INSERT INTO `pengirim` (`id_pengirim`, `nama_pengirim`, `alamat_pengirim`, `no_hp_pengirim`) VALUES
(1, 'Dosan', NULL, NULL),
(2, 'Rina', NULL, NULL),
(3, 'Rafi', NULL, NULL),
(4, 'Rara', NULL, NULL),
(5, 'Jeni', NULL, NULL),
(6, 'Fani', NULL, NULL),
(7, 'Tisa', NULL, NULL),
(8, 'Edo', NULL, NULL),
(9, 'Kiki', NULL, NULL),
(10, 'Novi', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_pengirim` int(11) DEFAULT NULL,
  `id_penerima` int(11) DEFAULT NULL,
  `id_kurir` int(11) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `harga` varchar(255) NOT NULL,
  `status_pengiriman` varchar(255) DEFAULT NULL,
  `alamat_barang_dikirim` varchar(255) DEFAULT NULL,
  `waktu_pengiriman` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_pengirim`, `id_penerima`, `id_kurir`, `id`, `harga`, `status_pengiriman`, `alamat_barang_dikirim`, `waktu_pengiriman`) VALUES
(1, 1, 1, NULL, NULL, '20000', 'Delivered', NULL, '2020-11-01'),
(2, 2, 2, NULL, NULL, '10000', 'Delivered', NULL, '2020-11-01'),
(3, 3, 3, NULL, NULL, '15000', 'Delivered', NULL, '2020-11-03'),
(4, 4, 4, NULL, NULL, '30000', 'Delivered', NULL, '2020-11-03'),
(5, 5, 5, NULL, NULL, '50000', 'Delivered', NULL, '2020-11-04'),
(6, 6, 6, NULL, NULL, '40000', 'OnDelivery', NULL, '2020-11-05'),
(7, 7, 7, NULL, NULL, '10000', 'Delivered', NULL, '2020-11-10'),
(8, 8, 8, NULL, NULL, '50000', 'OnDelivery', NULL, '2020-11-11'),
(9, 9, 9, NULL, NULL, '45000', 'OnProgress', NULL, '2020-11-13'),
(10, 10, 10, NULL, NULL, '15000', 'OnProgress', NULL, '2020-11-15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kurir`
--
ALTER TABLE `kurir`
  ADD PRIMARY KEY (`id_kurir`);

--
-- Indexes for table `penerima`
--
ALTER TABLE `penerima`
  ADD PRIMARY KEY (`id_penerima`);

--
-- Indexes for table `pengirim`
--
ALTER TABLE `pengirim`
  ADD PRIMARY KEY (`id_pengirim`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id` (`id`),
  ADD KEY `id_penerima` (`id_penerima`),
  ADD KEY `id_pengirim` (`id_pengirim`),
  ADD KEY `id_kurir` (`id_kurir`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kurir`
--
ALTER TABLE `kurir`
  MODIFY `id_kurir` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penerima`
--
ALTER TABLE `penerima`
  MODIFY `id_penerima` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pengirim`
--
ALTER TABLE `pengirim`
  MODIFY `id_pengirim` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id`) REFERENCES `admin` (`id`),
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`id_penerima`) REFERENCES `penerima` (`id_penerima`),
  ADD CONSTRAINT `transaksi_ibfk_3` FOREIGN KEY (`id_pengirim`) REFERENCES `pengirim` (`id_pengirim`),
  ADD CONSTRAINT `transaksi_ibfk_4` FOREIGN KEY (`id_kurir`) REFERENCES `kurir` (`id_kurir`);

COMMIT;





/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;