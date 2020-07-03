-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2020 at 12:47 PM
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
  `kriteria3_mapel` float NOT NULL,
  `kriteria4_perilaku` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_matrik`
--

INSERT INTO `tbl_matrik` (`id_matrik`, `nik`, `kriteria1_absensi`, `kriteria2_extrakulikuler`, `kriteria3_mapel`, `kriteria4_perilaku`, `status`) VALUES
(1, 202001, 11, 2, 92.9, 4, 0),
(2, 202002, 8, 4, 93.3, 4, 0),
(3, 202003, 7, 5, 87.4, 5, 0),
(4, 202004, 5, 5, 87.3, 4, 0),
(5, 202005, 1, 5, 86.8, 5, 0),
(6, 202006, 3, 4, 85.3, 4, 0),
(7, 202007, 20, 5, 85.3, 4, 0),
(8, 202008, 6, 2, 84.7, 4, 0),
(9, 202009, 14, 5, 83.9, 4, 0),
(10, 202010, 1, 4, 83.9, 5, 0),
(11, 202011, 12, 2, 83.6, 4, 0),
(12, 202012, 4, 5, 82.1, 4, 0),
(13, 202013, 14, 4, 81.3, 5, 0),
(14, 202014, 11, 5, 80.8, 4, 0),
(15, 202015, 1, 3, 80.3, 4, 0),
(16, 202016, 3, 3, 80.1, 4, 0),
(17, 202017, 21, 3, 80.1, 4, 0),
(18, 202018, 8, 3, 78.9, 4, 0),
(19, 202019, 14, 4, 78.4, 4, 0),
(20, 202020, 13, 4, 78.4, 5, 0),
(21, 202021, 22, 4, 77.4, 4, 0),
(22, 202022, 11, 4, 77.3, 4, 0),
(23, 202023, 3, 5, 77, 3, 0),
(24, 202024, 7, 3, 77, 4, 0),
(25, 202025, 8, 3, 75.2, 4, 0),
(26, 202026, 12, 3, 74.8, 4, 0),
(27, 202027, 3, 5, 73.9, 5, 0);

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
(1, 202001, 202001, 'FATRA HAUNA NIMATILLAH', 'III', '2019/2020', 'Perawang km2', 0),
(2, 202002, 202002, 'ANINDHITA VAZZA TSURAYYA', 'III', '2019/2020', 'bunut', 0),
(3, 202003, 202003, 'NAZWA NURUL FAUZIAH', 'III', '2019/2020', 'bunut RT2', 0),
(4, 202004, 202004, 'AYLA RISMA', 'III', '2019/2020', 'Perawang km2', 0),
(5, 202005, 202005, 'KAISYA AGHWIN NAZIFA', 'III', '2019/2020', 'Perawang km1', 0),
(6, 202006, 202006, 'KINANDA MEIFIANA PUTRI', 'III', '2019/2020', 'bunut', 0),
(7, 202007, 202007, 'ELSANA AMTIS', 'III', '2019/2020', 'bunut city', 0),
(8, 202008, 202008, 'DIVA CAHYANA.S.', 'III', '2019/2020', 'Perawang km 14', 0),
(9, 202009, 202009, 'NATAYA DEVIV SASI KIRANA', 'III', '2019/2020', 'bunut RT2', 0),
(10, 202010, 202010, 'ABDUL ASYIRUL  LATHIF', 'III', '2019/2020', 'bunut', 0),
(11, 202011, 202011, 'FATIH MUHAMMAD TSAQIB', 'III', '2019/2020', 'bunut RT2', 0),
(12, 202012, 202012, 'ABDILLAH PAPIAN SYAPUTRA', 'III', '2019/2020', 'bunut', 0),
(13, 202013, 202013, 'FUADY', 'III', '2019/2020', 'Perawang km1', 0),
(14, 202014, 202014, 'ADITYA WICAKSONO', 'III', '2019/2020', 'bunut RT2', 0),
(15, 202015, 202015, 'ANNISA PUTRI SHOVIYA', 'III', '2019/2020', 'Perawang km1', 0),
(16, 202016, 202016, 'RAYHAN RAMADHAN', 'III', '2019/2020', 'bunut RT2', 0),
(17, 202017, 202017, 'M. AYHKAL DERMAWAN', 'III', '2019/2020', 'Perawang km2', 0),
(18, 202018, 202018, 'M.ARIEF', 'III', '2019/2020', 'Perawang km 14', 0),
(19, 202019, 202019, 'RIZKI KADIZA', 'III', '2019/2020', 'bunut', 0),
(20, 202020, 202020, 'ADINDA SYAHIRA KARDI', 'III', '2019/2020', 'Perawang km1', 0),
(21, 202021, 202021, 'M. ZAIM ARFA KAMIL', 'III', '2019/2020', 'Perawang km2', 0),
(22, 202022, 202022, 'SYAUQI SYAMIL SIAGIAN', 'III', '2019/2020', 'Perawang km1', 0),
(23, 202023, 202023, 'FAHRI SURYA', 'III', '2019/2020', 'bunut', 0),
(24, 202024, 202024, 'MUHAMMAD RIZKI', 'III', '2019/2020', 'bunut RT2', 0),
(25, 202025, 202025, 'MUHAMMAD IRSYAD', 'III', '2019/2020', 'bunut RT2', 0),
(26, 202026, 202026, 'MUHAMMAD DHAFA RADITYA', 'III', '2019/2020', 'bunut', 0),
(27, 202027, 202027, 'ANISAH SAFITRI', 'III', '2019/2020', 'bunut', 0);

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
  MODIFY `id_matrik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_santri`
--
ALTER TABLE `tbl_santri`
  MODIFY `id_santri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
