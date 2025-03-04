-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2025 at 07:44 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `id_user` varchar(25) NOT NULL,
  `id_invoice` varchar(30) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(255) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Triggers `cart`
--
DELIMITER $$
CREATE TRIGGER `pesanan_penjualan` AFTER INSERT ON `cart` FOR EACH ROW BEGIN
	UPDATE product SET stok = stok-NEW.jumlah
    WHERE id_brg = NEW.id_brg;
    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `kategori` varchar(60) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(4) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id_brg`, `nama_brg`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(7, 'Optical Power Meter (OPM)', 'optical power meter alat untuk mengukur redaman kabel fiber optic', 'Electronic', 75000, 4, 'opm.jpg'),
(8, 'LAN tester', 'alat untuk mengecek kabel lan', 'Electronic', 40000, 4, 'lantester.png'),
(9, 'Kabel Fiber Optic 150meter', 'kabel FO 150m freeconnector', 'Electronic', 150000, 10, 'fo1.jpg'),
(10, 'Kabel LAN 305meter cat 5 e', 'Kabel LAN spectra 305meter cat 5 e', 'Electronic', 350000, 6, 'lan1.jpg'),
(11, 'MIKROTIK RB750Gr3 (hEX) Gigabit ROUTER MIKROTIK RB750 GR3 HEX', 'HEX adalah produk routerboard penerus dari seri RB750GL yang kecil tetapi memiliki spesifikasi hardware yang banyak cocok diperuntukkan bagi penggunaan SOHO. Memiliki 5 buah port gigabit ethernet 10/100/1000, dengan prosesor baru MediaTek 2 Core - 880Mhz.', 'Electronic', 990000, 4, 'gr31.jpg'),
(12, 'MikroTik hAP ac2 RBD52G-5HacD2HnD-TC', 'Deskripsi : MikroTik hAP ac RBD52G-5HacD2HnD-TC  \"Tanpa Video Unboxing yang Real, Kami TIDAK Menerima Komplain\"  Garansi 6 Bulan  MikroTiks new hAP ac2 is a dual concurrent access point which has five 10/100/1000 Ethernet ports to provide Gigabit connecti', 'Electronic', 1180000, 3, 'mikrotik ac2.png'),
(13, 'Mikrotik Routerboard RB450Gx4 - RB 450 Gx4', 'Routerboard RB450Gx4 (716MHz Quad Core CPU, 1 GB DDR RAM, 512MB NAND Storage) dengan RouterOS (Level 5) dalam kemasan kotak indoor yang ringkas, 5 (lima) buah port gigabit 10/100/1000, dan slot mikro-SD. Tidak bisa dipasangkan wireless card. Sudah termasu', 'Electronic', 1844000, 2, 'mikrotik gx4.png'),
(14, 'TP-Link TL-WR840N Router WR840N 300Mbps Wireless N Router WiFI TPLink', '100% Original TP-LINK TL-WR840N Garansi Resmi TP-LINK Indonesia 1 Tahun  TP-Link TL-WR840N adalah solusi kecepatan tinggi yang kompatibel dengan IEEE 802.11b / g / n. Berdasarkan teknologi 802.11n, TL-WR840N memberikan kinerja nirkabel hingga 300Mbps, yan', 'Electronic', 165000, 15, 'wr840n1.jpg'),
(15, 'Switch TPlink 5-Port 10/100Mbps Desktop Switch TL-SF1005D', 'TL-SF1005D Fast Ethernet Switch dirancang untuk SOHO (Small Office / Home Office) atau pengguna workgroup. Semua port didukung auto MDI / MDIX, jadi tidak perlu khawatir tentang jenis kabel, cukup plug and play. Selain itu, dengan teknologi hemat energi y', 'Electronic', 100000, 3, 'switch1.jpg'),
(16, 'Mikrotik RB3011UiAS-RM', 'Overview Of MikroTik RB3011UiAS-RM RB 3011 UiAS-RM Mikrotik RB3011 is a new multi port device, our first to be running an ARM architecture CPU for higher performance than ever before. The RB3011 has ten Gigabit ports divided in two switch groups, an SFP c', 'Electronic', 330000, 2, 'rb30111.jpg'),
(17, 'Netlink HTB 3100 AB HT3100 25KM SC 10/100Mbps Media Converter 1 Set', 'Kualitas tinggi 10/100Mbps Ethernet ke Fiber Optic Media Converter 25KM SC (1 Pair/1Pasang)', 'Electronic', 85000, 10, 'htb-ab1.jpg'),
(18, 'Converter Media 6 FO 2 LAN HTB CM6F2E Media Converter Fiber Optic HTB 6 FO 2 Ethernet RJ45', 'Converter Media 6 FO 2 LAN HTB CM6F2E Media Converter Fiber Optic HTB 6 FO 2 Ethernet RJ45', 'Electronic', 194000, 5, 'htb6.png'),
(19, 'Adaptor 12V-2A DC5.5x2.5 12 Volt 2 Ampera', 'Adaptor 12V-2A DC5.5x2.5 12 Volt 2 Ampera', 'Electronic', 25000, 20, 'adaptor1.jpg'),
(20, 'Adaptor 5v 2a / 5 Volt 2 Ampere 5,5mm', 'Adaptor 5v 2a / 5 Volt 2 Ampere 5,5mm', 'Electronic', 15000, 15, '5v2a1.jpg'),
(21, 'Media Converter 2 FO 4 LAN 10/100 / 2 SC 4 Rj45', 'Media Converter 2 FO 4 LAN 10/100 / 2 SC 4 Rj45', 'Electronic', 150000, 6, 'htb2fo1.jpg'),
(22, 'Media Converter Fiber Optic 3FO-3Lan Ethernet HTB', 'Media Converter Fiber Optic 3FO-3Lan Ethernet HTB', 'Electronic', 175000, 6, 'htb3fo1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `order_id` char(30) NOT NULL,
  `id_user` varchar(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(225) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `mobile_phone` varchar(15) NOT NULL,
  `city` varchar(255) NOT NULL,
  `kode_pos` varchar(100) NOT NULL,
  `payment_method` varchar(100) NOT NULL,
  `ekspedisi` varchar(100) NOT NULL,
  `tracking_id` varchar(30) NOT NULL,
  `transaction_time` datetime DEFAULT NULL,
  `payment_limit` datetime DEFAULT NULL,
  `status` varchar(2) NOT NULL,
  `gambar` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `avatar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `email`, `password`, `level`, `avatar`) VALUES
(6, 'Helpdesk Shoppify', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '1', 'user.png'),
(11, 'far', 'far@gmail.com', 'c624384e29a508afef243db27b9eeb67', '2', 'user.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
