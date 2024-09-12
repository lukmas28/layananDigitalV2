-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 08, 2024 at 02:42 PM
-- Server version: 10.11.8-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u992906354_db_tompokersan`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `landings`
--

CREATE TABLE `landings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_website` varchar(70) DEFAULT 'text',
  `judul_home` varchar(255) DEFAULT 'text',
  `deskripsi_home` text NOT NULL,
  `judul_tentang` varchar(150) DEFAULT 'text',
  `link_download` varchar(255) DEFAULT 'text',
  `tentang_aplikasi` text NOT NULL,
  `email_kelurahan` varchar(90) DEFAULT 'text',
  `no_telp` varchar(30) DEFAULT 'text',
  `alamat_kelurahan` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `video_url` varchar(225) DEFAULT NULL,
  `token` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `landings`
--

INSERT INTO `landings` (`id`, `nama_website`, `judul_home`, `deskripsi_home`, `judul_tentang`, `link_download`, `tentang_aplikasi`, `email_kelurahan`, `no_telp`, `alamat_kelurahan`, `created_at`, `updated_at`, `video_url`, `token`) VALUES
(1, 'Tompokersan', 'Tompokersan Smart App Pengajuan Surat menyurat', 'Sebagai wujud komitmen dalam memberikan informasi seluas-seluasnya kepada masyarakat. Tompokersan akan mempermudahkan dalam proses pengajuan surat yang dilakukan oleh masyarakat.', 'Tentang Smart App Tompokersan', 'https://play.google.com/store/apps/details?id=com.tompokersan.mobile_tompokersan', 'Tompokersan merupakan aplikasi berbasis website dan mobile kepuharjo ini dapat digunakan oleh pihak masyarakat, RT, dan RW serta website khusus untuk pihak Admin Kelurahan yang digunakan untuk menampung surat sekaligus digunakan untuk data master dari masyarakat, dan diharapkan juga aplikasi pengajuan surat untuk masyarakat ini dapat dilakukan dimanapun dan kapanpun sehingga menjadi lebih efektif dan efisien.', 'kel_tompokersan123@gmail.com', '(0334) 881940', 'Jl. Basuki Rahmat', NULL, '2024-09-04 11:45:12', 'https://www.youtube.com/embed/5J7qm5BvQTc', 'fpt8cSBo8-txZTro4kfC');

-- --------------------------------------------------------

--
-- Table structure for table `master_akuns`
--

CREATE TABLE `master_akuns` (
  `akun_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `password` varchar(255) DEFAULT 'text',
  `no_hp` varchar(255) DEFAULT '13',
  `role` varchar(12) DEFAULT 'text',
  `fcm_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_masyarakat` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_akuns`
--

INSERT INTO `master_akuns` (`akun_id`, `uuid`, `password`, `no_hp`, `role`, `fcm_token`, `created_at`, `updated_at`, `id_masyarakat`) VALUES
(11, '26e00e70-80cd-4fae-83ec-bc3744e68bbb', '$2y$10$f93VmXGOei9lGA.vmfEYKOGFjPdKQe/3GLtl8vB9e5b.Z3FftHuRC', '6289612804455', '3', 'cWq5yx09S0CpvgD2vCLwl5:APA91bFWAzWxFD1Jom-BS21In9RLTug8i_gFwOxwj3J_cxMAmXkz_ipHn3NvlFIrYiT3HHV8DB6_JowLKKCzboMMqhJCGeE1xZxIGNoUs7hBPQ0ZMeihgdKXRiiSEnX2H28SK0NVEbqz', '2024-07-30 07:00:34', '2024-09-05 04:35:46', 23),
(12, 'ab5ff455-5be6-42bc-bc57-598ab34dd055', '$2y$10$U9ihI1nzuJurUSq0s8l./e4BJ2DA9hV0MomnjN3buSg/NEwox70Oq', '6289612804455', '2', NULL, '2024-07-30 07:01:47', '2024-09-05 04:38:59', 24),
(26, '9d3b43f8-29f1-4a92-a078-7973af0cc8a4', '$2y$10$7d4HqsZ3f9F2AI/ATdCdbuSXJ1UVDKBBzv/daM0xK3eCPP5GgMvzK', '081559556789', '4', NULL, '2024-09-05 04:28:40', '2024-09-06 00:27:06', 29);

-- --------------------------------------------------------

--
-- Table structure for table `master_beritas`
--

CREATE TABLE `master_beritas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` text DEFAULT 'text',
  `sub_title` text DEFAULT 'text',
  `deskripsi` text DEFAULT 'text',
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_beritas`
--

INSERT INTO `master_beritas` (`id`, `judul`, `sub_title`, `deskripsi`, `image`, `created_at`, `updated_at`) VALUES
(2, 'Desa Tompokersan Melakukan Inovasi Bidang IPTEK Dengan Mengembangkan Pelayanan Pengajuan Surat Berbasis Online Bekerjasama dengan Politeknik Negeri Jember', '2024-09-01', 'Desa Tompokersan telah melakukan terobosan di bidang IPTEK dengan meluncurkan layanan pengajuan surat berbasis online. Inovasi ini dikembangkan melalui kerja sama dengan Politeknik Negeri Jember, bertujuan untuk meningkatkan efisiensi pelayanan publik dan mempermudah warga dalam mengurus berbagai keperluan administratif tanpa harus datang langsung ke kantor desa. Langkah ini merupakan bagian dari upaya desa dalam memanfaatkan teknologi untuk kemajuan dan kesejahteraan masyarakat setempat.\r\n\r\nKolaborasi ini tidak hanya membawa perubahan dalam cara warga berinteraksi dengan pemerintahan desa, tetapi juga menjadi contoh bagi desa-desa lain dalam penerapan teknologi informasi untuk pelayanan publik. Dengan sistem ini, masyarakat dapat mengakses layanan kapan saja dan di mana saja, menghemat waktu dan tenaga, serta meminimalkan potensi kesalahan administrasi.\r\n\r\nKeberhasilan program ini juga menunjukkan komitmen Politeknik Negeri Jember dalam mendukung pembangunan daerah melalui inovasi teknologi. Dengan dukungan institusi pendidikan tinggi, Desa Tompokersan mampu menghadirkan solusi nyata yang relevan dengan kebutuhan warganya, sehingga desa ini dapat terus berkembang seiring dengan perkembangan zaman.', '1725380457.jpg', '2024-09-03 16:20:57', '2024-09-03 16:20:57'),
(3, 'Demi Menjaga Keamanan Dan Kenyamanan Masyarakat di Bulan Suci Ramadan, Kelurahan Tompokersan Bentuk Posko Ramadan', '2024-09-19', 'Demi menjaga keamanan dan kenyamanan masyarakat dalam menjalankan Ibadah Puasa pada Ramadan 1444 H/ 2023 M, Kelurahan Ujuna membentuk Posko Ramadan. Kegiatan penjagaan di posko dilaksanakan oleh seluruh unsur masyarakat di Kelurahan Tompokersan, mulai dari ASN Kelurahan, TNI, Polri, Linmas Kelurahan Ujuna, Satgas Pancasila dan Lembaga Adat serta Organisasi Masyarakat Kelurahan Ujuna.\r\n\r\nPosko Ramadan kali ini membentuk kolaborasi seluruh masyarakat Kelurahan Ujuna untuk menjaga ketertiban wilayah. Mencegah tawuran antar remaja menjadi salah satu fokus di Posko Ramadan ini', '1725495955.jpg', '2024-09-04 06:50:31', '2024-09-05 00:25:55');

-- --------------------------------------------------------

--
-- Table structure for table `master_kks`
--

CREATE TABLE `master_kks` (
  `id_kk` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `no_kk` bigint(20) DEFAULT 12,
  `alamat` varchar(100) DEFAULT 'text',
  `rt` tinyint(4) NOT NULL,
  `rw` tinyint(4) NOT NULL,
  `kode_pos` int(11) NOT NULL,
  `kelurahan` varchar(60) DEFAULT 'text',
  `kecamatan` varchar(60) DEFAULT 'text',
  `kabupaten` varchar(60) DEFAULT 'text',
  `provinsi` varchar(60) DEFAULT 'text',
  `kk_tgl` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_kks`
--

INSERT INTO `master_kks` (`id_kk`, `uuid`, `no_kk`, `alamat`, `rt`, `rw`, `kode_pos`, `kelurahan`, `kecamatan`, `kabupaten`, `provinsi`, `kk_tgl`, `created_at`, `updated_at`) VALUES
(18, '754ef1d9-40fd-4009-89e3-d5237cc4b849', 1234567890123451, 'Perum kalirejo', 1, 1, 67316, 'Kepuharjo', 'Lumajang', 'Lumajang', 'Jawa Timur', '2004-03-12', '2024-07-30 07:00:10', '2024-07-30 07:00:10'),
(19, '9319c910-b859-4486-a21b-d713b87ad50c', 1234567890123453, 'Perum kalirejo', 1, 1, 67316, 'Kepuharjo', 'Lumajang', 'Lumajang', 'Jawa Timur', '2004-03-12', '2024-07-30 07:01:22', '2024-07-30 07:01:22'),
(24, '5fb6d6b4-5645-4f14-9e21-074d6ae0b1e1', 3322172908083329, 'Jl Mawar', 1, 1, 67316, 'Kepuharjo', 'Lumajang', 'Lumajang', 'Jawa Timur', '2014-04-15', '2024-08-03 05:29:32', '2024-08-03 05:29:32'),
(27, '91665d4f-1a05-4946-a942-eb3dde4665e3', 1111111111111111, 'T', 1, 1, 67316, 'Kepuharjo', 'Lumajang', 'Lumajang', 'Jawa Timur', '2024-08-08', '2024-08-08 07:06:18', '2024-08-08 07:06:18');

-- --------------------------------------------------------

--
-- Table structure for table `master_masyarakats`
--

CREATE TABLE `master_masyarakats` (
  `id_masyarakat` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `nik` bigint(20) DEFAULT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `jenis_kelamin` varchar(16) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `agama` varchar(20) DEFAULT NULL,
  `pendidikan` varchar(60) DEFAULT NULL,
  `pekerjaan` varchar(60) DEFAULT NULL,
  `golongan_darah` varchar(12) DEFAULT NULL,
  `status_perkawinan` varchar(20) DEFAULT NULL,
  `tgl_perkawinan` date DEFAULT NULL,
  `status_keluarga` varchar(20) DEFAULT NULL,
  `kewarganegaraan` varchar(20) DEFAULT NULL,
  `no_paspor` int(10) UNSIGNED DEFAULT NULL,
  `no_kitap` int(10) UNSIGNED DEFAULT NULL,
  `nama_ayah` varchar(60) DEFAULT NULL,
  `nama_ibu` varchar(60) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_kk` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_masyarakats`
--

INSERT INTO `master_masyarakats` (`id_masyarakat`, `uuid`, `nik`, `nama_lengkap`, `jenis_kelamin`, `tempat_lahir`, `tgl_lahir`, `agama`, `pendidikan`, `pekerjaan`, `golongan_darah`, `status_perkawinan`, `tgl_perkawinan`, `status_keluarga`, `kewarganegaraan`, `no_paspor`, `no_kitap`, `nama_ayah`, `nama_ibu`, `created_at`, `updated_at`, `id_kk`) VALUES
(23, 'a687d271-8c9a-4f5f-aeb3-37e23136accc', 1234567890123452, 'Armin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kepala Keluarga', NULL, NULL, NULL, NULL, NULL, '2024-07-30 07:00:10', '2024-07-30 07:00:10', 18),
(24, '9749b06c-67ef-4971-bfea-7f7d3691fdcc', 1234567890123454, 'Muhammad binto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kepala Keluarga', NULL, NULL, NULL, NULL, NULL, '2024-07-30 07:01:22', '2024-07-30 07:01:22', 19),
(29, '78672361-344e-4afb-a162-6ddabc22a074', 3322176206600001, 'Muhammad fajar dwi putra', 'Laki-Laki', 'Jember', '2004-03-12', 'Islam', 'Diploma IV/Strata I', 'Programmer', 'O', 'Kawin', '2010-02-02', 'Kepala Keluarga', 'WNI', NULL, NULL, 'Muhammad Atta', 'Yasmin Mahudya', '2024-08-03 05:29:32', '2024-08-03 05:29:32', 24),
(30, 'ee15c86c-6d3a-4068-a92f-9385ca650ed4', 3322176206740002, 'Aysah Mayudi', 'Perempuan', 'Jember', '2005-02-01', 'Islam', 'Diploma IV/Strata I', 'Ibu rumah tangga', 'O', 'Kawin', '2014-02-03', 'Istri', 'WNI', NULL, NULL, 'Muhammad aryah', 'Jasmine Ayu Rahmah', '2024-08-03 05:33:15', '2024-08-03 05:33:15', 24);

-- --------------------------------------------------------

--
-- Table structure for table `master_rtrw`
--

CREATE TABLE `master_rtrw` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nik` bigint(20) DEFAULT 16,
  `nama_lengkap` varchar(100) DEFAULT 'text',
  `alamat` varchar(100) DEFAULT 'text',
  `no_hp` bigint(20) DEFAULT 13,
  `rt` tinyint(4) NOT NULL,
  `rw` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_surats`
--

CREATE TABLE `master_surats` (
  `id_surat` smallint(6) NOT NULL,
  `nama_surat` varchar(255) DEFAULT 'text',
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_surats`
--

INSERT INTO `master_surats` (`id_surat`, `nama_surat`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Cetak Kartu Keluarga Baru', '1723350834.jpeg', '2024-07-27 16:26:52', '2024-08-11 04:33:54'),
(2, 'Cetak Kartu Keluarga Hilang', '1723351225.jpeg', '2024-07-27 17:07:56', '2024-08-11 04:40:25'),
(3, 'Cetak Akta Kelahiran', '1723351760.jpeg', '2024-07-27 17:08:15', '2024-08-11 04:49:20'),
(4, 'Cetak Akta Kematian', '1723352236.jpeg', '2024-07-27 17:08:45', '2024-08-11 04:57:16'),
(5, 'Surat Kematian', '1723352340.jpeg', '2024-07-27 17:09:25', '2024-08-11 04:59:00'),
(6, 'Surat Keterangan Usaha', '1723352704.jpeg', '2024-07-27 17:09:49', '2024-08-11 05:05:04'),
(7, 'Surat Keterangan Catatan Kepolisian', '1723540667.jpeg', '2024-07-27 17:10:40', '2024-08-13 09:17:47'),
(8, 'Surat Keterangan Belum Menikah', '1723541196.jpeg', '2024-07-27 17:11:08', '2024-08-13 09:26:36'),
(9, 'Surat Keterangan Pengajuan KIS', '1723541544.jpeg', '2024-07-27 17:11:41', '2024-08-13 09:32:24'),
(10, 'Surat Keterangan Domisili', '1723541812.jpeg', '2024-07-27 17:12:08', '2024-08-13 09:36:52'),
(11, 'Surat Keterangan Kenal Lahir', '1723542166.jpeg', '2024-07-27 17:12:28', '2024-08-13 09:42:46'),
(12, 'Surat Keterangan Tidak Mampu', '1723542750.jpeg', '2024-07-27 17:12:45', '2024-08-13 09:52:30'),
(13, 'Surat Keterangan Domisili PT', '1723543876.jpeg', '2024-07-27 17:13:01', '2024-08-13 10:11:16'),
(14, 'Surat Kepemilikan Kendaraan', '1723544211.jpeg', '2024-07-27 17:13:18', '2024-08-13 10:16:51'),
(15, 'Surat Keterangan Hubungan Keluarga', '1723544329.jpeg', '2024-07-27 17:13:41', '2024-08-13 10:18:49'),
(16, 'Surat Keterangan Tidak Memiliki Rumah', '1723545199.jpeg', '2024-07-27 17:14:03', '2024-08-13 10:33:19'),
(17, 'Surat Keterangan Tidak Pernah Dihukum', '1723624601.jpeg', '2024-07-27 17:15:20', '2024-08-14 08:36:41'),
(18, 'Surat Pindah', '1723624842.jpeg', '2024-07-27 17:15:37', '2024-08-14 08:40:42'),
(19, 'Surat Keringanan Sekolah', '1723625928.jpeg', '2024-07-27 17:16:20', '2024-08-14 08:58:48'),
(20, 'Surat Pengantar Tutup Jalan', '1723626122.jpeg', '2024-07-27 17:16:42', '2024-08-14 09:02:02'),
(21, 'Surat Keterangan Lain-Lain', '1723626729.jpeg', '2024-07-27 17:17:02', '2024-08-14 09:12:09'),
(22, 'Surat Transaksi Harga Tanah', '1723627264.jpeg', '2024-07-27 17:17:21', '2024-08-14 09:21:04'),
(23, 'Surat Keterangan Berpergian', '1723627583.jpeg', '2024-07-27 17:17:43', '2024-08-14 09:26:23'),
(24, 'Surat Keterangan Status', '1723628187.jpeg', '2024-07-27 17:18:09', '2024-08-14 09:36:27'),
(25, 'Pengurusan SPPT PBB', '1723629727.jpeg', '2024-07-27 17:18:28', '2024-08-14 10:02:07');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(37, '2014_10_12_000000_create_users_table', 1),
(38, '2014_10_12_100000_create_password_resets_table', 1),
(39, '2019_08_19_000000_create_failed_jobs_table', 1),
(40, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(41, '2023_03_11_192813_create_master_kks_table', 1),
(42, '2023_03_11_202251_create_master_masyarakats_table', 1),
(43, '2023_03_12_045152_create_master_akuns_table', 1),
(44, '2023_03_12_180227_create_master_surats_table', 1),
(45, '2023_03_12_180413_create_pengajuan_surats_table', 1),
(46, '2023_03_12_180847_create_master_beritas_table', 1),
(47, '2023_04_01_042201_create_master_rtrw_table', 1),
(48, '2023_08_01_195619_create_visits_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_surats`
--

CREATE TABLE `pengajuan_surats` (
  `id_pengajuan` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `nomor_surat` varchar(255) DEFAULT NULL,
  `no_pengantar` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `keterangan_ditolak` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `file_pdf` varchar(255) DEFAULT NULL,
  `image_bukti` char(255) DEFAULT NULL,
  `image_kk` varchar(255) DEFAULT NULL,
  `image_ktp` varchar(255) DEFAULT NULL,
  `image_suratnikah` varchar(255) DEFAULT NULL,
  `image_aktacerai` varchar(255) DEFAULT NULL,
  `image_suratkehilangan` varchar(255) DEFAULT NULL,
  `image_bidan` varchar(255) DEFAULT NULL,
  `image_suratlahir` varchar(255) DEFAULT NULL,
  `image_suratkematian` varchar(255) DEFAULT NULL,
  `image_aktekelahiran` varchar(255) DEFAULT NULL,
  `image_suratizin` varchar(255) DEFAULT NULL,
  `image_stnk` varchar(255) DEFAULT NULL,
  `image_bpkb` varchar(255) DEFAULT NULL,
  `image_sertifikat` varchar(255) DEFAULT NULL,
  `image_sppt` varchar(255) DEFAULT NULL,
  `image_surattanah` varchar(255) DEFAULT NULL,
  `pengantar_rt` varchar(255) DEFAULT NULL,
  `pengantar_rw` varchar(255) DEFAULT NULL,
  `info` enum('active','non_active') NOT NULL,
  `id_masyarakat` bigint(20) UNSIGNED NOT NULL,
  `id_surat` smallint(6) NOT NULL,
  `kode_kecamatan` varchar(255) DEFAULT NULL,
  `nomor_surat_tambahan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengajuan_surats`
--

INSERT INTO `pengajuan_surats` (`id_pengajuan`, `uuid`, `nomor_surat`, `no_pengantar`, `status`, `keterangan`, `keterangan_ditolak`, `created_at`, `updated_at`, `file_pdf`, `image_bukti`, `image_kk`, `image_ktp`, `image_suratnikah`, `image_aktacerai`, `image_suratkehilangan`, `image_bidan`, `image_suratlahir`, `image_suratkematian`, `image_aktekelahiran`, `image_suratizin`, `image_stnk`, `image_bpkb`, `image_sertifikat`, `image_sppt`, `image_surattanah`, `pengantar_rt`, `pengantar_rw`, `info`, `id_masyarakat`, `id_surat`, `kode_kecamatan`, `nomor_surat_tambahan`) VALUES
(29, 'c69e6d27-6128-4215-b600-40d602d75896', '470.1.0', NULL, 'Ditolak RT', 'pengajuan surat tidak mampu', 'gambar tidak sesuai', '2024-08-04 15:43:19', '2024-08-04 15:44:07', NULL, 'img_ZbmqiKAfL21722811399.png', 'img_RvjCd8STVR1722811399.jpg', 'img_PHh0oPPTzN1722811399.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'non_active', 29, 12, NULL, NULL),
(52, '166e67b3-43fd-4cde-a8fa-531cb7c11887', '470.1.1', '112345', 'Selesai', 'tidak mampu', NULL, '2024-08-06 06:36:17', '2024-08-06 06:42:38', 'Muhammad fajar dwi putra_3322176206600001_Surat Keterangan Tidak Mampu_52.pdf', 'img_VEb3sTYRxJ1722926177.jpg', 'img_57akOfbv6f1722926177.jpg', 'img_10rtXhMbBD1722926177.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'non_active', 29, 12, '123', '212'),
(86, 'bbe8af12-e2e0-438b-8c10-9e3af928e00d', '470.1.4', '5', 'Selesai', 'coba', NULL, '2024-09-04 04:08:16', '2024-09-04 17:01:42', 'Aysah Mayudi_3322176206740002_Surat Pindah_86.pdf', NULL, 'img_hsTtgB6E5c1725422896.jpg', 'img_xlaUhogmcC1725422896.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pdfs/86_pengantar_rt.pdf', 'pdfs/86_pengantar_rw.pdf', 'non_active', 30, 18, '427.90.60', '135'),
(92, '77a9ddcb-8f24-48b0-98e5-a183082fb1e4', '470.1.3', '4141', 'Selesai', 'surat pindah', NULL, '2024-09-04 16:18:03', '2024-09-04 17:01:33', 'Muhammad fajar dwi putra_3322176206600001_Surat Pindah_92.pdf', NULL, 'img_NTD7UGM6ER1725466683.jpg', 'img_O816YY7sSA1725466683.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pdfs/92_pengantar_rt.pdf', 'pdfs/92_pengantar_rw.pdf', 'non_active', 29, 18, '427.90.60', '135'),
(93, '0833bf70-a36d-4bf1-804c-8a25670517f7', NULL, '1112', 'Disetujui RW', 'status', NULL, '2024-09-04 17:05:02', '2024-09-04 17:06:36', NULL, NULL, 'img_PzqzVknn971725469502.jpg', 'img_CC9ssVGkJ51725469502.jpg', NULL, 'img_MDheD2stfO1725469502.jpg', NULL, NULL, NULL, 'img_BdrZGyDc1J1725469502.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pdfs/93_pengantar_rt.pdf', 'pdfs/93_pengantar_rw.pdf', 'active', 29, 24, NULL, NULL),
(94, 'aa7737b7-0ec3-4cb3-8d61-a8fb92ef4b9b', NULL, NULL, 'Diajukan', 'tinuninu', NULL, '2024-09-04 17:12:10', '2024-09-04 17:12:10', NULL, NULL, 'img_cuRlHoLEMK1725469930.png', 'img_1IdaKRXPqg1725469930.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 29, 5, NULL, NULL),
(95, 'd3e63276-5e99-45dd-bb67-f514928d577c', '470.1.5', '456', 'Selesai', 'Transaksi Tanah', NULL, '2024-09-05 04:41:15', '2024-09-05 04:44:47', 'Muhammad fajar dwi putra_3322176206600001_Surat Transaksi Harga Tanah_95.pdf', NULL, 'img_QJqTIiu1Du1725511275.jpg', 'img_jLMjmJC66e1725511275.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img_ywTrHzr7Hb1725511275.jpg', 'img_Rwd6MDtHGQ1725511275.jpg', NULL, 'pdfs/95_pengantar_rt.pdf', 'pdfs/95_pengantar_rw.pdf', 'non_active', 29, 22, '427.90.60', '135');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(9, 'App\\Models\\MobileMasterAkunModel', 1, 'authToken', 'b8cd322c328980a554b3af5868a94bdcf1b9c18d31f673037ca82e3a792dd27f', '[\"*\"]', '2024-07-27 21:24:58', '2024-07-27 21:06:55', '2024-07-27 21:24:58'),
(10, 'App\\Models\\MobileMasterAkunModel', 1, 'authToken', '5ef7ca1c7cdf71389c26073d4ef944d6f2945166caacaba198009ebfbeca8ca8', '[\"*\"]', '2024-07-28 15:47:18', '2024-07-28 15:41:42', '2024-07-28 15:47:18'),
(11, 'App\\Models\\MobileMasterAkunModel', 6, 'authToken', 'e1e9aac3aa0dc43800357ae0a97467e090999e3e9cb3cfa38bb7f1ae6e185c8a', '[\"*\"]', '2024-07-28 21:36:53', '2024-07-28 21:29:23', '2024-07-28 21:36:53'),
(12, 'App\\Models\\MobileMasterAkunModel', 7, 'authToken', '88ea185be9f9c45367ffe88dd939d22833e3917bac264b345ff69f5e76fe7345', '[\"*\"]', '2024-07-28 21:46:59', '2024-07-28 21:45:18', '2024-07-28 21:46:59'),
(13, 'App\\Models\\MobileMasterAkunModel', 8, 'authToken', '33059ffbca3b3af9cad2fb3df6595d7c7ef8251225b97ad222e4c1584e6982f5', '[\"*\"]', '2024-07-28 23:42:01', '2024-07-28 23:41:12', '2024-07-28 23:42:01'),
(14, 'App\\Models\\MobileMasterAkunModel', 10, 'authToken', '3877986716a33bd8c312d301024b6f266c22472fa9dbf9406c376cfdfb960104', '[\"*\"]', '2024-07-30 06:53:26', '2024-07-30 06:53:26', '2024-07-30 06:53:26'),
(21, 'App\\Models\\MobileMasterAkunModel', 10, 'authToken', '657337cd87d35bb6e7debff4bece47553d0dd345a1055d63f3bf248ac63fc805', '[\"*\"]', '2024-07-31 01:11:19', '2024-07-31 00:56:20', '2024-07-31 01:11:19'),
(22, 'App\\Models\\MobileMasterAkunModel', 10, 'authToken', '183cacb29f119608f0557baee7b65e68bd2e7ea9bdbd76834889c5cecda48e87', '[\"*\"]', '2024-08-01 01:16:08', '2024-07-31 22:09:28', '2024-08-01 01:16:08'),
(29, 'App\\Models\\MobileMasterAkunModel', 10, 'authToken', '7738557492a4eec7c67f093cce84a5b6edf379dae22853f278183fb3404d4dac', '[\"*\"]', '2024-08-03 02:07:34', '2024-08-03 02:05:59', '2024-08-03 02:07:34'),
(41, 'App\\Models\\MobileMasterAkunModel', 12, 'authToken', 'c12a374b8bc01f28a7cbed41fd7c4e30fc27b7d1764b317004f9353e80212789', '[\"*\"]', '2024-08-05 03:54:10', '2024-08-05 03:54:06', '2024-08-05 03:54:10'),
(65, 'App\\Models\\MobileMasterAkunModel', 13, 'authToken', '7daaccb8b4f2fe0bc64fc3d207a9aa5f465f366d2a6cce2226170db96e334329', '[\"*\"]', '2024-08-05 17:29:28', '2024-08-05 17:29:28', '2024-08-05 17:29:28'),
(85, 'App\\Models\\MobileMasterAkunModel', 13, 'authToken', '3e2ab51cc2b4bfdd3149208cd9056bacc4d9c58cfbc0c34632544ec6ec712445', '[\"*\"]', '2024-08-06 06:47:19', '2024-08-06 06:47:13', '2024-08-06 06:47:19'),
(110, 'App\\Models\\MobileMasterAkunModel', 17, 'authToken', '414e191290e1893c3ee54732bc88f910381bcf7c9f4296d828e22caac7607173', '[\"*\"]', '2024-08-16 12:55:10', '2024-08-10 12:48:23', '2024-08-16 12:55:10'),
(115, 'App\\Models\\MobileMasterAkunModel', 17, 'authToken', '72db0ab9a4a45a0dd9bba0aebbd7fa47f580670e5389557df223e20ad271f72a', '[\"*\"]', '2024-08-21 10:24:38', '2024-08-21 10:00:03', '2024-08-21 10:24:38'),
(124, 'App\\Models\\MobileMasterAkunModel', 20, 'authToken', '95b5a317bd60e4e44313d7ddbdb3b697d9ce3bb85cbf300857d9314c9b012586', '[\"*\"]', '2024-08-25 06:16:16', '2024-08-24 13:53:18', '2024-08-25 06:16:16'),
(129, 'App\\Models\\MobileMasterAkunModel', 19, 'authToken', '8869b7b4efb5d115160e342b3780c78d15cf8eea33af4fcf0787e8c27040b669', '[\"*\"]', '2024-08-27 12:33:19', '2024-08-27 12:33:18', '2024-08-27 12:33:19'),
(133, 'App\\Models\\MobileMasterAkunModel', 19, 'authToken', '3a4b32699c7296dcb2b88a8f0dc494e4fd9f3961c939c45fbbad31a584eaa452', '[\"*\"]', '2024-08-31 16:22:20', '2024-08-29 13:32:11', '2024-08-31 16:22:20'),
(134, 'App\\Models\\MobileMasterAkunModel', 19, 'authToken', '5262f45c2bfc05dd167d3913ff8afcf0d6887f446478ec5c2a862c2c6b565a06', '[\"*\"]', '2024-08-30 04:45:05', '2024-08-30 04:39:55', '2024-08-30 04:45:05'),
(135, 'App\\Models\\MobileMasterAkunModel', 19, 'authToken', '77a189b72b5fdc920cb9446df0c13e2b82b335b41c17f62bf5dffe746d4a5c6f', '[\"*\"]', '2024-09-01 05:36:39', '2024-09-01 05:32:23', '2024-09-01 05:36:39'),
(136, 'App\\Models\\MobileMasterAkunModel', 19, 'authToken', '1e00a2c06b66c11a7aac82ae30f5a7906b8c672dd8cd3b1d9c843e8c706c078a', '[\"*\"]', NULL, '2024-09-01 05:39:21', '2024-09-01 05:39:21'),
(151, 'App\\Models\\MobileMasterAkunModel', 19, 'authToken', '4bbdb2b0d59c137250f9e3d6f8ecce08431c2592a3c10fd57948784b699e8d7a', '[\"*\"]', '2024-09-02 04:14:10', '2024-09-02 04:13:34', '2024-09-02 04:14:10'),
(152, 'App\\Models\\MobileMasterAkunModel', 19, 'authToken', 'b13a34e5a0fef33095522fed589bc71a55dec8d93eee68b8693ba4dd1408c4a4', '[\"*\"]', '2024-09-02 09:42:46', '2024-09-02 09:36:00', '2024-09-02 09:42:46'),
(158, 'App\\Models\\MobileMasterAkunModel', 19, 'authToken', '573d361eca3525545c31a75a1bac40f2ecf1680d10c0611c1e4ccaf6fe30deb0', '[\"*\"]', '2024-09-02 10:45:47', '2024-09-02 10:43:46', '2024-09-02 10:45:47'),
(171, 'App\\Models\\MobileMasterAkunModel', 11, 'authToken', '0551b9d015dffb6b8910c3c6672adfc82ca4915f7ed3b496cab1d156fe27edeb', '[\"*\"]', '2024-09-02 14:16:03', '2024-09-02 14:13:13', '2024-09-02 14:16:03'),
(199, 'App\\Models\\MobileMasterAkunModel', 24, 'authToken', '9f6da9bde3f9b4312afb8aee35086359d3d68ecb010a15685b2de25796b55eaf', '[\"*\"]', '2024-09-03 16:35:37', '2024-09-03 16:35:11', '2024-09-03 16:35:37'),
(201, 'App\\Models\\MobileMasterAkunModel', 22, 'authToken', 'e4ad2bab8b6cdda9e8d89f21e4f76a03bf0629d883bc91b179bef449dc2e6d11', '[\"*\"]', '2024-09-04 01:26:20', '2024-09-04 01:26:20', '2024-09-04 01:26:20'),
(202, 'App\\Models\\MobileMasterAkunModel', 22, 'authToken', 'f235730f4159b8914d893ddb12e85183f19c7e5e85cf64aae686df943e977c40', '[\"*\"]', '2024-09-04 01:28:19', '2024-09-04 01:28:18', '2024-09-04 01:28:19'),
(203, 'App\\Models\\MobileMasterAkunModel', 22, 'authToken', 'da10e6dca33487fd78fb7f843290e5b15dc4914446303aa0fce816dd149d9d95', '[\"*\"]', '2024-09-04 01:29:01', '2024-09-04 01:29:00', '2024-09-04 01:29:01'),
(204, 'App\\Models\\MobileMasterAkunModel', 22, 'authToken', '238242c3eeb91a57c86a5ca849d33137d33efbcd47968ed1ef2731280a12a3e3', '[\"*\"]', '2024-09-04 01:30:05', '2024-09-04 01:30:05', '2024-09-04 01:30:05'),
(206, 'App\\Models\\MobileMasterAkunModel', 22, 'authToken', '286aa489f1ca7c30c8990f3a4428e9d2cb70079b3ff745b9bc6ef83541ef5cbf', '[\"*\"]', '2024-09-04 01:31:32', '2024-09-04 01:31:32', '2024-09-04 01:31:32'),
(207, 'App\\Models\\MobileMasterAkunModel', 22, 'authToken', '045f7a8d75637dc987d24651e9f6edd9fd169a713de74a7d3e3d251a441951eb', '[\"*\"]', '2024-09-04 01:33:07', '2024-09-04 01:33:06', '2024-09-04 01:33:07'),
(208, 'App\\Models\\MobileMasterAkunModel', 22, 'authToken', 'edc87328f98455c627833145cc195b099db369ab6e516a5f42fb0956ec027824', '[\"*\"]', '2024-09-04 01:33:37', '2024-09-04 01:33:37', '2024-09-04 01:33:37'),
(211, 'App\\Models\\MobileMasterAkunModel', 22, 'authToken', 'cfce91306da282a8f4960cd849654d6075548fa4ed374de9e4fa5083db4da922', '[\"*\"]', '2024-09-04 02:00:45', '2024-09-04 01:56:45', '2024-09-04 02:00:45'),
(214, 'App\\Models\\MobileMasterAkunModel', 22, 'authToken', 'de4fadf41c5f4ff863f8d78dad4c4f00fd95b89ad99e00830c0096a03b244b90', '[\"*\"]', '2024-09-04 02:18:22', '2024-09-04 02:18:22', '2024-09-04 02:18:22'),
(255, 'App\\Models\\MobileMasterAkunModel', 11, 'authToken', 'fbaab1c2ae6427cf57e9e408bec9a45203a5942f76900a229c59898b4691a3eb', '[\"*\"]', '2024-09-04 12:08:48', '2024-09-04 12:08:34', '2024-09-04 12:08:48'),
(256, 'App\\Models\\MobileMasterAkunModel', 11, 'authToken', 'e01938891f963de842a91482b75372b3f3fd1d3696e0e3d8369139cc984741f2', '[\"*\"]', '2024-09-04 12:38:16', '2024-09-04 12:37:50', '2024-09-04 12:38:16'),
(258, 'App\\Models\\MobileMasterAkunModel', 11, 'authToken', '9bff8925582cfddccdc0ef2e96ecaff70cef18c92c77685bd9188bb36ef4d065', '[\"*\"]', '2024-09-04 12:40:38', '2024-09-04 12:40:34', '2024-09-04 12:40:38'),
(259, 'App\\Models\\MobileMasterAkunModel', 11, 'authToken', '2e21a1d4970b6f812191fbfd1a56b2d0b0cfc5170b535696faa657ab1b921600', '[\"*\"]', '2024-09-04 12:46:21', '2024-09-04 12:45:43', '2024-09-04 12:46:21'),
(267, 'App\\Models\\MobileMasterAkunModel', 22, 'authToken', '5236c31dad01ebcba35ac3d311b33eedc2c51f1473a237591d0260de4a439ba8', '[\"*\"]', '2024-09-05 00:26:40', '2024-09-04 17:08:12', '2024-09-05 00:26:40'),
(268, 'App\\Models\\MobileMasterAkunModel', 22, 'authToken', '3ead5d6bbaeecc50dfc106c52c91c2685f38bec2c320ac9b5f6f5b5e9c63164b', '[\"*\"]', '2024-09-04 17:16:00', '2024-09-04 17:10:37', '2024-09-04 17:16:00'),
(270, 'App\\Models\\MobileMasterAkunModel', 25, 'authToken', '4fa4764060b9b367f6cb29689db57a1f02287048f33a434dc1fee89614b5be1a', '[\"*\"]', '2024-09-05 00:53:10', '2024-09-05 00:53:08', '2024-09-05 00:53:10'),
(272, 'App\\Models\\MobileMasterAkunModel', 26, 'authToken', '5dce9cbdf8db033b28c18579e915e4ad1bc05b446f0d798b9a18e61b831f0f24', '[\"*\"]', '2024-09-05 05:01:28', '2024-09-05 04:29:51', '2024-09-05 05:01:28'),
(274, 'App\\Models\\MobileMasterAkunModel', 12, 'authToken', '25187294d051b0847e6433f85f8d11b9ebbd0198b8fe212c7f6c4fd92168807f', '[\"*\"]', '2024-09-06 09:30:08', '2024-09-05 04:33:01', '2024-09-06 09:30:08'),
(275, 'App\\Models\\MobileMasterAkunModel', 11, 'authToken', '3948b1a3cf7781b05283efc6a1e723f58112e0ccaedefff965cd6948039da271', '[\"*\"]', '2024-09-07 06:33:37', '2024-09-05 04:34:06', '2024-09-07 06:33:37'),
(277, 'App\\Models\\MobileMasterAkunModel', 11, 'authToken', 'd9deec8de0ebfa62e28125b27e0dd87dda98cf83530675c442023f3baafb267e', '[\"*\"]', '2024-09-05 04:43:08', '2024-09-05 04:35:45', '2024-09-05 04:43:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visits`
--

CREATE TABLE `visits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `duration` int(10) UNSIGNED DEFAULT NULL,
  `visited_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visits`
--

INSERT INTO `visits` (`id`, `ip_address`, `user_agent`, `duration`, `visited_at`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, '2024-07-28 03:50:30', '2024-07-28 03:50:30', '2024-07-28 03:50:30'),
(2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 187, '2024-07-28 03:53:37', '2024-07-28 03:53:37', '2024-07-28 03:53:37'),
(3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 196, '2024-07-28 03:56:53', '2024-07-28 03:56:53', '2024-07-28 03:56:53'),
(4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 104, '2024-07-28 03:58:37', '2024-07-28 03:58:37', '2024-07-28 03:58:37'),
(5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 4441, '2024-07-28 05:12:37', '2024-07-28 05:12:38', '2024-07-28 05:12:38'),
(6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 58369, '2024-07-28 21:25:26', '2024-07-28 21:25:26', '2024-07-28 21:25:26'),
(7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 29201, '2024-07-29 05:32:07', '2024-07-29 05:32:07', '2024-07-29 05:32:07'),
(8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 109, '2024-07-29 05:33:56', '2024-07-29 05:33:56', '2024-07-29 05:33:56'),
(9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 423, '2024-07-29 05:40:59', '2024-07-29 05:40:59', '2024-07-29 05:40:59'),
(10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 22, '2024-07-29 05:41:21', '2024-07-29 05:41:21', '2024-07-29 05:41:21'),
(11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 95, '2024-07-29 05:42:56', '2024-07-29 05:42:56', '2024-07-29 05:42:56'),
(12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 104, '2024-07-29 05:44:40', '2024-07-29 05:44:40', '2024-07-29 05:44:40'),
(13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 29, '2024-07-29 05:45:09', '2024-07-29 05:45:09', '2024-07-29 05:45:09'),
(14, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 16, '2024-07-29 05:45:25', '2024-07-29 05:45:25', '2024-07-29 05:45:25'),
(15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 5, '2024-07-29 05:45:30', '2024-07-29 05:45:30', '2024-07-29 05:45:30'),
(16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 31, '2024-07-29 05:46:01', '2024-07-29 05:46:01', '2024-07-29 05:46:01'),
(17, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 52, '2024-07-29 05:46:53', '2024-07-29 05:46:53', '2024-07-29 05:46:53'),
(18, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 106, '2024-07-29 05:48:39', '2024-07-29 05:48:39', '2024-07-29 05:48:39'),
(19, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 20, '2024-07-29 05:48:59', '2024-07-29 05:48:59', '2024-07-29 05:48:59'),
(20, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 15, '2024-07-29 05:49:14', '2024-07-29 05:49:14', '2024-07-29 05:49:14'),
(21, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 22, '2024-07-29 05:49:36', '2024-07-29 05:49:36', '2024-07-29 05:49:36'),
(22, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 189, '2024-07-29 05:52:45', '2024-07-29 05:52:45', '2024-07-29 05:52:45'),
(23, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 89, '2024-07-29 05:54:14', '2024-07-29 05:54:14', '2024-07-29 05:54:14'),
(24, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 30, '2024-07-29 05:54:44', '2024-07-29 05:54:44', '2024-07-29 05:54:44'),
(25, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 143, '2024-07-29 05:57:07', '2024-07-29 05:57:07', '2024-07-29 05:57:07'),
(26, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 11, '2024-07-29 05:57:18', '2024-07-29 05:57:18', '2024-07-29 05:57:18'),
(27, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 104, '2024-07-29 05:59:02', '2024-07-29 05:59:02', '2024-07-29 05:59:02'),
(28, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 13, '2024-07-29 05:59:15', '2024-07-29 05:59:15', '2024-07-29 05:59:15'),
(29, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 61, '2024-07-29 06:00:16', '2024-07-29 06:00:16', '2024-07-29 06:00:16'),
(30, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 55, '2024-07-29 06:01:11', '2024-07-29 06:01:11', '2024-07-29 06:01:11'),
(31, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 94106, '2024-07-30 08:09:37', '2024-07-30 08:09:37', '2024-07-30 08:09:37'),
(32, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 15, '2024-07-30 08:09:52', '2024-07-30 08:09:52', '2024-07-30 08:09:52'),
(33, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 133, '2024-07-30 08:12:05', '2024-07-30 08:12:05', '2024-07-30 08:12:05'),
(34, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 50535, '2024-07-30 22:14:20', '2024-07-30 22:14:20', '2024-07-30 22:14:20'),
(35, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 617, '2024-07-30 22:24:37', '2024-07-30 22:24:37', '2024-07-30 22:24:37'),
(36, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 8763, '2024-07-31 00:50:39', '2024-07-31 00:50:40', '2024-07-31 00:50:40'),
(37, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 293, '2024-07-31 00:55:32', '2024-07-31 00:55:32', '2024-07-31 00:55:32'),
(38, '110.137.103.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, '2024-07-31 03:01:22', '2024-07-31 03:01:22', '2024-07-31 03:01:22'),
(39, '110.137.103.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 9265, '2024-07-31 05:35:47', '2024-07-31 05:35:47', '2024-07-31 05:35:47'),
(40, '110.137.103.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 1070, '2024-07-31 05:53:37', '2024-07-31 05:53:37', '2024-07-31 05:53:37'),
(41, '110.137.103.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 24, '2024-07-31 05:54:01', '2024-07-31 05:54:01', '2024-07-31 05:54:01'),
(42, '66.249.74.135', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.6478.182 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', NULL, '2024-07-31 05:55:09', '2024-07-31 05:55:09', '2024-07-31 05:55:09'),
(43, '103.157.146.182', 'node-fetch/1.0 (+https://github.com/bitinn/node-fetch)', NULL, '2024-07-31 05:58:33', '2024-07-31 05:58:33', '2024-07-31 05:58:33'),
(44, '110.137.103.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 402, '2024-07-31 06:00:43', '2024-07-31 06:00:43', '2024-07-31 06:00:43'),
(45, '176.53.218.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2024-07-31 06:44:23', '2024-07-31 06:44:23', '2024-07-31 06:44:23'),
(46, '34.94.145.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', NULL, '2024-07-31 06:55:27', '2024-07-31 06:55:27', '2024-07-31 06:55:27'),
(47, '34.94.145.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 0, '2024-07-31 06:55:27', '2024-07-31 06:55:27', '2024-07-31 06:55:27'),
(48, '34.94.145.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 1, '2024-07-31 06:55:28', '2024-07-31 06:55:28', '2024-07-31 06:55:28'),
(49, '23.111.114.116', 'Mozilla/5.0 (Android 9; Mobile; rv:78.0) Gecko/78.0 Firefox/78.0', NULL, '2024-07-31 08:48:50', '2024-07-31 08:48:50', '2024-07-31 08:48:50'),
(50, '35.235.75.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', NULL, '2024-07-31 10:20:13', '2024-07-31 10:20:13', '2024-07-31 10:20:13'),
(51, '35.235.75.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 1, '2024-07-31 10:20:14', '2024-07-31 10:20:14', '2024-07-31 10:20:14'),
(52, '35.235.75.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 2, '2024-07-31 10:20:15', '2024-07-31 10:20:16', '2024-07-31 10:20:16'),
(53, '43.131.62.4', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', NULL, '2024-07-31 11:04:43', '2024-07-31 11:04:43', '2024-07-31 11:04:43'),
(54, '66.249.71.33', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.6478.182 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', NULL, '2024-07-31 11:36:10', '2024-07-31 11:36:10', '2024-07-31 11:36:10'),
(55, '34.207.164.38', 'got (https://github.com/sindresorhus/got)', NULL, '2024-07-31 11:51:00', '2024-07-31 11:51:00', '2024-07-31 11:51:00'),
(56, '152.42.129.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, '2024-07-31 11:52:18', '2024-07-31 11:52:18', '2024-07-31 11:52:18'),
(57, '152.42.129.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 2, '2024-07-31 11:52:20', '2024-07-31 11:52:20', '2024-07-31 11:52:20'),
(58, '66.249.74.137', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.6478.182 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', NULL, '2024-07-31 12:10:51', '2024-07-31 12:10:51', '2024-07-31 12:10:51'),
(59, '149.88.106.156', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4240.193 Safari/537.36', NULL, '2024-07-31 12:45:56', '2024-07-31 12:45:56', '2024-07-31 12:45:56'),
(60, '149.88.106.156', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4240.193 Safari/537.36', 1, '2024-07-31 12:45:57', '2024-07-31 12:45:57', '2024-07-31 12:45:57'),
(61, '149.88.106.156', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4240.193 Safari/537.36', 0, '2024-07-31 12:45:57', '2024-07-31 12:45:57', '2024-07-31 12:45:57'),
(62, '66.249.71.66', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.6478.182 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', NULL, '2024-07-31 13:11:34', '2024-07-31 13:11:34', '2024-07-31 13:11:34'),
(63, '72.13.46.5', 'Mozilla/5.0 (compatible; ips-agent)', NULL, '2024-07-31 14:21:13', '2024-07-31 14:21:13', '2024-07-31 14:21:13'),
(64, '103.247.9.9', NULL, NULL, '2024-07-31 14:41:20', '2024-07-31 14:41:20', '2024-07-31 14:41:20'),
(65, '110.137.103.142', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', NULL, '2024-07-31 15:21:47', '2024-07-31 15:21:47', '2024-07-31 15:21:47'),
(66, '110.137.103.142', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 253, '2024-07-31 15:26:00', '2024-07-31 15:26:00', '2024-07-31 15:26:00'),
(67, '110.137.103.142', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 371, '2024-07-31 15:32:11', '2024-07-31 15:32:11', '2024-07-31 15:32:11'),
(68, '170.254.179.241', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', NULL, '2024-07-31 15:33:22', '2024-07-31 15:33:22', '2024-07-31 15:33:22'),
(69, '191.102.174.162', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', NULL, '2024-07-31 15:33:24', '2024-07-31 15:33:24', '2024-07-31 15:33:24'),
(70, '110.137.103.142', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 281, '2024-07-31 15:36:52', '2024-07-31 15:36:52', '2024-07-31 15:36:52'),
(71, '110.137.103.142', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 94, '2024-07-31 15:38:26', '2024-07-31 15:38:26', '2024-07-31 15:38:26'),
(72, '89.104.110.164', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2024-07-31 18:03:33', '2024-07-31 18:03:33', '2024-07-31 18:03:33'),
(73, '95.177.180.82', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1', NULL, '2024-07-31 19:01:44', '2024-07-31 19:01:44', '2024-07-31 19:01:44'),
(74, '34.106.145.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', NULL, '2024-07-31 20:20:24', '2024-07-31 20:20:24', '2024-07-31 20:20:24'),
(75, '34.106.145.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 1, '2024-07-31 20:20:25', '2024-07-31 20:20:25', '2024-07-31 20:20:25'),
(76, '34.106.145.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 1, '2024-07-31 20:20:26', '2024-07-31 20:20:26', '2024-07-31 20:20:26'),
(77, '104.166.80.4', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', NULL, '2024-07-31 21:24:39', '2024-07-31 21:24:39', '2024-07-31 21:24:39'),
(78, '110.137.103.142', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 21044, '2024-07-31 21:29:10', '2024-07-31 21:29:10', '2024-07-31 21:29:10'),
(79, '66.249.71.69', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.6478.182 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', NULL, '2024-08-01 00:37:49', '2024-08-01 00:37:49', '2024-08-01 00:37:49'),
(80, '110.137.103.142', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 11825, '2024-08-01 00:46:15', '2024-08-01 00:46:15', '2024-08-01 00:46:15'),
(81, '110.137.103.142', 'WhatsApp/2.2429.10 W', 6, '2024-08-01 00:46:21', '2024-08-01 00:46:21', '2024-08-01 00:46:21'),
(82, '103.184.54.60', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, '2024-08-01 00:48:27', '2024-08-01 00:48:27', '2024-08-01 00:48:27'),
(83, '202.43.172.5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, '2024-08-01 00:48:29', '2024-08-01 00:48:29', '2024-08-01 00:48:29'),
(84, '103.157.146.182', 'node-fetch/1.0 (+https://github.com/bitinn/node-fetch)', 67901, '2024-08-01 00:50:14', '2024-08-01 00:50:14', '2024-08-01 00:50:14'),
(85, '103.157.146.182', 'node-fetch/1.0 (+https://github.com/bitinn/node-fetch)', 125, '2024-08-01 00:52:19', '2024-08-01 00:52:19', '2024-08-01 00:52:19'),
(86, '114.125.127.44', 'WhatsApp/2.23.20.0', NULL, '2024-08-01 00:53:05', '2024-08-01 00:53:05', '2024-08-01 00:53:05'),
(87, '66.249.71.69', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.6478.182 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 929, '2024-08-01 00:53:18', '2024-08-01 00:53:18', '2024-08-01 00:53:18'),
(88, '110.137.103.142', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 847, '2024-08-01 01:00:28', '2024-08-01 01:00:28', '2024-08-01 01:00:28'),
(89, '182.1.74.80', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', NULL, '2024-08-01 01:04:43', '2024-08-01 01:04:43', '2024-08-01 01:04:43'),
(90, '103.247.9.91', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, '2024-08-01 02:09:56', '2024-08-01 02:09:56', '2024-08-01 02:09:56'),
(91, '44.228.242.45', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML', NULL, '2024-08-01 03:11:56', '2024-08-01 03:11:56', '2024-08-01 03:11:56'),
(92, '44.228.242.45', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML', 5, '2024-08-01 03:12:01', '2024-08-01 03:12:01', '2024-08-01 03:12:01'),
(93, '216.19.200.71', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/99.0.4844.47 Mobile/15E148 Safari/604.1', NULL, '2024-08-01 04:05:30', '2024-08-01 04:05:30', '2024-08-01 04:05:30'),
(94, '188.94.85.53', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/99.0.4844.47 Mobile/15E148 Safari/604.1', NULL, '2024-08-01 04:05:36', '2024-08-01 04:05:36', '2024-08-01 04:05:36'),
(95, '119.12.198.188', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/99.0.4844.47 Mobile/15E148 Safari/604.1', NULL, '2024-08-01 04:05:44', '2024-08-01 04:05:44', '2024-08-01 04:05:44'),
(96, '43.131.62.4', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 70750, '2024-08-01 06:43:53', '2024-08-01 06:43:53', '2024-08-01 06:43:53'),
(97, '18.119.192.190', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.6167.160 Safari/537.36', NULL, '2024-08-01 06:45:16', '2024-08-01 06:45:16', '2024-08-01 06:45:16'),
(98, '46.191.188.179', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, '2024-08-01 07:26:39', '2024-08-01 07:26:39', '2024-08-01 07:26:39'),
(99, '46.191.188.179', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 2, '2024-08-01 07:26:41', '2024-08-01 07:26:41', '2024-08-01 07:26:41'),
(100, '46.191.188.179', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 2, '2024-08-01 07:26:43', '2024-08-01 07:26:43', '2024-08-01 07:26:43'),
(101, '46.191.188.179', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 1, '2024-08-01 07:26:44', '2024-08-01 07:26:44', '2024-08-01 07:26:44'),
(102, '104.166.80.34', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', NULL, '2024-08-01 07:54:03', '2024-08-01 07:54:03', '2024-08-01 07:54:03'),
(103, '46.191.188.179', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 2975, '2024-08-01 08:16:19', '2024-08-01 08:16:19', '2024-08-01 08:16:19'),
(104, '46.191.188.179', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 2, '2024-08-01 08:16:21', '2024-08-01 08:16:21', '2024-08-01 08:16:21'),
(105, '46.191.188.179', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 2, '2024-08-01 08:16:23', '2024-08-01 08:16:23', '2024-08-01 08:16:23'),
(106, '46.191.188.179', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 1, '2024-08-01 08:16:24', '2024-08-01 08:16:24', '2024-08-01 08:16:24'),
(107, '89.104.100.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2024-08-01 08:49:18', '2024-08-01 08:49:18', '2024-08-01 08:49:18'),
(108, '66.249.71.70', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.6478.182 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', NULL, '2024-08-01 08:55:44', '2024-08-01 08:55:44', '2024-08-01 08:55:44'),
(109, '62.210.111.47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', NULL, '2024-08-01 08:58:31', '2024-08-01 08:58:31', '2024-08-01 08:58:31'),
(110, '103.247.9.9', NULL, 85175, '2024-08-01 14:20:55', '2024-08-01 14:20:55', '2024-08-01 14:20:55'),
(111, '54.78.42.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.66 Safari/537.36 Edg/103.0.1264.44', NULL, '2024-08-01 15:00:07', '2024-08-01 15:00:07', '2024-08-01 15:00:07'),
(112, '23.111.114.116', 'Mozilla/5.0 (Linux; Android 10; MAR-LX1M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Mobile Safari/537.36', 108958, '2024-08-01 15:04:48', '2024-08-01 15:04:48', '2024-08-01 15:04:48'),
(113, '8.218.224.37', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2024-08-01 16:49:48', '2024-08-01 16:49:48', '2024-08-01 16:49:48'),
(114, '182.44.9.147', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', NULL, '2024-08-01 17:13:12', '2024-08-01 17:13:12', '2024-08-01 17:13:12'),
(115, '2602:80d:1004::16', NULL, NULL, '2024-08-01 17:27:46', '2024-08-01 17:27:46', '2024-08-01 17:27:46'),
(116, '2602:80d:1004::16', NULL, 0, '2024-08-01 17:27:46', '2024-08-01 17:27:46', '2024-08-01 17:27:46'),
(117, '2602:80d:1004::16', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', 3, '2024-08-01 17:27:49', '2024-08-01 17:27:49', '2024-08-01 17:27:49'),
(118, '2602:80d:1004::16', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', 1, '2024-08-01 17:27:50', '2024-08-01 17:27:50', '2024-08-01 17:27:50'),
(119, '176.53.221.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2024-08-01 18:40:21', '2024-08-01 18:40:21', '2024-08-01 18:40:21'),
(120, '43.131.62.4', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 44372, '2024-08-01 19:03:25', '2024-08-01 19:03:25', '2024-08-01 19:03:25'),
(121, '49.51.40.195', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', NULL, '2024-08-01 19:03:49', '2024-08-01 19:03:49', '2024-08-01 19:03:49'),
(122, '49.51.40.195', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 0, '2024-08-01 19:03:49', '2024-08-01 19:03:49', '2024-08-01 19:03:49'),
(123, '110.137.103.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, '2024-08-01 19:11:17', '2024-08-01 19:11:17', '2024-08-01 19:11:17'),
(124, '110.137.103.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 1221, '2024-08-01 19:31:38', '2024-08-01 19:31:38', '2024-08-01 19:31:38'),
(125, '110.137.103.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 6032, '2024-08-01 21:12:10', '2024-08-01 21:12:10', '2024-08-01 21:12:10'),
(126, '110.137.103.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 8419, '2024-08-01 23:32:29', '2024-08-01 23:32:29', '2024-08-01 23:32:29'),
(127, '110.137.103.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 1293, '2024-08-01 23:54:02', '2024-08-01 23:54:02', '2024-08-01 23:54:02'),
(128, '110.137.103.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 9, '2024-08-01 23:54:11', '2024-08-01 23:54:11', '2024-08-01 23:54:11'),
(129, '110.137.103.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 63, '2024-08-01 23:55:14', '2024-08-01 23:55:14', '2024-08-01 23:55:14'),
(130, '110.137.103.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 12, '2024-08-01 23:55:26', '2024-08-01 23:55:26', '2024-08-01 23:55:26'),
(131, '110.137.103.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 60, '2024-08-01 23:56:26', '2024-08-01 23:56:26', '2024-08-01 23:56:26'),
(132, '110.137.103.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 9, '2024-08-01 23:56:35', '2024-08-01 23:56:35', '2024-08-01 23:56:35'),
(133, '110.137.103.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 36, '2024-08-01 23:57:11', '2024-08-01 23:57:11', '2024-08-01 23:57:11'),
(134, '110.137.103.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 800, '2024-08-02 00:10:31', '2024-08-02 00:10:31', '2024-08-02 00:10:31'),
(135, '110.137.103.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 30, '2024-08-02 00:11:01', '2024-08-02 00:11:01', '2024-08-02 00:11:01'),
(136, '138.186.138.237', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', NULL, '2024-08-02 01:38:34', '2024-08-02 01:38:34', '2024-08-02 01:38:34'),
(137, '84.239.40.247', 'Mozilla/5.0 (Windows NT 10.0.0; Win64; x64; ) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.6367.91 Chrome/124.0.6367.91 Not-A.Brand/99  Safari/537.36', NULL, '2024-08-02 03:28:50', '2024-08-02 03:28:50', '2024-08-02 03:28:50'),
(138, '49.51.179.103', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', NULL, '2024-08-02 05:05:59', '2024-08-02 05:05:59', '2024-08-02 05:05:59'),
(139, '138.68.157.147', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, '2024-08-02 05:51:20', '2024-08-02 05:51:20', '2024-08-02 05:51:20'),
(140, '138.68.157.147', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 1, '2024-08-02 05:51:21', '2024-08-02 05:51:21', '2024-08-02 05:51:21'),
(141, '24.199.81.90', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, '2024-08-02 06:07:01', '2024-08-02 06:07:01', '2024-08-02 06:07:01'),
(142, '24.199.81.90', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 2, '2024-08-02 06:07:03', '2024-08-02 06:07:03', '2024-08-02 06:07:03'),
(143, '89.104.101.30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2024-08-02 06:16:58', '2024-08-02 06:16:58', '2024-08-02 06:16:58'),
(144, '156.146.35.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', NULL, '2024-08-02 06:27:04', '2024-08-02 06:27:04', '2024-08-02 06:27:04'),
(145, '156.146.35.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 1, '2024-08-02 06:27:05', '2024-08-02 06:27:05', '2024-08-02 06:27:05'),
(146, '156.146.35.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 2, '2024-08-02 06:27:07', '2024-08-02 06:27:07', '2024-08-02 06:27:07'),
(147, '47.243.118.241', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', NULL, '2024-08-02 07:20:37', '2024-08-02 07:20:37', '2024-08-02 07:20:37'),
(148, '104.166.80.132', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', NULL, '2024-08-02 08:12:25', '2024-08-02 08:12:25', '2024-08-02 08:12:25'),
(149, '137.226.113.44', 'Mozilla/5.0 researchscan.comsys.rwth-aachen.de', NULL, '2024-08-02 08:19:01', '2024-08-02 08:19:01', '2024-08-02 08:19:01'),
(150, '66.249.68.38', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.6478.182 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', NULL, '2024-08-02 08:49:31', '2024-08-02 08:49:31', '2024-08-02 08:49:31'),
(151, '176.53.217.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2024-08-02 09:27:40', '2024-08-02 09:27:40', '2024-08-02 09:27:40'),
(152, '23.111.114.116', 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 4X) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Mobile Safari/537.36', 80284, '2024-08-02 13:22:52', '2024-08-02 13:22:52', '2024-08-02 13:22:52'),
(153, '103.247.9.9', NULL, 87675, '2024-08-02 14:42:10', '2024-08-02 14:42:10', '2024-08-02 14:42:10'),
(154, '139.9.187.77', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/536.6 (KHTML, like Gecko) Chrome/20.0.1092.0 Safari/536.6', NULL, '2024-08-02 15:26:30', '2024-08-02 15:26:30', '2024-08-02 15:26:30'),
(155, '89.104.110.164', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 176058, '2024-08-02 18:57:51', '2024-08-02 18:57:51', '2024-08-02 18:57:51'),
(156, '183.129.153.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', NULL, '2024-08-02 19:49:03', '2024-08-02 19:49:03', '2024-08-02 19:49:03'),
(157, '110.137.103.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 72788, '2024-08-02 20:24:09', '2024-08-02 20:24:10', '2024-08-02 20:24:10'),
(158, '183.129.153.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', 2314, '2024-08-02 20:27:37', '2024-08-02 20:27:37', '2024-08-02 20:27:37'),
(159, '34.72.176.129', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/92.0.4515.159 Safari/537.36', NULL, '2024-08-02 20:37:32', '2024-08-02 20:37:32', '2024-08-02 20:37:32'),
(160, '34.122.147.229', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/92.0.4515.159 Safari/537.36', NULL, '2024-08-02 20:37:52', '2024-08-02 20:37:52', '2024-08-02 20:37:52'),
(161, '34.72.176.129', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/92.0.4515.159 Safari/537.36', 20, '2024-08-02 20:37:52', '2024-08-02 20:37:52', '2024-08-02 20:37:52'),
(162, '205.169.39.247', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', NULL, '2024-08-02 20:37:55', '2024-08-02 20:37:55', '2024-08-02 20:37:55'),
(163, '205.169.39.84', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', NULL, '2024-08-02 20:38:00', '2024-08-02 20:38:00', '2024-08-02 20:38:00'),
(164, '205.169.39.242', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', NULL, '2024-08-02 20:38:04', '2024-08-02 20:38:04', '2024-08-02 20:38:04'),
(165, '205.169.39.247', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 17, '2024-08-02 20:38:12', '2024-08-02 20:38:12', '2024-08-02 20:38:12'),
(166, '205.169.39.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 13, '2024-08-02 20:38:13', '2024-08-02 20:38:13', '2024-08-02 20:38:13'),
(167, '205.169.39.242', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 40, '2024-08-02 20:38:44', '2024-08-02 20:38:44', '2024-08-02 20:38:44'),
(168, '104.197.69.115', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/117.0.5938.132 Safari/537.36', NULL, '2024-08-02 20:39:05', '2024-08-02 20:39:05', '2024-08-02 20:39:05'),
(169, '205.169.39.178', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', NULL, '2024-08-02 20:40:38', '2024-08-02 20:40:38', '2024-08-02 20:40:38'),
(170, '205.169.39.178', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 11, '2024-08-02 20:40:49', '2024-08-02 20:40:49', '2024-08-02 20:40:49'),
(171, '205.169.39.5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.5938.132 Safari/537.36', NULL, '2024-08-02 20:49:19', '2024-08-02 20:49:19', '2024-08-02 20:49:19'),
(172, '205.169.39.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.5938.132 Safari/537.36', NULL, '2024-08-02 20:50:42', '2024-08-02 20:50:42', '2024-08-02 20:50:42'),
(173, '205.169.39.6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.5938.132 Safari/537.36', NULL, '2024-08-02 20:50:43', '2024-08-02 20:50:43', '2024-08-02 20:50:43'),
(174, '104.166.80.162', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', NULL, '2024-08-02 22:18:50', '2024-08-02 22:18:50', '2024-08-02 22:18:50'),
(175, '204.15.64.226', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322; .NET CLR 2.0.50728)', NULL, '2024-08-03 00:34:07', '2024-08-03 00:34:07', '2024-08-03 00:34:07'),
(176, '204.15.64.226', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322; .NET CLR 2.0.50728)', 0, '2024-08-03 00:34:07', '2024-08-03 00:34:07', '2024-08-03 00:34:07'),
(177, '110.137.103.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 20106, '2024-08-03 01:59:15', '2024-08-03 01:59:15', '2024-08-03 01:59:15'),
(178, '66.249.68.37', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.6478.182 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', NULL, '2024-08-03 02:04:47', '2024-08-03 02:04:47', '2024-08-03 02:04:47'),
(179, '66.249.68.39', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.6478.182 Mobile Safari/537.36 (compatible; GoogleOther)', NULL, '2024-08-03 02:17:39', '2024-08-03 02:17:39', '2024-08-03 02:17:39'),
(180, '54.149.74.186', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', NULL, '2024-08-03 03:09:11', '2024-08-03 03:09:11', '2024-08-03 03:09:11'),
(181, '35.90.165.51', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', NULL, '2024-08-03 03:09:12', '2024-08-03 03:09:12', '2024-08-03 03:09:12'),
(182, '43.157.66.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', NULL, '2024-08-03 03:18:17', '2024-08-03 03:18:17', '2024-08-03 03:18:17'),
(183, '110.137.103.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 8315, '2024-08-03 04:17:50', '2024-08-03 04:17:50', '2024-08-03 04:17:50'),
(184, '2001:b011:d803:bcb3:14de:dc78:a32e:998d', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.3', NULL, '2024-08-03 04:55:55', '2024-08-03 04:55:55', '2024-08-03 04:55:55'),
(185, '110.137.103.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 2812, '2024-08-03 05:04:42', '2024-08-03 05:04:42', '2024-08-03 05:04:42'),
(186, '110.137.103.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 0, '2024-08-03 05:04:42', '2024-08-03 05:04:42', '2024-08-03 05:04:42'),
(187, '110.137.103.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 235, '2024-08-03 05:08:37', '2024-08-03 05:08:37', '2024-08-03 05:08:37'),
(188, '110.137.103.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 1146, '2024-08-03 05:27:43', '2024-08-03 05:27:43', '2024-08-03 05:27:43'),
(189, '110.137.103.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 1271, '2024-08-03 05:48:54', '2024-08-03 05:48:54', '2024-08-03 05:48:54'),
(190, '89.187.161.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', NULL, '2024-08-03 08:06:16', '2024-08-03 08:06:16', '2024-08-03 08:06:16'),
(191, '89.187.161.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 0, '2024-08-03 08:06:16', '2024-08-03 08:06:16', '2024-08-03 08:06:16'),
(192, '89.187.161.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 1, '2024-08-03 08:06:17', '2024-08-03 08:06:17', '2024-08-03 08:06:17'),
(193, '89.187.161.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 0, '2024-08-03 08:06:17', '2024-08-03 08:06:17', '2024-08-03 08:06:17'),
(194, '89.187.161.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 1, '2024-08-03 08:06:18', '2024-08-03 08:06:18', '2024-08-03 08:06:18'),
(195, '128.90.170.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', NULL, '2024-08-03 08:23:37', '2024-08-03 08:23:37', '2024-08-03 08:23:37'),
(196, '43.131.62.4', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 136420, '2024-08-03 08:57:05', '2024-08-03 08:57:05', '2024-08-03 08:57:05'),
(197, '45.90.60.244', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2024-08-03 08:58:27', '2024-08-03 08:58:27', '2024-08-03 08:58:27'),
(198, '23.111.114.116', 'Mozilla/5.0 (Linux; Android 10; Redmi Note 7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.115 Mobile Safari/537.36', 83929, '2024-08-03 12:41:41', '2024-08-03 12:41:41', '2024-08-03 12:41:41'),
(199, '2a0c:5a81:b503:3c00:d1dc:325d:2846:19d6', 'Python/3.11 aiohttp/3.8.4', NULL, '2024-08-03 14:05:43', '2024-08-03 14:05:43', '2024-08-03 14:05:43'),
(200, '103.247.9.9', NULL, 85009, '2024-08-03 14:18:59', '2024-08-03 14:18:59', '2024-08-03 14:18:59'),
(201, '95.164.156.136', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', NULL, '2024-08-03 15:30:28', '2024-08-03 15:30:28', '2024-08-03 15:30:28'),
(202, '38.154.186.176', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', NULL, '2024-08-03 15:30:29', '2024-08-03 15:30:29', '2024-08-03 15:30:29'),
(203, '193.148.16.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0 Safari/537.36', NULL, '2024-08-03 18:08:37', '2024-08-03 18:08:37', '2024-08-03 18:08:37'),
(204, '193.148.16.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0 Safari/537.36', 0, '2024-08-03 18:08:37', '2024-08-03 18:08:37', '2024-08-03 18:08:37'),
(205, '193.148.16.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0 Safari/537.36', 1, '2024-08-03 18:08:38', '2024-08-03 18:08:38', '2024-08-03 18:08:38'),
(206, '93.118.41.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0 Safari/537.36', NULL, '2024-08-03 18:20:52', '2024-08-03 18:20:52', '2024-08-03 18:20:52'),
(207, '93.118.41.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0 Safari/537.36', 0, '2024-08-03 18:20:52', '2024-08-03 18:20:52', '2024-08-03 18:20:52'),
(208, '93.118.41.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0 Safari/537.36', 1, '2024-08-03 18:20:53', '2024-08-03 18:20:53', '2024-08-03 18:20:53'),
(209, '146.190.129.216', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, '2024-08-03 18:25:21', '2024-08-03 18:25:21', '2024-08-03 18:25:21'),
(210, '146.190.129.216', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 1, '2024-08-03 18:25:22', '2024-08-03 18:25:22', '2024-08-03 18:25:22'),
(211, '176.53.222.224', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2024-08-03 18:53:01', '2024-08-03 18:53:01', '2024-08-03 18:53:01'),
(212, '139.162.128.191', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', NULL, '2024-08-03 20:13:16', '2024-08-03 20:13:16', '2024-08-03 20:13:16'),
(213, '170.187.184.242', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', NULL, '2024-08-03 20:13:19', '2024-08-03 20:13:19', '2024-08-03 20:13:19'),
(214, '31.222.200.35', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', NULL, '2024-08-03 21:50:17', '2024-08-03 21:50:17', '2024-08-03 21:50:17'),
(215, '84.239.12.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', NULL, '2024-08-03 22:23:47', '2024-08-03 22:23:47', '2024-08-03 22:23:47'),
(216, '84.239.12.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 1, '2024-08-03 22:23:48', '2024-08-03 22:23:48', '2024-08-03 22:23:48'),
(217, '84.239.12.15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 1, '2024-08-03 22:23:49', '2024-08-03 22:23:49', '2024-08-03 22:23:49'),
(218, '170.187.184.242', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 9567, '2024-08-03 22:52:46', '2024-08-03 22:52:46', '2024-08-03 22:52:46'),
(219, '170.187.184.242', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 1, '2024-08-03 22:52:47', '2024-08-03 22:52:47', '2024-08-03 22:52:47'),
(220, '170.187.184.242', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 0, '2024-08-03 22:52:47', '2024-08-03 22:52:47', '2024-08-03 22:52:47'),
(221, '170.187.184.242', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 0, '2024-08-03 22:52:47', '2024-08-03 22:52:47', '2024-08-03 22:52:47'),
(222, '2602:80d:1000::59', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', NULL, '2024-08-03 23:25:42', '2024-08-03 23:25:42', '2024-08-03 23:25:42'),
(223, '2001:bc8:701:1e:46a8:42ff:fe1c:41ca', 'curl/7.81.0', NULL, '2024-08-03 23:58:42', '2024-08-03 23:58:42', '2024-08-03 23:58:42'),
(224, '2001:bc8:701:1e:46a8:42ff:fe1c:41ca', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.3', 6, '2024-08-03 23:58:48', '2024-08-03 23:58:48', '2024-08-03 23:58:48'),
(225, '2001:bc8:701:1e:46a8:42ff:fe1c:41ca', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.3', 13, '2024-08-03 23:59:01', '2024-08-03 23:59:01', '2024-08-03 23:59:01'),
(226, '49.51.36.179', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', NULL, '2024-08-04 01:38:18', '2024-08-04 01:38:18', '2024-08-04 01:38:18'),
(227, '45.90.63.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2024-08-04 08:42:10', '2024-08-04 08:42:10', '2024-08-04 08:42:10'),
(228, '89.104.111.255', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2024-08-04 08:42:11', '2024-08-04 08:42:11', '2024-08-04 08:42:11'),
(229, '23.111.114.116', 'Mozilla/5.0 (Linux; Android 10; SM-A600FN) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Mobile Safari/537.36', 77823, '2024-08-04 10:18:44', '2024-08-04 10:18:44', '2024-08-04 10:18:44'),
(230, '135.148.195.7', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL, '2024-08-04 10:43:31', '2024-08-04 10:43:31', '2024-08-04 10:43:31'),
(231, '62.210.111.47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 268836, '2024-08-04 11:39:07', '2024-08-04 11:39:07', '2024-08-04 11:39:07'),
(232, '62.210.111.47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 3767, '2024-08-04 12:41:54', '2024-08-04 12:41:54', '2024-08-04 12:41:54'),
(233, '103.247.9.9', NULL, 86952, '2024-08-04 14:28:11', '2024-08-04 14:28:11', '2024-08-04 14:28:11'),
(234, '110.137.103.136', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, '2024-08-04 15:16:58', '2024-08-04 15:16:58', '2024-08-04 15:16:58'),
(235, '110.137.103.136', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 822, '2024-08-04 15:30:40', '2024-08-04 15:30:40', '2024-08-04 15:30:40'),
(236, '110.137.103.136', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 1104, '2024-08-04 15:49:04', '2024-08-04 15:49:04', '2024-08-04 15:49:04'),
(237, '89.104.110.178', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2024-08-04 18:33:48', '2024-08-04 18:33:48', '2024-08-04 18:33:48'),
(238, '43.157.66.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 143537, '2024-08-04 19:10:34', '2024-08-04 19:10:34', '2024-08-04 19:10:34');
INSERT INTO `visits` (`id`, `ip_address`, `user_agent`, `duration`, `visited_at`, `created_at`, `updated_at`) VALUES
(239, '49.51.243.156', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', NULL, '2024-08-04 19:29:45', '2024-08-04 19:29:45', '2024-08-04 19:29:45'),
(240, '114.125.101.225', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, '2024-08-04 21:11:44', '2024-08-04 21:11:44', '2024-08-04 21:11:44'),
(241, '138.186.138.237', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', 247301, '2024-08-04 22:20:15', '2024-08-04 22:20:15', '2024-08-04 22:20:15'),
(242, '110.137.103.136', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 33207, '2024-08-05 01:02:31', '2024-08-05 01:02:31', '2024-08-05 01:02:31'),
(243, '110.137.103.136', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 1005, '2024-08-05 01:19:16', '2024-08-05 01:19:16', '2024-08-05 01:19:16'),
(244, '182.44.12.37', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', NULL, '2024-08-05 02:16:24', '2024-08-05 02:16:24', '2024-08-05 02:16:24'),
(245, '111.7.96.180', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', NULL, '2024-08-05 02:51:06', '2024-08-05 02:51:06', '2024-08-05 02:51:06'),
(246, '111.7.96.180', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 1, '2024-08-05 02:51:07', '2024-08-05 02:51:07', '2024-08-05 02:51:07'),
(247, '110.137.103.136', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 9153, '2024-08-05 03:51:49', '2024-08-05 03:51:49', '2024-08-05 03:51:49'),
(248, '110.137.103.136', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 2510, '2024-08-05 04:33:39', '2024-08-05 04:33:39', '2024-08-05 04:33:39'),
(249, '52.11.171.106', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/110.0', NULL, '2024-08-05 05:34:01', '2024-08-05 05:34:01', '2024-08-05 05:34:01'),
(250, '104.166.80.143', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', NULL, '2024-08-05 07:28:56', '2024-08-05 07:28:56', '2024-08-05 07:28:56'),
(251, '43.131.62.4', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 169871, '2024-08-05 08:08:15', '2024-08-05 08:08:16', '2024-08-05 08:08:16'),
(252, '49.51.47.100', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', NULL, '2024-08-05 08:44:02', '2024-08-05 08:44:02', '2024-08-05 08:44:02'),
(253, '176.53.219.243', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2024-08-05 08:52:57', '2024-08-05 08:52:57', '2024-08-05 08:52:57'),
(254, '103.247.9.9', NULL, 87122, '2024-08-05 14:40:13', '2024-08-05 14:40:13', '2024-08-05 14:40:13'),
(255, '23.111.114.116', 'Mozilla/5.0 (Linux; Android 10; SAMSUNG SM-N985F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/13.0 Chrome/83.0.4103.106 Mobile Safari/537.36', 109141, '2024-08-05 16:37:45', '2024-08-05 16:37:45', '2024-08-05 16:37:45'),
(256, '2602:80d:1005::18', NULL, NULL, '2024-08-05 17:21:32', '2024-08-05 17:21:32', '2024-08-05 17:21:32'),
(257, '2602:80d:1005::18', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', 4, '2024-08-05 17:21:36', '2024-08-05 17:21:36', '2024-08-05 17:21:36'),
(258, '110.137.103.136', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 46461, '2024-08-05 17:28:00', '2024-08-05 17:28:00', '2024-08-05 17:28:00'),
(259, '176.53.219.135', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', NULL, '2024-08-05 18:19:22', '2024-08-05 18:19:22', '2024-08-05 18:19:22'),
(260, '84.17.42.5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', NULL, '2024-08-05 18:53:47', '2024-08-05 18:53:47', '2024-08-05 18:53:47'),
(261, '34.90.160.158', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', NULL, '2024-08-05 20:35:54', '2024-08-05 20:35:54', '2024-08-05 20:35:54'),
(262, '34.90.160.158', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 1, '2024-08-05 20:35:55', '2024-08-05 20:35:55', '2024-08-05 20:35:55'),
(263, '34.90.160.158', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 1, '2024-08-05 20:35:56', '2024-08-05 20:35:56', '2024-08-05 20:35:56'),
(264, '110.137.103.136', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 37252, '2024-08-06 03:48:52', '2024-08-06 03:48:52', '2024-08-06 03:48:52'),
(265, '110.137.103.136', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 246, '2024-08-06 03:52:58', '2024-08-06 03:52:58', '2024-08-06 03:52:58'),
(266, '110.137.103.136', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 35, '2024-08-06 03:53:33', '2024-08-06 03:53:33', '2024-08-06 03:53:33'),
(267, '110.137.103.136', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 376, '2024-08-06 03:59:49', '2024-08-06 03:59:49', '2024-08-06 03:59:49'),
(268, '110.137.103.136', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 93, '2024-08-06 04:01:22', '2024-08-06 04:01:22', '2024-08-06 04:01:22'),
(269, '110.137.103.136', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 9479, '2024-08-06 06:39:21', '2024-08-06 06:39:21', '2024-08-06 06:39:21'),
(270, '5.133.192.136', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', NULL, '2024-08-06 07:37:15', '2024-08-06 07:37:15', '2024-08-06 07:37:15'),
(271, '110.137.103.136', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 3661, '2024-08-06 07:40:22', '2024-08-06 07:40:22', '2024-08-06 07:40:22'),
(272, '110.137.103.136', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 695, '2024-08-06 07:51:57', '2024-08-06 07:51:57', '2024-08-06 07:51:57'),
(273, '110.137.103.136', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 66, '2024-08-06 07:53:03', '2024-08-06 07:53:03', '2024-08-06 07:53:03'),
(274, '110.137.103.136', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 602, '2024-08-06 08:03:05', '2024-08-06 08:03:05', '2024-08-06 08:03:05'),
(275, '110.137.103.136', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 43, '2024-08-06 08:03:48', '2024-08-06 08:03:48', '2024-08-06 08:03:48'),
(276, '52.169.183.153', NULL, NULL, '2024-08-06 12:13:32', '2024-08-06 12:13:32', '2024-08-06 12:13:32'),
(277, '43.131.62.4', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 104648, '2024-08-06 13:12:23', '2024-08-06 13:12:23', '2024-08-06 13:12:23'),
(278, '52.169.16.178', NULL, NULL, '2024-08-06 17:12:38', '2024-08-06 17:12:38', '2024-08-06 17:12:38'),
(279, '52.169.16.178', NULL, 0, '2024-08-06 17:12:38', '2024-08-06 17:12:38', '2024-08-06 17:12:38'),
(280, '46.17.174.173', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:98.0) Gecko/20100101 Firefox/98.0', NULL, '2024-08-06 22:06:38', '2024-08-06 22:06:38', '2024-08-06 22:06:38'),
(281, '3.95.222.47', 'Mozilla/5.0 \\(Windows NT 10.0\\; Win64\\; x64\\) AppleWebKit/537.36 \\(KHTML, like Gecko\\) Chrome/100.0.4896.60 Safari/537.36', NULL, '2024-08-06 23:16:15', '2024-08-06 23:16:15', '2024-08-06 23:16:15'),
(282, '3.83.1.69', 'Mozilla/5.0 \\(Windows NT 10.0\\; Win64\\; x64\\) AppleWebKit/537.36 \\(KHTML, like Gecko\\) Chrome/100.0.4896.60 Safari/537.36', NULL, '2024-08-06 23:16:18', '2024-08-06 23:16:18', '2024-08-06 23:16:18'),
(283, '54.159.150.21', 'Mozilla/5.0 \\(Windows NT 10.0\\; Win64\\; x64\\) AppleWebKit/537.36 \\(KHTML, like Gecko\\) Chrome/100.0.4896.60 Safari/537.36', NULL, '2024-08-06 23:16:24', '2024-08-06 23:16:24', '2024-08-06 23:16:24'),
(284, '183.129.153.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', 356964, '2024-08-06 23:37:01', '2024-08-06 23:37:01', '2024-08-06 23:37:01'),
(285, '2a02:4780:6:c0de::10', 'Go-http-client/2.0', NULL, '2024-08-07 00:04:26', '2024-08-07 00:04:26', '2024-08-07 00:04:26'),
(286, '2001:4ba0:cafe:c13::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36 Edg/91.0.864.54', NULL, '2024-08-07 01:05:15', '2024-08-07 01:05:15', '2024-08-07 01:05:15'),
(287, '65.109.27.171', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', NULL, '2024-08-07 02:09:45', '2024-08-07 02:09:45', '2024-08-07 02:09:45'),
(288, '65.109.27.171', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 3, '2024-08-07 02:09:48', '2024-08-07 02:09:48', '2024-08-07 02:09:48'),
(289, '182.44.12.37', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 172976, '2024-08-07 02:19:20', '2024-08-07 02:19:20', '2024-08-07 02:19:20'),
(290, '110.137.103.136', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 75882, '2024-08-07 05:08:30', '2024-08-07 05:08:30', '2024-08-07 05:08:30'),
(291, '134.209.121.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, '2024-08-07 07:08:42', '2024-08-07 07:08:42', '2024-08-07 07:08:42'),
(292, '37.120.233.60', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0', NULL, '2024-08-07 07:50:44', '2024-08-07 07:50:44', '2024-08-07 07:50:44'),
(293, '2400:6180:100:d0::393:d001', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36', NULL, '2024-08-07 07:50:45', '2024-08-07 07:50:45', '2024-08-07 07:50:45'),
(294, '68.183.245.101', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36', NULL, '2024-08-07 07:50:46', '2024-08-07 07:50:46', '2024-08-07 07:50:46'),
(295, '45.254.253.237', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0', NULL, '2024-08-07 07:50:47', '2024-08-07 07:50:47', '2024-08-07 07:50:47'),
(296, '2400:6180:100:d0::393:d001', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 367, '2024-08-07 07:56:52', '2024-08-07 07:56:52', '2024-08-07 07:56:52'),
(297, '128.90.59.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0', NULL, '2024-08-07 07:59:29', '2024-08-07 07:59:29', '2024-08-07 07:59:29'),
(298, '165.231.253.222', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36', NULL, '2024-08-07 07:59:29', '2024-08-07 07:59:29', '2024-08-07 07:59:29'),
(299, '2400:6180:0:d0::284:c001', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Mobile/15E148 Safari/604.1', NULL, '2024-08-07 07:59:29', '2024-08-07 07:59:29', '2024-08-07 07:59:29'),
(300, '2400:6180:0:d0::284:c001', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 292, '2024-08-07 08:04:21', '2024-08-07 08:04:21', '2024-08-07 08:04:21'),
(301, '146.190.197.169', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', NULL, '2024-08-07 08:14:45', '2024-08-07 08:14:45', '2024-08-07 08:14:45'),
(302, '206.189.247.132', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', NULL, '2024-08-07 08:16:00', '2024-08-07 08:16:00', '2024-08-07 08:16:00'),
(303, '110.137.103.136', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 11441, '2024-08-07 08:19:11', '2024-08-07 08:19:11', '2024-08-07 08:19:11'),
(304, '64.233.172.14', 'GooglePlayConsole', NULL, '2024-08-07 08:20:13', '2024-08-07 08:20:13', '2024-08-07 08:20:13'),
(305, '64.233.172.14', 'GooglePlayConsole', NULL, '2024-08-07 08:20:13', '2024-08-07 08:20:13', '2024-08-07 08:20:13'),
(306, '64.233.172.12', 'GooglePlayConsole', NULL, '2024-08-07 08:27:48', '2024-08-07 08:27:48', '2024-08-07 08:27:48'),
(307, '64.233.172.12', 'GooglePlayConsole', 2, '2024-08-07 08:27:50', '2024-08-07 08:27:50', '2024-08-07 08:27:50'),
(308, '64.233.172.14', 'GooglePlayConsole', 512, '2024-08-07 08:28:45', '2024-08-07 08:28:45', '2024-08-07 08:28:45'),
(309, '64.233.172.14', 'GooglePlayConsole', 85, '2024-08-07 08:30:10', '2024-08-07 08:30:10', '2024-08-07 08:30:10'),
(310, '64.233.172.12', 'GooglePlayConsole', 1129, '2024-08-07 08:46:39', '2024-08-07 08:46:39', '2024-08-07 08:46:39'),
(311, '110.137.103.136', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 5659, '2024-08-07 09:53:30', '2024-08-07 09:53:30', '2024-08-07 09:53:30'),
(312, '110.137.103.136', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 2474, '2024-08-07 10:34:44', '2024-08-07 10:34:44', '2024-08-07 10:34:44'),
(313, '64.233.172.13', 'GooglePlayConsole', NULL, '2024-08-07 10:34:57', '2024-08-07 10:34:57', '2024-08-07 10:34:57'),
(314, '49.51.179.103', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 458806, '2024-08-07 12:32:45', '2024-08-07 12:32:45', '2024-08-07 12:32:45'),
(315, '2604:2dc0:100:55dd::', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Config/92.2.2788.20', NULL, '2024-08-07 13:29:05', '2024-08-07 13:29:05', '2024-08-07 13:29:05'),
(316, '2604:2dc0:100:55dd::', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Config/92.2.2788.20', NULL, '2024-08-07 13:29:05', '2024-08-07 13:29:05', '2024-08-07 13:29:05'),
(317, '54.149.238.48', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', NULL, '2024-08-07 14:29:46', '2024-08-07 14:29:46', '2024-08-07 14:29:46'),
(318, '54.187.62.216', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', NULL, '2024-08-07 14:29:49', '2024-08-07 14:29:49', '2024-08-07 14:29:49'),
(319, '144.126.201.28', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, '2024-08-07 19:18:33', '2024-08-07 19:18:33', '2024-08-07 19:18:33'),
(320, '2a02:4780:6:c0de::10', 'Go-http-client/2.0', 86400, '2024-08-08 00:04:26', '2024-08-08 00:04:26', '2024-08-08 00:04:26'),
(321, '110.137.103.136', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 56913, '2024-08-08 02:23:17', '2024-08-08 02:23:17', '2024-08-08 02:23:17'),
(322, '110.137.103.136', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 241, '2024-08-08 02:27:18', '2024-08-08 02:27:18', '2024-08-08 02:27:18'),
(323, '110.137.103.136', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 9, '2024-08-08 02:27:27', '2024-08-08 02:27:27', '2024-08-08 02:27:27'),
(324, '110.137.103.136', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 8, '2024-08-08 02:27:35', '2024-08-08 02:27:35', '2024-08-08 02:27:35'),
(325, '64.23.142.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, '2024-08-08 02:46:26', '2024-08-08 02:46:26', '2024-08-08 02:46:26'),
(326, '110.137.103.136', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 4764, '2024-08-08 03:46:59', '2024-08-08 03:46:59', '2024-08-08 03:46:59'),
(327, '110.137.103.136', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 5048, '2024-08-08 05:11:07', '2024-08-08 05:11:07', '2024-08-08 05:11:07'),
(328, '110.137.103.136', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 800, '2024-08-08 05:24:27', '2024-08-08 05:24:27', '2024-08-08 05:24:27'),
(329, '182.1.117.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, '2024-08-08 06:45:25', '2024-08-08 06:45:25', '2024-08-08 06:45:25'),
(330, '110.137.103.136', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 5643, '2024-08-08 06:58:30', '2024-08-08 06:58:30', '2024-08-08 06:58:30'),
(331, '161.35.183.194', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:33.0) Gecko/20100101 Firefox/33.0', NULL, '2024-08-08 07:08:01', '2024-08-08 07:08:01', '2024-08-08 07:08:01'),
(332, '182.1.117.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 2958, '2024-08-08 07:34:43', '2024-08-08 07:34:43', '2024-08-08 07:34:43'),
(333, '110.137.103.136', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 2694, '2024-08-08 07:43:24', '2024-08-08 07:43:24', '2024-08-08 07:43:24'),
(334, '52.178.201.113', NULL, NULL, '2024-08-08 09:41:34', '2024-08-08 09:41:34', '2024-08-08 09:41:34'),
(335, '52.11.171.106', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:109.0) Gecko/20100101 Firefox/110.0', 284428, '2024-08-08 12:34:29', '2024-08-08 12:34:29', '2024-08-08 12:34:29'),
(336, '2a02:4780:6:c0de::10', 'Go-http-client/2.0', 86400, '2024-08-09 00:04:26', '2024-08-09 00:04:26', '2024-08-09 00:04:26'),
(337, '137.226.113.44', 'Mozilla/5.0 researchscan.comsys.rwth-aachen.de', 575579, '2024-08-09 00:12:00', '2024-08-09 00:12:00', '2024-08-09 00:12:00'),
(338, '137.226.113.44', 'Mozilla/5.0 researchscan.comsys.rwth-aachen.de', 1, '2024-08-09 00:12:01', '2024-08-09 00:12:01', '2024-08-09 00:12:01'),
(339, '49.51.204.74', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', NULL, '2024-08-09 03:08:18', '2024-08-09 03:08:18', '2024-08-09 03:08:18'),
(340, '111.231.12.66', 'Mozilla/5.0 (Linux; Android 10; LIO-AN00 Build/HUAWEILIO-AN00; wv) MicroMessenger Weixin QQ AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/78.0.3904.62 XWEB/2692 MMWEBSDK/200901 Mobile Safari/537.36', NULL, '2024-08-09 09:05:26', '2024-08-09 09:05:26', '2024-08-09 09:05:26'),
(341, '169.197.140.199', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', NULL, '2024-08-09 15:09:36', '2024-08-09 15:09:36', '2024-08-09 15:09:36'),
(342, '13.79.229.201', NULL, NULL, '2024-08-09 17:45:26', '2024-08-09 17:45:26', '2024-08-09 17:45:26'),
(343, '13.74.99.89', NULL, NULL, '2024-08-09 22:42:17', '2024-08-09 22:42:17', '2024-08-09 22:42:17'),
(344, '2a02:4780:6:c0de::10', 'Go-http-client/2.0', 86400, '2024-08-10 00:04:26', '2024-08-10 00:04:26', '2024-08-10 00:04:26'),
(345, '182.44.10.67', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', NULL, '2024-08-10 00:13:19', '2024-08-10 00:13:19', '2024-08-10 00:13:19'),
(346, '64.233.172.14', 'Google', 245198, '2024-08-10 04:36:48', '2024-08-10 04:36:48', '2024-08-10 04:36:48'),
(347, '64.233.172.14', 'PlayStore-Google', 245198, '2024-08-10 04:36:48', '2024-08-10 04:36:48', '2024-08-10 04:36:48'),
(348, '64.233.172.12', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.6478.182 Safari/537.36 PlayStore-Google', 244216, '2024-08-10 04:36:55', '2024-08-10 04:36:55', '2024-08-10 04:36:55'),
(349, '110.136.125.241', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, '2024-08-10 10:29:44', '2024-08-10 10:29:44', '2024-08-10 10:29:44'),
(350, '110.136.125.241', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 13, '2024-08-10 10:29:57', '2024-08-10 10:29:57', '2024-08-10 10:29:57'),
(351, '124.226.222.66', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', NULL, '2024-08-10 11:14:00', '2024-08-10 11:14:00', '2024-08-10 11:14:00'),
(352, '192.36.109.128', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.3.1 Safari/605.1.1', NULL, '2024-08-10 11:33:55', '2024-08-10 11:33:55', '2024-08-10 11:33:55'),
(353, '180.253.162.247', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, '2024-08-10 12:37:46', '2024-08-10 12:37:46', '2024-08-10 12:37:46'),
(354, '180.253.160.39', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', NULL, '2024-08-10 12:40:36', '2024-08-10 12:40:36', '2024-08-10 12:40:36'),
(355, '150.129.59.5', 'Mozilla/5.0 (Linux; Android 6.0.1; SM-G532G) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Mobile Safari/537.36', NULL, '2024-08-10 12:40:40', '2024-08-10 12:40:40', '2024-08-10 12:40:40'),
(356, '180.253.160.39', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 13, '2024-08-10 12:40:49', '2024-08-10 12:40:49', '2024-08-10 12:40:49'),
(357, '180.253.162.247', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 190, '2024-08-10 12:40:56', '2024-08-10 12:40:56', '2024-08-10 12:40:56'),
(358, '180.253.160.39', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 698, '2024-08-10 12:52:27', '2024-08-10 12:52:27', '2024-08-10 12:52:27'),
(359, '180.253.160.39', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 4, '2024-08-10 12:52:31', '2024-08-10 12:52:31', '2024-08-10 12:52:31'),
(360, '54.202.151.191', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', NULL, '2024-08-10 14:12:35', '2024-08-10 14:12:35', '2024-08-10 14:12:35'),
(361, '54.202.151.191', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 2, '2024-08-10 14:12:37', '2024-08-10 14:12:37', '2024-08-10 14:12:37'),
(362, '13.94.95.64', NULL, NULL, '2024-08-10 22:49:24', '2024-08-10 22:49:24', '2024-08-10 22:49:24'),
(363, '2a02:4780:6:c0de::10', 'Go-http-client/2.0', 98768, '2024-08-11 03:30:34', '2024-08-11 03:30:34', '2024-08-11 03:30:34'),
(364, '110.136.125.241', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 64008, '2024-08-11 04:16:45', '2024-08-11 04:16:45', '2024-08-11 04:16:45'),
(365, '34.87.42.65', 'Go-http-client/2.0', NULL, '2024-08-11 04:21:38', '2024-08-11 04:21:38', '2024-08-11 04:21:38'),
(366, '34.87.42.65', 'Go-http-client/2.0', 685, '2024-08-11 04:33:03', '2024-08-11 04:33:03', '2024-08-11 04:33:03'),
(367, '66.249.66.43', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', NULL, '2024-08-11 08:31:38', '2024-08-11 08:31:38', '2024-08-11 08:31:38'),
(368, '123.60.68.42', 'Mozilla/5.0 (Windows NT 5.5; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.1692.88 Safari/537.36', NULL, '2024-08-11 08:38:51', '2024-08-11 08:38:51', '2024-08-11 08:38:51'),
(369, '43.131.248.209', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', NULL, '2024-08-11 10:13:43', '2024-08-11 10:13:43', '2024-08-11 10:13:43'),
(370, '34.222.182.150', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', NULL, '2024-08-11 15:08:38', '2024-08-11 15:08:38', '2024-08-11 15:08:38'),
(371, '100.29.41.90', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', NULL, '2024-08-11 18:03:24', '2024-08-11 18:03:24', '2024-08-11 18:03:24'),
(372, '15.237.52.249', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', NULL, '2024-08-11 19:17:42', '2024-08-11 19:17:42', '2024-08-11 19:17:42'),
(373, '104.28.205.20', 'python-httpx/0.27.0', NULL, '2024-08-11 20:39:49', '2024-08-11 20:39:49', '2024-08-11 20:39:49'),
(374, '54.166.171.242', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', NULL, '2024-08-11 23:46:41', '2024-08-11 23:46:41', '2024-08-11 23:46:41'),
(375, '2a02:4780:6:c0de::10', 'Go-http-client/2.0', 86400, '2024-08-12 03:30:34', '2024-08-12 03:30:34', '2024-08-12 03:30:34'),
(376, '199.101.196.43', 'Go-http-client/2.0', NULL, '2024-08-12 06:57:41', '2024-08-12 06:57:41', '2024-08-12 06:57:41'),
(377, '199.101.196.43', 'Go-http-client/2.0', 35, '2024-08-12 06:58:16', '2024-08-12 06:58:16', '2024-08-12 06:58:16'),
(378, '199.101.196.43', 'Go-http-client/2.0', 70, '2024-08-12 06:59:26', '2024-08-12 06:59:26', '2024-08-12 06:59:26'),
(379, '199.101.196.43', 'Go-http-client/2.0', 71, '2024-08-12 07:00:37', '2024-08-12 07:00:37', '2024-08-12 07:00:37'),
(380, '199.101.196.43', 'Go-http-client/2.0', 11, '2024-08-12 07:00:48', '2024-08-12 07:00:48', '2024-08-12 07:00:48'),
(381, '199.101.196.43', 'Go-http-client/2.0', 9, '2024-08-12 07:00:57', '2024-08-12 07:00:57', '2024-08-12 07:00:57'),
(382, '199.101.196.43', 'Go-http-client/2.0', 26, '2024-08-12 07:01:23', '2024-08-12 07:01:23', '2024-08-12 07:01:23'),
(383, '199.101.196.43', 'Go-http-client/2.0', 26, '2024-08-12 07:01:49', '2024-08-12 07:01:49', '2024-08-12 07:01:49'),
(384, '199.101.196.43', 'Go-http-client/2.0', 3, '2024-08-12 07:01:52', '2024-08-12 07:01:52', '2024-08-12 07:01:52'),
(385, '199.101.196.43', 'Go-http-client/2.0', 20, '2024-08-12 07:02:12', '2024-08-12 07:02:12', '2024-08-12 07:02:12'),
(386, '199.101.196.43', 'Go-http-client/2.0', 50, '2024-08-12 07:03:02', '2024-08-12 07:03:02', '2024-08-12 07:03:02'),
(387, '199.101.196.43', 'Go-http-client/2.0', 15, '2024-08-12 07:03:17', '2024-08-12 07:03:17', '2024-08-12 07:03:17'),
(388, '66.249.66.43', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 83751, '2024-08-12 07:47:29', '2024-08-12 07:47:29', '2024-08-12 07:47:29'),
(389, '5.133.192.131', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', NULL, '2024-08-12 08:01:40', '2024-08-12 08:01:40', '2024-08-12 08:01:40'),
(390, '52.164.126.59', NULL, NULL, '2024-08-12 08:33:42', '2024-08-12 08:33:42', '2024-08-12 08:33:42'),
(391, '46.17.174.193', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', NULL, '2024-08-12 09:37:26', '2024-08-12 09:37:26', '2024-08-12 09:37:26'),
(392, '34.143.230.48', 'Go-http-client/2.0', NULL, '2024-08-12 19:23:25', '2024-08-12 19:23:25', '2024-08-12 19:23:25'),
(393, '95.108.213.130', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0', NULL, '2024-08-12 22:55:08', '2024-08-12 22:55:08', '2024-08-12 22:55:08'),
(394, '5.255.231.58', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0', NULL, '2024-08-12 23:36:54', '2024-08-12 23:36:54', '2024-08-12 23:36:54'),
(395, '135.148.195.2', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', NULL, '2024-08-13 00:43:24', '2024-08-13 00:43:24', '2024-08-13 00:43:24'),
(396, '2a02:4780:6:c0de::10', 'Go-http-client/2.0', 86399, '2024-08-13 03:30:33', '2024-08-13 03:30:33', '2024-08-13 03:30:33'),
(397, '2a00:6800:3:b78::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36 Edg/91.0.864.54', NULL, '2024-08-13 07:48:59', '2024-08-13 07:48:59', '2024-08-13 07:48:59'),
(398, '125.167.180.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, '2024-08-13 09:14:34', '2024-08-13 09:14:34', '2024-08-13 09:14:34'),
(399, '66.249.66.44', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', NULL, '2024-08-13 09:17:54', '2024-08-13 09:17:54', '2024-08-13 09:17:54'),
(400, '125.167.180.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 1111, '2024-08-13 09:33:05', '2024-08-13 09:33:05', '2024-08-13 09:33:05'),
(401, '2a06:4880:7000::8c', 'Mozilla/5.0 (compatible; InternetMeasurement/1.0; +https://internet-measurement.com/)', NULL, '2024-08-13 13:44:00', '2024-08-13 13:44:00', '2024-08-13 13:44:00'),
(402, '2a00:f940:7:1:2::2e', 'Mozilla/5.0 (Linux; U; Android 4.0.3; ru-ru; Transformer Prime TF201 Build/IML74K) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Safari/534.30', NULL, '2024-08-13 15:14:17', '2024-08-13 15:14:17', '2024-08-13 15:14:17'),
(403, '2a00:f940:7:1:2::2e', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; ru; rv:1.9.2.26) Gecko/20120128 Firefox/3.6.26 (.NET CLR 3.5.30729)', 1, '2024-08-13 15:14:18', '2024-08-13 15:14:18', '2024-08-13 15:14:18'),
(404, '2a00:f940:7:1:2::2e', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; MRSPUTNIK 2, 4, 0, 491; GTB7.2; InfoPath.2)', 1, '2024-08-13 15:14:19', '2024-08-13 15:14:19', '2024-08-13 15:14:19'),
(405, '18.237.40.138', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', NULL, '2024-08-13 15:35:24', '2024-08-13 15:35:24', '2024-08-13 15:35:24'),
(406, '18.237.40.138', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 2, '2024-08-13 15:35:26', '2024-08-13 15:35:26', '2024-08-13 15:35:26'),
(407, '2a06:4880:5000::4f', 'Mozilla/5.0 (compatible; InternetMeasurement/1.0; +https://internet-measurement.com/)', NULL, '2024-08-13 15:54:18', '2024-08-13 15:54:18', '2024-08-13 15:54:18'),
(408, '64.227.177.184', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, '2024-08-14 00:23:29', '2024-08-14 00:23:29', '2024-08-14 00:23:29'),
(409, '2a02:4780:6:c0de::10', 'Go-http-client/2.0', 86400, '2024-08-14 03:30:33', '2024-08-14 03:30:33', '2024-08-14 03:30:33'),
(410, '125.167.180.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 82089, '2024-08-14 08:21:14', '2024-08-14 08:21:14', '2024-08-14 08:21:14'),
(411, '40.77.167.22', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', NULL, '2024-08-14 09:01:05', '2024-08-14 09:01:05', '2024-08-14 09:01:05'),
(412, '40.77.167.72', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', NULL, '2024-08-14 09:01:15', '2024-08-14 09:01:15', '2024-08-14 09:01:15'),
(413, '20.240.13.243', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36 Edg/117.0.2045.36', NULL, '2024-08-14 09:01:20', '2024-08-14 09:01:20', '2024-08-14 09:01:20'),
(414, '43.159.128.68', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', NULL, '2024-08-14 13:27:50', '2024-08-14 13:27:50', '2024-08-14 13:27:50'),
(415, '43.153.105.17', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', NULL, '2024-08-14 15:45:58', '2024-08-14 15:45:58', '2024-08-14 15:45:58'),
(416, '46.17.174.173', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:98.0) Gecko/20100101 Firefox/98.0', 698414, '2024-08-15 00:06:52', '2024-08-15 00:06:52', '2024-08-15 00:06:52'),
(417, '2a02:4780:6:c0de::10', 'Go-http-client/2.0', 86400, '2024-08-15 03:30:33', '2024-08-15 03:30:33', '2024-08-15 03:30:33'),
(418, '43.131.44.218', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', NULL, '2024-08-15 03:53:19', '2024-08-15 03:53:19', '2024-08-15 03:53:19'),
(419, '46.4.33.48', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; ru; rv:1.9.0.1) Gecko/2008070208', NULL, '2024-08-15 04:12:02', '2024-08-15 04:12:02', '2024-08-15 04:12:02'),
(420, '103.36.10.57', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', NULL, '2024-08-15 12:41:01', '2024-08-15 12:41:01', '2024-08-15 12:41:01'),
(421, '52.167.144.220', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', NULL, '2024-08-15 12:52:08', '2024-08-15 12:52:08', '2024-08-15 12:52:08'),
(422, '125.167.180.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 105168, '2024-08-15 13:34:02', '2024-08-15 13:34:02', '2024-08-15 13:34:02'),
(423, '167.99.178.13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, '2024-08-16 02:37:05', '2024-08-16 02:37:05', '2024-08-16 02:37:05'),
(424, '2a02:4780:6:c0de::10', 'Go-http-client/2.0', 86401, '2024-08-16 03:30:34', '2024-08-16 03:30:34', '2024-08-16 03:30:34'),
(425, '40.77.167.23', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', NULL, '2024-08-16 03:43:25', '2024-08-16 03:43:25', '2024-08-16 03:43:25'),
(426, '43.130.62.164', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', NULL, '2024-08-16 04:05:02', '2024-08-16 04:05:02', '2024-08-16 04:05:02'),
(427, '125.167.180.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 83311, '2024-08-16 12:42:33', '2024-08-16 12:42:33', '2024-08-16 12:42:33'),
(428, '125.167.180.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 974, '2024-08-16 12:58:47', '2024-08-16 12:58:47', '2024-08-16 12:58:47'),
(429, '52.167.144.221', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', NULL, '2024-08-16 13:00:41', '2024-08-16 13:00:41', '2024-08-16 13:00:41'),
(430, '4.172.248.235', 'python-requests/2.31.0', NULL, '2024-08-16 15:00:57', '2024-08-16 15:00:57', '2024-08-16 15:00:57'),
(431, '52.89.96.219', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', NULL, '2024-08-16 15:34:53', '2024-08-16 15:34:53', '2024-08-16 15:34:53'),
(432, '52.89.96.219', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 1, '2024-08-16 15:34:54', '2024-08-16 15:34:54', '2024-08-16 15:34:54'),
(433, '66.249.66.43', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 392718, '2024-08-16 20:52:47', '2024-08-16 20:52:47', '2024-08-16 20:52:47'),
(434, '2a02:4780:6:c0de::10', 'Go-http-client/2.0', 86399, '2024-08-17 03:30:33', '2024-08-17 03:30:33', '2024-08-17 03:30:33'),
(435, '182.44.8.254', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', NULL, '2024-08-17 04:57:24', '2024-08-17 04:57:24', '2024-08-17 04:57:24'),
(436, '40.77.167.77', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', NULL, '2024-08-17 09:21:05', '2024-08-17 09:21:05', '2024-08-17 09:21:05'),
(437, '2001:67c:6ec:2913:145:220:91:19', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:122.0) Gecko/20100101 Firefox/122.0', NULL, '2024-08-17 13:19:16', '2024-08-17 13:19:16', '2024-08-17 13:19:16'),
(438, '169.197.140.199', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 689733, '2024-08-17 14:45:09', '2024-08-17 14:45:09', '2024-08-17 14:45:09'),
(439, '43.134.89.111', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', NULL, '2024-08-17 15:02:57', '2024-08-17 15:02:57', '2024-08-17 15:02:57'),
(440, '2a06:4880:3000::30', 'Mozilla/5.0 (compatible; InternetMeasurement/1.0; +https://internet-measurement.com/)', NULL, '2024-08-17 18:47:41', '2024-08-17 18:47:41', '2024-08-17 18:47:41'),
(441, '2a06:4880:7000::8f', 'Mozilla/5.0 (compatible; InternetMeasurement/1.0; +https://internet-measurement.com/)', NULL, '2024-08-17 21:12:24', '2024-08-17 21:12:24', '2024-08-17 21:12:24'),
(442, '188.165.87.100', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/115.0', NULL, '2024-08-17 22:19:13', '2024-08-17 22:19:13', '2024-08-17 22:19:13'),
(443, '188.165.87.101', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/115.0', NULL, '2024-08-17 22:25:24', '2024-08-17 22:25:24', '2024-08-17 22:25:24'),
(444, '2a02:4780:6:c0de::10', 'Go-http-client/2.0', 74406, '2024-08-18 00:10:39', '2024-08-18 00:10:39', '2024-08-18 00:10:39'),
(445, '134.209.89.221', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, '2024-08-18 01:18:08', '2024-08-18 01:18:08', '2024-08-18 01:18:08'),
(446, '43.131.44.218', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 266839, '2024-08-18 06:00:38', '2024-08-18 06:00:38', '2024-08-18 06:00:38'),
(447, '52.167.144.190', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', NULL, '2024-08-18 08:54:38', '2024-08-18 08:54:38', '2024-08-18 08:54:38'),
(448, '5.133.192.171', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', NULL, '2024-08-18 10:28:39', '2024-08-18 10:28:39', '2024-08-18 10:28:39'),
(449, '154.38.175.57', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.1.5) Gecko/20091102 Firefox/3.5.5 (.NET CLR 3.5.30729)', NULL, '2024-08-18 18:00:21', '2024-08-18 18:00:21', '2024-08-18 18:00:21'),
(450, '2a02:4780:6:c0de::10', 'Go-http-client/2.0', 86400, '2024-08-19 00:10:39', '2024-08-19 00:10:39', '2024-08-19 00:10:39'),
(451, '185.190.42.200', 'Mozilla/5.0 (Windows NT 10.0.0; Win64; x64; ) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.6367.91 Chrome/124.0.6367.91 Not-A.Brand/99  Safari/537.36', NULL, '2024-08-19 02:04:54', '2024-08-19 02:04:54', '2024-08-19 02:04:54'),
(452, '2a00:6800:3:b9e::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36 Edg/91.0.864.54', NULL, '2024-08-19 04:23:39', '2024-08-19 04:23:39', '2024-08-19 04:23:39'),
(453, '170.106.104.42', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', NULL, '2024-08-19 08:17:12', '2024-08-19 08:17:12', '2024-08-19 08:17:12'),
(454, '44.243.172.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', NULL, '2024-08-19 16:24:14', '2024-08-19 16:24:14', '2024-08-19 16:24:14'),
(455, '44.243.172.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 2, '2024-08-19 16:24:16', '2024-08-19 16:24:16', '2024-08-19 16:24:16'),
(456, '194.164.55.233', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', NULL, '2024-08-19 18:14:11', '2024-08-19 18:14:11', '2024-08-19 18:14:11'),
(457, '73.20.67.163', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko)', NULL, '2024-08-19 18:32:01', '2024-08-19 18:32:01', '2024-08-19 18:32:01'),
(458, '43.159.129.209', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', NULL, '2024-08-19 19:05:11', '2024-08-19 19:05:11', '2024-08-19 19:05:11'),
(459, '46.17.174.173', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:98.0) Gecko/20100101 Firefox/98.0', 418117, '2024-08-19 20:15:29', '2024-08-19 20:15:29', '2024-08-19 20:15:29'),
(460, '220.151.9.22', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36 Quark/3.6.2.993 Mobile', NULL, '2024-08-19 22:46:23', '2024-08-19 22:46:23', '2024-08-19 22:46:23'),
(461, '42.83.147.34', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko)Chrome/74.0.3729.169 Safari/537.36', NULL, '2024-08-19 23:37:37', '2024-08-19 23:37:37', '2024-08-19 23:37:37'),
(462, '2a02:4780:6:c0de::10', 'Go-http-client/2.0', 86400, '2024-08-20 00:10:39', '2024-08-20 00:10:39', '2024-08-20 00:10:39'),
(463, '104.248.170.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, '2024-08-20 00:51:57', '2024-08-20 00:51:57', '2024-08-20 00:51:57'),
(464, '5.133.192.138', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', NULL, '2024-08-20 04:34:42', '2024-08-20 04:34:42', '2024-08-20 04:34:42'),
(465, '64.233.172.13', 'GooglePlayConsole', 1101890, '2024-08-20 04:39:47', '2024-08-20 04:39:47', '2024-08-20 04:39:47'),
(466, '66.249.66.43', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 301893, '2024-08-20 08:44:20', '2024-08-20 08:44:20', '2024-08-20 08:44:20'),
(467, '40.77.167.75', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', NULL, '2024-08-20 10:22:15', '2024-08-20 10:22:15', '2024-08-20 10:22:15'),
(468, '52.167.144.173', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', NULL, '2024-08-20 22:56:00', '2024-08-20 22:56:00', '2024-08-20 22:56:00'),
(469, '2a02:4780:6:c0de::10', 'Go-http-client/2.0', 86400, '2024-08-21 00:10:39', '2024-08-21 00:10:39', '2024-08-21 00:10:39'),
(470, '161.35.91.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, '2024-08-21 02:42:04', '2024-08-21 02:42:04', '2024-08-21 02:42:04'),
(471, '4.206.221.178', 'python-requests/2.31.0', NULL, '2024-08-21 03:42:03', '2024-08-21 03:42:03', '2024-08-21 03:42:03'),
(472, '35.94.163.92', 'Mozilla/5.0 (compatible; wpbot/1.1; +https://forms.gle/ajBaxygz9jSR8p8G9)', NULL, '2024-08-21 05:08:53', '2024-08-21 05:08:53', '2024-08-21 05:08:53'),
(473, '66.249.66.43', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 84607, '2024-08-21 08:14:27', '2024-08-21 08:14:27', '2024-08-21 08:14:27'),
(474, '110.137.102.144', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, '2024-08-21 10:40:17', '2024-08-21 10:40:17', '2024-08-21 10:40:17'),
(475, '110.137.102.144', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 1171, '2024-08-21 10:59:48', '2024-08-21 10:59:48', '2024-08-21 10:59:48'),
(476, '169.197.140.199', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.26', 345846, '2024-08-21 14:49:15', '2024-08-21 14:49:15', '2024-08-21 14:49:15'),
(477, '2a02:4780:6:c0de::10', 'Go-http-client/2.0', 86400, '2024-08-22 00:10:39', '2024-08-22 00:10:39', '2024-08-22 00:10:39'),
(478, '128.199.21.66', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, '2024-08-22 01:06:26', '2024-08-22 01:06:26', '2024-08-22 01:06:26'),
(479, '52.167.144.187', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', NULL, '2024-08-22 06:32:51', '2024-08-22 06:32:51', '2024-08-22 06:32:51'),
(480, '66.249.66.44', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 775538, '2024-08-22 08:43:32', '2024-08-22 08:43:32', '2024-08-22 08:43:32'),
(481, '159.203.14.81', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, '2024-08-22 10:30:31', '2024-08-22 10:30:31', '2024-08-22 10:30:31'),
(482, '54.148.186.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', NULL, '2024-08-22 15:28:13', '2024-08-22 15:28:13', '2024-08-22 15:28:13'),
(483, '54.148.186.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 7, '2024-08-22 15:28:20', '2024-08-22 15:28:20', '2024-08-22 15:28:20'),
(484, '220.151.9.22', 'curl/7.29.0', 242617, '2024-08-22 18:10:00', '2024-08-22 18:10:00', '2024-08-22 18:10:00'),
(485, '66.249.88.100', 'Google', NULL, '2024-08-22 22:40:26', '2024-08-22 22:40:26', '2024-08-22 22:40:26'),
(486, '66.249.88.99', 'PlayStore-Google', NULL, '2024-08-22 22:40:26', '2024-08-22 22:40:26', '2024-08-22 22:40:26'),
(487, '66.249.88.101', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.6533.99 Safari/537.36 PlayStore-Google', NULL, '2024-08-22 22:40:34', '2024-08-22 22:40:34', '2024-08-22 22:40:34'),
(488, '2a02:4780:6:c0de::10', 'Go-http-client/2.0', 86400, '2024-08-23 00:10:39', '2024-08-23 00:10:39', '2024-08-23 00:10:39'),
(489, '135.148.195.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115.0', 875016, '2024-08-23 03:47:00', '2024-08-23 03:47:00', '2024-08-23 03:47:00'),
(490, '205.169.39.22', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', NULL, '2024-08-23 04:07:46', '2024-08-23 04:07:46', '2024-08-23 04:07:46'),
(491, '157.55.39.205', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', NULL, '2024-08-23 06:54:22', '2024-08-23 06:54:22', '2024-08-23 06:54:22'),
(492, '66.249.74.99', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', NULL, '2024-08-23 08:27:05', '2024-08-23 08:27:05', '2024-08-23 08:27:05'),
(493, '129.226.146.179', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', NULL, '2024-08-23 08:59:56', '2024-08-23 08:59:56', '2024-08-23 08:59:56'),
(494, '43.130.16.140', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', NULL, '2024-08-23 12:35:25', '2024-08-23 12:35:25', '2024-08-23 12:35:25'),
(495, '42.83.147.34', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko)Chrome/74.0.3729.169 Safari/537.36', 312559, '2024-08-23 14:26:56', '2024-08-23 14:26:56', '2024-08-23 14:26:56'),
(496, '42.83.147.34', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko)Chrome/74.0.3729.169 Safari/537.36', 0, '2024-08-23 14:26:56', '2024-08-23 14:26:56', '2024-08-23 14:26:56');
INSERT INTO `visits` (`id`, `ip_address`, `user_agent`, `duration`, `visited_at`, `created_at`, `updated_at`) VALUES
(497, '66.249.74.100', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', NULL, '2024-08-23 15:23:27', '2024-08-23 15:23:27', '2024-08-23 15:23:27'),
(498, '169.197.140.199', 'Mozilla/5.0 (Windows NT 10.0; rv:73.0) Gecko/20100101 Firefox/73.0', 181077, '2024-08-23 17:07:12', '2024-08-23 17:07:12', '2024-08-23 17:07:12'),
(499, '117.33.163.216', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', NULL, '2024-08-23 19:46:48', '2024-08-23 19:46:48', '2024-08-23 19:46:48'),
(500, '2a02:4780:6:c0de::10', 'Go-http-client/2.0', 86400, '2024-08-24 00:10:39', '2024-08-24 00:10:39', '2024-08-24 00:10:39'),
(501, '188.166.171.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, '2024-08-24 00:42:02', '2024-08-24 00:42:02', '2024-08-24 00:42:02'),
(502, '93.158.95.213', 'Mozilla/5.0 (Android 14; Mobile; rv:123.0) Gecko/123.0 Firefox/123', NULL, '2024-08-24 01:18:43', '2024-08-24 01:18:43', '2024-08-24 01:18:43'),
(503, '54.36.148.112', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', NULL, '2024-08-24 01:56:26', '2024-08-24 01:56:26', '2024-08-24 01:56:26'),
(504, '66.249.66.43', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 259304, '2024-08-24 08:16:11', '2024-08-24 08:16:11', '2024-08-24 08:16:11'),
(505, '2001:448a:5122:5ef3:b06b:47e1:a4d0:94fc', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, '2024-08-24 13:15:53', '2024-08-24 13:15:53', '2024-08-24 13:15:53'),
(506, '52.167.144.231', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', NULL, '2024-08-24 13:28:29', '2024-08-24 13:28:29', '2024-08-24 13:28:29'),
(507, '36.73.220.234', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, '2024-08-24 13:45:01', '2024-08-24 13:45:01', '2024-08-24 13:45:01'),
(508, '36.73.220.234', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 909, '2024-08-24 14:00:10', '2024-08-24 14:00:10', '2024-08-24 14:00:10'),
(509, '114.5.103.160', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, '2024-08-24 16:26:45', '2024-08-24 16:26:45', '2024-08-24 16:26:45'),
(510, '49.51.233.46', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', NULL, '2024-08-24 23:30:04', '2024-08-24 23:30:04', '2024-08-24 23:30:04'),
(511, '2401:fa00:f6:200:498f:4f0a:660e:791b', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, '2024-08-25 01:52:11', '2024-08-25 01:52:11', '2024-08-25 01:52:11'),
(512, '66.249.66.44', 'GoogleOther', 234521, '2024-08-25 01:52:13', '2024-08-25 01:52:13', '2024-08-25 01:52:13'),
(513, '2401:fa00:f6:200:498f:4f0a:660e:791b', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 710, '2024-08-25 02:04:01', '2024-08-25 02:04:01', '2024-08-25 02:04:01'),
(514, '36.73.220.234', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 45999, '2024-08-25 02:46:49', '2024-08-25 02:46:49', '2024-08-25 02:46:49'),
(515, '2a02:4780:6:c0de::10', 'Go-http-client/2.0', 100213, '2024-08-25 04:00:52', '2024-08-25 04:00:52', '2024-08-25 04:00:52'),
(516, '104.247.184.211', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:81.0) Gecko/20100101 Firefox/81.0', NULL, '2024-08-25 05:15:48', '2024-08-25 05:15:48', '2024-08-25 05:15:48'),
(517, '66.249.66.43', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 88060, '2024-08-25 08:43:51', '2024-08-25 08:43:51', '2024-08-25 08:43:51'),
(518, '35.166.20.220', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', NULL, '2024-08-25 15:55:38', '2024-08-25 15:55:38', '2024-08-25 15:55:38'),
(519, '35.166.20.220', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 5, '2024-08-25 15:55:43', '2024-08-25 15:55:43', '2024-08-25 15:55:43'),
(520, '43.130.7.211', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', NULL, '2024-08-25 17:37:35', '2024-08-25 17:37:35', '2024-08-25 17:37:35'),
(521, '2a00:6800:3:b9f::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36 Edg/91.0.864.54', NULL, '2024-08-25 22:28:49', '2024-08-25 22:28:49', '2024-08-25 22:28:49'),
(522, '103.109.209.254', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, '2024-08-25 23:52:34', '2024-08-25 23:52:34', '2024-08-25 23:52:34'),
(523, '103.109.209.254', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 7, '2024-08-25 23:52:41', '2024-08-25 23:52:41', '2024-08-25 23:52:41'),
(524, '46.17.174.174', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:98.0) Gecko/20100101 Firefox/98.0', NULL, '2024-08-26 00:00:48', '2024-08-26 00:00:48', '2024-08-26 00:00:48'),
(525, '220.151.9.22', 'curl/7.29.0', 285490, '2024-08-26 01:28:10', '2024-08-26 01:28:10', '2024-08-26 01:28:10'),
(526, '209.38.100.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, '2024-08-26 01:41:50', '2024-08-26 01:41:50', '2024-08-26 01:41:50'),
(527, '2a02:4780:6:c0de::10', 'Go-http-client/2.0', 86400, '2024-08-26 04:00:52', '2024-08-26 04:00:52', '2024-08-26 04:00:52'),
(528, '5.133.192.146', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', NULL, '2024-08-26 06:57:55', '2024-08-26 06:57:55', '2024-08-26 06:57:55'),
(529, '66.249.66.44', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 110596, '2024-08-26 08:35:29', '2024-08-26 08:35:29', '2024-08-26 08:35:29'),
(530, '40.77.167.243', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', NULL, '2024-08-26 14:12:06', '2024-08-26 14:12:06', '2024-08-26 14:12:06'),
(531, '13.74.251.116', NULL, NULL, '2024-08-26 17:00:21', '2024-08-26 17:00:22', '2024-08-26 17:00:22'),
(532, '13.74.251.116', NULL, 9, '2024-08-26 17:00:30', '2024-08-26 17:00:30', '2024-08-26 17:00:30'),
(533, '13.74.251.116', NULL, 1, '2024-08-26 17:00:31', '2024-08-26 17:00:31', '2024-08-26 17:00:31'),
(534, '103.109.209.254', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0', 90216, '2024-08-27 00:56:17', '2024-08-27 00:56:17', '2024-08-27 00:56:17'),
(535, '103.109.209.254', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 2858, '2024-08-27 01:43:55', '2024-08-27 01:43:55', '2024-08-27 01:43:55'),
(536, '2a02:4780:6:c0de::10', 'Go-http-client/2.0', 86400, '2024-08-27 04:00:52', '2024-08-27 04:00:52', '2024-08-27 04:00:52'),
(537, '20.26.209.220', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.1 Safari/605.1.15', NULL, '2024-08-27 04:51:48', '2024-08-27 04:51:48', '2024-08-27 04:51:48'),
(538, '46.17.174.173', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:98.0) Gecko/20100101 Firefox/98.0', 647682, '2024-08-27 08:10:11', '2024-08-27 08:10:11', '2024-08-27 08:10:11'),
(539, '125.167.183.127', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, '2024-08-27 08:36:48', '2024-08-27 08:36:48', '2024-08-27 08:36:48'),
(540, '52.167.144.191', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', NULL, '2024-08-27 09:18:58', '2024-08-27 09:18:58', '2024-08-27 09:18:58'),
(541, '66.249.66.43', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 176358, '2024-08-27 09:43:09', '2024-08-27 09:43:09', '2024-08-27 09:43:09'),
(542, '120.188.74.128', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, '2024-08-27 11:09:48', '2024-08-27 11:09:48', '2024-08-27 11:09:48'),
(543, '103.131.71.176', 'Mozilla/5.0 (compatible; coccocbot-web/1.0; +http://help.coccoc.com/searchengine)', NULL, '2024-08-27 11:16:28', '2024-08-27 11:16:28', '2024-08-27 11:16:28'),
(544, '114.125.101.85', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, '2024-08-27 12:17:32', '2024-08-27 12:17:32', '2024-08-27 12:17:32'),
(545, '180.253.160.72', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, '2024-08-27 12:31:59', '2024-08-27 12:31:59', '2024-08-27 12:31:59'),
(546, '203.29.27.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0', NULL, '2024-08-27 16:06:34', '2024-08-27 16:06:34', '2024-08-27 16:06:34'),
(547, '52.167.144.204', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', NULL, '2024-08-27 16:14:01', '2024-08-27 16:14:01', '2024-08-27 16:14:01'),
(548, '134.122.67.214', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, '2024-08-28 00:30:56', '2024-08-28 00:30:56', '2024-08-28 00:30:56'),
(549, '66.249.66.44', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.6533.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 145198, '2024-08-28 00:55:27', '2024-08-28 00:55:27', '2024-08-28 00:55:27'),
(550, '66.249.66.45', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', NULL, '2024-08-28 00:55:28', '2024-08-28 00:55:28', '2024-08-28 00:55:28'),
(551, '2a02:4780:6:c0de::10', 'Go-http-client/2.0', 86400, '2024-08-28 04:00:52', '2024-08-28 04:00:52', '2024-08-28 04:00:52'),
(552, '170.106.197.109', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', NULL, '2024-08-28 04:45:51', '2024-08-28 04:45:51', '2024-08-28 04:45:51'),
(553, '66.249.66.35', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', NULL, '2024-08-28 09:31:45', '2024-08-28 09:31:45', '2024-08-28 09:31:45'),
(554, '203.29.27.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0', 76910, '2024-08-28 13:28:24', '2024-08-28 13:28:24', '2024-08-28 13:28:24'),
(555, '123.60.68.42', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.2761.88 Safari/537.36', 1494133, '2024-08-28 15:41:04', '2024-08-28 15:41:04', '2024-08-28 15:41:04'),
(556, '54.213.200.170', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', NULL, '2024-08-28 15:56:54', '2024-08-28 15:56:54', '2024-08-28 15:56:54'),
(557, '54.213.200.170', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 1, '2024-08-28 15:56:55', '2024-08-28 15:56:55', '2024-08-28 15:56:55'),
(558, '34.34.137.152', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:52.0) Gecko/20100101 Firefox/52.0', NULL, '2024-08-28 18:15:27', '2024-08-28 18:15:27', '2024-08-28 18:15:27'),
(559, '91.92.248.131', 'python-requests/2.20.0', NULL, '2024-08-28 21:08:19', '2024-08-28 21:08:19', '2024-08-28 21:08:19'),
(560, '52.167.144.138', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', NULL, '2024-08-29 00:24:04', '2024-08-29 00:24:04', '2024-08-29 00:24:04'),
(561, '2a02:4780:6:c0de::10', 'Go-http-client/2.0', 86400, '2024-08-29 04:00:52', '2024-08-29 04:00:52', '2024-08-29 04:00:52'),
(562, '199.244.88.225', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', NULL, '2024-08-29 05:33:15', '2024-08-29 05:33:15', '2024-08-29 05:33:15'),
(563, '198.54.134.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.5993.70 Safari/537.36', NULL, '2024-08-29 07:21:25', '2024-08-29 07:21:25', '2024-08-29 07:21:25'),
(564, '110.136.121.188', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, '2024-08-29 13:26:23', '2024-08-29 13:26:23', '2024-08-29 13:26:23'),
(565, '110.136.121.188', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 287, '2024-08-29 13:31:10', '2024-08-29 13:31:10', '2024-08-29 13:31:10'),
(566, '66.249.88.101', 'PlayStore-Google', 572029, '2024-08-29 13:34:23', '2024-08-29 13:34:23', '2024-08-29 13:34:23'),
(567, '66.249.88.101', 'Google', 0, '2024-08-29 13:34:23', '2024-08-29 13:34:23', '2024-08-29 13:34:23'),
(568, '66.249.88.99', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.6533.99 Safari/537.36 PlayStore-Google', 572045, '2024-08-29 13:34:31', '2024-08-29 13:34:31', '2024-08-29 13:34:31'),
(569, '74.208.11.33', 'python-requests/2.32.3', NULL, '2024-08-29 13:43:45', '2024-08-29 13:43:45', '2024-08-29 13:43:45'),
(570, '13.79.186.224', NULL, NULL, '2024-08-29 18:31:29', '2024-08-29 18:31:29', '2024-08-29 18:31:29'),
(571, '51.222.253.18', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', NULL, '2024-08-30 00:19:17', '2024-08-30 00:19:18', '2024-08-30 00:19:18'),
(572, '167.172.177.231', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, '2024-08-30 01:43:15', '2024-08-30 01:43:15', '2024-08-30 01:43:15'),
(573, '2a02:4780:6:c0de::10', 'Go-http-client/2.0', 86400, '2024-08-30 04:00:52', '2024-08-30 04:00:52', '2024-08-30 04:00:52'),
(574, '52.167.144.22', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', NULL, '2024-08-30 10:16:13', '2024-08-30 10:16:13', '2024-08-30 10:16:13'),
(575, '66.249.72.100', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', NULL, '2024-08-30 10:23:44', '2024-08-30 10:23:44', '2024-08-30 10:23:44'),
(576, '66.249.72.99', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', NULL, '2024-08-30 11:00:19', '2024-08-30 11:00:19', '2024-08-30 11:00:19'),
(577, '138.246.253.15', 'quic-go-HTTP/3', NULL, '2024-08-30 11:38:26', '2024-08-30 11:38:26', '2024-08-30 11:38:26'),
(578, '198.54.134.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.5993.70 Safari/537.36', 107084, '2024-08-30 13:06:09', '2024-08-30 13:06:09', '2024-08-30 13:06:09'),
(579, '43.153.93.68', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', NULL, '2024-08-30 13:30:49', '2024-08-30 13:30:49', '2024-08-30 13:30:49'),
(580, '40.77.167.52', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', NULL, '2024-08-30 16:55:57', '2024-08-30 16:55:57', '2024-08-30 16:55:57'),
(581, '52.167.144.21', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', NULL, '2024-08-30 22:45:23', '2024-08-30 22:45:23', '2024-08-30 22:45:23'),
(582, '91.92.245.64', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', NULL, '2024-08-31 01:30:41', '2024-08-31 01:30:41', '2024-08-31 01:30:41'),
(583, '52.169.125.168', NULL, NULL, '2024-08-31 03:31:53', '2024-08-31 03:31:53', '2024-08-31 03:31:53'),
(584, '113.219.218.197', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', NULL, '2024-08-31 03:37:57', '2024-08-31 03:37:57', '2024-08-31 03:37:57'),
(585, '2a02:4780:6:c0de::10', 'Go-http-client/2.0', 86400, '2024-08-31 04:00:52', '2024-08-31 04:00:52', '2024-08-31 04:00:52'),
(586, '35.197.246.192', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', NULL, '2024-08-31 05:23:26', '2024-08-31 05:23:26', '2024-08-31 05:23:26'),
(587, '35.197.246.192', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 1, '2024-08-31 05:23:27', '2024-08-31 05:23:27', '2024-08-31 05:23:27'),
(588, '43.130.62.164', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 1339867, '2024-08-31 16:16:08', '2024-08-31 16:16:09', '2024-08-31 16:16:09'),
(589, '34.222.102.22', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', NULL, '2024-08-31 17:17:25', '2024-08-31 17:17:25', '2024-08-31 17:17:25'),
(590, '34.222.102.22', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 3, '2024-08-31 17:17:28', '2024-08-31 17:17:28', '2024-08-31 17:17:28'),
(591, '193.29.15.252', 'Mozilla/5.0 zgrab/0.x', NULL, '2024-08-31 21:09:26', '2024-08-31 21:09:26', '2024-08-31 21:09:26'),
(592, '2001:4ca0:108:42::15', 'quic-go-HTTP/3', NULL, '2024-08-31 23:20:41', '2024-08-31 23:20:41', '2024-08-31 23:20:41'),
(593, '165.227.187.92', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, '2024-09-01 00:24:15', '2024-09-01 00:24:15', '2024-09-01 00:24:15'),
(594, '2001:4ba0:cafe:b2c::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36 Edg/91.0.864.54', NULL, '2024-09-01 01:40:22', '2024-09-01 01:40:22', '2024-09-01 01:40:22'),
(595, '112.215.172.31', 'Mozilla/5.0 (Windows; U; Windows NT 5.2; en-US) AppleWebKit/537.36 (KHTML, like Gecko) Safari/537.36 VivoBrowser/12.8.2.0 Chrome/87.0.4280.141', NULL, '2024-09-01 03:36:42', '2024-09-01 03:36:42', '2024-09-01 03:36:42'),
(596, '140.213.118.158', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, '2024-09-01 03:51:49', '2024-09-01 03:51:49', '2024-09-01 03:51:49'),
(597, '140.213.118.158', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 382, '2024-09-01 03:58:11', '2024-09-01 03:58:11', '2024-09-01 03:58:11'),
(598, '140.213.118.158', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 396, '2024-09-01 04:04:47', '2024-09-01 04:04:47', '2024-09-01 04:04:47'),
(599, '140.213.118.173', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, '2024-09-01 04:05:50', '2024-09-01 04:05:50', '2024-09-01 04:05:50'),
(600, '140.213.118.173', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 341, '2024-09-01 04:11:31', '2024-09-01 04:11:31', '2024-09-01 04:11:31'),
(601, '110.136.124.196', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, '2024-09-01 04:20:33', '2024-09-01 04:20:33', '2024-09-01 04:20:33'),
(602, '203.29.27.134', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 313058, '2024-09-01 04:26:02', '2024-09-01 04:26:02', '2024-09-01 04:26:02'),
(603, '112.215.237.108', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, '2024-09-01 04:27:55', '2024-09-01 04:27:55', '2024-09-01 04:27:55'),
(604, '112.215.237.108', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 62, '2024-09-01 04:28:57', '2024-09-01 04:28:57', '2024-09-01 04:28:57'),
(605, '103.109.209.254', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 446381, '2024-09-01 05:43:36', '2024-09-01 05:43:36', '2024-09-01 05:43:36'),
(606, '103.109.209.254', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 452, '2024-09-01 05:51:08', '2024-09-01 05:51:08', '2024-09-01 05:51:08'),
(607, '66.249.88.100', 'Google', 803806, '2024-09-01 05:57:12', '2024-09-01 05:57:12', '2024-09-01 05:57:12'),
(608, '66.249.88.101', 'PlayStore-Google', 231769, '2024-09-01 05:57:12', '2024-09-01 05:57:12', '2024-09-01 05:57:12'),
(609, '66.249.88.100', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.6533.99 Safari/537.36 PlayStore-Google', 7, '2024-09-01 05:57:19', '2024-09-01 05:57:19', '2024-09-01 05:57:19'),
(610, '103.109.209.254', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 562, '2024-09-01 06:00:30', '2024-09-01 06:00:30', '2024-09-01 06:00:30'),
(611, '103.109.209.254', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 2230, '2024-09-01 06:37:40', '2024-09-01 06:37:40', '2024-09-01 06:37:40'),
(612, '103.109.209.254', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 4, '2024-09-01 06:37:44', '2024-09-01 06:37:44', '2024-09-01 06:37:44'),
(613, '103.109.209.254', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 1, '2024-09-01 06:37:45', '2024-09-01 06:37:45', '2024-09-01 06:37:45'),
(614, '103.109.209.254', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 8, '2024-09-01 06:37:53', '2024-09-01 06:37:53', '2024-09-01 06:37:53'),
(615, '103.106.216.69', 'Mozilla/5.0 (Linux; Android 8.1.0; CPH1803) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', NULL, '2024-09-01 06:37:55', '2024-09-01 06:37:55', '2024-09-01 06:37:55'),
(616, '103.109.209.254', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 24, '2024-09-01 06:38:17', '2024-09-01 06:38:17', '2024-09-01 06:38:17'),
(617, '2a02:4780:6:c0de::10', 'Go-http-client/2.0', 102293, '2024-09-01 08:25:45', '2024-09-01 08:25:45', '2024-09-01 08:25:45'),
(618, '5.133.192.128', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', NULL, '2024-09-01 09:51:40', '2024-09-01 09:51:40', '2024-09-01 09:51:40'),
(619, '110.136.124.196', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 39443, '2024-09-01 15:17:56', '2024-09-01 15:17:56', '2024-09-01 15:17:56'),
(620, '193.29.15.252', 'Mozilla/5.0 zgrab/0.x', 81606, '2024-09-01 19:49:32', '2024-09-01 19:49:32', '2024-09-01 19:49:32'),
(621, '110.136.124.196', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 26119, '2024-09-01 22:33:15', '2024-09-01 22:33:15', '2024-09-01 22:33:15'),
(622, '103.109.209.254', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 63392, '2024-09-02 00:14:49', '2024-09-02 00:14:49', '2024-09-02 00:14:49'),
(623, '103.109.209.254', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 2, '2024-09-02 00:14:51', '2024-09-02 00:14:51', '2024-09-02 00:14:51'),
(624, '103.109.209.254', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 31, '2024-09-02 00:15:22', '2024-09-02 00:15:22', '2024-09-02 00:15:22'),
(625, '103.109.209.254', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0', 1043, '2024-09-02 00:32:45', '2024-09-02 00:32:45', '2024-09-02 00:32:45'),
(626, '103.109.209.254', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 1108, '2024-09-02 00:51:13', '2024-09-02 00:51:13', '2024-09-02 00:51:13'),
(627, '103.109.209.254', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 11931, '2024-09-02 04:10:04', '2024-09-02 04:10:04', '2024-09-02 04:10:04'),
(628, '112.215.153.251', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, '2024-09-02 07:08:04', '2024-09-02 07:08:04', '2024-09-02 07:08:04'),
(629, '52.167.144.229', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', NULL, '2024-09-02 08:21:19', '2024-09-02 08:21:19', '2024-09-02 08:21:19'),
(630, '2a02:4780:6:c0de::10', 'Go-http-client/2.0', 86400, '2024-09-02 08:25:45', '2024-09-02 08:25:45', '2024-09-02 08:25:45'),
(631, '148.251.250.49', 'Mozilla/5.0 (Linux; Android 14; SM-A205U) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.6367.54 Mobile Safari/537.36', NULL, '2024-09-02 09:18:37', '2024-09-02 09:18:37', '2024-09-02 09:18:37'),
(632, '2401:fa00:f6:200:1ea3:ac69:e868:d506', 'Mozilla/5.0 (X11; CrOS x86_64 14541.0.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', NULL, '2024-09-02 09:35:10', '2024-09-02 09:35:10', '2024-09-02 09:35:10'),
(633, '66.249.66.35', 'GoogleOther', 432339, '2024-09-02 09:37:24', '2024-09-02 09:37:24', '2024-09-02 09:37:24'),
(634, '110.136.124.196', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 43294, '2024-09-02 10:34:49', '2024-09-02 10:34:49', '2024-09-02 10:34:49'),
(635, '135.148.195.2', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 888910, '2024-09-02 10:42:10', '2024-09-02 10:42:10', '2024-09-02 10:42:10'),
(636, '180.253.160.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, '2024-09-02 13:15:01', '2024-09-02 13:15:01', '2024-09-02 13:15:01'),
(637, '180.253.160.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0', NULL, '2024-09-02 13:15:18', '2024-09-02 13:15:18', '2024-09-02 13:15:18'),
(638, '180.253.167.143', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, '2024-09-02 13:21:59', '2024-09-02 13:21:59', '2024-09-02 13:21:59'),
(639, '157.55.39.54', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', NULL, '2024-09-02 14:06:17', '2024-09-02 14:06:17', '2024-09-02 14:06:17'),
(640, '180.253.167.143', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 2954, '2024-09-02 14:11:13', '2024-09-02 14:11:13', '2024-09-02 14:11:13'),
(641, '110.136.124.196', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 17811, '2024-09-02 15:31:40', '2024-09-02 15:31:40', '2024-09-02 15:31:40'),
(642, '147.182.151.62', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, '2024-09-02 19:57:18', '2024-09-02 19:57:18', '2024-09-02 19:57:18'),
(643, '103.109.209.254', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 75632, '2024-09-03 01:10:36', '2024-09-03 01:10:36', '2024-09-03 01:10:36'),
(644, '167.99.94.202', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, '2024-09-03 01:48:57', '2024-09-03 01:48:57', '2024-09-03 01:48:57'),
(645, '140.213.118.158', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 174333, '2024-09-03 04:30:19', '2024-09-03 04:30:20', '2024-09-03 04:30:20'),
(646, '46.17.174.173', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:98.0) Gecko/20100101 Firefox/98.0', 604925, '2024-09-03 08:12:16', '2024-09-03 08:12:16', '2024-09-03 08:12:16'),
(647, '2a02:4780:6:c0de::10', 'Go-http-client/2.0', 86400, '2024-09-03 08:25:45', '2024-09-03 08:25:45', '2024-09-03 08:25:45'),
(648, '43.134.37.211', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', NULL, '2024-09-03 10:52:15', '2024-09-03 10:52:15', '2024-09-03 10:52:15'),
(649, '112.78.133.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0', NULL, '2024-09-03 11:13:36', '2024-09-03 11:13:36', '2024-09-03 11:13:36'),
(650, '112.78.133.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0', 54, '2024-09-03 11:14:30', '2024-09-03 11:14:30', '2024-09-03 11:14:30'),
(651, '125.167.181.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, '2024-09-03 11:26:51', '2024-09-03 11:26:51', '2024-09-03 11:26:51'),
(652, '125.167.181.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 14809, '2024-09-03 15:33:40', '2024-09-03 15:33:40', '2024-09-03 15:33:40'),
(653, '125.167.181.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 455, '2024-09-03 15:41:15', '2024-09-03 15:41:15', '2024-09-03 15:41:15'),
(654, '3.252.27.168', 'Mozilla/5.0 (compatible; NetcraftSurveyAgent/1.0; +info@netcraft.com)', NULL, '2024-09-03 15:48:04', '2024-09-03 15:48:04', '2024-09-03 15:48:04'),
(655, '125.167.181.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 456, '2024-09-03 15:48:51', '2024-09-03 15:48:51', '2024-09-03 15:48:51'),
(656, '180.248.27.147', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0', NULL, '2024-09-03 16:30:51', '2024-09-03 16:30:51', '2024-09-03 16:30:51'),
(657, '125.167.181.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 3355, '2024-09-03 16:44:46', '2024-09-03 16:44:46', '2024-09-03 16:44:46'),
(658, '125.167.181.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 2097, '2024-09-03 17:19:43', '2024-09-03 17:19:43', '2024-09-03 17:19:43'),
(659, '125.167.181.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 850, '2024-09-03 17:33:53', '2024-09-03 17:33:53', '2024-09-03 17:33:53'),
(660, '125.167.181.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 373, '2024-09-03 17:40:06', '2024-09-03 17:40:06', '2024-09-03 17:40:06'),
(661, '103.131.71.165', 'Mozilla/5.0 (compatible; coccocbot-web/1.0; +http://help.coccoc.com/searchengine)', NULL, '2024-09-03 19:43:03', '2024-09-03 19:43:04', '2024-09-03 19:43:04'),
(662, '125.167.181.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 20268, '2024-09-03 23:17:54', '2024-09-03 23:17:54', '2024-09-03 23:17:54'),
(663, '125.167.181.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 3909, '2024-09-04 00:23:03', '2024-09-04 00:23:03', '2024-09-04 00:23:03'),
(664, '14.215.163.132', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', NULL, '2024-09-04 01:01:09', '2024-09-04 01:01:09', '2024-09-04 01:01:09'),
(665, '103.109.209.254', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 86267, '2024-09-04 01:08:23', '2024-09-04 01:08:23', '2024-09-04 01:08:23'),
(666, '40.77.167.32', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', NULL, '2024-09-04 01:22:17', '2024-09-04 01:22:17', '2024-09-04 01:22:17'),
(667, '103.109.209.254', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 1008, '2024-09-04 01:25:11', '2024-09-04 01:25:11', '2024-09-04 01:25:11'),
(668, '103.109.209.254', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0', 677, '2024-09-04 01:36:28', '2024-09-04 01:36:28', '2024-09-04 01:36:28'),
(669, '103.109.209.254', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 2491, '2024-09-04 02:17:59', '2024-09-04 02:17:59', '2024-09-04 02:17:59'),
(670, '146.190.37.112', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', NULL, '2024-09-04 02:19:24', '2024-09-04 02:19:24', '2024-09-04 02:19:24'),
(671, '103.109.209.254', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0', 254, '2024-09-04 02:22:13', '2024-09-04 02:22:13', '2024-09-04 02:22:13'),
(672, '103.109.209.254', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 4182, '2024-09-04 03:31:55', '2024-09-04 03:31:55', '2024-09-04 03:31:55'),
(673, '103.109.209.254', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 1872, '2024-09-04 04:03:07', '2024-09-04 04:03:07', '2024-09-04 04:03:07'),
(674, '104.131.56.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', NULL, '2024-09-04 05:35:00', '2024-09-04 05:35:00', '2024-09-04 05:35:00'),
(675, '68.183.210.213', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; GPTBot/1.0; +https://openai.com/gptbot)', NULL, '2024-09-04 05:36:32', '2024-09-04 05:36:32', '2024-09-04 05:36:32'),
(676, '13.38.43.104', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', NULL, '2024-09-04 05:38:11', '2024-09-04 05:38:11', '2024-09-04 05:38:11'),
(677, '128.199.12.145', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', NULL, '2024-09-04 05:43:09', '2024-09-04 05:43:09', '2024-09-04 05:43:09'),
(678, '159.203.9.40', 'Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)', NULL, '2024-09-04 05:53:28', '2024-09-04 05:53:28', '2024-09-04 05:53:28'),
(679, '103.109.209.254', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 9238, '2024-09-04 06:37:05', '2024-09-04 06:37:05', '2024-09-04 06:37:05'),
(680, '103.109.209.254', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 5029, '2024-09-04 08:00:54', '2024-09-04 08:00:54', '2024-09-04 08:00:54'),
(681, '2a02:4780:6:c0de::10', 'Go-http-client/2.0', 86400, '2024-09-04 08:25:45', '2024-09-04 08:25:45', '2024-09-04 08:25:45'),
(682, '110.136.126.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, '2024-09-04 11:31:00', '2024-09-04 11:31:00', '2024-09-04 11:31:00'),
(683, '110.136.126.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0', 624, '2024-09-04 11:41:24', '2024-09-04 11:41:24', '2024-09-04 11:41:24'),
(684, '110.136.126.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 148, '2024-09-04 11:43:52', '2024-09-04 11:43:52', '2024-09-04 11:43:52'),
(685, '110.136.126.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 86, '2024-09-04 11:45:18', '2024-09-04 11:45:18', '2024-09-04 11:45:18'),
(686, '110.136.126.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 1293, '2024-09-04 12:06:51', '2024-09-04 12:06:51', '2024-09-04 12:06:51'),
(687, '66.249.88.101', 'Google', 281416, '2024-09-04 12:07:28', '2024-09-04 12:07:28', '2024-09-04 12:07:28'),
(688, '66.249.88.99', 'PlayStore-Google', 513177, '2024-09-04 12:07:28', '2024-09-04 12:07:28', '2024-09-04 12:07:28'),
(689, '66.249.88.100', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.6533.99 Safari/537.36 PlayStore-Google', 281417, '2024-09-04 12:07:36', '2024-09-04 12:07:36', '2024-09-04 12:07:36'),
(690, '161.35.36.87', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, '2024-09-04 12:32:58', '2024-09-04 12:32:58', '2024-09-04 12:32:58'),
(691, '110.136.126.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 1686, '2024-09-04 12:34:57', '2024-09-04 12:34:57', '2024-09-04 12:34:57'),
(692, '43.135.181.13', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', NULL, '2024-09-04 12:43:13', '2024-09-04 12:43:13', '2024-09-04 12:43:13'),
(693, '110.136.126.101', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 520, '2024-09-04 12:43:37', '2024-09-04 12:43:37', '2024-09-04 12:43:37'),
(694, '110.50.80.197', 'Mozilla/5.0 (Linux; Android 8.1.0; CPH1803) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', NULL, '2024-09-04 12:43:39', '2024-09-04 12:43:39', '2024-09-04 12:43:39'),
(695, '110.136.126.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 2102, '2024-09-04 13:18:39', '2024-09-04 13:18:39', '2024-09-04 13:18:39'),
(696, '114.125.104.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, '2024-09-04 13:28:12', '2024-09-04 13:28:12', '2024-09-04 13:28:12'),
(697, '125.167.181.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 53102, '2024-09-04 15:08:05', '2024-09-04 15:08:05', '2024-09-04 15:08:05'),
(698, '125.167.181.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 3725, '2024-09-04 16:10:10', '2024-09-04 16:10:10', '2024-09-04 16:10:10'),
(699, '125.167.181.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 4507, '2024-09-04 17:25:17', '2024-09-04 17:25:17', '2024-09-04 17:25:17'),
(700, '66.249.88.100', 'Google', 20680, '2024-09-04 17:52:16', '2024-09-04 17:52:16', '2024-09-04 17:52:16'),
(701, '66.249.88.99', 'PlayStore-Google', 20688, '2024-09-04 17:52:16', '2024-09-04 17:52:16', '2024-09-04 17:52:16'),
(702, '66.249.88.101', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.6533.99 Safari/537.36 PlayStore-Google', 20693, '2024-09-04 17:52:21', '2024-09-04 17:52:21', '2024-09-04 17:52:21'),
(703, '46.101.8.135', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, '2024-09-04 19:55:37', '2024-09-04 19:55:37', '2024-09-04 19:55:37'),
(704, '54.36.148.129', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', NULL, '2024-09-04 21:32:43', '2024-09-04 21:32:43', '2024-09-04 21:32:43'),
(705, '192.36.109.123', 'Mozilla/5.0 (Linux; Android 12; SAMSUNG SM-A415F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/23.0 Chrome/115.0.0.0 Mobile Safari/537.3', NULL, '2024-09-04 22:34:45', '2024-09-04 22:34:45', '2024-09-04 22:34:45'),
(706, '42.83.147.56', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko)Chrome/74.0.3729.169 Safari/537.36', NULL, '2024-09-04 22:52:58', '2024-09-04 22:52:58', '2024-09-04 22:52:58'),
(707, '125.167.181.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 21609, '2024-09-04 23:25:26', '2024-09-04 23:25:26', '2024-09-04 23:25:26'),
(708, '140.213.219.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, '2024-09-05 00:39:16', '2024-09-05 00:39:16', '2024-09-05 00:39:16'),
(709, '140.213.219.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 617, '2024-09-05 00:49:33', '2024-09-05 00:49:33', '2024-09-05 00:49:33'),
(710, '140.213.219.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 934, '2024-09-05 01:05:07', '2024-09-05 01:05:07', '2024-09-05 01:05:07'),
(711, '159.89.162.28', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, '2024-09-05 02:31:11', '2024-09-05 02:31:11', '2024-09-05 02:31:11'),
(712, '2001:448a:c120:4d4:d92f:16ef:6aa:39be', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0', NULL, '2024-09-05 02:58:59', '2024-09-05 02:58:59', '2024-09-05 02:58:59'),
(713, '182.1.82.143', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, '2024-09-05 04:10:23', '2024-09-05 04:10:23', '2024-09-05 04:10:23'),
(714, '114.125.117.75', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Mobile Safari/537.36', NULL, '2024-09-05 04:15:06', '2024-09-05 04:15:06', '2024-09-05 04:15:06'),
(715, '114.125.117.75', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Mobile Safari/537.36', 43, '2024-09-05 04:15:49', '2024-09-05 04:15:49', '2024-09-05 04:15:49'),
(716, '2001:448a:c120:4d4:6179:c8c8:8526:7699', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', NULL, '2024-09-05 04:15:58', '2024-09-05 04:15:58', '2024-09-05 04:15:58'),
(717, '2001:448a:c120:4d4:6179:c8c8:8526:7699', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', 3, '2024-09-05 04:16:01', '2024-09-05 04:16:01', '2024-09-05 04:16:01'),
(718, '2001:448a:c120:4d4:6179:c8c8:8526:7699', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', 76, '2024-09-05 04:17:17', '2024-09-05 04:17:17', '2024-09-05 04:17:17'),
(719, '2001:448a:c120:4d4:4cab:6320:487a:a234', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Mobile Safari/537.36', NULL, '2024-09-05 04:18:26', '2024-09-05 04:18:26', '2024-09-05 04:18:26'),
(720, '2001:448a:c120:4d4:4cab:6320:487a:a234', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Mobile Safari/537.36', 3, '2024-09-05 04:18:29', '2024-09-05 04:18:29', '2024-09-05 04:18:29'),
(721, '114.5.240.36', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', NULL, '2024-09-05 04:21:45', '2024-09-05 04:21:45', '2024-09-05 04:21:45'),
(722, '2001:448a:c120:4d4:7cf1:d28d:8fb8:cc29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, '2024-09-05 04:36:54', '2024-09-05 04:36:54', '2024-09-05 04:36:54'),
(723, '112.215.153.96', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', NULL, '2024-09-05 04:40:35', '2024-09-05 04:40:35', '2024-09-05 04:40:35'),
(724, '2001:448a:c120:4d4:901d:bddf:4ac1:c842', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0', NULL, '2024-09-05 04:53:15', '2024-09-05 04:53:15', '2024-09-05 04:53:15'),
(725, '182.1.82.143', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 2746, '2024-09-05 04:56:09', '2024-09-05 04:56:09', '2024-09-05 04:56:09'),
(726, '2a02:4780:6:c0de::10', 'Go-http-client/2.0', 86400, '2024-09-05 08:25:45', '2024-09-05 08:25:45', '2024-09-05 08:25:45'),
(727, '161.35.79.80', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, '2024-09-05 09:06:29', '2024-09-05 09:06:29', '2024-09-05 09:06:29'),
(728, '52.167.144.217', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', NULL, '2024-09-05 09:58:26', '2024-09-05 09:58:26', '2024-09-05 09:58:26'),
(729, '121.229.185.160', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', NULL, '2024-09-05 14:14:43', '2024-09-05 14:14:43', '2024-09-05 14:14:43'),
(730, '34.142.254.112', 'Go-http-client/2.0', NULL, '2024-09-05 14:52:52', '2024-09-05 14:52:52', '2024-09-05 14:52:52'),
(731, '38.242.250.246', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', NULL, '2024-09-05 22:59:10', '2024-09-05 22:59:10', '2024-09-05 22:59:10'),
(732, '54.171.155.151', 'Mozilla/5.0 (compatible; NetcraftSurveyAgent/1.0; +info@netcraft.com)', NULL, '2024-09-05 23:15:13', '2024-09-05 23:15:13', '2024-09-05 23:15:13'),
(733, '18.201.63.78', 'Mozilla/5.0 (compatible; NetcraftSurveyAgent/1.0; +info@netcraft.com)', NULL, '2024-09-06 00:11:50', '2024-09-06 00:11:50', '2024-09-06 00:11:50'),
(734, '36.41.75.167', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', NULL, '2024-09-06 05:06:48', '2024-09-06 05:06:48', '2024-09-06 05:06:48'),
(735, '74.125.214.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, '2024-09-06 05:51:20', '2024-09-06 05:51:20', '2024-09-06 05:51:20'),
(736, '182.1.82.143', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 90891, '2024-09-06 06:11:00', '2024-09-06 06:11:00', '2024-09-06 06:11:00'),
(737, '182.1.82.143', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 68, '2024-09-06 06:12:08', '2024-09-06 06:12:08', '2024-09-06 06:12:08'),
(738, '2a02:4780:6:c0de::10', 'Go-http-client/2.0', 86400, '2024-09-06 08:25:45', '2024-09-06 08:25:45', '2024-09-06 08:25:45'),
(739, '138.246.253.15', 'quic-go-HTTP/3', 594613, '2024-09-06 08:48:39', '2024-09-06 08:48:39', '2024-09-06 08:48:39'),
(740, '42.83.147.56', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko)Chrome/74.0.3729.169 Safari/537.36', 167477, '2024-09-06 21:24:15', '2024-09-06 21:24:15', '2024-09-06 21:24:15'),
(741, '159.203.17.39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, '2024-09-07 01:12:23', '2024-09-07 01:12:23', '2024-09-07 01:12:23'),
(742, '2a00:6800:3:b9f::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36 Edg/91.0.864.54', 1054953, '2024-09-07 03:31:22', '2024-09-07 03:31:22', '2024-09-07 03:31:22'),
(743, '35.171.144.152', 'Mozilla/5.0 \\(Windows NT 10.0\\; Win64\\; x64\\) AppleWebKit/537.36 \\(KHTML, like Gecko\\) Chrome/100.0.4896.60 Safari/537.36', NULL, '2024-09-07 03:39:11', '2024-09-07 03:39:11', '2024-09-07 03:39:11'),
(744, '2a02:4780:6:c0de::10', 'Go-http-client/2.0', 86400, '2024-09-07 08:25:45', '2024-09-07 08:25:45', '2024-09-07 08:25:45'),
(745, '66.249.66.35', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 430728, '2024-09-07 09:16:12', '2024-09-07 09:16:12', '2024-09-07 09:16:12');
INSERT INTO `visits` (`id`, `ip_address`, `user_agent`, `duration`, `visited_at`, `created_at`, `updated_at`) VALUES
(746, '5.133.192.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', NULL, '2024-09-07 13:02:16', '2024-09-07 13:02:16', '2024-09-07 13:02:16'),
(747, '43.159.128.149', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', NULL, '2024-09-07 17:47:59', '2024-09-07 17:47:59', '2024-09-07 17:47:59'),
(748, '2001:4ca0:108:42::15', 'quic-go-HTTP/3', 589262, '2024-09-07 19:01:43', '2024-09-07 19:01:43', '2024-09-07 19:01:43'),
(749, '72.14.199.43', 'PlayStore-Google', NULL, '2024-09-07 21:42:11', '2024-09-07 21:42:11', '2024-09-07 21:42:11'),
(750, '72.14.199.45', 'PlayStore-Google', NULL, '2024-09-07 21:42:12', '2024-09-07 21:42:12', '2024-09-07 21:42:12'),
(751, '72.14.199.43', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.6533.99 Safari/537.36 PlayStore-Google', 17896, '2024-09-08 02:40:27', '2024-09-08 02:40:27', '2024-09-08 02:40:27'),
(752, '84.17.48.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', NULL, '2024-09-08 03:32:29', '2024-09-08 03:32:29', '2024-09-08 03:32:29'),
(753, '2a02:4780:6:c0de::10', 'Go-http-client/2.0', 72255, '2024-09-08 04:30:00', '2024-09-08 04:30:00', '2024-09-08 04:30:00'),
(754, '43.159.128.68', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 2142890, '2024-09-08 08:42:40', '2024-09-08 08:42:40', '2024-09-08 08:42:40'),
(755, '66.249.79.172', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', NULL, '2024-09-08 09:10:16', '2024-09-08 09:10:16', '2024-09-08 09:10:16'),
(756, '36.68.219.244', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', NULL, '2024-09-08 14:41:34', '2024-09-08 14:41:34', '2024-09-08 14:41:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `landings`
--
ALTER TABLE `landings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_akuns`
--
ALTER TABLE `master_akuns`
  ADD PRIMARY KEY (`akun_id`),
  ADD KEY `master_akuns_id_masyarakat_foreign` (`id_masyarakat`);

--
-- Indexes for table `master_beritas`
--
ALTER TABLE `master_beritas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_kks`
--
ALTER TABLE `master_kks`
  ADD PRIMARY KEY (`id_kk`),
  ADD UNIQUE KEY `master_kks_no_kk_unique` (`no_kk`);

--
-- Indexes for table `master_masyarakats`
--
ALTER TABLE `master_masyarakats`
  ADD PRIMARY KEY (`id_masyarakat`),
  ADD UNIQUE KEY `master_masyarakats_nik_unique` (`nik`),
  ADD KEY `fk_master_masyarakats_id_kk` (`id_kk`);

--
-- Indexes for table `master_rtrw`
--
ALTER TABLE `master_rtrw`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_surats`
--
ALTER TABLE `master_surats`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pengajuan_surats`
--
ALTER TABLE `pengajuan_surats`
  ADD PRIMARY KEY (`id_pengajuan`),
  ADD KEY `pengajuan_surats_id_masyarakat_foreign` (`id_masyarakat`),
  ADD KEY `pengajuan_surats_id_surat_foreign` (`id_surat`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `landings`
--
ALTER TABLE `landings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `master_akuns`
--
ALTER TABLE `master_akuns`
  MODIFY `akun_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `master_beritas`
--
ALTER TABLE `master_beritas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `master_kks`
--
ALTER TABLE `master_kks`
  MODIFY `id_kk` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `master_masyarakats`
--
ALTER TABLE `master_masyarakats`
  MODIFY `id_masyarakat` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `master_rtrw`
--
ALTER TABLE `master_rtrw`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `pengajuan_surats`
--
ALTER TABLE `pengajuan_surats`
  MODIFY `id_pengajuan` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=279;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visits`
--
ALTER TABLE `visits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=757;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `master_akuns`
--
ALTER TABLE `master_akuns`
  ADD CONSTRAINT `master_akuns_id_masyarakat_foreign` FOREIGN KEY (`id_masyarakat`) REFERENCES `master_masyarakats` (`id_masyarakat`);

--
-- Constraints for table `master_masyarakats`
--
ALTER TABLE `master_masyarakats`
  ADD CONSTRAINT `fk_master_masyarakats_id_kk` FOREIGN KEY (`id_kk`) REFERENCES `master_kks` (`id_kk`) ON DELETE CASCADE,
  ADD CONSTRAINT `master_masyarakats_id_kk_foreign` FOREIGN KEY (`id_kk`) REFERENCES `master_kks` (`id_kk`);

--
-- Constraints for table `pengajuan_surats`
--
ALTER TABLE `pengajuan_surats`
  ADD CONSTRAINT `pengajuan_surats_id_masyarakat_foreign` FOREIGN KEY (`id_masyarakat`) REFERENCES `master_masyarakats` (`id_masyarakat`) ON DELETE CASCADE,
  ADD CONSTRAINT `pengajuan_surats_id_surat_foreign` FOREIGN KEY (`id_surat`) REFERENCES `master_surats` (`id_surat`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
