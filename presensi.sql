-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2023 at 05:02 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `presensi`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `kode_dosen` int(50) DEFAULT NULL,
  `kode_mk` int(50) NOT NULL,
  `nama_mk` varchar(50) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `no_telepon` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`kode_dosen`, `kode_mk`, `nama_mk`, `nama`, `username`, `password`, `no_telepon`) VALUES
(209017502, 214, 'Arsitektur & Sistem Enterprise', 'Ibnu Elmi, S.Kom., M.Cs.', 'ibnu01', '089061', 562828289),
(208018503, 215, 'Arsitektur Komputer & Sistem Operasi', 'Nining Arwana, S.Si., M.Si.', 'nining02', '089062', 628263892),
(207016504, 216, 'Pemrograman Basis Data', 'Anas Ma\'mun, S.T., M.Cs.', 'anas03', '089063', 729837634),
(206015501, 217, 'Pengantar Statistika & Ilmu Data', 'Supriyanto Wijaya Kusuma, S.Kom., M.Kom.', 'supriyanto04', '089064', 688623324),
(205014499, 218, 'Pengembangan Aplikasi Web Lanjut', 'Agung Pranowo, S.Kom., M.Kom.', 'agung05', '089065', 654321234),
(204013488, 219, 'Rekayasa Perangkat Lunak', 'Desy Ratnasari, S.T., M.Cs.', 'desy06', '089066', 897865433);

-- --------------------------------------------------------

--
-- Table structure for table `isi_presensi`
--

CREATE TABLE `isi_presensi` (
  `nomer` int(50) NOT NULL,
  `nim` int(50) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `prodi` varchar(50) NOT NULL,
  `semester` varchar(50) NOT NULL,
  `nama_mk` varchar(50) NOT NULL,
  `jadwal` varchar(50) NOT NULL,
  `tgl` varchar(50) NOT NULL,
  `jam` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `isi_presensi`
--

INSERT INTO `isi_presensi` (`nomer`, `nim`, `nama`, `prodi`, `semester`, `nama_mk`, `jadwal`, `tgl`, `jam`, `status`) VALUES
(30, 212103002, 'Agisni Amalia Lugina', 'Sistem Informasi', '4', 'Arsitektur & Sistem Enterprise', 'Minggu 1', '2023-05-23', '10:56', 'Hadir'),
(32, 212103002, 'Agisni Amalia Lugina', 'Sistem Informasi', '4', 'Arsitektur Komputer & Sistem Operasi', 'Minggu 1', '2023-05-23', '11:03', 'Hadir'),
(33, 212103002, 'Agisni Amalia Lugina', 'Sistem Informasi', '4', 'Pemrograman Basis Data', 'Minggu 1', '2023-05-23', '11:03', 'Hadir'),
(34, 212103002, 'Agisni Amalia Lugina', 'Sistem Informasi', '4', 'Pengantar Statistika & Ilmu Data', 'Minggu 1', '2023-05-23', '11:03', 'Hadir'),
(35, 212103002, 'Agisni Amalia Lugina', 'Sistem Informasi', '4', 'Pengembangan Aplikasi Web Lanjut', 'Minggu 1', '2023-05-23', '11:04', 'Hadir'),
(36, 212103002, 'Agisni Amalia Lugina', 'Sistem Informasi', '4', 'Rekayasa Perangkat Lunak', 'Minggu 1', '2023-05-23', '11:03', 'Hadir'),
(37, 212103003, 'Ai rida Marliana', 'Sistem Informasi', '4', 'Arsitektur & Sistem Enterprise', 'Minggu 1', '2023-05-23', '11:05', 'Hadir'),
(38, 212103003, 'Ai rida Marliana', 'Sistem Informasi', '4', 'Arsitektur Komputer & Sistem Operasi', 'Minggu 1', '2023-05-23', '11:05', 'Hadir'),
(39, 212103003, 'Ai rida Marliana', 'Sistem Informasi', '4', 'Pemrograman Basis Data', 'Minggu 1', '2023-05-23', '11:05', 'Hadir'),
(41, 212103003, 'Ai rida Marliana', 'Sistem Informasi', '4', 'Pengantar Statistika & Ilmu Data', 'Minggu 1', '2023-05-23', '11:06', 'Hadir'),
(42, 212103003, 'Ai rida Marliana', 'Sistem Informasi', '4', 'Pengembangan Aplikasi Web Lanjut', 'Minggu 1', '2023-05-23', '11:07', 'Hadir'),
(43, 212103003, 'Ai rida Marliana', 'Sistem Informasi', '4', 'Rekayasa Perangkat Lunak', 'Minggu 1', '2023-05-23', '11:07', 'Hadir'),
(44, 212103005, 'Bella Banzira', 'Sistem Informasi', '4', 'Arsitektur & Sistem Enterprise', 'Minggu 1', '2023-05-23', '11:11', 'Hadir'),
(45, 212103005, 'Bella Banzira', 'Sistem Informasi', '4', 'Arsitektur Komputer & Sistem Operasi', 'Minggu 1', '2023-05-23', '11:11', 'Hadir'),
(46, 212103005, 'Bella Banzira', 'Sistem Informasi', '4', 'Pemrograman Basis Data', 'Minggu 1', '2023-05-23', '11:12', 'Hadir'),
(47, 212103005, 'Bella Banzira', 'Sistem Informasi', '4', 'Pengantar Statistika & Ilmu Data', 'Minggu 1', '2023-05-23', '11:12', 'Hadir'),
(48, 212103005, 'Bella Banzira', 'Sistem Informasi', '4', 'Pengembangan Aplikasi Web Lanjut', 'Minggu 1', '2023-05-23', '11:12', 'Hadir'),
(50, 212103005, 'Bella Banzira', 'Sistem Informasi', '4', 'Rekayasa Perangkat Lunak', 'Minggu 1', '2023-05-23', '11:13', 'Hadir'),
(51, 212103006, 'Boby Prasetio', 'Sistem Informasi', '4', 'Arsitektur & Sistem Enterprise', 'Minggu 1', '2023-05-23', '11:14', 'Hadir'),
(52, 212103006, 'Boby Prasetio', 'Sistem Informasi', '4', 'Arsitektur Komputer & Sistem Operasi', 'Minggu 1', '2023-05-23', '11:14', 'Hadir'),
(53, 212103006, 'Boby Prasetio', 'Sistem Informasi', '4', 'Pemrograman Basis Data', 'Minggu 1', '2023-05-23', '11:15', 'Hadir'),
(54, 212103006, 'Boby Prasetio', 'Sistem Informasi', '4', 'Pengantar Statistika & Ilmu Data', 'Minggu 1', '2023-05-23', '11:16', 'Hadir'),
(55, 212103006, 'Boby Prasetio', 'Sistem Informasi', '4', 'Pengembangan Aplikasi Web Lanjut', 'Minggu 1', '2023-05-23', '11:16', 'Hadir'),
(56, 212103006, 'Boby Prasetio', 'Sistem Informasi', '4', 'Rekayasa Perangkat Lunak', 'Minggu 1', '2023-05-23', '11:16', 'Hadir'),
(57, 212103007, 'Cindy Putri', 'Sistem Informasi', '4', 'Arsitektur & Sistem Enterprise', 'Minggu 1', '2023-05-23', '11:18', 'Hadir'),
(58, 212103007, 'Cindy Putri', 'Sistem Informasi', '4', 'Arsitektur Komputer & Sistem Operasi', 'Minggu 1', '2023-05-23', '11:19', 'Hadir'),
(59, 212103007, 'Cindy Putri', 'Sistem Informasi', '4', 'Pemrograman Basis Data', 'Minggu 1', '2023-05-23', '11:19', 'Hadir'),
(60, 212103007, 'Cindy Putri', 'Sistem Informasi', '4', 'Pengantar Statistika & Ilmu Data', 'Minggu 1', '2023-05-23', '11:20', 'Hadir'),
(61, 212103007, 'Cindy Putri', 'Sistem Informasi', '4', 'Pengembangan Aplikasi Web Lanjut', 'Minggu 1', '2023-05-23', '11:21', 'Hadir'),
(62, 212103007, 'Cindy Putri', 'Sistem Informasi', '4', 'Rekayasa Perangkat Lunak', 'Minggu 1', '2023-05-23', '11:22', 'Hadir'),
(63, 212103008, 'Cinta Putri Adinda', 'Sistem Informasi', '4', 'Arsitektur & Sistem Enterprise', 'Minggu 1', '2023-05-23', '11:23', 'Hadir'),
(64, 212103008, 'Cinta Putri Adinda', 'Sistem Informasi', '4', 'Arsitektur Komputer & Sistem Operasi', 'Minggu 1', '2023-05-23', '11:24', 'Hadir'),
(65, 212103008, 'Cinta Putri Adinda', 'Sistem Informasi', '4', 'Pemrograman Basis Data', 'Minggu 1', '2023-05-23', '11:24', 'Hadir'),
(66, 212103008, 'Cinta Putri Adinda', 'Sistem Informasi', '4', 'Pengantar Statistika & Ilmu Data', 'Minggu 1', '2023-05-23', '11:25', 'Hadir'),
(67, 212103008, 'Cinta Putri Adinda', 'Sistem Informasi', '4', 'Pengembangan Aplikasi Web Lanjut', 'Minggu 1', '2023-05-23', '11:26', 'Hadir'),
(68, 212103008, 'Cinta Putri Adinda', 'Sistem Informasi', '4', 'Rekayasa Perangkat Lunak', 'Minggu 1', '2023-05-23', '11:26', 'Hadir'),
(69, 212103009, 'Cut Alizah', 'Sistem Informasi', '4', 'Arsitektur & Sistem Enterprise', 'Minggu 1', '2023-05-23', '11:28', 'Hadir'),
(70, 212103009, 'Cut Alizah', 'Sistem Informasi', '4', 'Arsitektur Komputer & Sistem Operasi', 'Minggu 1', '2023-05-23', '11:28', 'Hadir'),
(71, 212103009, 'Cut Alizah', 'Sistem Informasi', '4', 'Pemrograman Basis Data', 'Minggu 1', '2023-05-23', '11:28', 'Hadir'),
(72, 212103009, 'Cut Alizah', 'Sistem Informasi', '4', 'Pengantar Statistika & Ilmu Data', 'Minggu 1', '2023-05-23', '11:29', 'Hadir'),
(73, 212103009, 'Cut Alizah', 'Sistem Informasi', '4', 'Pengembangan Aplikasi Web Lanjut', 'Minggu 1', '2023-05-23', '11:30', 'Hadir'),
(74, 212103009, 'Cut Alizah', 'Sistem Informasi', '4', 'Rekayasa Perangkat Lunak', 'Minggu 1', '2023-05-23', '11:30', 'Hadir'),
(75, 212103010, 'Dandi Pratama', 'Sistem Informasi', '4', 'Arsitektur & Sistem Enterprise', 'Minggu 1', '2023-05-23', '11:31', 'Hadir'),
(76, 212103010, 'Dandi Pratama', 'Sistem Informasi', '4', 'Arsitektur Komputer & Sistem Operasi', 'Minggu 1', '2023-05-23', '11:32', 'Hadir'),
(77, 212103010, 'Dandi Pratama', 'Sistem Informasi', '4', 'Pemrograman Basis Data', 'Minggu 1', '2023-05-23', '11:32', 'Hadir'),
(78, 212103010, 'Dandi Pratama', 'Sistem Informasi', '4', 'Pengantar Statistika & Ilmu Data', 'Minggu 1', '2023-05-23', '11:33', 'Hadir'),
(79, 212103010, 'Dandi Pratama', 'Sistem Informasi', '4', 'Pengembangan Aplikasi Web Lanjut', 'Minggu 1', '2023-05-23', '11:33', 'Hadir'),
(80, 212103010, 'Dandi Pratama', 'Sistem Informasi', '4', 'Rekayasa Perangkat Lunak', 'Minggu 1', '2023-05-23', '11:33', 'Hadir'),
(81, 212103011, 'Dinda Adelia', 'Sistem Informasi', '4', 'Arsitektur & Sistem Enterprise', 'Minggu 1', '2023-05-23', '11:35', 'Hadir'),
(82, 212103011, 'Dinda Adelia', 'Sistem Informasi', '4', 'Arsitektur Komputer & Sistem Operasi', 'Minggu 1', '2023-05-23', '11:36', 'Hadir'),
(83, 212103011, 'Dinda Adelia', 'Sistem Informasi', '4', 'Pemrograman Basis Data', 'Minggu 1', '2023-05-23', '18:16', 'Hadir'),
(84, 212103011, 'Dinda Adelia', 'Sistem Informasi', '4', 'Pengantar Statistika & Ilmu Data', 'Minggu 1', '2023-05-23', '18:16', 'Hadir'),
(85, 212103011, 'Dinda Adelia', 'Sistem Informasi', '4', 'Pengembangan Aplikasi Web Lanjut', 'Minggu 1', '2023-05-23', '18:17', 'Hadir'),
(86, 212103011, 'Dinda Adelia', 'Sistem Informasi', '4', 'Rekayasa Perangkat Lunak', 'Minggu 1', '2023-05-23', '18:17', 'Hadir'),
(87, 212103012, 'Doni Saputra', 'Sistem Informasi', '4', 'Arsitektur & Sistem Enterprise', 'Minggu 1', '2023-05-23', '18:18', 'Hadir'),
(88, 212103012, 'Doni Saputra', 'Sistem Informasi', '4', 'Arsitektur Komputer & Sistem Operasi', 'Minggu 1', '2023-05-23', '18:19', 'Hadir'),
(89, 212103012, 'Doni Saputra', 'Sistem Informasi', '4', 'Pemrograman Basis Data', 'Minggu 1', '2023-05-23', '18:19', 'Hadir'),
(90, 212103012, 'Doni Saputra', 'Sistem Informasi', '4', 'Pengantar Statistika & Ilmu Data', 'Minggu 1', '2023-05-23', '18:20', 'Hadir'),
(91, 212103012, 'Doni Saputra', 'Sistem Informasi', '4', 'Pengembangan Aplikasi Web Lanjut', 'Minggu 1', '2023-05-23', '18:21', 'Hadir'),
(92, 212103012, 'Doni Saputra', 'Sistem Informasi', '4', 'Rekayasa Perangkat Lunak', 'Minggu 1', '2023-05-23', '18:21', 'Hadir'),
(93, 212103013, 'Ferdi Sambo', 'Sistem Informasi', '4', 'Arsitektur & Sistem Enterprise', 'Minggu 1', '2023-05-23', '18:22', 'Hadir'),
(94, 212103013, 'Ferdi Sambo', 'Sistem Informasi', '4', 'Arsitektur Komputer & Sistem Operasi', 'Minggu 1', '2023-05-23', '18:23', 'Hadir'),
(95, 212103013, 'Ferdi Sambo', 'Sistem Informasi', '4', 'Pemrograman Basis Data', 'Minggu 1', '2023-05-23', '18:23', 'Hadir'),
(96, 212103013, 'Ferdi Sambo', 'Sistem Informasi', '4', 'Pengantar Statistika & Ilmu Data', 'Minggu 1', '2023-05-23', '18:24', 'Hadir'),
(97, 212103013, 'Ferdi Sambo', 'Sistem Informasi', '4', 'Pengembangan Aplikasi Web Lanjut', 'Minggu 1', '2023-05-23', '18:24', 'Hadir'),
(98, 212103013, 'Ferdi Sambo', 'Sistem Informasi', '4', 'Rekayasa Perangkat Lunak', 'Minggu 1', '2023-05-23', '18:24', 'Hadir'),
(99, 212103014, 'Fina Dwi Lestari', 'Sistem Informasi', '4', 'Arsitektur & Sistem Enterprise', 'Minggu 1', '2023-05-23', '18:26', 'Hadir'),
(100, 212103014, 'Fina Dwi Lestari', 'Sistem Informasi', '4', 'Arsitektur Komputer & Sistem Operasi', 'Minggu 1', '2023-05-24', '18:26', 'Hadir'),
(101, 212103014, 'Fina Dwi Lestari', 'Sistem Informasi', '4', 'Pemrograman Basis Data', 'Minggu 1', '2023-05-24', '18:26', 'Hadir'),
(102, 212103014, 'Fina Dwi Lestari', 'Sistem Informasi', '4', 'Pengantar Statistika & Ilmu Data', 'Minggu 1', '2023-05-23', '18:27', 'Hadir'),
(103, 212103014, 'Fina Dwi Lestari', 'Sistem Informasi', '4', 'Pengembangan Aplikasi Web Lanjut', 'Minggu 1', '2023-05-24', '18:27', 'Hadir'),
(104, 212103014, 'Fina Dwi Lestari', 'Sistem Informasi', '4', 'Rekayasa Perangkat Lunak', 'Minggu 1', '2023-05-23', '18:27', 'Hadir'),
(105, 212103015, 'Fiony Putri Larasati', 'Sistem Informasi', '4', 'Arsitektur & Sistem Enterprise', 'Minggu 1', '2023-05-23', '18:28', 'Hadir'),
(106, 212103015, 'Fiony Putri Larasati', 'Sistem Informasi', '4', 'Arsitektur Komputer & Sistem Operasi', 'Minggu 1', '2023-05-23', '18:29', 'Hadir'),
(107, 212103015, 'Fiony Putri Larasati', 'Sistem Informasi', '4', 'Pemrograman Basis Data', 'Minggu 1', '2023-05-23', '18:29', 'Hadir'),
(108, 212103015, 'Fiony Putri Larasati', 'Sistem Informasi', '4', 'Pengantar Statistika & Ilmu Data', 'Minggu 1', '2023-05-23', '18:29', 'Hadir'),
(109, 212103015, 'Fiony Putri Larasati', 'Sistem Informasi', '4', 'Pengembangan Aplikasi Web Lanjut', 'Minggu 1', '2023-05-23', '18:29', 'Hadir'),
(110, 212103015, 'Fiony Putri Larasati', 'Sistem Informasi', '4', 'Rekayasa Perangkat Lunak', 'Minggu 1', '2023-05-23', '18:29', 'Hadir'),
(111, 212103016, 'Galih Gunawan', 'Sistem Informasi', '4', 'Arsitektur & Sistem Enterprise', 'Minggu 1', '2023-05-23', '18:30', 'Hadir'),
(113, 212103016, 'Galih Gunawan', 'Sistem Informasi', '4', 'Pemrograman Basis Data', 'Minggu 1', '2023-05-23', '18:31', 'Hadir'),
(114, 212103016, 'Galih Gunawan', 'Sistem Informasi', '4', 'Pengantar Statistika & Ilmu Data', 'Minggu 1', '2023-05-23', '18:31', 'Hadir'),
(115, 212103016, 'Galih Gunawan', 'Sistem Informasi', '4', 'Pengembangan Aplikasi Web Lanjut', 'Minggu 1', '2023-05-23', '18:31', 'Hadir'),
(116, 212103016, 'Galih Gunawan', 'Sistem Informasi', '4', 'Rekayasa Perangkat Lunak', 'Minggu 1', '2023-05-23', '18:32', 'Hadir'),
(117, 212103017, 'Gina Regina', 'Sistem Informasi', '4', 'Arsitektur & Sistem Enterprise', 'Minggu 1', '2023-05-23', '18:33', 'Hadir'),
(118, 212103017, 'Gina Regina', 'Sistem Informasi', '4', 'Arsitektur Komputer & Sistem Operasi', 'Minggu 1', '2023-05-23', '18:33', 'Hadir'),
(119, 212103017, 'Gina Regina', 'Sistem Informasi', '4', 'Pemrograman Basis Data', 'Minggu 1', '2023-05-23', '18:34', 'Hadir'),
(120, 212103017, 'Gina Regina', 'Sistem Informasi', '4', 'Pengantar Statistika & Ilmu Data', 'Minggu 1', '2023-05-23', '18:34', 'Hadir'),
(121, 212103017, 'Gina Regina', 'Sistem Informasi', '4', 'Pengembangan Aplikasi Web Lanjut', 'Minggu 1', '2023-05-23', '18:34', 'Hadir'),
(122, 212103017, 'Gina Regina', 'Sistem Informasi', '4', 'Rekayasa Perangkat Lunak', 'Minggu 1', '2023-05-23', '18:34', 'Hadir'),
(123, 212103018, 'Gigi Hadid', 'Sistem Informasi', '4', 'Arsitektur & Sistem Enterprise', 'Minggu 1', '2023-05-23', '18:35', 'Hadir'),
(124, 212103018, 'Gigi Hadid', 'Sistem Informasi', '4', 'Arsitektur Komputer & Sistem Operasi', 'Minggu 1', '2023-05-23', '18:36', 'Hadir'),
(125, 212103018, 'Gigi Hadid', 'Sistem Informasi', '4', 'Pemrograman Basis Data', 'Minggu 1', '2023-05-23', '18:36', 'Hadir'),
(126, 212103018, 'Gigi Hadid', 'Sistem Informasi', '4', 'Pengantar Statistika & Ilmu Data', 'Minggu 1', '2023-05-23', '18:37', 'Hadir'),
(127, 212103018, 'Gigi Hadid', 'Sistem Informasi', '4', 'Pengembangan Aplikasi Web Lanjut', 'Minggu 1', '2023-05-23', '18:37', 'Hadir'),
(128, 212103018, 'Gigi Hadid', 'Sistem Informasi', '4', 'Rekayasa Perangkat Lunak', 'Minggu 1', '2023-05-23', '18:37', 'Hadir'),
(129, 212103019, 'Hana Hanun', 'Sistem Informasi', '4', 'Arsitektur & Sistem Enterprise', 'Minggu 1', '2023-05-23', '18:38', 'Hadir'),
(130, 212103019, 'Hana Hanun', 'Sistem Informasi', '4', 'Arsitektur Komputer & Sistem Operasi', 'Minggu 1', '2023-05-23', '18:39', 'Hadir'),
(131, 212103019, 'Hana Hanun', 'Sistem Informasi', '4', 'Pemrograman Basis Data', 'Minggu 1', '2023-05-23', '18:39', 'Hadir'),
(132, 212103019, 'Hana Hanun', 'Sistem Informasi', '4', 'Pengantar Statistika & Ilmu Data', 'Minggu 1', '2023-05-23', '18:39', 'Hadir'),
(133, 212103019, 'Hana Hanun', 'Sistem Informasi', '4', 'Pengembangan Aplikasi Web Lanjut', 'Minggu 1', '2023-05-23', '18:40', 'Hadir'),
(134, 212103019, 'Hana Hanun', 'Sistem Informasi', '4', 'Rekayasa Perangkat Lunak', 'Minggu 1', '2023-05-23', '18:40', 'Hadir'),
(135, 212103020, 'Heru Heriyanto', 'Sistem Informasi', '4', 'Arsitektur & Sistem Enterprise', 'Minggu 1', '2023-05-23', '18:41', 'Hadir'),
(136, 212103020, 'Heru Heriyanto', 'Sistem Informasi', '4', 'Arsitektur Komputer & Sistem Operasi', 'Minggu 1', '2023-05-23', '18:42', 'Hadir'),
(137, 212103020, 'Heru Heriyanto', 'Sistem Informasi', '4', 'Pemrograman Basis Data', 'Minggu 1', '2023-05-23', '18:42', 'Hadir'),
(138, 212103020, 'Heru Heriyanto', 'Sistem Informasi', '4', 'Pengantar Statistika & Ilmu Data', 'Minggu 1', '2023-05-23', '18:42', 'Hadir'),
(139, 212103020, 'Heru Heriyanto', 'Sistem Informasi', '4', 'Pengembangan Aplikasi Web Lanjut', 'Minggu 1', '2023-05-23', '18:43', 'Hadir'),
(140, 212103020, 'Heru Heriyanto', 'Sistem Informasi', '4', 'Rekayasa Perangkat Lunak', 'Minggu 1', '2023-05-23', '18:43', 'Hadir'),
(141, 212103021, 'Holand Sihombing', 'Sistem Informasi', '4', 'Arsitektur & Sistem Enterprise', 'Minggu 1', '2023-05-23', '18:44', 'Hadir'),
(142, 212103021, 'Holand Sihombing', 'Sistem Informasi', '4', 'Arsitektur Komputer & Sistem Operasi', 'Minggu 1', '2023-05-23', '18:45', 'Hadir'),
(143, 212103021, 'Holand Sihombing', 'Sistem Informasi', '4', 'Pemrograman Basis Data', 'Minggu 1', '2023-05-23', '18:45', 'Hadir'),
(144, 212103021, 'Holand Sihombing', 'Sistem Informasi', '4', 'Pengantar Statistika & Ilmu Data', 'Minggu 1', '2023-05-23', '18:46', 'Hadir'),
(145, 212103021, 'Holand Sihombing', 'Sistem Informasi', '4', 'Pengembangan Aplikasi Web Lanjut', 'Minggu 1', '2023-05-23', '18:46', 'Hadir'),
(146, 212103021, 'Holand Sihombing', 'Sistem Informasi', '4', 'Rekayasa Perangkat Lunak', 'Minggu 1', '2023-05-23', '18:47', 'Hadir'),
(147, 212103022, 'Indah Permatasari', 'Sistem Informasi', '4', 'Arsitektur & Sistem Enterprise', 'Minggu 1', '2023-05-23', '18:48', 'Hadir'),
(148, 212103022, 'Indah Permatasari', 'Sistem Informasi', '4', 'Arsitektur Komputer & Sistem Operasi', 'Minggu 1', '2023-05-23', '18:49', 'Hadir'),
(149, 212103022, 'Indah Permatasari', 'Sistem Informasi', '4', 'Pemrograman Basis Data', 'Minggu 1', '2023-05-23', '18:49', 'Hadir'),
(150, 212103022, 'Indah Permatasari', 'Sistem Informasi', '4', 'Pengembangan Aplikasi Web Lanjut', 'Minggu 1', '2023-05-23', '18:50', 'Hadir'),
(151, 212103022, 'Indah Permatasari', 'Sistem Informasi', '4', 'Rekayasa Perangkat Lunak', 'Minggu 1', '2023-05-23', '18:50', 'Hadir'),
(152, 212103023, 'Intan Randitha', 'Sistem Informasi', '4', 'Arsitektur & Sistem Enterprise', 'Minggu 1', '2023-05-23', '18:51', 'Hadir'),
(153, 212103023, 'Intan Randitha', 'Sistem Informasi', '4', 'Arsitektur Komputer & Sistem Operasi', 'Minggu 1', '2023-05-23', '18:52', 'Hadir'),
(154, 212103023, 'Intan Randitha', 'Sistem Informasi', '4', 'Pemrograman Basis Data', 'Minggu 1', '2023-05-23', '18:52', 'Hadir'),
(155, 212103023, 'Intan Randitha', 'Sistem Informasi', '4', 'Pengantar Statistika & Ilmu Data', 'Minggu 1', '2023-05-23', '18:53', 'Hadir'),
(156, 212103023, 'Intan Randitha', 'Sistem Informasi', '4', 'Pengembangan Aplikasi Web Lanjut', 'Minggu 1', '2023-05-23', '18:53', 'Hadir'),
(157, 212103023, 'Intan Randitha', 'Sistem Informasi', '4', 'Rekayasa Perangkat Lunak', 'Minggu 1', '2023-05-23', '18:54', 'Hadir'),
(158, 212103024, 'Ipin Mubarok', 'Sistem Informasi', '4', 'Arsitektur & Sistem Enterprise', 'Minggu 1', '2023-05-23', '18:55', 'Hadir'),
(159, 212103024, 'Ipin Mubarok', 'Sistem Informasi', '4', 'Arsitektur Komputer & Sistem Operasi', 'Minggu 1', '2023-05-23', '18:55', 'Hadir'),
(160, 212103024, 'Ipin Mubarok', 'Sistem Informasi', '4', 'Pemrograman Basis Data', 'Minggu 1', '2023-05-23', '18:56', 'Hadir'),
(161, 212103024, 'Ipin Mubarok', 'Sistem Informasi', '4', 'Pengantar Statistika & Ilmu Data', 'Minggu 1', '2023-05-23', '18:56', 'Hadir'),
(162, 212103024, 'Ipin Mubarok', 'Sistem Informasi', '4', 'Pengembangan Aplikasi Web Lanjut', 'Minggu 1', '2023-05-23', '18:57', 'Hadir'),
(163, 212103024, 'Ipin Mubarok', 'Sistem Informasi', '4', 'Rekayasa Perangkat Lunak', 'Minggu 1', '2023-05-23', '18:57', 'Hadir'),
(164, 212103025, 'Joni Joko', 'Sistem Informasi', '4', 'Arsitektur & Sistem Enterprise', 'Minggu 1', '2023-05-23', '18:59', 'Hadir'),
(165, 212103025, 'Joni Joko', 'Sistem Informasi', '4', 'Arsitektur Komputer & Sistem Operasi', 'Minggu 1', '2023-05-23', '18:59', 'Hadir'),
(166, 212103025, 'Joni Joko', 'Sistem Informasi', '4', 'Pemrograman Basis Data', 'Minggu 1', '2023-05-23', '19:00', 'Hadir'),
(167, 212103025, 'Joni Joko', 'Sistem Informasi', '4', 'Pengantar Statistika & Ilmu Data', 'Minggu 1', '2023-05-23', '19:00', 'Hadir'),
(168, 212103025, 'Joni Joko', 'Sistem Informasi', '4', 'Pengembangan Aplikasi Web Lanjut', 'Minggu 1', '2023-05-23', '19:00', 'Hadir'),
(169, 212103025, 'Joni Joko', 'Sistem Informasi', '4', 'Rekayasa Perangkat Lunak', 'Minggu 1', '2023-05-23', '19:01', 'Hadir'),
(170, 212103026, 'Kiki Saputri', 'Sistem Informasi', '4', 'Arsitektur & Sistem Enterprise', 'Minggu 1', '2023-05-23', '19:04', 'Hadir'),
(171, 212103026, 'Kiki Saputri', 'Sistem Informasi', '4', 'Arsitektur Komputer & Sistem Operasi', 'Minggu 1', '2023-05-23', '19:04', 'Hadir'),
(172, 212103026, 'Kiki Saputri', 'Sistem Informasi', '4', 'Pemrograman Basis Data', 'Minggu 1', '2023-05-23', '19:04', 'Hadir'),
(173, 212103026, 'Kiki Saputri', 'Sistem Informasi', '4', 'Pengantar Statistika & Ilmu Data', 'Minggu 1', '2023-05-23', '19:06', 'Hadir'),
(174, 212103026, 'Kiki Saputri', 'Sistem Informasi', '4', 'Pengembangan Aplikasi Web Lanjut', 'Minggu 1', '2023-05-23', '19:06', 'Hadir'),
(175, 212103026, 'Kiki Saputri', 'Sistem Informasi', '4', 'Rekayasa Perangkat Lunak', 'Minggu 1', '2023-05-23', '19:07', 'Hadir'),
(176, 212103027, 'Komang Wahyuni', 'Sistem Informasi', '4', 'Arsitektur & Sistem Enterprise', 'Minggu 1', '2023-05-23', '19:08', 'Hadir'),
(177, 212103027, 'Komang Wahyuni', 'Sistem Informasi', '4', 'Arsitektur Komputer & Sistem Operasi', 'Minggu 1', '2023-05-23', '19:08', 'Hadir'),
(178, 212103027, 'Komang Wahyuni', 'Sistem Informasi', '4', 'Pemrograman Basis Data', 'Minggu 1', '2023-05-23', '19:09', 'Hadir'),
(179, 212103027, 'Komang Wahyuni', 'Sistem Informasi', '4', 'Pengantar Statistika & Ilmu Data', 'Minggu 1', '2023-05-23', '19:09', 'Hadir'),
(181, 212103027, 'Komang Wahyuni', 'Sistem Informasi', '4', 'Pengembangan Aplikasi Web Lanjut', 'Minggu 1', '2023-05-23', '19:10', 'Hadir'),
(182, 212103027, 'Komang Wahyuni', 'Sistem Informasi', '4', 'Rekayasa Perangkat Lunak', 'Minggu 1', '2023-05-23', '19:10', 'Hadir'),
(183, 212103028, 'Lula Lahfah', 'Sistem Informasi', '4', 'Arsitektur & Sistem Enterprise', 'Minggu 1', '2023-05-23', '19:11', 'Hadir'),
(184, 212103028, 'Lula Lahfah', 'Sistem Informasi', '4', 'Arsitektur Komputer & Sistem Operasi', 'Minggu 1', '2023-05-23', '19:12', 'Hadir'),
(185, 212103028, 'Lula Lahfah', 'Sistem Informasi', '4', 'Pemrograman Basis Data', 'Minggu 1', '2023-05-23', '19:12', 'Hadir'),
(186, 212103028, 'Lula Lahfah', 'Sistem Informasi', '4', 'Pengantar Statistika & Ilmu Data', 'Minggu 1', '2023-05-23', '19:13', 'Hadir'),
(187, 212103028, 'Lula Lahfah', 'Sistem Informasi', '4', 'Pengembangan Aplikasi Web Lanjut', 'Minggu 1', '2023-05-23', '19:13', 'Hadir'),
(188, 212103028, 'Lula Lahfah', 'Sistem Informasi', '4', 'Rekayasa Perangkat Lunak', 'Minggu 1', '2023-05-23', '19:13', 'Hadir'),
(189, 212103029, 'Mutia Fadillah', 'Sistem Informasi', '4', 'Arsitektur & Sistem Enterprise', 'Minggu 1', '2023-05-23', '19:14', 'Hadir'),
(190, 212103029, 'Mutia Fadillah', 'Sistem Informasi', '4', 'Arsitektur Komputer & Sistem Operasi', 'Minggu 1', '2023-05-23', '19:14', 'Hadir'),
(191, 212103029, 'Mutia Fadillah', 'Sistem Informasi', '4', 'Pemrograman Basis Data', 'Minggu 1', '2023-05-23', '19:15', 'Hadir'),
(192, 212103029, 'Mutia Fadillah', 'Sistem Informasi', '4', 'Pengantar Statistika & Ilmu Data', 'Minggu 1', '2023-05-23', '19:15', 'Hadir'),
(193, 212103029, 'Mutia Fadillah', 'Sistem Informasi', '4', 'Pengembangan Aplikasi Web Lanjut', 'Minggu 1', '2023-05-23', '19:15', 'Hadir'),
(194, 212103029, 'Mutia Fadillah', 'Sistem Informasi', '4', 'Rekayasa Perangkat Lunak', 'Minggu 1', '2023-05-23', '19:16', 'Hadir'),
(195, 212103030, 'Nurul Azzahri', 'Sistem Informasi', '4', 'Arsitektur & Sistem Enterprise', 'Minggu 1', '2023-05-23', '19:17', 'Hadir'),
(196, 212103030, 'Nurul Azzahri', 'Sistem Informasi', '4', 'Arsitektur Komputer & Sistem Operasi', 'Minggu 1', '2023-05-23', '19:17', 'Hadir'),
(197, 212103030, 'Nurul Azzahri', 'Sistem Informasi', '4', 'Pemrograman Basis Data', 'Minggu 1', '2023-05-23', '19:17', 'Hadir'),
(198, 212103030, 'Nurul Azzahri', 'Sistem Informasi', '4', 'Pengantar Statistika & Ilmu Data', 'Minggu 1', '2023-05-23', '19:18', 'Hadir'),
(199, 212103030, 'Nurul Azzahri', 'Sistem Informasi', '4', 'Pengembangan Aplikasi Web Lanjut', 'Minggu 1', '2023-05-23', '19:18', 'Hadir'),
(200, 212103030, 'Nurul Azzahri', 'Sistem Informasi', '4', 'Rekayasa Perangkat Lunak', 'Minggu 1', '2023-05-23', '19:18', 'Hadir'),
(202, 212103022, 'Indah Permatasari', 'Sistem Informasi', '4', 'Pengantar Statistika & Ilmu Data', 'Minggu 1', '2023-05-23', '20:11', 'Hadir'),
(203, 212103001, 'Afriani', 'Sistem Informasi', '4', 'Arsitektur & Sistem Enterprise', 'Minggu 1', '2023-05-23', '20:12', 'Hadir'),
(204, 212103001, 'Afriani', 'Sistem Informasi', '4', 'Arsitektur Komputer & Sistem Operasi', 'Minggu 1', '2023-05-23', '20:12', 'Hadir'),
(205, 212103001, 'Afriani', 'Sistem Informasi', '4', 'Pemrograman Basis Data', 'Minggu 1', '2023-05-23', '20:13', 'Hadir'),
(206, 212103001, 'Afriani', 'Sistem Informasi', '4', 'Pengantar Statistika & Ilmu Data', 'Minggu 1', '2023-05-23', '20:13', 'Hadir'),
(207, 212103001, 'Afriani', 'Sistem Informasi', '4', 'Pengembangan Aplikasi Web Lanjut', 'Minggu 1', '2023-05-23', '20:14', 'Hadir'),
(208, 212103001, 'Afriani', 'Sistem Informasi', '4', 'Rekayasa Perangkat Lunak', 'Minggu 1', '2023-05-23', '20:14', 'Hadir'),
(209, 212103004, 'Baskara Putra', 'Sistem Informasi', '4', 'Arsitektur & Sistem Enterprise', 'Minggu 1', '2023-05-23', '20:15', 'Hadir'),
(210, 212103004, 'Baskara Putra', 'Sistem Informasi', '4', 'Arsitektur Komputer & Sistem Operasi', 'Minggu 1', '2023-05-23', '20:16', 'Hadir'),
(211, 212103004, 'Baskara Putra', 'Sistem Informasi', '4', 'Pemrograman Basis Data', 'Minggu 1', '2023-05-23', '20:16', 'Hadir'),
(212, 212103004, 'Baskara Putra', 'Sistem Informasi', '4', 'Pengantar Statistika & Ilmu Data', 'Minggu 1', '2023-05-23', '20:17', 'Hadir'),
(213, 212103004, 'Baskara Putra', 'Sistem Informasi', '4', 'Pengembangan Aplikasi Web Lanjut', 'Minggu 1', '2023-05-23', '20:17', 'Hadir'),
(215, 212103004, 'Baskara Putra', 'Sistem Informasi', '4', 'Rekayasa Perangkat Lunak', 'Minggu 1', '2023-05-23', '20:17', 'Hadir'),
(216, 212103001, 'Afriani', 'Sistem Informasi', '4', 'Arsitektur & Sistem Enterprise', 'Minggu 2', '2023-05-23', '21:33', 'Izin'),
(217, 212103001, 'Afriani', 'Sistem Informasi', '4', 'Arsitektur & Sistem Enterprise', 'Minggu 3', '2023-05-23', '21:44', 'Hadir'),
(218, 212103001, 'Afriani', 'Sistem Informasi', '4', 'Arsitektur & Sistem Enterprise', 'Minggu 4', '2023-05-23', '21:45', 'Alpa'),
(219, 212103001, 'Afriani', 'Sistem Informasi', '4', 'Arsitektur & Sistem Enterprise', 'Minggu 5', '2023-05-23', '21:46', 'Izin'),
(220, 212103001, 'Afriani', 'Sistem Informasi', '4', 'Arsitektur & Sistem Enterprise', 'Minggu 6', '2023-05-23', '21:46', 'Alpa'),
(221, 212103001, 'Afriani', 'Sistem Informasi', '4', 'Arsitektur & Sistem Enterprise', 'Minggu 7', '2023-05-23', '21:46', 'Izin'),
(222, 212103001, 'Afriani', 'Sistem Informasi', '4', 'Arsitektur & Sistem Enterprise', 'Minggu 8', '2023-05-23', '21:46', 'Hadir'),
(223, 212103001, 'Afriani', 'Sistem Informasi', '4', 'Arsitektur & Sistem Enterprise', 'Minggu 9', '2023-05-23', '21:47', 'Izin'),
(224, 212103001, 'Afriani', 'Sistem Informasi', '4', 'Arsitektur & Sistem Enterprise', 'Minggu 10', '2023-05-23', '21:47', 'Alpa'),
(225, 212103001, 'Afriani', 'Sistem Informasi', '4', 'Arsitektur & Sistem Enterprise', 'Minggu 11', '2023-05-23', '21:47', 'Alpa'),
(226, 212103001, 'Afriani', 'Sistem Informasi', '4', 'Arsitektur & Sistem Enterprise', 'Minggu 12', '2023-05-23', '21:47', 'Hadir'),
(227, 212103001, 'Afriani', 'Sistem Informasi', '4', 'Arsitektur & Sistem Enterprise', 'Minggu 13', '2023-05-23', '21:48', 'Izin'),
(228, 212103001, 'Afriani', 'Sistem Informasi', '4', 'Arsitektur & Sistem Enterprise', 'Minggu 14', '2023-05-23', '21:48', 'Hadir'),
(229, 212103001, 'Afriani', 'Sistem Informasi', '4', 'Arsitektur & Sistem Enterprise', 'Minggu 15', '2023-05-23', '21:49', 'Izin'),
(230, 212103001, 'Afriani', 'Sistem Informasi', '4', 'Arsitektur & Sistem Enterprise', 'Minggu 16', '2023-05-23', '21:49', 'Alpa'),
(231, 212103001, 'Afriani', 'Sistem Informasi', '4', 'Arsitektur & Sistem Enterprise', 'Minggu 17', '2023-05-23', '21:49', 'Alpa'),
(232, 212103004, 'Baskara Putra', 'Sistem Informasi', '4', 'Arsitektur & Sistem Enterprise', 'Minggu 2', '2023-05-24', '16:23', 'Hadir'),
(233, 212103004, 'Baskara Putra', 'Sistem Informasi', '4', 'Arsitektur Komputer & Sistem Operasi', 'Minggu 2', '2023-05-24', '20:12', 'Hadir'),
(234, 212103004, 'Baskara Putra', 'Sistem Informasi', '4', 'Pemrograman Basis Data', 'Minggu 2', '2023-05-24', '21:48', 'Hadir');

-- --------------------------------------------------------

--
-- Table structure for table `jmlh_presensi`
--

CREATE TABLE `jmlh_presensi` (
  `nim` int(50) NOT NULL,
  `nama_mk` varchar(50) NOT NULL,
  `jmlh_sakit` int(50) NOT NULL,
  `jmlh_izin` int(50) NOT NULL,
  `jmlh_hadir` int(50) NOT NULL,
  `jmlh_alfa` int(50) DEFAULT NULL,
  `persen` int(50) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jmlh_presensi`
--

INSERT INTO `jmlh_presensi` (`nim`, `nama_mk`, `jmlh_sakit`, `jmlh_izin`, `jmlh_hadir`, `jmlh_alfa`, `persen`, `keterangan`) VALUES
(212103001, 'Arsitektur & Sistem Enterprise', 0, 6, 5, 6, 29, 'Mahasiswa tidak dapat mengikuti UAS'),
(212103002, 'Arsitektur & Sistem Enterprise', 0, 0, 1, 0, 100, 'Mahasiswa dapat mengikuti UAS'),
(212103003, 'Arsitektur & Sistem Enterprise', 0, 0, 1, 0, 100, 'Mahasiswa dapat mengikuti UAS'),
(212103004, 'Arsitektur & Sistem Enterprise', 0, 0, 2, 0, 100, 'Mahasiswa dapat mengikuti UAS'),
(212103005, 'Arsitektur & Sistem Enterprise', 0, 0, 1, 0, 100, 'Mahasiswa dapat mengikuti UAS'),
(212103006, 'Arsitektur & Sistem Enterprise', 0, 0, 1, 0, 100, 'Mahasiswa dapat mengikuti UAS'),
(212103007, 'Arsitektur & Sistem Enterprise', 0, 0, 1, 0, 100, 'Mahasiswa dapat mengikuti UAS'),
(212103008, 'Arsitektur & Sistem Enterprise', 0, 0, 1, 0, 100, 'Mahasiswa dapat mengikuti UAS'),
(212103009, 'Arsitektur & Sistem Enterprise', 0, 0, 1, 0, 100, 'Mahasiswa dapat mengikuti UAS'),
(212103010, 'Arsitektur & Sistem Enterprise', 0, 0, 1, 0, 100, 'Mahasiswa dapat mengikuti UAS'),
(212103011, 'Arsitektur & Sistem Enterprise', 0, 0, 1, 0, 100, 'Mahasiswa dapat mengikuti UAS'),
(212103012, 'Arsitektur & Sistem Enterprise', 0, 0, 1, 0, 100, 'Mahasiswa dapat mengikuti UAS'),
(212103013, 'Arsitektur & Sistem Enterprise', 0, 0, 1, 0, 100, 'Mahasiswa dapat mengikuti UAS'),
(212103014, 'Arsitektur & Sistem Enterprise', 0, 0, 1, 0, 100, 'Mahasiswa dapat mengikuti UAS'),
(212103015, 'Arsitektur & Sistem Enterprise', 0, 0, 1, 0, 100, 'Mahasiswa dapat mengikuti UAS'),
(212103016, 'Arsitektur & Sistem Enterprise', 0, 0, 1, 0, 100, 'Mahasiswa dapat mengikuti UAS'),
(212103017, 'Arsitektur & Sistem Enterprise', 0, 0, 1, 0, 100, 'Mahasiswa dapat mengikuti UAS'),
(212103018, 'Arsitektur & Sistem Enterprise', 0, 0, 1, 0, 100, 'Mahasiswa dapat mengikuti UAS'),
(212103019, 'Arsitektur & Sistem Enterprise', 0, 0, 1, 0, 100, 'Mahasiswa dapat mengikuti UAS'),
(212103020, 'Arsitektur & Sistem Enterprise', 0, 0, 1, 0, 100, 'Mahasiswa dapat mengikuti UAS'),
(212103021, 'Arsitektur & Sistem Enterprise', 0, 0, 1, 0, 100, 'Mahasiswa dapat mengikuti UAS'),
(212103022, 'Arsitektur & Sistem Enterprise', 0, 0, 1, 0, 100, 'Mahasiswa dapat mengikuti UAS'),
(212103023, 'Arsitektur & Sistem Enterprise', 0, 0, 1, 0, 100, 'Mahasiswa dapat mengikuti UAS'),
(212103024, 'Arsitektur & Sistem Enterprise', 0, 0, 1, 0, 100, 'Mahasiswa dapat mengikuti UAS'),
(212103025, 'Arsitektur & Sistem Enterprise', 0, 0, 1, 0, 100, 'Mahasiswa dapat mengikuti UAS'),
(212103026, 'Arsitektur & Sistem Enterprise', 0, 0, 1, 0, 100, 'Mahasiswa dapat mengikuti UAS'),
(212103027, 'Arsitektur & Sistem Enterprise', 0, 0, 1, 0, 100, 'Mahasiswa dapat mengikuti UAS'),
(212103028, 'Arsitektur & Sistem Enterprise', 0, 0, 1, 0, 100, 'Mahasiswa dapat mengikuti UAS'),
(212103029, 'Arsitektur & Sistem Enterprise', 0, 0, 1, 0, 100, 'Mahasiswa dapat mengikuti UAS'),
(212103030, 'Arsitektur & Sistem Enterprise', 0, 0, 1, 0, 100, 'Mahasiswa dapat mengikuti UAS');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` int(50) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `Prodi` varchar(50) NOT NULL,
  `Semester` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `username`, `password`, `Prodi`, `Semester`) VALUES
(212103001, 'Afriani', 'afriani08', '089621', 'Sistem Informasi', '4'),
(212103002, 'Agisni Amalia Lugina', 'agisni02', '089622', 'Sistem Informasi', '4'),
(212103003, 'Ai rida Marliana', 'airida03', '089623', 'Sistem Informasi', '4'),
(212103004, 'Baskara Putra', 'baskara04', '089624', 'Sistem Informasi', '4'),
(212103005, 'Bella Banzira', 'bella05', '089625', 'Sistem Informasi', '4'),
(212103006, 'Boby Prasetio', 'boby06', '089626', 'Sistem Informasi', '4'),
(212103007, 'Cindy Putri', 'cindy07', '089627', 'Sistem Informasi', '4'),
(212103008, 'Cinta Putri Adinda', 'cinta08', '089628', 'Sistem Informasi', '4'),
(212103009, 'Cut Alizah', 'cut09', '089629', 'Sistem Informasi', '4'),
(212103010, 'Dandi Pratama', 'dandi10', '089630', 'Sistem Informasi', '4'),
(212103011, 'Dinda Adelia', 'dinda11', '089631', 'Sistem Informasi', '4'),
(212103012, 'Doni Saputra', 'doni12', '089632', 'Sistem Informasi', '4'),
(212103013, 'Ferdi Sambo', 'ferdi13', '089633', 'Sistem Informasi', '4'),
(212103014, 'Fina Dwi Lestari', 'fina14', '089634', 'Sistem Informasi', '4'),
(212103015, 'Fiony Putri Larasati', 'fiony15', '089635', 'Sistem Informasi', '4'),
(212103016, 'Galih Gunawan', 'galih16', '089636', 'Sistem Informasi', '4'),
(212103017, 'Gina Regina', 'gina17', '089637', 'Sistem Informasi', '4'),
(212103018, 'Gigi Hadid', 'gigi18', '089638', 'Sistem Informasi', '4'),
(212103019, 'Hana Hanun', 'hana19', '089639', 'Sistem Informasi', '4'),
(212103020, 'Heru Heriyanto', 'heru20', '089640', 'Sistem Informasi', '4'),
(212103021, 'Holand Sihombing', 'holand21', '089641', 'Sistem Informasi', '4'),
(212103022, 'Indah Permatasari', 'indah22', '089642', 'Sistem Informasi', '4'),
(212103023, 'Intan Randitha', 'intan23', '089643', 'Sistem Informasi', '4'),
(212103024, 'Ipin Mubarok', 'ipin24', '089644', 'Sistem Informasi', '4'),
(212103025, 'Joni Joko', 'joni25', '089645', 'Sistem Informasi', '4'),
(212103026, 'Kiki Saputri', 'kiki26', '089646', 'Sistem Informasi', '4'),
(212103027, 'Komang Wahyuni', 'komang27', '089647', 'Sistem Informasi', '4'),
(212103028, 'Lula Lahfah', 'lula28', '089648', 'Sistem Informasi', '4'),
(212103029, 'Mutia Fadillah', 'mutia29', '089649', 'Sistem Informasi', '4'),
(212103030, 'Nurul Azzahri', 'nurul30', '089650', 'Sistem Informasi', '4');

-- --------------------------------------------------------

--
-- Table structure for table `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `kode_mk` int(50) NOT NULL,
  `nama_mk` varchar(255) NOT NULL,
  `jumlah_sks` int(50) NOT NULL,
  `kode_dosen` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`kode_mk`, `nama_mk`, `jumlah_sks`, `kode_dosen`) VALUES
(214, 'Arsitektur & Sistem Enterprise', 4, 209017502),
(215, 'Arsitektur Komputer & Sistem Operasi', 2, 208018503),
(216, 'Pemrograman Basis Data', 3, 207016504),
(217, 'Pengantar Statistika & Ilmu Data', 4, 206015501),
(218, 'Pengembangan Aplikasi Web Lanjut', 4, 205014499),
(219, 'Rekayasa Perangkat Lunak', 4, 204013488);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`kode_mk`);

--
-- Indexes for table `isi_presensi`
--
ALTER TABLE `isi_presensi`
  ADD PRIMARY KEY (`nomer`);

--
-- Indexes for table `jmlh_presensi`
--
ALTER TABLE `jmlh_presensi`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`kode_mk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `isi_presensi`
--
ALTER TABLE `isi_presensi`
  MODIFY `nomer` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
