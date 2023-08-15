-- Adminer 4.8.1 MySQL 5.7.42 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`),
  UNIQUE KEY `admins_username_unique` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `alumnis`;
CREATE TABLE `alumnis` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nis` int(11) NOT NULL,
  `telp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` datetime NOT NULL,
  `kelamin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jurusan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thn_lulus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterserapan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '6eEeXE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `alumnis_nis_unique` (`nis`),
  UNIQUE KEY `alumnis_telp_unique` (`telp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `alumnis` (`id`, `nama`, `nis`, `telp`, `tgl_lahir`, `kelamin`, `jurusan`, `thn_lulus`, `keterserapan`, `alamat`, `password`, `created_at`, `updated_at`) VALUES
(3,	' Budi Santoso       ',	123456,	'6281111111111',	'1970-01-01 09:57:21',	'Laki-laki     ',	'IPA     ',	'2017',	'Wirausaha          ',	' Jl. Merdeka No. 123             ',	'6eEeXE',	'2023-08-14 02:28:16',	'2023-08-14 02:28:16'),
(4,	' Dewi Indah         ',	234567,	'6282222222222',	'1970-01-01 10:05:31',	'Perempuan     ',	'IPS     ',	'2018',	'Pendidikan Profesi ',	' Jl. Jendral Sudirman No. 456    ',	'6eEeXE',	'2023-08-14 02:28:16',	'2023-08-14 02:28:16'),
(5,	' Imam Prasetyo      ',	345678,	'6283333333333',	'1970-01-01 10:14:32',	'Laki-laki     ',	'IPA     ',	'2019',	'Masa Tunggu        ',	' Jl. Diponegoro No. 789           ',	'6eEeXE',	'2023-08-14 02:28:16',	'2023-08-14 02:28:16'),
(6,	' Sari Wulandari     ',	456789,	'6284444444444',	'1970-01-01 09:57:59',	'Perempuan     ',	'IPS     ',	'2018',	'Kuliah             ',	' Jl. A. Yani No. 321              ',	'6eEeXE',	'2023-08-14 02:28:16',	'2023-08-14 02:28:16'),
(7,	' Joko Supriyanto    ',	567890,	'6285555555555',	'1970-01-01 10:08:12',	'Laki-laki     ',	'IPA     ',	'2017',	'Bekerja            ',	' Jl. Gajah Mada No. 678           ',	'6eEeXE',	'2023-08-14 02:28:16',	'2023-08-14 02:28:16'),
(8,	' Rina Sari          ',	678901,	'6286666666666',	'1970-01-01 10:12:06',	'Perempuan     ',	'IPS     ',	'2019',	'Wirausaha          ',	' Jl. Sudirman No. 567             ',	'6eEeXE',	'2023-08-14 02:28:17',	'2023-08-14 02:28:17'),
(9,	' Bayu Nugroho       ',	789012,	'6287777777777',	'1970-01-01 10:00:46',	'Laki-laki     ',	'IPA     ',	'2018',	'Pendidikan Profesi ',	' Jl. Merak No. 789                ',	'6eEeXE',	'2023-08-14 02:28:17',	'2023-08-14 02:28:17'),
(10,	' Tika Wardhani      ',	890123,	'6288888888888',	'1970-01-01 10:06:04',	'Perempuan     ',	'IPS     ',	'2017',	'Masa Tunggu        ',	' Jl. Kebon Sirih No. 890          ',	'6eEeXE',	'2023-08-14 02:28:17',	'2023-08-14 02:28:17'),
(11,	' Rizky Pratama      ',	901234,	'6289999999999',	'1970-01-01 10:08:54',	'Laki-laki     ',	'IPA     ',	'2019',	'Bekerja            ',	' Jl. Gatot Subroto No. 901        ',	'6eEeXE',	'2023-08-14 02:28:17',	'2023-08-14 02:28:17'),
(12,	' Mega Pratiwi       ',	210987,	'6281234543210',	'1970-01-01 10:00:50',	'Perempuan     ',	'IPS     ',	'2017',	'Masa Tunggu        ',	' Jl. S. Parman No. 345            ',	'6eEeXE',	'2023-08-14 02:28:17',	'2023-08-14 02:28:17'),
(13,	' Anton Susanto      ',	109876,	'6280987654321',	'1970-01-01 10:06:15',	'Laki-laki     ',	'IPA     ',	'2018',	'Wirausaha          ',	' Jl. Diponegoro No. 567           ',	'6eEeXE',	'2023-08-14 02:28:17',	'2023-08-14 02:28:17'),
(14,	' Ani Suyanti        ',	987654,	'6289876543532',	'1970-01-01 10:14:10',	'Perempuan     ',	'IPA     ',	'2019',	'Pendidikan Profesi ',	' Jl. Ahmad Yani No. 123           ',	'6eEeXE',	'2023-08-14 02:28:17',	'2023-08-14 02:28:17'),
(15,	' Adi Sutomo         ',	876543,	'6288765432109',	'1970-01-01 09:59:21',	'Laki-laki     ',	'IPA     ',	'2017',	'Pendidikan Profesi ',	' Jl. Sudirman No. 890             ',	'6eEeXE',	'2023-08-14 02:28:17',	'2023-08-14 02:28:17'),
(16,	' Nia Suryani        ',	765432,	'6287654321098',	'1970-01-01 10:04:28',	'Perempuan     ',	'IPA     ',	'2019',	'Kuliah             ',	' Jl. Merdeka No. 567              ',	'6eEeXE',	'2023-08-14 02:28:17',	'2023-08-14 02:28:17'),
(17,	' Wahyu Prabowo      ',	654321,	'6286543210987',	'1970-01-01 10:14:25',	'Laki-laki     ',	'IPA     ',	'2018',	'Bekerja            ',	' Jl. Diponegoro No. 789           ',	'6eEeXE',	'2023-08-14 02:28:17',	'2023-08-14 02:28:17'),
(18,	' Yuni Astuti        ',	543210,	'6285432109876',	'1970-01-01 10:06:04',	'Perempuan     ',	'IPA     ',	'2017',	'Wirausaha          ',	' Jl. Kebon Sirih No. 890          ',	'6eEeXE',	'2023-08-14 02:28:17',	'2023-08-14 02:28:17'),
(19,	' Satrio Adi         ',	432109,	'6284321098765',	'1970-01-01 10:10:55',	'Laki-laki     ',	'IPA     ',	'2019',	'Wirausaha          ',	' Jl. Gatot Subroto No. 901        ',	'6eEeXE',	'2023-08-14 02:28:18',	'2023-08-14 02:28:18'),
(20,	' Novi Anggraini     ',	321098,	'6283210987654',	'1970-01-01 10:00:32',	'Perempuan     ',	'IPA     ',	'2018',	'Bekerja            ',	' Jl. Gajah Mada No. 678           ',	'6eEeXE',	'2023-08-14 02:28:18',	'2023-08-14 02:28:18'),
(21,	' Arya Nugraha       ',	738289,	'6282109876543',	'1970-01-01 10:07:33',	'Laki-laki     ',	'IPA     ',	'2019',	'Kuliah             ',	' Jl. Tambak Boyo No. 08           ',	'6eEeXE',	'2023-08-14 02:28:18',	'2023-08-14 02:28:18'),
(22,	' Eka Putri          ',	98765,	'6280987654762',	'1970-01-01 10:12:02',	'Perempuan     ',	'IPS     ',	'2017',	'Bekerja            ',	' Jl. Merdeka No. 567              ',	'6eEeXE',	'2023-08-14 02:28:18',	'2023-08-14 02:28:18'),
(27,	'Siswa Uji Coba 1',	98574,	'089609499766',	'2023-08-24 00:00:00',	'Laki-laki',	'IPS',	'2017',	'Pendidikan Profesi',	'JL. KJnkjanskjnkajs',	'6eEeXE',	'2023-08-14 23:58:11',	'2023-08-14 23:58:11');

DROP TABLE IF EXISTS `apply_jobs`;
CREATE TABLE `apply_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nis` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `apply_jobs` (`id`, `nis`, `job_id`, `status`, `created_at`, `updated_at`) VALUES
(3,	123456,	1,	'Disetujui',	'2023-08-14 04:46:38',	'2023-08-14 04:46:47'),
(4,	98574,	1,	'Disetujui',	'2023-08-14 23:58:51',	'2023-08-14 23:59:15');

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `informations`;
CREATE TABLE `informations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tanggal` date NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_perusahaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lokasi_perusahaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `jobs` (`id`, `judul`, `nama_perusahaan`, `lokasi_perusahaan`, `deskripsi`, `image`, `created_at`, `updated_at`) VALUES
(1,	'Graphic Designer',	'PT. Afresto System Indonesia',	'Semarang, Indonesia',	'lsdlmcksmclsdmkcmsldkmclkdsmclkmsdlkcmlsdkmclkdsmclkdmslckdsc',	'1692074208.jpg',	'2023-07-27 04:54:53',	'2023-08-14 21:36:48');

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(45,	'2014_10_12_100000_create_password_reset_tokens_table',	1),
(46,	'2019_08_19_000000_create_failed_jobs_table',	1),
(47,	'2019_12_14_000001_create_personal_access_tokens_table',	1),
(48,	'2023_05_23_182038_create_admins_table',	1),
(50,	'2023_05_28_095710_create_informations_table',	1),
(52,	'2023_06_14_065520_create_pengumuman_table',	1),
(53,	'2014_10_12_000000_create_users_table',	2),
(56,	'2023_05_28_095710_create_pengumumans_table',	3),
(57,	'2023_05_28_100341_create_jobs_table',	4),
(66,	'2023_05_27_105147_create_alumnis_table',	5),
(68,	'2023_08_07_153658_create_apply_jobs_table',	6);

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `pengumumans`;
CREATE TABLE `pengumumans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tanggal` date NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `pengumumans` (`id`, `tanggal`, `judul`, `deskripsi`, `image`, `created_at`, `updated_at`) VALUES
(1,	'2023-07-19',	'Pengumuman umum',	'Deskripsi pengumuman',	'1690456981.jpg',	'2023-07-26 10:15:26',	'2023-07-27 04:23:01'),
(3,	'2023-07-12',	'fdfd',	'Ada pengumuman',	'1690456115.jpg',	'2023-07-27 04:05:16',	'2023-08-14 22:16:52'),
(4,	'2023-08-16',	'knkjanjkaj',	'ajknakjnaa',	NULL,	'2023-08-14 02:46:05',	'2023-08-14 02:46:05');

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'alumni',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `name`, `email`, `role`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2,	'test',	'test@gmail.com',	'alumni',	'$2y$10$tJVFsj1SkfcmKsCwwfD6BeD/TdyksrqTz0MjyPqojmgSbUiuFitjC',	NULL,	'2023-07-23 23:05:21',	'2023-07-23 23:05:21'),
(3,	'admin',	'admin@gmail.com',	'admin',	'$2y$10$zeaLHDu6tRsKijhYlSVLSOHWlt1bPbcNfVMTb9j/2cX39diRLJ6gy',	NULL,	'2023-07-23 23:20:25',	'2023-07-23 23:20:25'),
(4,	' Budi Santoso       ',	'123456',	'alumni',	'$2y$10$4vxj11gjw39j7VNk53hXdeHLqVhTTaz/EMa5m6jen0MnAhdPdx3YG',	NULL,	'2023-08-14 02:28:16',	'2023-08-14 02:28:16'),
(5,	' Dewi Indah         ',	'234567',	'alumni',	'$2y$10$xhXaRLHwjpNXdNMy0ERiZu1bIsdGTI1TY2UEoGUT6mzZC21R3D95.',	NULL,	'2023-08-14 02:28:16',	'2023-08-14 02:28:16'),
(6,	' Imam Prasetyo      ',	'345678',	'alumni',	'$2y$10$bbHICPdXdOuT6s2sKkWup.g2/mjPRsR1XE3H4yqHkOwZ9TMsLde.y',	NULL,	'2023-08-14 02:28:16',	'2023-08-14 02:28:16'),
(7,	' Sari Wulandari     ',	'456789',	'alumni',	'$2y$10$tBZWPqNP3zpZmX5vqbPg5.Wx01ZHXfiD2rQTwRzAnOKbTn/4OSBXm',	NULL,	'2023-08-14 02:28:16',	'2023-08-14 02:28:16'),
(8,	' Joko Supriyanto    ',	'567890',	'alumni',	'$2y$10$rQ8G8KUpheboDMWEHTjY2eAaacVz5j.NWnMl.kERaLZGDlR8XjFZu',	NULL,	'2023-08-14 02:28:17',	'2023-08-14 02:28:17'),
(9,	' Rina Sari          ',	'678901',	'alumni',	'$2y$10$hg4zf79AExtTiYuYzYJPp.jC7Tgh0W5/Hpb.W7pvHztBGfsMNfHuK',	NULL,	'2023-08-14 02:28:17',	'2023-08-14 02:28:17'),
(10,	' Bayu Nugroho       ',	'789012',	'alumni',	'$2y$10$BjPl4qC3VyuwosDjyWh8wu3nLoBzabAVwFSRLvFzvD01Mz59IoUNW',	NULL,	'2023-08-14 02:28:17',	'2023-08-14 02:28:17'),
(11,	' Tika Wardhani      ',	'890123',	'alumni',	'$2y$10$36vqoZMzXU09Y.m/bu8QH.0oqwkfwidH07Pp5Yk65./69.Jd2MR.6',	NULL,	'2023-08-14 02:28:17',	'2023-08-14 02:28:17'),
(12,	' Rizky Pratama      ',	'901234',	'alumni',	'$2y$10$4bDT1JffpUFuq5uMtHrFWeryF5F76V39ptVcEBRuuucI9AfYfk45i',	NULL,	'2023-08-14 02:28:17',	'2023-08-14 02:28:17'),
(13,	' Mega Pratiwi       ',	'210987',	'alumni',	'$2y$10$l5I191FeWGIHPyqPw0jVOOyMkPwVQUsUve9rAiV4r9nXt1Ro.u6WG',	NULL,	'2023-08-14 02:28:17',	'2023-08-14 02:28:17'),
(14,	' Anton Susanto      ',	'109876',	'alumni',	'$2y$10$5bsbM4Dnq80usTVKKeDtbu7PNo4xV1FQ.umefIaOjGcVqfHYTKEyq',	NULL,	'2023-08-14 02:28:17',	'2023-08-14 02:28:17'),
(15,	' Ani Suyanti        ',	'987654',	'alumni',	'$2y$10$pwAjjr9SxplCEJQRV0J6BOH9CiiQqPhtGeViZM8ro.nPYOxDP/Ka6',	NULL,	'2023-08-14 02:28:17',	'2023-08-14 02:28:17'),
(16,	' Adi Sutomo         ',	'876543',	'alumni',	'$2y$10$gyHF/FOEg0veEU5sK39EHede18N1W6kNcVr13oU3Z7RqU0CsKyjvG',	NULL,	'2023-08-14 02:28:17',	'2023-08-14 02:28:17'),
(17,	' Nia Suryani        ',	'765432',	'alumni',	'$2y$10$XW7y.SR0biKvMMJIiVO8nOqWrqAD03oqx1dVkP1xPnLMF//rMDt2S',	NULL,	'2023-08-14 02:28:17',	'2023-08-14 02:28:17'),
(18,	' Wahyu Prabowo      ',	'654321',	'alumni',	'$2y$10$ld/o55fNk/grYxt.y1hQDe0ONPIXR0uO6X2mpxuRntAeVCoGbfbRu',	NULL,	'2023-08-14 02:28:17',	'2023-08-14 02:28:17'),
(19,	' Yuni Astuti        ',	'543210',	'alumni',	'$2y$10$8WWGXtY6aYUtRkdl74vMnO8GETDuf1wn2KHTDybo53CVsT2EZ6pBi',	NULL,	'2023-08-14 02:28:18',	'2023-08-14 02:28:18'),
(20,	' Satrio Adi         ',	'432109',	'alumni',	'$2y$10$/v3B8/PJ6zTjeOHQJhza/.x1m1F7KtdjIzLp5o7WC4kEOUx7LkNJW',	NULL,	'2023-08-14 02:28:18',	'2023-08-14 02:28:18'),
(21,	' Novi Anggraini     ',	'321098',	'alumni',	'$2y$10$8VIIej3sCRPE0gamcuiLEeiuBYfoq8QaCfNCOj/KkaK6IPlJkgcUG',	NULL,	'2023-08-14 02:28:18',	'2023-08-14 02:28:18'),
(22,	' Arya Nugraha       ',	'738289',	'alumni',	'$2y$10$LZB1AvcjX.zx1ijv8uYoLO1fDqTD2Oh7hNuKiRNtHoV6rGModOEie',	NULL,	'2023-08-14 02:28:18',	'2023-08-14 02:28:18'),
(23,	' Eka Putri          ',	'98765',	'alumni',	'$2y$10$FXC4MhXhKNODZ6rTW/0n7ukvLElXpFyvaOT7N/gJp0OziQgOfh7QW',	NULL,	'2023-08-14 02:28:18',	'2023-08-14 02:28:18'),
(25,	'Siswa Uji Coba 1',	'98574',	'alumni',	'$2y$10$yGkVSqHrFjvUiCeZGyi0tuYVpomb4Y3OuqX502A4YrerOtvTIBZB2',	NULL,	'2023-08-14 23:58:12',	'2023-08-14 23:58:12');

-- 2023-08-15 08:05:19
