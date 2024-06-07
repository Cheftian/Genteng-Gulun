-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2024 at 06:05 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `genteng`
--

-- --------------------------------------------------------

--
-- Table structure for table `kontak`
--

CREATE TABLE `kontak` (
  `id` int(11) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `instagram` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kontak`
--

INSERT INTO `kontak` (`id`, `alamat`, `email`, `no_telp`, `instagram`) VALUES
(1, 'Ds. Gulun, Kec. Maospati, Kab. Magetan, Jawa Timur, Indonesia (63392)', 'Gentenggulun@gmail.com', '+62 696 6984 6969', '@gentenggulun');

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE `pesan` (
  `id_pesan` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pesan` text NOT NULL,
  `waktu_pesan` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pesan`
--

INSERT INTO `pesan` (`id_pesan`, `nama`, `email`, `pesan`, `waktu_pesan`) VALUES
(1, 'Bagus Bojonegoro', 'Baboj123@gmail.com', 'Haloo min, boleh tanya\" sesuatu?', '2024-06-05 09:14:37'),
(2, 'Denny Caknan', 'dennikuy34@gmail.com', 'Min mau tanya, buat pasokan gentengnya bakal direstock setiap kapan ya? Terimakasih!!', '2024-06-05 09:29:19');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(10) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `panjang` decimal(10,2) DEFAULT NULL,
  `lebar` decimal(10,2) DEFAULT NULL,
  `jarak` decimal(10,2) DEFAULT NULL,
  `berat` decimal(10,2) DEFAULT NULL,
  `sudutmiring` decimal(10,2) DEFAULT NULL,
  `gambar` varchar(200) NOT NULL,
  `harga` int(11) NOT NULL,
  `status` enum('Tersedia','Pre-order') NOT NULL,
  `stok` int(11) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `gambar2` varchar(255) DEFAULT NULL,
  `gambar3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `nama_produk`, `deskripsi`, `panjang`, `lebar`, `jarak`, `berat`, `sudutmiring`, `gambar`, `harga`, `status`, `stok`, `kategori`, `gambar2`, `gambar3`) VALUES
(11, 'Genteng Ovale', 'Produk untuk atap ditaman-taman kecil pekarangan rumah. Dengan harga yang relatif murah serta kuat menjadikan produk ini menjadi best seller dari penjualan genteng kami.', 26.00, 16.00, 10.00, 1.00, 30.00, 'gambar/Ovale-1.jpg', 1000, 'Tersedia', 12000, 'Small Size', 'gambar/Ovale-2.jpg', 'gambar/Ovale-3.jpg'),
(12, 'Genteng Alto', 'Salah satu best seller dimana kualitas dan harga sepadan. Biasa digunakan sebagai atap rumah pada umumnya. Kualitas dapat dijamin terjaga hingga lebih dari 5 tahun penggunaan. Telah diuji oleh berbagai konsumen kami.', 23.00, 20.00, 24.00, 1.80, 30.00, 'gambar/Alto-1.jpg', 2500, 'Pre-order', 100, 'Small Size', 'gambar/Alto-2.jpg', 'gambar/Alto-3.jpg'),
(13, ' Genteng Fidesienne', 'Haha', 40.00, 26.00, 32.00, 3.30, 30.00, 'gambar/Fidesienne-1.jpg', 6000, 'Tersedia', 12, 'Medium Size', 'gambar/Fidesienne-2.jpg', 'gambar/Fidesienne-3.jpg'),
(14, 'Genteng Fossano', 'asd', 34.00, 33.00, 27.00, 3.40, 30.00, 'gambar/Fossano-1.jpg', 2500, 'Tersedia', 1253, 'Medium Size', 'gambar/Fossano-2.jpg', 'gambar/Fossano-3.jpg'),
(15, 'Genteng Maridional', 'asdasd', 41.00, 26.00, 35.10, 3.40, 30.00, 'gambar/Maridional-1.jpg', 5000, 'Tersedia', 12789, 'Medium Size', 'gambar/Maridional-2.jpg', 'gambar/Maridional-3.jpg'),
(17, 'Genteng Rustik', 'sakfdaksj', 26.50, 13.50, 10.00, 0.80, 30.00, 'gambar/Rustik-1.jpg', 6000, 'Tersedia', 12536, 'Small Size', 'gambar/Rustik-2.jpg', 'gambar/Rustik-3.jpg'),
(18, 'Genteng Morando', 'susy', 34.50, 26.00, 27.50, 2.40, 30.00, 'gambar/Morando-1.jpg', 2900, 'Tersedia', 2458, 'Small Size', 'gambar/Morando-2.jpg', 'gambar/Morando-3.jpg'),
(19, 'Genteng Marseilles', 'usy', 40.00, 21.00, 32.00, 33.00, 30.00, 'gambar/Marseilles-1.jpg', 7500, 'Tersedia', 560, 'Medium Size', 'gambar/Marseilles-2.jpg', 'gambar/Marseilles-3.jpg'),
(20, 'Genteng Romane Canal', 'uyyyyy', 44.50, 28.00, 38.00, 45.00, 20.00, 'gambar/Romane Canal-1.jpg', 9000, 'Tersedia', 230, 'Big Size', 'gambar/Romane Canal-2.jpg', 'gambar/Romane Canal-3.jpg'),
(21, 'Genteng Piatto', 'uhhhh', 40.00, 26.00, 32.00, 3.30, 30.00, 'gambar/Piatto-1.jpg', 7500, 'Tersedia', 445, 'Medium Size', 'gambar/Piatto-2.jpg', 'gambar/Piatto-3.jpg'),
(22, 'Genteng Romane 12', 'hmmmm', 45.00, 27.50, 37.70, 45.00, 20.00, 'gambar/Romane12-1.jpg', 8500, 'Tersedia', 2457, 'Big Size', 'gambar/Romane12-2.jpg', 'gambar/Romane12-3.jpg'),
(23, 'Genteng Romane Max', 'huuuu', 45.40, 28.00, 39.00, 43.80, 20.00, 'gambar/RomaneMax-1.jpg', 8500, 'Tersedia', 560, 'Big Size', 'gambar/RomaneMax-2.jpg', 'gambar/RomaneMax-3.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id_pesan`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id_pesan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
