-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 28 Mar 2018 pada 22.36
-- Versi Server: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database_smkmaarif`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(2) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `telepon` int(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`, `nama`, `telepon`) VALUES
(1, 'admin', 'eee3c9ae236e014639ced5407eb037ba', 'Anggar Sukma', 0),
(3, 'admin', '0e40322b93a31638368eb71f27a863e2', 'Miftahul Najat', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_agenda`
--

CREATE TABLE `tbl_agenda` (
  `id` int(4) NOT NULL,
  `deskripsi` text NOT NULL,
  `tanggal` varchar(200) NOT NULL,
  `tempat` varchar(200) NOT NULL,
  `pukul` varchar(20) NOT NULL,
  `keterangan` varchar(225) NOT NULL,
  `pengirim` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_agenda`
--

INSERT INTO `tbl_agenda` (`id`, `deskripsi`, `tanggal`, `tempat`, `pukul`, `keterangan`, `pengirim`) VALUES
(5, 'Pelantikan Pasukan Inti (Pramuka) SMK Ma\'arif 1 Kalirejo', 'Minggu, 25 Oktober 2017', 'Halaman SMK Ma\'arif 1 Kalirejo', '15.45 s/d Selesai', 'Pelantikan Pasukan Inti Angkatan 12', 'Admin'),
(6, 'Belajar Bersama Pemrograman Web', 'Sabtu 30 September 2017', 'Aula SMK Ma\'arif 1 Kalirejo', '14.00 - 16.30 WIB', 'Belajar dasar pemrograman web HTML dan CSS', 'Admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_alumni`
--

CREATE TABLE `tbl_alumni` (
  `id_alumni` int(5) NOT NULL,
  `nis` int(10) NOT NULL,
  `id_jurusan` int(2) NOT NULL,
  `nama_alumni` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tahun_lulus` varchar(4) NOT NULL,
  `status` varchar(100) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `kesan_pesan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_alumni`
--

INSERT INTO `tbl_alumni` (`id_alumni`, `nis`, `id_jurusan`, `nama_alumni`, `alamat`, `tahun_lulus`, `status`, `keterangan`, `kesan_pesan`) VALUES
(20, 0, 6, 'Adi Hidayat', 'Lingga Pura', '18', 'Kuliah', 'STMIK Pringsewu Lampung', 'kesan pesan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_baner`
--

CREATE TABLE `tbl_baner` (
  `id` int(11) NOT NULL,
  `link` varchar(225) NOT NULL,
  `gambar` varchar(225) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_baner`
--

INSERT INTO `tbl_baner` (`id`, `link`, `gambar`) VALUES
(10, 'http://', 'mmm.png'),
(12, '', 'dhfalk.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_berita`
--

CREATE TABLE `tbl_berita` (
  `id_berita` int(3) NOT NULL,
  `id_penulis` int(11) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `judul` varchar(75) NOT NULL,
  `gambar` varchar(225) NOT NULL,
  `isi` text NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `tbl_berita`
--

INSERT INTO `tbl_berita` (`id_berita`, `id_penulis`, `kategori`, `judul`, `gambar`, `isi`, `waktu`) VALUES
(40, 0, 'Berita', 'Karnaval HUT RI KE 72 SMK Ma\'arif 1 Kalirejo', 'FB_IMG_15033688550549076111.jpg', '<p>Hari kemerdekaan Indonesia yang jatuh pada hari kamis tanggal 17 Agustus 2017 akan menjadi hari dimana kita mengenang jasa para pahlawan yang berjuang dengan rela mengorbankan jiwa dan raganya untuk Kemerdekaan RI.</p>\r\n<p>Diperingatan HUT RI yang ke 72 SMK Ma\'arif 1 Kalirejo ikut serta dalam memeriahkan acara karnaval seperti tahun-tahun sebelumnya.</p>', '2017-08-21 03:45:38'),
(60, 0, 'Berita', 'Multi Media : Program Keahlinan Baru di SMK Ma\'arif 1 Kalirejo', 'file_1506725644.jpg', '<p xss=removed>SMK Ma\'arif 1 Kalirejo kini telah menambahkan jurusan Multi Media (MM), </p>\r\n<p xss=removed>Membekali peserta didik dengan ketrampilan, pengetahuan dan sikap agar kompeten dibidang Multi Media seiring perkembangan jaman dan teknologi yang berkembang.</p>\r\n<p><strong>Level 1 :</strong></p>\r\n<p>mengoperasikan software dan periferal </p>\r\n<p>(a) digital illustration</p>\r\n<p>(b) digital imaging</p>\r\n<p>(c) web design</p>\r\n<p><strong>Level 2 :</strong></p>\r\n<p>mengoperasikan software dan periferal  </p>\r\n<p>(a) multimedia</p>\r\n<p>(b) presentation</p>\r\n<p>(c) 2D animation</p>\r\n<p>(d) 3D animation</p>\r\n<p><strong>Level 3 :</strong></p>\r\n<p>mengoperasikan software dan periferal  </p>\r\n<p>(a) digital audio</p>\r\n<p>(b) digital video</p>\r\n<p>(c) visual effects </p>\r\n<p><br> <br> <strong>RUANG LINGKUP PEKERJAAN MULTIMEDIA</strong></p>\r\n<p>Ruang lingkup pekerjaan bagi lulusan Program Keahlian Multimedia adalah jenis pekerjaan dan atau profesi yang relevan dengan kompetensi yang tertuang di dalam tabel SKKNI bidang keahlian Teknologi Infomatika pada jenjang SMK antara lain adalah:<br> Dunia Usaha / industri </p>\r\n<ol>\r\n<li><strong>Sebagai Pengembang Web (Web Development)dengan lingkup pekerjaan sebagai:</strong></li>\r\n</ol>\r\n<p>(a) Pembuat Web</p>\r\n<p>(b) Pemelihara Web</p>\r\n<ol start=\"2\">\r\n<li><strong>Pengembang Multi Media (Multimedia Development)dengan lingkup pekerjaan sebagai:</strong></li>\r\n</ol>\r\n<p>(a) Pembuat Multi Media </p>\r\n<p>(b) Pemelihara Multi Media</p>\r\n<ol start=\"3\">\r\n<li><strong>Rumah Produksi Sinema / Film (Production House)dengan lingkup pekerjaan sebagai:</strong></li>\r\n</ol>\r\n<p>(a) Pembuat Video Klip</p>\r\n<p>(b) Penyunting </p>\r\n<ol start=\"5\">\r\n<li><strong>Industri Media dan Periklanan (Media and Advertisment)dgn lingkup pekerjaan sebagai:</strong></li>\r\n</ol>\r\n<p>(a) Pembuat animasi </p>\r\n<p>(b) Pembuat media informasi</p>\r\n<div><span lang=\"IN\">AYO SEKOLAH DI SMK MA\'ARIF 1 KALIREJO! SMK BISA!!!</span></div>', '2017-09-29 22:36:37'),
(68, 0, 'KATEGORI', 'Multi Media : Program Keahlinan Baru di SMK Ma\'arif 1 Kalirejo', '0.jpg', '<p>SMK Ma\'arif 1 Kalirejo kini telah menambahkan jurusan Multi Media (MM),  Membekali peserta didik dengan ketrampilan, pengetahuan dan sikap agar kompeten dibidang Multi Media seiring perkem</p>', '2017-12-27 11:56:59'),
(69, 0, 'Berita', 'Karnaval HUT RI KE 72 SMK Ma\'arif 1 Kalirejo', 'eksponen-amm-imbau-nu-respons-permendikbud-secara-arif-ItC.jpg', '<p>Hari kemerdekaan Indonesia yang jatuh pada hari kamis tanggal 17 Agustus 2017 akan menjadi hari dimana kita mengenang jasa para pahlawan yang berjuang dengan rela mengorbankan jiwa dan raganya untu</p>', '2017-12-27 11:58:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_download`
--

CREATE TABLE `tbl_download` (
  `id` int(3) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `deskripsi` varchar(225) NOT NULL,
  `file` varchar(200) NOT NULL,
  `tgl_upload` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_download`
--

INSERT INTO `tbl_download` (`id`, `nama`, `deskripsi`, `file`, `tgl_upload`) VALUES
(9, 'Formulir Pendaftaran Siswa Baru', 'Bagi yang akan mendaftarkan diri, anak atau saudara untuk melanjutkan sekolah di SMK Ma\'arif 1 Kalirejo download formulir pendaftarannya', 'FORMULIR_PPDB_SMK_MAARIF_1_KALIREJO_TP_2016-2017.xls', '2017-08-23 00:39:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_gallery`
--

CREATE TABLE `tbl_gallery` (
  `id_gallery` int(3) NOT NULL,
  `deskripsi` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `kategori` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_gallery`
--

INSERT INTO `tbl_gallery` (`id_gallery`, `deskripsi`, `gambar`, `kategori`) VALUES
(26, 'Pasukan Inti (Pramuka) SMK Ma\'arif 1 Kalirejo', '100_2577.JPG', 'guru'),
(9, 'Pelepasan siswa/siswi smk ma\'arif', '18199565_669788519879158_3539161380150109750_n2.jpg', 'siswa'),
(11, 'Pelantikan Pasukan Inti SMK Ma\'arif 1 Kalirejo', 'IMG_0480.JPG', 'siswa'),
(12, 'Gedung SMK Ma\'arif 1 Kalirejo', '100_5042.JPG', 'sekolah'),
(13, 'Perpustakaan', 'IMG_5205.jpg', 'siswa'),
(14, 'Paskibra SMK Ma\'arif 1 Kalirejo', 'IMG_4162.JPG', 'siswa'),
(15, 'Pasukan Inti SMK Ma\'arif 1 Kalierjo', 'IMG_0466.JPG', 'siswa'),
(16, 'Siswi SMK Ma\'arif 1 Kalirejo', '100_6857.JPG', 'siswa'),
(19, 'Foto Bersama siswa dan siswi kelas XII AK 3 dalam acara pelepasan siswa dan siswi SMK Ma\'arif 1 Kali', 'FB_IMG_15027657243002203.jpg', 'siswa'),
(20, 'Kegiatan pembelajaran dalam kelas SMK Ma\'arif 1 Kalirejo', 'FB_IMG_15027652217016216.jpg', 'guru'),
(21, 'STAF SMK Ma\'arif 1 Kalirejo ', 'FB_IMG_15027661590379781.jpg', 'guru'),
(22, 'KBM dalam kelas', 'FB_IMG_15027660266999757.jpg', 'siswa'),
(23, 'Anggota Pasukan Inti (PASTI) SMK Ma\'arif 1 Kalirejo', 'FB_IMG_15033003206693007.jpg', 'siswa'),
(24, 'PKS SMK Ma\'arif 1 Kalirejo', '10273933_736926399685447_7116966077848658234_n.jpg', 'guru');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_guru`
--

CREATE TABLE `tbl_guru` (
  `id_guru` int(3) NOT NULL,
  `id_pelajaran` int(2) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `nama_guru` varchar(200) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `wali_kelas` int(2) NOT NULL,
  `jk` varchar(20) NOT NULL,
  `ttl` varchar(50) NOT NULL,
  `foto` varchar(200) NOT NULL,
  `nuptk` varchar(20) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `kontak` varchar(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_guru`
--

INSERT INTO `tbl_guru` (`id_guru`, `id_pelajaran`, `username`, `password`, `nip`, `nama_guru`, `alamat`, `wali_kelas`, `jk`, `ttl`, `foto`, `nuptk`, `agama`, `kontak`) VALUES
(29, 13, 'supriyanto', 'supriyanto', '197312022005011006', 'Supriyanto, S.Pd', 'Sinar Sari, Kalirejo-Lampung Tengah', 52, 'Laki-Laki', 'Sidowayah, 12 Februari 1973', 'supriyono.jpg', '0534751653200013', 'Islam', ''),
(30, 8, 'astutiaditama', 'astutiaditama', '198005222009022003', 'Astuti Aditama, S.Pd', 'Dusun II RT/RW 007/002 Kalirejo, Lampung Tengah', 52, 'Perempuan', 'Kalirejo, 22 Mei 1980', 'astuti_aditama.jpg', '8854758659300032', 'Islam', ''),
(31, 13, 'muhammaduzudin', 'muhammaduzudin', '197205102008011019', 'Muhammad Uzudin, S.Pd', 'Waringi Sari Barat, Sukoharjo-Pringsewu', 52, 'Laki-Laki', 'Waringinsari, 10 Mei 1972', 'muzudin1.jpg', '2842750653200012', 'Islam', ''),
(32, 7, 'anngimni', 'anngimni', '-', 'An Ngimni, S.Kom', 'Kalirejo, Lampung Tengah', 52, 'Laki-Laki', 'Kalirejo, 7 Juni 1987', 'anngimni1.jpg', '1939765668200002', 'Islam', ''),
(33, 4, 'srilestari', 'srilestari', '-', 'Sri Lestari, S.Pd', 'Sri Mulyo, Kalirejo-Lampung Tengah', 37, 'Perempuan', 'Sendang Mukti, 19 Juli 1976', 'sri1.jpg', '2155758662210003', 'Islam', ''),
(34, 8, 'paijo', 'paijo', '196508201992021001', 'Paijo, S.Pd', 'Sinar Sari, Kalirejo-Lampung Tengah', 52, 'Laki-Laki', 'Sinar Sari, 20 Agustus 1965', 'paijo.jpg', '1152743646200033', 'Islam', ''),
(35, 8, 'sholehan', 'sholehan', '-', 'Hi. M. Sholehan EB', 'Kalirejo, Lampung tengah', 52, 'Laki-Laki', 'Majenang, 12 Agustus 1952', 'solehan.jpg', '4144730632200033', 'Islam', ''),
(36, 3, 'kahono', 'kahono', '197008121998021002', 'Kahono, S.Pd', 'Waringin Sari, Sukoharjo-Pringsewu', 52, 'Laki-Laki', 'Waringinsari, 12 Agustus 1972', 'kahono1.jpg', '4144748650200003', 'Islam', ''),
(37, 13, 'dwimaryanti', 'dwimaryanti', '-', 'Dwi Maryanti, S.Pd', 'Waringinsari Barat, Sukoharjo-Pringsewu', 52, 'Perempuan', 'Waringinsari, 15 Mei 1985', 'dwidamayanti.jpg', '9847763665300112', 'Islam', ''),
(38, 10, 'wintolo', 'wintolo', '19801217200801105', 'Wintolo Andreas, S.Pd', 'Sridadi, Kalirejo-Lampung Tengah', 52, 'Laki-Laki', 'Sridadi, 17 Desember 1980', 'wintolo.jpg', '9549758660200003', 'Islam', ''),
(40, 6, 'mhmustofa', 'mhmustofa', '-', 'MOHAMAD HIDAYATUL MUSTOFA', 'Balairejo, Kalirejo-Lampung Tengah', 42, 'Laki-Laki', 'Balairejo, 16 Juli 1986', 'mustofa1.jpg', '-', 'Islam', ''),
(41, 11, 'widiastusi', 'widiastuti', '197701102006042002', 'Widi Astuti, S.Pd', 'Sukosari, Kalirejo-Lampung Tengah', 52, 'Perempuan', '', 'widiastudi.jpg', '4442755655300002', 'Islam', ''),
(42, 3, 'widiandari', 'widiandari', ' 198304162011012002', 'Widi Andari', 'Sukosari, Kalirejo Lampung Tengah', 39, 'Laki-Laki', 'Sukosari, 16 April 1983', 'widiandari1.jpg', '0742761662300032', 'Islam', ''),
(43, 13, 'buangefendi', 'buangefendi', '196608252008011003', 'Buang Efendi, S.Pd', 'Arjosari, Ambarawa-Pringsewu', 42, 'Laki-Laki', '25 Agustus, 1966', 'buang.jpg', '2157744644200003', 'Islam', ''),
(44, 4, 'sitimustaqimah', 'sitimustaqimah', '198006052006042009', 'Siti Mustaqimah, S.Pd', 'Sridadi, Kalirejo-Lampung Tengah', 52, 'Perempuan', 'Sridadi, 5 Juni 1980', 'mustakima.jpg', '3937758659300042', 'Islam', ''),
(45, 12, 'ayu', 'ayu', '-', 'Ayu Natashandei, S.Pd', 'Kalirejo, Lampung Tengah', 42, 'Laki-Laki', 'Penengahan, 12 Mei 1986', 'ayu.jpg', ' 0844764665300112', 'Islam', ''),
(46, 4, 'dewioctasari', 'dewioctasari', '', 'Dewi Octasari Cahyaningrum, A.Md', 'Kaliwungu, Kalirejo-Lampung Tengah', 42, 'Perempuan', 'Ambarawa, 10 Oktober 1985', 'dwi_oktasari.jpg', '', 'Islam', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jurusan`
--

CREATE TABLE `tbl_jurusan` (
  `id_jurusan` int(2) NOT NULL,
  `nama_jurusan` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `foto` varchar(225) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_jurusan`
--

INSERT INTO `tbl_jurusan` (`id_jurusan`, `nama_jurusan`, `deskripsi`, `foto`) VALUES
(1, 'AKUNTANSI', 'AKUNTANSI  adalah sebuah jurusan yang sangat berhubungan dengan angka dan hitung menghitung. Akuntansi bertujuan untuk menyiapkan suau laporan keuangan yang akurat agar dapa dimanfaatkan oleh para manajer, dalam mengambil kebijakan, dan pihak berkepentingan lainnya. Ingin Sekolah dengan jurusan akuntansi? Sekolah di SMK Ma\'arif 1 Kalirejo!', 'akuntansi.png'),
(6, 'ADMINISTRASI PERKANTORAN', 'ADMINISTRASI PERKANTORAN merupakan salah satu jurusan yang ada di SMK Ma\'arif 1 Kalirejo, Administrasi Perkantoran adalah jurusan yang berkonsentrasi di bidang perkantoran meliputi kegiatan pelayanan, keamanan, kenyamanan tamu, kepegawaian, pelayanan telepon, kebersihan dan keindahan, pelayanan keuangan, pelayanan susrat menyurat dan ekspedisi.', 'FB_IMG_15027661913372025.jpg'),
(7, 'REKAYASA PERANGKAT LUNAK', 'REKAYASA PERANGKAT LUNAK (RPL) Merupakan salah satu jurusan yang ada di SMK Ma\'arif 1 Kalirejo, RPL merupakan bidang komputer yang mendalami cara-cara pengembangan perangkat lunak dan manajemen kualitas.', '20708346_850303738469397_2871923965174438572_n.jpg'),
(13, 'MULTI MEDIA', 'Jurusan multi media adalah salah satu jurusan yang ada di SMK Ma\'arif 1 Kalirejo', 'FB_IMG_150276619133720251.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `id_kelas` int(3) NOT NULL,
  `nama_kelas` varchar(15) NOT NULL,
  `id_jurusan` int(2) NOT NULL,
  `tahun_masuk` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`id_kelas`, `nama_kelas`, `id_jurusan`, `tahun_masuk`) VALUES
(42, 'X AK 3', 1, '2017'),
(41, 'X AK 2', 1, '2017'),
(40, 'X AK 1', 1, '2017'),
(39, 'X AP 3', 6, '2017'),
(38, 'X AP 2', 6, '2017'),
(37, 'X AP 1', 1, '2017'),
(43, 'X AK 4', 1, '2017'),
(44, 'X RPL', 7, '2017'),
(45, 'XI AP 1', 1, '2016'),
(46, 'XI AP 2', 1, '2016'),
(47, 'XI AP 3', 1, '2016'),
(48, 'XI AK 1', 1, '2016'),
(49, 'XI AK 2', 1, '2016'),
(50, 'XI AK 3', 1, '2016'),
(51, 'XI AK 4', 6, '2016'),
(54, 'XI RPL', 7, '2016'),
(55, 'XII AK 1', 6, '2015'),
(56, 'XII AK 2', 6, '2015'),
(57, 'XII AK 3', 6, '2015'),
(58, 'XII AK 4', 6, '2015'),
(59, 'XII AP 1', 1, '2015'),
(60, 'XII AP 2', 1, '2015'),
(61, 'XII AP 3', 1, '2015'),
(62, 'XII RPL ', 7, '2015');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_materi`
--

CREATE TABLE `tbl_materi` (
  `id` int(11) NOT NULL,
  `id_pelajaran` int(11) NOT NULL,
  `id_kelas` int(4) NOT NULL,
  `judul_materi` varchar(225) NOT NULL,
  `deskripsi` text NOT NULL,
  `file` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_materi`
--

INSERT INTO `tbl_materi` (`id`, `id_pelajaran`, `id_kelas`, `judul_materi`, `deskripsi`, `file`) VALUES
(1, 6, 40, 'Materi Pelajaran KKPI', 'Panduan KKPI Microsoft Office Acces 2010', 'ADI_HIDAYAT_14100545_2016.pdf'),
(2, 16, 41, 'Pengantar Akuntansi', 'Pengantar Akuntansi Kelas X AK ', 'PANDUAN-PENYUSUNAN-SKRIPSI-2016.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_nilaisiswa`
--

CREATE TABLE `tbl_nilaisiswa` (
  `id_nilai` int(5) NOT NULL,
  `id_kelas` int(3) NOT NULL,
  `id_siswa` int(5) NOT NULL,
  `nilai_uas` int(3) NOT NULL,
  `keterangan` varchar(15) NOT NULL,
  `id_pelajaran` int(11) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `id_tahun_ajaran` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_nilaisiswa`
--

INSERT INTO `tbl_nilaisiswa` (`id_nilai`, `id_kelas`, `id_siswa`, `nilai_uas`, `keterangan`, `id_pelajaran`, `semester`, `id_tahun_ajaran`) VALUES
(33, 40, 60, 60, 'Remidi', 19, 'Genap', 22),
(31, 40, 28, 80, 'Baik', 7, 'Genap', 22),
(30, 40, 27, 85, 'Baik', 7, 'Genap', 22),
(29, 40, 26, 75, 'Cukup', 7, 'Genap', 22),
(27, 40, 25, 85, 'Baik', 7, 'Genap', 22),
(25, 40, 24, 100, 'Baik Sekali', 7, 'Genap', 22);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pelajaran`
--

CREATE TABLE `tbl_pelajaran` (
  `id_pelajaran` int(2) NOT NULL,
  `nama_pelajaran` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `tbl_pelajaran`
--

INSERT INTO `tbl_pelajaran` (`id_pelajaran`, `nama_pelajaran`) VALUES
(19, 'PENJASKES'),
(3, 'PRODUKTIF AKUNTANSI'),
(4, 'PRODUKTIF AP'),
(5, 'PENDIDIKAN AGAMA ISLAM'),
(6, 'ASWAJA'),
(7, 'KKPI'),
(8, 'MATEMATIKA'),
(9, 'IPA'),
(10, 'IPS'),
(11, 'PKN'),
(12, 'KEWIRAUSAHAAN'),
(13, 'BAHASA INGGRIS'),
(14, 'MYOB'),
(15, 'SENI BUDAYA'),
(16, 'PRESENTASI'),
(17, 'RPL 1'),
(18, 'TIK');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengumuman`
--

CREATE TABLE `tbl_pengumuman` (
  `id_pengumuman` int(3) NOT NULL,
  `judul` text NOT NULL,
  `isi` text NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengumuman`
--

INSERT INTO `tbl_pengumuman` (`id_pengumuman`, `judul`, `isi`, `waktu`) VALUES
(15, 'Pertunjukan Seni', '<p style=\"text-align: justify;\">SMK Ma\'arif 1 Kalirejo akan melaksanakan pertunjukan seni pada tanggal 19 Desember 2017, diharapkan kepada siswa untuk hadir</p>', '2017-12-27 03:47:28'),
(10, 'Upacara 17 Agustus 2017', '<p>Bagi siswa dan siswi SMK Ma\'arif 1 Kalirejo diharapkan untuk menghadiri upacara 17 agustus 2017 di lapangan merdeka kalirejo. Terima Kasih</p>', '2017-08-15 02:33:44'),
(11, 'Pengumuman Sidik Jari', '<p>Bagi yang merasa belum melakukan sidik jari diharapkan segera datang ke sekolah hari Sabtu-Kamis pukul 14.00 WIB</p>', '2017-09-30 01:46:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_profil`
--

CREATE TABLE `tbl_profil` (
  `id` int(1) NOT NULL,
  `nama_sekolah` varchar(50) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `status` varchar(10) NOT NULL,
  `telepon` varchar(14) NOT NULL,
  `kodepos` int(10) NOT NULL,
  `akreditasi` varchar(10) NOT NULL,
  `jumlah_jurusan` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `visi_misi` text NOT NULL,
  `sejarah` text NOT NULL,
  `logo_sekolah` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_profil`
--

INSERT INTO `tbl_profil` (`id`, `nama_sekolah`, `alamat`, `status`, `telepon`, `kodepos`, `akreditasi`, `jumlah_jurusan`, `email`, `visi_misi`, `sejarah`, `logo_sekolah`) VALUES
(1, 'SMK MA\'RIF 1 KALIREJO', 'Jl. Jendral Sudirman No. 569 Kalirejo Lampung Tengah', 'Swasta', '+ 0729 734 300', 34173, 'B', '4', 'smkmaarif1998@yahoo.com', '<p style=\"text-align: justify;\">Visi yaitu keadaan yang dicita-citakan untuk berhasil, yang menjadi peningkat seluruh stakeholders atau unsur masyarakat. Dengan kata lain visi adalah suatu gambaran yang menantang tentang keadaan masa depan yang diinginkan oleh suatu instansi atau organisasi. Dari uraian di atas dapat disimpulkan visi sekolah adalah <span style=\"color: #208a03;\"><strong>\"Menjadikan SMK Ma&rsquo;arif 1 Kalirejo Lampung Tengah sebagai lembaga yang menghasilkan lulusan yang bertaqwa, berpengalaman dan mempersiapkan diri memasuki dunia usaha atau kerja dan perguruan tinggi\".</strong></span></p>\r\n<p style=\"text-align: justify;\"><br />Misi merupakan suatu pernyataan yang menetapkan apa yang harus dilaksanakan oleh instansi pemerintah atau swasta agar visi organisasi dapat tercapai dan berhasil dengan baik. Adapun tujuan dari perumusan misi adalah :</p>\r\n<ol style=\"text-align: justify;\">\r\n<li><strong>Sebagai tonggak dari perencanaan strategi. </strong></li>\r\n<li><strong>Sebagai pernyataan cita-cita organisasi. </strong></li>\r\n<li><strong>Sebagai landasan kerja organisasi.</strong></li>\r\n</ol>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Dalam rangka mewujudkan visi sekolah maka dirumuskan misi sekolah sebagai berikut :</p>\r\n<ol style=\"text-align: justify;\">\r\n<li><strong>Sebagai tonggak dari perencanaan strategi.</strong></li>\r\n<li><strong>Sebagai pernyataan cita-cita organisasi.</strong></li>\r\n<li><strong>Sebagai landasan kerja organisasi.</strong></li>\r\n</ol>', '<p style=\"text-align: justify;\">Sekolah SMK Ma&rsquo;arif 1 Kalirejo Lampung Tengah berdiri karena adanya inisiatif atau inspirasi dari organisasi Pencak Silat Pagar Nusa Cabang Lampung Tengah yang berupa proposal tanggal 10 November 1997. Sekolah SMK Ma&rsquo;arif 1 Kalirejo Lampung Tengah juga telah mendapatkan dukungan dari sekolah SLTP dan MTs sebanyak 13 sekolah dari tiga kecamatan dan instansi pemerintah yaitu Kecamatan Kalirejo, Kecamatan Bangunrejo dan Kecamatan Padang Ratu. Setelah mendapat rekomendasi dari pejabat yang berwenang ditingkat kecamatan proposal dilanjutkan ketingkat kabupaten. Sebelum dilanjutkan ketingkat kabupaten harus terlebih dahulu mendapat izin dari Bupati Lampung tengah melalui Bapeda (badan pengembangan daerah). Izin prinsip lokasi yang ditandatangani oleh bupati Drs. Herman Sanusi pada tanggal 12 Maret 1998. Setelah dilakukan studi kelayakan pada tanggal 4 Juni 1998, maka proposal SMK Ma&rsquo;arif 1 Kalirejo Lampung Tengah dikabulkan dan resmi mendapat izin operasional yang ditandatangani oleh bapak H. Thalib M. Mberu S.H. pada tanggal 29 Juni 1998 SMK Ma&rsquo;arif 1 Kalirejo Lampung Tengah menerima siswa baru dengan program keahlian bisnis dan manajemen yang terdiri dari dua jurusan yaitu Akuntansi dan Sekertaris dengan SK kantor wilayah Depdikbud Provinsi Lampung No. 9950/I.12.B/U/1998.A&nbsp;</p>', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `id_siswa` int(5) NOT NULL,
  `id_kelas` int(2) NOT NULL,
  `id_jurusan` int(3) NOT NULL,
  `nis` varchar(10) NOT NULL,
  `nisn` varchar(10) NOT NULL,
  `nama_siswa` varchar(50) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `ttl` varchar(225) NOT NULL,
  `nama_ayah` varchar(50) NOT NULL,
  `nama_ibu` varchar(50) NOT NULL,
  `kontak_ortu` varchar(50) NOT NULL,
  `pekerjaan_ortu` varchar(50) NOT NULL,
  `jk` varchar(15) NOT NULL,
  `agama` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`id_siswa`, `id_kelas`, `id_jurusan`, `nis`, `nisn`, `nama_siswa`, `alamat`, `ttl`, `nama_ayah`, `nama_ibu`, `kontak_ortu`, `pekerjaan_ortu`, `jk`, `agama`) VALUES
(60, 40, 1, '1234', '123456789', 'Adi Hidayat S', 'Pringsewu', 'Lampung Tengah, 5 September 1995', 'Obin Sumantri', 'Katwati', '085789950989', 'Petani', 'Laki-Laki', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_statis`
--

CREATE TABLE `tbl_statis` (
  `id` int(11) NOT NULL,
  `kategori` varchar(35) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `foto` varchar(225) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_statis`
--

INSERT INTO `tbl_statis` (`id`, `kategori`, `judul`, `deskripsi`, `foto`) VALUES
(3, 'ekstrakulikuler', 'UKS (Unit Kesehatan Sekolah)', '<p>test</p>', 'images_(6).jpg'),
(9, 'ekstrakulikuler', 'SAKA BAKTI HUSADA', '<p>D</p>', 'Logo-Saka-Bakti-Husada_.png'),
(8, 'ekstrakulikuler', 'PASUKAN INTI(PRAMUKA)', '<p>PASUKAN INTI SMK MA\'ARIF 1 KALIRJEO</p>', 'pas.jpg'),
(7, 'ekstrakulikuler', 'PATROLI KEAMANAN SEKOLAH', '<p>DESKRIPSI</p>', 'pks.png'),
(11, 'ekstrakulikuler', 'PAGAR NUSA', 'Visi dan misi pencak silat NU Pagar Nusa secara umum\r\nVisi\r\nMenjadi wadah pencak silat dibawah naungan Nahdlatul Ulama\r\nMenyatukan dan cara mengikat seluruh pencak silat tradisional dari berbagai elemnt masyarakat dari silat para jawara hingga silat milik ulama diseluruh penjuru nusantara\r\nMengembangkan , melestarikan, membudidayakan dan memperkenalkan\r\n\r\nMisi\r\nMemperkenalkan pesilat tradisional didalam IPSI\r\nMenjadikan pagar nusa sebagai jembatan bagi altet berprestasi untuk dapat berpatisipasi di kancah nasional dan internasional sebagai pesilat Pagar Nusa dan pesilat Indonesia', 'Logo_PN.jpg'),
(12, 'fasilitas', 'Laboratorium Komputer', '3 Ruangan / Laboratorium Komputer', 'FB_IMG_150276615903797812.jpg'),
(13, 'fasilitas', 'Ruang Kelas Belajar Siswa', '24 Ruang Belajar', 'FB_IMG_15027652217016216.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tahun_ajaran`
--

CREATE TABLE `tbl_tahun_ajaran` (
  `id` int(2) NOT NULL,
  `tahun_ajaran` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_tahun_ajaran`
--

INSERT INTO `tbl_tahun_ajaran` (`id`, `tahun_ajaran`) VALUES
(14, '2009/2010'),
(15, '2010/2011'),
(16, '2011/2012'),
(17, '2012/2013'),
(18, '2013/2014'),
(19, '2014/2015'),
(20, '2015/2016'),
(21, '2016/2017'),
(22, '2017/2018');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tamu`
--

CREATE TABLE `tbl_tamu` (
  `id` int(3) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `kontak` varchar(225) NOT NULL,
  `subjek` varchar(25) NOT NULL,
  `isi_pesan` text NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_tamu`
--

INSERT INTO `tbl_tamu` (`id`, `nama`, `alamat`, `kontak`, `subjek`, `isi_pesan`, `waktu`) VALUES
(13, '', '', '', '', '', '2018-01-01 14:03:21'),
(2, 'Adi Hidayat', 'Lingga Pura, Selagai Lingga Lampung Tengah', 'adihidayat35@gmail.com', '', 'Saya adi saya hanya ingin mencoba tulis pesan di sini.', '2017-08-05 07:53:38'),
(5, 'Adi Hidayat', 'Lingga pura', 'adihidayat35@gmail.com', '', 'assalamualaikum admin, saya ingin bertanya berapakah biaya untuk daftar ulang di SMK Ma\'arif 1 Kalirejo? diharapkan rincian di kirim ke e-mail saya, terima kasih.', '2017-08-05 07:53:38'),
(8, 'Adi Hidayat', 'Dirumah', '08098895894', 'Subjek', 'pesan', '2017-10-15 10:17:03'),
(9, 'Adi Hidayat', 'Marga Jaya', '085789950115', 'Biaya', 'Berapa biaya daftar ulang di SMK Ma\'arif 1 Kalirejo?', '2017-10-17 02:25:45'),
(10, 'Adi Hidayat', 'Lingga Pura', '085789950167', 'Pengaduan', 'Selamat siang admin, tadi siang saya melihat siswa SMK Ma\'arif 1 Kalirejo ganteng bingits', '2017-10-21 06:57:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_alumni`
--
ALTER TABLE `tbl_alumni`
  ADD PRIMARY KEY (`id_alumni`);

--
-- Indexes for table `tbl_baner`
--
ALTER TABLE `tbl_baner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_berita`
--
ALTER TABLE `tbl_berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `tbl_download`
--
ALTER TABLE `tbl_download`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Indexes for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `tbl_jurusan`
--
ALTER TABLE `tbl_jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indexes for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `tbl_materi`
--
ALTER TABLE `tbl_materi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_nilaisiswa`
--
ALTER TABLE `tbl_nilaisiswa`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indexes for table `tbl_pelajaran`
--
ALTER TABLE `tbl_pelajaran`
  ADD PRIMARY KEY (`id_pelajaran`);

--
-- Indexes for table `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  ADD PRIMARY KEY (`id_pengumuman`);

--
-- Indexes for table `tbl_profil`
--
ALTER TABLE `tbl_profil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `tbl_statis`
--
ALTER TABLE `tbl_statis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tahun_ajaran`
--
ALTER TABLE `tbl_tahun_ajaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tamu`
--
ALTER TABLE `tbl_tamu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tbl_alumni`
--
ALTER TABLE `tbl_alumni`
  MODIFY `id_alumni` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `tbl_baner`
--
ALTER TABLE `tbl_baner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tbl_berita`
--
ALTER TABLE `tbl_berita`
  MODIFY `id_berita` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT for table `tbl_download`
--
ALTER TABLE `tbl_download`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  MODIFY `id_gallery` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  MODIFY `id_guru` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `tbl_jurusan`
--
ALTER TABLE `tbl_jurusan`
  MODIFY `id_jurusan` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  MODIFY `id_kelas` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT for table `tbl_materi`
--
ALTER TABLE `tbl_materi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_nilaisiswa`
--
ALTER TABLE `tbl_nilaisiswa`
  MODIFY `id_nilai` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `tbl_pelajaran`
--
ALTER TABLE `tbl_pelajaran`
  MODIFY `id_pelajaran` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  MODIFY `id_pengumuman` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `tbl_profil`
--
ALTER TABLE `tbl_profil`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  MODIFY `id_siswa` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `tbl_statis`
--
ALTER TABLE `tbl_statis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `tbl_tahun_ajaran`
--
ALTER TABLE `tbl_tahun_ajaran`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `tbl_tamu`
--
ALTER TABLE `tbl_tamu`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
