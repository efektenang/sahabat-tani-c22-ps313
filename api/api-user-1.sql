-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2022 at 03:52 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api-user`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `artikel` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `artikel`) VALUES
(1, 'Brown Spot (Cochliobolus Miyabeanus), Ada beberapa cara pencegahan agar tanaman padi tidak terserang penyakit bercak daun coklat yaitu antara lain: Atur jarak tanam agar tidak terlalu rapat apalagi di saat musim hujan. Dan sangat dianjurkan menggunakan cara tanam sistem legowo; Gunakan urea secukupnya dan  di imbangi dengan unsur K; Gunakan benih bervarietas tahan terhadap jamur; Pemupukan berimbang yang lengkap, yaitu 250 kg urea, 100 kg SP36, dan 100 kg KCl per ha.\r\nNamun jika serangan penyakit bercak daun ini sudah terjadi pada lahan pertanian padi kita, segera lakukan antisipasi dengan memberikan obat atau fungisida. Obat atau fungisida yang ampuh untuk penyakit bercak daun coklat harus berbahan aktif difenoconazol, karbendazim, metil tiofanat, difenokonazol, tebukonazol azoxistrobin, belerang, atau klorotalonil. Funggisida berbahan aktif tersebut bisa kita dapatkan dari berbagai merk pestisida seperti antracol, dithane, score, anvil, folicur, Nativo, opus, indar, dan lain-lain.'),
(2, 'Hispa (Dicladispa Armigera), Tidak ada sifat resistensi yang efektif terhadap hama ini pada tanaman padi. Tanam tanaman di awal musim untuk menghindari populasi puncak. Potong ujung pucuk untuk mencegah serangga bertelur. Kumpulkan serangga dewasa dengan jaring penyapu, terutama di pagi hari ketika mereka kurang banyak bergerak. Singkirkan segala jenis gulma dari sawah selama musim tanpa penanaman. Daun dan pucuk yang terserang harus dipotong dan dibakar, atau dikubur dalam di bawah lumpur. Hindari pemupukan nitrogen yang berlebihan di ladang yang terserang. Lakukan rotasi tanaman untuk memutus siklus hidup hama ini. '),
(3, 'Leaf Blast (Magnaporthe grisea), Gunakan varietas tahan sesuai dengan sebaran ras yang ada di daerah setempat. Gunakan benih sehat. Hidarkan penggunaan pupuk nitrogen diatas dosis anjuran. Hindarkan tanam padi dengan varietas yang sama terus menerus sepanjang tahun. Sanitasi lingkungan harus intensif karena inang alternatif patogen dapat berupa rerumputan. Hindari tanam padi terlambat dari tanaman petani di sekitarnya. Pengendalian secara dini dengan perlakuan benih sangat dianjurkan untuk menyelamatkan persemaian sampai umur 30 hari setelah sebar. Penyemprotan fungisida sistemik sebaiknya 2 kali pada saat stadia tanaman anakan maksimum dan awal berbunga untuk mencegah penyakit blas daun dan blas leher terutama di daerah endemik. Hindarkan jarak tanam rapat (sebar langsung). Pemakaian kompos sebagai sumber bahan organik.');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `alamat` varchar(225) NOT NULL,
  `jk` varchar(12) NOT NULL,
  `tlhr` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `email`, `password`, `alamat`, `jk`, `tlhr`) VALUES
(1, 'budi05', 'budi05@gmail.com', '123456', '', '', ''),
(2, 'idergans', 'idergans@gmail.com', '123123', '', '', ''),
(6, 'farhan', 'rizki@gmail.com', 'farhan123', '', '', ''),
(7, NULL, NULL, NULL, '', '', ''),
(8, 'coba', 'coba@gmail.com', 'coba123', '', '', ''),
(9, 'madan1', 'madan1@gmail.com', 'madan1123', '', '', ''),
(10, 'madan2', 'madan2@gmail.com', 'madan1123', '', '', ''),
(11, 'madan3', 'madan3@gmail.com', 'madan1123', '', '', ''),
(12, 'madan4', 'madan4@gmail.com', 'madan4', '', '', ''),
(13, 'madan5', 'madan5@gmail.com', 'madan54321', 'medan', 'laki-laki', '2 juli 2001');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
