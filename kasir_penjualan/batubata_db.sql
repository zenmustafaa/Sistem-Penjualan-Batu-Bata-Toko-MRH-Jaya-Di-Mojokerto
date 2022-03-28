-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Sep 2021 pada 13.51
-- Versi server: 10.4.16-MariaDB
-- Versi PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `batubata_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_barang` text NOT NULL,
  `merk` varchar(255) NOT NULL,
  `harga_beli` varchar(255) NOT NULL,
  `harga_jual` varchar(255) NOT NULL,
  `satuan_barang` varchar(255) NOT NULL,
  `stok` text NOT NULL,
  `tgl_input` varchar(255) NOT NULL,
  `tgl_update` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `id_barang`, `id_kategori`, `nama_barang`, `merk`, `harga_beli`, `harga_jual`, `satuan_barang`, `stok`, `tgl_input`, `tgl_update`) VALUES
(4, 'BR002', 8, 'Batu bata merah', 'Baik', '10000', '1500', 'PCS', '457', '20 June 2021, 15:22', NULL),
(5, 'BR003', 9, 'BATA MRH', 'MATANG', '5000', '6000', 'PCS', '4987', '22 June 2021, 10:06', NULL),
(7, 'BR005', 11, 'bota apik', 'bagus', '50000', '2000', 'PCS', '964', '25 June 2021, 4:48', NULL),
(8, 'BR006', 10, 'Batu Bata BR', 'Matang', '5000', '3000', 'PCS', '998', '2 September 2021, 4:47', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `gudang`
--

CREATE TABLE `gudang` (
  `id_gudang` int(11) NOT NULL,
  `nama_gudang` varchar(255) CHARACTER SET latin1 NOT NULL,
  `alamat_gudang` text CHARACTER SET latin1 NOT NULL,
  `tlp` varchar(255) CHARACTER SET latin1 NOT NULL,
  `nama_pemilik` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `gudang`
--

INSERT INTO `gudang` (`id_gudang`, `nama_gudang`, `alamat_gudang`, `tlp`, `nama_pemilik`) VALUES
(1, 'MRH. JAYA', 'Dsn. Sumberpandan RT/RW: 14/04. Ds. Mojotamping Kec. Bangsal Kab. Mojokerto', '085608605432', 'Bapak Rejo');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `tgl_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `tgl_input`) VALUES
(9, 'bata merah', '22 June 2021, 10:05'),
(10, 'tanah gambut', '24 June 2021, 6:03'),
(11, 'tanah apik', '25 June 2021, 4:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` char(32) NOT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id_login`, `user`, `pass`, `id_member`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `nm_member` varchar(255) NOT NULL,
  `alamat_member` text NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gambar` text NOT NULL,
  `NIK` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id_member`, `nm_member`, `alamat_member`, `telepon`, `email`, `gambar`, `NIK`) VALUES
(1, 'Bapak Rejo', 'Dsn. Sumberpandan RT/RW: 14/04. Ds. Mojotamping Kec. Bangsal Kab. Mojokerto', '085608605432', 'rejo@gmail.com', 'logojurusan.png', '1213446748');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nota`
--

CREATE TABLE `nota` (
  `id_nota` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL,
  `periode` varchar(255) DEFAULT NULL,
  `id_pesanan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nota`
--

INSERT INTO `nota` (`id_nota`, `id_barang`, `id_member`, `jumlah`, `total`, `tanggal_input`, `periode`, `id_pesanan`) VALUES
(40, 'BR005', 1, '5', '10000', '25 June 2021, 7:09', '06-2021', 1),
(41, 'BR002', 1, '5', '7500', '25 June 2021, 7:09', '06-2021', 1),
(42, 'BR005', 1, '5', '10000', '25 June 2021, 7:09', '06-2021', 2),
(43, 'BR002', 1, '5', '7500', '25 June 2021, 7:09', '06-2021', 2),
(44, 'BR004', 1, '1', '3000', '25 June 2021, 21:52', '06-2021', 2),
(45, 'BR005', 1, '5', '10000', '25 June 2021, 7:09', '06-2021', 3),
(46, 'BR002', 1, '5', '7500', '25 June 2021, 7:09', '06-2021', 3),
(47, 'BR004', 1, '1', '3000', '25 June 2021, 21:52', '06-2021', 3),
(48, 'BR003', 1, '1', '6000', '25 June 2021, 22:09', '06-2021', 3),
(49, 'BR002', 1, '2', '3000', '25 June 2021, 7:09', '07-2021', 4),
(53, 'BR003', 1, '2', '12000', '29 July 2021, 9:21', '07-2021', 6),
(57, 'BR006', 1, '2', '6000', '2 September 2021, 4:50', '09-2021', 8),
(58, 'BR003', 1, '1', '6000', '2 September 2021, 4:50', '09-2021', 8),
(59, 'BR003', 1, '1', '6000', '2 September 2021, 4:59', '09-2021', 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `id_barang`, `id_member`, `jumlah`, `total`, `tanggal_input`) VALUES
(51, 'BR003', 1, '1', '6000', '2 September 2021, 4:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE `pesanan` (
  `id_pesanan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pesanan`
--

INSERT INTO `pesanan` (`id_pesanan`) VALUES
(10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `toko`
--

CREATE TABLE `toko` (
  `id_toko` int(11) NOT NULL,
  `nama_toko` varchar(255) NOT NULL,
  `alamat_toko` text NOT NULL,
  `tlp` varchar(255) NOT NULL,
  `nama_pemilik` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `toko`
--

INSERT INTO `toko` (`id_toko`, `nama_toko`, `alamat_toko`, `tlp`, `nama_pemilik`) VALUES
(1, '', 'Sukabumi Indah', '085608605432', 'budi');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `gudang`
--
ALTER TABLE `gudang`
  ADD PRIMARY KEY (`id_gudang`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indeks untuk tabel `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`id_nota`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indeks untuk tabel `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`id_toko`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `gudang`
--
ALTER TABLE `gudang`
  MODIFY `id_gudang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `nota`
--
ALTER TABLE `nota`
  MODIFY `id_nota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT untuk tabel `toko`
--
ALTER TABLE `toko`
  MODIFY `id_toko` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
