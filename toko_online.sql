-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Jan 2024 pada 08.56
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `nama`) VALUES
(2, 'Heels'),
(3, 'Wig'),
(4, 'Jepit Rambut'),
(5, 'Nail Art'),
(6, 'Bandu'),
(7, 'Anting'),
(8, 'Cincin'),
(9, 'Kalung'),
(10, 'Gelang'),
(13, 'Dress'),
(15, 'TopiPink');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `harga` double NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `ketersediaan_stok` enum('habis','tersedia') DEFAULT 'tersedia'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id`, `kategori_id`, `nama`, `harga`, `foto`, `detail`, `ketersediaan_stok`) VALUES
(13, 13, 'Pink Princess Dress', 9000000000, 'jk9e6944ad8kk00kdj6a.jpeg', 'Dress berwarna pink yang mirip seperti putri dari dunia fantasy dengan bermotif bunga berwarna pink yang indah\r\n<br>\r\nUkuran : M, L, XL, XLL\r\n', 'tersedia'),
(14, 2, 'Pink Strap Heels', 20000000, 'jhh51hdk5dk2j19eddeh.jpg', '                        Heels yang berwarna pink dengan hiasan berlian di talinya                    ', 'tersedia'),
(15, 3, 'Wig Coklat Tua', 500000, '32jda4h134h5k0k4ak0a.jpg', '                        Wig berwarna coklat dan panjangnya 100cm dengan kunciran pita berwarna putih disisi kanan dan kiri rambut', 'tersedia'),
(16, 4, 'Jepit Rambut Bunga Lily', 50000, '5a8j15ka57j909743ka4.jpg', 'Jepitan rambut yang bermotif bunga lily yang indah', 'tersedia'),
(17, 5, 'Cinnamoroll Nail Art', 30000, '7ka8ja2j34d8kkdeh4ka.jpg', 'Nail art yang bermotif karakter imut dari Sanrio yaitu Cinnamoroll', 'tersedia'),
(18, 6, 'Bandu Kupu-kupu ungu', 60000, '5dj31h1d4hd8a9aka6a9.jpg', 'Bandu perak bermotif kupu-kupu berwarna ungu yang dilengkapi dengan mutiara', 'tersedia'),
(19, 7, 'Anting Bunga Putih', 100000, '6khe76651a4h5h06he8d.jpg', 'Anting yang berwarna emas dengan bunga berwarna putih', 'tersedia'),
(20, 8, 'Cincin Pita', 2000000000, 'e2ejek29a36kkk6h0234.jpg', '                        CIncin berwarna silver dan ada hiasan berbentuk pita                    ', 'tersedia'),
(21, 9, 'Kalung Bulan Biru', 1000000000, 'h16kh8ad39edaka1h3ea.jpg', '                        Kalung berwarna silver dan ada hiasan berbentuk bulan sabit dan juga bintang-bintang kecil                    ', 'tersedia'),
(22, 10, 'Gelang Berlian Ungu', 300000, 'kd8ejd6k400ka22k8hda.jpg', 'Gelang berwarna silver dan ada mutiara kecil yang berwarna ungu', 'tersedia'),
(23, 13, 'Green Dress', 800000, '1dedk3kkhak09dk24eha.jpg', 'Dress berwarna hijau dengan motif daun yang cantik\r\n<br>\r\nUkuran : M, L, XL, XLL', 'tersedia'),
(24, 13, 'Green Fairy Dress', 900000, 'k80e87k7ajaa3e53a752.jpg', 'Dress berwarna hijau rumput dengan motif bunga-bunga kecil seperti peri dari dunia fantasy       \r\n<br>\r\nUkuran : M, L, XL, XLL             ', 'tersedia'),
(25, 2, 'Pink Peach Strap Heels', 1000000000, '014d5jhh3hh7jk940hdh.jpg', 'Heels berwarna peach dengan 2 strap', 'tersedia'),
(26, 2, 'White Strap Heels', 900000, '49dhh01akh44kk75e5h1.jpg', 'Heels berwarna putih dengan strap yang simpel tetapi masih terlihat elegant', 'tersedia'),
(27, 3, 'Wig Blonde', 400000, 'kkdjh95jj138d02h0daa.jpg', 'Wig blonde dengan poni dan panjang ukurannya 150cm', 'tersedia'),
(28, 3, 'Blue Wig', 700000, '79d37eah4543774j1dk7.jpg', 'Wig berwarna biru dan berponi dengan panjang 50cm dan belakangnya disanggul motif bunga', 'tersedia'),
(29, 4, 'Jepitan Rambut Rose', 30000, 'h3e2k67edh8jja3akd1k.jpg', 'Jepitan rambut dan ada motif bunga rose', 'tersedia'),
(30, 4, 'Jepitan Rambut Kupu-kupu', 20000, 'e45dd4dhk96kjddja4ke.jpg', 'Jepitan Rambut dengan motif kupu-kupu', 'tersedia'),
(31, 5, 'Pom Pom Purin Nail Art', 50000, '25ed16a2160h8h080k44.jpg', '                        Nail art dengan motif dari karakter Sanrio yang imut yaitu Pom Pom Purin                    ', 'tersedia'),
(32, 5, 'Pochacco Nail Art', 50000, '98ddh85aahkj5k97hkk5.jpg', '                        Nail Art dengan motif karakter lucu dari Sanrio yaitu Pochacco                    ', 'tersedia'),
(33, 6, 'Bandu Bunga Putih', 70000, '74k3j1d9k79dkee9h5kh.jpg', 'Bandu berwarna emas dan juga ada hiasan bunga putih dan berlian kecil di', 'tersedia'),
(34, 6, 'Bandu Kupu-kupu Putih', 50000, 'h3hke5k6hka9511akj19.jpg', 'Bandu dengan motif kupu-kupu kecil berwarna putih', 'tersedia'),
(35, 7, 'Anting Bunga Ungu', 100000, 'k965k3dh24j141j57709.jpg', 'Anting dengan hiasan berbentuk bunga berwarna ungu', 'tersedia'),
(36, 7, 'Anting Mutiara', 200000, '903aaaee98e3kjdd940d.jpg', 'Anting dengan hiasan mutiara yang indah di tengahnya', 'tersedia'),
(37, 8, 'Cincin Emas', 500000, 'j6kj1da5ha896kkh5ee0.jpg', 'CIncin berwarna emas dan ada berlian berwarna ungu di tengahnya', 'tersedia'),
(38, 8, 'Cincin Angel Wings ', 100000, 'h599353h8adhk7jhj29k.jpg', 'Cincin berwarna silver dengan motif seperti angel wings', 'tersedia'),
(39, 9, 'Kalung Tear Drop ', 800000, 'h809498jaj1a65e3a2da.jpg', 'Kalung berwarna silver dengan hiasan berbentuk tear drop berwarna biru langit dan juga ada sayapnya ', 'tersedia'),
(40, 9, 'Kalung Snowflake', 600000, '9k6dhh0e6a96dha6kk08.jpg', 'Kalung berwarna perak dengan hiasan berbentuk snowflake', 'tersedia'),
(41, 10, 'Gelang Bunga Putih', 700000, 'd13e2e49d1ddj26a23aj.jpg', 'Gelang berwarna perak dan ada hiasan bunganya', 'tersedia'),
(42, 10, 'Gelang Kupu-kupu', 400000, 'j05d577ajk2977k27a64.jpg', 'Gelang berwarna perak dan ada hiasan berbentuk kupu-kupu ', 'tersedia'),
(43, 15, 'Topi Pink', 200000, 'ea732301jeka5hd0kk14.jpg', 'Topi pink yang indah', 'tersedia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$fCTrq0Dy5tzAMKTi/GUyyuh20AtsA65Itm8K2csLLGO38fr8acgEC');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nama` (`nama`),
  ADD KEY `kategori_produk` (`kategori_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `kategori_produk` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
