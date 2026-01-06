-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 03 Oca 2026, 21:07:10
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `babystar_db`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `gender` enum('kiz','erkek') DEFAULT NULL,
  `age_range` enum('0-6','6-12','12-24') DEFAULT NULL,
  `category_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `categories`
--

INSERT INTO `categories` (`id`, `gender`, `age_range`, `category_name`) VALUES
(1, 'kiz', '0-6', 'Kız Bebek 0-6 Ay'),
(2, 'kiz', '6-12', 'Kız Bebek 6-12 Ay'),
(3, 'kiz', '12-24', 'Kız Bebek 12-24 Ay'),
(4, 'erkek', '0-6', 'Erkek Bebek 0-6 Ay'),
(5, 'erkek', '6-12', 'Erkek Bebek 6-12 Ay'),
(6, 'erkek', '12-24', 'Erkek Bebek 12-24 Ay');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(150) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `products`
--

INSERT INTO `products` (`id`, `category_id`, `title`, `price`, `image`, `description`) VALUES
(11, 4, '3lü Sweatshirt ', 794.90, 'erkek1.jpg', 'Pamuklu Sweatshirt '),
(15, 4, 'Kahverengi Sweatshirt', 344.90, 'erkek5.jpg', 'Pamuklu Sweatshirt'),
(17, 5, '3lü Sweatshirt', 794.90, 'erkek4.jpg', 'Pamuklu Swetshirtler'),
(19, 5, 'Ekru Kazak ', 199.90, 'erkek2.jpg', 'Kalın Kazak'),
(21, 4, '3lü Eşofman', 894.90, 'erkek3.jpg', 'Pamuklu eşofman '),
(23, 5, '3lü Eşofman', 894.90, 'erkek3.jpg', 'Pamuklu '),
(24, 6, 'Ekru Kazak', 249.90, 'erkek2.jpg', 'Kışlık Kazak'),
(25, 6, '3lü Sweatshirt', 794.90, 'erkek1.jpg', 'Pamuklu sweatler'),
(26, 6, '3lü Eşofman', 894.90, 'erkek3.jpg', 'Pamuklu Eşofmanlar'),
(27, 1, 'Mevsimlik Gömlek', 414.90, 'kız1.jpg', 'Pamuklu Gömlek'),
(28, 1, 'Kirazlı Sweatshirt', 399.90, 'kız2.jpg', 'Pamuklu Sweatshirt'),
(29, 2, 'Pembe Hırka', 199.90, 'kız4.jpg', 'Pamuklu Hırka'),
(30, 1, 'Pembe Yağmurluk', 299.90, 'kız3.jpg', 'Pembe Yağmurluk '),
(31, 2, 'Pembe Elbise', 549.90, 'kız5.jpg', 'Elbise'),
(32, 2, 'Mavi Elbise', 499.90, 'kız6.jpg', 'Elbise'),
(33, 3, 'Pembe Etek', 414.90, 'kız7.jpg', 'Pembe renkli etek'),
(34, 3, 'Kirazlı Sweatshirt', 399.90, 'kız2.jpg', 'Kirazlı Pamuklu Sweatshirt'),
(35, 3, 'Pembe Elbise', 414.90, 'kız5.jpg', 'Pamuklu Elbise');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`) VALUES
(1, 'Zeynep Akal', 'akalzeynep45@gmail.com', '$2y$10$EkrOSXBNMWeZpW8dENl12.r/kfz1f5xLkh9hyky/yxpQQjKy75hlW', '2025-12-29 11:13:10'),
(2, 'Zeynep Akkkal', 'akalzeynep4545@gmail.com', '$2y$10$i2lxIcnq/cmJWMbWPmCkt.i/KDbm97YMUIGWAwCxk.HVtd.U18DZG', '2025-12-29 11:27:08'),
(3, 'Melek', 'melek@gmail.com', '$2y$10$gyh10a9tQTnsV7iO6MenxunGMhCv3TQDhB/0XgJ/1E6Vq/xAtrDVi', '2025-12-29 12:09:07'),
(4, 'Hümeyra', 'meyra@gmail.com', '$2y$10$jnu/HZgbLXYD9dshBf7YbO7bkQD9vfFloGhCpU1CexJM.WEaRXlXu', '2025-12-29 14:16:57');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
