-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Apr 2018 pada 14.46
-- Versi server: 10.1.30-MariaDB
-- Versi PHP: 7.2.2
--
-- Database: `castle`
--
CREATE DATABASE IF NOT EXISTS `castle` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `castle`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_info_post`
--

CREATE TABLE `tb_info_post` (
  `id` int(11) NOT NULL,
  `Username` varchar(20) DEFAULT NULL,
  `Judul` varchar(100) DEFAULT NULL,
  `Jenis_Post` varchar(15) DEFAULT NULL,
  `Jumlah_Komentar` int(11) DEFAULT NULL,
  `Jumlah_Share` int(11) DEFAULT NULL,
  `Jumlah_Tanggapan` int(11) DEFAULT NULL,
  `Jumlah_Campaign` int(11) DEFAULT NULL,
  `Jumlah_Donasi` int(11) DEFAULT NULL,
  `Jumlah_Kunjungan` int(11) DEFAULT NULL,
  `Tanggal_Dibuat` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_info_post`
--

INSERT INTO `tb_info_post` (`id`, `Username`, `Judul`, `Jenis_Post`, `Jumlah_Komentar`, `Jumlah_Share`, `Jumlah_Tanggapan`, `Jumlah_Campaign`, `Jumlah_Donasi`, `Jumlah_Kunjungan`, `Tanggal_Dibuat`) VALUES
(1, 'Udin123', 'Aduan Mahasiswa Indonesia Terhadap Kenaikan BBM', 'Video & Text', 334, 40, 30, 20, 11, 100, '2018-03-30'),
(2, 'Bambang777', 'Tolak Hak Angket DPR Terhadap KPK', 'Text', 580, 100, 60, 40, 15, 4590, '2018-01-13'),
(3, 'Suryati555', '#saveibunuril Dari UU ITE', 'Text', 600, 80, 60, 40, 19, 1500, '2018-02-14'),
(4, 'Marwah345', 'Tolak Kenaikan Biaya SPP Mata Kuliah untuk Mahasiswa Universitas Terbuka', 'Text', 800, 100, 90, 50, 20, 1200, '2017-10-30'),
(5, 'Rudi665', '@DPR_RI DARURAT Perlindungan Satwa Liar! Selamatkan Satwa Indonesia, #RevisiUUKonservasi', 'Video & Text', 800, 200, 100, 90, 25, 2400, '2017-08-23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_isi_post`
--

CREATE TABLE `tb_isi_post` (
  `id` int(11) NOT NULL,
  `Username` varchar(20) DEFAULT NULL,
  `Judul` varchar(100) DEFAULT NULL,
  `Isi` text,
  `Komentar` text,
  `Tanggal_Dibuat` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_isi_post`
--

INSERT INTO `tb_isi_post` (`id`, `Username`, `Judul`, `Isi`, `Komentar`, `Tanggal_Dibuat`) VALUES
(1, 'Udin123', 'Aduan Mahasiswa Indonesia Terhadap Kenaikan BBM', 'Secara nominal, penghasilan rakyat telah meningkat tajam, tetapi karena terlalu seringnya harga BBM dinaikkan, pendapatan mereka di gerogoti oleh tingginya inflasi kumulatif. Mungkin Indonesia merupakan negara yang paling sering menaikkan harga BBM.', 'kasian orangtua saya kalo semua harga naik! Top markotop bro! BBM sumberdaya alam yg tidak dapat diperbaharui akan cepat habis!', '2018-03-30'),
(2, 'Bambang777', 'Tolak Hak Angket DPR Terhadap KPK', 'DPR RI pada hari ini Jumat tanggal 28 April 2017 melalui Sidang Paripurna mengesahkan Hak Angket yang ditanda tangani 25 orang Anggota dari 8 Fraksi. Hak Angket tersebut ditujukan kepada KPK terkait permintaan membuka rekaman pemeriksaan Miryam S Hariyani dalam kasus korupsi KTP elektronik.', 'Hancurkan para mafia-mafia berdasi!! matikan koruptor! Hukuman Mati untuk para Koruptor, Itu lebih baik!', '2018-01-13'),
(3, 'Suryati555', '#saveibunuril Dari UU ITE', 'Di pulau Lombok, seorang perempuan bernama ibu Baiq Nuril Maknun yang dilecehkan secara seksual oleh atasannya H Muslim malah dituntut ke pengadilan oleh pelaku pelecehan seksual tersebut dengan pasal karet UU ITE. Ancaman pidananya tidak main-main karena ia bisa dipidana 6 tahun penjara dan denda maksimal 1 milyar rupiah sebagai penyebar materi asusila.', 'Lindungi perempuan dari kejahatan seksual apapun bentuknya #SaveIbuNuril! Hancurkan kezaliman! Jaman sekarang yg melakukan enak2an bebas yg mengungkap fakta malah ditangkap!#saveibunuril', '2018-02-14'),
(4, 'Marwah345', 'Tolak Kenaikan Biaya SPP Mata Kuliah untuk Mahasiswa Universitas Terbuka', 'Teringat jelas ditahun 2013 dikeluarkan aturan Permendikbud no 55 tahun 2013 yang mengubah sistem SPP menjadi sistem Uang Kuliah tunggal. Kebijakan ini disesuaikan dengan kondisi ekonomi keluarga dan keseluruhan biaya sudah dibebankan di sistem UKT.', 'Saya ingin pengajuan penurunan ukt di penuhi! Saya sekarang semester 9 dan akan mengikuti sidang sarjana pada bulan agustus, tetapi saya masih harus membayar penuh ukt! Karena bagi saya itu menambah beban bagi orang tua baik itu yang mampu ataupun yang tidak mampu!', '2017-10-30'),
(5, 'Rudi665', '@DPR_RI DARURAT Perlindungan Satwa Liar! Selamatkan Satwa Indonesia, #RevisiUUKonservasi', 'Mengapa kasus-kasus ini masih sering terjadi? Sebagian besar karena instrumen kebijakan yang lemah. Kebijakan konservasi dan ekosistem UU No. 5 Thn. 1990 yang mengatur konservasi spesies dan ekosistemnya ini sudah tidak relevan. Sanksinya juga terlalu ringan dibandingkan dengan kehilangan nilai keanekaragaman hayati yang dialami negara.', 'Saya perduli dengan kelangsungan hidup flora dan fauna Indonesia! Hukum berat pelaku! Prihatin dengan keadaan satwa di Indonesia, habitat yang di musnahkan oleh pihak2 yang tidak bertanggung jawab! PENYELUNDUPAN HARUS DIBERANTAS!', '2017-08-23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `Username` varchar(25) DEFAULT NULL,
  `NIM` varchar(20) DEFAULT NULL,
  `No_KTP` varchar(20) DEFAULT NULL,
  `Organisasi` varchar(30) DEFAULT NULL,
  `Umur` int(2) DEFAULT NULL,
  `Kelamin` varchar(2) DEFAULT NULL,
  `Alamat` varchar(25) DEFAULT NULL,
  `Email` varchar(25) DEFAULT NULL,
  `No_hp` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `Username`, `NIM`, `No_KTP`, `Organisasi`, `Umur`, `Kelamin`, `Alamat`, `Email`, `No_hp`) VALUES
(1, 'Udin123', '0110212222', '3506230505610005', 'Tim Media (BEM UI)', 32, 'Lk', 'Jl. Bacang no. 13', 'udinoke@gmail.com', '0888123123'),
(2, 'Bambang777', '0110213333', '3506230505620002', 'Mahasiswa (Univ. ITB)', 34, 'Lk', 'Jl. Pisang no. 44', 'bambangkece@gmail.com', '08899445566'),
(3, 'Suryati555', '0110214444', '350623050563003', 'Tim Media (BEM IPB)', 25, 'Pr', 'Jl. Oleng no. 88', 'suryatihartati@gmail.com', '081244887799'),
(4, 'Marwah345', '0110215555', '3506230505640004', 'Tim PTI (BEM Univ. Brawijaya)', 23, 'Pr', 'Jl. Tikung no. 67', 'marwahsiti@gmail.com', '0813597110373'),
(5, 'Rudi665', '0110216666', '3506230505650009', 'Mahasiswa (Univ. Telkom)', 21, 'Lk', 'Jl. Hancur no. 99', 'ruditabootie@gmail.com', '087823923024');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_info_post`
--
ALTER TABLE `tb_info_post`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_isi_post`
--
ALTER TABLE `tb_isi_post`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);
--
-- Database: `phpmyadmin`
--
