-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 29 Apr 2019 pada 11.54
-- Versi Server: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `ISBN` char(20) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `IDPenerbit` int(11) NOT NULL,
  `IDKategori` int(11) NOT NULL,
  `poin` int(11) NOT NULL,
  `fileGambar` varchar(50) NOT NULL,
  `fileBuku` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`ISBN`, `judul`, `deskripsi`, `IDPenerbit`, `IDKategori`, `poin`, `fileGambar`, `fileBuku`) VALUES
('12123-21321-123-001', 'First Order Logic', 'Kecerdasan Buatan', 123459, 2, 400, 'FOL.jpg', 'download/First Order Logic.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_buku`
--

CREATE TABLE `kategori_buku` (
  `IDKategori` int(11) NOT NULL,
  `namaKategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori_buku`
--

INSERT INTO `kategori_buku` (`IDKategori`, `namaKategori`) VALUES
(1, 'Agama'),
(2, 'Komputer'),
(3, 'Novel'),
(4, 'Komik'),
(5, 'Motivasi'),
(6, 'Anak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penerbit`
--

CREATE TABLE `penerbit` (
  `IDPenerbit` int(11) NOT NULL,
  `namaPenerbit` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penerbit`
--

INSERT INTO `penerbit` (`IDPenerbit`, `namaPenerbit`) VALUES
(123459, 'Andi Publisher'),
(123460, 'irfan'),
(123461, 'Elex Media'),
(123462, 'Ippho Santosa'),
(123463, 'Gramedia'),
(123464, 'Lokomedia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tukar`
--

CREATE TABLE `tukar` (
  `IDTukar` int(11) NOT NULL,
  `ISBN` char(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `point_use` int(11) NOT NULL,
  `tanggal_tukar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tukar`
--

INSERT INTO `tukar` (`IDTukar`, `ISBN`, `username`, `point_use`, `tanggal_tukar`) VALUES
(0, '12123-21321-123-001', 'siti', 400, '2019-04-29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `hak_akses` varchar(50) NOT NULL,
  `point` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`username`, `password`, `hak_akses`, `point`) VALUES
('admin', 'e10adc3949ba59abbe56e057f20f883e', 'admin', 0),
('siti', 'e10adc3949ba59abbe56e057f20f883e', 'siswa', 4600);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`ISBN`);

--
-- Indexes for table `kategori_buku`
--
ALTER TABLE `kategori_buku`
  ADD PRIMARY KEY (`IDKategori`);

--
-- Indexes for table `penerbit`
--
ALTER TABLE `penerbit`
  ADD PRIMARY KEY (`IDPenerbit`);

--
-- Indexes for table `tukar`
--
ALTER TABLE `tukar`
  ADD PRIMARY KEY (`IDTukar`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
