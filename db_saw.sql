-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2020 at 03:34 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_saw`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_matrik`
--

CREATE TABLE `tbl_matrik` (
  `id_matrik` int(11) NOT NULL,
  `nik` int(11) NOT NULL,
  `kriteria1_absensi` int(11) NOT NULL,
  `kriteria2_extrakulikuler` int(11) NOT NULL,
  `kriteria3_mapel` int(11) NOT NULL,
  `kriteria4_perilaku` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_matrik`
--

INSERT INTO `tbl_matrik` (`id_matrik`, `nik`, `kriteria1_absensi`, `kriteria2_extrakulikuler`, `kriteria3_mapel`, `kriteria4_perilaku`, `status`) VALUES
(1, 202001, 4, 4, 4, 3, 1),
(2, 202002, 4, 3, 4, 4, 1),
(8, 202008, 3, 2, 2, 3, 0),
(6, 202007, 4, 4, 4, 3, 1),
(5, 202005, 3, 3, 4, 2, 1),
(9, 202009, 4, 3, 2, 4, 0),
(10, 202010, 3, 4, 4, 5, 0),
(11, 202011, 3, 4, 5, 3, 0),
(12, 202005, 3, 4, 4, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_santri`
--

CREATE TABLE `tbl_santri` (
  `id_santri` int(11) NOT NULL,
  `nik` int(11) NOT NULL,
  `nis` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kelas` varchar(5) NOT NULL,
  `th_ajaran` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_santri`
--

INSERT INTO `tbl_santri` (`id_santri`, `nik`, `nis`, `nama`, `kelas`, `th_ajaran`, `alamat`, `status`) VALUES
(1, 202001, 202001, 'Santri A', 'III', '2019/2020', 'Perawang km1', 1),
(2, 202002, 202002, 'Santri B', 'III', '2019/2020', 'Perawang km2', 1),
(8, 202008, 202008, 'Ade', 'IV', '2019/2020', 'Perawang km 14', 0),
(5, 202005, 202005, 'Santri E', 'III', '2019/2020', 'Perawang km2', 1),
(6, 202007, 202007, 'Santri C', 'III', '2019/2020', 'bunut RT2', 1),
(9, 202009, 202009, 'Budi', 'IV', '2019/2020', 'Perawang km 14', 0),
(10, 202010, 202010, 'Caca', 'IV', '2019/2020', 'bunut RT2', 0),
(11, 202011, 202011, 'Damar', 'IV', '2019/2020', 'bunut', 0),
(12, 202005, 202005, 'Eko', 'IV', '2019/2020', 'Perawang km2', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`) VALUES
('admin', 'admin123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_matrik`
--
ALTER TABLE `tbl_matrik`
  ADD PRIMARY KEY (`id_matrik`);

--
-- Indexes for table `tbl_santri`
--
ALTER TABLE `tbl_santri`
  ADD PRIMARY KEY (`id_santri`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_matrik`
--
ALTER TABLE `tbl_matrik`
  MODIFY `id_matrik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_santri`
--
ALTER TABLE `tbl_santri`
  MODIFY `id_santri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
