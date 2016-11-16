-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 16-Nov-2016 às 12:15
-- Versão do servidor: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_webmail`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `mensagems`
--

CREATE TABLE `mensagems` (
  `id` int(10) UNSIGNED NOT NULL,
  `destinatario` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `assunto` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mensagem` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `mensagems`
--

INSERT INTO `mensagems` (`id`, `destinatario`, `assunto`, `mensagem`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'armando.mondlass@gmail.com', '12212', '3232323', 1, '2016-11-15 06:57:09', '2016-11-15 06:57:09'),
(2, 'armando.mondlass@gmail.com', 'aaaaa', '2343434', 1, '2016-11-15 06:57:34', '2016-11-15 06:57:34'),
(3, 'armando.mondlass@gmail.com', '133342', '43434343', 1, '2016-11-15 07:35:03', '2016-11-15 07:35:03'),
(4, 'armando.mondlass@gmail.com', '12212', '323223233', 1, '2016-11-15 08:03:21', '2016-11-15 08:03:21'),
(5, 'armando.mondlass@gmail.com', '133323', '2332323232', 2, '2016-11-15 08:38:50', '2016-11-15 08:38:50'),
(6, 'aaa2@mail.com', '133323', '23233332', 1, '2016-11-15 08:39:19', '2016-11-15 08:39:19'),
(8, 'aaa2@mail.com', '23323', '434343434343', 1, '2016-11-15 08:40:48', '2016-11-15 08:40:48'),
(9, 'aaa2@mail.com', '133323', '554554545454 554544', 1, '2016-11-15 08:41:01', '2016-11-15 08:41:01'),
(10, 'armando.mondlass@gmail.com', 'ABBBBBB', 'cvgcvgsa dgsdgdsg sghjgrgwggwrgr', 2, '2016-11-15 08:43:16', '2016-11-15 08:43:16'),
(11, 'aaa2@mail.com', 'ABBBBBB', 'hbsdbd rehrebrheberhjbj eerhjrehjrehrehrhhrehjrehjre', 1, '2016-11-15 08:44:23', '2016-11-15 08:44:23'),
(12, 'aaa2@mail.com', 'ABBBBBB', 'Olá', 1, '2016-11-15 08:44:29', '2016-11-15 08:44:29');

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_11_15_072946_create_mensagems_controller', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Armando', 'armando.mondlass@gmail.com', '$2y$10$fcKUutsIKS9BxIbh5.vLuucWwEbHfS6z4NvT6nuBpPlqPFv.Lcpqu', 'H4aFD3FUNJgMJHoLZm5UmXbl7YHHBbUF7ROO77rrmiGgp5358iFx1Ld2NBn8', '2016-11-15 05:40:45', '2016-11-15 08:44:37'),
(2, 'AAAAA', 'aaa2@mail.com', '$2y$10$Ay1z2gciC3uhmLyEY4S1KOoSdzJecDCPJphJF0hk0iH4IGhEi.L3y', 'Cop3fvAgfvAWrN3EJIXz0Wvm33u9PxOU6tmT8VCGlUbSLFHUTwYgSy6ks9k3', '2016-11-15 08:38:08', '2016-11-15 09:25:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mensagems`
--
ALTER TABLE `mensagems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mensagems_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

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
-- AUTO_INCREMENT for table `mensagems`
--
ALTER TABLE `mensagems`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `mensagems`
--
ALTER TABLE `mensagems`
  ADD CONSTRAINT `mensagems_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
