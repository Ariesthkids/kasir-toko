-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Feb 2024 pada 03.47
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasir_toko`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `keranjang_detail`
--

CREATE TABLE `keranjang_detail` (
  `id` int(11) NOT NULL,
  `kode_pesanan` varchar(255) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `qty` int(100) NOT NULL,
  `total` int(255) NOT NULL,
  `tgl` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `keranjang_detail`
--

INSERT INTO `keranjang_detail` (`id`, `kode_pesanan`, `nama_produk`, `qty`, `total`, `tgl`) VALUES
(78, 'PESANAN1', 'Fresh Kimchi', 3, 180000, '2024-02-23 13:39:29'),
(91, 'PESANAN91', 'Spicy Enoki Mushrooms', 4, 120000, '2024-02-23 14:23:21'),
(93, 'PESANAN93', 'Spicy Enoki Mushrooms', 5, 150000, '2024-02-23 14:24:35'),
(97, 'PESANAN95', 'Doenjang Jjigae ', 4, 200000, '2024-02-23 14:41:51'),
(107, 'PESANAN106', 'Doenjang Jjigae ', 5, 250000, '2024-02-24 11:13:51'),
(121, 'PESANAN120', 'Tteokbokki ', 5, 200000, '2024-02-24 12:25:47'),
(122, 'PESANAN122', 'Tteokbokki ', 4, 160000, '2024-02-25 11:46:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `no` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`no`, `user`, `pass`) VALUES
(1, 'kasir', 'mamyami123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `kode_barang` varchar(100) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `harga` int(100) NOT NULL,
  `detail` text NOT NULL,
  `gambar` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id`, `kode_barang`, `nama_produk`, `harga`, `detail`, `gambar`) VALUES
(28, 'KING2823', 'Tteokbokki ', 40000, 'Tteokbokki adalah hidangan Korea berupa tepung beras yang dimasak dalam bumbu gochujang yang pedas dan manis.', '6196955054813067419_120.jpg'),
(29, 'KING2923', 'Doenjang Jjigae ', 50000, 'Doenjang Jjigae adalah salah satu makanan rumahan paling klasik dalam masakan Korea yang cepat dan mudah dibuat, namun dikemas dengan rasa yang berani. Sup pasta kedelai yang lezat dan lezat ini akan langsung menghangatkan Anda di hari yang dingin, dan rasanya seperti yang disajikan di restoran.', '6196955054813067418_120.jpg'),
(30, 'KING3023', 'Fresh Kimchi', 60000, 'Fresh Kimchi adalah salah satu jenis acar sayuran yang kaya akan Vitamin dan Mineral. ', '6196955054813067416_120.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `keranjang_detail`
--
ALTER TABLE `keranjang_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `keranjang_detail`
--
ALTER TABLE `keranjang_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
