-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versi server:                 8.0.30 - MySQL Community Server - GPL
-- OS Server:                    Win64
-- HeidiSQL Versi:               12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- membuang struktur untuk table appbantuan.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel appbantuan.failed_jobs: ~0 rows (lebih kurang)

-- membuang struktur untuk table appbantuan.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel appbantuan.migrations: ~0 rows (lebih kurang)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2024_05_06_021634_create_penduduks_table', 1),
	(6, '2024_05_26_061033_create_sembakos_table', 1),
	(7, '2024_05_26_061421_view_sembako', 1),
	(8, '2024_05_26_120826_create_tunais_table', 1),
	(9, '2024_05_27_010217_view_tunai', 1),
	(10, '2024_05_27_020929_create_rumahs_table', 1),
	(11, '2024_05_27_021428_view_rumah', 1);

-- membuang struktur untuk table appbantuan.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel appbantuan.password_reset_tokens: ~0 rows (lebih kurang)

-- membuang struktur untuk table appbantuan.penduduks
CREATE TABLE IF NOT EXISTS `penduduks` (
  `nik_kk` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jeniskelamin_kk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgllahir_kk` date NOT NULL,
  `pendidikan_kk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pekerjaan_kk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penghasilan_kk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_kk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`nik_kk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel appbantuan.penduduks: ~0 rows (lebih kurang)
INSERT INTO `penduduks` (`nik_kk`, `nama_kk`, `jeniskelamin_kk`, `tgllahir_kk`, `pendidikan_kk`, `pekerjaan_kk`, `penghasilan_kk`, `alamat_kk`, `created_at`, `updated_at`) VALUES
	('630309807230004', 'fadhel', 'Laki-Laki', '2024-05-27', 'SMA', 'Operator', '15000000', 'Haruai', '2024-05-27 08:16:41', '2024-05-27 08:16:41');

-- membuang struktur untuk table appbantuan.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
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

-- Membuang data untuk tabel appbantuan.personal_access_tokens: ~0 rows (lebih kurang)

-- membuang struktur untuk table appbantuan.rumahs
CREATE TABLE IF NOT EXISTS `rumahs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nik_kk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_bantuan` date NOT NULL,
  `jumlah_dana` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel appbantuan.rumahs: ~0 rows (lebih kurang)
INSERT INTO `rumahs` (`id`, `nik_kk`, `tgl_bantuan`, `jumlah_dana`, `keterangan`, `created_at`, `updated_at`) VALUES
	(1, '630309807230004', '2024-05-28', '100', 'cash', '2024-05-27 17:23:51', '2024-05-27 17:23:51');

-- membuang struktur untuk table appbantuan.sembakos
CREATE TABLE IF NOT EXISTS `sembakos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nik_kk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_bantuan` date NOT NULL,
  `jenis_bantuan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel appbantuan.sembakos: ~0 rows (lebih kurang)
INSERT INTO `sembakos` (`id`, `nik_kk`, `tgl_bantuan`, `jenis_bantuan`, `keterangan`, `created_at`, `updated_at`) VALUES
	(1, '630309807230004', '2024-05-27', 'uang', '-', '2024-05-27 08:18:38', '2024-05-27 08:18:38');

-- membuang struktur untuk table appbantuan.tunais
CREATE TABLE IF NOT EXISTS `tunais` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nik_kk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_bantuan` date NOT NULL,
  `jumlah_dana` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel appbantuan.tunais: ~0 rows (lebih kurang)
INSERT INTO `tunais` (`id`, `nik_kk`, `tgl_bantuan`, `jumlah_dana`, `keterangan`, `created_at`, `updated_at`) VALUES
	(1, '630309807230004', '2024-05-27', '5000', 'cash', '2024-05-27 08:20:17', '2024-05-27 08:20:17');

-- membuang struktur untuk table appbantuan.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel appbantuan.users: ~0 rows (lebih kurang)

-- membuang struktur untuk view appbantuan.viewrumah
-- Membuat tabel sementara untuk menangani kesalahan ketergantungan VIEW
CREATE TABLE `viewrumah` (
	`id` BIGINT(20) UNSIGNED NOT NULL,
	`nik_kk` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`nama_kk` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`jeniskelamin_kk` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`pekerjaan_kk` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`penghasilan_kk` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`alamat_kk` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`tgl_bantuan` DATE NOT NULL,
	`jumlah_dana` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`keterangan` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`created_at` TIMESTAMP NULL,
	`updated_at` TIMESTAMP NULL
) ENGINE=MyISAM;

-- membuang struktur untuk view appbantuan.viewsembako
-- Membuat tabel sementara untuk menangani kesalahan ketergantungan VIEW
CREATE TABLE `viewsembako` (
	`id` BIGINT(20) UNSIGNED NOT NULL,
	`nik_kk` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`nama_kk` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`jeniskelamin_kk` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`pekerjaan_kk` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`penghasilan_kk` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`alamat_kk` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`tgl_bantuan` DATE NOT NULL,
	`jenis_bantuan` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`keterangan` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`created_at` TIMESTAMP NULL,
	`updated_at` TIMESTAMP NULL
) ENGINE=MyISAM;

-- membuang struktur untuk view appbantuan.viewtunai
-- Membuat tabel sementara untuk menangani kesalahan ketergantungan VIEW
CREATE TABLE `viewtunai` (
	`id` BIGINT(20) UNSIGNED NOT NULL,
	`nik_kk` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`nama_kk` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`jeniskelamin_kk` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`pekerjaan_kk` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`penghasilan_kk` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`alamat_kk` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`tgl_bantuan` DATE NOT NULL,
	`jumlah_dana` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`keterangan` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`created_at` TIMESTAMP NULL,
	`updated_at` TIMESTAMP NULL
) ENGINE=MyISAM;

-- membuang struktur untuk view appbantuan.viewrumah
-- Menghapus tabel sementara dan menciptakan struktur VIEW terakhir
DROP TABLE IF EXISTS `viewrumah`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `viewrumah` AS select distinct `rumahs`.`id` AS `id`,`rumahs`.`nik_kk` AS `nik_kk`,`penduduks`.`nama_kk` AS `nama_kk`,`penduduks`.`jeniskelamin_kk` AS `jeniskelamin_kk`,`penduduks`.`pekerjaan_kk` AS `pekerjaan_kk`,`penduduks`.`penghasilan_kk` AS `penghasilan_kk`,`penduduks`.`alamat_kk` AS `alamat_kk`,`rumahs`.`tgl_bantuan` AS `tgl_bantuan`,`rumahs`.`jumlah_dana` AS `jumlah_dana`,`rumahs`.`keterangan` AS `keterangan`,`rumahs`.`created_at` AS `created_at`,`rumahs`.`updated_at` AS `updated_at` from (`penduduks` join `rumahs` on((`penduduks`.`nik_kk` = `rumahs`.`nik_kk`)));

-- membuang struktur untuk view appbantuan.viewsembako
-- Menghapus tabel sementara dan menciptakan struktur VIEW terakhir
DROP TABLE IF EXISTS `viewsembako`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `viewsembako` AS select distinct `sembakos`.`id` AS `id`,`sembakos`.`nik_kk` AS `nik_kk`,`penduduks`.`nama_kk` AS `nama_kk`,`penduduks`.`jeniskelamin_kk` AS `jeniskelamin_kk`,`penduduks`.`pekerjaan_kk` AS `pekerjaan_kk`,`penduduks`.`penghasilan_kk` AS `penghasilan_kk`,`penduduks`.`alamat_kk` AS `alamat_kk`,`sembakos`.`tgl_bantuan` AS `tgl_bantuan`,`sembakos`.`jenis_bantuan` AS `jenis_bantuan`,`sembakos`.`keterangan` AS `keterangan`,`sembakos`.`created_at` AS `created_at`,`sembakos`.`updated_at` AS `updated_at` from (`penduduks` join `sembakos` on((`penduduks`.`nik_kk` = `sembakos`.`nik_kk`)));

-- membuang struktur untuk view appbantuan.viewtunai
-- Menghapus tabel sementara dan menciptakan struktur VIEW terakhir
DROP TABLE IF EXISTS `viewtunai`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `viewtunai` AS select distinct `tunais`.`id` AS `id`,`tunais`.`nik_kk` AS `nik_kk`,`penduduks`.`nama_kk` AS `nama_kk`,`penduduks`.`jeniskelamin_kk` AS `jeniskelamin_kk`,`penduduks`.`pekerjaan_kk` AS `pekerjaan_kk`,`penduduks`.`penghasilan_kk` AS `penghasilan_kk`,`penduduks`.`alamat_kk` AS `alamat_kk`,`tunais`.`tgl_bantuan` AS `tgl_bantuan`,`tunais`.`jumlah_dana` AS `jumlah_dana`,`tunais`.`keterangan` AS `keterangan`,`tunais`.`created_at` AS `created_at`,`tunais`.`updated_at` AS `updated_at` from (`penduduks` join `tunais` on((`penduduks`.`nik_kk` = `tunais`.`nik_kk`)));

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
