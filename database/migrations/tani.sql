-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2024 at 03:25 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tani`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` bigint(20) NOT NULL,
  `chosen` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(255) NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `receiver_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chat_messages`
--

CREATE TABLE `chat_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `chat_token` varchar(255) NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `primary` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `name`, `primary`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 1, NULL, NULL),
(2, 'User', 0, NULL, NULL);

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
(1, '2022_06_02_173615_create_levels_table', 1),
(2, '2022_06_02_173856_create_products_table', 1),
(3, '2022_06_02_174408_create_users_table', 1),
(4, '2022_06_02_174409_create_carts_table', 1),
(5, '2022_06_02_174409_create_user_address_table', 1),
(6, '2022_06_02_174819_create_transactions_table', 1),
(7, '2022_06_02_175214_create_transaction_details_table', 1),
(8, '2022_06_02_180027_create_chats_table', 1),
(9, '2022_06_02_180044_create_chat_messages_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` bigint(20) NOT NULL,
  `stock` bigint(20) NOT NULL,
  `weight` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `image`, `name`, `description`, `price`, `stock`, `weight`, `created_at`, `updated_at`) VALUES
(12, '/storage/product-image/1EYUhdvYp48SJVJtRcjMjSyEQXoHNYh1jOFAyi0y.jpg', 'Mesin Perontok Padi', 'Dengan mesin perontok padi kami, kerja anda menjadi lebih cepat dan efisien', 1500000, 99, '20kg', '2024-05-29 13:49:04', '2024-05-29 14:24:55'),
(13, '/storage/product-image/INZmc6P1JRa1w3k8SdTxEFOxgKMRDKPDheYfjTYU.jpg', 'Mesin Pemipil Jagung', 'Tanpa membuang waktu, gunakan mesin pemipil jagung kami', 985000, 68, '15kg', '2024-05-29 13:50:50', '2024-05-30 03:17:22'),
(14, '/storage/product-image/crSLk4kTHDik6arifZTUQAESKhIcQ7mtKFLVGLG4.jpg', 'Mesin Kupas Bawang', 'Tanpa satu satu, langsung seribu', 3000000, 42, '3kg', '2024-05-29 13:51:55', '2024-06-07 12:29:40'),
(15, '/storage/product-image/YJgZDMj0HJrwgXCHWwWCCXzpEJzoty8ACsqPZbGw.jpg', 'Mesin Cacah Ruumput Mini', 'Mencacah hingga ukuran terkecil', 1600000, 60, '7kg', '2024-05-29 13:53:09', '2024-05-29 13:53:09'),
(16, '/storage/product-image/0NPo8CcfNs0T6z7a5oxzlR7iczrorREfi7NM2P3X.png', 'Sprayer Elektrik', 'Alat Semprot Tanaman Pertanian', 380000, 50, '1kg', '2024-05-29 14:05:07', '2024-05-29 14:05:07'),
(17, '/storage/product-image/LFvpSpJikS2mmAJbp3gEo9mkK64rZLkg7cAyrdXJ.jpg', 'Benfuron', 'Obat pertanian pengendali Gulma', 16000, 100, '5gram', '2024-05-29 14:07:22', '2024-05-29 14:07:22'),
(18, '/storage/product-image/s94Hv2rJq8fujQBT21TM5VYEDkC20UmjoW762LHz.jpg', 'Pupuk EM4', 'Pupuk cair organik dari hasil seleksi alami mikroorganisme fermentasi dan sintetik di dalam tanah', 27500, 98, '1L', '2024-05-29 14:08:35', '2024-05-30 02:13:56'),
(19, '/storage/product-image/4woEOMDtRBID6SJg0ty3zQNLd9L4GzxbOPMWb9xS.jpg', 'Proquip - Mesin Semprot Air', 'Portable Sprayer Proquip serbaguna pertanian', 1000000, 58, '5kg', '2024-05-29 14:11:47', '2024-06-07 12:29:40'),
(20, '/storage/product-image/txuJTP1IFO9rdxYSBkAqIc4bwTvDAwqqzl5qZ5r2.jpg', 'Pembasmi Jamur', 'Obat pertanian pembasmi jamur Fungisida BENLOX 50WP', 120000, 250, '250gram', '2024-05-29 14:13:59', '2024-05-29 14:13:59'),
(21, '/storage/product-image/Z2mp42ogNTIaFHSpUU7eHzTK5Cs9BcCrIt5MwE4g.jpg', 'Pembunuh Serangga', 'Obat pertanian pembunuh serangga insektisida LANNATE 40SP', 40000, 250, '15gram', '2024-05-29 14:15:29', '2024-05-29 14:15:29'),
(22, '/storage/product-image/O8cpE45V9rV82qWSSKVrkYaEQDOQAXCMbcM4GbgT.png', 'Tracktor Quick', 'Traktor Quick G 1000 Boxer, traktor tangan roda dua yang paling direkomendasikan untuk membajak sawah. Traktor tangan dari CV Karya Hidup Sentosa (Quick Traktor) ini sangat cocok untuk mengolah lahan kering maupun basah. Stabil dan nyaman dalam pengoperasian. Lebih bertenaga dan tangguh dengan mesin penggerak Kubota 8,5-11 HP.', 33000000, 13, '90kg', '2024-05-29 14:20:08', '2024-06-07 12:29:40'),
(23, '/storage/product-image/Khqo7zhGWx7YyF7qoEyvtmrR3AEABLqeYySv8Vpg.jpg', 'SIMBIOS - Pupuk Hayati Cair', 'SIMBIOS adalah pupuk hayati hasil riset dan inovasi PT Centra Biotech Indonesia, mengandung mikroba hidup penyubur tanah pertanian', 60000, 150, '1L', '2024-05-29 14:23:28', '2024-05-29 14:23:28'),
(24, '/storage/product-image/ghd1P4GJj8uzGyJmjkKqiODMLZSdR1gEpfhDhbnv.jpg', 'PUPUK', 'terbaik', 20000, 15, '200gram', '2024-05-30 03:20:42', '2024-05-30 03:21:06');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `number` bigint(20) DEFAULT NULL,
  `purchase_order` varchar(255) DEFAULT NULL,
  `user_address_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '0 = pending, 1 = process, 2 = sent, 3 = received, 4 = closed, 5 = rejected, 6 = canceled',
  `total` bigint(20) NOT NULL,
  `waybill` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `number`, `purchase_order`, `user_address_id`, `status`, `total`, `waybill`, `created_at`, `updated_at`) VALUES
(4, 3, 1, 'PO-3-00001', 4, 6, 77005000, NULL, '2024-06-07 12:29:40', '2024-06-07 12:29:47');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `price` bigint(20) NOT NULL,
  `qty` bigint(20) NOT NULL,
  `subtotal` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transaction_id`, `product_id`, `price`, `qty`, `subtotal`, `created_at`, `updated_at`) VALUES
(6, 4, 22, 33000000, 2, 66000000, NULL, NULL),
(7, 4, 14, 3000000, 3, 9000000, NULL, NULL),
(8, 4, 19, 1000000, 2, 2000000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `level_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `level_id`, `name`, `phone`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', NULL, 'admin@gmail.com', NULL, '$2y$10$O1sK1GZRXmBZUdQVEkR1Vuftjc.hXQYvRonWTjZjI1j7p8t/Tl3DW', 'ngTb5OgiwP5Ye6d6DrsyFHy0nfNXqfiemqLfqDncGzcEepfij6tqw0RaPwsj', NULL, NULL),
(3, 2, 'user', '123456789', 'user@gmail.com', NULL, '$2y$10$T0NUgPYt7/9x6aDMkfhIsOBbPXkyCleLGmnMGyfSmdtjFobXsys/e', 'Mi4qrazeZlhOkKApTnp7IbodYwFLEccjjdJmzuNWJ7V12ydONzTg8faDpMUv', '2024-05-30 02:13:18', '2024-05-30 02:13:18'),
(5, 2, 'baru', '080808080808', 'baru@gmail.com', NULL, '$2y$10$tznPHX7xck84mCWPh4xlb.zjmGNNY01kLSHvgX3sHw/Wu3aQ0yjzW', '5SL10gqwng5n7KVM0ooZMy9UhmZmyqJE85i56ZpWjv1Syj9yaXNwijzB0XSS', '2024-06-12 11:13:00', '2024-06-12 11:13:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

CREATE TABLE `user_address` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `default` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_address`
--

INSERT INTO `user_address` (`id`, `user_id`, `name`, `phone`, `address`, `default`, `created_at`, `updated_at`) VALUES
(4, 3, 'user', '123456789', 'surabaya', 1, '2024-06-07 12:29:40', '2024-06-07 12:29:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chats_sender_id_foreign` (`sender_id`),
  ADD KEY `chats_receiver_id_foreign` (`receiver_id`);

--
-- Indexes for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_messages_sender_id_foreign` (`sender_id`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_user_address_id_foreign` (`user_address_id`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_details_transaction_id_foreign` (`transaction_id`),
  ADD KEY `transaction_details_product_id_foreign` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_level_id_foreign` (`level_id`);

--
-- Indexes for table `user_address`
--
ALTER TABLE `user_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_address_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `chat_messages`
--
ALTER TABLE `chat_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_address`
--
ALTER TABLE `user_address`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `chats`
--
ALTER TABLE `chats`
  ADD CONSTRAINT `chats_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `chats_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD CONSTRAINT `chat_messages_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_user_address_id_foreign` FOREIGN KEY (`user_address_id`) REFERENCES `user_address` (`id`),
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD CONSTRAINT `transaction_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `transaction_details_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`);

--
-- Constraints for table `user_address`
--
ALTER TABLE `user_address`
  ADD CONSTRAINT `user_address_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
