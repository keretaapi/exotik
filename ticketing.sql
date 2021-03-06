-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2018 at 07:33 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ticketing`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dataterlambat`
--

CREATE TABLE `tbl_dataterlambat` (
  `no` int(6) NOT NULL,
  `id_user` int(11) NOT NULL,
  `terlambat` int(11) NOT NULL,
  `poin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_dataterlambat`
--

INSERT INTO `tbl_dataterlambat` (`no`, `id_user`, `terlambat`, `poin`) VALUES
(14, 2, 14, 1),
(15, 2, 2, 0),
(16, 2, 15, 1),
(17, 2, 106, 10),
(18, 2, 1, 0),
(19, 2, 42, 4),
(20, 2, 47, 4),
(21, 2, 27, 2),
(22, 1, 106, 10),
(23, 1, 10, 1),
(24, 1, 56, 5),
(25, 1, 52, 5),
(26, 1, 103, 10),
(27, 1, 62, 6),
(28, 1, 93, 9),
(29, 1, 79, 7),
(30, 1, 81, 8),
(31, 1, 41, 4),
(32, 1, 26, 2),
(33, 1, 116, 11),
(34, 1, 7, 0),
(35, 1, 59, 5),
(36, 1, 62, 6),
(37, 1, 59, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_harga`
--

CREATE TABLE `tbl_harga` (
  `no` int(11) NOT NULL,
  `kelas_kereta` varchar(11) NOT NULL,
  `harga_tiket` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_harga`
--

INSERT INTO `tbl_harga` (`no`, `kelas_kereta`, `harga_tiket`) VALUES
(1, 'Ekonomi', 80000),
(2, 'Bisnis', 200000),
(3, 'Eksekutif', 350000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_keretaapi`
--

CREATE TABLE `tbl_keretaapi` (
  `id_kereta` int(5) NOT NULL,
  `nama_kereta` varchar(30) NOT NULL,
  `kelas_kereta` varchar(20) NOT NULL,
  `stasiun_lewat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_keretaapi`
--

INSERT INTO `tbl_keretaapi` (`id_kereta`, `nama_kereta`, `kelas_kereta`, `stasiun_lewat`) VALUES
(5, 'Argo Wilis', 'Eksekutif', 'SGU-JG-MN-SLO-YK-KTA-KYA-BJR-TSM-CPD-BD'),
(6, 'Argo Wilis', 'Eksekutif', 'BD-CPD-TSM-BJR-KYA-KTA-YK-SLO-MN-JG-SGU'),
(49, 'Turangga', 'Eksekutif', 'SGU-MR-JG-KTS-NJ-WLG-MN-SLO-YK-KTA-KA-KJ-KYA-BJR-TSM-CPD-BD'),
(50, 'Turangga', 'Eksekutif', 'BD-CPD-TSM-BJR-JRL-KYA-SRW-KTA-YK-SLO-MN-NJ-KTS-JG-MR-SGU'),
(75, 'Harina', 'Ekonomi', 'BD-CMI-CA-PWK-CKP-CN-TG-PK-SMT-NBO-CU-BJ-BBT-LMG-SBI'),
(76, 'Harina', 'Ekonomi', 'SBI-LMG-BBT-BJ-CU-NBO-SMT-PK-TG-CN-CKP-PWK-CMI-BD'),
(79, 'Lodaya Pagi', 'Eksekutif', 'SLO-KT-YK-WT-KTA-KM-SDR-MLW-BJR-TSM-CPD-KAC-BD'),
(80, 'Lodaya Pagi', 'Eksekutif', 'BD-KAC-CPD-TSM-BJR-SDR-MA-IJ-GB-KTA-WT-YK-KT-SLO'),
(81, 'Lodaya Malam', 'Eksekutif', 'SLO-KT-YK-WT-KTA-GB-KYA-SDR-CPI-BJR-TSM-CPD-KAC-BD'),
(82, 'Lodaya Malam', 'Eksekutif', 'BD-KAC-CPD-TSM-BJR-MA-KYA-KM-KWN-KTA-WT-YK-KT-SLO'),
(91, 'Malabar', 'Ekonomi', 'ML-MLK-KPN-WG-BL-TA-KD-KTS-NJ-BGR-MN-PA-SR-SLO-YK-KTA-BTH-KM-GB-SPH-KYA-BJR-TSM-CPD-KAC-BD'),
(92, 'Malabar', 'Ekonomi', 'BD-KAC-BMW-CPD-TSM-BJR-KYA-IJ-GB-KM-KWN-BTH-KTA-YK-SLO-WK-PA-MN-NJ-KTS-KD-TA-BL-WG-KPN-MLK-ML'),
(99, 'Ciremai', 'Bisnis', 'BD-CMI-PWK-CKP-HGL-JTB-CN-TG-PK-SMT'),
(100, 'Ciremai', 'Bisnis', 'SMT-SMC-PK-TG-CN-JTB-HGL-CKP-PWK-CMI-BD'),
(111, 'Mutiara Selatan', 'Bisnis', 'ML-LW-BG-SDA-WO-SGU-MR-JG-KTS-NJ-MN-SLO-YK-KTA-KM-GB-TBK-KYA-MA-BJR-CI-TSM-CPD-CCL-KAC-BD'),
(112, 'Mutiara Selatan', 'Bisnis', 'BD-KAC-LL-CPD-TSM-CI-BJR-KYA-KJ-IJ-GB-SOA-KM-KTA-YK-SLO-MN-NJ-KTS-JG-MR-SGU-WO-SDA-PR-BG-LW-ML'),
(179, 'Pasundan', 'Ekonomi', 'SGU-WO-MR-JG-NJ-CRB-MN-KG-WK-SR-PWS-KT-LPN-WT-KTA-GB-SPH-MA-SDR-BJR-CI-TSM-CPD-CB-LL-KAC'),
(180, 'Pasundan', 'Ekonomi', 'KAC-LL-CB-CPD-TSM-CI-BJR-SDR-MA-KYA-GB-KM-KTA-WT-LPN-KT-PWS-SR-WK-PA-MN-CRB-NJ-SMB-JG-MR-WO-SGU'),
(181, 'Kahuripan', 'Ekonomi', 'BL-TA-KD-KTS-NJ-CRB-MN-BAT-PA-WK-SR-SK-PWS-KT-LPN-WT-KTA-GB-MA-GDM-BJR-CI-TSM-CPD-KAC'),
(182, 'Kahuripan', 'Ekonomi', 'KAC-CCL-CB-CPD-TSM-CI-BJR-GDM-MA-GB-KTA-WT-LPN-KT-PWS-SR-WK-PA-BAT-MN-CRB-NJ-KTS-KD-TA-BL'),
(203, 'Kutojaya Selatan', 'Ekonomi', 'KTA-KM-KA-GB-SPH-KYA-MA-LBG-GDM-SDR-MLW-BJR-TSM-CPD-CCL-KAC'),
(204, 'Kutojaya Selatan', 'Ekonomi', 'KAC-CPD-TSM-AW-KNP-BJR-LN-SDR-GDM-MA-SKP-KYA-SPH-GB-KA-KM-KTA'),
(217, 'Serayu Pagi', 'Ekonomi', 'PSE-BKS-CKP-PWK-PLD-SKT-CMI-KAC-CB-BMW-CPD-TSM-CI-BJR-SDR-GDM-MA-KYA-PWT'),
(218, 'Serayu Pagi', 'Ekonomi', 'PWT-KYA-MA-GDM-SDR-BJR-CI-TSM-CAW-CPD-CB-KAC-CMI-SKT-PLD-PWK-JNG-PSE'),
(221, 'Serayu Malam', 'Ekonomi', 'PSE-CKP-PWK-CMI-KAC-LL-BMW-CPD-TSM-MNJ-CI-BJR-SDR-GDM-MA-KYA-PWT'),
(222, 'Serayu Malam', 'Ekonomi', 'PWT-KYA-MA-GDM-SDR-BJR-KNP-CI-MNJ-TSM-IH-CAW-CPD-KAC-CMI-PWK-BKS-JNG-PSE');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_namastasiun`
--

CREATE TABLE `tbl_namastasiun` (
  `id_stasiun` int(4) NOT NULL,
  `nama_stasiun` varchar(20) NOT NULL,
  `kode_stasiun` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_namastasiun`
--

INSERT INTO `tbl_namastasiun` (`id_stasiun`, `nama_stasiun`, `kode_stasiun`) VALUES
(1, 'Bandung', 'BD'),
(2, 'Cipeundeuy', 'CPD'),
(3, 'Tasikmalaya', 'TSM'),
(4, 'Banjar', 'BJR'),
(5, 'Kroya', 'KYA'),
(6, 'Kutoarjo', 'KTA'),
(7, 'Yogyakarta', 'YK'),
(8, 'Solo Balapan', 'SLO'),
(9, 'Madiun', 'MN'),
(10, 'Jombang', 'JG'),
(11, 'Surabaya Gubeng', 'SGU'),
(12, 'Jeruk Legi', 'JRL'),
(13, 'Sruweng', 'SRW'),
(14, 'Nganjuk', 'NJ'),
(15, 'Kertosono', 'KTS'),
(16, 'Mojokerto', 'MR'),
(17, 'Wilangan', 'WLG'),
(18, 'Karang Anyar', 'KA'),
(19, 'Kemranjen', 'KJ'),
(20, 'Kiaracondong', 'KAC'),
(21, 'Leles', 'LL'),
(22, 'Ciamis', 'CI'),
(23, 'Ijo', 'IJ'),
(24, 'Gombong', 'GB'),
(25, 'Soka', 'SOA'),
(26, 'Kebumen', 'KM'),
(27, 'Wonokromo', 'WO'),
(28, 'Sidoarjo', 'SDA'),
(29, 'Porong', 'PR'),
(30, 'Bangil', 'BG'),
(31, 'Lawang', 'LW'),
(32, 'Malang', 'ML'),
(33, 'Tambak', 'TBK'),
(34, 'Maos', 'MA'),
(35, 'Cicalengka', 'CCL'),
(36, 'Bumiwaluya', 'BMW'),
(37, 'Kutowinangun', 'KWN'),
(38, 'Butuh', 'BTH'),
(39, 'Walikukun', 'WK'),
(40, 'Paron', 'PA'),
(41, 'Kediri', 'KD'),
(42, 'Tulungagung', 'TA'),
(43, 'Blitar', 'BL'),
(44, 'Wlingi', 'WG'),
(45, 'Kepanjen', 'KPN'),
(46, 'Malang Kotalama', 'MLK'),
(47, 'Sragen', 'SR'),
(48, 'Sumpiuh', 'SPH'),
(49, 'Sidareja', 'SDR'),
(50, 'Wates', 'WT'),
(51, 'Klaten', 'KT'),
(52, 'Meluwung', 'MLW'),
(53, 'Cipari', 'CPI'),
(54, 'Cimahi', 'CMI'),
(55, 'Ciganea', 'CA'),
(56, 'Purwakarta', 'PWK'),
(57, 'Cikampek', 'CKP'),
(58, 'Cirebon', 'CN'),
(59, 'Tegal', 'TG'),
(60, 'Pekalongan', 'PK'),
(61, 'Semarang Tawang', 'SMT'),
(62, 'Ngrombo', 'NBO'),
(63, 'Cepo', 'CU'),
(64, 'Bojonegoro', 'BJ'),
(65, 'Babat', 'BBT'),
(66, 'Lamongan', 'LMG'),
(67, 'Surabaya Pasarturi', 'SBI'),
(68, 'Haurgeulis', 'HGL'),
(69, 'Jatibarang', 'JTB'),
(70, 'Semarang Poncol', 'SMC'),
(71, 'Cibatu', 'CB'),
(72, 'Lempuyangan', 'LPN'),
(73, 'Purwosari', 'PWS'),
(74, 'Caruban', 'CRB'),
(75, 'Sembung', 'SMB'),
(76, 'Kedunggalar', 'KG'),
(77, 'Gandrung Mangun', 'GDM'),
(78, 'Barat', 'BAT'),
(79, 'Solo Jebres', 'SK'),
(80, 'Karangpucung', 'KNP'),
(81, 'Langen', 'LN'),
(82, 'Awipari', 'AW'),
(83, 'Sikampuh', 'SKP'),
(84, 'Lebeng', 'LBG'),
(85, 'Ciawi', 'CAW'),
(86, 'Sasaksaat', 'SKT'),
(87, 'Plered', 'PLD'),
(88, 'Jatinegara', 'JNG'),
(89, 'Bekasi', 'BKS'),
(90, 'Manonjaya', 'MNJ'),
(91, 'Indihiang', 'IH'),
(92, 'Pasarsenen', 'PSE');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pemesanan`
--

CREATE TABLE `tbl_pemesanan` (
  `no` int(11) NOT NULL,
  `id_user` int(8) NOT NULL,
  `id_kereta` int(5) NOT NULL,
  `asal` varchar(30) NOT NULL,
  `tujuan` varchar(30) NOT NULL,
  `tanggal` date NOT NULL,
  `jam_berangkat` time NOT NULL,
  `jam_datang` time NOT NULL,
  `jumlah_penumpang` int(2) NOT NULL,
  `diskon` int(10) NOT NULL,
  `total_bayar` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pemesanan`
--

INSERT INTO `tbl_pemesanan` (`no`, `id_user`, `id_kereta`, `asal`, `tujuan`, `tanggal`, `jam_berangkat`, `jam_datang`, `jumlah_penumpang`, `diskon`, `total_bayar`) VALUES
(2, 1, 80, 'Bandung', 'Banjar', '2018-05-05', '07:20:00', '11:03:00', 3, 0, 1050000),
(3, 1, 6, 'Bandung', 'Banjar', '2018-05-05', '08:30:00', '12:02:00', 3, 0, 1050000),
(4, 1, 91, 'Bandung', 'Yogyakarta', '2018-05-05', '07:50:00', '23:23:00', 6, 13000, 467000),
(5, 1, 111, 'Bandung', 'Solo Balapan', '2018-05-05', '08:35:00', '23:08:00', 2, 5000, 395000),
(6, 1, 204, 'Banjar', 'Kiaracondong', '2018-05-05', '00:55:00', '20:58:00', 5, 6000, 394000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stasiun`
--

CREATE TABLE `tbl_stasiun` (
  `id_berangkat` int(5) NOT NULL,
  `id_kereta` int(5) NOT NULL,
  `kode_stasiun` varchar(30) NOT NULL,
  `datang` time NOT NULL,
  `berangkat` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_stasiun`
--

INSERT INTO `tbl_stasiun` (`id_berangkat`, `id_kereta`, `kode_stasiun`, `datang`, `berangkat`) VALUES
(1, 6, 'BD', '08:15:00', '08:30:00'),
(2, 6, 'CPD', '10:14:00', '10:24:00'),
(3, 6, 'TSM', '11:10:00', '11:15:00'),
(4, 6, 'BJR', '12:02:00', '12:11:00'),
(5, 6, 'KYA', '13:35:00', '13:50:00'),
(6, 6, 'KTA', '14:53:00', '15:00:00'),
(7, 6, 'YK', '15:52:00', '16:00:00'),
(8, 6, 'SLO', '16:46:00', '16:51:00'),
(9, 6, 'MN', '18:05:00', '18:10:00'),
(10, 6, 'JG', '19:21:00', '19:24:00'),
(11, 6, 'SGU', '20:19:00', '20:25:00'),
(12, 5, 'SGU', '06:50:00', '07:00:00'),
(13, 5, 'JG', '07:55:00', '07:57:00'),
(14, 5, 'MN', '09:04:00', '09:09:00'),
(15, 5, 'SLO', '10:23:00', '10:30:00'),
(16, 5, 'YK', '11:18:00', '11:25:00'),
(17, 5, 'KTA', '12:18:00', '12:25:00'),
(18, 5, 'KYA', '13:30:00', '13:45:00'),
(19, 5, 'BJR', '15:09:00', '15:20:00'),
(20, 5, 'TSM', '16:07:00', '16:21:00'),
(21, 5, 'CPD', '17:07:00', '17:19:00'),
(22, 5, 'BD', '19:06:00', '19:10:00'),
(23, 50, 'BD', '19:25:00', '19:30:00'),
(24, 50, 'CPD', '21:14:00', '21:24:00'),
(25, 50, 'TSM', '22:10:00', '22:20:00'),
(26, 50, 'BJR', '23:07:00', '23:18:00'),
(27, 50, 'JRL', '00:15:00', '00:27:00'),
(28, 50, 'KYA', '00:57:00', '01:15:00'),
(29, 50, 'SRW', '01:50:00', '01:57:00'),
(30, 50, 'KTA', '02:29:00', '02:33:00'),
(31, 50, 'YK', '03:25:00', '03:30:00'),
(32, 50, 'SLO', '04:17:00', '04:24:00'),
(33, 50, 'MN', '05:39:00', '05:48:00'),
(34, 50, 'NJ', '06:28:00', '06:31:00'),
(35, 50, 'KTS', '06:51:00', '06:53:00'),
(36, 50, 'JG', '07:07:00', '07:10:00'),
(37, 50, 'MR', '07:32:00', '07:38:00'),
(38, 50, 'SGU', '08:14:00', '08:18:00'),
(39, 49, 'SGU', '16:28:00', '16:30:00'),
(40, 49, 'MR', '17:06:00', '17:10:00'),
(41, 49, 'JG', '17:32:00', '17:35:00'),
(42, 49, 'KTS', '17:50:00', '17:53:00'),
(43, 49, 'NJ', '18:13:00', '18:15:00'),
(44, 49, 'WLG', '18:29:00', '18:38:00'),
(45, 49, 'MN', '19:05:00', '19:12:00'),
(46, 49, 'SLO', '20:27:00', '20:32:00'),
(47, 49, 'YK', '21:19:00', '21:25:00'),
(48, 49, 'KTA', '22:16:00', '22:19:00'),
(49, 49, 'KA', '22:54:00', '23:01:00'),
(50, 49, 'KJ', '23:27:00', '23:33:00'),
(51, 49, 'KYA', '23:41:00', '23:56:00'),
(52, 49, 'BJR', '01:20:00', '01:30:00'),
(53, 49, 'TSM', '02:17:00', '02:22:00'),
(54, 49, 'CPD', '03:08:00', '03:20:00'),
(55, 49, 'BD', '05:04:00', '05:06:00'),
(56, 112, 'BD', '16:48:00', '16:50:00'),
(57, 112, 'KAC', '17:00:00', '17:02:00'),
(58, 112, 'LL', '17:58:00', '18:06:00'),
(59, 112, 'CPD', '18:51:00', '19:01:00'),
(60, 112, 'TSM', '19:47:00', '20:00:00'),
(61, 112, 'CI', '20:24:00', '20:27:00'),
(62, 112, 'BJR', '20:52:00', '21:00:00'),
(63, 112, 'KYA', '22:24:00', '22:39:00'),
(64, 112, 'KJ', '22:48:00', '22:56:00'),
(65, 112, 'IJ', '23:10:00', '23:17:00'),
(66, 112, 'GB', '23:26:00', '23:32:00'),
(67, 112, 'SOA', '23:48:00', '23:56:00'),
(68, 112, 'KM', '00:01:00', '00:03:00'),
(69, 112, 'KTA', '00:27:00', '00:31:00'),
(70, 112, 'YK', '01:23:00', '01:38:00'),
(71, 112, 'SLO', '02:26:00', '02:35:00'),
(72, 112, 'MN', '03:50:00', '03:58:00'),
(73, 112, 'NJ', '04:37:00', '04:43:00'),
(74, 112, 'KTS', '05:03:00', '05:06:00'),
(75, 112, 'JG', '05:20:00', '05:23:00'),
(76, 112, 'MR', '05:45:00', '05:48:00'),
(77, 112, 'SGU', '06:24:00', '07:20:00'),
(78, 112, 'WO', '07:27:00', '07:29:00'),
(79, 112, 'SDA', '07:47:00', '07:51:00'),
(80, 112, 'PR', '08:02:00', '08:11:00'),
(81, 112, 'BG', '08:24:00', '08:30:00'),
(82, 112, 'LW', '09:10:00', '09:14:00'),
(83, 112, 'ML', '09:38:00', '09:39:00'),
(84, 111, 'ML', '16:28:00', '16:30:00'),
(85, 111, 'LW', '16:54:00', '16:58:00'),
(86, 111, 'BG', '17:36:00', '17:39:00'),
(87, 111, 'SDA', '18:00:00', '18:03:00'),
(88, 111, 'WO', '18:21:00', '18:23:00'),
(89, 111, 'SGU', '18:30:00', '19:00:00'),
(90, 111, 'MR', '19:36:00', '19:47:00'),
(91, 111, 'JG', '20:09:00', '20:12:00'),
(92, 111, 'KTS', '20:27:00', '20:38:00'),
(93, 111, 'NJ', '20:59:00', '21:01:00'),
(94, 111, 'MN', '21:40:00', '21:53:00'),
(95, 111, 'SLO', '23:08:00', '23:13:00'),
(96, 111, 'YK', '00:00:00', '00:15:00'),
(97, 111, 'KTA', '01:08:00', '01:18:00'),
(98, 111, 'KM', '01:43:00', '01:47:00'),
(99, 111, 'GB', '02:06:00', '02:15:00'),
(100, 111, 'TBK', '02:27:00', '02:34:00'),
(101, 111, 'KYA', '02:51:00', '03:06:00'),
(102, 111, 'MA', '03:20:00', '03:22:00'),
(103, 111, 'BJR', '04:33:00', '04:40:00'),
(104, 111, 'CI', '05:05:00', '05:07:00'),
(105, 111, 'TSM', '05:31:00', '05:37:00'),
(106, 111, 'CPD', '06:23:00', '06:33:00'),
(107, 111, 'CCL', '07:52:00', '07:59:00'),
(108, 111, 'KAC', '08:21:00', '08:23:00'),
(109, 111, 'BD', '08:33:00', '08:35:00'),
(110, 92, 'BD', '15:43:00', '15:45:00'),
(111, 92, 'KAC', '15:55:00', '15:57:00'),
(112, 92, 'BMW', '17:26:00', '17:32:00'),
(113, 92, 'CPD', '17:43:00', '17:53:00'),
(114, 92, 'TSM', '18:39:00', '18:49:00'),
(115, 92, 'BJR', '19:36:00', '19:42:00'),
(116, 92, 'KYA', '21:07:00', '21:18:00'),
(117, 92, 'IJ', '21:37:00', '21:44:00'),
(118, 92, 'GB', '21:53:00', '21:57:00'),
(119, 92, 'KM', '22:16:00', '22:22:00'),
(120, 92, 'KWN', '22:32:00', '22:38:00'),
(121, 92, 'BTH', '22:52:00', '22:58:00'),
(122, 92, 'KTA', '23:05:00', '23:09:00'),
(123, 92, 'YK', '00:00:00', '00:05:00'),
(124, 92, 'SLO', '00:52:00', '00:57:00'),
(125, 92, 'WK', '01:38:00', '01:47:00'),
(126, 92, 'PA', '02:03:00', '02:05:00'),
(127, 92, 'MN', '02:26:00', '02:35:00'),
(128, 92, 'NJ', '03:15:00', '03:17:00'),
(129, 92, 'KTS', '03:37:00', '03:40:00'),
(130, 92, 'KD', '04:17:00', '04:20:00'),
(131, 92, 'TA', '04:46:00', '04:49:00'),
(132, 92, 'BL', '05:19:00', '05:24:00'),
(133, 92, 'WG', '05:44:00', '05:47:00'),
(134, 92, 'KPN', '06:32:00', '06:35:00'),
(135, 92, 'MLK', '06:56:00', '07:00:00'),
(136, 92, 'ML', '07:05:00', '07:06:00'),
(137, 91, 'ML', '15:58:00', '16:00:00'),
(138, 91, 'MLK', '16:05:00', '16:07:00'),
(139, 91, 'KPN', '16:30:00', '16:34:00'),
(140, 91, 'WG', '17:20:00', '17:23:00'),
(141, 91, 'BL', '17:42:00', '17:47:00'),
(142, 91, 'TA', '18:16:00', '18:19:00'),
(143, 91, 'KD', '18:46:00', '18:50:00'),
(144, 91, 'KTS', '19:26:00', '19:32:00'),
(145, 91, 'NJ', '19:52:00', '19:55:00'),
(146, 91, 'BGR', '20:02:00', '20:10:00'),
(147, 91, 'MN', '20:44:00', '20:59:00'),
(148, 91, 'PA', '21:22:00', '21:24:00'),
(149, 91, 'SR', '21:58:00', '22:07:00'),
(150, 91, 'SLO', '22:31:00', '22:36:00'),
(151, 91, 'YK', '23:23:00', '23:30:00'),
(152, 91, 'KTA', '00:24:00', '00:29:00'),
(153, 91, 'BTH', '00:36:00', '00:42:00'),
(154, 91, 'KM', '01:03:00', '01:17:00'),
(155, 91, 'GB', '01:35:00', '01:41:00'),
(156, 91, 'SPH', '01:56:00', '02:02:00'),
(157, 91, 'KYA', '02:14:00', '02:30:00'),
(158, 91, 'BJR', '03:53:00', '04:03:00'),
(159, 91, 'TSM', '04:50:00', '05:00:00'),
(160, 91, 'CPD', '05:46:00', '05:56:00'),
(161, 91, 'KAC', '07:34:00', '07:38:00'),
(162, 91, 'BD', '07:48:00', '07:50:00'),
(163, 80, 'BD', '07:18:00', '07:20:00'),
(164, 80, 'KAC', '07:30:00', '07:36:00'),
(165, 80, 'CPD', '09:15:00', '09:25:00'),
(166, 80, 'TSM', '10:11:00', '10:16:00'),
(167, 80, 'BJR', '11:03:00', '11:15:00'),
(168, 80, 'SDR', '11:47:00', '11:49:00'),
(169, 80, 'MA', '12:31:00', '12:33:00'),
(170, 80, 'IJ', '13:05:00', '13:14:00'),
(171, 80, 'GB', '13:23:00', '13:25:00'),
(172, 80, 'KTA', '14:11:00', '14:15:00'),
(173, 80, 'WT', '14:44:00', '14:46:00'),
(174, 80, 'YK', '15:12:00', '15:20:00'),
(175, 80, 'KT', '15:44:00', '15:47:00'),
(176, 80, 'SLO', '16:15:00', '16:16:00'),
(177, 79, 'SLO', '07:08:00', '07:10:00'),
(178, 79, 'KT', '07:36:00', '07:38:00'),
(179, 79, 'YK', '08:03:00', '08:08:00'),
(180, 79, 'WT', '08:34:00', '08:36:00'),
(181, 79, 'KTA', '09:05:00', '09:10:00'),
(182, 79, 'KM', '09:35:00', '09:37:00'),
(183, 79, 'SDR', '11:10:00', '11:12:00'),
(184, 79, 'MLW', '11:27:00', '11:35:00'),
(185, 79, 'BJR', '11:54:00', '12:08:00'),
(186, 79, 'TSM', '12:55:00', '13:00:00'),
(187, 79, 'CPD', '13:46:00', '13:56:00'),
(188, 79, 'KAC', '15:35:00', '15:38:00'),
(189, 79, 'BD', '15:48:00', '15:50:00'),
(190, 82, 'BD', '18:53:00', '18:55:00'),
(191, 82, 'KAC', '19:05:00', '19:07:00'),
(192, 82, 'CPD', '20:46:00', '21:03:00'),
(193, 82, 'TSM', '21:49:00', '21:54:00'),
(194, 82, 'BJR', '22:41:00', '22:54:00'),
(195, 82, 'MA', '00:06:00', '00:12:00'),
(196, 82, 'KYA', '00:27:00', '00:33:00'),
(197, 82, 'KM', '01:15:00', '01:19:00'),
(198, 82, 'KWN', '01:29:00', '01:37:00'),
(199, 82, 'KTA', '01:54:00', '01:58:00'),
(200, 82, 'WT', '02:28:00', '02:31:00'),
(201, 82, 'YK', '02:57:00', '03:05:00'),
(202, 82, 'KT', '03:30:00', '03:32:00'),
(203, 82, 'SLO', '03:58:00', '04:00:00'),
(204, 81, 'SLO', '19:08:00', '19:10:00'),
(205, 81, 'KT', '19:36:00', '19:38:00'),
(206, 81, 'YK', '20:03:00', '20:08:00'),
(207, 81, 'WT', '20:34:00', '20:36:00'),
(208, 81, 'KTA', '21:05:00', '21:08:00'),
(209, 81, 'GB', '21:49:00', '21:55:00'),
(210, 81, 'KYA', '22:20:00', '22:26:00'),
(211, 81, 'SDR', '23:19:00', '23:27:00'),
(212, 81, 'CPI', '23:36:00', '23:45:00'),
(213, 81, 'BJR', '00:11:00', '00:29:00'),
(214, 81, 'TSM', '01:16:00', '01:21:00'),
(215, 81, 'CPD', '02:07:00', '02:20:00'),
(216, 81, 'KAC', '03:59:00', '04:05:00'),
(217, 81, 'BD', '04:15:00', '04:17:00'),
(218, 75, 'BD', '21:24:00', '21:25:00'),
(219, 75, 'CMI', '21:35:00', '21:37:00'),
(220, 75, 'CA', '22:51:00', '22:57:00'),
(221, 75, 'PWK', '23:10:00', '23:14:00'),
(222, 75, 'CKP', '23:33:00', '23:58:00'),
(223, 75, 'CN', '01:37:00', '01:46:00'),
(224, 75, 'TG', '02:44:00', '02:53:00'),
(225, 75, 'PK', '03:38:00', '03:42:00'),
(226, 75, 'SMT', '04:56:00', '05:25:00'),
(227, 75, 'NBO', '06:13:00', '06:17:00'),
(228, 75, 'CU', '07:22:00', '07:28:00'),
(229, 75, 'BJ', '07:59:00', '08:02:00'),
(230, 75, 'BBT', '08:32:00', '08:35:00'),
(231, 75, 'LMG', '08:58:00', '09:01:00'),
(232, 75, 'SBI', '09:37:00', '09:38:00'),
(233, 76, 'SBI', '16:28:00', '16:30:00'),
(234, 76, 'LMG', '17:06:00', '17:09:00'),
(235, 76, 'BBT', '17:32:00', '17:35:00'),
(236, 76, 'BJ', '18:04:00', '18:07:00'),
(237, 76, 'CU', '18:37:00', '18:43:00'),
(238, 76, 'NBO', '19:47:00', '19:50:00'),
(239, 76, 'SMT', '20:38:00', '20:57:00'),
(240, 76, 'PK', '22:10:00', '22:14:00'),
(241, 76, 'TG', '23:01:00', '23:07:00'),
(242, 76, 'CN', '00:06:00', '00:16:00'),
(243, 76, 'CKP', '01:55:00', '02:15:00'),
(244, 76, 'PWK', '02:34:00', '02:36:00'),
(245, 76, 'CMI', '03:59:00', '04:01:00'),
(246, 76, 'BD', '04:11:00', '04:12:00'),
(247, 99, 'BD', '06:14:00', '06:15:00'),
(248, 99, 'CMI', '06:25:00', '06:27:00'),
(249, 99, 'PWK', '07:49:00', '07:51:00'),
(250, 99, 'CKP', '08:10:00', '08:40:00'),
(251, 99, 'HGL', '09:21:00', '09:23:00'),
(252, 99, 'JBT', '09:54:00', '09:56:00'),
(253, 99, 'CN', '10:27:00', '10:35:00'),
(254, 99, 'TG', '11:32:00', '11:38:00'),
(255, 99, 'PK', '12:24:00', '12:29:00'),
(256, 99, 'SMT', '13:45:00', '13:46:00'),
(257, 100, 'SMT', '17:34:00', '17:35:00'),
(258, 100, 'SMC', '17:42:00', '17:46:00'),
(259, 100, 'PK', '18:57:00', '19:01:00'),
(260, 100, 'TG', '19:50:00', '19:57:00'),
(261, 100, 'CN', '20:52:00', '21:00:00'),
(262, 100, 'JTB', '21:31:00', '21:33:00'),
(263, 100, 'HGL', '22:04:00', '22:06:00'),
(264, 100, 'CKP', '22:48:00', '23:14:00'),
(265, 100, 'PWK', '23:34:00', '23:36:00'),
(266, 100, 'CMI', '00:59:00', '01:01:00'),
(267, 100, 'BD', '01:11:00', '01:13:00'),
(268, 180, 'KAC', '15:34:00', '15:35:00'),
(269, 180, 'LL', '06:31:00', '06:24:00'),
(270, 180, 'CB', '06:58:00', '07:05:00'),
(271, 180, 'CPD', '07:36:00', '07:46:00'),
(272, 180, 'TSM', '08:32:00', '08:42:00'),
(273, 180, 'CI', '09:06:00', '09:10:00'),
(274, 180, 'BJR', '09:46:00', '10:00:00'),
(275, 180, 'SDR', '10:31:00', '10:33:00'),
(276, 180, 'MA', '11:25:00', '11:27:00'),
(277, 180, 'KYA', '11:43:00', '11:47:00'),
(278, 180, 'GB', '12:22:00', '12:24:00'),
(279, 180, 'KM', '12:42:00', '12:52:00'),
(280, 180, 'KTA', '13:18:00', '13:22:00'),
(281, 180, 'WT', '13:53:00', '13:55:00'),
(282, 180, 'LPN', '14:25:00', '14:35:00'),
(283, 180, 'KT', '14:59:00', '15:01:00'),
(284, 180, 'PWS', '15:24:00', '15:29:00'),
(285, 180, 'SR', '16:07:00', '16:09:00'),
(286, 180, 'WK', '16:38:00', '16:40:00'),
(287, 180, 'PA', '16:57:00', '17:04:00'),
(288, 180, 'MN', '17:26:00', '17:35:00'),
(289, 180, 'CRB', '18:02:00', '18:31:00'),
(290, 180, 'NJ', '19:32:00', '19:34:00'),
(291, 180, 'SMB', '20:14:00', '20:21:00'),
(292, 180, 'JG', '20:30:00', '20:33:00'),
(293, 180, 'MR', '20:56:00', '20:59:00'),
(294, 180, 'WO', '21:32:00', '21:35:00'),
(295, 180, 'SGU', '21:42:00', '21:44:00'),
(296, 179, 'SGU', '08:08:00', '08:10:00'),
(297, 179, 'WO', '08:17:00', '08:19:00'),
(298, 179, 'MR', '08:52:00', '08:55:00'),
(299, 179, 'JG', '09:17:00', '09:20:00'),
(300, 179, 'NJ', '09:55:00', '09:59:00'),
(301, 179, 'CRB', '10:28:00', '10:32:00'),
(302, 179, 'MN', '10:58:00', '11:08:00'),
(303, 179, 'KG', '11:48:00', '11:54:00'),
(304, 179, 'WK', '12:05:00', '12:07:00'),
(305, 179, 'SR', '12:28:00', '12:30:00'),
(306, 179, 'PWS', '12:59:00', '13:05:00'),
(307, 179, 'KT', '13:28:00', '13:30:00'),
(308, 179, 'LPN', '13:55:00', '14:10:00'),
(309, 179, 'WT', '14:41:00', '14:45:00'),
(310, 179, 'KTA', '15:17:00', '15:30:00'),
(311, 179, 'GB', '16:22:00', '16:24:00'),
(312, 179, 'SPH', '16:40:00', '16:47:00'),
(313, 179, 'MA', '17:10:00', '17:12:00'),
(314, 179, 'SDR', '17:55:00', '17:57:00'),
(315, 179, 'BJR', '18:29:00', '18:40:00'),
(316, 179, 'CI', '19:05:00', '19:14:00'),
(317, 179, 'TSM', '19:38:00', '19:49:00'),
(318, 179, 'CPD', '21:01:00', '21:20:00'),
(319, 179, 'CB', '21:51:00', '22:11:00'),
(320, 179, 'LL', '22:27:00', '22:29:00'),
(321, 179, 'KAC', '23:25:00', '23:27:00'),
(322, 182, 'KAC', '18:09:00', '18:10:00'),
(323, 182, 'CCL', '18:32:00', '18:40:00'),
(324, 182, 'CB', '19:30:00', '19:33:00'),
(325, 182, 'CPD', '20:04:00', '20:14:00'),
(326, 182, 'TSM', '21:00:00', '21:05:00'),
(327, 182, 'CI', '21:29:00', '21:31:00'),
(328, 182, 'BJR', '21:56:00', '22:10:00'),
(329, 182, 'GDM', '22:47:00', '22:49:00'),
(330, 182, 'MA', '23:33:00', '23:35:00'),
(331, 182, 'GB', '00:30:00', '00:32:00'),
(332, 182, 'KTA', '01:33:00', '01:37:00'),
(333, 182, 'WT', '02:08:00', '02:10:00'),
(334, 182, 'LPN', '02:40:00', '02:52:00'),
(335, 182, 'KT', '03:16:00', '03:18:00'),
(336, 182, 'PWS', '03:41:00', '03:46:00'),
(337, 182, 'SR', '04:16:00', '04:18:00'),
(338, 182, 'WK', '04:39:00', '04:41:00'),
(339, 182, 'PA', '04:57:00', '04:59:00'),
(340, 182, 'BAT', '05:13:00', '05:15:00'),
(341, 182, 'MN', '05:26:00', '05:32:00'),
(342, 182, 'CRB', '05:46:00', '05:48:00'),
(343, 182, 'NJ', '06:17:00', '06:19:00'),
(344, 182, 'KTS', '06:39:00', '06:43:00'),
(345, 182, 'KD', '07:19:00', '07:24:00'),
(346, 182, 'TA', '07:59:00', '08:02:00'),
(347, 182, 'BL', '08:31:00', '08:33:00'),
(348, 181, 'BL', '12:08:00', '12:10:00'),
(349, 181, 'TA', '12:40:00', '12:43:00'),
(350, 181, 'KD', '13:10:00', '13:13:00'),
(351, 181, 'KTS', '13:49:00', '13:58:00'),
(352, 181, 'NJ', '14:18:00', '14:20:00'),
(353, 181, 'CRB', '14:49:00', '14:51:00'),
(354, 181, 'MN', '15:05:00', '15:15:00'),
(355, 181, 'BAT', '15:26:00', '15:28:00'),
(356, 181, 'PA', '15:42:00', '15:44:00'),
(357, 181, 'WK', '16:02:00', '16:04:00'),
(358, 181, 'SR', '16:24:00', '16:26:00'),
(359, 181, 'SK', '16:50:00', '16:57:00'),
(360, 181, 'PWS', '17:06:00', '17:15:00'),
(361, 181, 'KT', '17:39:00', '17:41:00'),
(362, 181, 'LPN', '18:05:00', '18:15:00'),
(363, 181, 'WT', '18:47:00', '18:50:00'),
(364, 181, 'KTA', '19:22:00', '19:29:00'),
(365, 181, 'GB', '20:22:00', '20:24:00'),
(366, 181, 'MA', '21:09:00', '21:11:00'),
(367, 181, 'GDM', '21:57:00', '21:59:00'),
(368, 181, 'BJR', '22:48:00', '23:10:00'),
(369, 181, 'CI', '23:35:00', '23:38:00'),
(370, 181, 'TSM', '00:02:00', '00:07:00'),
(371, 181, 'CPD', '00:53:00', '01:03:00'),
(372, 181, 'KAC', '02:42:00', '02:44:00'),
(373, 204, 'KAC', '20:58:00', '21:00:00'),
(374, 204, 'CPD', '22:39:00', '22:50:00'),
(375, 204, 'TSM', '23:36:00', '23:41:00'),
(376, 204, 'AW', '23:49:00', '23:57:00'),
(377, 204, 'KNP', '00:32:00', '00:38:00'),
(378, 204, 'BJR', '00:46:00', '00:55:00'),
(379, 204, 'LN', '01:06:00', '01:12:00'),
(380, 204, 'SDR', '01:34:00', '01:36:00'),
(381, 204, 'GDM', '01:44:00', '01:46:00'),
(382, 204, 'MA', '02:23:00', '02:25:00'),
(383, 204, 'SKP', '02:33:00', '02:39:00'),
(384, 204, 'KYA', '02:47:00', '02:53:00'),
(385, 204, 'SPH', '03:05:00', '03:22:00'),
(386, 204, 'GB', '03:39:00', '03:41:00'),
(387, 204, 'KA', '03:50:00', '03:52:00'),
(388, 204, 'KM', '04:04:00', '04:06:00'),
(389, 204, 'KTA', '04:31:00', '04:32:00'),
(390, 203, 'KTA', '09:18:00', '19:20:00'),
(391, 203, 'KM', '09:45:00', '09:47:00'),
(392, 203, 'KA', '09:59:00', '10:01:00'),
(393, 203, 'GB', '10:10:00', '10:12:00'),
(394, 203, 'SPH', '10:28:00', '10:30:00'),
(395, 203, 'KYA', '10:42:00', '10:45:00'),
(396, 203, 'MA', '10:59:00', '11:01:00'),
(397, 203, 'LBG', '11:11:00', '11:18:00'),
(398, 203, 'GDM', '11:46:00', '11:58:00'),
(399, 203, 'SDR', '12:06:00', '12:08:00'),
(400, 203, 'MLW', '12:23:00', '12:31:00'),
(401, 203, 'BJR', '12:50:00', '13:05:00'),
(402, 203, 'TSM', '13:52:00', '13:57:00'),
(403, 203, 'CPD', '14:43:00', '14:53:00'),
(404, 203, 'CCL', '16:12:00', '16:19:00'),
(405, 203, 'KAC', '16:41:00', '16:42:00'),
(406, 218, 'PWT', '06:28:00', '06:30:00'),
(407, 218, 'KYA', '06:58:00', '07:25:00'),
(408, 218, 'MA', '07:39:00', '07:41:00'),
(409, 218, 'GDM', '08:16:00', '08:18:00'),
(410, 218, 'SDR', '08:26:00', '08:28:00'),
(411, 218, 'BJR', '09:00:00', '09:10:00'),
(412, 218, 'CI', '09:35:00', '09:39:00'),
(413, 218, 'TSM', '10:03:00', '10:13:00'),
(414, 218, 'CAW', '10:38:00', '10:48:00'),
(415, 218, 'CPD', '11:11:00', '11:21:00'),
(416, 218, 'CB', '11:52:00', '11:57:00'),
(417, 218, 'KAC', '13:07:00', '13:25:00'),
(418, 218, 'CMI', '13:42:00', '13:44:00'),
(419, 218, 'SKT', '14:09:00', '14:19:00'),
(420, 218, 'PLD', '14:53:00', '14:55:00'),
(421, 218, 'PWK', '15:23:00', '15:42:00'),
(422, 218, 'JNG', '17:01:00', '17:03:00'),
(423, 218, 'PSE', '17:13:00', '17:15:00'),
(424, 217, 'PSE', '09:14:00', '09:15:00'),
(425, 217, 'BKS', '09:39:00', '09:41:00'),
(426, 217, 'CKP', '10:28:00', '10:30:00'),
(427, 217, 'PWK', '10:49:00', '11:00:00'),
(428, 217, 'PLD', '11:28:00', '11:30:00'),
(429, 217, 'SKT', '12:04:00', '12:15:00'),
(430, 217, 'CMI', '12:40:00', '12:42:00'),
(431, 217, 'KAC', '12:59:00', '13:10:00'),
(432, 217, 'CB', '14:20:00', '14:28:00'),
(433, 217, 'BMW', '14:50:00', '15:05:00'),
(434, 217, 'CPD', '15:16:00', '15:26:00'),
(435, 217, 'TSM', '16:12:00', '16:17:00'),
(436, 217, 'CI', '16:41:00', '16:43:00'),
(437, 217, 'BJR', '17:08:00', '17:20:00'),
(438, 217, 'SDR', '17:51:00', '17:59:00'),
(439, 217, 'GDM', '18:07:00', '18:21:00'),
(440, 217, 'MA', '18:57:00', '18:59:00'),
(441, 217, 'KYA', '19:13:00', '19:30:00'),
(442, 217, 'PWT', '19:59:00', '20:00:00'),
(443, 222, 'PWT', '16:28:00', '16:30:00'),
(444, 222, 'KYA', '16:58:00', '17:25:00'),
(445, 222, 'MA', '17:39:00', '17:41:00'),
(446, 222, 'GDM', '18:17:00', '18:19:00'),
(447, 222, 'SDR', '18:28:00', '18:30:00'),
(448, 222, 'BJR', '19:01:00', '19:15:00'),
(449, 222, 'KNP', '19:23:00', '19:31:00'),
(450, 222, 'CI', '19:50:00', '19:52:00'),
(451, 222, 'MNJ', '20:06:00', '20:13:00'),
(452, 222, 'TSM', '20:25:00', '20:40:00'),
(453, 222, 'IH', '20:47:00', '20:56:00'),
(454, 222, 'CAW', '21:16:00', '21:55:00'),
(455, 222, 'CPD', '22:18:00', '22:42:00'),
(456, 222, 'KAC', '00:21:00', '00:32:00'),
(457, 222, 'CMI', '00:49:00', '00:51:00'),
(458, 222, 'PWK', '02:14:00', '02:30:00'),
(459, 222, 'BKS', '03:33:00', '03:35:00'),
(460, 222, 'JNG', '03:50:00', '03:52:00'),
(461, 222, 'PSE', '04:02:00', '04:04:00'),
(462, 221, 'PSE', '20:58:00', '21:00:00'),
(463, 221, 'CKP', '22:10:00', '22:12:00'),
(464, 221, 'PWK', '22:31:00', '22:43:00'),
(465, 221, 'CMI', '00:06:00', '00:08:00'),
(466, 221, 'KAC', '00:25:00', '02:32:00'),
(467, 221, 'LL', '01:36:00', '01:49:00'),
(468, 221, 'BMW', '02:25:00', '02:32:00'),
(469, 221, 'CPD', '02:43:00', '03:10:00'),
(470, 221, 'TSM', '03:56:00', '04:20:00'),
(471, 221, 'MNJ', '04:32:00', '04:41:00'),
(472, 221, 'CI', '04:56:00', '05:09:00'),
(473, 221, 'BJR', '05:34:00', '05:47:00'),
(474, 221, 'SDR', '06:18:00', '06:20:00'),
(475, 221, 'GDM', '06:28:00', '06:30:00'),
(476, 221, 'MA', '07:05:00', '07:07:00'),
(477, 221, 'KYA', '07:21:00', '07:40:00'),
(478, 221, 'PWT', '08:08:00', '08:10:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `poin` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `email`, `no_hp`, `username`, `password`, `poin`) VALUES
(1, 'Yulin Zurina', 'yulinz@gmail.com', '085370600000', 'yulinz', 'sicantik', 5),
(2, 'Irma Damayanti', 'irma@gmail.com', '082165500000', 'irmadamay', 'prettygirl', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_dataterlambat`
--
ALTER TABLE `tbl_dataterlambat`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tbl_harga`
--
ALTER TABLE `tbl_harga`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tbl_keretaapi`
--
ALTER TABLE `tbl_keretaapi`
  ADD PRIMARY KEY (`id_kereta`);

--
-- Indexes for table `tbl_namastasiun`
--
ALTER TABLE `tbl_namastasiun`
  ADD PRIMARY KEY (`id_stasiun`);

--
-- Indexes for table `tbl_pemesanan`
--
ALTER TABLE `tbl_pemesanan`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tbl_stasiun`
--
ALTER TABLE `tbl_stasiun`
  ADD PRIMARY KEY (`id_berangkat`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_dataterlambat`
--
ALTER TABLE `tbl_dataterlambat`
  MODIFY `no` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tbl_harga`
--
ALTER TABLE `tbl_harga`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_keretaapi`
--
ALTER TABLE `tbl_keretaapi`
  MODIFY `id_kereta` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT for table `tbl_namastasiun`
--
ALTER TABLE `tbl_namastasiun`
  MODIFY `id_stasiun` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `tbl_pemesanan`
--
ALTER TABLE `tbl_pemesanan`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_stasiun`
--
ALTER TABLE `tbl_stasiun`
  MODIFY `id_berangkat` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=479;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
