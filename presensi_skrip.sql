-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2024 at 06:10 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `presensi_skrip`
--

-- --------------------------------------------------------

--
-- Table structure for table `hasil`
--

CREATE TABLE `hasil` (
  `id` int(11) NOT NULL,
  `nama` varchar(199) NOT NULL,
  `kehadiran` int(11) NOT NULL,
  `ketidakhadiran` int(11) NOT NULL,
  `keterlambatan` int(11) NOT NULL,
  `bulan_tahun` varchar(11) NOT NULL,
  `jumlah_reward` int(11) NOT NULL,
  `reward_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hasil`
--

INSERT INTO `hasil` (`id`, `nama`, `kehadiran`, `ketidakhadiran`, `keterlambatan`, `bulan_tahun`, `jumlah_reward`, `reward_id`, `user_id`, `status`) VALUES
(214, 'Arief wijaya', 0, 78, 0, '2022-10', 0, 1, 2, 0),
(215, 'david user', 4, 74, 378, '2022-10', 0, 1, 16, 0),
(216, 'davidrenardi', 0, 78, 0, '2022-10', 0, 1, 32, 0),
(217, 'Haryanto', 0, 78, 0, '2022-10', 0, 1, 4, 0),
(218, 'Randy Surya', 0, 78, 0, '2022-10', 0, 1, 3, 0),
(219, 'takas', 10, 68, 607, '2022-10', 0, 1, 13, 0),
(220, 'Wahyudi setiawan', 0, 78, 0, '2022-10', 0, 1, 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id` int(11) NOT NULL,
  `nama_jadwal` varchar(191) NOT NULL,
  `tanggal` varchar(191) NOT NULL,
  `jam_mulai_jadwal` varchar(199) NOT NULL,
  `jam_selesai_jadwal` varchar(199) NOT NULL,
  `jam_mulai_presensi` varchar(191) NOT NULL,
  `jam_selesai_presensi` varchar(191) NOT NULL,
  `keterangan_jadwal` varchar(199) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id`, `nama_jadwal`, `tanggal`, `jam_mulai_jadwal`, `jam_selesai_jadwal`, `jam_mulai_presensi`, `jam_selesai_presensi`, `keterangan_jadwal`) VALUES
(10, 'Hari peringatan Maulid Nabi Muhammad SAW ', '2023-09-28', '', '', '', '', 'libur_kerja'),
(12, 'Rapat ', '2023-08-30', '13:00:00', '13:30:00', '12:55:00', '13:30:00', 'masuk_kerja'),
(15, 'Tanggal Merah', '2024-09-16', '', '', '', '', 'libur_kerja');

-- --------------------------------------------------------

--
-- Table structure for table `jam`
--

CREATE TABLE `jam` (
  `id` int(11) NOT NULL,
  `keterangan` varchar(191) NOT NULL,
  `jam_mulai` varchar(191) NOT NULL,
  `jam_selesai` varchar(191) NOT NULL,
  `jam_mulai_presensi` varchar(191) NOT NULL,
  `jam_selesai_presensi` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jam`
--

INSERT INTO `jam` (`id`, `keterangan`, `jam_mulai`, `jam_selesai`, `jam_mulai_presensi`, `jam_selesai_presensi`) VALUES
(1, 'Jam Kerja 1', '08:00:00', '12:00:00', '07:45:00', '09:00:00'),
(2, 'Jam Kerja 2', '14:00:00', '17:45:00', '13:45:00', '15:00:00'),
(3, 'Jam Pulang', '18:00:00', '18:15:00', '17:45:00', '18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `presensi`
--

CREATE TABLE `presensi` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `hari_presensi` varchar(191) NOT NULL,
  `tanggal_presensi` varchar(191) NOT NULL,
  `jam_presensi` varchar(191) NOT NULL,
  `jam_kerja_id` int(11) NOT NULL,
  `kehadiran` int(11) NOT NULL DEFAULT 0,
  `ketidakhadiran` int(11) NOT NULL DEFAULT 0,
  `keterlambatan` varchar(199) NOT NULL DEFAULT '00:00:00',
  `status` varchar(191) NOT NULL,
  `keterangan` varchar(191) NOT NULL,
  `file` varchar(191) NOT NULL DEFAULT 'default.png'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `presensi`
--

INSERT INTO `presensi` (`id`, `user_id`, `hari_presensi`, `tanggal_presensi`, `jam_presensi`, `jam_kerja_id`, `kehadiran`, `ketidakhadiran`, `keterlambatan`, `status`, `keterangan`, `file`) VALUES
(4, 13, 'Sabtu', '2022-10-08', '07:46:00', 1, 1, 0, '00:00:00', '1', 'Tepat_Waktu', 'default.png'),
(5, 13, 'Sabtu', '2022-10-08', '13:47:00', 2, 1, 0, '00:00:00', '1', 'Tepat_Waktu', 'default.png'),
(13, 13, 'Sabtu', '2022-10-08', '18:04:00', 3, 1, 0, '00:00:00', '1', 'Tepat_Waktu', 'default.png'),
(17, 13, 'Rabu', '2022-11-09', '17:07:00', 2, 1, 0, '03:07:00', '1', 'Terlambat', 'default.png'),
(21, 13, 'Rabu', '2022-11-09', '07:46:00', 1, 1, 0, '00:00:00', '1', 'Tepat_Waktu', 'default.png'),
(25, 13, 'Rabu', '2022-11-09', '18:09:00', 3, 1, 0, '00:00:00', '1', 'Tepat_Waktu', 'default.png'),
(26, 13, 'Kamis', '2022-10-20', '13:47:00', 2, 1, 0, '00:00:00', '1', 'Tepat_Waktu', 'default.png'),
(31, 13, 'Jumat', '2022-10-21', '16:24:00', 2, 1, 0, '02:24:00', '1', 'Terlambat', 'default.png'),
(32, 16, 'Jumat', '2022-10-21', '16:27:00', 2, 1, 0, '00:00:00', '1', 'Tepat_Waktu', 'default.png'),
(33, 16, 'Jumat', '2022-10-21', '16:27:00', 3, 0, 1, '00:00:00', '1', 'Izin', 'default.png'),
(34, 13, 'Sabtu', '2022-10-22', '15:28:00', 2, 1, 0, '01:28:00', '1', 'Terlambat', 'default.png'),
(35, 16, 'Sabtu', '2022-10-22', '15:40:00', 2, 1, 0, '01:40:00', '1', 'Terlambat', 'default.png'),
(39, 16, 'Kamis', '2022-10-27', '15:56:00', 2, 1, 0, '01:56:00', '1', 'Terlambat', 'default.png'),
(40, 13, 'Kamis', '2022-10-27', '17:33:00', 2, 1, 0, '03:33:00', '1', 'Terlambat', 'default.png'),
(41, 13, 'Kamis', '2022-10-27', '18:14:00', 3, 1, 0, '00:00:00', '1', 'Tepat_Waktu', 'default.png'),
(46, 16, 'Jumat', '2022-10-28', '17:22:00', 2, 1, 0, '03:22:00', '1', 'Terlambat', 'default.png'),
(47, 13, 'Jumat', '2022-10-28', '17:22:00', 2, 1, 0, '03:22:00', '1', 'Terlambat', 'default.png'),
(48, 13, 'Jumat', '2022-10-28', '17:29:00', 3, 0, 1, '00:00:00', '1', 'Sakit', 'default.png'),
(49, 13, 'Senin', '2022-10-31', '13:51:00', 2, 1, 0, '00:00:00', '1', 'Tepat_Waktu', 'default.png'),
(50, 13, 'Selasa', '2022-11-01', '07:48:00', 1, 1, 0, '00:00:00', '1', 'Tepat_Waktu', 'default.png'),
(53, 16, 'Selasa', '2022-11-01', '14:58:00', 2, 1, 0, '00:58:00', '1', 'Terlambat', 'default.png'),
(54, 7, 'Jumat', '2022-11-04', '14:33:00', 2, 1, 0, '00:33:00', '1', 'Terlambat', 'default.png'),
(55, 16, 'Rabu', '2022-11-16', '17:41:00', 2, 1, 0, '03:41:00', '1', 'Terlambat', 'default.png'),
(56, 16, 'Rabu', '2022-11-16', '18:11:00', 3, 1, 0, '00:11:00', '1', 'Terlambat', 'default.png'),
(57, 16, 'Kamis', '2022-11-24', '15:48:00', 2, 1, 0, '01:48:00', '1', 'Terlambat', 'default.png'),
(58, 13, 'Jumat', '2022-11-25', '13:52:00', 2, 1, 0, '00:00:00', '1', 'Tepat_Waktu', 'default.png'),
(59, 16, 'Jumat', '2022-11-25', '13:53:00', 2, 1, 0, '00:00:00', '1', 'Tepat_Waktu', 'default.png'),
(60, 16, 'Sabtu', '2022-12-03', '13:45:00', 2, 1, 0, '00:00:00', '1', 'Tepat_Waktu', 'default.png'),
(61, 13, 'Sabtu', '2022-12-03', '13:46:00', 2, 1, 0, '00:00:00', '1', 'Tepat_Waktu', 'default.png'),
(62, 16, 'Sabtu', '2022-12-03', '13:47:00', 3, 0, 1, '00:00:00', '1', 'Izin', 'default.png'),
(63, 16, 'Selasa', '2022-12-06', '17:13:00', 2, 1, 0, '03:13:00', '1', 'Terlambat', 'default.png'),
(64, 16, 'Rabu', '2022-12-07', '17:27:00', 2, 0, 1, '00:00:00', '1', 'Sakit', 'default.png'),
(70, 16, 'Selasa', '2022-12-06', '17:53:00', 3, 1, 0, '00:00:00', '1', 'Tepat_Waktu', 'default.png'),
(72, 16, 'Jumat', '2022-12-16', '17:47:00', 3, 1, 0, '00:00:00', '1', 'Tepat_Waktu', 'default.png'),
(73, 16, 'Selasa', '2022-12-27', '14:25:00', 2, 1, 0, '00:25:00', '1', 'Terlambat', 'default.png'),
(74, 16, 'Senin', '2023-01-16', '14:23:00', 2, 1, 0, '00:23:00', '1', 'Terlambat', 'default.png'),
(75, 16, 'Selasa', '2023-01-17', '14:23:00', 1, 0, 1, '00:00:00', '1', 'Sakit', 'default.png'),
(77, 16, 'Selasa', '2023-05-16', '15:30:00', 2, 1, 0, '00:30:00', '1', 'Terlambat', 'default.png'),
(78, 16, 'Sabtu', '2023-06-03', '13:55:00', 2, 1, 0, '00:00:00', '1', 'Tepat_Waktu', 'default.png'),
(79, 16, 'Sabtu', '2023-06-03', '17:47:00', 3, 1, 0, '00:00:00', '1', 'Tepat_Waktu', 'default.png'),
(80, 16, 'Senin', '2023-06-05', '07:49:00', 1, 1, 0, '00:00:00', '1', 'Tepat_Waktu', 'default.png'),
(81, 16, 'Senin', '2023-06-05', '13:46:00', 2, 1, 0, '00:00:00', '1', 'Tepat_Waktu', 'default.png'),
(82, 16, 'Senin', '2023-06-05', '17:54:00', 3, 1, 0, '00:00:00', '1', 'Tepat_Waktu', 'default.png'),
(83, 16, 'Selasa', '2023-06-06', '13:47:00', 2, 1, 0, '00:00:00', '1', 'Tepat_Waktu', 'default.png'),
(85, 16, 'Selasa', '2023-06-06', '07:52:00', 1, 1, 0, '00:00:00', '1', 'Tepat_Waktu', 'default.png'),
(86, 16, 'Selasa', '2023-06-06', '17:51:00', 3, 1, 0, '00:00:00', '1', 'Tepat_Waktu', 'default.png'),
(87, 16, 'Sabtu', '2023-07-01', '07:57:00', 1, 1, 0, '00:00:00', '1', 'Tepat_Waktu', 'default.png'),
(88, 16, 'Sabtu', '2023-07-01', '14:57:00', 2, 1, 0, '00:00:00', '1', 'Terlambat', 'default.png'),
(90, 16, 'Jumat', '2023-08-04', '17:37:00', 2, 1, 0, '00:00:00', '1', 'Terlambat', 'default.png'),
(91, 16, 'Sabtu', '2023-08-05', '18:01:00', 1, 0, 1, '00:00:00', '1', 'Izin', 'default.png'),
(92, 16, 'Rabu', '2023-08-30', '13:22:00', 0, 1, 0, '00:00:00', '1', 'Terlambat', 'default.png'),
(93, 16, 'Selasa', '2023-08-22', '14:19:00', 2, 1, 0, '00:00:00', '1', 'Terlambat', 'default.png'),
(94, 16, 'Selasa', '2023-08-22', '17:48:00', 3, 1, 0, '00:00:00', '1', 'Tepat_Waktu', 'default.png'),
(95, 16, 'Selasa', '2023-08-29', '11:55:27', 1, 1, 0, '00:00:00', '1', 'Terlambat', 'default.png'),
(96, 16, 'Selasa', '2023-08-29', '13:48:16', 2, 1, 0, '00:00:00', '1', 'Tepat_Waktu', 'default.png'),
(97, 16, 'Senin', '2023-09-04', '16:04:20', 2, 1, 0, '00:00:00', '1', 'Terlambat', 'default.png'),
(98, 16, 'Senin', '2023-09-11', '15:34:27', 2, 1, 0, '00:00:00', '1', 'Terlambat', 'default.png'),
(100, 16, 'Sabtu', '2023-10-07', '08:07:47', 1, 1, 0, '00:00:00', '1', 'Terlambat', 'default.png'),
(104, 16, 'Jumat', '2023-10-06', '07:51:52', 1, 1, 0, '00:00:00', '1', 'Tepat_Waktu', 'default.png'),
(105, 16, 'Jumat', '2023-10-06', '13:45:29', 2, 1, 0, '00:00:00', '1', 'Tepat_Waktu', 'default.png'),
(106, 16, 'Senin', '2023-10-09', '14:36:19', 2, 1, 0, '00:00:00', '1', 'Terlambat', '65239f75877240.64316824.jpg'),
(119, 16, 'Senin', '2023-10-09', '18:12:04', 3, 1, 0, '00:00:00', '1', 'Terlambat', '6523d1fbdb225.jpeg'),
(127, 16, 'Selasa', '2023-10-10', '13:48:30', 2, 1, 0, '00:00:00', '1', 'Tepat_Waktu', '6524e5b56c982.jpeg'),
(130, 16, 'Rabu', '2023-10-11', '13:46:39', 2, 1, 0, '00:00:00', '1', 'Tepat_Waktu', '652636d1147c1.jpeg'),
(133, 13, 'Rabu', '2024-09-04', '07:55:01', 1, 1, 0, '00:00:00', '1', 'Tepat_Waktu', 'default.png'),
(134, 13, 'Rabu', '2024-09-04', '14:15:10', 2, 1, 0, '00:00:00', '1', 'Terlambat', 'default.png'),
(135, 13, 'Rabu', '2024-09-04', '16:15:10', 3, 0, 1, '00:00:00', '1', 'Izin', 'default.png'),
(136, 16, 'Rabu', '2024-09-10', '13:59:51', 2, 1, 0, '00:00:00', '1', 'Tepat_Waktu', '66e131ea8d83a.jpeg'),
(137, 16, 'Rabu', '2024-09-11', '08:04:53', 1, 1, 0, '00:04:53', '1', 'Terlambat', '66e0debc9e210.jpeg'),
(140, 16, 'Rabu', '2024-09-11', '08:14:55', 3, 0, 1, '00:00:00', '1', 'Sakit', '66e0e105745ed8.92102693.png'),
(141, 16, 'Sabtu', '2024-09-14', '07:57:22', 1, 1, 0, '00:00:00', '1', 'Tepat_Waktu', '66e4d1955d292.jpeg'),
(142, 16, 'Sabtu', '2024-09-14', '13:03:12', 2, 0, 1, '00:00:00', '1', 'Izin', '66e5196a339e57.77287231.jpg'),
(143, 16, 'Sabtu', '2024-09-14', '18:00:59', 3, 1, 0, '00:00:59', '1', 'Terlambat', '66e55eee7b4d1.jpeg'),
(144, 16, 'Selasa', '2024-09-17', '07:48:20', 1, 1, 0, '00:00:00', '0', 'Tepat_Waktu', '66e8c3df8c963.jpeg'),
(145, 16, 'Minggu', '2024-09-15', '14:23:21', 1, 0, 1, '00:00:00', '0', 'Sakit', '66e67d7f5655c1.24147345.png'),
(146, 16, 'Selasa', '2024-09-17', '14:01:19', 2, 1, 0, '00:01:19', '0', 'Terlambat', '66e91b38dcec9.jpeg'),
(147, 16, 'Selasa', '2024-09-17', '14:02:09', 3, 0, 1, '00:00:00', '0', 'Izin keluar kota', '66e91c43913a73.88582318.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `reward`
--

CREATE TABLE `reward` (
  `id` int(11) NOT NULL,
  `nama` varchar(199) NOT NULL,
  `kehadiran` int(11) NOT NULL,
  `ketidakhadiran` int(11) NOT NULL,
  `keterlambatan` int(11) NOT NULL,
  `jumlah_reward` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reward`
--

INSERT INTO `reward` (`id`, `nama`, `kehadiran`, `ketidakhadiran`, `keterlambatan`, `jumlah_reward`, `status`) VALUES
(1, 'Reward1', 72, 0, 180, 300000, 1),
(2, 'Reward2', 60, 3, 40, 500000, 2),
(3, 'Reward3', 1, 80, 800, 20, 2),
(4, 'Reward 4', 1, 1999, 909, 299999, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nip` varchar(191) NOT NULL,
  `fullname` varchar(191) NOT NULL,
  `username` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `alamat` varchar(191) NOT NULL,
  `nohp` varchar(15) NOT NULL,
  `tanggallahir` date NOT NULL,
  `gender` varchar(191) NOT NULL,
  `foto` varchar(255) NOT NULL DEFAULT 'default-pp.png',
  `role` varchar(191) NOT NULL DEFAULT 'user',
  `tanggal_pembuatan` timestamp NOT NULL DEFAULT current_timestamp(),
  `kode` mediumint(50) NOT NULL,
  `verifikasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nip`, `fullname`, `username`, `email`, `password`, `alamat`, `nohp`, `tanggallahir`, `gender`, `foto`, `role`, `tanggal_pembuatan`, `kode`, `verifikasi`) VALUES
(1, '200101312025211001', 'David Renardi', 'david123', 'davidrenardi123@gmail.com', '202cb962ac59075b964b07152d234b70', 'Jl. Gerilya no.38', '081258133290', '2001-01-31', 'Pria', '637f2852465678.85107085.jpg', 'admin', '0000-00-00 00:00:00', 0, 'sudah_verifikasi'),
(2, '202111302025211001', 'Arief wijaya', 'Arief', 'ariefw911@gmail.com', '0aa462ff7c891675fb13e00c2cdfa60f', 'jl pasundan no 18', '08124679980', '2001-01-31', 'Pria', '64ef513d943e59.68788663.png', 'user', '0000-00-00 00:00:00', 0, 'sudah_verifikasi'),
(3, '198304012020211001', 'Randy Surya', 'randy234', 'randyr2345@yahoo.com', '202cb962ac59075b964b07152d234b70', '123', '082156774581', '1111-12-11', 'Pria', 'default-pp.png', 'user', '0000-00-00 00:00:00', 0, 'sudah_verifikasi'),
(4, '1921382119', 'Haryanto', 'HaryantoR', 'haryantorudi12@gmail.com', '202cb962ac59075b964b07152d234b70', 'Jl. Perjuangan no 15', '', '2001-01-31', 'Pria', 'default-pp.png', 'user', '0000-00-00 00:00:00', 0, 'sudah_verifikasi'),
(6, '1928321321123', 'Wahyudi setiawan', 'WahyudiS', 'wahyudist1@gmail.com', 'f4795dbfcbae2eee0a1628e2ab2d0adb', 'jl basuki rahmat no 9', '', '2001-01-31', 'Pria', 'default-pp.png', 'user', '2022-09-08 09:40:55', 0, 'sudah_verifikasi'),
(13, '198102312020211005', 'takas', 'taka', 'taka@yahoo.com', 'e0ba0c0363c5c47bb4c42b39afcbe0ae', 'taka st5', '081345187999', '2000-01-31', 'Pria', '637f28ced057d7.79161972.jpg', 'user', '2022-09-27 08:45:20', 0, 'sudah_verifikasi'),
(16, '181501506612345678', 'david user', 'daviduser', 'davidrenardiuser311@gmail.com', '184aee3a86891d90eb259ce2098e9b23', 'david st 99', '081258133291', '2001-01-31', 'Pria', '65238f0d538de2.93840980.jpg', 'user', '2022-10-21 08:27:11', 0, 'sudah_verifikasi'),
(32, '111222333444555666', 'davidrenardi', 'davidrenardi999', 'davidrenardis999@gmail.com', 'f05fc62dd81088bb9e8907efa6af037b', 'jl gerilya no 50', '', '2001-01-31', 'Pria', '64aec9e3b1bce7.91086565.png', 'user', '2023-06-14 09:18:43', 0, 'sudah_verifikasi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jam`
--
ALTER TABLE `jam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `presensi`
--
ALTER TABLE `presensi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reward`
--
ALTER TABLE `reward`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hasil`
--
ALTER TABLE `hasil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `jam`
--
ALTER TABLE `jam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `presensi`
--
ALTER TABLE `presensi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `reward`
--
ALTER TABLE `reward`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
