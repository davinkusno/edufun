-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 19, 2024 at 04:03 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edufun`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `writer_id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `published_at` date NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `views` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `category_id`, `writer_id`, `content`, `published_at`, `image_path`, `views`, `created_at`, `updated_at`) VALUES
(1, 'The Future of Artificial Intelligence', 1, 4, 'Nobis laboriosam error dolorem placeat. Labore non dignissimos velit repellat dolor est officia.\n\nEt necessitatibus minima in voluptas eum numquam voluptas. Beatae eius facilis explicabo illum odit minima. Ducimus optio aut qui fuga at.\n\nNihil laboriosam laudantium iure sed. Et omnis incidunt sit deleniti quas nulla dolorem excepturi. Unde omnis deleniti non assumenda dignissimos.', '2024-11-13', '/images/datascience/1.jpg', 4, '2024-11-19 07:55:24', '2024-11-19 07:55:24'),
(2, 'Machine Learning in Healthcare', 1, 2, 'Consequuntur voluptates dolor occaecati nulla non quia. Labore fuga rerum quia consectetur corporis cum. Quis qui inventore mollitia possimus.\n\nReprehenderit enim rerum magni voluptatum esse culpa eum. Rerum est nihil enim iste animi qui magnam. Et qui harum soluta corporis. Quos voluptatibus nihil perferendis qui.\n\nMagni ut est ab quibusdam. Unde et quasi et blanditiis quam occaecati voluptas. Ea voluptas odit deserunt dolorem dolor aut odio. Sint sit nobis aut nostrum distinctio iste fugiat.', '2024-07-16', '/images/datascience/2.jpg', 7, '2024-11-19 07:55:24', '2024-11-19 07:55:24'),
(3, 'Big Data Analytics for Businesses', 1, 10, 'Ducimus voluptas repellendus omnis totam blanditiis facere. Assumenda libero laudantium perspiciatis amet doloremque.\n\nVoluptatibus libero voluptas et inventore ipsum. Eaque quas omnis illum facere sit ut aspernatur. Minima esse aliquid qui fugiat earum.\n\nAb voluptas dolorem deleniti. Quis fugit id quia aut quaerat sunt. Dolores quia repellendus delectus aut delectus ea facere. Aliquam aliquid officia assumenda nihil mollitia voluptate.', '2024-04-13', '/images/datascience/3.jpg', 4, '2024-11-19 07:55:24', '2024-11-19 07:55:24'),
(4, 'Deep Learning Breakthroughs', 1, 4, 'Cupiditate optio officia commodi molestiae non reiciendis pariatur. Error quia qui ut id explicabo provident qui unde. Ipsa sed debitis amet autem vero veritatis explicabo eum.\n\nAnimi explicabo aut vero nihil. Vel error reprehenderit placeat dignissimos delectus voluptate aut. Quas facere consequatur et est incidunt praesentium voluptas. Molestiae rerum neque eum et omnis quod.\n\nCorporis et quam aut optio nihil doloribus. Explicabo aut nobis aut ullam ut placeat et. Minus corporis neque sunt. Corporis sit recusandae consequatur vel ut omnis est cumque.', '2024-05-02', '/images/datascience/4.jpg', 1, '2024-11-19 07:55:24', '2024-11-19 07:55:24'),
(5, 'The Role of Data in Decision Making', 1, 6, 'Sed vitae et ut. Qui ut animi porro sint. Molestiae consequatur atque laboriosam impedit at rerum omnis.\n\nAspernatur mollitia sed nihil consequatur rem corrupti dolores quis. Ipsa quae laborum repellat quia natus. Voluptatibus fugit nesciunt sunt sit fugit.\n\nAdipisci quibusdam earum laboriosam rerum atque est. Accusamus et laborum itaque sint numquam.', '2024-02-27', '/images/datascience/5.jpg', 2, '2024-11-19 07:55:24', '2024-11-19 07:55:24'),
(6, 'Cybersecurity Trends in 2024', 2, 3, 'Qui et numquam vel. Corrupti quo sequi nisi neque. Consequuntur voluptas omnis et similique. Harum dolor quas at.\n\nEst fugit autem facilis iste qui illum officia possimus. Quaerat rerum quas distinctio. Vero pariatur ut sit fugit possimus. Nobis voluptas et quia qui perspiciatis. Libero tempore qui nisi ab et illo.\n\nExplicabo in laudantium et a. Aliquam ex alias nam neque blanditiis magni. Aut mollitia incidunt quas iusto.', '2024-03-06', '/images/networksecurity/1.jpg', 3, '2024-11-19 07:55:24', '2024-11-19 07:55:24'),
(7, 'The Importance of Firewalls', 2, 6, 'Quasi corrupti dolorem voluptas enim magnam adipisci. Qui sed atque rerum dolorem similique ullam. Dicta iure esse voluptas ut vel omnis.\n\nQui omnis minus et facilis et. Iusto harum ut culpa hic. Nobis ratione quia quia voluptatum. Cumque quod commodi mollitia iusto dolor odit.\n\nConsequuntur perferendis expedita eligendi ea impedit suscipit. Ut culpa non incidunt occaecati et rerum necessitatibus. Dolor cupiditate aut exercitationem esse.', '2024-09-27', '/images/networksecurity/2.jpg', 3, '2024-11-19 07:55:24', '2024-11-19 07:55:24'),
(8, 'Penetration Testing Best Practices', 2, 4, 'Sapiente sed quia in non. Quod veniam aut est omnis tempora nulla id mollitia. Porro cupiditate est velit est repellendus et ut labore. Commodi beatae ducimus ut fugiat fugiat sit.\n\nAt libero expedita soluta doloremque. Ut vero sed atque ratione sint ipsam animi. Qui reprehenderit voluptatum quis libero reiciendis placeat ab error.\n\nRem ad ut mollitia amet id aliquam quasi. Illum voluptatem velit suscipit inventore debitis. Perferendis praesentium voluptas corporis hic eius voluptate. Et doloremque qui quia voluptate. Et eos rerum debitis quia.', '2024-03-12', '/images/networksecurity/3.jpg', 10, '2024-11-19 07:55:24', '2024-11-19 07:55:24'),
(9, 'Network Security for Small Businesses', 2, 7, 'Ut explicabo repudiandae laudantium aliquam atque facilis odio. Ipsum vel doloribus perspiciatis eveniet et et non. Necessitatibus et praesentium voluptatem soluta quibusdam voluptatum.\n\nVelit facilis nihil tenetur eaque blanditiis quis enim. Accusamus hic totam aliquam consequatur.\n\nRerum enim et a earum est. Fugit voluptas consequatur voluptas ipsum ut ea. Officiis consequuntur suscipit dicta perspiciatis alias sit blanditiis facilis. Hic vero magni harum.', '2024-09-27', '/images/networksecurity/4.jpg', 3, '2024-11-19 07:55:24', '2024-11-19 07:55:24'),
(10, 'The Evolution of Malware Defense', 2, 1, 'Debitis enim asperiores aut. Non incidunt voluptatem sit eum odit necessitatibus. Voluptatem facere qui enim maiores veniam ut. Voluptate ut enim quasi tempora ipsa tempore eum.\n\nQuam aut ullam reiciendis ratione. Vero molestiae rerum qui nemo eos cumque. Odit distinctio facilis provident ad consequuntur consequatur consequatur.\n\nNecessitatibus eum consequatur laboriosam iste iure. Quis et sint deserunt quis. Quo a vel ipsam incidunt voluptas.', '2024-01-25', '/images/networksecurity/5.jpg', 5, '2024-11-19 07:55:24', '2024-11-19 07:55:24');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Data Science', '2024-11-19 07:55:24', '2024-11-19 07:55:24'),
(2, 'Network Security', '2024-11-19 07:55:24', '2024-11-19 07:55:24');

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_11_07_154610_create_writers_table', 1),
(5, '2024_11_15_083842_create_categories_table', 1),
(6, '2024_11_15_083910_create_articles_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('ueOKzDwsLZW9b5Pz68l0kbNjWEbMMH9UZQCG1Xm8', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMXBiOWlYdUM2Y1NxOWxCVTRTelBMMzNLNTB5WG5ocHY5S2VEZ3dkQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS9kYXRhLXNjaWVuY2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1732028235);

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
-- Table structure for table `writers`
--

CREATE TABLE `writers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `specialty` varchar(255) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `writers`
--

INSERT INTO `writers` (`id`, `name`, `specialty`, `image_path`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Neha Gerlach', 'Financial Analyst', '/images/writers/1.jpg', '2024-11-19 07:55:24', '2024-11-19 07:55:24'),
(2, 'Porter Hansen', 'Computer', '/images/writers/2.jpg', '2024-11-19 07:55:24', '2024-11-19 07:55:24'),
(3, 'Kali Borer', 'Petroleum Engineer', '/images/writers/3.jpg', '2024-11-19 07:55:24', '2024-11-19 07:55:24'),
(4, 'Gardner Paucek', 'Drywall Installer', '/images/writers/4.jpg', '2024-11-19 07:55:24', '2024-11-19 07:55:24'),
(5, 'Ms. Dulce Gleichner', 'Industrial Engineering Technician', '/images/writers/5.jpg', '2024-11-19 07:55:24', '2024-11-19 07:55:24'),
(6, 'Ms. Savanah Wunsch DVM', 'Anthropology Teacher', '/images/writers/6.jpg', '2024-11-19 07:55:24', '2024-11-19 07:55:24'),
(7, 'Pasquale Swift', 'Account Manager', '/images/writers/7.jpg', '2024-11-19 07:55:24', '2024-11-19 07:55:24'),
(8, 'August Welch', 'Medical Records Technician', '/images/writers/8.jpg', '2024-11-19 07:55:24', '2024-11-19 07:55:24'),
(9, 'Vivienne Blick', 'Motor Vehicle Operator', '/images/writers/9.jpg', '2024-11-19 07:55:24', '2024-11-19 07:55:24'),
(10, 'Lucie Carroll I', 'Trainer', '/images/writers/10.jpg', '2024-11-19 07:55:24', '2024-11-19 07:55:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_category_id_foreign` (`category_id`),
  ADD KEY `articles_writer_id_foreign` (`writer_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
-- Indexes for table `writers`
--
ALTER TABLE `writers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `writers`
--
ALTER TABLE `writers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `articles_writer_id_foreign` FOREIGN KEY (`writer_id`) REFERENCES `writers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
