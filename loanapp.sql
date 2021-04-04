-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2021 at 08:06 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loanapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idno` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `county` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idnumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idno` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `town` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `need` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `idno` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`idno`, `password`) VALUES
('Kamau@asdf.asdG', '12345678'),
('Kamau@asdf.asdG', '12345678'),
('Kamau@asdf.asdG', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '2021_03_25_103734_create_loan', 1),
(5, '2021_03_25_153748_create_details', 2),
(8, '2021_03_25_210839_create_login', 5),
(28, '2014_10_12_000000_create_users_table', 6),
(29, '2014_10_12_100000_create_password_resets_table', 6),
(30, '2014_10_12_200000_add_two_factor_columns_to_users_table', 6),
(31, '2019_08_19_000000_create_failed_jobs_table', 6),
(32, '2019_12_14_000001_create_personal_access_tokens_table', 6),
(33, '2021_03_25_160456_create_details', 6),
(34, '2021_03_25_172157_create_loan', 6),
(35, '2021_03_25_213455_create_signup', 6),
(36, '2021_03_26_055046_create_login', 6),
(37, '2021_03_30_131502_create_sessions_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('2jONq8tJJPPFWSNNHAYOVSycJTV3Y19tr9waZpOj', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicnd6TGpxckdrdmNyWkVxY0NENHRlTDVqSk1tbVVFaDJEcHMxekZlYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1617403801),
('2OYty0NIS108acGAJelO2EYWDOTpKiZ9RBS6vzyi', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZkViRGVENlhBWEZjWXJVUTdSb09oTE02aDJOaDdDOGNac3drbWlQQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1617401629),
('3IPndJlIQamHPAmXmjuh66rWxD4XIstQtba0Y9jw', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZEVYS21odDhkUzJNb2h0akY2Qko4U0FmQzZVMVlObWpYblQ0ZDJHWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1617438346),
('4rLbHSo7MpizCfrfNzlEUQMcuZkMfbuYeJESDzk6', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibnUwRzZUWGFpTFJ5elBrUWN0WFpBSGdhS0VOcGJWeXZiSlhEa1g4RyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1617437527),
('53tumAqO5VDXs03TjFK7ebUR4RuumOSCRwifDN6k', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidkROUmpVdGlxUTZXNW95OTdUd3loUXdmcjM2Y0NMeW9mYXRIY2I4OCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1617406081),
('6hlUWTlke8PkKzL43GtDiprJSPQgqz2Tpyfszq6G', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicnRjbktsTmk5UDY4V2plazNrSENFR1lUdXY2eWVZV0xCeEJBdFM3eiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1617404182),
('7LC0x2TBWI4aZ3j9kjpGjUSkm1PAogdISajPySPa', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSEU5b0JGNnF4UGN3dndjMTZ3NnYyUWtWbGZNTERxUDZ6ekJpMjNxRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1617437627),
('7MITeQaOc0bqswaXyI0GqSxtNGhKguRe9PtBlKED', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNjBXeE5ONnpmUHVZVFNSNFFicUp4cXV6NlRkNDFTS0dGQXhTdEJMZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1617402262),
('7nUlASt0my0bPAjOdgpyM01lq6tx2lE5WGtBo978', 4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiQnlYR0Ria1RZRG90UjJYWlBIb3ZRU2ZPdDR3aGtaVHVFR3VVN3QweiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NDtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJDEyNVpiRHlZYnhzM1VNWnBsVGVIRy44SnpmZ1FXY1hWOU1HZ0dIZjBhTXU4SnFyVGRPeExtIjt9', 1617443979),
('9zPTBaFRw43o79jymSSh4Q0LzCI4zrWs9GTdOfXs', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNWlCU1gzV1g5UmRScWVENmxCY3JITUN3dWk3YW1xTmN3VE92OTY5aSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1617402383),
('Bjbjrc44q32ah3CJ7oYkvjPdhJfTMcuLLtarowA9', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTmprYnZFeUtCOVo2ZUJhQnp6dno1TllobVNWN2dSYm5BcnhENHkyZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1617437565),
('BL0lPXBu9fQqIo0y2NeC0WdMAoF5jW1Eq7tP3KUo', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQWVPY3FIc3ZDSXlkdzZaUGNGcEU5RzJHYUoyRG1rVWlMd3BoTHFocyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1617479719),
('bllvtekP9hVzshu9TEVT7sm6aKToiJn395LrcLcD', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQmVEbWlCME5vbTFPd29ZSzk0RkNkb2hVM2o5ZmRyc1ZsVVRGc0trOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1617438315),
('BsC3tNosoeo4BGbbRWsrlDJBKlo5ljC38K9Foo8S', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSlhZY09zY0VrSFJBQkNhZW11ZVlHNlFFanExMGx1Uko0Mm1IUVlKUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1617402784),
('C7AcXufp7lx9oNYU51yeyjJZSSvku01ztwUXQQJv', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieGxOT0ZJeU9OOUtMN3I2R1kwRURBMlR1aHhGU1RYWGFhbHVES0pjRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1617437176),
('DxRCqvzNBI9WAHABK1uiXYQouhsJjUqtLghQcrbI', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUTRxbmJTdzNRRGR0cU5EZjZmRktxQkdsenZWRlRZTlJuczF3eXRIVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1617401741),
('Efpu0YclvdkOiFeE3vLuTYMHCesvlLgbdIY8PUw6', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic0lkTVBIR1Rjb3pMNTJJWk1yWTJxcmFlS0N2dVJ3cHpWdURRVW9GSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1617406117),
('f1Lydfl6TRaqo28etA7KcObkVDtc6VBCToV1droz', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN3lCdWVSblJZNmhBVW1KVmVCSUhPYTRpNFFyVDJaWEFFOU1WVmxWOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1617402839),
('fbaJgXT7sbwKYpWC995o2fPYign5GeHtQU4qPmsf', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVVhRR3ZaaHdUQTB5cFpOYVlzdkQ1U09ZT2JNcnJ5b0VTdkNETWloNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1617400897),
('ffySCZdp45E0HEysHd5yvbgptIjSEKqgtgQOsekm', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNFB4R3BheEhaYmRCdExJdkNjSExwWXhqVWxnUDkxTXpuYnFqaFZZRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1617437651),
('FTxcH5IQPo0GIr0SAjhz6E1T5Oeq85v7usn18HyS', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMEpRWklTZmd5M2xqQ2N2QWRhMHA5ZmlsYjByQ21GeGZsamhhdUFZWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1617403025),
('GtXxyKb75yhhImIzwl4BfXTsN1TDSpse8hPO8Aap', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQXBUM1pYNHJIdXU0Y215bEFIRDExd2tySGpEdXlkM3lrUGN2ZGNUNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1617406100),
('LS941QuL9OZjBPQ5VMuYUrDUrL2u3ckLZBq26gkL', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiendqb1pMaUJIa1dSbmo2bDB4VHlzRVo3RHVqSlRWQ1VGUVBFTXNQayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1617403786),
('Muu73WuBVriJANfTj5wmkJuSRewKRWVKx4QygL4I', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic0lhSGJMS1JwdmVlRkhKazF0b0o2VUF3OUdvQjNieWRrTk9qeVpMWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1617440082),
('nc9LQIWAIaa27Fi5D2BkuM8WA2ozVB51csEbj34O', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ0hQTzQzdVNuNWpTWGpCeVRXMjVWYnM1cnFiZUM5clBRR3ZTTmxiNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1617403014),
('nQDtxkQgnoHPR9balNQ3kgNlr7rcqDa5wxFQN6Q5', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTUdrNGlVMWJGSFRzWGZ2bTJDSnF4UzIyM1hEVFZONVFXbGgzVjI5aiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1617404481),
('O27HYmJIErpOVdRpA5JNOzGbU5jjVSXZxiF5AcOS', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWFJkOERseDVVOTIwbm9xelQ0ZWVFUGNBRnpVanA0TVVyZXRMM1d3eSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1617401706),
('OuW0Ip1hd4z9OPQd50p25Gf9k61eyUDALXiEX7Ma', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiam1US1JzMWVWeHo0U3Uza21BVFNxMmZyMlJkdW5wMFdSNjk3NjBKRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1617437545),
('Oxb9jn9tydzIwb29KLWnPoH2nPbkT9G7VxUto6dx', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiamRQb0NIdzZHOXNVTktaa1VlTTFjTnJoRm0zWldsdzdhVFF5UjB6USI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1617402410),
('QYTuNrovyprirXh9zlGyBNcPSq5s5nAhje1qIwzS', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ1NTVk9tcHRUZGVYYVFHT2pPakVlSm9kUGl3T3F4akIwYjlYazgyVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1617402059),
('S8kkg9V4JiUHzjKltnHKGWaOPBlZy7bX7y1JNbvC', 4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiZnZQM3FCQ1RiVmUyRU9kNUtGcm84T1h5U0RxcDV1SmdDSklNMDdTRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC90YWJzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NDtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJDEyNVpiRHlZYnhzM1VNWnBsVGVIRy44SnpmZ1FXY1hWOU1HZ0dIZjBhTXU4SnFyVGRPeExtIjt9', 1617406297),
('sErcrIBJIt49A43DQscfEUdIQsl0yBzNLsz9zEth', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM2FIendMVWVsTzJPcXhRZTkxT2pSRkVpTDYxbm1GdzFFQmRSc2thSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1617405811),
('SVBe7norFWWBSinc5PT7tBs1FDvtDK1i6C0RtQ25', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYXZGdEVRcHVDdERpbU83VGRnSVJLUHhzZ3A1WFJlMTI3VERURDUyTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1617403423),
('TSmWTqRFYymxAdOUpDF8he1s7tUNRq2QtroMgFWB', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNlhvYWpZTk4yak5XR3UwVHR4Vm5aY0ZsU3Blc1FDbjFjUVBiZDZEMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1617437659),
('tSRV2OvesYGhjKrsohXl6UJ7bJtOdpeOwnRRcygU', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUWxFRkxEWVppZmF1V2N0NEZRajM4dFBveWJkSFE0d3lPbW1taDFGViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1617405171),
('UtOM2gcIX2CAbUaY0ExWUdyU902iD40pFSsbF7HD', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicERvckJ0cWVtRWNoVFh3bHZNejFXV0JuQ3ZVZjRDN0c5Uk15bloweiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1617404540),
('UuCwRieeZYKAb0IcEXNiSsJSoLMBoZYOJN6Mulo9', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQUREbG9CaXFsRVpRY2tqRnhhYXluS3VmbWY3WmVSN1Z2dzdkWXdaMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1617405744),
('vMrIVdvCtl7UMatAAPFbHpcE6LoJicWF4HKUrX7K', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaFhheGc3Szk4UWZUTDJCSk9mMTQ5ZEcybnJMblRqRXpxVzRwczE1SSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1617438328),
('W1Psg09fGHjbqTWCpmb2FyiJfKUfIghjv1ET0m7J', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiemxwNWhrbnh2bGFrZW81ckdWY0pTeVBpbVhsNlRKZTJQMEhyQTRPRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1617402292),
('wBvOTko0KTNKieJ3JMPOWWlgumWl7J12sFQoYb98', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZW1wdTVreVpkRmdydFRURlhnNEhKUGU1SE9SampxVUZIS05rQmhDdyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzIjt9fQ==', 1617470421),
('xid71ITX6GjoXazA3d8gOEVGsqDrpfw4O4AgCYqw', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV2VPYk5FbnBsSEplSzdPa2hoaVVxVVJheDUwc3czRE9oVjMwZkxlOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1617437876),
('xp6vLyNWKJR9fmqTzuslFh3nnm0jYvulXLMasoho', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ0RGbm1QaG9MQzJaWGRrU0lOaWtaMU95NUl3SGZuQW5uMGRxVEZ2bCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1617440054),
('ygrtM9q0kQa45QAhT9C7pjHpSJOT14b8n0v3eVTm', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieGtvZ0NoNmc3OFdzWXkyeGRudE9ySXI4Ym84WVEyUjc5UXRXV21GdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1617405253),
('YSnZbQdxsyGhzOkvYWA3QsSdavjKGM3I9g6LPFqS', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQkM2b0tpMHo4NDZwUGEzbFhMWk84eHFNRlc0RWdaRjhPNThRVUQ5byI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1617437951),
('yxf5zetMWesO0eU6APdRh0UR4QlczylPAo6bXx5v', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibFVjZmpqVlhVUmJ6S01FSzZwTWNpdmNwRlE2dE9ORktiU1Y5enFaWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1617403064),
('zdWFvFnm7Q7ncrSptRaCwR2CcmXRL9jORDKmvfQ5', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTXBaZUlJTWNOY2JmcWlOSlNwbHkxM1QxMEZibXZnbTNLRlhtN3dLQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1617437965),
('ZsqmB68S80o9PNYQDUfngVsv9pPfx6RMyhu6Ypiz', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR0VrRDB0UVo4ODVwZkZBQkwyWE15NDAxSE9Pd08yRnMxTjY4VUZ2RCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1617402427);

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idno` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ADM' COMMENT 'ADM for Admin and USR for user',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `utype`, `created_at`, `updated_at`) VALUES
(1, 'ADMIN', 'Kamau@asdf.asdf', NULL, '$2y$10$X97tcD2wedFSOJ0wQLSKYOQVWcpqjVWaBNky1MTBbIb53jRSJDYbO', NULL, NULL, NULL, NULL, NULL, 'ADM', '2021-03-30 10:52:52', '2021-03-30 10:52:52'),
(2, 'ADMIN', 'Kamau@asdf.asdG', NULL, '$2y$10$o9R2aLb/t4owsjfeyWB2UOLJOqusadFzAVcf.WxfUPn8waCwJUtmK', NULL, NULL, NULL, NULL, NULL, 'USR', '2021-03-30 11:08:07', '2021-03-30 13:31:48'),
(3, 'Martin Ndegwa', 'martmnsh@gmail.com', NULL, '$2y$10$HdcZQu2KTv/z5IYdkN.li.Iqd7XyOH8pOPCbivlo.HwMOyiqOq49O', NULL, NULL, NULL, NULL, NULL, 'ADM', '2021-03-30 13:54:25', '2021-03-30 14:01:34'),
(4, 'ADMIN', 'admin@gmail.com', NULL, '$2y$10$125ZbDyYbxs3UMZplTeHG.8JzfgQWcXV9MGgGHf0aMu8JqrTdOxLm', NULL, NULL, 'Q9wdBtIw7W3TutmOF5PZ0Xqw8SHtjufe0VBGKzjeGsIQppNYagMv4DJYGj2r', NULL, NULL, 'ADM', '2021-03-31 05:27:05', '2021-03-31 05:27:05'),
(5, 'atieno', '0701550531@dsf.dfs', NULL, '$2y$10$fJ/3CIsiYO1KWNK9QtzWke2qhE1m0BsvJc/NN5f7.K0i6rkuhv/AO', NULL, NULL, NULL, NULL, NULL, 'ADM', '2021-04-01 04:23:50', '2021-04-01 04:23:50'),
(6, 'Martin Munene', 'mart123@gmail.com', NULL, '$2y$10$JWC9sy0nATuWiuwzhTGW0OLZBCrqki6xqKtHiox9bHqoXPm1cM5Ni', NULL, NULL, NULL, NULL, NULL, 'ADM', '2021-04-01 05:06:53', '2021-04-01 05:06:53');

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
