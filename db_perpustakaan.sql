-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Feb 2022 pada 15.19
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_perpustakaan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penulis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penerbit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `books`
--

INSERT INTO `books` (`id`, `judul`, `penulis`, `penerbit`, `created_at`, `updated_at`) VALUES
(1, 'Komet', 'Tere Liye', 'Gramedia', '2021-12-21 19:24:27', '2021-12-21 19:24:27'),
(2, 'Nebula', 'Tere Liye', 'Gramedia', '2021-12-21 20:23:49', '2021-12-21 20:23:49'),
(3, 'Serena', 'Tere Liye', 'Gramedia', '2021-12-21 20:24:27', '2021-12-21 20:24:27'),
(4, 'Selamat Tinggal', 'Tere Liye', 'Gramedia', '2021-12-21 20:25:21', '2021-12-21 20:25:21'),
(5, 'Wingit', 'Sara Wijiyanto', 'Gramedia', '2021-12-21 20:38:04', '2021-12-21 20:38:04'),
(6, 'THE SCARLET LATTER', 'Nathaniel Hawthorne', 'MIZAN', '2021-12-21 20:40:14', '2021-12-21 20:40:14'),
(8, 'Infinity', 'Mayang Aeni', 'Grasindo', '2021-12-21 20:44:42', '2021-12-21 20:44:42'),
(9, 'Primadona VS Cassanova', 'Alicia Angelina', 'Grasindo', '2021-12-21 20:45:45', '2021-12-21 20:45:45'),
(10, 'Hidup Mau Ngapain?', 'Ali Zaenal Abidin', 'MIZAN', '2021-12-21 20:47:17', '2021-12-21 20:47:17'),
(11, 'Dealing With The Bad Boy', 'Febriani AD', 'Grasindo', '2021-12-21 20:48:16', '2021-12-21 20:48:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `borrowings`
--

CREATE TABLE `borrowings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_peminjam` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul_buku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `ket` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `borrowings`
--

INSERT INTO `borrowings` (`id`, `nama_peminjam`, `judul_buku`, `tgl_pinjam`, `tgl_kembali`, `ket`, `created_at`, `updated_at`) VALUES
(1, 'Hilda Shofiana Gunawan', 'Komet', '2021-12-22', '2021-12-24', 'Belum Kembali', '2021-12-21 19:27:30', '2021-12-21 19:27:30'),
(2, 'Aura Amelia M', 'THE SCARLET LATTER', '2021-12-21', '2021-12-22', 'Kembali', '2021-12-21 20:50:12', '2021-12-21 20:50:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_12_20_042703_create_books_table', 1),
(6, '2021_12_20_042757_create_students_table', 1),
(7, '2021_12_20_042821_create_rayons_table', 1),
(8, '2021_12_20_042917_create_student_groups_table', 1),
(9, '2021_12_20_042947_create_publishers_table', 1),
(10, '2021_12_20_043011_create_borrowings_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `publishers`
--

CREATE TABLE `publishers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `penerbit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `publishers`
--

INSERT INTO `publishers` (`id`, `penerbit`, `created_at`, `updated_at`) VALUES
(2, 'Gramedia', '2021-12-21 20:15:42', '2021-12-21 20:15:51'),
(3, 'Agro media', '2021-12-21 20:16:29', '2021-12-21 20:16:29'),
(4, 'C Publishing', '2021-12-21 20:16:50', '2021-12-21 20:16:50'),
(5, 'Gagas Media', '2021-12-21 20:17:43', '2021-12-21 20:17:43'),
(6, 'Wahyu Media', '2021-12-21 20:18:16', '2021-12-21 20:18:16'),
(7, 'Wahyu Media', '2021-12-21 20:19:02', '2021-12-21 20:19:02'),
(8, 'Elex Media Komputindo', '2021-12-21 20:20:27', '2021-12-21 20:20:27'),
(9, 'Grasindo', '2021-12-21 20:20:51', '2021-12-21 20:20:51'),
(10, 'Bhuana Ilmu Poluler', '2021-12-21 20:21:08', '2021-12-21 20:21:08'),
(11, 'MIZAN', '2021-12-21 20:21:26', '2021-12-21 20:21:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rayons`
--

CREATE TABLE `rayons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rayon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `rayons`
--

INSERT INTO `rayons` (`id`, `rayon`, `created_at`, `updated_at`) VALUES
(1, 'Cib 1', '2021-12-21 19:21:58', '2021-12-21 19:21:58'),
(2, 'Cib 2', '2021-12-21 20:08:16', '2021-12-21 20:08:16'),
(3, 'Cib 3', '2021-12-21 20:08:29', '2021-12-21 20:08:29'),
(4, 'Cia 1', '2021-12-21 20:08:40', '2021-12-21 20:08:40'),
(5, 'Cia 2', '2021-12-21 20:08:48', '2021-12-21 20:08:48'),
(6, 'Cia 3', '2021-12-21 20:08:56', '2021-12-21 20:08:56'),
(7, 'Cis 1', '2021-12-21 20:09:05', '2021-12-21 20:09:05'),
(8, 'Cis 2', '2021-12-21 20:09:13', '2021-12-21 20:09:13'),
(9, 'Cis 3', '2021-12-21 20:09:23', '2021-12-21 20:09:23'),
(10, 'Wik1', '2021-12-21 20:09:57', '2021-12-21 20:09:57'),
(11, 'Wik 2', '2021-12-21 20:10:16', '2021-12-21 20:10:16'),
(12, 'Wik 3', '2021-12-21 20:10:25', '2021-12-21 20:10:25'),
(13, 'Cic 1', '2021-12-21 20:10:36', '2021-12-21 20:10:36'),
(14, 'Cic 2', '2021-12-21 20:10:46', '2021-12-21 20:10:46'),
(15, 'Cic 3', '2021-12-21 20:10:54', '2021-12-21 20:10:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nis` int(11) NOT NULL,
  `rombel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rayon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `students`
--

INSERT INTO `students` (`id`, `nama`, `nis`, `rombel`, `rayon`, `created_at`, `updated_at`) VALUES
(1, 'Hilda Shofiana Gunawan', 12007822, 'RPL XI-5', 'Cib 1', '2021-12-21 19:24:49', '2021-12-21 19:24:49'),
(2, 'Aura Amelia M', 120078002, 'RPL XI-5', 'Cib 1', '2021-12-21 20:49:37', '2021-12-21 20:49:37'),
(3, 'Pingkan Yuki F', 120078876, 'MMD XI-2', 'Cib 1', '2021-12-21 20:51:06', '2021-12-21 20:51:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `student_groups`
--

CREATE TABLE `student_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rombel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `student_groups`
--

INSERT INTO `student_groups` (`id`, `rombel`, `created_at`, `updated_at`) VALUES
(1, 'RPL XI-5', '2021-12-21 19:22:14', '2021-12-21 19:22:14'),
(2, 'RPL XI-1', '2021-12-21 20:11:26', '2021-12-21 20:11:26'),
(3, 'RPL XI-2', '2021-12-21 20:11:34', '2021-12-21 20:11:34'),
(4, 'RPL XI-4', '2021-12-21 20:11:47', '2021-12-21 20:11:47'),
(5, 'RPL XI-3', '2021-12-21 20:11:58', '2021-12-21 20:11:58'),
(6, 'MMD XI-1', '2021-12-21 20:12:08', '2021-12-21 20:12:08'),
(7, 'MMD XI-2', '2021-12-21 20:12:19', '2021-12-21 20:12:19'),
(8, 'TKJ XI-1', '2021-12-21 20:13:17', '2021-12-21 20:13:17'),
(9, 'TKJ XI-2', '2021-12-21 20:13:33', '2021-12-21 20:13:33'),
(10, 'TKJ XI-3', '2021-12-21 20:13:43', '2021-12-21 20:13:43'),
(11, 'TBG XI-1', '2021-12-21 20:13:57', '2021-12-21 20:13:57'),
(12, 'TBG XI-2', '2021-12-21 20:14:07', '2021-12-21 20:14:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Hilda Shofiana Gunawan', 'hildashofianagunawan@smkwikrama.sch.id', NULL, '$2y$10$3d8YhUqX9.uBoQ43o0E8NuPNr5d4DVi/tUPRDuf13W6FVFFZzh7jO', NULL, '2021-12-21 19:39:14', '2021-12-21 19:39:14'),
(2, 'Hilda Shofiana Gunawan', 'hildashofiana1512@gmail.com', NULL, '$2y$10$OmIli/q1SKUsQBG9Gbcz6.cA3k.HZzVIQ8get7.PQf.93b5PIijj.', NULL, '2021-12-21 19:40:57', '2021-12-21 19:40:57'),
(3, 'hilda', 'hldashfii@gmail.com', NULL, '$2y$10$ri2Gxhd5B28dOsvnvu/.1edBEsHaYRO4jxJ4QHLQC8fz246KbWJai', '9JqK0SWrdyInhCDKhs58cIM0DVjMn2jYzJW8wzVZnFhhrTyMKGHASeiVWLnh', '2021-12-21 19:54:02', '2021-12-21 19:54:02'),
(4, 'Marsha', 'marshak116@gmail.com', NULL, '$2y$10$ATYIvu93k0mqFvmU7kz/aedL2UquBlq4e8kP1RHk7QgMes1w4Vi9u', NULL, '2021-12-21 19:59:34', '2021-12-21 19:59:34');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `borrowings`
--
ALTER TABLE `borrowings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rayons`
--
ALTER TABLE `rayons`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `student_groups`
--
ALTER TABLE `student_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `borrowings`
--
ALTER TABLE `borrowings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `rayons`
--
ALTER TABLE `rayons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `student_groups`
--
ALTER TABLE `student_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
