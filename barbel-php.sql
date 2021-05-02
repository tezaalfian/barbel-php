-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Bulan Mei 2021 pada 13.14
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app_spu`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `biaya_admin`
--

CREATE TABLE `biaya_admin` (
  `id` int(11) NOT NULL,
  `payment` varchar(128) NOT NULL,
  `nominal` int(11) DEFAULT NULL,
  `persen` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `biaya_admin`
--

INSERT INTO `biaya_admin` (`id`, `payment`, `nominal`, `persen`) VALUES
(1, 'bank_transfer', 6500, NULL),
(2, 'gopay', NULL, 2),
(3, 'echannel', 6500, NULL),
(4, 'cstore', 5000, NULL),
(5, 'shopeepay', NULL, 1.5),
(6, 'qris', NULL, 0.7),
(7, 'dpd', NULL, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `donasi`
--

CREATE TABLE `donasi` (
  `id` varchar(255) NOT NULL,
  `program_id` varchar(128) DEFAULT NULL,
  `nominal` bigint(20) DEFAULT NULL,
  `biaya_admin` int(11) NOT NULL,
  `biaya_dpd` int(11) NOT NULL,
  `donatur` varchar(255) DEFAULT NULL,
  `alias` tinyint(1) NOT NULL,
  `email` varchar(128) DEFAULT NULL,
  `no_hp` char(15) DEFAULT NULL,
  `ket` text DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `payment_type` varchar(50) DEFAULT NULL,
  `timestamp` datetime NOT NULL,
  `expired_time` datetime DEFAULT NULL,
  `panduan` varchar(255) DEFAULT NULL,
  `ref_id` varchar(128) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `donasi`
--

INSERT INTO `donasi` (`id`, `program_id`, `nominal`, `biaya_admin`, `biaya_dpd`, `donatur`, `alias`, `email`, `no_hp`, `ket`, `status`, `payment_type`, `timestamp`, `expired_time`, `panduan`, `ref_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
('1522003892D1', '1605968005', 10000, 0, 0, 'AHMAD MAHMUD', 0, 'teza@email.com', '', NULL, 'settlement', 'offline', '2020-01-28 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('152FC03892D1', '1605968005', 100000, 0, 0, 'RAHMAT', 0, '', '089202909390', NULL, 'settlement', 'offline', '2020-01-29 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('153B803892D1', '1605968005', 200000, 0, 0, 'AZIS', 0, '', '089202909390', NULL, 'settlement', 'offline', '2020-01-31 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('1546803892D1', '1605968005', 200000, 0, 0, 'RIZKA', 0, '', '089202909390', NULL, 'settlement', 'offline', '2020-02-02 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('154E003892D1', '1605968005', 300000, 0, 0, 'IBAD', 0, 'teza@email.com', '', NULL, 'settlement', 'offline', '2020-02-03 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('1551C03892D1', '1605968005', 400000, 0, 0, 'MIFTAH', 0, '', '089202909390', NULL, 'settlement', 'offline', '2020-02-04 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('155A403892D1', '1605968005', 50000, 0, 0, 'UMAR', 0, 'teza@email.com', '089627190210', NULL, 'settlement', 'offline', '2020-02-05 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('1E4801C355DF', '1605967474', 100000, 700, 5000, 'Teza Alfian', 0, 'teza@tahfizhdulido.com', '085719994048', '', 'settlement', 'qris', '2020-11-29 02:50:36', '2020-11-29 03:05:36', '', '16BF40386C9D', '2020-11-28 13:45:51', '2020-11-28 13:45:51', NULL),
('2A6403892D1', '1605968005', 300000, 0, 0, 'ANGGA', 0, 'teza@email.com', '', NULL, 'settlement', 'offline', '2020-01-30 00:00:00', NULL, NULL, '16BF40386C9D', NULL, NULL, NULL),
('2A7003892D1', '1605968005', 400000, 0, 0, 'ZAHRA', 0, 'teza@email.com', '', NULL, 'settlement', 'offline', '2020-02-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E1', '1605968005', 1000000, 0, 0, 'Hana Maulida R', 0, '', '', NULL, 'settlement', 'offline', '2019-11-10 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E10', '1605968005', 500000, 0, 0, 'Elia', 0, '', '', NULL, 'settlement', 'offline', '2019-12-08 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E100', '1605968005', 100000, 0, 0, 'Azka', 0, '', '', NULL, 'settlement', 'offline', '2020-09-24 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E101', '1605968005', 1000000, 0, 0, 'Ziyad hamad', 0, '', '', NULL, 'settlement', 'offline', '2020-09-26 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E102', '1605968005', 1000000, 0, 0, 'Alm. H. Abas bin Muhtar', 0, '', '', NULL, 'settlement', 'offline', '2020-09-27 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E103', '1605968005', 100000, 0, 0, 'M. Bpk. Nasution & Ibu St. Mardiah', 0, '', '', NULL, 'settlement', 'offline', '2020-09-27 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E104', '1605968005', 50000, 0, 0, 'Syarifah', 0, '', '', NULL, 'settlement', 'offline', '2020-09-27 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E105', '1605968005', 100000, 0, 0, 'Bk. Akrom Suswanto & Ibu Harnanik', 0, '', '', NULL, 'settlement', 'offline', '2020-09-27 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E106', '1605968005', 300000, 0, 0, 'Ibu Hj. Aang', 0, '', '', NULL, 'settlement', 'offline', '2020-09-28 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E107', '1605968005', 1000000, 0, 0, 'alm. Ananda M. Ibrohim Wafiq', 0, '', '', NULL, 'settlement', 'offline', '2020-09-30 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E108', '1605968005', 200000, 0, 0, 'Bpk. Ano Supriatno & Ibu Ati Suryati', 0, '', '', NULL, 'settlement', 'offline', '2020-09-30 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E109', '1605968005', 1000000, 0, 0, 'Sarah dan Salwa', 0, '', '', NULL, 'settlement', 'offline', '2020-09-30 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E11', '1605968005', 500000, 0, 0, 'Elia', 0, '', '', NULL, 'settlement', 'offline', '2019-12-08 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E110', '1605968005', 500000, 0, 0, 'Bpk. Saipul Munir & Ibu masripah Binti Sulusi', 0, '', '', NULL, 'settlement', 'offline', '2020-10-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E111', '1605968005', 30000, 0, 0, 'Bpk. Abd. Rahman & Ibu Khodijah Asshuhada', 0, '', '', NULL, 'settlement', 'offline', '2020-10-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E112', '1605968005', 50000, 0, 0, 'Bpk. Dedi Sumardi & Ibu Erni Sumarni', 0, '', '', NULL, 'settlement', 'offline', '2020-10-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E113', '1605968005', 30000, 0, 0, 'Bpk. H Rojali & Ibu Hj Tuti', 0, '', '', NULL, 'settlement', 'offline', '2020-10-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E114', '1605968005', 10000, 0, 0, 'Bpk. Endang & Ibu Haryati', 0, '', '', NULL, 'settlement', 'offline', '2020-10-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E115', '1605968005', 30000, 0, 0, 'Bpk. M Hasanudin & Ibu Lilis Nur Hayati', 0, '', '', NULL, 'settlement', 'offline', '2020-10-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E116', '1605968005', 30000, 0, 0, 'Bpk. Kusnadi & Ibu Siti Masliah', 0, '', '', NULL, 'settlement', 'offline', '2020-10-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E117', '1605968005', 100000, 0, 0, 'Bpk. Agus Buhori & Ibu Hj Nengsih', 0, '', '', NULL, 'settlement', 'offline', '2020-10-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E118', '1605968005', 30000, 0, 0, 'Bpk. Irvan Pianto & Ibu Sunarsih ', 0, '', '', NULL, 'settlement', 'offline', '2020-10-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E119', '1605968005', 50000, 0, 0, 'Bpk. Rahayu Efendi & Ibu Irmasari', 0, '', '', NULL, 'settlement', 'offline', '2020-10-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E12', '1605968005', 500000, 0, 0, 'Elia', 0, '', '', NULL, 'settlement', 'offline', '2019-12-08 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E120', '1605968005', 500000, 0, 0, 'Elia Nurfadila', 0, '', '', NULL, 'settlement', 'offline', '2020-10-02 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E121', '1605968005', 50000, 0, 0, 'Bpk. Mastus & Ibu Misraini', 0, '', '', NULL, 'settlement', 'offline', '2020-10-02 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E122', '1605968005', 40000, 0, 0, 'Bpk. Bpk. Maraludin', 0, '', '', NULL, 'settlement', 'offline', '2020-10-02 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E123', '1605968005', 50000, 0, 0, 'Bpk. Jawawi', 0, '', '', NULL, 'settlement', 'offline', '2020-10-02 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E124', '1605968005', 250000, 0, 0, 'Nuning', 0, '', '', NULL, 'settlement', 'offline', '2020-10-02 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E126', '1605968005', 100000, 0, 0, 'Ibu Susyanti', 0, '', '', NULL, 'settlement', 'offline', '2020-10-02 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E127', '1605968005', 30000, 0, 0, 'Bp. Ade Rahmat & ibu Sariningsih', 0, '', '', NULL, 'settlement', 'offline', '2020-10-02 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E128', '1605968005', 30000, 0, 0, 'Bp. Oong Aminurdin & Ibu Dewi S', 0, '', '', NULL, 'settlement', 'offline', '2020-10-02 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E129', '1605968005', 50000, 0, 0, 'Bp. Poniman & Ibu Nurmawati ', 0, '', '', NULL, 'settlement', 'offline', '2020-10-02 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E13', '1605968005', 1000000, 0, 0, 'Aca', 0, '', '', NULL, 'settlement', 'offline', '2019-12-11 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E130', '1605968005', 30000, 0, 0, 'Bp. M. Syafei & Ibu St. Kholipah', 0, '', '', NULL, 'settlement', 'offline', '2020-10-02 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E131', '1605968005', 30000, 0, 0, 'Bp. Ade Supratomo & Ibu Budi Lestari', 0, '', '', NULL, 'settlement', 'offline', '2020-10-02 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E132', '1605968005', 200000, 0, 0, 'Ghaza Asy\'ari G', 0, '', '', NULL, 'settlement', 'offline', '2020-10-03 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E133', '1605968005', 30000, 0, 0, 'Bp. Sopian & ibu Nunung Badriah', 0, '', '', NULL, 'settlement', 'offline', '2020-10-03 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E134', '1605968005', 150000, 0, 0, 'Bp. Faisal & Ibu Yunita', 0, '', '', NULL, 'settlement', 'offline', '2020-10-03 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E135', '1605968005', 50000, 0, 0, 'Bp. Agus Mulyadi & Ibu Imas Herawati', 0, '', '', NULL, 'settlement', 'offline', '2020-10-03 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E136', '1605968005', 50000, 0, 0, 'Bp. Roni hermansyah & Ibu Milagh Handayani', 0, '', '', NULL, 'settlement', 'offline', '2020-10-03 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E137', '1605968005', 30000, 0, 0, 'Bp. Heryanto & Ibu Ida Sofiyanti', 0, '', '', NULL, 'settlement', 'offline', '2020-10-03 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E138', '1605968005', 30000, 0, 0, 'Bp. Anipmiftahuddin & Ibu Mimi Suhaemi', 0, '', '', NULL, 'settlement', 'offline', '2020-10-03 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E139', '1605968005', 50000, 0, 0, 'Bp. H. Ujang Misbah & Hj. Eli Sulastri', 0, '', '', NULL, 'settlement', 'offline', '2020-10-03 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E14', '1605968005', 500000, 0, 0, 'Syifa', 0, '', '', NULL, 'settlement', 'offline', '2020-01-03 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E140', '1605968005', 50000, 0, 0, 'Bp. Ruslan Abdul & Rida Sri M', 0, '', '', NULL, 'settlement', 'offline', '2020-10-03 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E141', '1605968005', 100000, 0, 0, 'Bp. Arahman Z & Ibu St Suryati', 0, '', '', NULL, 'settlement', 'offline', '2020-10-03 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E142', '1605968005', 500000, 0, 0, 'Bp. Alm. Wagimin & Almh. Sinem', 0, '', '', NULL, 'settlement', 'offline', '2020-10-03 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E143', '1605968005', 30000, 0, 0, 'Bp. Ramly Hendrayanto & Ibu Herawati', 0, '', '', NULL, 'settlement', 'offline', '2020-10-04 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E144', '1605968005', 30000, 0, 0, 'Bp. Djaji & Ibu Nunung', 0, '', '', NULL, 'settlement', 'offline', '2020-10-04 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E145', '1605968005', 30000, 0, 0, 'Bp. Andi Ariyanto & Ibu Ayuketut Idarirti', 0, '', '', NULL, 'settlement', 'offline', '2020-10-04 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E146', '1605968005', 50000, 0, 0, 'Bp. H. Jajang & ibu Hj. Yuyum', 0, '', '', NULL, 'settlement', 'offline', '2020-10-04 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E147', '1605968005', 50000, 0, 0, 'Bp. Alm. Nurhadi & Ibu Windriati', 0, '', '', NULL, 'settlement', 'offline', '2020-10-04 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E148', '1605968005', 100000, 0, 0, 'Bp. H. Tukiman & Hj. Dida', 0, '', '', NULL, 'settlement', 'offline', '2020-10-04 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E149', '1605968005', 50000, 0, 0, 'Bp. Pardi & Ibu Jubaedah', 0, '', '', NULL, 'settlement', 'offline', '2020-10-04 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E15', '1605968005', 500000, 0, 0, 'Refa ', 0, '', '', NULL, 'settlement', 'offline', '2020-01-04 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E150', '1605968005', 50000, 0, 0, 'Bp. Misan Dego & Ibu Santi', 0, '', '', NULL, 'settlement', 'offline', '2020-10-04 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E151', '1605968005', 1000000, 0, 0, 'Bp. Saripudin ', 0, '', '', NULL, 'settlement', 'offline', '2020-10-04 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E152', '1605968005', 200000, 0, 0, 'Bp. Alm Arsyad Bin Pettegesssa', 0, '', '', NULL, 'settlement', 'offline', '2020-10-04 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E153', '1605968005', 200000, 0, 0, 'Bp. Sodikin & Ibu Zaina', 0, '', '', NULL, 'settlement', 'offline', '2020-10-04 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E154', '1605968005', 500000, 0, 0, 'Bp. Dedi Sumardi ', 0, '', '', NULL, 'settlement', 'offline', '2020-10-04 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E155', '1605968005', 30000, 0, 0, 'Bp. Saipul Bahri & ibu Minda F', 0, '', '', NULL, 'settlement', 'offline', '2020-10-04 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E156', '1605968005', 70000, 0, 0, 'Bp. Darus B. & Evie Tafta', 0, '', '', NULL, 'settlement', 'offline', '2020-10-04 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E157', '1605968005', 30000, 0, 0, 'Bp. Ridwan Hamidy & Ibu Maysaroh', 0, '', '', NULL, 'settlement', 'offline', '2020-10-04 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E158', '1605968005', 30000, 0, 0, 'Bp. Saepullah & Ibu St. Ipah Latipah', 0, '', '', NULL, 'settlement', 'offline', '2020-10-04 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E159', '1605968005', 100000, 0, 0, 'Bp. H. Jakaria & Ibu Neneng R', 0, '', '', NULL, 'settlement', 'offline', '2020-10-04 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E16', '1605968005', 300000, 0, 0, 'Luar', 0, '', '', NULL, 'settlement', 'offline', '2020-01-12 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E160', '1605968005', 60000, 0, 0, 'Ibu Sumiati', 0, '', '', NULL, 'settlement', 'offline', '2020-10-04 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E161', '1605968005', 50000, 0, 0, 'Bpk. Rojali & Ibu Uum Rohimah', 0, '', '', NULL, 'settlement', 'offline', '2020-10-04 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E162', '1605968005', 5000000, 0, 0, 'Laz Mandiri', 0, '', '', NULL, 'settlement', 'offline', '2020-10-06 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E163', '1605968005', 1200000, 0, 0, 'Bpk. Adih', 0, '', '', NULL, 'settlement', 'offline', '2020-10-06 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E164', '1605968005', 50000, 0, 0, 'Bpk. Yudi Irawan', 0, '', '', NULL, 'settlement', 'offline', '2020-10-06 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E165', '1605968005', 30000, 0, 0, 'Bpk. H. Bunyamin', 0, '', '', NULL, 'settlement', 'offline', '2020-10-06 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E166', '1605968005', 50000, 0, 0, 'Bpk. Jajang H', 0, '', '', NULL, 'settlement', 'offline', '2020-10-06 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E167', '1605968005', 50000, 0, 0, 'Bpk. Dadan ', 0, '', '', NULL, 'settlement', 'offline', '2020-10-06 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E168', '1605968005', 1000000, 0, 0, 'Ibu Hj. Rosyadah Binti H. M Ali', 0, '', '', NULL, 'settlement', 'offline', '2020-10-06 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E169', '1605968005', 500000, 0, 0, 'Rifqi Fadhila', 0, '', '', NULL, 'settlement', 'offline', '2020-10-07 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E17', '1605968005', 500000, 0, 0, 'Elia', 0, '', '', NULL, 'settlement', 'offline', '2020-01-12 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E171', '1605968005', 30000, 0, 0, 'Bpk. H. Dahlan & Ibu Adiyah', 0, '', '', NULL, 'settlement', 'offline', '2020-10-08 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E172', '1605968005', 50000, 0, 0, 'Bpk. Naman A. & Ibu Ninih I.', 0, '', '', NULL, 'settlement', 'offline', '2020-10-09 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E173', '1605968005', 100000, 0, 0, 'Bpk. Jakaria & Ibu Neneng R.', 0, '', '', NULL, 'settlement', 'offline', '2020-10-09 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E174', '1605968005', 1500000, 0, 0, 'Ibu Hermawati Binti Kibun', 0, '', '', NULL, 'settlement', 'offline', '2020-10-09 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E175', '1605968005', 500000, 0, 0, 'Kyai. Lobenyar', 0, '', '', NULL, 'settlement', 'offline', '2020-10-09 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E176', '1605968005', 500000, 0, 0, 'Abdul Aziz Syahroni', 0, '', '', NULL, 'settlement', 'offline', '2020-10-09 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E177', '1605968005', 200000, 0, 0, 'Najwa Zakiah', 0, '', '', NULL, 'settlement', 'offline', '2020-10-09 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E178', '1605968005', 50000, 0, 0, 'Bpk. Suhaidi', 0, '', '', NULL, 'settlement', 'offline', '2020-10-10 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E179', '1605968005', 50000, 0, 0, 'Bpk. Sabar Upoyo', 0, '', '', NULL, 'settlement', 'offline', '2020-10-10 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E18', '1605968005', 150000, 0, 0, 'syana Naila', 0, '', '', NULL, 'settlement', 'offline', '2020-01-12 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E180', '1605968005', 150000, 0, 0, 'Bpk. Nurjaeni & Ibu Rohanah', 0, '', '', NULL, 'settlement', 'offline', '2020-10-10 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E181', '1605968005', 50000, 0, 0, 'Bpk. Gunawan & Ibu Salbiah', 0, '', '', NULL, 'settlement', 'offline', '2020-10-10 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E182', '1605968005', 50000, 0, 0, 'Bpk. Iwan Ridwan & Ibu Emawati', 0, '', '', NULL, 'settlement', 'offline', '2020-10-10 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E183', '1605968005', 300000, 0, 0, 'Yasmi Siti Aulia', 0, '', '', NULL, 'settlement', 'offline', '2020-10-12 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E184', '1605968005', 50000, 0, 0, 'Alm. Ahyani', 0, '', '', NULL, 'settlement', 'offline', '2020-10-12 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E185', '1605968005', 500000, 0, 0, 'Ibu Titin Eko', 0, '', '', NULL, 'settlement', 'offline', '2020-10-12 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E186', '1605968005', 30000, 0, 0, 'Bpk. Agus & Ibu Yuni', 0, '', '', NULL, 'settlement', 'offline', '2020-10-13 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E187', '1605968005', 100000, 0, 0, 'Bpk. Hasyim & ibu St. Sopiah', 0, '', '', NULL, 'settlement', 'offline', '2020-10-13 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E188', '1605968005', 200000, 0, 0, 'Bpk. H. Jakaria', 0, '', '', NULL, 'settlement', 'offline', '2020-10-13 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E189', '1605968005', 300000, 0, 0, 'Haris bin Sadeli', 0, '', '', NULL, 'settlement', 'offline', '2020-10-13 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E19', '1605968005', 1000000, 0, 0, 'Naim', 0, '', '', NULL, 'settlement', 'offline', '2020-01-12 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E190', '1605968005', 100000, 0, 0, 'Bahra Ramdhani', 0, '', '', NULL, 'settlement', 'offline', '2020-10-13 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E192', '1605968005', 500000, 0, 0, 'Abu Fadhilah', 0, '', '', NULL, 'settlement', 'offline', '2020-10-13 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E193', '1605968005', 100000, 0, 0, 'Abdul Husna', 0, '', '', NULL, 'settlement', 'offline', '2020-10-13 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E194', '1605968005', 50000, 0, 0, 'Annisa Zahra', 0, '', '', NULL, 'settlement', 'offline', '2020-10-13 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E195', '1605968005', 100000, 0, 0, 'Hilwa Rania', 0, '', '', NULL, 'settlement', 'offline', '2020-10-13 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E196', '1605968005', 500000, 0, 0, 'Alm. Bpk. Saad Bin Rohi', 0, '', '', NULL, 'settlement', 'offline', '2020-10-13 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E197', '1605968005', 200000, 0, 0, 'Hamdan Maula Zakaria', 0, '', '', NULL, 'settlement', 'offline', '2020-10-13 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E198', '1605968005', 100000, 0, 0, 'Hafizh K.', 0, '', '', NULL, 'settlement', 'offline', '2020-10-13 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E199', '1605968005', 50000, 0, 0, 'Romadhon', 0, '', '', NULL, 'settlement', 'offline', '2020-10-13 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E2', '1605968005', 250000, 0, 0, 'Faiz A', 0, '', '', NULL, 'settlement', 'offline', '2019-11-15 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E20', '1605968005', 1000000, 0, 0, 'Nabil', 0, '', '', NULL, 'settlement', 'offline', '2020-01-12 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E200', '1605968005', 2000000, 0, 0, 'Adih', 0, '', '', NULL, 'settlement', 'offline', '2020-10-23 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E201', '1605968005', 200000, 0, 0, 'Alfina', 0, '', '', NULL, 'settlement', 'offline', '2020-10-23 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E202', '1605968005', 1000000, 0, 0, 'Nurhayati', 0, '', '', NULL, 'settlement', 'offline', '2020-10-23 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E203', '1605968005', 150000, 0, 0, 'Usth. Rizqo', 0, '', '', NULL, 'settlement', 'offline', '2020-10-23 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E204', '1605968005', 500000, 0, 0, 'Atia', 0, '', '', NULL, 'settlement', 'offline', '2020-10-23 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E205', '1605968005', 100000, 0, 0, 'HA', 0, '', '', NULL, 'settlement', 'offline', '2020-10-24 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E206', '1605968005', 30000, 0, 0, 'Bpk. Dadam Saepul', 0, '', '', NULL, 'settlement', 'offline', '2020-10-24 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E207', '1605968005', 100000, 0, 0, 'Yuli Sumiati', 0, '', '', NULL, 'settlement', 'offline', '2020-10-25 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E208', '1605968005', 250000, 0, 0, 'Bpk Nurhasan', 0, '', '', NULL, 'settlement', 'offline', '2020-10-25 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E209', '1605968005', 250000, 0, 0, 'Aqidatul Izzah Hasani', 0, '', '', NULL, 'settlement', 'offline', '2020-10-25 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E21', '1605968005', 500000, 0, 0, 'Diaz N', 0, '', '', NULL, 'settlement', 'offline', '2020-01-12 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E210', '1605968005', 2700000, 0, 0, 'Alm. H. Abas Basari dan Ibu Ratna Sukaesih', 0, '', '', NULL, 'settlement', 'offline', '2020-10-25 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E211', '1605968005', 50000, 0, 0, 'M. Fathurrohman', 0, '', '', NULL, 'settlement', 'offline', '2020-10-28 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E212', '1605968005', 100000, 0, 0, 'Bp. Hasyim Dan Ibu Sopiah', 0, '', '', NULL, 'settlement', 'offline', '2020-10-28 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E213', '1605968005', 500000, 0, 0, 'Putri Adzani', 0, '', '', NULL, 'settlement', 'offline', '2020-10-28 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E214', '1605968005', 200000, 0, 0, 'Nuning', 0, '', '', NULL, 'settlement', 'offline', '2020-10-28 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E215', '1605968005', 100000, 0, 0, 'Bpk. Rojali & Ibu Uum Rohimah', 0, '', '', NULL, 'settlement', 'offline', '2020-11-02 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E216', '1605968005', 300000, 0, 0, 'Bpk. M. Ar-Rohman & Ibu Siti Suryati', 0, '', '', NULL, 'settlement', 'offline', '2020-11-02 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E217', '1605968005', 100000, 0, 0, 'Ibu Solihat Bin Bpk. Ujang Katma', 0, '', '', NULL, 'settlement', 'offline', '2020-11-02 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E218', '1605968005', 500000, 0, 0, 'Hilma Annur', 0, '', '', NULL, 'settlement', 'offline', '2020-11-03 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E219', '1605968005', 200000, 0, 0, 'Alda Nur Alfi lail', 0, '', '', NULL, 'settlement', 'offline', '2020-11-03 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E22', '1605968005', 1000000, 0, 0, 'Elia', 0, '', '', NULL, 'settlement', 'offline', '2020-02-09 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E220', '1605968005', 1000000, 0, 0, 'Dadam Saeful bahri & Eneng Syamsiah', 0, '', '', NULL, 'settlement', 'offline', '2020-11-03 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E221', '1605968005', 50000, 0, 0, 'Kayla Dan Amzar', 0, '', '', NULL, 'settlement', 'offline', '2020-11-05 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E222', '1605968005', 1000000, 0, 0, 'Salwa Khoirunnisa', 0, '', '', NULL, 'settlement', 'offline', '2020-11-06 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E223', '1605968005', 50000, 0, 0, 'Fitria Nurbaiti', 0, '', '', NULL, 'settlement', 'offline', '2020-11-06 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E224', '1605968005', 100000, 0, 0, 'Bpk. Basri & Ibu Omas', 0, '', '', NULL, 'settlement', 'offline', '2020-11-06 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E225', '1605968005', 50000, 0, 0, 'Nisa Lailatul Qodriyah', 0, '', '', NULL, 'settlement', 'offline', '2020-11-06 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E226', '1605968005', 12600000, 0, 0, 'Serikat Bank BNI', 0, '', '', NULL, 'settlement', 'offline', '2020-11-07 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E227', '1605968005', 1125000, 0, 0, 'Millenium 18', 0, '', '', NULL, 'settlement', 'offline', '2020-11-07 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E228', '1605968005', 500000, 0, 0, 'Ibu Hj. Nengsih', 0, '', '', NULL, 'settlement', 'offline', '2020-11-07 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E229', '1605968005', 500000, 0, 0, 'Wali Annisa Shihabudin', 0, '', '', NULL, 'settlement', 'offline', '2020-11-08 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E23', '1605968005', 200000, 0, 0, 'Nadia I.', 0, '', '', NULL, 'settlement', 'offline', '2020-02-09 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E230', '1605968005', 100000, 0, 0, 'Bahra Ramdhani', 0, '', '', NULL, 'settlement', 'offline', '2020-11-10 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E231', '1605968005', 50000, 0, 0, 'Anik Sulistiyawati ', 0, '', '', NULL, 'settlement', 'offline', '2020-11-10 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E232', '1605968005', 100000, 0, 0, 'Hamdan Maula Zakaria', 0, '', '', NULL, 'settlement', 'offline', '2020-11-10 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E233', '1605968005', 100000, 0, 0, 'Bpk. Abd. Lathif & Ibu Wa\'fuanah', 0, '', '', NULL, 'settlement', 'offline', '2020-11-10 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E234', '1605968005', 1000000, 0, 0, 'Bpk. Nakum', 0, '', '', NULL, 'settlement', 'offline', '2020-11-10 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E235', '1605968005', 100000, 0, 0, 'Ibu Tsalisatul Ulya', 0, '', '', NULL, 'settlement', 'offline', '2020-11-12 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E236', '1605968005', 30000, 0, 0, 'Bpk. Dadaam Saepul Bahri', 0, '', '', NULL, 'settlement', 'offline', '2020-11-12 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E237', '1605968005', 50000, 0, 0, 'Bpk. Rohim & Ibu Ningsih', 0, '', '', NULL, 'settlement', 'offline', '2020-11-12 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E238', '1605968005', 1000000, 0, 0, 'Salwa / Sarah Risky', 0, '', '', NULL, 'settlement', 'offline', '2020-11-13 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E239', '1605968005', 50000, 0, 0, 'Nisa Lailatul Qodriyah', 0, '', '', NULL, 'settlement', 'offline', '2020-11-13 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E24', '1605968005', 500000, 0, 0, 'Ziyad', 0, '', '', NULL, 'settlement', 'offline', '2020-02-09 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E240', '1605968005', 500000, 0, 0, 'Alm. Rahmatsudjana Bin Andi Suwandi', 0, '', '', NULL, 'settlement', 'offline', '2020-11-13 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E241', '1605968005', 500000, 0, 0, 'Alm. B.P Wagimin & Almh Ibu Sinem', 0, '', '', NULL, 'settlement', 'offline', '2020-11-13 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E242', '1605968005', 200000, 0, 0, 'Bpk. Hardian & Ibu Rita', 0, '', '', NULL, 'settlement', 'offline', '2020-11-13 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E243', '1605968005', 500000, 0, 0, 'Fajar Saputra', 0, '', '', NULL, 'settlement', 'offline', '2020-11-15 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E244', '1605968005', 50000, 0, 0, 'Bpk. Misan', 0, '', '', NULL, 'settlement', 'offline', '2020-11-16 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E245', '1605968005', 1000000, 0, 0, 'Siti Nur Izmaeni', 0, '', '', NULL, 'settlement', 'offline', '2020-11-17 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E246', '1605968005', 200000, 0, 0, 'Ust Muhammad Hudori', 0, '', '', NULL, 'settlement', 'offline', '2020-11-20 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E247', '1605968005', 50000, 0, 0, 'Nisa Lailatul Qodriyah', 0, '', '', NULL, 'settlement', 'offline', '2020-11-20 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E248', '1605968005', 100000, 0, 0, 'Abdul Aziz Syahroni', 0, '', '', NULL, 'settlement', 'offline', '2020-11-20 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E249', '1605968005', 50000, 0, 0, 'Bpk. Jaji', 0, '', '', NULL, 'settlement', 'offline', '2020-11-25 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E25', '1605968005', 1000000, 0, 0, 'Salwa/Sarah', 0, '', '', NULL, 'settlement', 'offline', '2020-02-09 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E250', '1605968005', 50000, 0, 0, 'Muflihatul Fadhilah', 0, '', '', NULL, 'settlement', 'offline', '2020-11-25 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E251', '1605968005', 200000, 0, 0, 'Dewi Kartika', 0, '', '', NULL, 'settlement', 'offline', '2020-11-25 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E252', '1605968005', 120000, 0, 0, 'Salwa Khorunnisa', 0, '', '', NULL, 'settlement', 'offline', '2020-11-25 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E253', '1605968005', 50000, 0, 0, 'Fatonah', 0, '', '', NULL, 'settlement', 'offline', '2020-11-25 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E254', '1605968005', 100000, 0, 0, 'Abdul Aziz Syahroni', 0, '', '', NULL, 'settlement', 'offline', '2020-11-25 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E255', '1605968005', 300000, 0, 0, 'HA', 0, '', '', NULL, 'settlement', 'offline', '2020-11-25 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E256', '1605968005', 100000, 0, 0, 'HA', 0, '', '', NULL, 'settlement', 'offline', '2020-11-25 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E257', '1605968005', 200000, 0, 0, 'Diaz Naufal', 0, '', '', NULL, 'settlement', 'offline', '2020-12-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E258', '1605968005', 800000, 0, 0, 'Riyadh Zahra', 0, '', '', NULL, 'settlement', 'offline', '2020-12-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E259', '1605968005', 500000, 0, 0, 'Wali Acha', 0, '', '', NULL, 'settlement', 'offline', '2020-12-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E26', '1605968005', 1000000, 0, 0, 'Aisyah', 0, '', '', NULL, 'settlement', 'offline', '2020-02-09 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E260', '1605968005', 200000, 0, 0, 'Nuning', 0, '', '', NULL, 'settlement', 'offline', '2020-12-05 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E261', '1605968005', 100000, 0, 0, 'Abd. Syafi\'i', 0, '', '', NULL, 'settlement', 'offline', '2020-12-05 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E262', '1605968005', 200000, 0, 0, 'Nurhayati', 0, '', '', NULL, 'settlement', 'offline', '2020-12-05 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E263', '1605968005', 100000, 0, 0, 'Suprayatno', 0, '', '', NULL, 'settlement', 'offline', '2020-12-05 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E264', '1605968005', 100000, 0, 0, 'HA', 0, '', '', NULL, 'settlement', 'offline', '2020-12-05 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E265', '1605968005', 50000, 0, 0, 'Nisa Lailatul Qodriyah', 0, '', '', NULL, 'settlement', 'offline', '2020-12-05 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E266', '1605968005', 100000, 0, 0, 'Kasman', 0, '', '', NULL, 'settlement', 'offline', '2020-12-05 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E267', '1605968005', 50000, 0, 0, 'Dilla', 0, '', '', NULL, 'settlement', 'offline', '2020-12-05 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E268', '1605968005', 1250000, 0, 0, 'Riani-Uul-Essa-Nikken', 0, '', '', NULL, 'settlement', 'offline', '2020-12-05 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E269', '1605968005', 200000, 0, 0, 'Vita Octavia', 0, '', '', NULL, 'settlement', 'offline', '2020-12-06 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E27', '1605968005', 200000, 0, 0, 'Tawakalia', 0, '', '', NULL, 'settlement', 'offline', '2020-02-09 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E270', '1605968005', 50000, 0, 0, 'Eka', 0, '', '', NULL, 'settlement', 'offline', '2020-12-06 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E271', '1605968005', 150000, 0, 0, 'Indriyani', 0, '', '', NULL, 'settlement', 'offline', '2020-12-06 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E272', '1605968005', 100000, 0, 0, 'Alm. Bpk Tayat Bin Casim & Ibu Raisah', 0, '', '', NULL, 'settlement', 'offline', '2020-12-08 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E273', '1605968005', 100000, 0, 0, 'Sutarno Bin Musrodin', 0, '', '', NULL, 'settlement', 'offline', '2020-12-08 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E274', '1605968005', 100000, 0, 0, 'Ust Hudori', 0, '', '', NULL, 'settlement', 'offline', '2020-12-10 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E275', '1605968005', 250000, 0, 0, 'Luthfurrohman', 0, '', '', NULL, 'settlement', 'offline', '2020-12-13 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E276', '1605968005', 100000, 0, 0, 'Abdul Aziz Syahroni', 0, '', '', NULL, 'settlement', 'offline', '2020-12-18 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E277', '1605968005', 500000, 0, 0, 'Boby Haidar', 0, '', '', NULL, 'settlement', 'offline', '2020-12-19 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E278', '1605968005', 500000, 0, 0, 'Gabriel Muhammad', 0, '', '', NULL, 'settlement', 'offline', '2020-12-20 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E279', '1605968005', 1250000, 0, 0, 'Hamdan Maula Zakaria', 0, '', '', NULL, 'settlement', 'offline', '2020-12-22 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E28', '1605968005', 300000, 0, 0, 'Kaavin', 0, '', '', NULL, 'settlement', 'offline', '2020-03-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E280', '1605968005', 100000, 0, 0, 'Nisa Lailatul Qodriyah', 0, '', '', NULL, 'settlement', 'offline', '2020-12-22 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E281', '1605968005', 200000, 0, 0, 'Alifia', 0, '', '', NULL, 'settlement', 'offline', '2020-12-25 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E282', '1605968005', 200000, 0, 0, 'Bpk. Wagimin & Ibu Sinem', 0, '', '', NULL, 'settlement', 'offline', '2020-12-25 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E283', '1605968005', 50000, 0, 0, 'Aisyah Nurul Hasani', 0, '', '', NULL, 'settlement', 'offline', '2020-12-25 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E284', '1605968005', 50000, 0, 0, 'Sandi', 0, '', '', NULL, 'settlement', 'offline', '2020-12-26 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E285', '1605968005', 50000, 0, 0, 'St. Nur Azizah', 0, '', '', NULL, 'settlement', 'offline', '2020-12-31 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E286', '1605968005', 1250000, 0, 0, 'Tawwakkalia Sabrina', 0, '', '', NULL, 'settlement', 'offline', '2021-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E287', '1605968005', 150000, 0, 0, 'Alifia', 0, '', '', NULL, 'settlement', 'offline', '2021-01-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E288', '1605968005', 1000000, 0, 0, 'Hanna Maulida R', 0, '', '', NULL, 'settlement', 'offline', '2021-01-02 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E289', '1605968005', 100000, 0, 0, 'Muhda Faqih', 0, '', '', NULL, 'settlement', 'offline', '2021-01-03 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E29', '1605968005', 100000, 0, 0, 'Yazid', 0, '', '', NULL, 'settlement', 'offline', '2020-03-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E290', '1605968005', 500000, 0, 0, 'St. Nur Azizah', 0, '', '', NULL, 'settlement', 'offline', '2021-01-03 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E291', '1605968005', 500000, 0, 0, 'Bagir Hasyim', 0, '', '', NULL, 'settlement', 'offline', '2021-01-03 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E292', '1605968005', 200000, 0, 0, 'HA', 0, '', '', NULL, 'settlement', 'offline', '2021-01-03 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E293', '1605968005', 50000, 0, 0, 'St. Zahraturrohmah', 0, '', '', NULL, 'settlement', 'offline', '2021-01-05 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E294', '1605968005', 200000, 0, 0, 'HA', 0, '', '', NULL, 'settlement', 'offline', '2021-01-05 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E295', '1605968005', 100000, 0, 0, 'Ginan', 0, '', '', NULL, 'settlement', 'offline', '2021-01-05 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E296', '1605968005', 200000, 0, 0, 'Dalilah Djafar', 0, '', '', NULL, 'settlement', 'offline', '2021-01-08 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E297', '1605968005', 550000, 0, 0, 'Bpk. Adih (Zulfa D)', 0, '', '', NULL, 'settlement', 'offline', '2021-01-08 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E298', '1605968005', 100000, 0, 0, 'Elsa Sulistiana', 0, '', '', NULL, 'settlement', 'offline', '2021-01-09 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E3', '1605968005', 1000000, 0, 0, 'Elia', 0, '', '', NULL, 'settlement', 'offline', '2019-11-17 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E30', '1605968005', 500000, 0, 0, 'sabhan', 0, '', '', NULL, 'settlement', 'offline', '2020-03-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E31', '1605968005', 500000, 0, 0, 'arasy', 0, '', '', NULL, 'settlement', 'offline', '2020-03-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E32', '1605968005', 2000000, 0, 0, 'Diva samudra', 0, '', '', NULL, 'settlement', 'offline', '2020-03-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E33', '1605968005', 200000, 0, 0, 'Safa', 0, '', '', NULL, 'settlement', 'offline', '2020-03-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E34', '1605968005', 500000, 0, 0, 'Salwa K', 0, '', '', NULL, 'settlement', 'offline', '2020-03-08 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E35', '1605968005', 1000000, 0, 0, 'Elia', 0, '', '', NULL, 'settlement', 'offline', '2020-03-08 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E36', '1605968005', 500000, 0, 0, 'Ilfina', 0, '', '', NULL, 'settlement', 'offline', '2020-03-08 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E37', '1605968005', 200000, 0, 0, 'Fauziah', 0, '', '', NULL, 'settlement', 'offline', '2020-03-08 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E38', '1605968005', 100000, 0, 0, 'Albi', 0, '', '', NULL, 'settlement', 'offline', '2020-03-08 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E39', '1605968005', 300000, 0, 0, 'Salwa P', 0, '', '', NULL, 'settlement', 'offline', '2020-03-08 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E4', '1605968005', 500000, 0, 0, 'Izma', 0, '', '', NULL, 'settlement', 'offline', '2019-11-17 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E40', '1605968005', 1000000, 0, 0, 'Fulan', 0, '', '', NULL, 'settlement', 'offline', '2020-03-10 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E41', '1605968005', 1000000, 0, 0, 'Ridho', 0, '', '', NULL, 'settlement', 'offline', '2020-03-10 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E42', '1605968005', 90000, 0, 0, 'Hamba Allah', 0, '', '', NULL, 'settlement', 'offline', '2020-03-10 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E43', '1605968005', 500000, 0, 0, 'Nabil', 0, '', '', NULL, 'settlement', 'offline', '2020-03-15 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E44', '1605968005', 300000, 0, 0, 'Hamba Allah', 0, '', '', NULL, 'settlement', 'offline', '2020-03-15 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E45', '1605968005', 200000, 0, 0, 'azka', 0, '', '', NULL, 'settlement', 'offline', '2020-03-21 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E46', '1605968005', 200000, 0, 0, 'azka', 0, '', '', NULL, 'settlement', 'offline', '2020-03-22 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E47', '1605968005', 1900000, 0, 0, 'iyus', 0, '', '', NULL, 'settlement', 'offline', '2020-06-29 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E48', '1605968005', 300000, 0, 0, 'ayyasi', 0, '', '', NULL, 'settlement', 'offline', '2020-06-30 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E49', '1605968005', 15000000, 0, 0, 'Pesantren', 0, '', '', NULL, 'settlement', 'offline', '2020-06-30 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E5', '1605968005', 1000000, 0, 0, 'Elia', 0, '', '', NULL, 'settlement', 'offline', '2019-11-17 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E50', '1605968005', 5700000, 0, 0, 'HA', 0, '', '', NULL, 'settlement', 'offline', '2020-06-30 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E51', '1605968005', 1000000, 0, 0, 'HA', 0, '', '', NULL, 'settlement', 'offline', '2020-07-10 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E52', '1605968005', 500000, 0, 0, 'HA', 0, '', '', NULL, 'settlement', 'offline', '2020-07-18 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E53', '1605968005', 500000, 0, 0, 'Elia', 0, '', '', NULL, 'settlement', 'offline', '2020-07-12 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E54', '1605968005', 500000, 0, 0, 'Elia', 0, '', '', NULL, 'settlement', 'offline', '2020-08-13 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E55', '1605968005', 500000, 0, 0, 'Hilma', 0, '', '', NULL, 'settlement', 'offline', '2020-08-14 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E56', '1605968005', 500000, 0, 0, 'Refa', 0, '', '', NULL, 'settlement', 'offline', '2020-08-14 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E57', '1605968005', 500000, 0, 0, 'Ibu ustd Aisyah', 0, '', '', NULL, 'settlement', 'offline', '2020-08-15 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E58', '1605968005', 500000, 0, 0, 'A. Faiz', 0, '', '', NULL, 'settlement', 'offline', '2020-08-16 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E59', '1605968005', 500000, 0, 0, 'Aca', 0, '', '', NULL, 'settlement', 'offline', '2020-08-16 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E6', '1605968005', 250000, 0, 0, 'Syauqi', 0, '', '', NULL, 'settlement', 'offline', '2019-11-19 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E60', '1605968005', 500000, 0, 0, 'Farhan', 0, '', '', NULL, 'settlement', 'offline', '2020-08-16 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E61', '1605968005', 500000, 0, 0, 'Azka', 0, '', '', NULL, 'settlement', 'offline', '2020-08-16 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E62', '1605968005', 500000, 0, 0, 'Agna', 0, '', '', NULL, 'settlement', 'offline', '2020-08-16 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E63', '1605968005', 500000, 0, 0, 'Maula', 0, '', '', NULL, 'settlement', 'offline', '2020-08-20 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E64', '1605968005', 1000000, 0, 0, 'Fajar Khan', 0, '', '', NULL, 'settlement', 'offline', '2020-08-22 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E65', '1605968005', 500000, 0, 0, 'Ibu Hj. Azizah (aisyah)', 0, '', '', NULL, 'settlement', 'offline', '2020-08-23 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E66', '1605968005', 500000, 0, 0, 'HA', 0, '', '', NULL, 'settlement', 'offline', '2020-08-23 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E67', '1605968005', 500000, 0, 0, 'Ibu Budi Lestari (aisyah)', 0, '', '', NULL, 'settlement', 'offline', '2020-08-23 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E68', '1605968005', 300000, 0, 0, 'Syafa', 0, '', '', NULL, 'settlement', 'offline', '2020-08-24 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E69', '1605968005', 325000, 0, 0, 'Albi', 0, '', '', NULL, 'settlement', 'offline', '2020-08-24 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E7', '1605968005', 100000, 0, 0, 'Ramadhan Z', 0, '', '', NULL, 'settlement', 'offline', '2019-11-24 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E70', '1605968005', 100000, 0, 0, 'azka', 0, '', '', NULL, 'settlement', 'offline', '2020-08-29 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E71', '1605968005', 150000, 0, 0, 'nisa lq', 0, '', '', NULL, 'settlement', 'offline', '2020-08-29 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E72', '1605968005', 500000, 0, 0, 'ayya', 0, '', '', NULL, 'settlement', 'offline', '2020-08-22 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E73', '1605968005', 500000, 0, 0, 'gabriel', 0, '', '', NULL, 'settlement', 'offline', '2020-08-29 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E74', '1605968005', 100000, 0, 0, 'vita oktaviani', 0, '', '', NULL, 'settlement', 'offline', '2020-08-30 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E75', '1605968005', 500000, 0, 0, 'Fajar S', 0, '', '', NULL, 'settlement', 'offline', '2020-08-30 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E76', '1605968005', 500000, 0, 0, 'Lulu', 0, '', '', NULL, 'settlement', 'offline', '2020-09-02 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E77', '1605968005', 500000, 0, 0, 'Rafli', 0, '', '', NULL, 'settlement', 'offline', '2020-09-02 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E78', '1605968005', 200000, 0, 0, 'tawakalia', 0, '', '', NULL, 'settlement', 'offline', '2020-09-02 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E79', '1605968005', 1000000, 0, 0, 'hafizh', 0, '', '', NULL, 'settlement', 'offline', '2020-09-02 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E8', '1605968005', 1000000, 0, 0, 'Elia', 0, '', '', NULL, 'settlement', 'offline', '2019-12-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E80', '1605968005', 500000, 0, 0, 'Elia', 0, '', '', NULL, 'settlement', 'offline', '2020-09-03 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E81', '1605968005', 500000, 0, 0, 'Abu', 0, '', '', NULL, 'settlement', 'offline', '2020-09-03 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E82', '1605968005', 100000, 0, 0, 'Nabi', 0, '', '', NULL, 'settlement', 'offline', '2020-09-03 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E83', '1605968005', 1000000, 0, 0, 'Riyad', 0, '', '', NULL, 'settlement', 'offline', '2020-09-04 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E84', '1605968005', 400000, 0, 0, 'Ika Hasanah', 0, '', '', NULL, 'settlement', 'offline', '2020-09-05 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E85', '1605968005', 200000, 0, 0, 'Siti salma', 0, '', '', NULL, 'settlement', 'offline', '2020-09-07 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E86', '1605968005', 100000, 0, 0, 'Arman B', 0, '', '', NULL, 'settlement', 'offline', '2020-09-09 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E87', '1605968005', 500000, 0, 0, 'Elia', 0, '', '', NULL, 'settlement', 'offline', '2020-09-10 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E88', '1605968005', 200000, 0, 0, 'Dandy', 0, '', '', NULL, 'settlement', 'offline', '2020-09-10 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E89', '1605968005', 2000000, 0, 0, 'Azizah/bagir', 0, '', '', NULL, 'settlement', 'offline', '2020-09-10 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E9', '1605968005', 500000, 0, 0, 'Hafizh', 0, '', '', NULL, 'settlement', 'offline', '2019-12-01 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E90', '1605968005', 200000, 0, 0, 'Mila', 0, '', '', NULL, 'settlement', 'offline', '2020-09-10 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E91', '1605968005', 400000, 0, 0, 'Nova', 0, '', '', NULL, 'settlement', 'offline', '2020-09-12 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E92', '1605968005', 500000, 0, 0, 'Nasya', 0, '', '', NULL, 'settlement', 'offline', '2020-09-12 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E93', '1605968005', 500000, 0, 0, 'Hilma', 0, '', '', NULL, 'settlement', 'offline', '2020-09-13 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `donasi` (`id`, `program_id`, `nominal`, `biaya_admin`, `biaya_dpd`, `donatur`, `alias`, `email`, `no_hp`, `ket`, `status`, `payment_type`, `timestamp`, `expired_time`, `panduan`, `ref_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
('2CB7600E27E94', '1605968005', 50000, 0, 0, 'Nabila', 0, '', '', NULL, 'settlement', 'offline', '2020-09-13 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E95', '1605968005', 250000, 0, 0, 'Dewi', 0, '', '', NULL, 'settlement', 'offline', '2020-09-18 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E96', '1605968005', 50000, 0, 0, 'LQ', 0, '', '', NULL, 'settlement', 'offline', '2020-09-20 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E97', '1605968005', 100000, 0, 0, 'Aisyah', 0, '', '', NULL, 'settlement', 'offline', '2020-09-20 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E98', '1605968005', 50000, 0, 0, 'Maemunah', 0, '', '', NULL, 'settlement', 'offline', '2020-09-20 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('2CB7600E27E99', '1605968005', 300000, 0, 0, 'Ramadhan Zaky', 0, '', '', NULL, 'settlement', 'offline', '2020-09-22 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('37000E1B1E4D', '1605967474', 10000, 70, 500, 'Teza Alfian', 1, 'teza@tahfizhdulido.com', '085719994048', '', 'settlement', 'qris', '2020-11-29 09:36:51', '2020-11-29 09:51:51', '', '16BF40386C9D', '2020-11-28 20:32:05', '2020-11-28 20:32:05', NULL),
('3CD201C357E8', '1605968005', 10000, 70, 0, 'Rahmat Akbar', 1, 'teza@tahfizhdulido.com', '085719994048', '', 'pending', 'qris', '2020-11-29 03:07:25', '2020-11-29 03:22:25', '', '16BF40386C9D', '2020-11-28 14:02:39', '2020-11-28 14:02:39', NULL),
('55403892D1', '1605968005', 30000, 0, 0, 'KACIL', 0, 'teza@email.com', '', NULL, 'settlement', 'offline', '2020-02-06 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('56500386AFF', '1605968005', 10000, 6500, 0, 'Rahmat Akbar', 1, 'teza@tahfizhdulido.com', '085719994048', '', 'success', 'bank_transfer', '2020-11-29 03:07:56', '2020-11-30 03:07:56', 'https://app.sandbox.midtrans.com/snap/v1/transactions/5b7bdb35-0493-41f6-8d60-8efd7d0ca103/pdf', NULL, '2020-11-28 14:03:11', '2020-11-28 14:03:11', NULL),
('58A00E279BE4', '1605968005', 10000, 0, 0, 'Teza Alfian', 0, '', '089787909876', NULL, 'settlement', 'offline', '2021-01-27 00:00:00', NULL, NULL, NULL, '2021-01-26 20:49:04', '2021-01-27 16:05:44', '2021-01-27 16:05:44'),
('591E80386AD7', '1605968005', 10000, 70, 500, 'Rahmat Akbar', 1, 'refaderpathfinder99@gmail.com', '085868562991', 'Semoga berkah dan amanah', 'settlement', 'qris', '2020-11-29 03:00:01', '2020-11-29 03:15:01', '', NULL, '2020-11-28 13:55:25', '2020-11-28 13:55:25', NULL),
('9592C0389F4D', '1605968005', 100000, 0, 0, 'Teza Alfian', 0, '', '089787909876', NULL, 'settlement', 'offline', '2021-01-28 00:00:00', NULL, NULL, NULL, '2021-01-27 16:06:25', '2021-01-27 16:07:26', '2021-01-27 16:07:26'),
('D0CE01C356EF', '1605968005', 10000, 6500, 500, 'Rahmat Akbar', 0, 'teza@tahfizhdulido.com', '085719994048', '', 'settlement', 'bank_transfer', '2020-11-29 03:00:56', '2020-11-30 03:00:56', '', NULL, '2020-11-28 13:56:09', '2020-11-28 13:56:09', NULL),
('D83C03864F9', '1605965706', 20000, 6500, 0, 'Rahmat Akbar', 1, 'tes@tahfizhdulido.com', '089723902693', 'semoga bermanfaat', 'success', 'bank_transfer', '2020-12-01 19:04:37', '2020-12-02 19:04:37', 'https://app.sandbox.midtrans.com/snap/v1/transactions/80423714-7b15-401d-ad38-9f33af98bdea/pdf', NULL, '2020-12-01 05:59:49', '2020-12-01 05:59:49', NULL),
('DA2801C501FF1', '1605965706', 100000, 0, 0, 'RAHMAT, angga', 0, '', '89202909390', NULL, 'settlement', 'offline', '2020-01-29 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('DA2801C501FF3', '1605965706', 200000, 0, 0, 'AZIS', 0, '', '89202909390', NULL, 'settlement', 'offline', '2020-01-31 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
('FA60C0386AAD', '1605968005', 10000, 6500, 0, 'Teza Alfian', 0, 'teza@tahfizhdulido.com', '085719994048', 'Semoga berkah dan amanah', 'pending', 'bank_transfer', '2020-11-29 02:47:50', '2020-11-30 02:47:50', '', NULL, '2020-11-28 13:43:02', '2020-11-28 13:43:02', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `program`
--

CREATE TABLE `program` (
  `id` varchar(128) NOT NULL,
  `kategori_id` varchar(255) NOT NULL,
  `nama_program` text NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `created_by` char(128) DEFAULT NULL,
  `tgl_akhir` date DEFAULT NULL,
  `target_donasi` bigint(20) DEFAULT NULL,
  `status` char(20) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `program`
--

INSERT INTO `program` (`id`, `kategori_id`, `nama_program`, `title`, `slug`, `deskripsi`, `created_by`, `tgl_akhir`, `target_donasi`, `status`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
('123456', '2', 'Sumbangan Untuk Para Penghafal Qur\'an', 'beasiswa hafizh', 'beasiswa-hafizh', '<p style=\"box-sizing: border-box; border: 0px solid #fdfdfd; margin: 0px 0px 1rem; color: #323232; font-family: Inter, system-ui, -apple-system, \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, \'Noto Sans\', \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; background-color: #fafafa;\">Hingga akhir tahun 2019 lalu, Rumah Zakat telah membina 1.620 Desa Berdaya di seluruh Indonesia. Salah satu program utama di Desa Berdaya adalah Rumah Qur&rsquo;an. Rumah Qur&rsquo;an adalah program dalam bentuk penyediaan fasilitas dan sarana pendukung bagi para santri, agar semakin mudah dan semangat dalam belajar dan menghafal Al Qur&rsquo;an.</p>\r\n<p style=\"box-sizing: border-box; border: 0px solid #fdfdfd; margin: 0px 0px 1rem; color: #323232; font-family: Inter, system-ui, -apple-system, \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, \'Noto Sans\', \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; background-color: #fafafa;\">Sampai saat ini, sudah ada 345 Rumah Qur&rsquo;an yang didirikan. Sejumlah dampak yang dirasakan oleh masyarakat desa dengan pengembangan program Rumah Qur&rsquo;an di berbagai wilayah, diantaranya adalah: pembangunan gedung sekolah dan asrama, masjid, perbaikan jalur akses ke lokasi, dan yang paling utama adalah semakin banyaknya warga yang terbebas dari buta huruf Al Qur&rsquo;an, bahkan sudah disiapkan menjadi kader-kader pengajar Al Qur&rsquo;an.</p>\r\n<p style=\"box-sizing: border-box; border: 0px solid #fdfdfd; margin: 0px 0px 1rem; color: #323232; font-family: Inter, system-ui, -apple-system, \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, \'Noto Sans\', \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; background-color: #fafafa;\">Yayasan Pendidikan Amal Jama&rsquo;i adalah salah satunya. Pondok pesantren yang berlokasi di Desa Bojong, Kec. Cikembar, Kab. Sukabumi ini memberikan program pembelajaran Al Qur&rsquo;an dan Tahfidz bagi masyarakat umum, terutama anak yatim dan dhuafa.</p>\r\n<p style=\"box-sizing: border-box; border: 0px solid #fdfdfd; margin: 0px 0px 1rem; color: #323232; font-family: Inter, system-ui, -apple-system, \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, \'Noto Sans\', \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; background-color: #fafafa;\">Mulai dirintis pada tahun 2015 oleh Rumah Zakat melalui relawan inspirasinya, Miftahul Ulum Lc., ponpes yang awalnya hanya berupa program pembelajaran Al Qur&rsquo;an bagi warga ini, dengan izin Allah berhasil dikembangkan menjadi Yayasan Pendidikan formal pertama dan satu-satunya di desa ini pada tahun 2018.</p>\r\n<p style=\"box-sizing: border-box; border: 0px solid #fdfdfd; margin: 0px 0px 1rem; color: #323232; font-family: Inter, system-ui, -apple-system, \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, \'Noto Sans\', \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; background-color: #fafafa;\">Seiring berjalannya waktu, santri di pondok pesantren ini terus bertambah banyak. Namun, hal ini berakibat pada sulitnya pengelola untuk memenuhi berbagai kebutuhan dan aktivitas yayasan.</p>\r\n<p style=\"box-sizing: border-box; border: 0px solid #fdfdfd; margin: 0px 0px 1rem; color: #323232; font-family: Inter, system-ui, -apple-system, \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, \'Noto Sans\', \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; background-color: #fafafa;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; border: 0px solid #fdfdfd; margin: 0px 0px 1rem; color: #323232; font-family: Inter, system-ui, -apple-system, \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, \'Noto Sans\', \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; background-color: #fafafa;\">Hal-hal yang sangat dibutuhkan dalam waktu dekat ini diantaranya adalah :</p>\r\n<p style=\"box-sizing: border-box; border: 0px solid #fdfdfd; margin: 0px 0px 1rem; color: #323232; font-family: Inter, system-ui, -apple-system, \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, \'Noto Sans\', \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; background-color: #fafafa;\"><img src=\"https://amalsholeh-s3.imgix.net/content/xcWxvMkvCWlmn4E23YWDI5PFJ9h3sETiVDBHGJRB.jpeg?ar=16:9&amp;w=720&amp;auto=format,compress\" alt=\"Hafizh Qur\'an\" width=\"720\" height=\"405\" /></p>\r\n<p style=\"box-sizing: border-box; border: 0px solid #fdfdfd; margin: 0px 0px 1rem; color: #323232; font-family: Inter, system-ui, -apple-system, \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, \'Noto Sans\', \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; background-color: #fafafa;\">&nbsp;</p>', '1605656263', '2020-11-28', 300000000, 'expire', 'v1606011396/spu-app/program/123456', '2020-11-20 06:18:28', '2020-11-21 20:11:53', NULL),
('1605965706', 'lainnya', 'Masjid Di Pulau Karimata', 'Masjid Di Pulau Karimata', 'masjid-di-pulau-karimata', '<h1 style=\"box-sizing: border-box; border: 0px solid #fdfdfd; font-size: 1.5rem; margin: 0px 0px 0.5rem; font-family: Inter, system-ui, -apple-system, \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, \'Noto Sans\', \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; background-color: #fafafa;\">Yuk Jadi Bagian Membangun Peradaban Umat Di Pulau Karimata!</h1>\r\n<p style=\"box-sizing: border-box; border: 0px solid #fdfdfd; margin: 0px 0px 1rem; color: #323232; font-family: Inter, system-ui, -apple-system, \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, \'Noto Sans\', \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; background-color: #fafafa;\">Salah satu kepulauan yang indah di Indonesia adalah Pulau Karimata, Kalimantan Barat. Pulau Karimata ini seluas 450 km persegi, Pulau yang terletak di Kabupaten Kayong Utara, provinsi Kalimantan Barat dengan sumber daya yang melimpah, ikan melimpah, namun<span style=\"box-sizing: border-box; border: 0px solid #fdfdfd; font-weight: bolder;\">&nbsp;sangat sulit untuk beribadah di masjid yang layak karena akses jalan yang jauh,</span>&nbsp;<span style=\"box-sizing: border-box; border: 0px solid #fdfdfd; font-weight: bolder;\">listrik terbatas, hingga membutuhkan waktu 4 jam menggunakan speedboat</span>.</p>\r\n<p style=\"box-sizing: border-box; border: 0px solid #fdfdfd; margin: 0px 0px 1rem; color: #323232; font-family: Inter, system-ui, -apple-system, \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, \'Noto Sans\', \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; background-color: #fafafa;\"><img src=\"https://amalsholeh-s3.imgix.net/cover/TYqpBYtUDouW4ZOOkoSbVVt2ceIUAzOX1e6Yrqkf.png?w=600\" alt=\"Foto Masjid\" width=\"600\" height=\"338\" /></p>\r\n<p style=\"box-sizing: border-box; border: 0px solid #fdfdfd; margin: 0px 0px 1rem; color: #323232; font-family: Inter, system-ui, -apple-system, \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, \'Noto Sans\', \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; background-color: #fafafa;\">Masjid merupakan pranata keagamaan yang tak terpisahkan dari kehidupan spritual, sosial, dan kultural umat Islam. Keberadaan masjid dapat dipandang sebagai salah satu perwujudan dari eksistensi dan aspirasi umat Islam, khususnya sebagai sarana peribadatan yang menduduki fungsi sentral dalam kehidupan bermasyarakat.&nbsp;</p>\r\n<p style=\"box-sizing: border-box; border: 0px solid #fdfdfd; margin: 0px 0px 1rem; color: #323232; font-family: Inter, system-ui, -apple-system, \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, \'Noto Sans\', \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; background-color: #fafafa;\">Upaya untuk membangun peradaban umat disana adalah dengan adanya masjid yang akan digunakan untuk beribadah bagi saudara muslim kita disana.</p>\r\n<p style=\"box-sizing: border-box; border: 0px solid #fdfdfd; margin: 0px 0px 1rem; color: #323232; font-family: Inter, system-ui, -apple-system, \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, \'Noto Sans\', \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; background-color: #fafafa;\">Untuk itu, mari menjadi bagian dari pembangun peradaban umat di Pulau Karimata dengan cara,</p>\r\n<p style=\"box-sizing: border-box; border: 0px solid #fdfdfd; margin: 0px 0px 1rem; color: #323232; font-family: Inter, system-ui, -apple-system, \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, \'Noto Sans\', \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; background-color: #fafafa;\"><span style=\"box-sizing: border-box; border: 0px solid #fdfdfd; font-weight: bolder;\">1. Klik tombol \"DONASI SEKARANG\"<br style=\"box-sizing: border-box; border: 0px solid #fdfdfd;\" />2. Masukan nominal donasi<br style=\"box-sizing: border-box; border: 0px solid #fdfdfd;\" />3. Pilih metode pembayaran melalui GOPAY/MANDIRI/BCA/BNI/BRI/Virtual Account, lalu<br style=\"box-sizing: border-box; border: 0px solid #fdfdfd;\" />4. Transfer ke no rekening yang tertera.</span></p>\r\n<blockquote style=\"box-sizing: border-box; border-width: 0px; border-top-style: solid; border-right-style: solid; border-bottom-style: solid; border-color: #fdfdfd; border-image: initial; color: #323232; font-family: Inter, system-ui, -apple-system, \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, \'Noto Sans\', \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; background-color: #fafafa;\">&ldquo;Suatu kebaikan yang terlihat kecil oleh kita, bisa jadi sangat berdampak besar bagi orang lain.&rdquo; Insya Allah.</blockquote>\r\n<p style=\"box-sizing: border-box; border: 0px solid #fdfdfd; margin: 0px 0px 1rem; color: #323232; font-family: Inter, system-ui, -apple-system, \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, \'Noto Sans\', \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; background-color: #fafafa;\">Dukung program<span style=\"box-sizing: border-box; border: 0px solid #fdfdfd; font-weight: bolder;\">&nbsp;#BeramalMasjid&nbsp;</span>dengan membagikan program kebaikan ini kepada keluarga, teman, sahabat, dan kerabat. Klik&nbsp;<span style=\"box-sizing: border-box; border: 0px solid #fdfdfd; font-weight: bolder;\">SHARE KE FACEBOOK</span>&nbsp;atau&nbsp;<span style=\"box-sizing: border-box; border: 0px solid #fdfdfd; font-weight: bolder;\">SHARE KE WHATSAPP.</span></p>\r\n<p style=\"box-sizing: border-box; border: 0px solid #fdfdfd; margin: 0px 0px 1rem; color: #323232; font-family: Inter, system-ui, -apple-system, \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, \'Noto Sans\', \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; background-color: #fafafa;\"><em style=\"box-sizing: border-box; border: 0px solid #fdfdfd;\">Jazakumullah khairan katsiran</em></p>', '1605656263', NULL, 1000000000, 'active', 'v1605965994/spu-app/program/1605965706.jpg', '2020-11-21 07:35:09', '2020-11-21 17:22:59', NULL),
('1605967474', 'lainnya', 'Buktikan Bakti Dengan Memberi Wakaf Terbaik Untuk Mereka yan Kita Cintai', 'wakaf orang tua', 'wakaf-orang-tua', '<p style=\"box-sizing: border-box; border: 0px solid #fdfdfd; margin: 0px 0px 1rem; color: #323232; font-family: Inter, system-ui, -apple-system, \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, \'Noto Sans\', \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; background-color: #fafafa;\">Bismillahirrahmanirrahim</p>\r\n<p style=\"box-sizing: border-box; border: 0px solid #fdfdfd; margin: 0px 0px 1rem; color: #323232; font-family: Inter, system-ui, -apple-system, \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, \'Noto Sans\', \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; background-color: #fafafa;\">Assalamu\'alaikum #orangbaik<br style=\"box-sizing: border-box; border: 0px solid #fdfdfd;\" /><br style=\"box-sizing: border-box; border: 0px solid #fdfdfd;\" />Setiap anak pasti berlomba-lomba untuk dapat berbakti kepada kedua orang tuanya Termasuk KAMU #orangbaik yang membaca ini<br style=\"box-sizing: border-box; border: 0px solid #fdfdfd;\" /><br style=\"box-sizing: border-box; border: 0px solid #fdfdfd;\" />Tapi apakah bakti itu?<span style=\"box-sizing: border-box; border: 0px solid #fdfdfd; font-weight: bolder;\"><br style=\"box-sizing: border-box; border: 0px solid #fdfdfd;\" /><br style=\"box-sizing: border-box; border: 0px solid #fdfdfd;\" />Bakti bisa kita maknai sebagai wujud kasih, patuh dan taat kepada kedua orang tua. Namun patuh dan taat kepada orang tua belumlah cukup untuk menunjukkan bakti kita kepada kepada mereka.</span><br style=\"box-sizing: border-box; border: 0px solid #fdfdfd;\" /><br style=\"box-sizing: border-box; border: 0px solid #fdfdfd;\" />Lantas bagaimana caranya?<br style=\"box-sizing: border-box; border: 0px solid #fdfdfd;\" /><br style=\"box-sizing: border-box; border: 0px solid #fdfdfd;\" />Pernahkah kita sebagai seorang anak memberikan hadiah terbaik bagi kedua orang tua kita?<br style=\"box-sizing: border-box; border: 0px solid #fdfdfd;\" /><br style=\"box-sizing: border-box; border: 0px solid #fdfdfd;\" />Tentu saja pernah, alhamdulillah....</p>', '1605656263', '2020-11-28', 400000000, 'expire', 'v1605967761/spu-app/program/1605967474.jpg', '2020-11-21 08:04:36', '2020-11-21 17:19:30', NULL),
('1605968005', 'lainnya', 'Gerakan Wakaf Al Quran', 'Gerakan Wakaf Quran', 'gerakan-wakaf-quran', '<p style=\"box-sizing: border-box; border: 0px solid #fdfdfd; margin: 0px 0px 1rem; color: #323232; font-family: Inter, system-ui, -apple-system, \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, \'Noto Sans\', \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; background-color: #fafafa;\"><em style=\"box-sizing: border-box; border: 0px solid #fdfdfd;\">Saad bin Ubadah RA bertanya kepada Rasulullah SAW, &ldquo;Wahai Rasulullah, sedekah apa yang paling utama?&rdquo; Beliau menjawab, &ldquo;Memberi air.&rdquo; (HR. Abu Daud)</em></p>\r\n<p style=\"box-sizing: border-box; border: 0px solid #fdfdfd; margin: 0px 0px 1rem; color: #323232; font-family: Inter, system-ui, -apple-system, \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, \'Noto Sans\', \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; background-color: #fafafa;\">Mengapa ketersediaan air bersih menjadi hal yang sangat diperhatikan? Karena ternyata sebanyak<span style=\"box-sizing: border-box; border: 0px solid #fdfdfd; font-weight: bolder;\">&nbsp;67% daerah di pedesaan memiliki kesulitan untuk mengakses air bersih.</span></p>\r\n<p style=\"box-sizing: border-box; border: 0px solid #fdfdfd; margin: 0px 0px 1rem; color: #323232; font-family: Inter, system-ui, -apple-system, \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, \'Noto Sans\', \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; background-color: #fafafa;\">Air menjadi hal yang paling utama bagi manusia. Rasanya di berbagai aspek kehidupan, air memegang peran penting, seperti kesehatan, masak, dan terutama dalam beribadah. Air digunakan untuk para muslim untuk menyucikan diri. Tetapi bagaimana apabila air menjadi sulit untuk diakses?</p>', '1605656263', '2020-12-31', NULL, 'expire', 'v1605968293/spu-app/program/1605968005', '2020-11-21 08:13:28', '2020-12-29 20:29:22', NULL),
('1606001339', '1', 'anu', 'anu', 'anu', '<p>anu</p>', '1605656263', NULL, 10000, 'active', 'v1606011062/spu-app/program/default.png', '2020-11-21 17:29:11', '2020-11-21 17:35:16', '2020-11-21 17:35:16'),
('1609069841', 'lainnya', 'Pembuatan Sumur Artesis Tahfizh', 'Sumur Artesis', 'sumur-artesis', '                                    <h3 style=\"box-sizing: border-box; border: 0px solid #fdfdfd; margin: 0px 0px 0.5rem; font-size: 1.125rem; font-family: Inter, system-ui, -apple-system, \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, \'Noto Sans\', \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; background-color: #fafafa;\"><span style=\"box-sizing: border-box; border: 0px solid #fdfdfd; font-weight: inherit; color: inherit;\">Bersama</span> <span style=\"box-sizing: border-box; border: 0px solid #fdfdfd; font-weight: inherit; color: inherit;\">#BeramalMasjid Mari Bangun, Benahi, Fasilitasi & Perbaiki Pusat Peradaban Umat</span></h3>\r\n<p style=\"box-sizing: border-box; border: 0px solid #fdfdfd; margin: 0px 0px 1rem; color: #323232; font-family: Inter, system-ui, -apple-system, \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, \'Noto Sans\', \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; background-color: #fafafa;\"> </p>\r\n<p style=\"box-sizing: border-box; border: 0px solid #fdfdfd; margin: 0px 0px 1rem; color: #323232; font-family: Inter, system-ui, -apple-system, \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, \'Noto Sans\', \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; background-color: #fafafa;\">Assalamualaikum Warrahmatullahi Wabarrakatuh #OrangBaik </p>\r\n<p style=\"box-sizing: border-box; border: 0px solid #fdfdfd; margin: 0px 0px 1rem; color: #323232; font-family: Inter, system-ui, -apple-system, \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, \'Noto Sans\', \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; background-color: #fafafa;\">Alhamdulillah, jika saat ini kenyamanan ibadah di masjid sudah kita rasakan.</p>\r\n<p style=\"box-sizing: border-box; border: 0px solid #fdfdfd; margin: 0px 0px 1rem; color: #323232; font-family: Inter, system-ui, -apple-system, \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, \'Noto Sans\', \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; background-color: #fafafa;\">Tetapi, pernahkah kita sadari kalau diluar sana <span style=\"box-sizing: border-box; border: 0px solid #fdfdfd; font-weight: bolder;\">masih banyak umat yang belum bisa merasakan fasilitas kenyamanan beribadah</span> seperti yang saat ini kita rasakan?</p>\r\n<p style=\"box-sizing: border-box; border: 0px solid #fdfdfd; margin: 0px 0px 1rem; color: #323232; font-family: Inter, system-ui, -apple-system, \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, \'Noto Sans\', \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; background-color: #fafafa;\">Masjid, merupakan pranata keagamaan yang tak terpisahkan dari kehidupan spritual, sosial, dan kultural umat Islam.</p>\r\n<p style=\"box-sizing: border-box; border: 0px solid #fdfdfd; margin: 0px 0px 1rem; color: #323232; font-family: Inter, system-ui, -apple-system, \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, \'Noto Sans\', \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; background-color: #fafafa;\">Keberadaan masjid dapat dipandang sebagai salah satu perwujudan dari eksistensi dan aspirasi umat Islam, khususnya sebagai sarana peribadatan yang menduduki fungsi sentral dalam kehidupan bermasyarakat.</p>\r\n<p style=\"box-sizing: border-box; border: 0px solid #fdfdfd; margin: 0px 0px 1rem; color: #323232; font-family: Inter, system-ui, -apple-system, \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, BlinkMacSystemFont, \'Segoe UI\', \'Helvetica Neue\', Arial, \'Noto Sans\', \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; background-color: #fafafa;\">Indonesia, memiliki 800.000 bangunan masjid & mushola, sayangnya belum semua bisa dikatakan makmur dan berfungsi sebagaimana mestinya.</p>                                ', '1605656263', NULL, 200000000, 'active', 'v1609070150/spu-app/program/1609069841', '2020-12-27 05:50:44', '2021-03-09 07:53:05', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `program_info`
--

CREATE TABLE `program_info` (
  `id` int(11) NOT NULL,
  `program_id` varchar(128) DEFAULT NULL,
  `type` varchar(128) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `tanggal` date NOT NULL,
  `nominal` bigint(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `program_info`
--

INSERT INTO `program_info` (`id`, `program_id`, `type`, `title`, `deskripsi`, `tanggal`, `nominal`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, '1605965706', NULL, 'Program Dirilis', '', '2020-12-01', NULL, '2020-12-26 19:23:50', '2020-12-26 21:30:42', '2020-12-26 21:30:42'),
(3, '1605968005', 'custom', 'Program Dirilis', '<p>program siap menerima donasi</p>', '2020-12-01', NULL, '2020-12-26 21:44:22', '2020-12-26 22:09:20', NULL),
(5, '1609069841', 'sistem', 'Program dirilis', NULL, '2020-12-27', NULL, '2020-12-27 05:57:35', '2020-12-27 05:57:35', NULL),
(6, '1605968005', 'sistem', 'Pencairan Dana Rp 13.000', '<p>Untuk pengadaan barang bangunan</p>', '2021-02-04', NULL, '2021-02-04 01:14:10', '2021-02-04 01:14:10', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `program_kategori`
--

CREATE TABLE `program_kategori` (
  `id` int(11) NOT NULL,
  `kategori` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `icon` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `program_kategori`
--

INSERT INTO `program_kategori` (`id`, `kategori`, `slug`, `icon`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Bantuan Medis', 'bantuan-medis', 'fas fa-briefcase-medical', '2020-11-19 21:23:37', '2020-11-19 21:23:37', NULL),
(2, 'Pendidikan', 'pendidikan', 'icon-graduation', '2020-11-19 21:27:16', '2020-11-19 21:36:54', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `source` enum('url','file') DEFAULT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `slide`
--

INSERT INTO `slide` (`id`, `source`, `link`, `image`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'url', 'https://sakupeduliumat.com/program/lapangan-olahraga', 'https://res.cloudinary.com/dehterav1/image/upload/w_800/v1609216171/spu-app/program/1607859352', 0, '2021-01-28 18:13:23', '2021-01-28 21:02:00', NULL),
(4, 'file', 'https://sakupeduliumat.com/program/pembangunan-asrama', 'https://res.cloudinary.com/dehterav1/image/upload/w_800/v1611885848/spu-app/slide/1611885519', 1, '2021-01-28 19:06:34', '2021-01-28 19:59:11', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id` varchar(255) NOT NULL,
  `program_id` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `jenis` varchar(30) NOT NULL,
  `nominal` bigint(20) NOT NULL,
  `ket` text NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` varchar(128) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `jk` enum('L','P') DEFAULT NULL,
  `email` varchar(128) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `nama`, `jk`, `email`, `no_hp`, `foto`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
('1605656263', 'admin', '$2y$10$gWeA6RkGQD4FMSdU2JpkIO6t7P6Kx6GLeDXe1.EjHSmngBKID/6YS', 'Tahfizh Dulido', NULL, 'sakupeduliumat@tahfizhdulido.com', '', 'v1607874726/spu-app/users/1605616208', 1, '2020-11-17 06:30:11', '2020-12-29 21:32:28', NULL),
('1605661219', 'alfian', '$2y$10$r2Pqjx05jvVBYqcVzAF/A.n/Dnlso2W1Lf7uZhSzxf.4/9ApInfuW', 'Teza Alfian', NULL, 'teza@tahfizhdulido.com', '085719994048', 'v1605661503/spu-app/users/1605661219', 1, '2020-11-17 19:00:21', '2021-02-03 20:50:05', NULL),
('1605728016', 'ahmad', '$2y$10$5wOl8KZHGlI52Ng8mTJabuvf8aPms8KmAHTgkzaCM99V/.gTtb4Mi', 'ahmad juna', NULL, '', '', 'v1605594452/spu-app/users/default.png', 1, '2020-11-18 13:33:36', '2020-11-18 13:40:55', '2020-11-18 13:40:55'),
('1605738092', 'tes', '$2y$10$3lphXkNhxQX3pMF.IA.fPO/mW/GL1l1nCpj.Ew1974wrvff6sDaE.', 'tes nama', NULL, '', '', 'v1605594452/spu-app/users/default.png', 1, '2020-11-18 16:21:32', '2020-11-18 16:21:54', '2020-11-18 16:21:54'),
('1605799668', 'rahmat', '$2y$10$dNKlHeHaJTwZtaGRnPcMxOIobzwcxhAJ08Bz1ReO1.xZmyWLNFXs2', 'Rahmat Akbar', NULL, 'rahmat@tahfizhdulido.com', '', 'v1605594452/spu-app/users/default.png', 1, '2020-11-19 09:27:48', '2020-11-19 09:27:48', NULL),
('16BF40386C9D', NULL, '$2y$10$SnYeSBnCItdzHUYReEgiJeB6sni5gJ/sPXsysKS0HU3O7.S5oQWKm', 'Rahmat Akbar', NULL, 'tes@tahfizhdulido.com', '089723902692', 'v1606862835/spu-app/users/16BF40386C9D', 1, '2020-11-29 19:03:55', '2020-12-01 16:58:48', NULL),
('20C8300E1F3653', NULL, '$2y$10$mk/25sH6vRZC53X.m89V3OPlljaSyG1zztl26l8YAs8JfLIr5iM2G', 'Me', NULL, 'me@gmail.com', '089787909876', 'v1605594452/spu-app/users/default.png', 1, '2020-12-10 14:45:23', '2020-12-10 14:45:23', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_access_menu`
--

CREATE TABLE `users_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users_access_menu`
--

INSERT INTO `users_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(80, 2, 5),
(81, 2, 7),
(82, 2, 8),
(83, 2, 9),
(84, 2, 10),
(85, 2, 11),
(86, 2, 13),
(87, 1, 1),
(88, 1, 4),
(89, 1, 5),
(90, 1, 6),
(91, 1, 7),
(92, 1, 8),
(93, 1, 9),
(94, 1, 10),
(95, 1, 11),
(96, 1, 12),
(97, 1, 13);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_menu`
--

CREATE TABLE `users_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(125) DEFAULT NULL,
  `icon` varchar(125) DEFAULT NULL,
  `num_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users_menu`
--

INSERT INTO `users_menu` (`id`, `menu`, `icon`, `num_order`) VALUES
(1, 'Users', 'fa fa-users', 4),
(4, 'Menu', 'fa fa-folder', 2),
(5, 'Dashboard', 'fas fa-laptop', 1),
(6, 'Kategori', 'far fa-bookmark', 6),
(7, 'Program', ' fas fa-hand-holding-heart', 3),
(8, 'Donasi', 'fas fa-hand-holding', 5),
(9, 'Fundraiser', ' fas fa-user-tie', 7),
(10, 'Info', 'far fa-newspaper', 0),
(11, 'Profil', ' fas fa-user-tie', 0),
(12, 'Slide', 'far fa-images', 8),
(13, 'Pencairan', ' fas fa-money-bill', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_role`
--

CREATE TABLE `users_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users_role`
--

INSERT INTO `users_role` (`id`, `role`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', '2020-11-18 00:00:00', '2020-11-18 00:00:00', NULL),
(2, 'lembaga', '2020-11-18 00:00:00', '2020-11-18 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_role_access`
--

CREATE TABLE `users_role_access` (
  `id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `user_id` char(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users_role_access`
--

INSERT INTO `users_role_access` (`id`, `role_id`, `user_id`) VALUES
(3, 1, '1605661219'),
(4, 2, '1605661219'),
(13, 2, '1605799668'),
(29, 1, '1605656263'),
(30, 2, '1605656263');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_sub_menu`
--

CREATE TABLE `users_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `title` varchar(125) DEFAULT NULL,
  `url` varchar(125) DEFAULT NULL,
  `icon` varchar(125) DEFAULT NULL,
  `is_active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users_sub_menu`
--

INSERT INTO `users_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(3, 4, 'Menu Management', 'menu', 'fa fa-circle-o', 1),
(4, 4, 'Sub Menu Management', 'menu/submenu', 'fa fa-circle-o', 1),
(5, 1, 'Data Users', 'users', 'fa fa-circle-o', 1),
(6, 1, 'User Role', 'users/role', 'fa fa-circle-o', 1),
(7, 7, 'Daftar Program', 'program', 'fa fa-circle-o', 1),
(8, 7, 'Tambah Program', 'program/create', 'fa fa-circle-o', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `va_number`
--

CREATE TABLE `va_number` (
  `id` int(11) NOT NULL,
  `va_number` varchar(50) NOT NULL,
  `bank` varchar(50) NOT NULL,
  `donasi_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `withdraw`
--

CREATE TABLE `withdraw` (
  `id` int(11) NOT NULL,
  `program_id` varchar(255) NOT NULL,
  `nominal` bigint(20) NOT NULL,
  `timestamp` datetime DEFAULT NULL,
  `nama_bank` varchar(255) NOT NULL,
  `cabang_bank` varchar(255) NOT NULL,
  `pemilik_rek` varchar(255) NOT NULL,
  `no_rek` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `status` varchar(30) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `biaya_admin`
--
ALTER TABLE `biaya_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `donasi`
--
ALTER TABLE `donasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `program_info`
--
ALTER TABLE `program_info`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `program_kategori`
--
ALTER TABLE `program_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users_access_menu`
--
ALTER TABLE `users_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users_menu`
--
ALTER TABLE `users_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users_role`
--
ALTER TABLE `users_role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users_role_access`
--
ALTER TABLE `users_role_access`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users_sub_menu`
--
ALTER TABLE `users_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `va_number`
--
ALTER TABLE `va_number`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `withdraw`
--
ALTER TABLE `withdraw`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `biaya_admin`
--
ALTER TABLE `biaya_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `program_info`
--
ALTER TABLE `program_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `program_kategori`
--
ALTER TABLE `program_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users_access_menu`
--
ALTER TABLE `users_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT untuk tabel `users_menu`
--
ALTER TABLE `users_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `users_role`
--
ALTER TABLE `users_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users_role_access`
--
ALTER TABLE `users_role_access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `users_sub_menu`
--
ALTER TABLE `users_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `va_number`
--
ALTER TABLE `va_number`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `withdraw`
--
ALTER TABLE `withdraw`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
