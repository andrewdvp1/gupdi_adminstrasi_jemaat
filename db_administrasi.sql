-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql100.infinityfree.com
-- Generation Time: Apr 15, 2026 at 12:14 AM
-- Server version: 11.4.10-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `if0_41361394_db_administrasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `role`) VALUES
(1, 'GUPdIJPL', '$2y$10$ggyoHVDqBS7dorKzcqg7Z.RXWKfDmecB2L6cIRYwp6XSyV120VJaC', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `data_baptis`
--

CREATE TABLE `data_baptis` (
  `id` int(11) NOT NULL,
  `nomor_urut` int(11) UNSIGNED DEFAULT NULL,
  `nomor_baptis` varchar(50) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `nama_baptis` varchar(100) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `nama_ayah` varchar(100) DEFAULT NULL,
  `nama_ibu` varchar(100) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `data_baptis`
--

INSERT INTO `data_baptis` (`id`, `nomor_urut`, `nomor_baptis`, `nama_lengkap`, `nama_baptis`, `tempat_lahir`, `tanggal_lahir`, `nama_ayah`, `nama_ibu`, `alamat`, `created_at`) VALUES
(1, NULL, '6724/Bapt/GUPDI/I/2021', 'Sudiman', 'Ishak', 'Klaten', '1952-12-31', 'Sosemito', 'Painem', 'Tanggulsari Rt03/Rw9', '2026-03-12 01:45:33'),
(2, NULL, '6722/Bapt/GUPDI/I/2021', 'Joko Nugroho', 'Jonathan', 'Surakarta', '1991-05-13', 'Suharno', 'Poniyem', 'Pensalan Rt01/Rw04 Gandekan, Jebres', '2026-03-12 01:52:41'),
(3, NULL, '6721/Bapt/GUPDI/I/2021', 'Ade Kurniawan', 'Gevariel', 'Surakarta', '1994-02-11', 'Paryanto Siswo Raharjo', 'Ruliyah', 'Jl. Kali Kampar 1 Rt03/Rw12, Jagalan', '2026-03-12 01:55:46'),
(4, NULL, '6721/Bapt/GUPDI/I/2021', 'Ade Kurniawan', 'Gevariel', 'Surakarta', '1994-02-11', 'Paryanto Siswo Raharjo', 'Ruliyah', 'Jl. Kali Kompor 1 Rt03/Rw12, Jagalan', '2026-03-12 02:48:49'),
(5, NULL, '6720/Bapt/GUPDI/I/2021', 'Angger Wijaya Putra', 'Nicholas', 'Surakarta', '1999-04-27', 'Danang Ariawan S', 'Yuni Indraswati', 'Nayu Barat, Rt01/Rw14, Surakarta', '2026-03-12 03:04:25'),
(6, NULL, '6719/Bapt/GUPDI/I/2021', 'Andrew Bramastyo Sudarmono', 'Nicholas', 'Surakarta', '2000-07-18', 'Danang Ariawan S', 'Yuni Indraswati', 'Nayu Barat, Rt01/Rw14, Surakarta', '2026-03-12 03:07:34'),
(7, NULL, '6718/Bapt/GUPDI/I/2021', 'Anandika Dirga Alandra', 'Nathan', 'Surakarta', '2000-09-18', 'Ariffianto', 'Nanik Hadayanti', 'Nayu Barat Rt01/Rw13, Surakarta', '2026-03-12 03:28:21'),
(8, NULL, '6717/Bapt/GUPDI/I/2021', 'Adellia Kristiana', 'Amarise', 'Karanganyar', '2002-09-06', 'Slamet Santoso', 'Umi Liswatik', 'Ngegot Rt04/Rw12, Selokaton, Gondangrejo, Surakarta', '2026-03-12 03:31:51'),
(9, NULL, '6715/Bapt/GUPDI/I/2021', 'Fernando Candra Kurniawan', 'Christoffel', 'Surakarta', '2003-06-25', 'Agus Sulijanto', 'Mike', 'Jl. Samosir 24A, Gilingan, Surakarta', '2026-03-12 03:37:21'),
(10, NULL, '6714/Bapt/GUPDI/I/2021', 'Ariel Vince Sukarno', 'Yermia', 'Surakarta', '2004-02-29', 'Jatmiko Arif Sukarno', 'Sumi Indri', 'Morgorejo Rt01/Rw10', '2026-03-12 03:55:35'),
(11, NULL, '6714/Bapt/GUPDI/I/2021', 'Ariel Vince Sukarno', 'Yermia', 'Surakarta', '2004-02-29', 'Jatmiko Arif Sukarno', 'Sumi Indri', 'Morgorejo Rt01/Rw10', '2026-03-12 03:55:42'),
(12, NULL, '6710/Bapt/GUPDI/I/2021', 'Marcelino Tangguh Pamungkas', 'Alexander', 'Karanganyar', '2006-03-23', 'Didik Agus Wijayanto', 'Parsinah', 'Bendo, Rt005/Rw001, Tohudan, Colomadu, Surakarta', '2026-03-12 04:00:47'),
(13, NULL, '6713/Bapt/GUPDI/I/2021', 'Jacqueline Evangelista De Laura Christian', 'Emmanuella', 'Surakarta', '2004-10-04', 'Joko Kristiyanto', 'Aprilia Kristianti', 'Lemah Abang Rt04/Rw19, Surakarta', '2026-03-12 04:05:46'),
(14, NULL, '6709/Bapt/GUPDI/I/2021', 'Gina Elikatena Paskal', 'Graciella', 'Surakarta', '2006-04-20', 'Duto Supriyanto', 'Trisiantun', 'Ketingan Kulon, Rt02/Rw10', '2026-03-12 04:08:57'),
(15, NULL, '6708/Bapt/GUPDI/I/2021', 'Anggelina Sitia Rachmadi Putri', 'Graciella', 'Surakarta', '2006-04-22', 'Rochmadi', 'Siti Suratmiasih', 'Joyotakan, Rt01/Rw04, Serengan, Surakarta', '2026-03-12 04:32:15'),
(16, NULL, '6692/Bapt/GUPDI/I/2021', 'Sadrakh Kristande Swiharjo', '', 'Surakarta', '2008-12-22', 'Gwiharto', 'Susana Tantri Aliyeni', 'Rajawali A2/14,Klodran', '2026-03-12 05:15:11'),
(17, NULL, '6707/Bapt/GUPDI/I/2021', 'Jelita Prasasti Dewi', 'Selomina', 'Surakarta', '2006-07-24', 'Triyanto', 'Desi Kritiana', 'Rejosari Rt01/Rw13, Gilingan', '2026-03-12 05:34:47'),
(18, NULL, '6706/Bapt/GUPDI/I/2021', 'Alfredo KayayasTaian Canggihwijaya', 'Jonathan', 'Surakarta', '2006-09-08', 'Filipus Freddy Laksawa Wijaya', 'Kezia Sri Setiasmanti', 'Cengkik, Rt02/Rw20', '2026-03-12 05:42:55'),
(19, NULL, '6695/Bapt/GUPDI/I/2021', 'Gerald Natanael Susanto', 'Ethan', 'Surakarta', '2008-06-28', 'Albert Susanto', 'Vivi Sumanty', 'Demak, Bintoro 2 No.8, Nusukan, Surakarta', '2026-03-12 05:54:56'),
(20, NULL, '6696/Bapt/GUPDI/I/2021', 'Matthew Davino Haryanto', '', 'Surakarta', '2008-05-02', 'Hari', 'Melvin', 'Jl. Jenggolo 2 No.4 Nusukan, Surakarta', '2026-03-12 06:11:09'),
(21, NULL, '6697/Bapt/GUPDI/I/2021', 'Salva Gracia Aptalia', 'Rachel', 'Surakarta', '2008-04-13', 'Suranto', 'Dyah Retno Ningsih', 'Tanon Kidul, Rt01/Rw03, Gedongan', '2026-03-12 06:32:55'),
(22, NULL, '6693/Bapt/GUPDI/I/2021', 'Jessica Daniela Cahya Syalom', 'Agatha', 'Surakarta', '2008-11-04', 'Gerson Gunawan Waskito Adi', 'Dinaesti Puji Lestari', 'Gambirejo, Rt01/Rw03', '2026-03-12 06:39:18'),
(23, NULL, '6703/Bapt/GUPDI/I/2021', 'Revalina Aulia Rahmawati', 'Eleanora', 'Surakarta', '2007-02-22', 'Agus Suliwanto', 'Ernawati', 'Ketingan Kulon, Rt02/Rw10', '2026-03-12 06:45:23'),
(24, NULL, '6701/Bapt/GUPDI/I/2021', 'Ratu Julyeta Eka Mahesti', 'Olivia', 'Surakarta', '2007-07-21', 'Sri Hastono', 'Evika Mayasari', 'Nampan, Rt01/Rw01, Madegondo, Grogol Indah', '2026-03-12 06:53:54'),
(25, NULL, '6699/Bapt/GUPDI/I/2021', 'Marcella Marisda Cristin', 'Angelina', 'Surakarta', '2007-10-25', 'Marwanto', 'Iis Diah Pebtri Parwisari', 'Ketingan Kulon', '2026-03-12 06:57:04'),
(26, NULL, '6694/Bapt/GUPDI/I/2021', 'Fernanda Agustin Pramesty', 'Rebecca', 'Surakarta', '2008-08-03', 'Warsito', 'Mulyani', 'Sangkrah, Rt02/Rw03', '2026-03-12 06:59:54'),
(27, NULL, '6716/Bapt/GUPDI/I/2021', 'Angela Duta Dewangga', 'Naomi', 'Surakarta', '2003-05-22', 'Sulistiyono', 'Indah Kristiyani', 'Songgalan, Rt07/Rw03, Pajang, Laweyan', '2026-03-12 07:04:51'),
(28, NULL, '6705/Bapt/GUPDI/I/2021', 'Ifena Nathania Aida', 'Olivia', 'Jakarta', '2006-12-23', 'Ilham Adi Soenarto', 'Ester Ratna Puspita Dewi', 'Jl. Suhartono No.1, Kota Baru', '2026-03-12 07:08:11'),
(29, NULL, '6698/Bapt/GUPDI/I/2021', 'Brevillian Crista Natanael', 'Abednego', 'Surakarta', '2007-12-16', 'Untung Subekti', 'Hendriany', 'Gebang, Rt01/Rw16, Kel. Banjarsari', '2026-03-12 07:11:40'),
(30, NULL, '6700/Bapt/GUPDI/I/2021', 'Yohana Safitri Kusumaningrum', 'Olivia', 'Surakarta', '2007-10-19', 'Yusak Eko Ruswiyanto', 'Sri Rejeki', 'Ngemplak, Rejosari, Rt002/Rw013', '2026-03-12 07:16:05'),
(31, NULL, '6704/Bapt/GUPDI/I/2021', 'Valentyanita Christy Widiyanto', 'Evangeline', 'Karanganyar', '2007-02-14', 'Erwan Widiyanto', 'Marwining Tyas Asih Prawistri', 'Bendo, Rt03/Rw01, Tohudan, Colomadu', '2026-03-12 07:19:50'),
(32, NULL, '6712/Bapt/GUPDI/I/2021', 'Velin Gracea Kusuma Wardani', 'Claudia', 'Sidoarjo', '2004-11-26', 'Wartono', 'Kusmiati', 'Sangkrah, Rt02/Rw03', '2026-03-12 07:23:08'),
(33, NULL, '6711/Bapt/GUPDI/I/2021', 'Steffy Desiandra Puteri', 'Zaneta', 'Surakarta', '2005-11-09', 'Haryanto Chandra', 'Desi Utami', 'Krembyongan, Rt02/Rw07, Kadipiro', '2026-03-12 07:26:45'),
(34, NULL, '6725/Bapt/GUPDI/I/2021', 'Dewita Sandra', 'Elizabeth', 'Surakarta', '2008-06-11', 'Ang Bok Hiap', 'Inawati (Lie Gan Hee)', 'Jl. Dempo Raya 54, Mojosongo, Jebres, Surakarta', '2026-03-12 07:34:04'),
(35, NULL, '6702/Bapt/GUPDI/I/2021', 'Jessica Margaretha Christie', 'Gracia', 'Surakarta', '2007-03-11', 'Sutrisno', 'Heny Indriawati', 'Jl. Kunir 3, No.18Kaliwingko, Grogol, Sukoharjo', '2026-03-12 07:37:42'),
(36, NULL, '6723/Bapt/GUPDI/I/2021', 'Sihono', 'Matius', 'Ponorogo', '1953-10-17', 'Parnorejo', 'Wagiyah', 'Perum Lemah Abang No.12, Rt02/Rw18, Kadipiro, Banjarsari', '2026-03-12 07:40:38'),
(37, NULL, '6726/Bapt/GUPDI/I/2021', 'Dandung Andriyanto', 'Samuel', 'Semarang', '1978-05-14', 'Wahyudi', 'Murtilah', 'Jl. Maospati No.17, Kratonan, Surakarta', '2026-03-12 07:44:04'),
(38, NULL, '6727/Bapt/GUPDI/I/2021', 'Lucio Amadeo Prabajaya Pranadipta', 'Ariel', 'Surakarta', '2002-05-29', 'Sayogya Hadi Wisnoto', 'Sri Wahyuni', 'Gandekan Tengen, Rt04/Rw02, Jebres, Surakarta', '2026-03-12 07:49:26'),
(39, NULL, '6614/Bapt/GUPDI/I/2019', 'Edric Christian Widjaja', 'Hosea', 'Surakarta', '2002-04-19', 'Paulus Surjawan Widjaja', 'Win Anita', 'Jl. Kapten Mulyadi No.27, Rt02/Rw07, Sudiroprajan, Jebres, Surakarta', '2026-03-12 08:00:47'),
(42, NULL, '6591/Bapt/GUPDI/I/2021', 'Anindya Dyah Hayu', 'Nathalia', 'Sukoharjo', '1996-07-09', 'Agus Suprapto', 'Esther Marfuah', 'Demagan, Rt02/Rw19, Makam Haji, Surakarta', '2026-03-17 02:12:48'),
(45, NULL, '6588/Bapt/GUPDI/I/2018', 'Wahyu Nurwulandari', '', 'Tanjung Pinang', '1991-11-23', 'Pitono Widjoyo', 'Sumarni', 'Gilis, Rt07/Rw01, Katelan, Tangen, Sragen', '2026-03-17 02:51:23'),
(44, NULL, '6587/Bapt/GUPDI/I/2019', 'Parmiatun', 'Manuella', 'Surakarta', '1971-04-21', 'Slamet Somo Trenggono', 'Pawirodiharjo', 'Sumber, Rt 01/Rw09', '2026-03-17 02:41:27'),
(46, NULL, '6624/Bapt/GUPDI/I/2019', 'Jersen Julian Purnomo', 'Alexander', 'Surakarta', '2004-12-10', 'Teofilus Djoko Purnomo', 'Agatha Joelianna Rahardjo', 'Jl. Gatot Subroto No.261B, Straten, Solo', '2026-03-17 02:57:44'),
(47, NULL, '6586/Bapt/GUPDI/I/2019', 'Sulastri', 'Graciella', 'Surakarta', '1962-12-15', 'Mulyodikromo', 'Surip', 'Tegal Mulyo, Rt05/Rw04, Mojosongo, Solo', '2026-03-17 03:00:17'),
(48, NULL, '6596/Bapt/GUPDI/I/2019', 'Jessica Julia Purnomo', 'Alexandra', 'Surakarta', '2003-08-26', 'Teofilus Djoko Purnomo', 'Agatha Joelianna Rahardjo', 'Jl. Gatot Subroto No.261B, Sraten, Solo', '2026-03-17 03:06:47'),
(49, NULL, '6589/Bapt/GUPDI/I/2019', 'Nuke Yulinda Septianing', 'Eunike', 'Sukoharjo', '1993-07-21', 'Harjono', 'Sri Pujiati', 'Purwodiningrat, Rt01/Rw05, Jebres, Surakarta', '2026-03-17 03:11:42'),
(50, NULL, '6628/Bapt/GUPDI/I/2019', 'Michelle Caroline Setiawan', '', 'Bogor', '2006-07-29', 'Rudy Setiawan', 'Indri Wulansari', 'Jl. Bunga Lavender No.7, Sierra Madre, Sentul City', '2026-03-17 03:15:05'),
(51, NULL, '6629/Bapt/GUPDI/I/2019', 'Dave Michael Sutantio', '', 'Surakarta', '2007-09-26', 'Panggih Sutantio', 'Lydia Ita Mariany', 'Cinderejo, Kidul, Jl. Bido 3 No.3', '2026-03-17 03:18:44'),
(52, NULL, '6600/Bapt/GUPDI/I/2019', 'Giovani Clara Alverina', 'Graciella', 'Surakarta', '2004-05-25', 'Yunianto', 'Rinawati', 'Pondok Baru, Permai A25, Gentan, Baki, Sukoharjo', '2026-03-17 03:27:17'),
(53, NULL, '6619/Bapt/GUPDI/I/2019', 'Cornelius, Rifaldo Juono', '', 'Sukoharjo', '2005-04-10', 'Aries Juono', 'Ong Liam Tjoe Elvy', 'Jl. Adi Soemarmo No.26, Nusukan, Rt04/Rw03', '2026-03-17 03:33:25'),
(54, NULL, '6603/Bapt/GUPDI/I/2019', 'Alvina Prasojo Putri', 'Agatha', 'Surakarta', '2005-01-13', 'Agus Prasojo', 'Supartini', 'Sambirejo, Rt02/Rw09, Kadipiro, Banjarsari', '2026-03-17 03:42:24'),
(55, NULL, '6603/Bapt/GUPDI/I/2019', 'Alvina Prasojo Putri', 'Agatha', 'Surakarta', '2005-01-13', 'Agus Prasojo', 'Supartini', 'Sambirejo, Rt02/Rw09, Kadipiro, Banjarsari', '2026-03-17 03:42:26'),
(56, NULL, '6601/Bapt/GUPDI/I/2019', 'Ivernestine Setiyawan', 'Eirene', 'Surakarta', '2004-06-18', 'Paul Setiyawan', 'Erliana Ninik Yuniasih', 'Jl. Kencur Indah No.11A, Kwarasan', '2026-03-17 03:47:37'),
(57, NULL, '6604/Bapt/GUPDI/I/2019', 'Vania Julia Salim', '', 'Sukoharjo', '2002-07-09', 'Sudiono Salim', 'Yukiana', 'Jl. Seruni BV 8', '2026-03-17 03:50:48'),
(58, NULL, '6610/Bapt/GUPDI/I/2019', 'Bastian', 'Eliazzur', 'Surakarta', '1991-04-16', 'Nur Yanto', 'Utami', 'Kentingan, Rt03/Rw10, Jebres', '2026-03-17 03:53:20'),
(59, NULL, '6602/Bapt/GUPDI/I/2019', 'Chrisvina Oryza Suwarno', 'Ruth', 'Sukoharjo', '2005-07-15', 'Agus Suwarno', 'Setyowati', 'Nayu Barat, Rt08/Rw14, Nusukan, Surakarta', '2026-03-17 03:57:25'),
(60, NULL, '6630/Bapt/GUPDI/I/2019', 'Hartini', 'Prisca', 'Surakarta', '1959-06-10', 'Ahmad Sukemi', 'Jainah', 'Margorejo Rt06/Rw11, Banjarsari, Surakarta', '2026-03-17 04:01:56'),
(61, NULL, '6627/Bapt/GUPDI/I/2019', 'Yeshua Sang Siwi Narotama', 'Natanael', 'Surakarta', '2005-10-20', 'Sayogya Hadi Wisnoto', 'Sri Wahyuni', 'Gandekan, Tengen, Rt04/Rw02 No.19', '2026-03-17 04:05:39'),
(62, NULL, '6593/Bapt/GUPDI/I/2019', 'Angelina Cindy Novitasari', 'Manuella', 'Surakarta', '2000-11-04', 'Wiyarno', 'Amin Suryandini', 'Jl. Adi Sucipto, Gang Nanas 07, Rt03/Rw08, Jajar, Laweyan', '2026-03-17 04:12:20'),
(63, NULL, '6597/Bapt/GUPDI/I/2019', 'Atalie Ivana', 'Apfia', 'Sintang', '2003-11-11', 'Santosa', 'Aminah', 'Jl. Kelam No.5, Sintang, Kalimantan Barat', '2026-03-17 04:18:26'),
(64, NULL, '6594/Bapt/GUPDI/I/2019', 'Alvina Thea Hosana', 'Triphosa', 'Surakarta', '2001-11-18', 'Ananias Suparji', 'Mindarsih', 'Perum Lemah Abang, Rt06/Rw21', '2026-03-17 04:31:42'),
(65, NULL, '6622/Bapt/GUPDI/I/2019', 'Andreas Chandra  Ardianto', 'Nathanael', 'Surakarta', '2003-01-12', 'Pardi', 'Bekti Harminingsih', 'Gandekan Kiwo, Rt03/Rw01', '2026-03-17 05:51:56'),
(66, NULL, '6598/Bapt/GUPDI/I/2021', 'Ivana Puspitasari', 'Brigitta', 'Karanganyar', '2004-01-21', 'Bambang Margono', 'M F J Muji Rahayu', 'Trowangsan, Rt05Rw01, Malangjiwan, Colomadu', '2026-03-17 05:58:42'),
(67, NULL, '6590/Bapt/GUPDI/I/2019', 'Suci Wulan Sari', 'Catharina', 'Karanganyar', '1996-01-22', 'Sugimin', 'Neng Hartati', 'Kwasuhan, Gantiwarno, Rt03/Rw04, Matesili', '2026-03-17 06:02:05'),
(68, NULL, '6620/Bapt/GUPDI/I/2019', 'Fernando Jason Donovan', 'Yohanes', 'Surakarta', '2003-04-08', 'Anwar Chisbianto', 'Tantriyas Putri Thendy', 'Wonosaron, Rt01/Rw09, Jagalan, Jebres, Surakarta', '2026-03-17 06:11:36'),
(69, NULL, '6625/Bapt/GUPDI/I/2019', 'Erlang Bagus Samudra', 'Bezaleel', 'Surakarta', '2000-02-24', 'Eko Cahyanto', 'Harni Setyawati', 'Praon, Rt04/Rw08, Nusukan, Banjarsari', '2026-03-17 06:14:30'),
(70, NULL, '6626/Bapt/GUPDI/I/2019', 'Aurel Yudhistira', 'Azriel', 'Surakarta', '2004-04-02', 'Eko Cahyanto', 'Harni Setyawati', 'Praon, Rt04/Rw08, Nusukan, Banjarsari', '2026-03-17 06:25:40'),
(71, NULL, '6616/Bapt/GUPDI/I/2019', 'Pramudya Wardhana Ardhanarespati', 'Fransiskus Xaverius', 'Surakarta', '2001-04-03', 'Bobby Meidianto', 'Sri Andriasih', 'Panularan, Rt01/Rw07, Laweyan, Surakarta', '2026-03-17 06:33:22'),
(72, NULL, '6621/Bapt/GUPDI/I/2019', 'Niko Kristian', 'Alexander', 'Surakarta', '2003-04-23', 'Eko Santoso', 'Eny Ambarwati', 'Mertuodan, Rt08/Rw09, Mojosongo, Surakarta', '2026-03-17 06:38:08'),
(73, NULL, '6585/Bapt/GUPDI/I/2019', 'Suratmi', 'Trifena', 'Surakarta', '1961-05-01', 'Harun Darmo Suwito', 'Sukarmi', 'Rejosari, Rt08/Rw13, Gilingan, Banjarsari, Surakarta', '2026-03-17 06:45:47'),
(74, NULL, '6592/Bapt/GUPDI/I/2019', 'Sri Murningsih', 'Gracia', 'Surakarta', '1996-05-02', 'Mulud Lestari', 'Murni', 'Bibis Wetan, Rt04/Rw21, Gilingan, Banjarsari', '2026-03-17 06:50:27'),
(75, NULL, '6623/Bapt/GUPDI/I/2019', 'Montgomery Teofilus', '', 'Jakarta', '2004-05-05', 'Martinus Wandhito Suryo', 'Susanti', 'Jl. Saharjo 83, Surakarta', '2026-03-17 06:55:44'),
(76, NULL, '6599/Bapt/GUPDI/I/2019', 'Margareta Diana Saputri', '', 'Karanganyar', '2004-05-22', 'Purnomo Sidi', 'Ribka Sri Wahni', 'Tanon Lor Rt01/Rw02, Gedongan, Colomadu', '2026-03-17 07:12:16'),
(77, NULL, '6584/Bapt/GUPDI/I/2019', 'Suparmi', 'Sara', 'Surakarta', '1950-05-23', 'Ahmad Sukemi', 'Jainah', 'Margorejo, Rt06/Rw11, Gilingan, Banjarsari', '2026-03-17 07:16:31'),
(78, NULL, '6595/Bapt/GUPDI/I/2019', 'Ananda Stella Dyanjamson', 'Anastasia', 'Surakarta', '2002-05-25', 'Anwar Chisbianto', 'Tantriyas Putri Thendy', 'Wonosaren, Rt01/Rw09, Jagalan, Jebres, Surakarta', '2026-03-17 07:32:43'),
(79, NULL, '6612/Bapt/GUPDI/I/2019', 'Rizkhi Adriel Fevandra', 'Mathew', 'Surakarta', '1993-05-26', 'Tjan Thay Oen', 'Tan Wat Mid', 'Jl. Sabrang Kulon, Perum Pratama, No.A2, Mojosongo', '2026-03-17 07:43:48'),
(80, NULL, '6611/Bapt/GUPDI/I/2019', 'Bayu Surya Saputro', 'Azriel', 'Klaten', '1993-07-27', 'Abdul Kohar', 'Ani Sri Winarni', 'Gambirejo, Rt07/Rw13, Kadipiro', '2026-03-17 07:46:54'),
(81, NULL, '6615/Bapt/GUPDI/I/2019', 'Vito Nigroho', '', 'Surakarta', '2001-09-17', 'Tono Kris', 'Ida Nursanti', 'Jl. Melati 10 G445 Baturan, Colomadu, Karanganyar', '2026-03-17 07:51:10'),
(82, NULL, '6617/Bapt/GUPDI/I/2019', 'Naftali Ryanar Christ', '', 'Surakarta', '2001-03-07', 'Gayus Djunarno', 'Damaris Riyati', 'Singopuran, Rt04/Rw04, Gembongan, Kartasura', '2026-03-17 07:58:34'),
(83, NULL, '6618/Bapt/GUPDI/I/2019', 'Nathanael Ryanar Christ', '', 'Surakarta', '2001-03-07', 'Gayus Djunarno', 'Damaris Riyati', 'Singopuran, Rt04/Rw04, Gembongan, Kartasura', '2026-03-17 08:01:17'),
(84, NULL, '6613/Bapt/GUPDI/I/2019', 'Kevion Kristoff Widjaja', 'John', 'Surakarta', '2000-06-03', 'Paulus Surjawan Widjaja', 'Win Anita', 'Jl. Kapten Mulyadi No.27, Rt02/Rw07, Sudiroprajan, Jebres, Surakarta', '2026-03-17 08:05:09'),
(85, NULL, '6609/Bapt/GUPDI/I/2019', 'Pascha Eddo Kurniawan', 'Azra', 'Surakarta', '1990-04-07', 'Udjianto Setyo Nugroho', 'Ujiani Sri  Murni', 'Jl. Lompo Batang Utara, 1/07, Rt02/Rw20, Mojosongo, Surakarta', '2026-03-17 08:11:11'),
(86, NULL, '6608/Bapt/GUPDI/I/2019', 'Hartono', 'Abner', 'Surakarta', '1959-03-07', 'Ahmad Sukemi', 'Jainah', 'Margorejo, Rt06/Rw11, Gilingan', '2026-03-17 08:13:07'),
(87, NULL, '6607/Bapt/GUPDI/I/2019', 'Surono', 'Yohanes', 'Surakarta', '1957-07-15', 'Sastro', 'Kusimini', 'Sumber, Rt02/Rw15', '2026-03-17 08:15:28'),
(88, NULL, '6606/Bapt/GUPDI/I/2019', 'Berlian Italiana Putri', 'Michaella', 'Surakarta', '2006-07-10', 'Hanan Giyono', 'Ariyani Widanarti', 'Jl. Malabar Selatan No.1&3, Mojosongo, Surakarta', '2026-03-17 08:18:39'),
(89, NULL, '6605/Bapt/GUPDI/I/2019', 'Callista Christy Widjaja', 'Grace', 'Surakarta', '2005-01-27', 'Paulus Surjawan Widjaja', 'Win Anita', 'Jl. Kapten Mulyadi No.27, Rt02/Rw07, Sudiroprajan, Jebres, Surakarta', '2026-03-17 08:21:11'),
(90, NULL, '6860/Bapt/GUPDI/I/2025', 'Ony Kusuma', 'Zoe', 'Surakarta', '2008-04-14', 'Bagus Satyawan Hari Kusuma', 'Erma Wahyu Hapsari', 'Nusukan, Rt04/Rw01', '2026-03-18 02:14:49'),
(91, NULL, '6858/Bapt/GUPDI/I/2025', 'Graciella Zevanya Orianna Liasta Br.Barus', 'Jacqueline', 'Surakarta', '2012-07-10', 'Orianta Barus', 'Ratna Puji Dyah Utami', 'Purbowardayan, Rt006/Rw002, Tegal Harjo, Jebres', '2026-03-18 02:21:25'),
(92, NULL, '6869/Bapt/GUPDI/I/2025', 'Saras Dwita Esvandrini', 'Cassia', 'Surakarta', '1996-04-19', 'Hananto Budi', 'Maylina Guntono', 'Jl. Manggis Raya No46, Wonorejo', '2026-03-18 02:24:50'),
(93, NULL, '6868/Bapt/GUPDI/I/2025', 'Shalom Ivana Sarwanto', 'Rebecca', 'Surakarta', '2010-07-23', 'Yonathan Tomy Sarwanto', 'Lies Sri Utaminingsih', 'Margorejo, Rt07/Rw11, Gilingan, Banjarsari, Surakarta', '2026-03-18 02:29:06'),
(94, NULL, '6867/Bapt/GUPDI/I/2025', 'Indira Kusumawardhani', 'Anastasia', 'Surakarta', '2010-07-14', 'Wahyu Handoko', 'Hendri Susilowati', 'Banyuagung, Kallingga 2, No24A', '2026-03-18 02:34:02'),
(95, NULL, '6865/Bapt/GUPDI/I/2025', 'Ambarwati', 'Gracia', 'Surakarta', '1991-09-23', 'Simon Supriyadi', 'Lastri', 'Tegal Mulyo, Rt05/Rw04, Mojosongo, Jebres, Surakarta', '2026-03-18 02:37:06'),
(96, NULL, '6864/Bapt/GUPDI/I/2025', 'Jeslyn Amarissa Santoso', 'Adriela', 'Surakarta', '2012-08-03', 'Aris Cahyo Santoso', 'Lia Karolina Saniago', 'Sumber Krajan, Rt001Rw001, Sumber', '2026-03-18 02:40:09'),
(97, NULL, '6862/Bapt/GUPDI/I/2025', 'Laurensya Nabita Laste Kusuma', 'Xaviera', 'Karanganyar', '2007-08-05', 'Agung Prabowo', 'Dyah Sulistya Ningsih', 'Randusari, Rt04/Rw30, Mojosongo, Jebres, Surakarta', '2026-03-18 02:46:14'),
(134, NULL, '6869/Bapt/GUPDI/I/2025', 'Candik Ayu Rhea Pertiwi', 'Brigita', 'Surakarta', '2008-06-01', 'Eko Cahyanto', 'Harni Setyawati', 'Praon, Rt04/Rw08, Nusukan, Banjarsari', '2026-04-01 02:45:20'),
(99, NULL, '6857/Bapt/GUPDI/I/2025', 'Serafina Yuliana Christiani', 'Graciella', 'Surakarta', '2012-04-20', 'Yulianto', 'Supriyanti', 'Mojosongo, Rt02/Rw32, Mojosongo', '2026-03-18 02:55:22'),
(100, NULL, '6856/Bapt/GUPDI/I/2025', 'Jason Putra Darwanto', '', 'Surakarta', '2009-03-23', 'Aris Darwanto', 'Eni Rahayu', 'Semanggi, Rt05/Rw15', '2026-03-18 02:59:21'),
(101, NULL, '6871/Bapt/GUPDI/I/2025', 'Fara Fardhaniswari', 'Alexandria', 'Surakarta', '1999-02-18', 'Wahyu Handoko', 'Hendri Susilowati', 'Banyuagung, Rt01Rw02, Kadipiro, Banjarsari', '2026-03-18 03:05:30'),
(102, NULL, '6872/Bapt/GUPDI/I/2025', 'Yosafat Arista Perdana Putra', '', 'Surakarta', '1999-09-09', 'Aris Sugiono', 'Sri Lestari', 'Jl. Kutilang, Rt04/Rw09', '2026-03-18 03:09:04'),
(103, NULL, '6873/Bapt/GUPDI/I/2025', 'Budhi Gabriell Wijoyo', 'Shalomo', 'Surakarta', '1999-05-29', 'Budi Purmanto Wijoyo', 'Masrido Sine', 'Jl. AR Saleh No.27, Banjarsari', '2026-03-18 03:12:27'),
(104, NULL, '6874/Bapt/GUPDI/I/2025', 'Alexa Fernando Iqnacio Suni', '', 'Surakarta', '2011-07-24', 'Yacob Suni', 'Ida Indrayani', 'Jl. Kutai Timur 1 No.1 Sumber', '2026-03-18 03:15:38'),
(105, NULL, '6875/Bapt/GUPDI/I/2025', 'Hansel Gading Winanggeni', 'Gamalel', 'Surakarta', '2006-09-14', 'Eko Cahyanto', 'Harni Setyawati', 'Praon, Rt04/Rw08, Nusukan, Banjarsari', '2026-03-18 03:32:22'),
(106, NULL, '6878/Bapt/GUPDI/I/2025', 'Cyska Hernaning Arum Kusuma', 'Euodia', 'Surakarta', '1979-11-16', 'Joko Subarwanto Priyokusuo', 'Sri Titu', 'Panularan, Rt02/Rw007, Laweyan, Solo', '2026-03-18 03:35:52'),
(107, NULL, '6879/Bapt/GUPDI/I/2025', 'Widriandani', 'Veronica', 'Surakarta', '1980-04-09', 'F.X Widodo', 'Maria Giyarti', 'Panularan, Rt03/Rw08, Laweyan, Surakarta', '2026-03-18 03:40:02'),
(109, NULL, '6880/Bapt/GUPDI/I/2025', 'Farel Juliano', 'Stefanus', 'Surakarta', '2007-07-10', '', 'Widriandani', 'Panularan, Rt03/Rw08, Laweyan, Surakarta', '2026-03-18 04:26:05'),
(110, NULL, '6881/Bapt/GUPDI/I/2025', 'Rafael Juliano', 'Jeremiah', 'Surakarta', '2007-07-10', '', 'Widriandani', 'Panularan, Rt03/Rw08, Laweyan, Surakarta', '2026-03-18 04:38:43'),
(111, NULL, '6885/Bapt/GUPDI/I/2025', 'Wendi Bewiranata', 'Samuel', 'Klaten', '2004-09-22', '', 'Chendy Maryam', 'Mundu, Rt03/Rw06, Selokatan, Gondorejo, Karanganyar', '2026-03-18 04:42:42'),
(112, NULL, '6884/Bapt/GUPDI/I/2025', 'Christman The Hosana', '', 'Surakarta', '2010-06-06', 'Ananias Suparji', 'Mindarsih', 'Lemah Abang, Rt02/Rw18, Kadipiro, Surakarta', '2026-03-18 04:45:55'),
(113, NULL, '6892/Bapt/GUPDI/I/2025', 'Kevin Giovany Lau', '', 'Kupang', '2008-03-03', 'Jonias Lau', 'Reni Agustina Anin', 'Pariti, Kupang, NTT', '2026-03-18 07:14:50'),
(114, NULL, '6891/Bapt/GUPDI/I/2025', 'Rius Simon', '', 'Kuningau', '2006-02-02', 'Simon Tapik', 'Martina Tangke Allo', 'Sapan/Toraja, Sulawesi Selatan', '2026-03-18 07:17:35'),
(115, NULL, '6890/Bapt/GUPDI/I/2025', 'Nober Sampe', '', 'Kondasang', '2008-11-02', 'Marthen Tandi Tampe', 'Tabita Pasorong', 'Toyasa Akong/Toraja, Sulawesi  Selatan', '2026-03-18 07:20:27'),
(116, NULL, '6889/Bapt/GUPDI/I/2025', 'Ostian Della Santos', 'Amos', 'Surakarta', '2002-12-27', 'Djoko Santoso', 'Karmini', 'Gambiran, Rt03/Rw01, Sukoharjo', '2026-03-18 07:23:31'),
(117, NULL, '6887/Bapt/GUPDI/I/2025', 'David Utama Sakti', 'Alfeus', 'Surakarta', '2011-10-16', 'Dodik Setyowarto', 'Apri Pamungkasih', 'Perum Gedongan Indah 4, Jl. Bima 2 No.B9', '2026-03-18 07:27:10'),
(118, NULL, '6886/Bapt/GUPDI/I/2025', 'Gisela Putri Tungga Dewi', 'Michella', 'Kebumen', '2009-09-07', 'Heri Suranto', 'Kartika Sari Dewi', 'Tanon Kidul, Rt02/Rw03, Gedongan, Colomadu, Karanganyar, Jawa Tengah', '2026-03-18 07:34:29'),
(119, NULL, '6897/Bapt/GUPDI/I/2025', 'Nathania Aurelia Abigael', 'Joana', 'Surakarta', '2009-05-18', 'Tirta Dwi Satria', 'Wiwin Indarsih', 'Carangan, Rt03/Rw08, Baluwarti', '2026-03-18 07:38:06'),
(120, NULL, '6896/Bapt/GUPDI/I/2025', 'Zefanya Gusta Vito Noel', '', 'Surakarta', '2007-07-03', 'Tirta Dwi Satria', 'Wiwin Indarsih', 'Carangan, Rt03/Rw08, Baluwarti', '2026-03-18 07:42:53'),
(121, NULL, '6895/Bapt/GUPDI/I/2025', 'Graysia Mahaputri', 'Evita', 'Surakarta', '2005-08-15', 'Tirta Dwi Satria', 'Wiwin Indarsih', 'Carangan, Rt03/Rw08, Baluwarti', '2026-03-18 07:45:19'),
(122, NULL, '6893/Bapt/GUPDI/I/2025', 'Emy Tammu Sarambu', '', 'Keningau', '2008-06-25', 'Marthen Tammu', 'Elisabeth Limbong', 'SMA Kristen 1 Surakarta', '2026-03-18 07:54:32'),
(123, NULL, '6894/Bapt/GUPDI/I/2025', 'Tirta Dwi Satria', 'Alfeus', 'Surakarta', '1983-04-19', 'Kamijan', 'Sri Supartini', 'Carangan, Rt03/Rw08, Baluwarti', '2026-03-18 07:57:02'),
(124, NULL, '6898/Bapt/GUPDI/I/2025', 'Ryza Dani Pratiwi', '', 'Karanganyar', '1989-05-17', 'Supodo', 'Sri Suryani', 'Jl. Apel, Klipan, Rt002/Rw002, Colomadu', '2026-03-18 08:00:11'),
(125, NULL, '6877/Bapt/GUPDI/I/2025', 'Nugroho Bintang Priswanto', 'Elias', 'Surakarta', '1972-05-29', 'Sugiyarto', 'Sri Murni', 'Panularan, Rt02/Rw007, Laweyan, Solo', '2026-03-18 08:02:46'),
(126, NULL, '6876/Bapt/GUPDI/I/2025', 'Aloysius Imanuell Hansel Adriyan', '', 'Surakarta', '2010-02-28', 'Andriyanto', 'Aven Maria Fransisca', 'Mijen, Rt02/Rw07, Sudiroprajan, Jebres, Surakarta', '2026-03-18 08:05:32'),
(127, NULL, '6883/Bapt/GUPDI/I/2025', 'Dona Cristiana', 'Manuella', 'Surakarta', '2003-12-18', 'Widodo', 'Yuri Widayani', 'Perum Purbayan Pratama Rt05/Rw06, Baki, Sukoharjo', '2026-03-18 08:08:29'),
(128, NULL, '6861/Bapt/GUPDI/I/2025', 'Jocelin Gabriele Dekron', 'Maria', 'Surakarta', '2008-03-14', 'Deki Sutrisno', 'Fanda Kurnia Mekawati', 'Sendang Mulya, Rt01/Rw08, Banjarsari, Surakarta', '2026-03-18 08:11:28'),
(129, NULL, '6863/Bapt/GUPDI/I/2025', 'Keyren Divia Christie', 'Dorothea', 'Surakarta', '2012-10-15', 'Sapto Wasono', 'Ayla Agnesia Widowati', 'Nayu Barat, R02/Rw13', '2026-03-18 08:13:56'),
(130, NULL, '6866/Bapt/GUPDI/I/2025', 'Arietta Libela Kristania', '', 'Karanganyar', '2012-07-15', 'R. Eko Prihandono', 'Pujining Rahayu', 'Jl. Dahlia 5 No.92, Perumnas Palur, Ngringo, Karanganyar', '2026-03-18 08:17:00'),
(131, NULL, '6870/Bapt/GUPDI/I/2025', 'Dhriasmara Gendhis Arti Saputro', 'Yohana', 'Surakarta', '2010-04-10', 'Eko Lambang Saputro', 'Magdalena Yuniarti', 'Kp. Plelen, Rt03/Rw12', '2026-03-18 08:19:41'),
(132, NULL, '6882/Bapt/GUPDI/I/2025', 'Marceleno Yudho Prasetyo Purbo Nugroho', 'Stefanus', 'Surakarta', '2005-03-12', 'Totok Sri Rejeki', 'Erna Dwi Purwanti', 'Premulung, Rt02/Rw08, Sundakan, Laweyan', '2026-03-18 08:23:39'),
(133, NULL, '6888/Bapt/GUPDI/I/2025', 'Angelina Setiawan', 'Elizabeth', 'Surakarta', '2008-10-29', 'Budi Setiawan', 'Sri Setyawati(Elly)', 'Jl. Jejosari 16, Rt05/Rw04, Danukusuman, Surakarta', '2026-03-18 08:26:22'),
(135, NULL, '6819/Bapt/GUPDI/I/2024', 'Andrew Justin Gunawan', 'Yonathan', 'Surakarta', '2011-06-16', 'Adi Gunawan', 'Francisca Dewi Utami', 'Lombobatang Barat, No.6', '2026-04-07 03:17:19'),
(136, NULL, '6810/Bapt/GUPDI/I/2024', 'Maggdalena Erika Cahyaningrum', '', 'Surakarta', '2003-11-08', 'Hertanto', 'Wulandari', 'Jl, Kol Sugiono, Rt02/Rw03, Banjarsari, Surakarta', '2026-04-07 03:21:28'),
(137, NULL, '6832/Bapt/GUPDI/I/2024', 'Zephaniah Hansen Gerald Indargo', '', 'Yogyakarta', '2008-10-09', 'Budi Purnomo Indargo', 'Veni Prabasitta P', 'Jl. Re Martadinata 142, Surakarta', '2026-04-07 03:24:58'),
(138, NULL, '6815/Bapt/GUPDI/I/2024', 'Serafio Cheris Alvinto', 'Moshia', 'Surakarta', '2011-04-03', 'Joko Susilo', 'Inggit Sih Utami', 'Karangasem, Rt02/Rw22, Banjarsari, Surakarta', '2026-04-07 03:29:36'),
(139, NULL, '6860/Bapt/GUPDI/I/2024', 'Felicia Cintamy Santo', 'Gabriella', 'Surakarta', '2010-09-15', 'Jimmy Santo', 'Gita Nugrahenny', 'Jl. Suharjo, SH No.06, Surakarta', '2026-04-07 03:34:29'),
(140, NULL, '6859/Bapt/GUPDI/I/2024', 'Dewangga Ardhiyana', 'Gabriel', 'Surakarta', '2006-05-19', 'Wahyono', 'Sukarmi', 'Balong, Rt03/Rw06, Sudiroprajan, Jebres, Surakarta', '2026-04-07 04:00:06'),
(141, NULL, '6844/Bapt/GUPDI/I/2024', 'Angelita Nadita Oktavia', 'Euodia', 'Surakarta', '2005-10-11', 'Didit Setiyanto', 'Erna Pujiastuti', 'Baron Cilik, Rt02/Rw06, Bumi, Laweyan', '2026-04-07 04:19:08'),
(142, NULL, '6840/Bapt/GUPDI/I/2024', 'Josephine Addenni Setyawan', '', 'Surakarta', '2005-06-15', 'Bani Setiyo Tjouroadji', 'Debora Wirawan', 'Srigading Rt05/Rw45', '2026-04-07 04:22:26'),
(143, NULL, '6857/Bapt/GUPDI/I/2024', 'Mellynda Nora Anggraini', 'Graciella', 'Surakarta', '1995-05-06', 'Qodri Muzakir', 'Silasri', 'Bayan Krajan, Rt01/Rw14, Kadipiro, Banjarsari, Surakarta', '2026-04-07 04:26:16'),
(144, NULL, '6858/Bapt/GUPDI/I/2024', 'Kalfin Kurnia Damara', 'Jose', 'Surakarta', '1991-10-07', 'Wahyu Handoko', 'Hendry Susilowati', 'Bayan Krajan, Rt01/Rw14, Kadipiro, Banjarsari, Surakarta', '2026-04-07 04:30:49'),
(145, NULL, '6847/Bapt/GUPDI/I/2024', 'Bhernaditus Tabah Pangestu', '', 'Surakarta', '2002-01-09', 'Stefanus Sukaryono', 'Esthi Yulianti', 'Ngampon, Rt04/Rw04, Mojosongo', '2026-04-07 04:41:15'),
(146, NULL, '6849/Bapt/GUPDI/I/2024', 'Yuni Kristiyani', 'Gavriella', 'Surakarta', '2000-06-19', 'Sukandar', 'Sri Wahyuni', 'Margorejo, Rt05/Rw11, Gilingan, Surakarta', '2026-04-07 05:55:18'),
(147, NULL, '6850/Bapt/GUPDI/I/2024', 'Theo Widi Arso', 'Gabriel', 'Grobogan', '1999-06-18', 'Stefanus Sukaryono', 'Esthi Yulianti', 'Margorejo, Rt05/Rw11, Gilingan, Surakarta', '2026-04-07 05:59:05'),
(148, NULL, '6851/Bapt/GUPDI/I/2024', 'Budi Santoso', 'Yohanes', 'Ujung Pandang', '1999-07-23', 'Jumadi', 'Surani', 'Petoran, Rt02/Rw09, Jebres, Surakarta', '2026-04-07 06:27:35'),
(149, NULL, '6853/Bapt/GUPDI/I/2024', 'Elizabeth Margareta', 'Carlissa', 'Surakarta', '2012-03-25', 'Didit Setiyanto', 'Erna Pujiastuti', 'Baron Cilik, Rt02/Rw06, Bumi, Laweyan', '2026-04-07 06:39:29'),
(150, NULL, '6855/Bapt/GUPDI/I/2024', 'Liony Oktaviona Basuki', 'Graciella', 'Surakarta', '2003-10-08', 'Basuki', 'Catur Rini', 'Jl. Pajajaran Timur 4/19, Sumber, Rt02/Rw11, Surakarta', '2026-04-07 06:44:03'),
(151, NULL, '6838/Bapt/GUPDI/I/2024', 'Melky Jimmy Saputra', 'Andreas', 'Surakarta', '2006-03-14', 'Danang Suajono', 'Nowo Wulan Sari', 'Jl. Jenggolo Selatan 2, Praon, Rt05/Rw07, Nusukan', '2026-04-07 06:58:06'),
(152, NULL, '6828/Bapt/GUPDI/I/2024', 'Ferdinand Joaquin Sutanto', '', 'Sukoharjo', '2009-10-01', 'Rudy Sutanto', 'Endang Lindawati', 'Jl. Nakula G-44, Grogol Indah', '2026-04-07 07:17:14'),
(153, NULL, '6827/Bapt/GUPDI/I/2024', 'Annabelle Carmelita Wong', 'Acnsa', 'Surakarta', '2009-12-15', 'Hengki Wongso', 'Enny Setyowati', 'Jl. Kapten Mulyadi 135', '2026-04-07 07:20:06'),
(154, NULL, '6826/Bapt/GUPDI/I/2024', 'Alicia Jocelyn Budiono', '', 'Sukoharjo', '2010-03-19', 'Jacobus Hany Budiono', 'Yohana Suryana', 'Jl, Saharjo SH No.54', '2026-04-07 07:28:38'),
(155, NULL, '6856/Bapt/GUPDI/I/2024', 'Sabrina Gerrardine Gracia', '', 'Surakarta', '2009-06-08', 'Oei Djiang Ming', 'Diana Wati', 'Jl. Panda AK 4, Solo Baru', '2026-04-07 08:03:00'),
(156, NULL, '6823/Bapt/GUPDI/I/2024', 'Almedio Nathanael Muda', 'Azriel', 'Surakarta', '2010-06-27', 'Hanani Nglenggono Mudo', 'Melia', 'Banyanyar, Rt01/Rw02', '2026-04-07 08:06:17'),
(157, NULL, '6824/Bapt/GUPDI/I/2024', 'Kejora Christy Karunia', 'Eliseba', 'Surakarta', '2010-04-28', 'Mulyono', 'Triana', 'Debegan, Rt04/Rw01, Mojosongo', '2026-04-10 02:57:24'),
(158, NULL, '6825/Bapt/GUPDI/I/2024', 'Paulus Alfa Kurniawan', 'Immanuel', 'Surakarta', '2010-08-20', 'Agus Kurniawan', 'Susanti Maharani', 'Margorejo, Rt02/Rw10, Gilingan, Surakarta', '2026-04-10 03:03:53'),
(159, NULL, '6835/Bapt/GUPDI/I/2024', 'Trisha Charlotte', 'Leticia', 'Surakarta', '2008-09-04', 'Martinus Wandhito Suryo', 'Susanti', 'Jl. Brigjen Katamso No,89 B, Mojosongo', '2026-04-10 03:07:48'),
(160, NULL, '6836/Bapt/GUPDI/I/2024', 'Agnesia Gloria Randani Saputri', 'Raquela', 'Surakarta', '2008-08-11', 'Eliezer Suranto', 'Timna Sri Dahini', 'Gulon, Rt02/Rw21, Jebres, Surakarta', '2026-04-10 03:11:21'),
(161, NULL, '6837/Bapt/GUPDI/I/2024', 'Christian Rafael Perkasa', '', 'Surakarta', '2008-04-11', 'Setiyanto', 'Yulianti', 'Margorejo, Rt01/Rw10, Gilingan, Banjarsari, Surakarta', '2026-04-10 03:14:31'),
(162, NULL, '6854/Bapt/GUPDI/I/2024', 'Angelica Karen Budiono', '', 'Semarang', '2008-06-07', 'Jacobus Hany Budiono', 'Yuhana Suryana', 'Jl. Saharjo SH No.54', '2026-04-10 03:19:30'),
(163, NULL, '6852/Bapt/GUPDI/I/2024', 'Alen Dion Tigana', 'Tobias', 'Surakarta', '1996-07-12', 'Wisnu Widjaja, S.E.,M.M.', 'Christine Widyasmani', 'Jl. Bungur 1 No.5, Rt06/Rw04, Punggawan', '2026-04-10 03:34:36'),
(164, NULL, '6848/Bapt/GUPDI/I/2024', 'Daniel Noverian Setiawan', 'Jason', 'Sukoharjo', '2002-11-09', 'Budi Setiawan', 'Ratna Widuri', 'Jl. Merpati BC 5', '2026-04-10 03:37:51'),
(165, NULL, '6834/Bapt/GUPDI/I/2024', 'Rafael Abimanyu Hernowo', '', 'Surakarta', '2008-04-16', 'Heri Purwanto', 'Nuniiek Murni R', 'Gandekan Tengen 01/VI, Solo', '2026-04-10 03:41:50'),
(166, NULL, '6833/Bapt/GUPDI/I/2024', 'Bintang Kurniawan', 'Stefanus', 'Surakarta', '2008-01-25', 'Mulyono', 'Triana', 'Debegan, Rt04/Rw01, Mojosongo', '2026-04-10 03:45:32'),
(167, NULL, '6830/Bapt/GUPDI/I/2024', 'Kurama Hugo Darmawan', 'Joshe', 'Surakarta', '2009-05-14', 'Sudarmawan', 'Maria Retno Widayanti', 'Gayamsari, Rt02/RwXI, Banyuayar', '2026-04-10 03:57:52'),
(168, NULL, '6829/Bapt/GUPDI/I/2024', 'Glorio Talent Widi Seirainobibo', 'Timotius', 'Surakarta', '2009-08-25', 'Philipus Rahmadi', 'Nur Dwi Hastuti', 'Kebonan, Rt02/Rw01, Sriwedari, Laweyan', '2026-04-10 04:06:02'),
(169, NULL, '6820/Bapt/GUPDI/I/2024', 'Dorothea Amaris Geraldine Indargo', '', 'Yogyakarta', '2011-02-16', 'Budi Purnomo Indargo', 'Veni Prabasitta P', 'Jl. Re. Martadinata 142, Surakarta', '2026-04-10 04:28:45'),
(170, NULL, '6839/Bapt/GUPDI/I/2024', 'Arya Adhi Kusuma', 'Nathanael', 'Surakarta', '2006-05-10', 'M.Aris Iskandar', 'Milka Heruwati', 'Jl. Srigunting 11 No.20, Rt03/Rw10, Manahan, Surakarta', '2026-04-10 04:35:40'),
(171, NULL, '6841/Bapt/GUPDI/I/2024', 'Wahyu Aji Prasetyo', 'Daud', 'Surakarta', '2005-11-07', 'Eko Santoso', 'Eny Ambarwati', 'Mertoudan, Rt08/Rw09', '2026-04-10 06:26:30'),
(172, NULL, '6842/Bapt/GUPDI/I/2024', 'Aurora Elios Santoso', 'Stevano', 'Surakarta', '2005-11-02', 'Sri Sadono Gatot Santoso', 'Maryam Suriyem', 'Margorejo, Rt02/Rw10, Gilingan, Banjarsari', '2026-04-10 06:30:04'),
(187, NULL, '6633/Bapt/GUPDI/I/2020', 'Samiyono', 'Alexander', 'Surakarta', '1972-10-24', 'Gunadi', 'Winih', 'Karangasem, Rt03/Rw09, Laweyan', '2026-04-14 03:28:10'),
(174, NULL, '6843/Bapt/GUPDI/I/2024', 'Oliviana Angelicha Effendy', 'Rebecca', 'Surakarta', '2005-10-21', '', 'Emi Natal Lestari', 'Rejosari, Rt01/Rw03, Gilingan, Banjarsari', '2026-04-10 06:37:22'),
(175, NULL, '6845/Bapt/GUPDI/I/2024', 'Cyntia Siegar Natalia Putri', 'Gabriella', 'Surakarta', '2005-09-30', 'Suparmin', 'Suparni', 'Tanggulsari, Rt04/Rw09, Banjarsari', '2026-04-10 06:40:20'),
(176, NULL, '6846/Bapt/GUPDI/I/2024', 'Jovinta Putri Hapsari', 'Gabriella', 'Purwokerto', '2005-06-21', 'Sigit Baroto', 'Theresa Tusri Handayani', 'Manahan, Rt04/Rw04', '2026-04-10 06:43:00'),
(177, NULL, '6822/Bapt/GUPDI/I/2024', 'Caesario Ramadhani Wijaya', 'Nathanael', 'Klaten', '2010-09-08', 'Sonny Hendrawan', 'Ismi Romlah', 'Jl. Sabang No.1A, Pasar Legi', '2026-04-10 06:46:22'),
(178, NULL, '6818/Bapt/GUPDI/I/2024', 'Jericho Emmanuel Adisakti', '', 'Surakarta', '2011-07-24', 'Yudianto Adisakti', 'Shintani Putri Savitri', 'Perum Gedongan Indah 4, Jl. Arjuna 1 Blok M 14', '2026-04-10 06:49:38'),
(179, NULL, '6817/Bapt/GUPDI/I/2024', 'Christio Bintang Pradipta', 'Onesiforus', 'Sukoharjo', '2011-06-27', 'Yustinus Wahyu Hidayat', 'Yohana Ike Pusposari', 'Jatimalang, Rt003/Rw001', '2026-04-10 06:53:34'),
(180, NULL, '6816/Bapt/GUPDI/I/2024', 'Michael Filemon Buna Irwanto', '', 'Surakarta', '2011-06-02', 'Boen A Liong', 'Irawati Irwanto', 'Dr. Supomo No.107', '2026-04-10 06:56:43'),
(181, NULL, '6814/Bapt/GUPDI/I/2024', 'Florence Callista Wong', 'Apphia', 'Surakarta', '2012-04-04', 'Hengky Wongso', 'Enny Setyowati', 'Jl. Kapten Mulyadi 135', '2026-04-10 07:00:39'),
(182, NULL, '6813/Bapt/GUPDI/I/2024', 'Nugrahaningsih', 'Debora', 'Surakarta', '1971-11-30', 'Mulyadi', 'Sugiyarti', 'Perum Bumi Saraswati, Rt006/Rw002, Gaum, Tasikmadu, Surakarta', '2026-04-10 07:03:55'),
(183, NULL, '6812/Bapt/GUPDI/I/2024', 'Sutinah', 'Priskilla', 'Surakarta', '1961-02-28', 'Sudimin', 'Ginem', 'Minapadi, Rt07/Rw09, Nusukan, Surakarta', '2026-04-10 07:06:40'),
(184, NULL, '6811/Bapt/GUPDI/I/2024', 'Chasira Aza Geoffiona', 'Graciella', 'Sukoharjo', '2009-12-17', 'Heri Hestiono', 'Rahayu Setyaningsih', 'Alam Citra Residence Kudu, Rt03/Rw01, Baki, Sukoharjo', '2026-04-10 07:11:32'),
(185, NULL, '6831/Bapt/GUPDI/I/2024', 'Stela Herdianta', 'Angela Merici', 'Surakarta', '2009-03-20', 'Hertanto', 'Wulandari', 'Jl. Kol. Sugiono, Rt02/Rw03, Banjarsari', '2026-04-10 07:15:22'),
(186, NULL, '6821/Bapt/GUPDI/I/2024', 'Natasya Adelia', 'RAphaella', 'Surakarta', '2011-02-19', 'Suharyo', 'Kustianti', 'Karanganyar, Plesungan, Grumbulpring, Rt03/Rw15', '2026-04-10 07:26:09');

-- --------------------------------------------------------

--
-- Table structure for table `data_penyerahan_anak`
--

CREATE TABLE `data_penyerahan_anak` (
  `id` int(11) NOT NULL,
  `nomor_penyerahan` varchar(50) DEFAULT NULL,
  `nama_anak` varchar(100) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `nama_ayah` varchar(100) DEFAULT NULL,
  `nama_ibu` varchar(100) DEFAULT NULL,
  `alamat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_penyerahan_anak`
--

INSERT INTO `data_penyerahan_anak` (`id`, `nomor_penyerahan`, `nama_anak`, `tempat_lahir`, `tanggal_lahir`, `nama_ayah`, `nama_ibu`, `alamat`) VALUES
(2, '024/PA/GUPDI/X/2024', 'Joshua Begawan Ciptaning', 'Surakarta', '2016-09-16', 'Candra Bayu Aji', 'Danti Kanugrahari', 'Marison, Regeney 4, Jeruksari, Blok J-01');

-- --------------------------------------------------------

--
-- Table structure for table `data_pernikahan`
--

CREATE TABLE `data_pernikahan` (
  `id` int(11) NOT NULL,
  `nomor_surat` varchar(50) NOT NULL,
  `hari` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `gereja` varchar(150) DEFAULT NULL,
  `alamat_gereja` text DEFAULT NULL,
  `nama_pria` varchar(100) NOT NULL,
  `tempat_lahir_pria` varchar(100) DEFAULT NULL,
  `tanggal_lahir_pria` date DEFAULT NULL,
  `ayah_pria` varchar(100) DEFAULT NULL,
  `ibu_pria` varchar(100) DEFAULT NULL,
  `alamat_pria` text DEFAULT NULL,
  `nama_wanita` varchar(100) NOT NULL,
  `tempat_lahir_wanita` varchar(100) DEFAULT NULL,
  `tanggal_lahir_wanita` date DEFAULT NULL,
  `ayah_wanita` varchar(100) DEFAULT NULL,
  `ibu_wanita` varchar(100) DEFAULT NULL,
  `alamat_wanita` text DEFAULT NULL,
  `ttd_pria` varchar(255) DEFAULT NULL,
  `ttd_wanita` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_pernikahan`
--

INSERT INTO `data_pernikahan` (`id`, `nomor_surat`, `hari`, `tanggal`, `jam`, `gereja`, `alamat_gereja`, `nama_pria`, `tempat_lahir_pria`, `tanggal_lahir_pria`, `ayah_pria`, `ibu_pria`, `alamat_pria`, `nama_wanita`, `tempat_lahir_wanita`, `tanggal_lahir_wanita`, `ayah_wanita`, `ibu_wanita`, `alamat_wanita`, `ttd_pria`, `ttd_wanita`, `created_at`) VALUES
(3, '023/NKH/GUPDI/X/2009', 'Sabtu', '2009-10-03', '10:00:00', NULL, NULL, 'Tony Hartono', 'Surakarta', '1969-05-27', '', 'Lanikwati', 'Jagalan, Rt02/Rw13, Jebres, Surakarta', 'Yeni Setiawati', 'Surakarta', '1980-12-26', 'Santoso Nugroho/Liem, Tan Liong', 'Yanti Nugroho/Auw, Djie Jan', 'Demangan, Rt01/Rw08, Sangkrah, Surakarta', NULL, NULL, '2026-04-01 06:23:16'),
(4, '024/NKH/GUPDI/X/2009', 'Sabtu', '2009-10-10', '11:00:00', NULL, NULL, 'Romdhani', 'Surakarta', '1981-07-04', 'Djoko Suwito', 'Samiyem', 'Bendosari, Rt03/Rw03, Pajang, Laweyan, Surakarta', 'Widya Kristianingsih', 'Surakarta', '1980-07-25', 'Suratin', 'Winarsih', 'Bayan, Rt03/Rw27, Kadipiro, Surakarta', NULL, NULL, '2026-04-01 06:58:44'),
(5, '025/NKH/GUPDI/X/2009', 'Minggu', '2009-10-11', '13:00:00', NULL, NULL, 'Agus Kurniawan', 'Surakarta', '1986-08-19', 'Nurbertus Sutiman', 'Tabita Waginem', 'Margorejo, Rt02/Rw10, Banjarsari, Surakarta', 'Susanti Maharani', 'Surakarta', '1986-03-14', 'Ignatius Sismadi', 'Puji Lestari', 'Praon, Rt02/Rw08, Nusukan, Surakarta', NULL, NULL, '2026-04-01 07:08:09');

-- --------------------------------------------------------

--
-- Table structure for table `pengaturan`
--

CREATE TABLE `pengaturan` (
  `id` int(11) NOT NULL,
  `tahun_pernikahan` int(4) NOT NULL,
  `tahun_baptis` int(4) NOT NULL,
  `tahun_penyerahan` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `data_baptis`
--
ALTER TABLE `data_baptis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_penyerahan_anak`
--
ALTER TABLE `data_penyerahan_anak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_pernikahan`
--
ALTER TABLE `data_pernikahan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengaturan`
--
ALTER TABLE `pengaturan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `data_baptis`
--
ALTER TABLE `data_baptis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT for table `data_penyerahan_anak`
--
ALTER TABLE `data_penyerahan_anak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_pernikahan`
--
ALTER TABLE `data_pernikahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pengaturan`
--
ALTER TABLE `pengaturan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
