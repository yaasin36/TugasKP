-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Jun 2022 pada 21.17
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelkop8`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `batch_uuid` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggotas`
--

CREATE TABLE `anggotas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nik` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inisial` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tgl_daftar` date DEFAULT NULL,
  `homebase` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `anggotas`
--

INSERT INTO `anggotas` (`id`, `nik`, `nama`, `inisial`, `status`, `created_at`, `updated_at`, `tgl_daftar`, `homebase`) VALUES
(1, '320209040401001', 'Agus Permana', 'AP', 1, '2022-06-15 14:54:42', '2022-06-15 14:54:42', '2020-10-05', 'Bogor'),
(2, '320209050501002', 'Ahmad Jaelani', 'AJ', 1, '2022-06-15 14:54:43', '2022-06-15 14:54:43', '2020-10-05', 'Jakarta'),
(3, '320209060601003', 'Miranda', 'M', 1, '2022-06-15 14:54:43', '2022-06-15 14:54:43', '2020-10-05', 'Tangerang'),
(4, '320209070701004', 'Raka Hadi', 'RH', 1, '2022-06-15 14:54:43', '2022-06-15 14:54:43', '2020-10-05', 'Garut'),
(5, '320209080801005', 'Hermansyah', 'H', 1, '2022-06-15 14:54:44', '2022-06-15 14:54:44', '2020-10-05', 'Bekasi'),
(6, '320209080801006', 'Angga Rojak', 'H', 1, '2022-06-15 14:54:44', '2022-06-15 14:54:44', '2020-10-05', 'Bekasi'),
(7, '320209080801007', 'Kardun', 'H', 1, '2022-06-15 14:54:44', '2022-06-15 14:54:44', '2020-10-05', 'Bekasi'),
(8, '320209080801008', 'Jaja Miharja', 'H', 1, '2022-06-15 14:54:44', '2022-06-15 14:54:44', '2020-10-05', 'Bekasi'),
(9, '320209080801009', 'Miharja', 'H', 1, '2022-06-15 14:54:45', '2022-06-15 14:54:45', '2020-10-05', 'Bekasi'),
(10, '320209080801010', 'Santika', 'H', 0, '2022-06-15 14:54:45', '2022-06-17 13:49:32', '2020-10-05', 'Bekasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `biayas`
--

CREATE TABLE `biayas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `divisi_id` bigint(20) UNSIGNED NOT NULL,
  `jenis_biaya` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `biayas`
--

INSERT INTO `biayas` (`id`, `name`, `divisi_id`, `jenis_biaya`, `created_at`, `updated_at`) VALUES
(1, 'SIMPANAN POKOK', 1, 1, '2022-06-15 14:54:42', '2022-06-15 14:54:42'),
(2, 'SIMPANAN WAJIB', 1, 1, '2022-06-15 14:54:42', '2022-06-15 14:54:42'),
(3, 'SIMPANAN Sukarela', 1, 1, '2022-06-15 14:54:42', '2022-06-15 14:54:42'),
(4, 'Ambil Simpanan', 1, 2, '2022-06-15 14:54:42', '2022-06-15 14:54:42'),
(6, 'Angsuran Pinjaman', 2, 1, '2022-06-15 14:54:42', '2022-06-15 14:54:42'),
(7, 'Bunga Pinjaman', 2, 1, '2022-06-15 14:54:42', '2022-06-15 14:54:42'),
(8, 'Nominal Pinjaman', 2, 2, '2022-06-15 14:54:42', '2022-06-15 14:54:42'),
(9, 'Debet Kopi', 3, 1, '2022-06-15 14:54:42', '2022-06-15 14:54:42'),
(10, 'Kredit Kopi', 3, 2, '2022-06-15 14:54:42', '2022-06-15 14:54:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `copy_saldos`
--

CREATE TABLE `copy_saldos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_periode_id` bigint(20) UNSIGNED NOT NULL,
  `to_periode_id` bigint(20) UNSIGNED NOT NULL,
  `divisi_id` bigint(20) UNSIGNED NOT NULL,
  `status_saldo` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `copy_saldos`
--

INSERT INTO `copy_saldos` (`id`, `from_periode_id`, `to_periode_id`, `divisi_id`, `status_saldo`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, 0, '2022-06-15 14:54:45', '2022-06-15 14:54:45'),
(2, 1, 2, 2, 0, '2022-06-15 14:54:45', '2022-06-15 14:54:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `divisis`
--

CREATE TABLE `divisis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `divisis`
--

INSERT INTO `divisis` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'SIMPAN', '2022-06-15 14:54:42', '2022-06-15 14:54:42'),
(2, 'PINJAM', '2022-06-15 14:54:42', '2022-06-15 14:54:42'),
(3, 'Kopi', '2022-06-15 14:54:42', '2022-06-15 14:54:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_09_14_134705_create_anggotas_table', 1),
(9, '2019_09_14_140545_add_tgl_daftar', 1),
(10, '2019_09_14_151459_create_divisis_table', 1),
(11, '2019_09_14_170907_create_periodes_table', 1),
(12, '2019_09_14_170908_create_transaksi_harians_table', 1),
(13, '2019_09_21_151500_create_transaksi_harian_anggotas_table', 1),
(14, '2019_09_22_034327_create_biayas_table', 1),
(15, '2019_09_22_062147_create_transaksi_harian_biayas_table', 1),
(16, '2019_09_22_092604_create_options_table', 1),
(17, '2019_10_05_134437_add_homebase_to_anggotas', 1),
(18, '2019_10_13_125635_create_transaksi_pinjamen_table', 1),
(19, '2019_10_31_035102_add_option_type_to_options', 1),
(20, '2019_11_29_142731_create_modules_table', 1),
(21, '2019_11_29_142732_laratrust_setup_tables', 1),
(22, '2019_12_01_144357_create_user_anggotas_table', 1),
(23, '2019_12_03_125738_change_length_nominal_to_transaksi_harian_biaya', 1),
(24, '2020_03_06_083032_add_column_is_close_to_transaksi_harians', 1),
(25, '2020_03_08_094221_create_activity_log_table', 1),
(26, '2020_10_07_140114_create_copy_saldos_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `modules`
--

CREATE TABLE `modules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `modules`
--

INSERT INTO `modules` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'No Module', '2022-06-15 14:54:34', '2022-06-15 14:54:34'),
(2, 'Module Anggota', '2022-06-15 14:54:34', '2022-06-15 14:54:34'),
(3, 'Module Divisi', '2022-06-15 14:54:34', '2022-06-15 14:54:34'),
(4, 'Module Periode Buku', '2022-06-15 14:54:34', '2022-06-15 14:54:34'),
(5, 'Module Biaya', '2022-06-15 14:54:34', '2022-06-15 14:54:34'),
(6, 'Module Simpanan Debet', '2022-06-15 14:54:34', '2022-06-15 14:54:34'),
(7, 'Module Laporan', '2022-06-15 14:54:35', '2022-06-15 14:54:35'),
(8, 'Module Simpanan Kredit', '2022-06-15 14:54:36', '2022-06-15 14:54:36'),
(9, 'Module Pinjaman Debet', '2022-06-15 14:54:36', '2022-06-15 14:54:36'),
(10, 'Module Pinjaman Kredit', '2022-06-15 14:54:36', '2022-06-15 14:54:36'),
(11, 'Module Divisi Debet', '2022-06-15 14:54:36', '2022-06-15 14:54:36'),
(12, 'Module Divisi Kredit', '2022-06-15 14:54:36', '2022-06-15 14:54:36'),
(13, 'Module Pengguna', '2022-06-15 14:54:37', '2022-06-15 14:54:37'),
(14, 'Module Option', '2022-06-15 14:54:37', '2022-06-15 14:54:37'),
(15, 'Module Role', '2022-06-15 14:54:37', '2022-06-15 14:54:37'),
(16, 'Module Permission', '2022-06-15 14:54:37', '2022-06-15 14:54:37'),
(17, 'Module', '2022-06-15 14:54:37', '2022-06-15 14:54:37'),
(18, 'Module Copy Saldo ', '2022-06-15 14:54:37', '2022-06-15 14:54:37'),
(19, 'Module Email', '2022-06-15 14:54:37', '2022-06-15 14:54:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `options`
--

CREATE TABLE `options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `options`
--

INSERT INTO `options` (`id`, `option_name`, `option_value`, `created_at`, `updated_at`, `option_type`) VALUES
(1, 'footer', 'Koperasi V2.0', '2022-06-15 14:54:41', '2022-06-15 14:54:41', NULL),
(2, 'title_text', 'KOPERASI MAJU', '2022-06-15 14:54:41', '2022-06-15 14:54:41', NULL),
(3, 'footer_text', 'KOPERASI MUNDUR', '2022-06-15 14:54:41', '2022-06-15 14:54:41', NULL),
(4, 'site_currency_symbol', 'Rp ', '2022-06-15 14:54:42', '2022-06-15 14:54:42', NULL),
(5, 'company_option_name', 'KOPERASI MAJU MUNDUR', '2022-06-15 14:54:42', '2022-06-15 14:54:42', NULL),
(6, 'company_address', 'Jalan Malaka Baru RT 01 RW 011 Pondok Kopi Jakarta Timur', '2022-06-15 14:54:42', '2022-06-15 14:54:42', NULL),
(7, 'company_phone', '021-86615842', '2022-06-15 14:54:42', '2022-06-15 14:54:42', NULL),
(8, 'company_email', 'koperasi_maju@mundur.com', '2022-06-15 14:54:42', '2022-06-15 14:54:42', NULL),
(9, 'postal_code', '17414', '2022-06-15 14:54:42', '2022-06-15 14:54:42', NULL),
(10, 'company_fb', 'facebook.com', '2022-06-15 14:54:42', '2022-06-15 14:54:42', NULL),
(11, 'company_ig', 'instagram.com', '2022-06-15 14:54:42', '2022-06-15 14:54:42', NULL),
(12, 'company_twitter', 'twitter.com', '2022-06-15 14:54:42', '2022-06-15 14:54:42', NULL),
(13, 'company_yt', 'youtube.com', '2022-06-15 14:54:42', '2022-06-15 14:54:42', NULL),
(14, 'phone_wa', '+62 857-7909-0815', '2022-06-15 14:54:42', '2022-06-15 14:54:42', NULL),
(15, 'text_wa', 'Hallo, KOPERASI MAJU MUNDUR, Saya Dapat Info dari Website', '2022-06-15 14:54:42', '2022-06-15 14:54:42', NULL),
(16, 'text_maintenance', 'Hallo, KOPERASI MAJU MUNDUR, Saat Ini Sedang Maintenance', '2022-06-15 14:54:42', '2022-06-15 14:54:42', NULL),
(17, 'title_text', 'KOPERASI MAJU', NULL, NULL, NULL),
(18, 'footer_text', 'KOPERASI MUNDUR', NULL, NULL, NULL),
(19, 'logo', 'C:\\xampp\\tmp\\phpA43F.tmp', NULL, NULL, NULL),
(20, 'small_logo', 'C:\\xampp\\tmp\\phpA440.tmp', NULL, NULL, NULL),
(21, 'favicon', 'C:\\xampp\\tmp\\phpA441.tmp', NULL, NULL, NULL),
(22, 'company_name', 'KOPERASI JAGO SOFTWARE', NULL, NULL, NULL),
(23, 'company_address', 'Jalan Malaka Baru RT 01 RW 011 Pondok Kopi Jakarta Timur', NULL, NULL, NULL),
(24, 'company_phone', '085800084682', NULL, NULL, NULL),
(25, 'company_email', 'jagosoftware@shopee.co.id', NULL, NULL, NULL),
(26, 'postal_code', '57218', NULL, NULL, NULL),
(27, 'phone_wa', '+62 858-0008-4682', NULL, NULL, NULL),
(28, 'text_wa', 'Hallo, KOPERASI JAGO SOFTWARE, Saya Dapat Info dari Website', NULL, NULL, NULL),
(29, 'title_text', 'KOPERASI JAGO SOFTWARE', NULL, NULL, NULL),
(30, 'footer_text', 'KOPERASI JAGO SOFTWARE', NULL, NULL, NULL),
(31, 'company_fb', 'facebook.com/jagosoftware', NULL, NULL, NULL),
(32, 'company_ig', 'instagram.com/jagosoftware', NULL, NULL, NULL),
(33, 'company_twitter', 'twitter.com/jagosoftware', NULL, NULL, NULL),
(34, 'company_yt', 'youtube.com/jagosoftware', NULL, NULL, NULL),
(35, 'company_fb', 'facebook.com/nasrulkurniawan', NULL, NULL, NULL),
(36, 'company_ig', 'instagram.com/nasrul2011', NULL, NULL, NULL),
(37, 'company_twitter', 'twitter.com/nasrulkurniawan', NULL, NULL, NULL),
(38, 'company_yt', 'youtube.com/nasrulpkh', NULL, NULL, NULL),
(39, 'company_fb', 'facebook.com/nasrulkurniawan', NULL, NULL, NULL),
(40, 'company_ig', 'instagram.com/nasrul2011', NULL, NULL, NULL),
(41, 'company_twitter', 'twitter.com/nasrulkurniawan', NULL, NULL, NULL),
(42, 'company_yt', 'youtube.com/nasrulpkh', NULL, NULL, NULL),
(43, 'company_fb', 'facebook.com/nasrulkurniawan', NULL, NULL, NULL),
(44, 'company_ig', 'instagram.com/nasrul2011', NULL, NULL, NULL),
(45, 'company_twitter', 'twitter.com/nasrulkurniawan', NULL, NULL, NULL),
(46, 'company_yt', 'youtube.com/nasrulpkh', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `periodes`
--

CREATE TABLE `periodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `open_date` date NOT NULL,
  `close_date` date NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `periodes`
--

INSERT INTO `periodes` (`id`, `name`, `open_date`, `close_date`, `status`, `created_at`, `updated_at`) VALUES
(1, '2022', '2022-01-01', '2022-12-31', 1, '2022-06-15 14:54:41', '2022-06-15 14:54:41'),
(2, '2021', '2021-01-01', '2021-12-31', 0, '2022-06-15 14:54:41', '2022-06-15 14:54:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `module_id`, `created_at`, `updated_at`) VALUES
(1, 'manage-anggota', 'Manage Anggota', 'Bisa Memanage Anggota', 2, '2022-06-15 14:54:34', '2022-06-15 14:54:34'),
(2, 'create-anggota', 'create Anggota', 'Bisa Membuat Anggota', 2, '2022-06-15 14:54:34', '2022-06-15 14:54:34'),
(3, 'edit-anggota', 'edit anggota', 'Bisa Mengubah Anggota', 2, '2022-06-15 14:54:34', '2022-06-15 14:54:34'),
(4, 'download-anggota', 'download anggota', 'Bisa Download Anggota', 2, '2022-06-15 14:54:34', '2022-06-15 14:54:34'),
(5, 'manage-divisi', 'Manage Divisi', 'Bisa Memanage Divis', 3, '2022-06-15 14:54:34', '2022-06-15 14:54:34'),
(6, 'create-divisi', 'Create Divisi', 'Bisa Membuat Divisi', 3, '2022-06-15 14:54:34', '2022-06-15 14:54:34'),
(7, 'edit-divisi', 'Edit Divisi', 'Bisa Mengubah Divisi', 3, '2022-06-15 14:54:34', '2022-06-15 14:54:34'),
(8, 'manage-periode', 'Manage Periode', 'Bisa Memanage Periode', 4, '2022-06-15 14:54:34', '2022-06-15 14:54:34'),
(9, 'create-periode', 'Create Periode', 'Bisa Membuat Periode', 4, '2022-06-15 14:54:34', '2022-06-15 14:54:34'),
(10, 'edit-periode', 'Edit Periode', 'Bisa Mengubah Periode', 4, '2022-06-15 14:54:34', '2022-06-15 14:54:34'),
(11, 'delete-periode', 'Delete Periode', 'Bisa Menghapus Periode', 4, '2022-06-15 14:54:34', '2022-06-15 14:54:34'),
(12, 'manage-biaya', 'Manage biaya', 'Bisa Memanage biaya', 5, '2022-06-15 14:54:34', '2022-06-15 14:54:34'),
(13, 'create-biaya', 'create biaya', 'Bisa Membuat biaya', 5, '2022-06-15 14:54:34', '2022-06-15 14:54:34'),
(14, 'manage-debet-simpanan', 'Manage Debet Simpanan', 'Bisa Memanage debet simpanan', 6, '2022-06-15 14:54:34', '2022-06-15 14:54:34'),
(15, 'create-debet-simpanan', 'Buat Debet Simpanan', 'Bisa Membuat debet simpanan', 6, '2022-06-15 14:54:34', '2022-06-15 14:54:34'),
(16, 'edit-debet-simpanan', 'Edit Debet Simpanan', 'Bisa Mengubah debet simpanan', 6, '2022-06-15 14:54:34', '2022-06-15 14:54:34'),
(17, 'delete-debet-simpanan', 'Delete Debet Simpanan', 'Bisa Menghapus debet simpanan', 6, '2022-06-15 14:54:35', '2022-06-15 14:54:35'),
(18, 'download-debet-simpanan', 'Download Debet simpanan', 'Bisa Mendownload debet simpanan', 6, '2022-06-15 14:54:35', '2022-06-15 14:54:35'),
(19, 'upload-debet-simpanan', 'Upload Debet Simpanan', 'Bisa Upload debet simpanan', 6, '2022-06-15 14:54:35', '2022-06-15 14:54:35'),
(20, 'manage-laporan-kas-bank', 'Manage laporan kas bank', 'Bisa Memanage laporan kas bank', 7, '2022-06-15 14:54:35', '2022-06-15 14:54:35'),
(21, 'search-laporan-kas-bank', 'search laporan kas bank', 'Bisa Mencari laporan kas bank', 7, '2022-06-15 14:54:35', '2022-06-15 14:54:35'),
(22, 'excell-laporan-kas-bank', 'excell laporan kas bank', 'Bisa Download laporan kas bank', 7, '2022-06-15 14:54:35', '2022-06-15 14:54:35'),
(23, 'manage-laporan-simpanan-all', 'Manage laporan simpanan all', 'Bisa Memanage laporan simpanan all', 7, '2022-06-15 14:54:35', '2022-06-15 14:54:35'),
(24, 'search-laporan-simpanan-all', 'Search Laporan Simpanan All', 'Bisa Mencari laporan simpanan all', 7, '2022-06-15 14:54:35', '2022-06-15 14:54:35'),
(25, 'excell-laporan-simpanan-all', 'excell laporan simpanan all', 'Bisa Download laporan simpanan all', 7, '2022-06-15 14:54:35', '2022-06-15 14:54:35'),
(26, 'manage-laporan-pinjaman-all', 'Manage laporan pinjaman all', 'Bisa Memanage laporan pinjaman all', 7, '2022-06-15 14:54:35', '2022-06-15 14:54:35'),
(27, 'search-laporan-pinjaman-all', 'search laporan pinjaman all', 'Bisa Mencari laporan pinjaman all', 7, '2022-06-15 14:54:35', '2022-06-15 14:54:35'),
(28, 'excell-laporan-pinjaman-all', 'excell laporan pinjaman all', 'Bisa Download laporan pinjaman all', 7, '2022-06-15 14:54:35', '2022-06-15 14:54:35'),
(29, 'manage-simpanan-anggota', 'Manage simpanan anggota', 'Bisa Memanage simpanan anggota', 7, '2022-06-15 14:54:35', '2022-06-15 14:54:35'),
(30, 'search-simpanan-anggota', 'search simpanan anggota', 'Bisa Mencari simpanan anggota', 7, '2022-06-15 14:54:35', '2022-06-15 14:54:35'),
(31, 'excell-simpanan-anggota', 'Excell Simpanan Anggota', 'Bisa Download simpanan anggota', 7, '2022-06-15 14:54:35', '2022-06-15 14:54:35'),
(32, 'filter-simpanan-anggota', 'Filter Simpanan Anggota', 'Bisa Filter simpanan anggota', 7, '2022-06-15 14:54:35', '2022-06-15 14:54:35'),
(33, 'filter-pinjaman-anggota', 'Filter Pinjaman Anggota', 'Bisa Filter Pinjaman anggota', 7, '2022-06-15 14:54:35', '2022-06-15 14:54:35'),
(34, 'manage-pinjaman-anggota', 'Manage pinjaman anggota', 'Bisa Memanage pinjaman anggota', 7, '2022-06-15 14:54:35', '2022-06-15 14:54:35'),
(35, 'search-pinjaman-anggota', 'Search Pinjaman Anggota', 'Bisa Mencari pinjaman anggota', 7, '2022-06-15 14:54:35', '2022-06-15 14:54:35'),
(36, 'excell-pinjaman-anggota', 'excell pinjaman anggota', 'Bisa Download pinjaman anggota', 7, '2022-06-15 14:54:35', '2022-06-15 14:54:35'),
(37, 'manage-laporan-divisi', 'Manage laporan divisi', 'Bisa Memanage laporan divisi', 7, '2022-06-15 14:54:35', '2022-06-15 14:54:35'),
(38, 'search-laporan-divisi', 'search laporan divisi', 'Bisa Mencari laporan divisi', 7, '2022-06-15 14:54:35', '2022-06-15 14:54:35'),
(39, 'excell-laporan-divisi', 'excell laporan divisi', 'Bisa Download laporan divisi', 7, '2022-06-15 14:54:36', '2022-06-15 14:54:36'),
(40, 'manage-kredit-simpanan', 'Manage Kredit Simpanan', 'Bisa Memanage kredit simpanan', 8, '2022-06-15 14:54:36', '2022-06-15 14:54:36'),
(41, 'create-kredit-simpanan', 'Create Kredit Simpanan', 'Bisa Membuat kredit simpanan', 8, '2022-06-15 14:54:36', '2022-06-15 14:54:36'),
(42, 'edit-kredit-simpanan', 'Edit Credit Simpanan', 'Bisa Mengubah kredit simpanan', 8, '2022-06-15 14:54:36', '2022-06-15 14:54:36'),
(43, 'delete-kredit-simpanan', 'Delete Kredit Simpanan', 'Bisa Menghapus kredit simpanan', 8, '2022-06-15 14:54:36', '2022-06-15 14:54:36'),
(44, 'download-kredit-simpanan', 'Download Kredit Simpanan', 'Bisa Mendownload kredit simpanan', 8, '2022-06-15 14:54:36', '2022-06-15 14:54:36'),
(45, 'upload-kredit-simpanan', 'Upload Kredit Simpanan', 'Bisa Upload kredit simpanan', 8, '2022-06-15 14:54:36', '2022-06-15 14:54:36'),
(46, 'manage-debet-pinjaman', 'Manage Debet Pinjaman', 'Bisa Memanage debet pinjaman', 9, '2022-06-15 14:54:36', '2022-06-15 14:54:36'),
(47, 'create-debet-pinjaman', 'Create Debet Pinjaman', 'Bisa Membuat debet pinjaman', 9, '2022-06-15 14:54:36', '2022-06-15 14:54:36'),
(48, 'edit-debet-pinjaman', 'Edit Debet Pinjaman', 'Bisa Mengubah debet pinjaman', 9, '2022-06-15 14:54:36', '2022-06-15 14:54:36'),
(49, 'delete-debet-pinjaman', 'Delete Debet Pinjaman', 'Bisa Menghapus debet pinjaman', 9, '2022-06-15 14:54:36', '2022-06-15 14:54:36'),
(50, 'download-debet-pinjaman', 'Download Debet Pinjaman', 'Bisa Mendownload debet pinjaman', 9, '2022-06-15 14:54:36', '2022-06-15 14:54:36'),
(51, 'upload-debet-pinjaman', 'Upload Debet Pinjaman', 'Bisa Upload debet pinjaman', 9, '2022-06-15 14:54:36', '2022-06-15 14:54:36'),
(52, 'manage-kredit-pinjaman', 'Manage Kredit Pinjaman', 'Bisa Memanage kredit pinjaman', 10, '2022-06-15 14:54:36', '2022-06-15 14:54:36'),
(53, 'create-kredit-pinjaman', 'Create Kredit Pinjaman', 'Bisa Membuat kredit pinjaman', 10, '2022-06-15 14:54:36', '2022-06-15 14:54:36'),
(54, 'edit-kredit-pinjaman', 'Edit Kredit Pinjaman', 'Bisa Mengubah kredit pinjaman', 10, '2022-06-15 14:54:36', '2022-06-15 14:54:36'),
(55, 'delete-kredit-pinjaman', 'Delete Kredit Pinjaman', 'Bisa Menghapus kredit pinjaman', 10, '2022-06-15 14:54:36', '2022-06-15 14:54:36'),
(56, 'download-kredit-pinjaman', 'Download Kredit Pinjaman', 'Bisa Mendownload kredit pinjaman', 10, '2022-06-15 14:54:36', '2022-06-15 14:54:36'),
(57, 'upload-kredit-pinjaman', 'Upload Kredit Pinjaman', 'Bisa Upload kredit pinjaman', 10, '2022-06-15 14:54:36', '2022-06-15 14:54:36'),
(58, 'manage-debet-divisi', 'Manage Debet Divisi', 'Bisa Memanage debet divisi', 11, '2022-06-15 14:54:36', '2022-06-15 14:54:36'),
(59, 'create-debet-divisi', 'Create Debet Divisi', 'Bisa Membuat debet divisi', 11, '2022-06-15 14:54:36', '2022-06-15 14:54:36'),
(60, 'edit-debet-divisi', 'Edit Debet Divisi', 'Bisa Mengubah debet divisi', 11, '2022-06-15 14:54:36', '2022-06-15 14:54:36'),
(61, 'delete-debet-divisi', 'Delete Debet Divisi', 'Bisa Menghapus Debet Divisi', 11, '2022-06-15 14:54:36', '2022-06-15 14:54:36'),
(62, 'manage-kredit-divisi', 'Manage kredit Divisi', 'Bisa Memanage debet kredit', 12, '2022-06-15 14:54:36', '2022-06-15 14:54:36'),
(63, 'create-kredit-divisi', 'Create Kredit Divisi', 'Bisa Membuat debet kredit', 12, '2022-06-15 14:54:36', '2022-06-15 14:54:36'),
(64, 'edit-kredit-divisi', 'Edit Kredit Divisi', 'Bisa Mengubah debet kredit', 12, '2022-06-15 14:54:36', '2022-06-15 14:54:36'),
(65, 'delete-kredit-divisi', 'Delete Kredit Divisi', 'Bisa Menghapus Debet Kredit', 12, '2022-06-15 14:54:37', '2022-06-15 14:54:37'),
(66, 'manage-user', 'Manage user', 'Bisa Memanage user', 13, '2022-06-15 14:54:37', '2022-06-15 14:54:37'),
(67, 'edit-user', 'edit user', 'Bisa Mengubah user', 13, '2022-06-15 14:54:37', '2022-06-15 14:54:37'),
(68, 'create-user', 'create user', 'Bisa menambah user', 13, '2022-06-15 14:54:37', '2022-06-15 14:54:37'),
(69, 'reset-password', 'Reset Password', 'Bisa reset password', 13, '2022-06-15 14:54:37', '2022-06-15 14:54:37'),
(70, 'manage-option', 'Manage option', 'Bisa Memanage option', 14, '2022-06-15 14:54:37', '2022-06-15 14:54:37'),
(71, 'edit-option', 'edit option', 'Bisa Mengubah option', 14, '2022-06-15 14:54:37', '2022-06-15 14:54:37'),
(72, 'create-option', 'create option', 'Bisa menambah option', 14, '2022-06-15 14:54:37', '2022-06-15 14:54:37'),
(73, 'delete-option', 'Delete Option', 'Bisa Menghapus Option', 14, '2022-06-15 14:54:37', '2022-06-15 14:54:37'),
(74, 'manage-role', 'Manage Role', 'Bisa Manage Role', 15, '2022-06-15 14:54:37', '2022-06-15 14:54:37'),
(75, 'edit-role', 'Edit Role', 'Bisa Mengubah Role', 15, '2022-06-15 14:54:37', '2022-06-15 14:54:37'),
(76, 'create-role', 'Create Role', 'Bisa Menambah role', 15, '2022-06-15 14:54:37', '2022-06-15 14:54:37'),
(77, 'manage-permissions', 'Manage Permission', 'Bisa Manage Permission', 16, '2022-06-15 14:54:37', '2022-06-15 14:54:37'),
(78, 'edit-permissions', 'Edit Permission', 'Bisa Mengubah Permission', 16, '2022-06-15 14:54:37', '2022-06-15 14:54:37'),
(79, 'create-permissions', 'Create Permission', 'Bisa Menambah Permission', 16, '2022-06-15 14:54:37', '2022-06-15 14:54:37'),
(80, 'manage-module', 'Manage Module', 'Bisa Manage Module', 17, '2022-06-15 14:54:37', '2022-06-15 14:54:37'),
(81, 'edit-module', 'Edit Module', 'Bisa Mengubah Module', 17, '2022-06-15 14:54:37', '2022-06-15 14:54:37'),
(82, 'create-module', 'Create Module', 'Bisa Menambah Module', 17, '2022-06-15 14:54:37', '2022-06-15 14:54:37'),
(83, 'manage-copy-saldo', 'Manage Copy Saldo', 'Bisa Manage Module', 18, '2022-06-15 14:54:37', '2022-06-15 14:54:37'),
(84, 'edit-copy-saldo', 'Edit Copy Saldo', 'Bisa Mengubah Copy Saldo', 18, '2022-06-15 14:54:37', '2022-06-15 14:54:37'),
(85, 'create-copy-saldo', 'Create Copy Saldo', 'Bisa Menambah Copy Saldo', 18, '2022-06-15 14:54:37', '2022-06-15 14:54:37'),
(86, 'manage-email', 'Manage Email', 'Bisa Manage Email', 19, '2022-06-15 14:54:38', '2022-06-15 14:54:38'),
(87, 'edit-email', 'Edit Email', 'Bisa Mengubah Email', 19, '2022-06-15 14:54:38', '2022-06-15 14:54:38'),
(88, 'create-email', 'Create Email', 'Bisa Menambah Email', 19, '2022-06-15 14:54:38', '2022-06-15 14:54:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(29, 2),
(30, 1),
(30, 2),
(31, 1),
(31, 2),
(32, 1),
(33, 1),
(34, 1),
(34, 2),
(35, 1),
(35, 2),
(36, 1),
(36, 2),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', 'Ini Adalah Role Admin', '2022-06-15 14:54:38', '2022-06-15 14:54:38'),
(2, 'member', 'Member', 'Role Member', '2022-06-15 14:54:41', '2022-06-15 14:54:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_user`
--

CREATE TABLE `role_user` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'AppUser'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`, `user_type`) VALUES
(1, 1, 'AppUser'),
(2, 2, 'AppUser'),
(2, 3, 'AppUser'),
(2, 4, 'AppUser'),
(2, 5, 'AppUser'),
(2, 6, 'AppUser'),
(2, 7, 'AppUser'),
(2, 8, 'AppUser'),
(2, 9, 'AppUser'),
(2, 10, 'AppUser'),
(2, 11, 'AppUser'),
(2, 12, 'AppUser');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_harians`
--

CREATE TABLE `transaksi_harians` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `divisi_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tgl` date NOT NULL,
  `jenis_pembayaran` int(11) NOT NULL,
  `jenis_transaksi` int(11) NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `periode_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_close` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transaksi_harians`
--

INSERT INTO `transaksi_harians` (`id`, `divisi_id`, `tgl`, `jenis_pembayaran`, `jenis_transaksi`, `keterangan`, `periode_id`, `created_at`, `updated_at`, `is_close`) VALUES
(1, 1, '2022-06-17', 1, 1, 'DEBET', 1, '2022-06-17 14:03:05', '2022-06-17 14:03:05', 0),
(2, 1, '2022-06-17', 1, 1, 'DEBET', 1, '2022-06-17 14:05:13', '2022-06-17 14:05:13', 0),
(3, 1, '2022-06-17', 1, 1, 'DEBET', 1, '2022-06-17 14:06:15', '2022-06-17 14:06:15', 0),
(4, 1, '2022-06-17', 1, 1, 'DEBET', 1, '2022-06-17 14:08:28', '2022-06-17 14:08:28', 0),
(5, 1, '2022-06-17', 1, 1, 'DEBET', 1, '2022-06-17 14:11:52', '2022-06-17 14:11:52', 0),
(6, 1, '2022-06-17', 1, 2, 'KREDIT', 1, '2022-06-17 14:13:22', '2022-06-17 14:13:22', 0),
(7, 2, '2022-06-17', 1, 1, 'AMBIL PINJAMAN', 1, '2022-06-17 14:16:25', '2022-06-17 14:16:25', 0),
(8, 1, '2022-06-19', 1, 1, 'DEBIT', 1, '2022-06-18 18:42:32', '2022-06-18 18:42:32', 0),
(9, 1, '2022-06-19', 2, 2, 'KREDIT', 1, '2022-06-18 18:44:36', '2022-06-18 18:44:36', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_harian_anggotas`
--

CREATE TABLE `transaksi_harian_anggotas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaksi_harian_id` bigint(20) UNSIGNED DEFAULT NULL,
  `anggota_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transaksi_harian_anggotas`
--

INSERT INTO `transaksi_harian_anggotas` (`id`, `transaksi_harian_id`, `anggota_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-06-17 14:03:05', '2022-06-17 14:03:05'),
(2, 2, 1, '2022-06-17 14:05:13', '2022-06-17 14:05:13'),
(3, 3, 1, '2022-06-17 14:06:15', '2022-06-17 14:06:15'),
(4, 4, 1, '2022-06-17 14:08:28', '2022-06-17 14:08:28'),
(5, 5, 1, '2022-06-17 14:11:52', '2022-06-17 14:11:52'),
(6, 6, 1, '2022-06-17 14:13:22', '2022-06-17 14:13:22'),
(7, 7, 1, '2022-06-17 14:16:25', '2022-06-17 14:16:25'),
(8, 8, 1, '2022-06-18 18:42:32', '2022-06-18 18:42:32'),
(9, 9, 3, '2022-06-18 18:44:36', '2022-06-18 18:44:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_harian_biayas`
--

CREATE TABLE `transaksi_harian_biayas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaksi_harian_id` bigint(20) UNSIGNED DEFAULT NULL,
  `biaya_id` bigint(20) UNSIGNED DEFAULT NULL,
  `nominal` decimal(65,0) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transaksi_harian_biayas`
--

INSERT INTO `transaksi_harian_biayas` (`id`, `transaksi_harian_id`, `biaya_id`, `nominal`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '1000000', '2022-06-17 14:03:05', '2022-06-17 14:03:05'),
(2, 1, 2, '5000', '2022-06-17 14:03:05', '2022-06-17 14:03:05'),
(3, 1, 3, '2000', '2022-06-17 14:03:05', '2022-06-17 14:03:05'),
(4, 2, 1, '1000000', '2022-06-17 14:05:14', '2022-06-17 14:05:14'),
(5, 2, 2, '5000', '2022-06-17 14:05:14', '2022-06-17 14:05:14'),
(6, 2, 3, '2000', '2022-06-17 14:05:14', '2022-06-17 14:05:14'),
(7, 3, 1, '1000000', '2022-06-17 14:06:15', '2022-06-17 14:06:15'),
(8, 3, 2, '5000', '2022-06-17 14:06:15', '2022-06-17 14:06:15'),
(9, 3, 3, '2000', '2022-06-17 14:06:15', '2022-06-17 14:06:15'),
(10, 4, 1, '1000000', '2022-06-17 14:08:28', '2022-06-17 14:08:28'),
(11, 4, 2, '5000', '2022-06-17 14:08:28', '2022-06-17 14:08:28'),
(12, 4, 3, '2000', '2022-06-17 14:08:28', '2022-06-17 14:08:28'),
(13, 5, 1, '1000000', '2022-06-17 14:11:52', '2022-06-17 14:11:52'),
(14, 5, 2, '5000', '2022-06-17 14:11:52', '2022-06-17 14:11:52'),
(15, 5, 3, '2000', '2022-06-17 14:11:53', '2022-06-17 14:11:53'),
(16, 6, 4, '1000000', '2022-06-17 14:13:23', '2022-06-17 14:13:23'),
(17, 7, 6, '3000000', '2022-06-17 14:16:25', '2022-06-17 14:16:25'),
(18, 7, 7, '10000', '2022-06-17 14:16:25', '2022-06-17 14:16:25'),
(19, 8, 1, '5000000', '2022-06-18 18:42:32', '2022-06-18 18:42:32'),
(20, 8, 2, '10000', '2022-06-18 18:42:32', '2022-06-18 18:42:32'),
(21, 8, 3, '5000', '2022-06-18 18:42:32', '2022-06-18 18:42:32'),
(22, 9, 4, '1000000', '2022-06-18 18:44:36', '2022-06-18 18:44:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_pinjamen`
--

CREATE TABLE `transaksi_pinjamen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaksi_harian_biaya_id` bigint(20) UNSIGNED NOT NULL,
  `lama_cicilan` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin Koperasi', 'jagosoftware@shopee.co.id', NULL, '$2y$10$AE1sUR.LU0iohNhLwMvbceiIJJ/Th60QsJilly1NCjRVTAL/HcQ0W', NULL, '2022-06-15 14:54:38', '2022-06-15 14:54:38'),
(3, 'Agus Permana', '320209040401001', NULL, '$2y$10$k2/xvBuiWyx6kdyDjwwvwO0UMIyQw1s2bcFb1LTgfvwmKpsIS7a7W', NULL, '2022-06-15 14:54:43', '2022-06-18 19:17:15'),
(4, 'Ahmad Jaelani', '320209050501002', NULL, '$2y$10$Y.uKm60ZU77MChl7oPSUROPMP1mfl6mBnp0.rF40zTjqFeYNObahK', NULL, '2022-06-15 14:54:43', '2022-06-15 14:54:43'),
(5, 'Miranda', '320209060601003', NULL, '$2y$10$HfIoovizWjXAAU63bRUt7e4f4hZpw8bR0Xff5/Cg3yQEmN2eOu0DW', NULL, '2022-06-15 14:54:43', '2022-06-15 14:54:43'),
(6, 'Raka Hadi', '320209070701004', NULL, '$2y$10$ZqXJYlFIFPTxPt.uJ88y/ejpPLrH4.hveISBPVCwbbSCNBETqqMXq', NULL, '2022-06-15 14:54:44', '2022-06-15 14:54:44'),
(7, 'Hermansyah', '320209080801005', NULL, '$2y$10$aCACXVnrEZRdeeBnfE3f5e06hf5X.dudfOKOb0Na/46wuHXsXqvNy', NULL, '2022-06-15 14:54:44', '2022-06-15 14:54:44'),
(8, 'Angga Rojak', '320209080801006', NULL, '$2y$10$Y30Q.Narp6uzPkQdB35aKe8Slkwroge4PKFqWzbf0nWLXfqHvvNAy', NULL, '2022-06-15 14:54:44', '2022-06-15 14:54:44'),
(9, 'Kardun', '320209080801007', NULL, '$2y$10$UCH03v5l5Dd/98mUbjNDKudzF0iQFBavNxmOq1vTeeIeJCvgSn9zK', NULL, '2022-06-15 14:54:44', '2022-06-15 14:54:44'),
(10, 'Jaja Miharja', '320209080801008', NULL, '$2y$10$yeeTF8iQZN/xWJ4Mn0l1gOL.FIE5HSUWZ1E3VJ00T91wpfJT3uio6', NULL, '2022-06-15 14:54:44', '2022-06-15 14:54:44'),
(11, 'Miharja', '320209080801009', NULL, '$2y$10$k999nbdhjCx8WMrUx5mdfO3uu4dVsaVB0HPYM2/IaT8CAtpgMm106', NULL, '2022-06-15 14:54:45', '2022-06-15 14:54:45'),
(12, 'Santika', '320209080801010', NULL, '$2y$10$KeqoXh54o15s0XC4IXJZPuSjHsFsVCGoM.RdAr72VvjWj3yfUvq22', NULL, '2022-06-15 14:54:45', '2022-06-15 14:54:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_anggotas`
--

CREATE TABLE `user_anggotas` (
  `anggota_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `user_anggotas`
--

INSERT INTO `user_anggotas` (`anggota_id`, `user_id`) VALUES
(1, 3),
(2, 4),
(3, 5),
(4, 6),
(5, 7),
(6, 8),
(7, 9),
(8, 10),
(9, 11),
(10, 12);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_log_log_name_index` (`log_name`),
  ADD KEY `subject` (`subject_id`,`subject_type`),
  ADD KEY `causer` (`causer_id`,`causer_type`);

--
-- Indeks untuk tabel `anggotas`
--
ALTER TABLE `anggotas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `anggotas_nik_unique` (`nik`);

--
-- Indeks untuk tabel `biayas`
--
ALTER TABLE `biayas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `biayas_name_unique` (`name`),
  ADD KEY `biayas_divisi_id_foreign` (`divisi_id`);

--
-- Indeks untuk tabel `copy_saldos`
--
ALTER TABLE `copy_saldos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `copy_saldos_from_periode_id_foreign` (`from_periode_id`),
  ADD KEY `copy_saldos_to_periode_id_foreign` (`to_periode_id`),
  ADD KEY `copy_saldos_divisi_id_foreign` (`divisi_id`);

--
-- Indeks untuk tabel `divisis`
--
ALTER TABLE `divisis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `divisis_name_unique` (`name`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `modules_name_unique` (`name`);

--
-- Indeks untuk tabel `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indeks untuk tabel `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `periodes`
--
ALTER TABLE `periodes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`),
  ADD KEY `permissions_module_id_foreign` (`module_id`);

--
-- Indeks untuk tabel `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indeks untuk tabel `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `transaksi_harians`
--
ALTER TABLE `transaksi_harians`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksi_harians_divisi_id_foreign` (`divisi_id`),
  ADD KEY `transaksi_harians_periode_id_foreign` (`periode_id`);

--
-- Indeks untuk tabel `transaksi_harian_anggotas`
--
ALTER TABLE `transaksi_harian_anggotas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksi_harian_anggotas_transaksi_harian_id_foreign` (`transaksi_harian_id`),
  ADD KEY `transaksi_harian_anggotas_anggota_id_foreign` (`anggota_id`);

--
-- Indeks untuk tabel `transaksi_harian_biayas`
--
ALTER TABLE `transaksi_harian_biayas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksi_harian_biayas_transaksi_harian_id_foreign` (`transaksi_harian_id`),
  ADD KEY `transaksi_harian_biayas_biaya_id_foreign` (`biaya_id`);

--
-- Indeks untuk tabel `transaksi_pinjamen`
--
ALTER TABLE `transaksi_pinjamen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksi_pinjamen_transaksi_harian_biaya_id_foreign` (`transaksi_harian_biaya_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `user_anggotas`
--
ALTER TABLE `user_anggotas`
  ADD PRIMARY KEY (`user_id`,`anggota_id`),
  ADD KEY `user_anggotas_anggota_id_foreign` (`anggota_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `anggotas`
--
ALTER TABLE `anggotas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `biayas`
--
ALTER TABLE `biayas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `copy_saldos`
--
ALTER TABLE `copy_saldos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `divisis`
--
ALTER TABLE `divisis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `modules`
--
ALTER TABLE `modules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `options`
--
ALTER TABLE `options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT untuk tabel `periodes`
--
ALTER TABLE `periodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `transaksi_harians`
--
ALTER TABLE `transaksi_harians`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `transaksi_harian_anggotas`
--
ALTER TABLE `transaksi_harian_anggotas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `transaksi_harian_biayas`
--
ALTER TABLE `transaksi_harian_biayas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `transaksi_pinjamen`
--
ALTER TABLE `transaksi_pinjamen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `biayas`
--
ALTER TABLE `biayas`
  ADD CONSTRAINT `biayas_divisi_id_foreign` FOREIGN KEY (`divisi_id`) REFERENCES `divisis` (`id`);

--
-- Ketidakleluasaan untuk tabel `copy_saldos`
--
ALTER TABLE `copy_saldos`
  ADD CONSTRAINT `copy_saldos_divisi_id_foreign` FOREIGN KEY (`divisi_id`) REFERENCES `divisis` (`id`),
  ADD CONSTRAINT `copy_saldos_from_periode_id_foreign` FOREIGN KEY (`from_periode_id`) REFERENCES `periodes` (`id`),
  ADD CONSTRAINT `copy_saldos_to_periode_id_foreign` FOREIGN KEY (`to_periode_id`) REFERENCES `periodes` (`id`);

--
-- Ketidakleluasaan untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transaksi_harians`
--
ALTER TABLE `transaksi_harians`
  ADD CONSTRAINT `transaksi_harians_divisi_id_foreign` FOREIGN KEY (`divisi_id`) REFERENCES `divisis` (`id`),
  ADD CONSTRAINT `transaksi_harians_periode_id_foreign` FOREIGN KEY (`periode_id`) REFERENCES `periodes` (`id`);

--
-- Ketidakleluasaan untuk tabel `transaksi_harian_anggotas`
--
ALTER TABLE `transaksi_harian_anggotas`
  ADD CONSTRAINT `transaksi_harian_anggotas_anggota_id_foreign` FOREIGN KEY (`anggota_id`) REFERENCES `anggotas` (`id`),
  ADD CONSTRAINT `transaksi_harian_anggotas_transaksi_harian_id_foreign` FOREIGN KEY (`transaksi_harian_id`) REFERENCES `transaksi_harians` (`id`);

--
-- Ketidakleluasaan untuk tabel `transaksi_harian_biayas`
--
ALTER TABLE `transaksi_harian_biayas`
  ADD CONSTRAINT `transaksi_harian_biayas_biaya_id_foreign` FOREIGN KEY (`biaya_id`) REFERENCES `biayas` (`id`),
  ADD CONSTRAINT `transaksi_harian_biayas_transaksi_harian_id_foreign` FOREIGN KEY (`transaksi_harian_id`) REFERENCES `transaksi_harians` (`id`);

--
-- Ketidakleluasaan untuk tabel `transaksi_pinjamen`
--
ALTER TABLE `transaksi_pinjamen`
  ADD CONSTRAINT `transaksi_pinjamen_transaksi_harian_biaya_id_foreign` FOREIGN KEY (`transaksi_harian_biaya_id`) REFERENCES `transaksi_harian_biayas` (`id`);

--
-- Ketidakleluasaan untuk tabel `user_anggotas`
--
ALTER TABLE `user_anggotas`
  ADD CONSTRAINT `user_anggotas_anggota_id_foreign` FOREIGN KEY (`anggota_id`) REFERENCES `anggotas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_anggotas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
