-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2024 at 10:36 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbujianonline`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id` int(11) NOT NULL,
  `nama_user` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id`, `nama_user`, `username`, `password`) VALUES
(2, 'abib', 'abib', 'abib');

-- --------------------------------------------------------

--
-- Table structure for table `tb_guru`
--

CREATE TABLE `tb_guru` (
  `id_guru` int(11) NOT NULL,
  `nama_guru` varchar(50) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_guru`
--

INSERT INTO `tb_guru` (`id_guru`, `nama_guru`, `username`, `password`) VALUES
(2, 'lala', 'lala', 'lala');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jawaban`
--

CREATE TABLE `tb_jawaban` (
  `id_jawaban` int(5) NOT NULL,
  `id_peserta` int(5) NOT NULL,
  `id_soal_ujian` int(5) NOT NULL,
  `jawaban` varchar(15) NOT NULL,
  `skor` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_jawaban`
--

INSERT INTO `tb_jawaban` (`id_jawaban`, `id_peserta`, `id_soal_ujian`, `jawaban`, `skor`) VALUES
(1, 2, 1, 'A', '1'),
(2, 2, 1, 'A', '1'),
(3, 2, 1, 'A', '1'),
(4, 7, 1, 'A', '1'),
(5, 7, 2, 'B', '0'),
(6, 9, 1, 'D', '0'),
(7, 10, 1, 'C', '1'),
(8, 10, 2, 'A', '1'),
(9, 13, 7, 'A', '1'),
(10, 13, 6, 'B', '0'),
(11, 15, 7, 'A', '1'),
(12, 15, 8, 'D', '1'),
(13, 15, 6, 'A', '1'),
(14, 17, 9, 'A', '1'),
(15, 17, 8, 'D', '1'),
(16, 17, 7, 'A', '1'),
(17, 17, 6, 'E', '0'),
(18, 14, 8, 'E', '0'),
(19, 14, 6, 'E', '0'),
(20, 14, 7, 'A', '1'),
(21, 14, 9, 'E', '0'),
(22, 24, 17, 'D', '1'),
(23, 24, 19, 'B', '1'),
(24, 24, 18, 'B', '1'),
(25, 24, 20, 'B', '0'),
(26, 24, 16, 'C', '1'),
(27, 25, 18, 'A', '0'),
(28, 25, 16, 'C', '1'),
(29, 25, 17, 'B', '0'),
(30, 25, 19, 'C', '0'),
(31, 25, 20, 'C', '1'),
(32, 26, 19, 'B', '1'),
(33, 26, 20, 'C', '1'),
(34, 26, 18, 'B', '1'),
(35, 26, 16, 'C', '1'),
(36, 26, 17, 'D', '1'),
(37, 28, 25, 'A', '1'),
(38, 28, 24, 'A', '1'),
(39, 28, 33, 'A', '1'),
(40, 28, 30, 'A', '1'),
(41, 28, 29, 'A', '1'),
(42, 28, 22, 'A', '1'),
(43, 28, 34, 'A', '1'),
(44, 28, 32, 'A', '1'),
(45, 28, 27, 'A', '1'),
(46, 28, 21, 'A', '1'),
(47, 28, 35, 'A', '1'),
(48, 28, 23, 'A', '1'),
(49, 28, 26, 'A', '1'),
(50, 28, 31, 'A', '1'),
(51, 28, 28, 'A', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jenis_ujian`
--

CREATE TABLE `tb_jenis_ujian` (
  `id_jenis_ujian` int(11) NOT NULL,
  `jenis_ujian` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_jenis_ujian`
--

INSERT INTO `tb_jenis_ujian` (`id_jenis_ujian`, `jenis_ujian`) VALUES
(4, 'Try Out SNBT');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kelas`
--

INSERT INTO `tb_kelas` (`id_kelas`, `nama_kelas`) VALUES
(7, 'Try Out SNBT');

-- --------------------------------------------------------

--
-- Table structure for table `tb_matapelajaran`
--

CREATE TABLE `tb_matapelajaran` (
  `id_matapelajaran` int(11) NOT NULL,
  `kode_matapelajaran` varchar(10) NOT NULL,
  `nama_matapelajaran` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_matapelajaran`
--

INSERT INTO `tb_matapelajaran` (`id_matapelajaran`, `kode_matapelajaran`, `nama_matapelajaran`) VALUES
(27, '01', 'Pengetahuan Kuantitatif');

-- --------------------------------------------------------

--
-- Table structure for table `tb_peserta`
--

CREATE TABLE `tb_peserta` (
  `id_peserta` int(11) NOT NULL,
  `id_matapelajaran` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_jenis_ujian` int(11) NOT NULL,
  `tanggal_ujian` date NOT NULL,
  `jam_ujian` time NOT NULL,
  `durasi_ujian` int(11) NOT NULL,
  `timer_ujian` int(11) NOT NULL,
  `status_ujian` tinyint(1) NOT NULL,
  `status_ujian_ujian` int(11) NOT NULL,
  `benar` varchar(20) NOT NULL,
  `salah` varchar(20) NOT NULL,
  `nilai` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_peserta`
--

INSERT INTO `tb_peserta` (`id_peserta`, `id_matapelajaran`, `id_siswa`, `id_jenis_ujian`, `tanggal_ujian`, `jam_ujian`, `durasi_ujian`, `timer_ujian`, `status_ujian`, `status_ujian_ujian`, `benar`, `salah`, `nilai`) VALUES
(2, 6, 39, 1, '2020-05-02', '09:05:00', 10, 600, 2, 2, '3', '0', '100'),
(4, 6, 40, 1, '2020-05-03', '16:30:00', 5, 300, 1, 0, '', '', ''),
(5, 6, 41, 1, '2020-05-03', '17:45:00', 2, 120, 1, 0, '', '', ''),
(7, 6, 38, 1, '2020-05-05', '06:30:00', 2, 120, 2, 2, '1', '1', '50'),
(8, 6, 2, 1, '2020-06-13', '15:46:00', 5, 300, 2, 2, '0', '0', '0'),
(9, 6, 3, 1, '2020-06-13', '15:49:00', 5, 300, 2, 2, '0', '1', '0'),
(10, 6, 5, 1, '2020-06-17', '21:30:00', 10, 600, 2, 2, '2', '0', '100'),
(11, 6, 6, 1, '2020-06-23', '21:45:00', 3, 180, 1, 0, '', '', ''),
(12, 8, 7, 3, '2020-06-24', '07:15:00', 10, 600, 1, 0, '', '', ''),
(13, 8, 8, 1, '2020-06-27', '15:15:00', 10, 600, 2, 2, '1', '1', '50'),
(14, 8, 5, 1, '2020-06-29', '09:30:00', 10, 600, 2, 2, '1', '3', '25'),
(15, 8, 9, 1, '2020-06-28', '17:30:00', 10, 600, 2, 2, '3', '0', '100'),
(16, 8, 7, 3, '2020-06-28', '20:20:00', 10, 600, 1, 0, '', '', ''),
(17, 8, 10, 3, '2020-06-28', '20:20:00', 10, 600, 2, 2, '3', '1', '75'),
(18, 8, 5, 1, '2020-06-29', '09:30:00', 10, 600, 1, 0, '', '', ''),
(19, 10, 5, 1, '2020-06-30', '23:30:00', 10, 600, 2, 2, '0', '0', '0'),
(20, 10, 4, 1, '2020-07-31', '07:30:00', 2, 120, 1, 0, '', '', ''),
(23, 18, 4, 1, '2022-11-07', '22:00:00', 15, 900, 1, 0, '', '', ''),
(24, 18, 5, 1, '2022-11-07', '22:00:00', 15, 900, 2, 2, '4', '1', '80'),
(25, 18, 11, 1, '2022-11-07', '22:00:00', 10, 600, 2, 2, '2', '3', '40'),
(26, 18, 12, 1, '2022-11-07', '22:00:00', 10, 600, 2, 2, '5', '0', '100'),
(27, 27, 1, 4, '2024-02-08', '01:30:00', 60, 3600, 1, 0, '', '', ''),
(28, 27, 2, 4, '2024-02-08', '00:30:00', 60, 3600, 2, 2, '15', '0', '100');

-- --------------------------------------------------------

--
-- Table structure for table `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `id_siswa` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `nama_siswa` varchar(50) NOT NULL,
  `nis` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_siswa`
--

INSERT INTO `tb_siswa` (`id_siswa`, `id_kelas`, `nama_siswa`, `nis`, `username`, `password`) VALUES
(1, 7, 'dandi', 1, 'dandi', 'siswa'),
(2, 7, 'ardhani', 2, 'ardhani', 'siswa');

-- --------------------------------------------------------

--
-- Table structure for table `tb_soal_ujian`
--

CREATE TABLE `tb_soal_ujian` (
  `id_soal_ujian` int(11) NOT NULL,
  `id_matapelajaran` int(11) NOT NULL,
  `pertanyaan` text NOT NULL,
  `a` text NOT NULL,
  `b` text NOT NULL,
  `c` text NOT NULL,
  `d` text NOT NULL,
  `e` text NOT NULL,
  `kunci_jawaban` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_soal_ujian`
--

INSERT INTO `tb_soal_ujian` (`id_soal_ujian`, `id_matapelajaran`, `pertanyaan`, `a`, `b`, `c`, `d`, `e`, `kunci_jawaban`) VALUES
(1, 6, '<p>1+1 =</p>\r\n', '0', '1', '2', '3', '4', 'C'),
(2, 6, '<p>2-1-1=</p>\r\n', '0', '1', '2', '3', '4', 'A'),
(3, 5, '<p>Penulisan kalimat yang benar adalah?</p>\r\n', 'kota bandung', 'KOTA BANDUNG', 'Kota Bandung', 'kota Bandung', 'Kota bandung', 'C'),
(4, 7, '<p>Me artinya?</p>\r\n', 'saya', 'kamu', 'dia', 'mereka', 'kita', 'A'),
(6, 8, '<p>Aku dalam bahasa sunda artinya</p>\r\n', 'abdi', 'maneh', 'naon', 'duka', 'teuing', 'A'),
(7, 8, '<p>sunda berasal dari suku</p>\r\n', 'sunda', 'jawa', 'batak', 'madura', 'cina', 'A'),
(8, 8, '<p>ngambek artinya</p>\r\n', 'naon', 'kulan', 'punteu', 'marah', 'duka', 'D'),
(9, 8, '<p>aing bahasa indonesia nya adalah</p>\r\n', 'aku', 'kamu', 'maneh', 'naon', 'dekah', 'A'),
(10, 6, '<p>1+1+1+</p>\r\n', '1', '2', '3', '4', '5', 'C'),
(11, 10, '<p>zdas</p>\r\n', '1', '2', '3', '4', '4', 'C'),
(12, 10, '<p>wefew</p>\r\n', 'rsr', 'dt', 'dt', 'd', 'td', 'B'),
(16, 18, '<p>Jika diketahui &radic;20 + &radic;x + &radic;125 = 10&radic;5, maka nilai x + 5 ialah&hellip;.</p>\r\n', '30', '40', '50', '80', '90', 'C'),
(17, 18, '<p>Nilai &radic;6 + &radic;24 + &radic;15 x &radic;135 = &hellip;</p>\r\n', '87', '77', '67', '57', '47', 'D'),
(18, 18, '<p>Empat tahun yang telah lalu usia Siska empat kali daro usia Tuti. Empat tahun yang akan datang usia Siska dua kali dari usia Tuti, usia Tuti dan Siska dan masing-masing enam tahun mendatang adalah&hellip;.tahun</p>\r\n', ' 8 dan 20', '8 dan 12', '14 dan 26', '14 dan 18', '8 dan 5', 'B'),
(19, 18, '<p>Berapa hasil dari perhitungan ini:&nbsp;<em>3log12 + 3log24 &ndash; 3log1/27&nbsp;</em>=&hellip;&hellip;</p>\r\n', '1', '2', '3', '4', '5', 'B'),
(20, 18, '<p>Nilai maksimum dari. 20 x + 30y, yang dapat dipenuhi sistem pertidaksamaan dari&nbsp;<em>x + y&nbsp;<u>&lt;</u>6, x + 2y&nbsp;<u>&lt;</u>8, x&nbsp;<u>&gt;</u>&nbsp;0 serta y&nbsp;<u>&gt;</u>&nbsp;0&nbsp;</em>ialah&hellip;.</p>\r\n', '110', '130', '140', '150', '170', 'C'),
(21, 27, '<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Bilangan berikut&nbsp; yang habis dibagi 3, tetapi tidak habis dibagi 5 adalah &hellip;</span></span></span></span></p>\r\n', '12045', '24789', '24670', '25223', '20579', 'A'),
(22, 27, '<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Kurva</span></span></span></span></p>\r\n\r\n<figure class=\"easyimage easyimage-full\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.0pt\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><img alt=\"\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAKYAAAAUCAIAAACI6NFeAAAAAXNSR0IArs4c6QAAAAlwSFlzAAAOxAAADsQBlSsOGwAAA4FJREFUaEPtWT16qkAUHd9a0MLPFeAKNI2Vrd1QamNnmY4GSulsX2UTWIGswM8isBffnV9+ZBgYeUqi0yQmzJx7z7lz7yEZXK9X9F6vxMCfV0r2nSthoKeSp5EzHZA1dfz0rVSnDPRS8tRffY4PMHKScBJs3KjTjF/+sEG/Z3nqT93RaT/70TpFjoP2/cmhl7dcCJz67mWn5wrqYqpp/6nPB8W9w6IBFkKRQ4eSWPPgWRUr5yOZkBGfkP2VHFT6GnVyOUCm4QYtE2hoYlgMnf89LXDI4OjSl61RUUBp1eUB83EeTEKSd+KhYL5i96KnkoPe7mi/hoYOXfFedZJLjPBibTFardnWs9H5++e7wuh4xgv1zIvcTWx72xnJ21rvMIqZLSKSM3cMN59xwttSBdNwXQodq/BB1Vuz5gIIviMdOP8530ZjEEdAeW6CYE6P76ArzhYYBZ+i9aeECrwTFVAThtHNM9mkoqj+LFB8UqN4+n1G9vKDFzoiJPBCv4Ye9KAECh/JXhRiZHu8D+bak8G39Fwb0+ZyhWPluUmIAYH8GpBCLB4xgCBdy9aFm4QkELbyWK3DaIAFidKsOaBNEq1ZSopKe+hzqlWRf57tAvuIH8zJZ9POA1aMyC9vKsISjNLBLA+dYLextMuf6CQxGMVFGWrDaIdVFopQUM46/4yWomoh9KWnlZxeQaZHiFV12Tb57ExeSbe5Fx8xqzNd+mWMYkujmI3D0GEpqlN5hRpQVEUK7Yv1bJVrTZaAtG904B0jlPrH8VYMulIfsdYnNczpZhOdJuMhP4S6CfmJ/RDAzmLCmAzBRntIGPXrIWFUhqCnSG4rGKl5EHOvw/xUhZHKDW9KtRztmWMfjsHHHh0XqQRvxG/5ofiSELzI94/wdTKywItzIwU5rND24Nnx368U1JcvjkZA6k3Wx9Im9o2/l1L7Bg5eWN3OwyDaSAmKaIVfiYhrKMonld23ik5ze98QNWzEpJNXExqGMHPZtS03f7MuW9jFTRM1TOCUpHeiUHx88DnKLZ4JaINmm3g4Z988ZieZn2wXRhMsyFp4N+LiBBpzSWUboaJITUQLq5WlnTORwr6RcLBuPJjo8YA9DWToLIr7sLp4FWowxuuzZZKTd5j2trkzHl/kILUvfigBA2g10OVxeNjTP9O8169noOf/Sfv1/D8hwZ7+jf0JTLwM5D/A31rTKVRkmQAAAABJRU5ErkJggg==\" width=\"166\" /></span></span></span></span>\r\n\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">&nbsp;memotong sumbu</span></span><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">-</span></span></em><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">x&nbsp;</span></span></em></span></span><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">di dua titik berbeda adalah&hellip;</span></span></span></span></p>\r\n', 'a<16/5', '6a<3/12', 'a>16/5', '3a>1/2', '3a>2/5', 'A'),
(23, 27, '<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Garis dengan persamaan mana saja yang memiliki gradien yang sejajar dengan garis&nbsp;</span></span></span></span></p>\r\n\r\n<figure class=\"easyimage easyimage-full\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.0pt\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><img alt=\"\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEwAAAAUCAIAAACoKEzmAAAAAXNSR0IArs4c6QAAAAlwSFlzAAAOxAAADsQBlSsOGwAAAbVJREFUWEftVjF2gzAMtXuWpEOPYE7QrVNXNjySJVvHblnMmG5ZM3WpfYLmBJ2K70JlMMEYAwb8mvdoNRlsS/r6XwJcFAVau92tHaDC9w9yLSz/QSZlFmFMxXwGwUGUyfn3w9yUGY1MFCaTMot3lzBhbuZFChrh7e6thaMBKWh8fmbJzdILEBgYPHw/nQpuoahBCvqKXj7TeztUWRmMtQbLh6V61B5rPQkK/p1NUjZPn7my2KTHY/q46ZYLfgaKnBGScLVSNahWpeU8YbnaRoTBGg7l1z3nQnmCGwPGGfhXHps4EHTk0nDQzq6FokAVxDoxvQ2vDKhVTn2JVJs91pe8rltVyXawiYBcx7sgbQHrdE2QNsH9eYwzqe82efBEqcVls8rn0KNi0jS7BrrUCZDlpShvkHXdctYHcQGjNorRnwHo/hjtT4xczh8SwfwSYT6D2weCvt7pAe1Tx6QIMGpNF0bBGuE2U4joQuu2HJs8/kyWVHqpYwKloAtiTAgYp2UnWHKd4HDmdL0Obpa02n5p5KH7gUH6pZrz0S+NnyPPU78M0lP1nsn7HsNKsmu30em6hgL8AMu0eUd+eFYYAAAAAElFTkSuQmCC\" width=\"76\" /></span></span></span></span>\r\n\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">&nbsp;dan tegak lurus dengan garis&nbsp;</span></span></span></span></p>\r\n\r\n<figure class=\"easyimage easyimage-full\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.0pt\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><img alt=\"\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFUAAAAUCAIAAABzk+bEAAAAAXNSR0IArs4c6QAAAAlwSFlzAAAOxAAADsQBlSsOGwAAAedJREFUWEftVztywjAQXecsMQWTE9gnSJcb0EklNHQp3aWxy6SjpUqDfAI4AVWsuzirjyNhSyAZhsmM2QrklXbfvrcrO2nbFiZsTxPGLqA/8E9bAA/+Bf+8rmieKMtpxUdrgld5Hr4dvZOE1qOjRW10Y0T+MYu0gLcN3gRt25TwtUrvkhOvFqtDFITxzn6MErVtjABkZTNYD1poyixwLyPoWWIswoJOvqmTwTjof/5zBHiZPeta81o2hha1/BMhcC9hNS3gfb+c9Rx0sE5+NZUd2VejbBufhWRnY3SwbxhpGEElIKlCEcgYYRd0EcS/cFIxBA8mGivxtwhm1tAhUE8R+rCjgr1PJOYKJ3PyJaIeesxxml0inQkuWTVX1dbTyHoQgfCMaw+jwa9YcfN7ytOF08/PDnGUw6wpYIIxIuQ3sNiKmwOGGDv8trhP6JB3AkGKg3QYpH+Tj7uuf6pwoh8vAxdGOf9woBTzzeerGnp8t4V52nGEzxaw3pTZYbvj6Enr8W8HgfdXOs/g+E0/YL3sxnDgzjNuPoyC3kEDK67lLaE50CPg0gCM4d90Qv8KvOoKdurDi/Fk/o2XVrczBr83Gvbb3V4Kboz/6go2LPgN6upY4oD/gz+ww26C2hySiBpM2Kb+/fsLVFU4UJ6ZNx4AAAAASUVORK5CYII=\" width=\"85\" /></span></span></span></span>\r\n\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">&nbsp;berturut-turut? </span></span></span></span></p>\r\n\r\n<ol>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">2y=-8x+2</span></span></em></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">y=3x-2</span></span></em></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">y=2x-5</span></span></em></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">y=-9x+2</span></span></em></span></span></li>\r\n</ol>\r\n', '(1), (2), dan (3) SAJA yang benar.', '(1) dan (3) SAJA yang benar.', '(2) dan (4) SAJA yang benar.', 'HANYA (4) yang benar.', 'SEMUA pilihan benar. ', 'A'),
(24, 27, '<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Lima kartu diambil dari sebuah kotak yang berisi 3 kartu merah dan 8 kartu putih. Misalkan B menyatakan kejadian terambilnya 2 kartu merah dan 3 kartu putih dan <em>P(B)</em></span><em><span style=\"font-size:12.0pt\">&nbsp;</span></em></span></span><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">menyatakan peluang kejadian B. </span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Berdasarkan informasi yang diberikan, manakah hubungan antara kuantitas P dan Q berikut yang benar? </span></span></span></p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:center\">P</td>\r\n			<td style=\"text-align:center\">Q</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\"><em>P(B)</em></td>\r\n			<td style=\"text-align:center\">4/14</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'P > Q', 'Q > P', 'P = Q', 'P = 1/14', 'Tidak dapat ditentukan hubungan', 'A'),
(25, 27, '<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Jika diketahui</span></span></span></span></p>\r\n\r\n<figure class=\"easyimage easyimage-full\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.0pt\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><img alt=\"\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGIAAAAUCAIAAAD5vH+FAAAAAXNSR0IArs4c6QAAAAlwSFlzAAAOxAAADsQBlSsOGwAAAjdJREFUWEftlztygzAQQNc5i+PC4xPACTxpUqVNB6WrdC5zACiTzq0rN8YnMCfwuAjchexKAgQW+sVDMhm2sRH70T6tpGVWVRVMYiLwYFKY3hOBCZNVHUyYvDCVaRzOmMSnjgN6EaalzmmZhmGcnrQ6VpP6g0p4hDdSJAEESVFV+If9CqFH+Vm26f13UNV4GedVkURBlPUTyHBUrFMQ1RBA0soigBszxkw1PJjKgJtxUreMUmSCRTdfXicZLxB6qIG0mNASeC11pKkwywkI/5bFZ+/0jppYRRGxMK5nS0RgooFWJMRKSmItBAq2MB0sw2j5Cg2IEq0p1g/wmTCxyXIWbTWpjRSjOHGsOYECGUWiSM3b1z0li1juTmsLAyb5dYNJXQGaLccLQ725PHaqNltdrPYYcSlSstJh6l1Fdd9UHvd58PI0t7+L54sVluR242ACgD0DbzdUMtxvmGLNN+dhzGe3KSIBnOXrdbuTDGtMxTWH1cIh5TI9XAAuX25dkl8+frHsV7yreYqJ0ceaYCAw1j8KTKfDJ0TP6xvPtIz5teiPE2542yVBvj+W6Cvu9ZTO0DUpmWL50lDbYbT3pWCElI57WD6SJitWdS9Q7/rO+cNURdsljoybM/xeR5NNLJ8TnPpK6cYNmjZScRHz5BkmXVoeKXuY+CQ7pg1iGugrm1mY2ov+dF31x0zXNxZQX6lqfWSHDuXhoOo75d+wk7/pdPEL+iI0fIFQr8G+Av6fzOh8msRE4BtOjMIHoKJETgAAAABJRU5ErkJggg==\" width=\"98\" /></span></span></span></span>\r\n\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">&nbsp;dan</span></span></span></span></p>\r\n\r\n<figure class=\"easyimage easyimage-full\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.0pt\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><img alt=\"\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG0AAAAXCAIAAACOI1amAAAAAXNSR0IArs4c6QAAAAlwSFlzAAAOxAAADsQBlSsOGwAAAvZJREFUWEftVz124jAQFnsWkmIfJ7BPwEuTKi2dXULDDdKlscuk25aKJugE+AQ8ikh3YWck2Zb/ZA1od8lbq+EB4/n5NPN949nlcmHTuRmBHzd7mBwgAhOOYfpgwvG/x5Gns/s537cf+f6UCVDJ+zjfFkf5dVo8zsMMZQAvFBxlnsZxLl1RZR7Hac6dNgGyZkx+7hbPy35XPE15kCAUJ55jIbIoivzmiGDqGbxrBjGSQ/XzIWlVbP1HC4G5j1cpDkkUmZBgj4kwrzjgnlFyw8Io9l5J2EZQiFVuuHAeOCIWgJ2mZvyiSvWZa5mvNizbDkxRX/Mvt1n08eqmAMrQtG1BY16e/hE5ztfHy3G91NHnTy+6MS0cJU9jvUjEKQeOKWEAKiqidtrG2NCletKmTvRf7D77eBIodHhdGaBfKRueCDCO5HnLZTIJzle7xUG8Q4uZaVENWrYrzkk9Nz1TAwQBY6U7HMkiMW1ujV6oWRNZom7cookmOULMg0reMFaEqZVVjefZpBSPuVYPVIxcRjM4OpAzaPVRmGaHfmJ2PEZiQwGgqDgVkB0YbX9wq03QaxYbEBBdxMAZER0dDY00js3maaqKCxBH0w0+dlXe1j07YSypvyVy3sPh24/11ZnMFD/CTsuinw/mTvjbpqi/ORhE5vsTY6cv2raIPD14jut+9Vg+J8zwrTizKlU/ersuTz/fpVWlM8VZIKI8z/fwab0qzB8XTP/ZOCAXK7b9lWk5gRW9tXyLc2F7oWXVtcYNoNi8cdnVGBSuSp8kdgFL6hV9LE9yYs1w+esHUyKsWwO0Ah2iYHR2xc6EqlY2bG4osiM0oeixpVzwMtChLAEyU63FIDflbqfYaizP1mT4zDXEs9ZwgwNDCG026VNnrcsUefgDMBqRJCZCSVqT63UBGGJkS2Gv/nrztEmbau9ZLfW1ytNtCDMGV6BnWh17+Wq4JzQYwTREBffhw+/9WuWqecE93zgXSUVQ91HiX8liBlHIkjU90EHgNzKdZQaE6wLiAAAAAElFTkSuQmCC\" width=\"109\" /></span></span></span></span>\r\n\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">&nbsp;manakah pernyataan yang benar?</span></span></span></span></p>\r\n\r\n<ol>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">g o f</span></span></em><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">-1</span></span></em><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">23</span></span></em><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">=16</span></span></em></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">g o f</span></span></em><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">-1</span></span></em><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">3</span></span></em><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">=</span></span></em></span></span><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">&nbsp;12</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">g o f</span></span></em><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">-1</span></span></em><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">18</span></span></em><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">=15</span></span></em></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">g o f</span></span></em><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">-1</span></span></em><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">8</span></span></em><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">=</span></span></em></span></span><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">&nbsp;13</span></span></span></span></li>\r\n</ol>\r\n', '(1), (2), dan (3) SAJA yang benar.', '(1) dan (3) SAJA yang benar.', '(2) dan (4) SAJA yang benar.', 'HANYA (4) yang benar.', 'SEMUA pilihan benar. ', 'A'),
(26, 27, '<figure class=\"easyimage easyimage-full\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.0pt\"><img alt=\"\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIsAAAAfCAIAAABYjKn9AAAAAXNSR0IArs4c6QAAAAlwSFlzAAAOxAAADsQBlSsOGwAABEJJREFUaEPtWj12ozAQxnsW24WfT2CfIM9Nqm3TQUma7Vymc2NKb5c2VZqIEzgn2JfCcBfv/CAkQAIZyDOOUUWCNBLzzXwzo/HkfD574xiwBn4N+Gzj0VADI0JDt4MRoZ4QSuMoCOK0B2lpHASRJgji0D2NZL9asRZX/j5p9eWJ8FmEJgH+5SQNt3eZCPN8wae7Nx9KvrzfBIxY/n37aGHyafT0sngFAQlIeN7FCFUavXjbcNqD/0gR03DrvbAj3RtCD4cjqjKNT56/3ZBS02g9maxRHXEATwEp3Tqm4ZEkeNPZYuU/PqCAj7clPfAgeZmYOMgf7SJpkhxy+9nCyyyolaPf9CLhFyhKCHFG8vF9fy8SsUcSgr/LCi2TU7L3JQ+BQPmIriVEguv5XzCtSaCcAkzpC0W8Uqp308puf3gIJp6mV9COU3zINkSlZmECCVNHiGfIeMOAq2GJQxjaymFRSr0zlgMGIj4jjkI3iaMoTqPg3Vt+AqmksUM2BtN380MItAZJF1JiJkr3uul8+fmVxMFp3hieIHVb705/jocwCfhszJWnf6vFDJ/am2G3lWAimdW65jfd9pPWLxMxyMTAC5CO2HqJ+xz8qEiAksryzEsekgRXs7bKt5rEkYw8O7wmQhl5K6x6weAqQlS2TbxGrKVo8PIjadn2xQgZSPfyAyiiZjPu9DVttu9/DeQYmGmQT7QutTiGCchZVPQihLIaLPNK4oGqh+IkNA9MTuA4hsjKBJIbD+dMFe0b8iSaZ2KYTIRi+CKUNlFWef0D8/0SASFQPWmeiLOU8hUPgHYCSY8HqSmYS+lw8I7SVg0TO39pfFzjlDpr1x7s+/V0vR0Uy7FB1sZKxA8HVQ7mM+sRUiPT8mQFi1Oe0Bc89qpxwG+U7ooVQgWAnOWQxrBeM98vKSlFOtWTHJM67KZhh+deWI51Bzo3hh+79VscP4Moq5TNk9xdqC/vuR5Ldd2ZWY6pRjIUKNdGYg7bcYlhczG5nUwgalNDDR68A/gBGZ+D/spTPDR5mR1moagLPiCfJNZesTtVq3lpKTnRoZxsoYCaJVqnwqVj0O/mubSL66HGc2hXio1zhz1Buu113bdfhMx10rBxaDpdsi/dftYusNz2NG1S876vm1Nuijy9z1+5e/IzBrS2o2QTbj4KbWn7t6XR7mtZaVx01EUHdH/a0sINhiy/Wb1OMZDKC72+4ysgvpelSp4DPWc8tJtD8tMvy900ZpZOWumbDDUYwwf4oOYZIbo/LfcGoc43NPeadDYipGvI1Elr0iC/LwOXO12lNyidrNzcs+0zIiQ1o9Bx/eGOUac5ywECwGpQGFIjDJrj8p6MUkO4C3XsTowImXzAITxYTB4w4bDFhbupN3hhujeBnTrmGuNyRw1AYjgLN0nw9P54PKjfBjWs7ivbdjzkPU9LT2/PM/5JgjM8oK/Rh4ZuNP8BHrd7NlU4t7IAAAAASUVORK5CYII=\" width=\"139\" /></span></span></span>\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">manakah hubungan yang benar antara kuantitas P dan Q berdasarkan informasi yang diberikan? </span></span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<table cellspacing=\"0\" class=\"MsoTableGrid\" style=\"border-collapse:collapse; border:none; margin-left:48px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:308px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\">P</span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:308px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\">Q</span></strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:308px\">\r\n			<p style=\"text-align:center\">1*0#5</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:308px\">\r\n			<p style=\"text-align:center\">-7/25</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'P > Q', 'Q > P', 'P = Q', 'P=2Q', 'Informasi yang diberikan tidak cukup untuk memutuskan salah satu dari pilihan di atas.', 'A'),
(27, 27, '<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Diketahui segitiga </span></span><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">ABC</span></span></em><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">&nbsp;&nbsp;</span></span></em></span></span><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">dengan </span></span><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">&ang;</span></span></em><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">B</span></span></em><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">=20&deg;</span></span></em></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Apakah segitiga </span></span><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">ABC</span></span></em><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">&nbsp;&nbsp;</span></span></em></span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">siku-siku? </span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Putuskan apakah pernyataan (1) dan (2) berikut cukup untuk menjawab pernyataan berikut. </span></span></span></span></p>\r\n\r\n<p style=\"list-style-type:none\">1.&nbsp;<span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">&ang;A+&ang;C=20&deg;</span></span></em></span></span></p>\r\n\r\n<p style=\"list-style-type:none\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">2. </span></span><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">&ang;A=70&deg;</span></span></em></span></span></p>\r\n', 'Pernyataan (1) SAJA cukup untuk menjawab pertanyaan, tetapi pernyataan (2) SAJA tidak cukup. ', 'Pernyataan (2) SAJA cukup untuk menjawab pertanyaan, tetapi pernyataan (1) SAJA tidak cukup. ', 'Pernyataan (1) dan (2) cukup untuk menjawab pertanyaan, tetapi salah satu dari keduanya tidak cukup.', 'Pernyataan (1) atau pernyataan (2) SAJA sudah cukup untuk menjawab pertanyaan.', 'Pernyataan (1) dan pernyataan (2) tidak cukup untuk menjawab pertanyaan. ', 'A'),
(28, 27, '<figure class=\"easyimage easyimage-full\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.0pt\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><img alt=\"\" src=\"data:image/png;base64,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\" width=\"303\" /></span></span></span></span>\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">nilai dari </span></span><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">a</span></span></em><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">-</span></span></em><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">b</span></span></em><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">= &hellip;</span></span></em></span></span></p>\r\n', '-1', '0', '1', '2', '-2', 'A'),
(29, 27, '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Gerry mendepositokan uang di sebuah bank BUMN. Setelah 9 bulan, jumlah tabungan depositonya bertambah menjadi </span></span><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">Rp9.10.000,00.</span></span></em></span></span><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">&nbsp;</span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Jika suku tabungannya 8% pertahun, tentukan tabungan awal Gerry!</span></span></span></span></p>\r\n', 'Rp8.500,000,00', 'Rp9.500,000,00', 'Rp7.500,000,00', 'Rp6.500,000,00', 'Rp5.500,000,00', 'A'),
(30, 27, '<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Jika diketahui&nbsp;</span></span></span></span></p>\r\n\r\n<figure class=\"easyimage easyimage-full\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.0pt\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><img alt=\"\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG4AAAAoCAIAAACQOFjdAAAAAXNSR0IArs4c6QAAAAlwSFlzAAAOxAAADsQBlSsOGwAABMVJREFUaEPtWj+aqjAQxz2LbOHnCfAE+hqrbe2g1MbO0s4GSulst6JZOIGewM9i4S6+mSRggCAJiexzn2l2kWQy88v8ywyD6/VqvYYJBN5MEHnRQAReUBrTgxeUD4cyS7zJZEDHZBIkOhtmAVDIdCjU10rTzAJv4mmxL2Ac0cnB8RImGq+VuOsAhQY+7e1oc4CQdL2mvnVazYxzYxZZITUisL0KT4b3yoLFLBzHKQUnnC2YnhC4YMSuYzkueV8Zqe9YlhvXX8j+AgQcX0BYdr1oXivN1HddH8SJXT3m65sjxZs8+ETRYVqZeLPQ8g/76bB8ghmc7OITTmA/zV8w5WYmSzRd13ypuRR2mHjEePQMYbjc75dVcUTqCSbIbFXwRyBZ9n22nI8/OVDTOWB5/gYjp1AmUWi5m2UJRyKQbQPE45FdvMmS3ff6CDpx+vxCUKM5uIFjeaWiPSVBNCcUw4j6tOkejtrx18XpKRJUmz5cHpvNQyBZemlyGNS4eZUtE06JBlcNlBh97dfbSvq+YQitHVfkL+B/gUNRp5nLpuOdajBXwSqeUStRZa3xe8W2GQ5DoiOogzwww/cxeIiKHnMTSkdd9WtCJUaKp0tKbGR3+RCopDpNKfVUNXAkyhgt0++WV2ZBBOgTD2FsoNNBEwfao7WWx1BjSdXAb86R7HNznQWUPC54UIXDzYJtyPtZTJUW1vpA3SU8FYmVmgi12fbIsc6Rt7P6BLIDz4jlabUj6SSEjtUpD0JCX5nGvuvk3s5xi0yG+AX2yNylMH+quFvJZOieyxZkaC0JFmRDhQjo1zkxdLIwlmtD6kgGR9WiWbhm5nift9YckC7HTFA6e5WkqQ2aAgECJQnhWlm4wo7CqWAG5tN4XaYU11NfiW7KcBSRdUI0gC6i94Nediq73+PmUShJbvMzgwbQY+2e9TPc6OzKIjhRy9fQQoBBibehpiRdi/5/tHgA1gV3aXt29tNnd1Y/fGwDiN6DF44mTuEN6jBpPF7ZuoUyE8w8OQ2aPJkvkDYkZVBoogHO5OVDMQF80HQugputTgg1DEr52xH2OcAQQrjGPrkaltnnIngPckESSWPbELIvd95PbbcHucgWFMq7FcsHsJIFu8vm1uPQ3iFLsMPH+qOe6e6mLHuFqzTeyWpySVC28KXLFhJ+jdbfWYOP1qvkyyIS9GWn9FEZ4nm5lX9ihTqQrDR5BO1NLXjGCJQqhcJWqWiILpozpOiU60m5PSPSnW4NHI6pesGwSBqQKWzpsj4y+53BTtjWOgKE0mS5EniNKwRJ+9BwG7zxQKtZHZEt7+/zKgNAAlOsOQc4SpSwW7TINJR0u/b2Yatyd5mA9eDyqZXtDdmqmEJb61SBDfMGXkn5wSWqqGR3A0ccq6pV1lEBkiYvJ48KO0wIjNa92DZvokUbnTcOcUTABpCmiyz0luSVw+WGNk7NjV7bh1CJh0tUXj3Ovj6tkZ2LQlvWkHgGEfyFQiK0SFniabp1moNKm4miz68U3AU31WhWcJcFgU8oHCa0jOiFHwRj35kQGbu1Tu8jQdtkebDAr9nMGKRS+7DbYf1rq7D0a86sKSWwpsXWevq2lyos3T50adrl97QPVXGE+Y/Qyg5s/IYlfwEvEd93CWT3aAAAAABJRU5ErkJggg==\" width=\"110\" /></span></span></span></span>\r\n\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">manakah batas-batas </span></span><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">a</span></span></em></span></span><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">&nbsp;agar setiap sistem persamaan tersebut mempunyai himpunan penyelesaian paling sedikit satu anggota </span></span></span></span></p>\r\n\r\n<ol>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">a&le;0</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.0pt\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">a&gt;0</span></span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.0pt\"><span style=\"font-size:11.0pt\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">a&ge;6</span></span></span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.0pt\"><span style=\"font-size:11.0pt\"><span style=\"font-size:11.0pt\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">a&lt;6</span></span></span></span></span></span></span></li>\r\n</ol>\r\n', '(1), (2), dan (3) SAJA yang benar.', '(1) dan (3) SAJA yang benar.', '(2) dan (4) SAJA yang benar.', 'HANYA (4) yang benar.', 'SEMUA pilihan benar. ', 'A'),
(31, 27, '<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Yana menabung di Bank Syariah dengan menerapkan bunga tunggal 15% per tahun. Jika Yana menabung sebesar </span></span><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">x</span></span></em></span></span><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">&nbsp;juta rupiah dan setelah beberapa tahun tabungan dia menjadi </span></span><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">1,9</span></span></em><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">x</span></span></em></span></span><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">&nbsp;juta rupiah maka Yana menabung selama &hellip; tahun. </span></span></span></span></p>\r\n', '2', '4', '6', '8', '10', 'A'),
(32, 27, '<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Diketahui rata-rata dari 5 bilangan adalah 6. Salah satu bilangan diganti oleh 10, maka rata-ratanya menjadi 9. </span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Manakah hubungan yang tepat antara kuantitas P dan Q? </span></span></span></span></p>\r\n\r\n<table cellspacing=\"0\" class=\"MsoTableGrid\" style=\"border-collapse:collapse; border:none; margin-left:48px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:283px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">P</span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:286px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Q</span></span></strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:283px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">0</span></span></em></span></span></p>\r\n\r\n			<p style=\"text-align:center\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:286px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Angka yang diganti</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'P > Q', 'Q > P', 'P = Q', 'P=20', 'Informasi yang diberikan tidak cukup untuk memutuskan salah satu pilihan di atas.', 'A'),
(33, 27, '<figure class=\"easyimage easyimage-full\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.0pt\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><img alt=\"\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAF8AAAAjCAIAAAB9zkEYAAAAAXNSR0IArs4c6QAAAAlwSFlzAAAOxAAADsQBlSsOGwAAA8BJREFUaEPtWr2WqjAQDvsscgsPT6BPoDZWtttBiY3dltvZQKndtlbbCE8gT+CxMHkX7ySE/wRCQFbOMc0CDhPyzcw3P2eNx+OB3kuCwMcbmRoE3ujUucdQ6BB/PjfYmvtkNP46FDr4FlkBcFxgRzc8GnSMQVmZ+P555bqTscAzlO8gRELfxyt3dXZUQwuiUSkOadSWdeYiWXm/qs2GQof4n8vtdmka5vaq5jnE39+smZpsVQrf0AZDXDwC63g66zLdU9ChRo+tHjpw5YQITdwL/Va6LiqRFTp7tNtNs2MLdNYhtziwbUh4R/bXSjeUn4FOiP9dsIdOe8e5r38Cb2pKzsFOXFxxiITO7/qQgAgRSZBIZ/K6uY2irVlJiKFjGObyhKamLjgIJRbt+29gz2Ye8+3WC3vFgEr1SHSCvHQrHNgI2TRb6qwPboD+qhAwdUh85xdZEQQ8CcPWQZ9GIT/2xcVtdaZEPTGn2twFTgyQUlsl4OevddCOldnUa6jVUr06urDHNTToFPkO+AxHZabtOdCB9o2ODgwv+06ZlalXKyUV3VQ7qveK6FCah0VTMOQNfk1YWk46JKAUdjdnQqNegpSZJdCYiEuRxdgiiVR6DRwS0NQTJ5KYUR4sE+impJeNo+qHNdY71tpd0HphstoA3W52rAqRZoJy+fJi921dvRGddgpf3C+Kh2mOrJ7RaYflH0vnupuqVVlq6oBO+0ENMLojKg55AlALQ3VIIZ106M/ZPnHRRhdwcVrDA+Pmr3lpx6WyV9oQM9R2kroskP3QQ5yCbs1+hm7+tD6rdLKaXuiZ4MBXQNGsjU+HyFJ3cZgknE/Wl3hyQe7QRYOu7vMqsYbF2tIe8AyDDoATQ1Bd5HybsvlL93mVRIM5RdrwtI9tGiTxKXltWFTB+Io5M2sEGdcAt2Wcgz0PfuD3wEZFv8cB5ad49CFS1fy9eQ1MurB78/s5CVXfoXMJbvh6IzePviaue/jxrt+0VE89h+kuzaskqqQzs6qGNsEvlFU2EXhCIedUTJTDvDymEliPPap4TtKlZDtpTNHKE69OviMykaACWR6j45K3ntKhpProa7G2r9+fnHM4KbPGL+lS1FVxq/c18co7Ebd4s4nKvhO3osUSRjamEubz0sPSvEpjiiaZeNUNVhtYCAUe9OBAhLZNqRQHnBDLr1Gx+Fm2GT2A4uANRBUlW7GmknCHgge1H3RqDSX/Dp4O4AxWK1Ofe2LDIHWicXQSPCjTUkYpJjoKgZN3abJg92H/y6Bz/TGwgv+tZDCe98eCxgAAAABJRU5ErkJggg==\" width=\"95\" /></span></span></span></span>\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n', '(-3)/4', '2/9', '9/2', '3/4', '4/3', 'A'),
(34, 27, '<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Diberikan kumpulan data</span></span><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">&nbsp;</span></span></em></span></span></p>\r\n\r\n<figure class=\"easyimage easyimage-full\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.0pt\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><img alt=\"\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAD0AAAAUCAIAAACxo6JAAAAAAXNSR0IArs4c6QAAAAlwSFlzAAAOxAAADsQBlSsOGwAAAeVJREFUSEvtVTtygzAQlXMWk4LhBOIEOI2rHEGUcZPOZbo0ojRdWldpDDfgBIwLw12cXUl8hCRGmXgywZNtgNVq9+2T9rG6Xq9kgfawQMwI+R/37x7cvfHdZmmcllMO2zKNV9JgtbVRjCF9TJwZKQgpU5VieMSZNdfcEYKeTKwpGBU7WKGvNBz8rGjAK14px9exoZtyEaFijCS4VeaQVjCzkInJ8BCjMmNY2JIOXQNU/DJBGV38PMTexBS3mwbJpU6UyXi3v8FT04i11Z/mtMT0p08gGwdSJQL/uWzOlZ9kiPsbBJucRGGwnttTvu8qtn9xx7RZHGzqSF6rPdns6vBJRvvj9gMNUclBXu8iynfBzMS12VtO+WviTox9Uf5xSATWIKQkelRNfg93dW684a+TA8xAdTw5pEKAelb0WbOWnzkZjqM9HSu27br0x51sYRLrS4eivdRkvuxsh0j2CJRVUbFCGKgl0Wb/RfznUkpWp4OauPTjpc2ZrpX6COra1A+zNvpKdsWV4zCRQr4aLifTwA0LVMq3MNCEkYbgovLr7k5qoMKwfbJ1JEcO0TYkC/8SgAH1HnSle8U2XXx7SP8QAindijj8X24So9LdAHfRi6q72VvF9BVWyPkCzV9P/lZzS8X9BesZhlUM2RZBAAAAAElFTkSuQmCC\" width=\"61\" /></span></span></span></span>\r\n\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Berapakah banyaknya dari empat pernyataan berikut yang bernilai benar berdasarkan informasi di atas?</span></span></span></span></p>\r\n\r\n<ol>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Rata-rata kumpulan data tersebut 6 bila </span></span><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">a</span></span></em><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">=0</span></span></em></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Median kumpulan data tersebut 3 bila </span></span><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">a</span></span></em><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">=7</span></span></em></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Jangkauan kumpulan data tersebut 7 bila </span></span><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">a</span></span></em><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">=2</span></span></em></span></span></li>\r\n</ol>\r\n', '0', '1', '2', '3', '4', 'A'),
(35, 27, '<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Diketahui</span></span></span></span></p>\r\n\r\n<figure class=\"easyimage easyimage-full\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.0pt\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><img alt=\"\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAUCAIAAABAqPnNAAAAAXNSR0IArs4c6QAAAAlwSFlzAAAOxAAADsQBlSsOGwAAARtJREFUSEvtluENAiEMhTnHgn1wHVyGGwZ3wbbcHQXBAMGERPvvEtr39bWgm/derBe39ZCQ6I/VM5cfdeu535XaQij12Fstg5v4tXBGCmmsIwH8EELbJjXRdGrKIeLqwLIa+5BnhtXkdKFAaLgS0gRXiuEciIACO3LIxGpcUHhr4DvtBDI+inSZd8lLzcFB8dIA5IQYXvhDIqzBtQWNXnfwgV04kndL35nwh+esjFkBxuqkLSY9PkQqghIZV5GJY1ESjbMG1WFN+WiOVWNKsGiMuurUCBTfjLC+0SzGhPPNtoY9EAWPR1h4joP7JM/by1Y+3H0W+c5FLJje/EUf7StgQVfxuo6Wmpkn6IXMn42ZCkO1Nlz79WLRPzYvC9MkxHc1QBoAAAAASUVORK5CYII=\" width=\"50\" /></span></span></span></span>\r\n\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">dan&nbsp;</span></span></span></span></p>\r\n\r\n<figure class=\"easyimage easyimage-full\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.0pt\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><img alt=\"\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEMAAAAUCAIAAABZIxdrAAAAAXNSR0IArs4c6QAAAAlwSFlzAAAOxAAADsQBlSsOGwAAAUFJREFUWEftVssNgzAMDR0rmaBT9JZO0D3CsYuEYcIuqR3HhKr8hJEoCJ8AxZ/37GdSxRjVKex2ChQI4kLyf628erJnT9rmaUxFZkzd5Fpgdx3KgtNKOx9S0fiilPX4rA4F46fYBKUg8RaRafoQo7epXfy6EmrIUV1iL71oev42onXEBj3YP2AKqDoHVdE7qLmHjbBMxpgHB0mgbJoETNjlm3ddciKTjfR37PB05aQ8fQMNWUMe+QhZGYcGHJXwnU7wI9XvbQG6hKCpMyXq2Kk1BPViYQJiqig+Jw1uOxwQa0weUorYfwhJmi+7XT8gHpDFUwugWJoyEH0ZkLzz8Pa2cIEny0Xbj7WYpbIRDqgswIrSvO8GFI9/GStcvFICZP5072qb2jzU633f8xIizU17crvmy4gVeFe4v05h57nVfwB+CaifVNj2twAAAABJRU5ErkJggg==\" width=\"67\" /></span></span></span></span>\r\n\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Apakah </span></span><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">x</span></span></em></span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">&nbsp;bilangan prima? </span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Putuskan apakah pernyataan (1) dan (2) berikut cukup untuk menjawab pertanyaan tersebut.</span></span></span></span></p>\r\n\r\n<ol>\r\n	<li style=\"list-style-type:none\">\r\n	<ol>\r\n		<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">x=3z-3</span></span></em></span></span></li>\r\n		<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:11.0pt\"><em><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Cambria Math&quot;,serif\">y-3z=0</span></span></em></span></span></span></li>\r\n	</ol>\r\n	</li>\r\n</ol>\r\n', 'Pernyataan (1) SAJA cukup untuk menjawab pertanyaan, tetapi pernyataan (2) SAJA tidak cukup. ', 'Pernyataan (2) SAJA cukup untuk menjawab pertanyaan, tetapi pernyataan (1) SAJA tidak cukup. ', 'Pernyataan (1) dan (2) cukup untuk menjawab pertanyaan, tetapi salah satu dari keduanya tidak cukup.', 'Pernyataan (1) atau pernyataan (2) SAJA sudah cukup untuk menjawab pertanyaan. ', 'Pernyataan (1) dan pernyataan (2) tidak cukup untuk menjawab pertanyaan. ', 'A');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_guru`
--
ALTER TABLE `tb_guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `tb_jawaban`
--
ALTER TABLE `tb_jawaban`
  ADD PRIMARY KEY (`id_jawaban`),
  ADD KEY `id_soal_ujian` (`id_soal_ujian`),
  ADD KEY `id_peserta` (`id_peserta`);

--
-- Indexes for table `tb_jenis_ujian`
--
ALTER TABLE `tb_jenis_ujian`
  ADD PRIMARY KEY (`id_jenis_ujian`);

--
-- Indexes for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `tb_matapelajaran`
--
ALTER TABLE `tb_matapelajaran`
  ADD PRIMARY KEY (`id_matapelajaran`);

--
-- Indexes for table `tb_peserta`
--
ALTER TABLE `tb_peserta`
  ADD PRIMARY KEY (`id_peserta`),
  ADD KEY `id_matakuliah` (`id_matapelajaran`),
  ADD KEY `id_mahasiswa` (`id_siswa`),
  ADD KEY `id_jenis_ujian` (`id_jenis_ujian`);

--
-- Indexes for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`id_siswa`),
  ADD UNIQUE KEY `nim` (`nis`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indexes for table `tb_soal_ujian`
--
ALTER TABLE `tb_soal_ujian`
  ADD PRIMARY KEY (`id_soal_ujian`),
  ADD KEY `id_matakuliah` (`id_matapelajaran`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_jawaban`
--
ALTER TABLE `tb_jawaban`
  MODIFY `id_jawaban` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `tb_jenis_ujian`
--
ALTER TABLE `tb_jenis_ujian`
  MODIFY `id_jenis_ujian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_matapelajaran`
--
ALTER TABLE `tb_matapelajaran`
  MODIFY `id_matapelajaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tb_peserta`
--
ALTER TABLE `tb_peserta`
  MODIFY `id_peserta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tb_soal_ujian`
--
ALTER TABLE `tb_soal_ujian`
  MODIFY `id_soal_ujian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
