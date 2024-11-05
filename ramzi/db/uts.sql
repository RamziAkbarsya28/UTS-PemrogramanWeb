-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 28, 2024 at 12:54 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uts`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int NOT NULL,
  `nama` varchar(50) NOT NULL,
  `universitas` varchar(50) NOT NULL,
  `prodi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `nama`, `universitas`, `prodi`) VALUES
(1, 'Ramzi Akbarsya Dihariyanto', 'Universitas Pembangunan Jaya', 'Informatika');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `message` text COLLATE utf8mb4_general_ci NOT NULL,
  `submission_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `message`, `submission_date`) VALUES
(1, 'woy', 'ramzi.akbarsya@student.upj.ac.id', '272727227', 'yy', '2024-10-28 09:08:04'),
(2, 'Jamal', 'testing@gmail.com', '08123123123', 'Ini adalah aku ', '2024-10-28 12:29:03'),
(3, 'Jamal', 'testing@gmail.com', '08123123123', 'Ini adalah aku ', '2024-10-28 12:30:50'),
(4, 'Jamal', 'testing@gmail.com', '08123123123', 'Ini adalah aku sssss', '2024-10-28 12:31:02'),
(5, 'Jamal', 'testing@gmail.com', '08123123123', 'sfasdfasdfasdfasdfasdf', '2024-10-28 12:34:28'),
(6, 'Jamal', 'testing@gmail.com', '08123123123adsf', 'asdfasdfasdfasdfasf', '2024-10-28 12:48:18');

-- --------------------------------------------------------

--
-- Table structure for table `experiences`
--

CREATE TABLE `experiences` (
  `id` int NOT NULL,
  `nama_perusahaan` varchar(50) NOT NULL,
  `durasi` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `img_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `experiences`
--

INSERT INTO `experiences` (`id`, `nama_perusahaan`, `durasi`, `deskripsi`, `img_path`) VALUES
(1, 'PT. DINAMIK WAHANA INTERNASIONAL', '2023 – 2024', 'Ruko Griya Loka. Selama magang saya bertanggung jawab atas berbagai tugas yang membantu tim mencapai target proyek dan memperkuat pemahaman saya di bidang pemasaran barang dan mencari barang yang sesuai konsumen inginkan.', 'assets/Kantor.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int NOT NULL,
  `ndepan` text COLLATE utf8mb4_general_ci NOT NULL,
  `nbelakang` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `ndepan`, `nbelakang`) VALUES
(1, 'Ramzi Akbarsya', 'Dihariyanto'),
(2, 'josep', 'nurul');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int NOT NULL,
  `nama_project` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `img_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `nama_project`, `deskripsi`, `img_path`) VALUES
(1, 'Biji Kopi', 'Project ini, mencari biji kopi pilihan untuk menciptakan taste yang khas dan akan di presentasikan ke kosumen untuk dijadikan product.', 'assets/kopi.jpg'),
(2, 'Design UI/UX', 'Proyek Desain UI/UX untuk Medice Reminder bertujuan untuk menciptakan pengalaman pengguna dapat mengingat obat dan visual yang menarik, sekaligus mempermudah navigasi bagi semua jenis pengguna.', 'assets/Willy.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experiences`
--
ALTER TABLE `experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `experiences`
--
ALTER TABLE `experiences`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
