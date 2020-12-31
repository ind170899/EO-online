-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2020 at 06:04 AM
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
-- Database: `web-grub`
--

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(200) NOT NULL,
  `penulis_komentar` varchar(100) NOT NULL,
  `isi_komentar` text NOT NULL,
  `tanggal_komentar` varchar(100) NOT NULL,
  `id_post` int(100) NOT NULL,
  `lihat_komentar` int(5) NOT NULL,
  `penulis_post` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lihat`
--

CREATE TABLE `lihat` (
  `user_lihat` varchar(100) NOT NULL,
  `lihat` int(5) NOT NULL,
  `apa_lihat` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id_post` int(200) NOT NULL,
  `judul_post` varchar(200) NOT NULL,
  `isi_post` text NOT NULL,
  `penulis_post` varchar(100) NOT NULL,
  `tanggal_post` varchar(100) NOT NULL,
  `gambar_post` text NOT NULL,
  `suka_post` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id_post`, `judul_post`, `isi_post`, `penulis_post`, `tanggal_post`, `gambar_post`, `suka_post`) VALUES
(23, 'light elegant theme', 'bernuansa alam yang dipadukan dengan banyaknya lampu yang membuat semakin meriah acara lamaran anda, dan juga pernak pernik yang digunakan juga mempunyai daya tarik sendiri.', 'gusti', '12:46 22/12/2020', '20201222_124637ds.jpg', 2),
(22, 'simple elegant theme', 'menyajikan dekorasi yang sederhana tetapi elegant, dengan sentuhan antara kayu dan juga bunga dengan nuansa putih sehingga menambah suasana khidmat acara yang sedang berlangsung.', 'iin', '10:24 22/12/2020', '20201222_102434dekorasi-rustic.jpg', 3);

-- --------------------------------------------------------

--
-- Table structure for table `suka_post`
--

CREATE TABLE `suka_post` (
  `id_suka` bigint(20) UNSIGNED NOT NULL,
  `user_suka` varchar(100) NOT NULL,
  `id_post` int(200) NOT NULL,
  `post_suka` int(5) NOT NULL,
  `penulis_post` varchar(100) NOT NULL,
  `tanggal_suka` varchar(100) NOT NULL,
  `lihat_suka` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suka_post`
--

INSERT INTO `suka_post` (`id_suka`, `user_suka`, `id_post`, `post_suka`, `penulis_post`, `tanggal_suka`, `lihat_suka`) VALUES
(64, 'ninaz', 23, 1, 'gusti', '16:58 24/12/2020', 0),
(63, 'iin', 23, 1, 'gusti', '16:01 22/12/2020', 0),
(60, 'iin', 21, 1, 'tegar', '2:13 21/12/2020', 1),
(61, 'iin', 22, 1, 'iin', '10:25 22/12/2020', 0),
(62, 'gusti', 22, 1, 'iin', '10:36 22/12/2020', 0),
(66, 'ninaz', 22, 1, 'iin', '17:02 24/12/2020', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tegar`
--

CREATE TABLE `tegar` (
  `pengumuman_tegar` text NOT NULL,
  `izin_reg_tegar` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tegar`
--

INSERT INTO `tegar` (`pengumuman_tegar`, `izin_reg_tegar`) VALUES
('silahkan lihat jasa kami, jika ada yang sesuai dengan tema acara yang kamu sukai bisa hubungi penyedia jasa.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_user` varchar(100) NOT NULL,
  `pass_user` varchar(100) NOT NULL,
  `nama_user` varchar(20) NOT NULL,
  `jk_user` varchar(50) NOT NULL,
  `tanggal_lahir_user` varchar(2) NOT NULL,
  `bulan_lahir_user` varchar(50) NOT NULL,
  `tahun_lahir_user` varchar(4) NOT NULL,
  `status_user` varchar(50) NOT NULL,
  `pp_user` text NOT NULL,
  `tanggal_login_user` varchar(100) NOT NULL,
  `bio_user` text NOT NULL,
  `hp_user` varchar(50) NOT NULL,
  `alamat_user` text NOT NULL,
  `level_user` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_user`, `pass_user`, `nama_user`, `jk_user`, `tanggal_lahir_user`, `bulan_lahir_user`, `tahun_lahir_user`, `status_user`, `pp_user`, `tanggal_login_user`, `bio_user`, `hp_user`, `alamat_user`, `level_user`) VALUES
('ninaz', 'yui89', 'nina zulfa', 'Wanita', '1', 'Januari', '2001', 'Offline', '', '17:02 24/12/2020', '', '', '', 0),
('iin', '12345', 'iin', 'Pria', '15', 'Desember', '2013', 'Online', '', '9:54 29/12/2020', 'seorang event planer muda dari lampung.\r\nsudah beberapa kali membantu mengorganize acara customer seperti pernikahan, lamaran, ulang tahun, dll.', '123456789', 'jl pulau raya 1 gg madina ', 0),
('gusti', '56789', 'gusti eka', 'Wanita', '19', 'Desember', '2000', 'Offline', '', '13:52 28/12/2020', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `idu` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `first_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(128) NOT NULL,
  `bio` varchar(160) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `facebook` varchar(256) NOT NULL,
  `twitter` varchar(128) NOT NULL,
  `gplus` varchar(256) NOT NULL,
  `image` varchar(128) NOT NULL,
  `private` int(11) NOT NULL,
  `salted` varchar(256) NOT NULL,
  `background` varchar(256) NOT NULL,
  `cover` varchar(128) NOT NULL,
  `verified` int(11) NOT NULL,
  `privacy` int(11) NOT NULL DEFAULT 1,
  `gender` tinyint(4) NOT NULL,
  `online` int(11) NOT NULL,
  `offline` tinyint(4) NOT NULL,
  `notificationl` tinyint(4) NOT NULL,
  `notificationc` tinyint(4) NOT NULL,
  `notificationm` tinyint(4) NOT NULL,
  `notificationd` tinyint(4) NOT NULL,
  `email_comment` tinyint(4) NOT NULL,
  `email_like` int(11) NOT NULL,
  `born` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id_post`);

--
-- Indexes for table `suka_post`
--
ALTER TABLE `suka_post`
  ADD PRIMARY KEY (`id_suka`),
  ADD UNIQUE KEY `id_suka` (`id_suka`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_user`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `id` (`idu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id_post` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `suka_post`
--
ALTER TABLE `suka_post`
  MODIFY `id_suka` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `idu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
