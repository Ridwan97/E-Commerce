-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Feb 2021 pada 23.12
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `computeronshop`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama_lengkap`) VALUES
(1, 'admin001', 'admin001', 'muhammad ridwan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'PC'),
(2, 'Handphone');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ongkir`
--

CREATE TABLE `ongkir` (
  `id_ongkir` int(5) NOT NULL,
  `nama_kota` varchar(100) NOT NULL,
  `tarif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ongkir`
--

INSERT INTO `ongkir` (`id_ongkir`, `nama_kota`, `tarif`) VALUES
(1, 'Jakarta', 10000),
(2, 'bogor', 15000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `email_pelanggan` varchar(100) NOT NULL,
  `password_pelanggan` varchar(50) NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL,
  `alamat_pelanggan` text NOT NULL,
  `telepon_pelanggan` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `email_pelanggan`, `password_pelanggan`, `nama_pelanggan`, `alamat_pelanggan`, `telepon_pelanggan`) VALUES
(1, 'ridwan.sastrawijaya@gmail.com', 'admin123', 'iwan', '', '081210986298'),
(4, 'hafiz@gmail.com', 'admin123', 'abdul hafiz syaputra', 'tanjung sanyang', '08363672388'),
(5, 'arika@gmail.com', 'admin123', 'arika zuraidah', 'cilandak', '0182829292'),
(6, 'iwan@gmail.com', 'iwan1234', 'Iwan', 'cawang', '085156424144'),
(7, 'Ridwan@gmail.com', 'ridwan1234', 'Ridwan ', 'cawang', '081210986298'),
(8, 'Ridwan1@gmail.com', 'ridwan1234', 'Muhammad Ridwan', 'ridwan1234', '082726362362'),
(10, 'ridwan008@gmail.com', 'ridwan1234', 'Muhammad Ridwan', 'cawang', '081234567890'),
(11, 'ridwan10@gmail.com', 'ridwan1234', 'Iwan Ridwan', 'cawang', '081234567890'),
(12, 'iwan008@gmail.com', 'iwan1234', 'iwan', 'cawang', '0875423423571');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pemabayaran` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `bank` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `bukti` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id_pemabayaran`, `id_pembelian`, `nama`, `bank`, `jumlah`, `tanggal`, `bukti`) VALUES
(1, 7, 'iwan', 'jbdsjk', 873292, '2019-08-04', '20190804063706sashimi1.jpg'),
(2, 7, 'iwan', 'jbdsjk', 873292, '2019-08-04', '20190804064713sashimi1.jpg'),
(3, 7, 'iwan', 'jbdsjk', 873292, '2019-08-04', '20190804064800sashimi1.jpg'),
(4, 7, 'haaha', 'jahsjaohj', 832748229, '2019-08-04', '20190804064835matcha1.jpg'),
(5, 7, 'haaha', 'jahsjaohj', 832748229, '2019-08-04', '20190804065152matcha1.jpg'),
(6, 7, 'iwan', 'oke', 2147483647, '2019-08-04', '20190804065207sushi2.jpg'),
(7, 16, 'iwan', 'wkwk', 9393, '2019-08-04', '20190804232331sushi8.jpg'),
(8, 18, 'sdsldj', 'ksdks', 929299210, '2019-08-04', '20190804233027sushi.jpg'),
(9, 18, 'andrianingsih pandamanda', 'skdms;kl', 90923092, '2019-08-04', '20190804233309sushi.jpg'),
(10, 18, 'andrianingsih pandamanda', 'skdms;kl', 90923092, '2019-08-04', '20190804233347sushi.jpg'),
(11, 18, 'fdfd', 'fslfs l', 80429, '2019-08-04', '20190804233402sushi.jpg'),
(12, 20, 'dfldml', 'sdlfksd;l', 304303402, '2019-08-04', '20190804234028sashimi1.jpg'),
(13, 20, 'dfldml', 'sdlfksd;l', 304303402, '2019-08-04', '20190804234200sashimi1.jpg'),
(14, 20, 'skdskldnf', 'knsdl', 880000, '2019-08-04', '20190804234214'),
(15, 20, 'skdskldnf', 'knsdl', 880000, '2019-08-04', '20190804235015'),
(16, 20, 'iwa', 'smdnskn', 2302878, '2019-08-04', '20190804235029'),
(17, 21, '93292', 'skdms;k', 897292, '2019-08-04', '20190804235119'),
(18, 21, 'dflmd;l', '03843poj', 909707, '2019-08-04', '20190804235408'),
(19, 22, 'hafiz syaputra', 'mandiri', 17010000, '2019-08-05', '20190805061242'),
(20, 19, 'iwan', 'dki', 15000000, '2020-01-27', '20200127214836'),
(21, 19, 'iwan', 'dki', 15000000, '2020-01-27', '20200127215219'),
(22, 31, 'iwans', 'mandiri', 5010000, '2020-01-27', '20200127220206'),
(23, 31, 'iwans', 'mandiri', 5010000, '2020-01-27', '20200127220457'),
(24, 32, 'iwanso', 'mandiri', 2510000, '2020-01-27', '20200127220816'),
(25, 20, 'iwanhehehe', 'mandirisi', 12010000, '2020-01-27', '20200127221538usecase-atm.png'),
(26, 21, 'heheh', 'ada aja', 20000, '2020-01-27', '202001272224452019-10-16-21-14-15.jpg'),
(27, 35, 'yoi hehe', 'ntaps', 250000, '2020-01-27', '202001272229082019-10-16-21-15-40.jpg'),
(28, 37, 'oke', 'oke juga', 399202202, '2020-01-27', '20200127223441beauty_20200111185459.jpg'),
(29, 37, 'oke', 'oke juga', 399202202, '2020-01-27', '20200127223936beauty_20200111185459.jpg'),
(30, 42, 'Muhammad Ridwan', 'mandiri', 89999, '2020-08-25', '20200825212602'),
(31, 43, 'Muhammad Ridwan', 'asa', 2147483647, '2020-08-25', '20200825213408lol1.png'),
(32, 44, 'Muhammad Ridwan', 'Mandiri', 515000, '2020-08-25', '20200825214005iwan.jpg'),
(33, 47, 'polisi', 'mandrii', 40510000, '2020-08-26', '20200826220057denah.png'),
(34, 50, 'Ayunan', '2', 10000000, '2020-08-26', '20200826221714marmoset-1592529426589.png'),
(35, 50, 'iwan', 'bca', 10000000, '2020-08-26', '20200826221758WhatsApp Image 2020-08-15 at 14.22.49.jpeg'),
(36, 51, 'somat', 'bangunan', 99999, '2020-08-26', '20200826222037IJAZAH1.jpg'),
(37, 52, 'Muhammad Ridwan', 'bca', 988888229, '2020-08-26', '20200826222654WhatsApp Image 2020-04-17 at 17.44.55.jpeg'),
(38, 53, 'Muhammad Ridwan', 'mandiri', 24010000, '2020-08-26', '2020082623004120200128_154601.jpg'),
(39, 54, 'Muhammad Ridwan', 'permata', 12000000, '2020-08-27', '2020082709331420200208_072554.jpg'),
(40, 54, 'noni novita', 'mandiri', 12000000, '2020-08-27', '2020082711594420200208_172751.jpg'),
(41, 56, 'Muhammad Ridwan', 'bca', 240000000, '2020-08-27', '2020082717023120200208_124641.jpg'),
(42, 58, 'Muhammad Ridwan', 'mandiri', 5010000, '2020-08-27', '20200827220002FB_IMG_1588107488666.jpg'),
(43, 60, 'Muhammad Ridwan', 'permata', 12510000, '2020-08-28', '20200828100636FB_IMG_1581904398194.jpg'),
(44, 62, 'akbar', 'permata', 200000, '2020-08-28', '2020082810103420200214_194302.jpg'),
(45, 66, 'Muhammad Ridwan', 'mandiri', 26510000, '2020-08-30', '20200830051442global-network-icon_98292-4426.jpg'),
(46, 55, 'Muhammad Ridwan', 'Mandiri', 12000000, '2020-09-20', '20200920021153WhatsApp Image 2020-09-20 at 00.04.20.jpeg'),
(47, 67, 'Muhammad Ridwan', 'Mandiri', 24010000, '2020-09-20', '20200920021526WhatsApp Image 2020-09-15 at 13.58.20.jpeg'),
(48, 57, 'Muhammad Ridwan', 'Mandiri', 3434, '2020-10-14', '20201014214053masker.png'),
(49, 71, 'iwan', 'Mandiri', 2510000, '2020-10-16', '20201016015820Logo-LSP-BPPTIK.png'),
(50, 73, 'martin', 'bca', 2900000, '2020-10-16', '20201016223618love.png'),
(51, 80, 'steven', 'bca', 30007000, '2020-10-17', '20201017022454praying-hands-vector-removebg-preview.png'),
(52, 85, 'Muhammad Ridwan', 'bca', 509000, '2020-10-17', '20201017222629Logo-LSP-BPPTIK.png'),
(53, 86, 'Muhammad Ridwan', 'Mandiri', 27533000, '2021-01-16', '20210116174840Walvirtlab.png'),
(54, 87, 'Juan Kolose', 'Mandiri', 17077000, '2021-01-20', '20210120154517WhatsApp Image 2019-07-11 at 06.42.16.jpeg'),
(55, 90, 'Muhammad Ridwan', 'Mandiri', 1409000, '2021-02-03', '20210203030703WhatsApp Image 2020-10-02 at 22.52.09.jpeg'),
(56, 93, 'Iwan', 'Mandiri', 8008000, '2021-02-04', '20210204181613mandiri.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pembelian` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `tanggal_pembelian` date NOT NULL,
  `total_pembelian` int(11) NOT NULL,
  `alamat_pengiriman` text NOT NULL,
  `status_pembelian` varchar(100) NOT NULL DEFAULT 'Belum Dibayar',
  `resi_pengiriman` varchar(50) NOT NULL,
  `totalberat` int(11) NOT NULL,
  `provinsi` varchar(255) NOT NULL,
  `distrik` varchar(255) NOT NULL,
  `tipe` varchar(255) NOT NULL,
  `kodepos` varchar(255) NOT NULL,
  `ekspedisi` varchar(255) NOT NULL,
  `paket` varchar(255) NOT NULL,
  `ongkir` int(11) NOT NULL,
  `estimasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembelian`
--

INSERT INTO `pembelian` (`id_pembelian`, `id_pelanggan`, `tanggal_pembelian`, `total_pembelian`, `alamat_pengiriman`, `status_pembelian`, `resi_pengiriman`, `totalberat`, `provinsi`, `distrik`, `tipe`, `kodepos`, `ekspedisi`, `paket`, `ongkir`, `estimasi`) VALUES
(1, 1, '2019-08-02', 15010000, 'wkwk', 'Sudah Kirim Pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(2, 1, '2019-08-02', 15010000, 'kk', 'Sudah Kirim Pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(3, 1, '2019-08-02', 15010000, 'll', 'Sudah Kirim Pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(4, 1, '2019-08-02', 10000, 'll', 'Sudah Kirim Pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(5, 1, '2019-08-02', 5010000, 'wkwk', 'Sudah Kirim Pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(6, 1, '2019-08-02', 15010000, 'wkwk', 'Sudah Kirim Pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(7, 1, '2019-08-02', 5010000, 'wkwk', 'Sudah Kirim Pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(8, 1, '2019-08-03', 5000000, '', 'Sudah Kirim Pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(9, 1, '2019-08-03', 15010000, 'cawang', 'Sudah Kirim Pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(10, 2, '2019-08-03', 15000000, 'ijiowdw', 'Belum Dibayar', '', 0, '', '', '', '', '', '', 0, ''),
(11, 2, '2019-08-03', 0, 'ijiowdw', 'Belum Dibayar', '', 0, '', '', '', '', '', '', 0, ''),
(12, 2, '2019-08-03', 5010000, 'heheh', 'Belum Dibayar', '', 0, '', '', '', '', '', '', 0, ''),
(13, 1, '2019-08-03', 15010000, 'kgkkgk', 'Sudah Kirim Pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(14, 1, '2019-08-04', 5015000, 'sjajkashk', 'Sudah Kirim Pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(15, 1, '2019-08-04', 24510000, 'dfd', 'Sudah Kirim Pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(16, 1, '2019-08-04', 15000000, 'ksmdksm', 'Sudah Kirim Pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(17, 1, '2019-08-04', 5010000, 'jssj', 'Sudah Kirim Pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(18, 1, '2019-08-04', 5000000, 'jdjd', 'Sudah Kirim Pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(19, 1, '2019-08-04', 15000000, 'hehehe', 'Sudah Kirim Pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(20, 1, '2019-08-04', 12010000, 'dkfndkkdl', 'Sudah Kirim Pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(21, 1, '2019-08-04', 15010000, 'kdcklskl', 'Sudah Kirim Pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(22, 4, '2019-08-05', 17010000, 'tanjung sanyang', 'Belum Dibayar', '', 0, '', '', '', '', '', '', 0, ''),
(23, 5, '2019-08-06', 12010000, 'cilandak', 'Sudah Kirim Pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(24, 5, '2019-08-06', 17010000, 'cilandak', 'Sudah Kirim Pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(25, 5, '2019-08-07', 15010000, 'jakarta', 'Sudah Kirim Pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(26, 5, '2019-08-07', 12010000, 'cilandak', 'Sudah Kirim Pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(27, 1, '2019-10-08', 2510000, 'cawang', 'Sudah Kirim Pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(28, 1, '2020-01-27', 30010000, 'cawang', 'Sudah Kirim Pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(29, 1, '2020-01-27', 5010000, '', 'Sudah Kirim Pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(30, 1, '2020-01-27', 510000, 'caken', 'Sudah Kirim Pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(31, 1, '2020-01-27', 5010000, 'oke', 'Sudah Kirim Pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(32, 1, '2020-01-27', 2510000, 'cawang', 'Sudah Kirim Pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(33, 1, '2020-01-27', 12010000, 'hehehe', 'Sudah Kirim Pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(34, 1, '2020-01-27', 415000, 'monas', 'Sudah Kirim Pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(35, 1, '2020-01-27', 2510000, '', 'Sudah Kirim Pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(36, 1, '2020-01-27', 20010000, 'yoi', 'Sudah Kirim Pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(37, 1, '2020-01-27', 500000, '', 'Sudah Kirim Pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(38, 1, '2020-01-27', 8000000, 'ok', 'Sudah Kirim Pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(39, 6, '2020-08-16', 12010000, 'tanjung sanyang RT006/008 No. 37A', 'Sudah Kirim Pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(40, 6, '2020-08-25', 24010000, 'pasar minggu 200', 'Sudah Kirim Pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(41, 6, '2020-08-25', 12000000, 'pasar minggu 200', 'Sudah Kirim Pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(42, 6, '2020-08-25', 5010000, 'pasar minggu 200', 'Sudah Kirim Pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(43, 6, '2020-08-25', 20015000, 'pasar minggu 200', 'Sudah Kirim Pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(44, 6, '2020-08-25', 515000, 'pasar minggu 200', 'Sudah Kirim Pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(45, 6, '2020-08-26', 3000000, 'pasar minggu 200', 'Sudah Kirim Pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(46, 6, '2020-08-26', 2500000, 'pasar minggu 200', 'Sudah Kirim Pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(47, 6, '2020-08-26', 40510000, 'pasar minggu 200', 'Barang Dikirim', 'abc122', 0, '', '', '', '', '', '', 0, ''),
(48, 6, '2020-08-26', 10010000, 'pasar minggu 200', 'Sudah Kirim Pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(49, 6, '2020-08-26', 24010000, 'pasar minggu 200', 'Sudah Kirim Pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(50, 6, '2020-08-26', 10000000, 'pasar minggu 200', 'Lunas', '443', 0, '', '', '', '', '', '', 0, ''),
(51, 6, '2020-08-26', 12000000, 'pasar minggu 200', 'Sudah Kirim Pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(52, 6, '2020-08-26', 12510000, 'pasar minggu 200', 'Barang Dikirim', '774', 0, '', '', '', '', '', '', 0, ''),
(53, 6, '2020-08-26', 24010000, 'cawang', 'Barang Dikirim', '7773', 0, '', '', '', '', '', '', 0, ''),
(54, 6, '2020-08-27', 12000000, 'pasar minggu 200', 'Lunas', '2343', 0, '', '', '', '', '', '', 0, ''),
(55, 6, '2020-08-27', 12000000, 'pasar minggu 200', 'Sudah Kirim Pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(56, 1, '2020-08-27', 24000000, 'pasar minggu 200', 'Sudah Kirim Pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(57, 1, '2020-08-27', 16010000, 'pasar minggu 200', 'Barang Dikirim', '990', 0, '', '', '', '', '', '', 0, ''),
(58, 7, '2020-08-27', 5010000, 'cawang', 'Sudah Kirim Pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(59, 7, '2020-08-28', 16000000, 'pasar minggu 200', 'Belum Dibayar', '', 0, '', '', '', '', '', '', 0, ''),
(60, 7, '2020-08-28', 12510000, 'cawang', 'Sudah Kirim Pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(61, 7, '2020-08-28', 24000000, 'pasar minggu 200', 'Belum Dibayar', '', 0, '', '', '', '', '', '', 0, ''),
(62, 7, '2020-08-28', 30010000, 'pasar minggu 200', 'Sudah Kirim Pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(63, 7, '2020-08-28', 7510000, 'pasar minggu 200', 'Belum Dibayar', '', 0, '', '', '', '', '', '', 0, ''),
(64, 7, '2020-08-29', 10510000, 'pasar minggu 200', 'Belum Dibayar', '', 0, '', '', '', '', '', '', 0, ''),
(65, 7, '2020-08-29', 2500000, 'pasar minggu 200', 'Belum Dibayar', '', 0, '', '', '', '', '', '', 0, ''),
(66, 8, '2020-08-30', 26510000, 'cawang', 'Barang Dikirim', '900', 0, '', '', '', '', '', '', 0, ''),
(67, 6, '2020-09-20', 24010000, 'Cawang', 'Sudah Kirim Pembayaran', '', 0, '', '', '', '', '', '', 0, ''),
(68, 7, '2020-09-21', 2910000, 'asa', 'Belum Dibayar', '', 0, '', '', '', '', '', '', 0, ''),
(69, 1, '2020-10-14', 2515000, 'pasar minggu 200', 'Belum Dibayar', '', 0, '', '', '', '', '', '', 0, ''),
(70, 1, '2020-10-14', 8000000, 'pasar minggu 200', 'Belum Dibayar', '', 0, '', '', '', '', '', '', 0, ''),
(71, 1, '2020-10-16', 2510000, 'pasar minggu 200', 'Batal', '', 0, '', '', '', '', '', '', 0, ''),
(72, 1, '2020-10-16', 2510000, 'pasar minggu 200', 'Belum Dibayar', '', 0, '', '', '', '', '', '', 0, ''),
(73, 1, '2020-10-16', 2900000, '', 'Batal', '', 0, '', '', '', '', '', '', 0, ''),
(74, 1, '2020-10-16', 2517000, 'cawang', 'Belum Dibayar', '', 0, 'DKI Jakarta', 'Jakarta Timur', 'Kota', '13330', 'pos', 'Q9 Barang', 17000, ''),
(75, 6, '2020-10-16', 5007000, 'cawang', 'Belum Dibayar', '', 0, 'DKI Jakarta', 'Jakarta Timur', 'Kota', '13330', 'pos', 'Paket Kilat Khusus', 7000, '1-2 HARI'),
(76, 6, '2020-10-16', 12018000, 'sleman wetan no.68', 'Belum Dibayar', '', 0, 'DI Yogyakarta', 'Sleman', 'Kabupaten', '55513', 'jne', 'REG', 18000, '1-2'),
(77, 6, '2020-10-17', 5010000, 'ir. soekarno no.200', 'Belum Dibayar', '', 0, 'Jawa Barat', 'Bandung', 'Kota', '40111', 'jne', 'OKE', 10000, '2-3'),
(78, 6, '2020-10-17', 15036000, 'bung tomo', 'Belum Dibayar', '', 0, 'Jawa Timur', 'Surabaya', 'Kota', '60119', 'tiki', 'ONS', 36000, '1'),
(79, 6, '2020-10-17', 39420000, '', 'Belum Dibayar', '', 0, 'DI Yogyakarta', 'Kulon Progo', 'Kabupaten', '55611', 'tiki', 'ECO', 420000, '4'),
(80, 6, '2020-10-17', 30007000, 'pasar minggu', 'Barang Dikirim', '', 0, 'DKI Jakarta', 'Jakarta Selatan', 'Kota', '12230', 'pos', 'Paket Kilat Khusus', 7000, '1-2 HARI'),
(81, 1, '2020-10-17', 2507000, 'otista', 'Belum Dibayar', '', 0, 'DKI Jakarta', 'Jakarta Timur', 'Kota', '13330', 'pos', 'Paket Kilat Khusus', 7000, '1-2 HARI'),
(82, 1, '2020-10-17', 5017000, 'gatot subroto', 'Belum Dibayar', '', 0, 'DKI Jakarta', 'Jakarta Timur', 'Kota', '13330', 'pos', 'Q9 Barang', 17000, '9 JAM'),
(83, 1, '2020-10-17', 5000000, 'Ini', 'Belum Dibayar', '', 0, '', '', '', '', '', '', 0, ''),
(84, 1, '2020-10-17', 15040000, 'ok', 'Belum Dibayar', '', 0, 'Kepulauan Riau', 'Tanjung Pinang', 'Kota', '29111', 'tiki', 'ECO', 40000, '4'),
(85, 1, '2020-10-17', 509000, 'kalibata', 'Lunas', 'ok', 0, 'DKI Jakarta', 'Jakarta Selatan', 'Kota', '12230', 'jne', 'CTC', 9000, '1-2'),
(86, 7, '2021-01-16', 27533000, 'cawang', 'sudah kirim pembayaran', '', 0, 'Jawa Barat', 'Cirebon', 'Kota', '45116', 'pos', 'Paket Kilat Khusus', 33000, '1-2 HARI'),
(87, 9, '2021-01-20', 17077000, 'Cawang', 'Barang Dikirim', 'coon22234', 0, 'DKI Jakarta', 'Jakarta Timur', 'Kota', '13330', 'pos', 'Paket Kilat Khusus', 77000, '1-2 HARI'),
(88, 7, '2021-02-03', 5059500, 'cawang', 'Belum Dibayar', '', 0, 'Kalimantan Tengah', 'Murung Raya', 'Kabupaten', '73911', 'pos', 'Paket Kilat Khusus', 59500, '5 HARI'),
(89, 10, '2021-02-03', 2508000, 'cawang', 'Belum Dibayar', '', 0, 'DKI Jakarta', 'Jakarta Timur', 'Kota', '13330', 'tiki', 'ECO', 8000, '4'),
(90, 10, '2021-02-03', 1409000, 'cawang', 'Barang Sudah Sampai', 'coonshop0087653', 0, 'DKI Jakarta', 'Jakarta Timur', 'Kota', '13330', 'jne', 'CTC', 9000, '1-2'),
(91, 5, '2021-02-04', 2508000, 'cilandak', 'Belum Dibayar', '', 0, 'DKI Jakarta', 'Jakarta Selatan', 'Kota', '12230', 'tiki', 'ECO', 8000, '4'),
(92, 11, '2021-02-04', 17088000, 'cawang', 'Belum Dibayar', '', 0, 'DKI Jakarta', 'Jakarta Timur', 'Kota', '13330', 'tiki', 'ECO', 88000, '4'),
(93, 12, '2021-02-04', 8008000, 'cawang', 'Barang Dikirim', 'coons008', 0, 'DKI Jakarta', 'Jakarta Timur', 'Kota', '13330', 'tiki', 'ECO', 8000, '4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian_produk`
--

CREATE TABLE `pembelian_produk` (
  `id_pembelian_produk` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `berat` int(11) NOT NULL,
  `subberat` int(11) NOT NULL,
  `subharga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembelian_produk`
--

INSERT INTO `pembelian_produk` (`id_pembelian_produk`, `id_pembelian`, `id_produk`, `jumlah`, `nama`, `harga`, `berat`, `subberat`, `subharga`) VALUES
(1, 1, 0, 0, '', 0, 0, 0, 0),
(2, 1, 3, 1, 'cpu', 15000000, 300, 300, 15000000),
(3, 2, 3, 1, 'cpu', 15000000, 300, 300, 15000000),
(4, 3, 0, 0, '', 0, 0, 0, 0),
(5, 3, 3, 1, 'cpu', 15000000, 300, 300, 15000000),
(6, 5, 4, 1, 'monitor', 5000000, 400, 400, 5000000),
(7, 6, 3, 1, 'cpu', 15000000, 300, 300, 15000000),
(8, 7, 0, 0, '', 0, 0, 0, 0),
(9, 7, 4, 1, 'monitor', 5000000, 400, 400, 5000000),
(10, 8, 4, 1, 'monitor', 5000000, 400, 400, 5000000),
(11, 9, 3, 1, 'cpu', 15000000, 300, 300, 15000000),
(12, 10, 3, 1, 'cpu', 15000000, 300, 300, 15000000),
(13, 12, 4, 1, 'monitor', 5000000, 400, 400, 5000000),
(14, 13, 3, 1, 'cpu', 15000000, 300, 300, 15000000),
(15, 14, 4, 1, 'monitor', 5000000, 400, 400, 5000000),
(16, 15, 4, 2, 'monitor', 5000000, 400, 800, 10000000),
(17, 15, 2, 1, 'laptop', 12000000, 10000, 10000, 12000000),
(18, 15, 1, 1, 'harddisk', 2500000, 500, 500, 2500000),
(19, 16, 3, 1, 'cpu', 15000000, 300, 300, 15000000),
(20, 17, 4, 1, 'monitor', 5000000, 400, 400, 5000000),
(21, 18, 4, 1, 'monitor', 5000000, 400, 400, 5000000),
(22, 19, 3, 1, 'cpu', 15000000, 300, 300, 15000000),
(23, 20, 2, 1, 'laptop', 12000000, 10000, 10000, 12000000),
(24, 21, 3, 1, 'cpu', 15000000, 300, 300, 15000000),
(25, 22, 4, 1, 'monitor', 5000000, 400, 400, 5000000),
(26, 22, 2, 1, 'laptop', 12000000, 10000, 10000, 12000000),
(27, 23, 2, 1, 'laptop', 12000000, 10000, 10000, 12000000),
(28, 24, 2, 1, 'laptop', 12000000, 10000, 10000, 12000000),
(29, 24, 4, 1, 'monitor', 5000000, 400, 400, 5000000),
(30, 25, 3, 1, 'cpu', 15000000, 300, 300, 15000000),
(31, 26, 2, 1, 'laptop', 12000000, 10000, 10000, 12000000),
(32, 27, 1, 1, 'harddisk', 2500000, 500, 500, 2500000),
(33, 28, 3, 2, 'cpu', 15000000, 300, 600, 30000000),
(34, 29, 4, 1, 'monitor', 5000000, 400, 400, 5000000),
(35, 30, 8, 1, 'speaker jbl', 500000, 100, 100, 500000),
(36, 31, 4, 1, 'monitor', 5000000, 400, 400, 5000000),
(37, 32, 1, 1, 'harddisk', 2500000, 500, 500, 2500000),
(38, 33, 2, 1, 'laptop', 12000000, 10000, 10000, 12000000),
(39, 34, 5, 1, 'ram vgen', 400000, 100, 100, 400000),
(40, 35, 1, 1, 'harddisk', 2500000, 500, 500, 2500000),
(41, 36, 4, 1, 'monitor', 5000000, 400, 400, 5000000),
(42, 36, 3, 1, 'cpu', 15000000, 300, 300, 15000000),
(43, 37, 8, 1, 'speaker jbl', 500000, 100, 100, 500000),
(44, 38, 6, 1, 'hp samsung', 8000000, 200, 200, 8000000),
(45, 0, 2, 3, 'laptop', 12000000, 10000, 30000, 36000000),
(46, 39, 2, 1, 'laptop', 12000000, 10000, 10000, 12000000),
(47, 40, 2, 2, 'laptop', 12000000, 10000, 20000, 24000000),
(48, 41, 2, 1, 'laptop', 12000000, 10000, 10000, 12000000),
(49, 42, 1, 2, 'harddisk', 2500000, 500, 1000, 5000000),
(50, 43, 3, 1, 'cpu', 15000000, 300, 300, 15000000),
(51, 43, 4, 1, 'monitor', 5000000, 400, 400, 5000000),
(52, 44, 8, 1, 'speaker jbl', 500000, 100, 100, 500000),
(53, 45, 1, 1, 'harddisk', 2500000, 500, 500, 2500000),
(54, 45, 8, 1, 'speaker jbl', 500000, 100, 100, 500000),
(55, 46, 1, 1, 'harddisk', 2500000, 500, 500, 2500000),
(56, 47, 7, 1, 'intel core i9', 12000000, 50, 50, 12000000),
(57, 47, 8, 1, 'speaker jbl', 500000, 100, 100, 500000),
(58, 47, 2, 1, 'laptop', 12000000, 10000, 10000, 12000000),
(59, 47, 6, 2, 'hp samsung', 8000000, 200, 400, 16000000),
(60, 48, 4, 2, 'monitor', 5000000, 400, 800, 10000000),
(61, 49, 2, 2, 'laptop', 12000000, 10000, 20000, 24000000),
(62, 50, 4, 2, 'monitor', 5000000, 400, 800, 10000000),
(63, 51, 2, 1, 'laptop', 12000000, 10000, 10000, 12000000),
(64, 52, 1, 5, 'harddisk', 2500000, 500, 2500, 12500000),
(65, 53, 2, 2, 'laptop', 12000000, 10000, 20000, 24000000),
(66, 54, 2, 1, 'laptop', 12000000, 10000, 10000, 12000000),
(67, 55, 7, 1, 'intel core i9', 12000000, 50, 50, 12000000),
(68, 56, 2, 2, 'laptop', 12000000, 10000, 20000, 24000000),
(69, 57, 6, 2, 'hp samsung', 8000000, 200, 400, 16000000),
(70, 58, 1, 2, 'harddisk', 2500000, 500, 1000, 5000000),
(71, 59, 6, 2, 'hp samsung', 8000000, 200, 400, 16000000),
(72, 60, 8, 1, 'speaker jbl', 500000, 100, 100, 500000),
(73, 60, 7, 1, 'intel core i9', 12000000, 50, 50, 12000000),
(74, 61, 2, 2, 'laptop', 12000000, 10000, 20000, 24000000),
(75, 62, 3, 2, 'cpu', 15000000, 300, 600, 30000000),
(76, 63, 1, 3, 'harddisk', 2500000, 500, 1500, 7500000),
(77, 64, 1, 1, 'harddisk', 2500000, 500, 500, 2500000),
(78, 64, 6, 1, 'hp samsung', 8000000, 200, 200, 8000000),
(79, 65, 1, 1, 'harddisk', 2500000, 500, 500, 2500000),
(80, 66, 1, 1, 'harddisk', 2500000, 500, 500, 2500000),
(81, 66, 2, 2, 'laptop', 12000000, 10000, 20000, 24000000),
(82, 67, 2, 2, 'laptop', 12000000, 10000, 20000, 24000000),
(83, 68, 1, 1, 'harddisk', 2500000, 500, 500, 2500000),
(84, 68, 5, 1, 'ram vgen', 400000, 100, 100, 400000),
(85, 69, 0, 1, 'harddisk', 2500000, 500, 500, 2500000),
(86, 70, 6, 1, 'hp samsung', 8000000, 200, 200, 8000000),
(87, 71, 0, 1, 'harddisk', 2500000, 500, 500, 2500000),
(88, 72, 0, 1, 'harddisk', 2500000, 500, 500, 2500000),
(89, 73, 5, 1, 'ram vgen', 400000, 100, 100, 400000),
(90, 73, 0, 1, 'harddisk', 2500000, 500, 500, 2500000),
(91, 0, 0, 1, 'harddisk', 2500000, 500, 500, 2500000),
(92, 0, 0, 1, 'harddisk', 2500000, 500, 500, 2500000),
(93, 0, 2, 1, 'laptop', 12000000, 10000, 10000, 12000000),
(94, 0, 0, 1, 'harddisk', 2500000, 500, 500, 2500000),
(95, 0, 4, 1, 'monitor', 5000000, 400, 400, 5000000),
(96, 0, 4, 2, 'monitor', 5000000, 400, 800, 10000000),
(97, 0, 0, 1, 'harddisk', 2500000, 500, 500, 2500000),
(98, 0, 2, 1, 'laptop', 12000000, 10000, 10000, 12000000),
(99, 0, 8, 1, 'speaker jbl', 500000, 100, 100, 500000),
(100, 0, 2, 1, 'laptop', 12000000, 10000, 10000, 12000000),
(101, 0, 0, 1, 'harddisk', 2500000, 500, 500, 2500000),
(102, 74, 0, 1, 'harddisk', 2500000, 500, 500, 2500000),
(103, 75, 4, 1, 'monitor', 5000000, 400, 400, 5000000),
(104, 76, 7, 1, 'intel core i9', 12000000, 50, 50, 12000000),
(105, 77, 4, 1, 'monitor', 5000000, 400, 400, 5000000),
(106, 78, 3, 1, 'cpu', 15000000, 300, 300, 15000000),
(107, 79, 2, 2, 'laptop', 12000000, 10000, 20000, 24000000),
(108, 79, 3, 1, 'cpu', 15000000, 300, 300, 15000000),
(109, 80, 3, 2, 'cpu', 15000000, 300, 600, 30000000),
(110, 81, 0, 1, 'harddisk', 2500000, 500, 500, 2500000),
(111, 82, 4, 1, 'monitor', 5000000, 400, 400, 5000000),
(112, 83, 4, 1, 'monitor', 5000000, 400, 400, 5000000),
(113, 84, 3, 1, 'cpu', 15000000, 300, 300, 15000000),
(114, 85, 8, 1, 'speaker jbl', 500000, 100, 100, 500000),
(115, 86, 0, 5, 'harddisk', 2500000, 500, 2500, 12500000),
(116, 86, 3, 1, 'cpu', 15000000, 300, 300, 15000000),
(117, 87, 2, 1, 'laptop', 12000000, 10000, 10000, 12000000),
(118, 87, 4, 1, 'monitor', 5000000, 400, 400, 5000000),
(119, 88, 0, 2, 'harddisk', 2500000, 500, 1000, 5000000),
(120, 89, 0, 1, 'harddisk', 2500000, 500, 500, 2500000),
(121, 90, 8, 2, 'speaker jbl', 500000, 100, 200, 1000000),
(122, 90, 5, 1, 'ram vgen', 400000, 100, 100, 400000),
(123, 91, 0, 1, 'harddisk', 2500000, 500, 500, 2500000),
(124, 92, 2, 1, 'laptop', 12000000, 10000, 10000, 12000000),
(125, 92, 0, 2, 'harddisk', 2500000, 500, 1000, 5000000),
(126, 93, 6, 1, 'hp samsung', 8000000, 200, 200, 8000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `id_kategori` int(5) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `harga_produk` int(11) NOT NULL,
  `berat_produk` int(11) NOT NULL,
  `foto_produk` varchar(100) NOT NULL,
  `deskripsi_produk` text NOT NULL,
  `stok_produk` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `id_kategori`, `nama_produk`, `harga_produk`, `berat_produk`, `foto_produk`, `deskripsi_produk`, `stok_produk`) VALUES
(0, 1, 'harddisk', 2500000, 500, '24.jpg', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Placeat et ipsam esse blanditiis laboriosam fugit minus distinctio animi, totam beatae mollitia magnam ea sapiente nesciunt nobis facilis nihil aliquam sed.', 19),
(2, 1, 'laptop', 12000000, 10000, '16.jpg', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Placeat et ipsam esse blanditiis laboriosam fugit minus distinctio animi, totam beatae mollitia magnam ea sapiente nesciunt nobis facilis nihil aliquam sed.', 32),
(3, 1, 'cpu', 15000000, 300, '6.png', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Placeat et ipsam esse blanditiis laboriosam fugit minus distinctio animi, totam beatae mollitia magnam ea sapiente nesciunt nobis facilis nihil aliquam sed.', 42),
(4, 1, 'monitor', 5000000, 400, '8.png', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Placeat et ipsam esse blanditiis laboriosam fugit minus distinctio animi, totam beatae mollitia magnam ea sapiente nesciunt nobis facilis nihil aliquam sed.', 42),
(5, 1, 'ram vgen', 400000, 100, '7.png', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Placeat et ipsam esse blanditiis laboriosam fugit minus distinctio animi, totam beatae mollitia magnam ea sapiente nesciunt nobis facilis nihil aliquam sed.', 47),
(6, 2, 'hp samsung', 8000000, 200, '17.jpg', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Placeat et ipsam esse blanditiis laboriosam fugit minus distinctio animi, totam beatae mollitia magnam ea sapiente nesciunt nobis facilis nihil aliquam sed.', 43),
(7, 1, 'intel core i9', 12000000, 50, '15.jpg', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Placeat et ipsam esse blanditiis laboriosam fugit minus distinctio animi, totam beatae mollitia magnam ea sapiente nesciunt nobis facilis nihil aliquam sed.', 47),
(8, 1, 'speaker jbl', 500000, 100, '21.jpg', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Placeat et ipsam esse blanditiis laboriosam fugit minus distinctio animi, totam beatae mollitia magnam ea sapiente nesciunt nobis facilis nihil aliquam sed.', 45);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `ongkir`
--
ALTER TABLE `ongkir`
  ADD PRIMARY KEY (`id_ongkir`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pemabayaran`);

--
-- Indeks untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indeks untuk tabel `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  ADD PRIMARY KEY (`id_pembelian_produk`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `ongkir`
--
ALTER TABLE `ongkir`
  MODIFY `id_ongkir` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pemabayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT untuk tabel `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  MODIFY `id_pembelian_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
