-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2024 at 05:44 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tech_trove`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_id`, `username`, `password`) VALUES
(1, 'lakshitha', '$2y$10$Rf9d/BLoAasuuZh4mf66Yub4lfB6GnVdEO1Lk3SBGu8Ngp4HLeo5i');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`cart_id`, `user_id`, `created_at`) VALUES
(1, 3, '2024-10-12 02:25:26'),
(2, 5, '2024-10-12 02:36:13'),
(3, 2, '2024-10-12 02:43:50'),
(4, 9, '2024-10-13 23:24:33'),
(5, 10, '2024-10-14 01:10:36'),
(6, 12, '2024-10-15 01:46:40'),
(7, NULL, '2024-10-15 04:34:05'),
(8, 13, '2024-10-15 06:13:36'),
(9, 15, '2024-10-21 04:28:27'),
(10, 16, '2024-10-21 04:33:56'),
(11, 21, '2024-11-02 05:42:31'),
(12, 23, '2024-11-02 12:50:35'),
(13, 24, '2024-11-02 12:59:11'),
(14, NULL, '2024-11-02 23:51:54'),
(15, NULL, '2024-11-02 23:53:55'),
(16, 34, '2024-11-20 02:55:25'),
(17, 35, '2024-11-20 03:49:56'),
(18, 36, '2024-11-20 05:11:26'),
(19, NULL, '2024-11-20 10:18:20');

-- --------------------------------------------------------

--
-- Table structure for table `cart_product_items`
--

CREATE TABLE `cart_product_items` (
  `item_id` int(11) NOT NULL,
  `cart_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart_product_items`
--

INSERT INTO `cart_product_items` (`item_id`, `cart_id`, `product_id`, `quantity`) VALUES
(16, 4, 7, 3),
(17, 5, 9, 4),
(18, 5, 11, 4),
(19, 5, 13, 1),
(40, 7, 7, 4),
(85, 1, 7, 1),
(137, 12, 20, 1),
(139, 14, 7, 1),
(140, 15, 7, 1),
(162, 19, 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cart_service_items`
--

CREATE TABLE `cart_service_items` (
  `item_id` int(11) NOT NULL,
  `cart_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `featured_products`
--

CREATE TABLE `featured_products` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image_link` varchar(255) NOT NULL,
  `start_date` date NOT NULL DEFAULT current_timestamp(),
  `approved` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `featured_products`
--

INSERT INTO `featured_products` (`id`, `product_id`, `seller_id`, `title`, `description`, `image_link`, `start_date`, `approved`) VALUES
(6, 8, 5, 'Experience Pure Sound Like Never Before', 'Discover the ultimate in audio quality with our premium headphones. Engineered for crystal-clear sound, deep bass, and all-day comfort, these headphones are perfect for music lovers, gamers, and professionals. Elevate your listening experience today!', 'headphonewhite.jpeg', '2024-11-18', 1),
(7, 16, 5, 'Smart Watch: Your Ultimate Fitness & Lifestyle Companion', 'Stay connected, track your fitness goals, and elevate your style with our feature-packed smart watch. With advanced health monitoring, seamless notifications, and a sleek design, it\'s the perfect blend of technology and fashion for your everyday life.', '03.png', '2024-11-18', 1);

-- --------------------------------------------------------

--
-- Table structure for table `invalid_search_quary`
--

CREATE TABLE `invalid_search_quary` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `quary` text NOT NULL,
  `search_count` int(11) NOT NULL DEFAULT 1,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invalid_search_quary`
--

INSERT INTO `invalid_search_quary` (`id`, `date`, `quary`, `search_count`, `type`) VALUES
(2, '2024-11-01', 'dsaddd', 3, 'service'),
(3, '2024-11-01', 'ds', 2, 'product'),
(4, '2024-11-01', 'buddu gona', 2, 'service'),
(5, '2024-11-01', 'charger for type c', 4, 'service'),
(6, '2024-11-01', 'mango', 2, 'service'),
(7, '2024-11-01', 'cameradd', 1, 'product'),
(8, '2024-11-01', 'jojeeven', 1, 'product'),
(9, '2024-11-02', 'dsa', 1, 'product'),
(10, '2024-11-02', 'bla bla bla', 1, 'product'),
(11, '2024-11-02', 'hoooo hooo', 1, 'service'),
(12, '2024-11-02', 'Smartphone accessories loop video', 2, 'service'),
(13, '2024-11-02', 'Smartphoneaccessories loop video', 1, 'service'),
(14, '2024-11-02', 'charge', 2, 'service'),
(15, '2024-11-07', 'key bord', 2, 'service'),
(16, '2024-11-07', 'keybord', 5, 'service'),
(17, '2024-11-07', 'he', 1, 'service'),
(18, '2024-11-07', 'hii?type', 1, 'service'),
(19, '2024-11-17', 'dsa?type', 1, 'service'),
(20, '2024-11-17', 'kksks?type', 1, 'service'),
(21, '2024-11-17', 'kksks?type=product', 1, 'service'),
(22, '2024-11-17', 'dddnnn?type=product', 1, 'service'),
(23, '2024-11-17', 'kksks?type=\"product\"', 2, 'service'),
(24, '2024-11-17', 'kksks', 1, 'service'),
(25, '2024-11-17', 'kksks', 2, 'product'),
(26, '2024-11-18', 'cable9 s', 1, 'product'),
(27, '2024-11-18', 'cable9 f', 1, 'product'),
(28, '2024-11-20', 'praveen', 1, 'product'),
(29, '2024-11-20', 'lakky', 2, 'product'),
(30, '2024-11-20', 'jklnj,bnjk', 1, 'service'),
(31, '2024-11-20', 'jshdhwuhue', 1, 'product'),
(32, '2024-11-20', 'bla bla', 1, 'product');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `cart_id`) VALUES
(4, 1),
(5, 1),
(1, 3),
(2, 3),
(3, 3),
(6, 3),
(7, 3),
(8, 3),
(9, 3),
(11, 3),
(12, 3),
(13, 3),
(14, 3),
(15, 3),
(16, 3),
(17, 3),
(18, 3),
(20, 3),
(21, 3),
(22, 3),
(23, 3),
(24, 3),
(25, 3),
(26, 3),
(27, 3),
(28, 3),
(29, 3),
(30, 3),
(31, 3),
(32, 3),
(33, 3),
(34, 3),
(35, 3),
(36, 3),
(37, 3),
(38, 3),
(39, 3),
(40, 3),
(41, 3),
(42, 3),
(43, 3),
(44, 3),
(45, 3),
(46, 3),
(47, 3),
(48, 3),
(49, 3),
(50, 3),
(51, 3),
(52, 3),
(53, 3),
(54, 3),
(55, 3),
(56, 3),
(57, 3),
(58, 3),
(59, 3),
(60, 3),
(61, 3),
(62, 3),
(63, 3),
(64, 3),
(65, 3),
(66, 3),
(67, 3),
(68, 3),
(69, 3),
(70, 3),
(71, 3),
(72, 3),
(76, 3),
(77, 3),
(73, 16),
(74, 17),
(75, 18);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `item_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `ordered_data` date NOT NULL DEFAULT current_timestamp(),
  `quantity` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `shipping_detail_id` int(11) NOT NULL,
  `order_status` varchar(255) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `can_feedback` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`item_id`, `product_id`, `order_id`, `ordered_data`, `quantity`, `price`, `shipping_detail_id`, `order_status`, `payment_method`, `can_feedback`) VALUES
(55, 7, 2, '2024-10-22', 1, 10.00, 3, 'complete', 'cash_On_delivery', 0),
(56, 8, 3, '2024-10-22', 5, 100.00, 4, 'complete', 'cash_On_delivery', 0),
(57, 7, 4, '2024-10-22', 6, 10.00, 5, 'complete', 'cash_On_delivery', 0),
(58, 9, 5, '2024-10-22', 1, 800.00, 6, 'complete', 'cash_On_delivery', 0),
(59, 7, 6, '2024-10-23', 4, 10.00, 7, 'complete', 'cash_On_delivery', 0),
(60, 7, 7, '2024-10-23', 5, 10.00, 8, 'complete', 'cash_On_delivery', 0),
(61, 8, 11, '2024-10-23', 3, 100.00, 11, 'complete', 'cash_On_delivery', 0),
(62, 8, 12, '2024-10-23', 3, 100.00, 12, 'complete', 'cash_On_delivery', 0),
(63, 8, 13, '2024-10-23', 6, 100.00, 13, 'complete', 'cash_On_delivery', 0),
(64, 7, 14, '2024-10-23', 10, 10.00, 14, 'complete', 'cash_On_delivery', 0),
(65, 8, 15, '2024-10-23', 4, 100.00, 15, 'complete', 'cash_On_delivery', 0),
(66, 17, 16, '2024-10-23', 4, 50.00, 16, 'complete', 'cash_On_delivery', 0),
(67, 17, 17, '2024-10-23', 1, 50.00, 17, 'pending', 'cash_On_delivery', 0),
(68, 12, 18, '2024-10-25', 20, 200.00, 18, 'shiped', 'cash_On_delivery', 1),
(69, 14, 20, '2024-10-31', 8, 12.00, 19, 'pending', '', 1),
(70, 7, 20, '2024-10-31', 1, 10.00, 19, 'complete', '', 1),
(71, 8, 21, '2024-10-31', 1, 100.00, 20, 'complete', '', 1),
(72, 7, 22, '2024-10-31', 1, 10.00, 21, 'complete', '', 1),
(73, 8, 24, '2024-10-31', 1, 100.00, 23, 'complete', 'credit_card', 0),
(74, 7, 26, '2024-10-31', 1, 10.00, 25, 'shiped', 'credit_card', 1),
(75, 8, 27, '2024-10-31', 1, 100.00, 26, 'shiped', 'credit_card', 1),
(76, 8, 28, '2024-10-31', 1, 100.00, 27, 'complete', 'credit_card', 1),
(77, 8, 29, '2024-10-31', 5, 100.00, 28, 'shiped', 'credit_card', 1),
(78, 8, 30, '2024-10-31', 1, 100.00, 29, 'shiped', 'credit_card', 1),
(79, 7, 34, '2024-10-31', 1, 10.00, 33, 'shiped', 'credit_card', 1),
(80, 7, 35, '2024-10-31', 1, 10.00, 34, 'shiped', 'credit_card', 1),
(81, 7, 36, '2024-10-31', 1, 10.00, 35, 'shiped', 'credit_card', 1),
(82, 7, 37, '2024-10-31', 1, 10.00, 36, 'shiped', 'credit_card', 1),
(83, 7, 40, '2024-10-31', 1, 10.00, 39, 'shiped', 'credit_card', 1),
(84, 7, 45, '2024-10-31', 1, 10.00, 44, 'shiped', '', 0),
(85, 7, 45, '2024-10-31', 1, 10.00, 44, 'shiped', 'cash_On_delivery', 0),
(86, 7, 46, '2024-10-31', 1, 10.00, 45, 'shiped', 'cash_On_delivery', 0),
(87, 7, 49, '2024-10-31', 1, 10.00, 48, 'shiped', 'cash_On_delivery', 0),
(88, 7, 51, '2024-10-31', 3, 10.00, 50, 'shiped', 'cash_On_delivery', 0),
(89, 9, 52, '2024-10-31', 2, 800.00, 51, 'shiped', '', 0),
(90, 9, 53, '2024-10-31', 1, 800.00, 52, 'shiped', 'credit_card', 0),
(91, 9, 55, '2024-10-31', 5, 800.00, 54, 'shiped', 'cash_On_delivery', 0),
(92, 7, 55, '2024-10-31', 1, 10.00, 54, 'shiped', 'cash_On_delivery', 0),
(93, 7, 56, '2024-10-31', 1, 10.00, 55, 'shiped', 'cash_On_delivery', 0),
(94, 7, 57, '2024-10-31', 4, 10.00, 56, 'complete', 'credit_card', 0),
(95, 7, 60, '2024-11-01', 1, 10.00, 59, 'shiped', 'credit_card', 1),
(96, 9, 63, '2024-11-02', 2, 800.00, 62, 'shiped', 'credit_card', 1),
(97, 16, 63, '2024-11-02', 3, 100.00, 62, 'shiped', 'credit_card', 1),
(98, 7, 63, '2024-11-02', 4, 10.00, 62, 'shiped', 'credit_card', 1),
(99, 9, 65, '2024-11-03', 1, 800.00, 64, 'shiped', 'credit_card', 1),
(100, 7, 66, '2024-11-03', 1, 10.00, 65, 'shiped', 'cash_On_delivery', 1),
(101, 7, 67, '2024-11-07', 4, 10.00, 66, 'shiped', 'cash_On_delivery', 1),
(102, 7, 68, '2024-11-07', 1, 10.00, 67, 'shiped', 'credit_card', 1),
(103, 7, 71, '2024-11-18', 6, 10.00, 70, 'shiped', 'credit_card', 1),
(104, 9, 71, '2024-11-18', 3, 800.00, 70, 'shiped', 'credit_card', 1),
(105, 9, 73, '2024-11-20', 2, 800.00, 72, 'complete', 'credit_card', 0),
(106, 11, 74, '2024-11-20', 3, 10.00, 73, 'pending', 'credit_card', 1),
(107, 11, 75, '2024-11-20', 3, 10.00, 74, 'complete', 'credit_card', 0),
(108, 16, 76, '2024-11-20', 8, 100.00, 75, 'complete', 'credit_card', 1),
(109, 24, 76, '2024-11-20', 2, 20.00, 75, 'pending', 'credit_card', 1),
(110, 11, 77, '2024-11-20', 3, 10.00, 76, 'complete', 'credit_card', 0);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `payment_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `catogory_id` int(11) NOT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` int(11) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `stock_quantity` int(11) NOT NULL,
  `image_link` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `view_count` int(11) NOT NULL DEFAULT 0,
  `rating` float(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `seller_id`, `catogory_id`, `product_name`, `description`, `price`, `brand`, `stock_quantity`, `image_link`, `color`, `view_count`, `rating`) VALUES
(7, 5, 4, 'Earphone', 'Premium Sound Earphones – Crystal Clear Audio', 10, 'JB', 0, 'handfree1.jpg', '', 186, 4),
(8, 5, 4, 'Head phone', 'This is best for study', 100, 'AJX', 0, 'headphone2.jpg', 'white', 130, 3),
(9, 5, 1, 'Samsung A7', 'This is the best phone with quality camera', 800, 'samsung', 84, 'iphone11.jpg', 'blue', 44, 5),
(10, 5, 10, 'Canon Camera', 'This is the best cemara in the world', 100, 'Canon', 200, 'cam2.jpg', 'black', 28, 0),
(11, 5, 1, 'Back_cover', 'This good for android', 10, 'unbrand', 91, 'iphonex.jpg', 'blue', 17, 4),
(12, 5, 4, 'New Headphone', ' new headphone', 200, 'JBL', 0, 'headphone4.jpg', 'yellow', 46, 0),
(13, 7, 1, 'lakshitha', 'hi hi hi', 100, 'Apple', 10, 'raparingphone.jpeg', 'red', 6, 0),
(14, 8, 1, 'Apple A7', 'bla aa', 12, 'JBL', 2, '02.png', 'blue', 18, 0),
(16, 5, 1, 'my next product', 'hi test description', 100, 'samsung', 19, '03.png', '', 24, 0),
(17, 9, 1, 'Apple A8', 'hii', 50, 'Apple', 0, '02.png', 'pink', 13, 0),
(18, 13, 3, 'USB Cable for Lightning-Fast Charging ⚡️🔋', 'Keep your devices powered up with this durable, high-speed USB cable. It’s designed for rapid charging and data transfer, making it perfect for those on the go! Reinforced connectors ensure long-lasting performance, while the flexible design fits easily into any setup. Say goodbye to low battery warnings! 📱💻', 20, 'xml', 20, 'cable1.jpg', 'blue', 6, NULL),
(19, 13, 3, 'USB Cable for Effortless Charging 🚀🔗', 'No more tangled cables! This tangle-free USB cable is built to keep you charged up and ready to go. With a length that’s just right and a durable braided design, it offers both speed and flexibility. Perfect for home, office, or travel – stay connected without the hassle! 🌐📲', 25, 'AJX', 20, 'cable5.jpg', 'blue', 3, NULL),
(20, 13, 3, 'Reliable USB Cable with Fast Charging 🌟⚙️', 'Charge with confidence! This USB cable is built tough, with reinforced joints to withstand everyday use. It’s perfect for charging or syncing your devices quickly and reliably. Enjoy high-speed performance and a long-lasting connection – a great companion for any device! 🔋💼', 30, 'samsung', 9, 'cable7.jpg', 'red', 1, NULL),
(21, 13, 3, 'Versatile USB Cable – Perfect for Every Device 🔄📱', 'Charge up in style! This universal USB cable is compatible with a wide range of devices, offering a strong and stable connection. The cable’s sleek and compact design makes it easy to carry, while its fast charge capability keeps your devices running longer. Reliable power, anytime! 🔋💼', 30, 'samsung', 13, 'cable3.jpg', 'green', 0, NULL),
(22, 13, 3, 'Fast Charging USB Cable with Smart Chip Technology 🚀🔋', 'Boost your charging with our smart USB cable, equipped with an intelligent chip that optimizes power flow to your device. Enjoy faster, safer charging and smooth data transfers. Great for work, play, or travel – this cable is smart, stylish, and reliable! 📲💼', 100, 'Canon', 5, 'cable2.jpg', 'red', 1, NULL),
(23, 13, 3, 'Lightweight and Compact USB Cable – Perfect for Travel 🧳✈️', 'Keep your devices charged wherever you go with this travel-friendly USB cable! Lightweight and easy to pack, it’s the ideal companion for your next trip. Fast charging, durable, and compact – just what you need to stay powered up on the road! 🔋📱', 55, 'samsung', 20, 'cable4.jpg', 'white', 1, NULL),
(24, 14, 4, 'Premium Wireless Headphones with Deep Bass 🎧🔊', 'Immerse yourself in crystal-clear sound with these wireless headphones! Designed for music lovers, they deliver rich bass and crisp highs. With a long battery life and comfortable ear cups, they’re perfect for all-day listening. Say goodbye to tangled wires and hello to pure audio bliss! 🎶🔋', 20, 'JBL', 20, 'headphone1.jpg', 'black', 4, NULL),
(25, 14, 4, 'Noise-Canceling Headphones for Total Focus 🌟🔇', 'Escape the noise and dive into your favorite tunes with these noise-canceling headphones. Whether you’re working, studying, or just relaxing, the active noise cancellation lets you enjoy uninterrupted sound. Comfortable, lightweight, and perfect for any setting! 🧘‍♂️📱', 200, 'samsung', 25, 'headphone3.jpg', 'red', 2, NULL),
(26, 14, 4, 'Stylish Over-Ear Headphones for Superior Comfort 🎶💼', 'Get style and substance with these sleek over-ear headphones. Featuring plush, memory foam ear pads, they’re built for hours of comfortable listening. Enjoy rich sound quality with a foldable design that’s perfect for travel. Upgrade your audio experience! 🌐🎒', 100, 'AJX', 20, 'headphone4.jpg', 'white', 2, NULL),
(27, 14, 4, 'Wireless Sports Headphones – Your Workout Companion 🏃‍♂️💥', 'Take your workouts to the next level with these lightweight, wireless sports headphones. Sweatproof and secure, they stay put during even the toughest workouts. With powerful sound and a long-lasting battery, they’re the perfect partner for your active lifestyle! 🔋🏅', 250, 'JBL', 5, 'earphone1.jpeg', 'black', 2, NULL),
(28, 15, 4, 'SAE Earbuds', 'Wireless Earbuds Bluetooth Earbuds with Deep Bass Bluetooth Headphones Noise Cancelling Ear Buds 60Hrs Playtime in-Ear Earphones with Mic for iPhone/Android/Pods', 5990, 'ADSF', 9, 'hedphone5.jpg', '', 1, NULL),
(29, 15, 4, 'LIGHT WEIGHT Earbuds', 'Earboss Z11 Earbuds with Gaming Pods, 200H Playtime, Quad Mic ENC, 13mm driver, Type C Bluetooth  (Black, True Wireless)', 569, 'Earboss Z11', 20, 'hedphone6.jpg', '', 0, NULL),
(30, 15, 4, 'CRYSTAL Earbuds', 'HY Crystal-T6 Truly Wireless in Ear Earbuds with 24H of Playtime, LED Digital Display, IPX4 Ear Buds, Bluetooth 5.3, Sweatproof Earbuds, Type-C Charging Case (Light-Green)', 3580, 'HY Crystal', 3, 'hedphone7.jfif', '', 0, NULL),
(31, 15, 4, 'Wireless Mouse', 'HP 930 Creator Wireless Mouse, USB-A dongle, Bluetooth 5.1, 7 programmable Buttons, Up to 4000 dpi, Pair up to 3 Devices, Rechargeable 12-Week Battery, 3-Year Warranty, 0.13 kg, Silver, 1D0K9AA', 4566, 'HP 930', 7, 'hedphone9.webp', '', 0, NULL),
(32, 15, 7, 'Aulumu G05 Mag Safe Phone Stand Grip', 'Aulumu G05 Mag Safe Phone Stand Grip | Removable 360° Adjustable Phone Kickstand with Box Opener | Compatible with MagSafe for iPhone 15/14/13/12 Series – Black', 655, 'Aulumu G05 ', 7, 'stand1.jpg', '', 0, NULL),
(33, 15, 8, 'HP 930 Creator Wireless Mouse', 'HP 930 Creator Wireless Mouse, USB-A dongle, Bluetooth 5.1, 7 programmable Buttons, Up to 4000 dpi, Pair up to 3 Devices, Rechargeable 12-Week Battery, 3-Year Warranty, 0.13 kg, Silver, 1D0K9AA', 100, 'HP 930 Creator', 4, 'mouse1.jpg', '', 0, NULL),
(34, 15, 8, 'Logitech MX Anywhere 3S Compact Wireless Mouse', 'Logitech MX Anywhere 3S Compact Wireless Mouse, Fast Scrolling, 8K DPI Any-Surface Tracking, Quiet Clicks, Programmable Buttons, USB C, Bluetooth, Windows PC, Linux, Chrome, Mac - Graphite', 85, 'Logitech MX Anywhere 3S Compact', 45, 'mouse2.jpg', '', 1, NULL),
(35, 15, 8, '3S Compact Wireless Mouse', 'Logitech MX Anywhere 3S Compact Wireless Mouse, Fast Scrolling, 8K DPI Any-Surface Tracking, Quiet Clicks, Programmable Buttons, USB C, Bluetooth, Windows PC, Linux, Chrome, Mac – Graphite', 75, '3S Compact ', 8, 'mouse3.jpg', '', 0, NULL),
(36, 15, 9, 'Logitech MK950 Signature Slim Wireless Keyboard and Mouse Combo', 'Logitech MK950 Signature Slim Wireless Keyboard and Mouse Combo, Sleek Design, Quiet Typing and Clicking, Switch Across Three Devices, Bluetooth, Multi-OS, Works with Windows and Mac', 100, 'Logitech MK950 Signature', 5, 'keyboard.jpg', '', 0, NULL),
(37, 15, 9, 'Portronics Hydra 10 Mechanical Wireless Gaming Keyboard', 'Portronics Hydra 10 Mechanical Wireless Gaming Keyboard with Bluetooth 5.0 + 2.4 GHz, RGB Lights 16.8 Million Colors, Type C Charging, Compatible with PCs, Smartphones and Tablets(Red)', 10, 'Portronics Hydra 10', 8, 'keyboard2.jpg', '', 1, NULL),
(38, 15, 9, 'MageGee Mechanical Gaming Keyboard', 'MageGee Mechanical Gaming Keyboard MK-Armor LED Rainbow Backlit and Wired USB 104 Keys Keyboard with Red Switches, for Windows PC Laptop Game(Black&White)', 145, 'MageGee Mechanical ', 2, 'keyboard4.jpg', '', 2, NULL),
(39, 15, 9, 'Portronics K2 Mechanical Gaming Keyboard', 'Portronics K2 Mechanical Gaming Keyboard with 20+ RGB Multi Colour Backlight, Red Linear Switches, Anti-Ghosting Keys, Customizable LED Modes, Full Size, 1.5m Long USB Cable for Laptops & PC (Blue)', 245, 'Portronics K2 ', 5, 'keyboard3.jpg', '', 0, NULL),
(40, 15, 10, 'Logitech Mx Brio Ultra Hd 4K Collaboration and Streaming Digital Webcam', 'Logitech Mx Brio Ultra Hd 4K Collaboration and Streaming Digital Webcam, 1080P at 60 Fps, Dual Noise Reducing Mics, Show Mode, USB-C, Webcam Cover, Works with Microsoft Teams, Zoom, Google Meet', 84, 'Logitech Mx Brio', 80, 'web cam 1.jpg', '', 0, NULL),
(41, 17, 10, 'Trueview 4G Sim 4Mp Solar Powered CCTV Security Camera', 'Trueview 4G Sim 4Mp Solar Powered CCTV Security Camera with Solar Panel | Surveillance for Agriculture | Remote Area | Construction Site | Garden (4MP Solar Mini PTZ)', 4, 'Trueview ', 7, 'cam1.jpg', '', 2, NULL),
(42, 17, 10, 'Trueview 2MP Smart CCTV Wi-fi Home Security Camera', 'Trueview 2MP Smart CCTV Wi-fi Home Security Camera with Pan Tilt 360° View, 2 Way Talk (2MP Color Night Vision Smart Camera)', 58, 'Trueview ', 7, 'cam2.jpg', '', 2, NULL),
(43, 17, 10, 'Trueview Cube Compact Indoor Wireless Smart Security Camera|', 'Trueview Cube Compact Indoor Wireless Smart Security Camera|1080P Hd Cctv Camera|Built-In Lumen Spot Light|Color Night Vision|Motion Detection|Two-Way Audio|Easy Set Up|Compatible With Alexa', 85, 'Trueview ', 8, 'cam3.jpg', '', 2, NULL),
(44, 17, 10, 'Trueview 3mp 1296p HD All Time Color 4G Sim Based Bullet CCTV Security Camera', 'Trueview 3mp 1296p HD All Time Color 4G Sim Based Bullet CCTV Security Camera for Home, Shop, Office, Farm, and Construction Site | IP66 Waterproof Rating | With 9 IR LED', 7854, 'Trueview ', 8, 'cam4.jpg', '', 1, NULL),
(45, 17, 10, 'Logitech C270 Digital HD Webcam with Widescreen HD Video Calling', 'Logitech C270 Digital HD Webcam with Widescreen HD Video Calling, HD Light Correction, Noise-Reducing Mic, for Skype, FaceTime, Hangouts, WebEx, PC/Mac/Laptop/MacBook/Tablet - (Black, HD 720p/30fps)', 758, 'Logitech ', 5, 'cam6.jpg', '', 0, NULL),
(46, 17, 10, 'Canon EOS R7 32.5MP Mirrorless Camera', 'Canon EOS R7 32.5MP Mirrorless Camera with RF-S18-150mm Lens Kit | APS-C Sensor | 4K 120P Video (Black)', 95877, 'Canon', 4, 'cam5.jpg', '', 0, NULL),
(47, 17, 10, 'Lenovo 300 FHD Webcam', 'Lenovo 300 FHD Webcam with Full Stereo Dual Built-in mics | FHD 1080P 2.1 Megapixel CMOS Camera |Ultra-Wide 95° Lens, 4X Digital Zoom | 360 Rotation | Flexible Mount', 456, 'Lenovo', 5, 'cam7.jpg', '', 0, NULL),
(48, 17, 12, 'Amazon Basics 64 GB Micro SD Card with Adapter', 'Amazon Basics 64 GB Micro SD Card with Adapter | Upto 120 MB/s | Class 10 | U1, C10, V10 Speed Classes', 200, 'Amazon ', 7, 'memorycard 3.jpg', '', 0, NULL),
(49, 17, 11, 'Amazon Basics 512GB Micro SD Card with Adapter', 'Amazon Basics 512 GB Micro SDXC Memory Card | 180 MB/s Read | Memory Card for 4K Video on Smartphones, Action Cams and Drones', 245, 'Amazon ', 7, 'memorycard1.jpg', '', 0, NULL),
(50, 17, 11, 'CP PLUS 128GB microSDXC Memory Card', 'CP PLUS 128GB microSDXC Memory Card Grade UHS-3 Class 10, Up to 70 Mbps Reading & 30 Mbps Writing Speed with High Performance of Data Transfer & Lower Power Consumption for Portable Devices| CP-NM128', 895, 'CP PLUS ', 7, 'MEMORYCARD2.jpg', '', 0, NULL),
(51, 17, 12, 'SanDisk Extreme Pro 128GB microSDXC', 'SanDisk Extreme Pro 128GB microSDXC UHS-I, V30, 200MB/s Read, 90MB/s Write, Memory Card for 4K Video on Smartphones, Action Cams and Drones', 456, 'SanDisk ', 9, 'memorycard4.jpg', '', 0, NULL),
(52, 17, 11, 'Nerv UltraPro Micro SD Card for Drone', 'Nerv UltraPro Micro SD Card for Drones, Smartphones, Tablets, and More, Class 10 U3, High Performance, Secure Storage and Data Transfer, Magnet and X-Ray Safe (64)', 248, 'Nerv UltraPro', 2, 'memorycard5.jpg', '', 0, NULL),
(53, 17, 14, 'Mivi Play Bluetooth Speaker', 'Mivi Play Bluetooth Speaker with 12 Hours Playtime. Wireless Speaker Made in India with Exceptional Sound Quality, Portable and Built in Mic-Black', 2365, 'Mivi ', 4, 'speaker2.jpg', '', 0, NULL),
(54, 17, 14, 'Mivi Roam 2 Bluetooth 5W Portable Speaker,', 'Mivi Roam 2 Bluetooth 5W Portable Speaker,24 Hours Playtime,Powerful Bass, Wireless Stereo Speaker with Studio Quality Sound,Waterproof, Bluetooth 5.0 and in-Built Mic with Voice Assistance-Blue', 2378, 'Mivi ', 4, 'speaker3.jpg', '', 0, NULL),
(55, 17, 14, 'SYVO Soul 100 Bluetooth 5.0 Wireless IPX4 Super Bass, HD Sound, Aluminium Alloy Portable 3W Bluetoot', 'SYVO Soul 100 Bluetooth 5.0 Wireless IPX4 Super Bass, HD Sound, Aluminium Alloy Portable 3W Bluetooth Speaker with Mic (Black)', 7854, 'SYVOQ', 4, 'speaker1.jpg', '', 0, NULL),
(56, 17, 14, 'soundcore by Anker Pyro Mini Portable and Compact 6W Bluetooth Speaker', 'soundcore by Anker Pyro Mini Portable and Compact 6W Bluetooth Speaker with Loud and Strong bass, 10 Hrs Playtime, 57mm Driver, Bluetooth 5.3 Connectivity- Black', 78745, 'soundcore', 7, 'speaker4.jpg', '', 0, NULL),
(57, 17, 14, 'amazon basics 5W Mini–Bluetooth Speaker', 'amazon basics 5W Mini–Bluetooth Speaker with Upto 30Hrs Playtime, TWS Function, Powerful Bass, Immersive Sound, 40mm Driver BT 5.0, MicroSD Card Slot, USB Support, and IPX5 Water Resistance (Black)', 414, 'amazon basics', 89, 'speaker5.jpg', '', 0, NULL),
(58, 17, 15, 'Verilux® Pendrive 128GB 4 in 1 Flash Drive', 'Verilux® Pendrive 128GB 4 in 1 Flash Drive with Light-ning, Micro USB, USB A, Type-C Interface Mini Hangable PenDrive for iOS & Android Compatible with iPhone, iPad, Android, PC and More Devices', 585, 'Verilux® ', 78, 'pendrive1.jpg', '', 0, NULL),
(59, 17, 15, 'Amazon Basics 64 GB Flash Drive', 'Amazon Basics 64 GB Flash Drive | USB 2.0 M Series | Temperature, Shock and Vibration Resistant | Metallic Silver', 221, 'Amazon ', 54, 'pendrive2.jpg', '', 0, NULL),
(60, 17, 15, 'HP v236w USB 2.0 64GB Pen Drive,', 'HP v236w USB 2.0 64GB Pen Drive,', 422, 'HP v236w USB 2.0 64GB Pen Drive,', 5, 'pendrive3.jpg', '', 0, NULL),
(61, 17, 15, 'SanDisk Cruzer Blade 64GB USB 2.0 Flash Drive', 'SanDisk Cruzer Blade 64GB USB 2.0 Flash Drive', 445, 'SanDisk Cruzer Blade 64GB USB 2.0 Flash Drive', 4, 'pendrive4.jpg', '', 0, NULL),
(62, 17, 15, 'Kingston DataTraveler Exodia Onyx 64GB USB-A Flash Drive | USB 3.2 Gen 1 | DTXON/64GB', 'Kingston DataTraveler Exodia Onyx 64GB USB-A Flash Drive | USB 3.2 Gen 1 | DTXON/64GB', 5221, 'Kingston DataTraveler Exodia Onyx 64GB USB-A Flash Drive | USB 3.2 Gen 1 | DTXON/64GB', 4, 'pendrive5.jpg', '', 0, NULL),
(63, 17, 15, 'Cross® USB A,to Type-C Interface Mini Hangable PenDrive', 'Cross® USB A,to Type-C Interface Mini Hangable PenDrive for iOS & Android Compatible with Phone, Pad, Android, PC and More', 400, 'Cross® ', 52, 'pendrive6.jpg', '', 0, NULL),
(64, 17, 16, 'MAYUMI TRANSPIO - Transparent Hi Speed USB 3.1 Portable External HDD with C Type Connector - for PC ', 'MAYUMI TRANSPIO - Transparent Hi Speed USB 3.1 Portable External HDD with C Type Connector - for PC Laptop Windows Mac - 1 Yr Warranty - Hi Speed Hard Disk Drive - Clear (2, TB)', 400, 'MAYUMI TRANSPIO - Transparent Hi Speed USB 3.1 Portable External HDD ', 7, 'harddisk1.jpg', '', 0, NULL),
(65, 17, 16, 'amazon basics 512 GB Portable SSD', 'amazon basics 512 GB Portable SSD | Type C Compatible NVMe Drive | Upto 950 MB/s | PC, Mac and Smartphone Compatible', 500, 'amazon ', 7, 'HD#.jpg', '', 0, NULL),
(66, 17, 16, 'Samsung T5 EVO Portable SSD 2TB', 'Samsung T5 EVO Portable SSD 2TB, USB 3.2 Gen 1 External Solid State Drive, Seq. Read Speeds Up to 460MB/s for Gaming and Content Creation, MU-PH2T0S/WW, Black', 745, 'Samsung ', 7, 'hd2.jpg', '', 0, NULL),
(67, 17, 16, 'sandisk Extreme Portable 2TB', 'sandisk Extreme Portable 2TB, 1050MB/s R, 1000MB/s W, 3mtr Drop Protection, IP65 Water/dust Resistance, HW Encryption, PC,MAC & TypeC Smartphone Compatible, 5Y Warranty, External SSD, Monterey Color', 741, 'sandisk ', 8, 'HD4.webp', '', 0, NULL),
(68, 17, 16, 'LaCie Mobile Drive 5TB External Hard Drive HDD', 'LaCie Mobile Drive 5TB External Hard Drive HDD – Space Grey USB-C USB 3.0, for Mac and PC Desktop (STHG5000402)', 789, 'LaCie ', 32, 'HD5.jpg', '', 2, NULL),
(69, 5, 4, 'Head phone', 'New Arrival HeadPhone For Student With confortable sound to study long time without distraction', 200, 'JBL', 10, 'headphone4.jpg', 'blue', 10, NULL),
(72, 18, 1, 'Apple A7', 'hhhh', 200, 'Apple', 11, '673ad078aa991-ACTION.png', 'blue', 0, NULL),
(73, 18, 2, 'Apple A7', 'www', 120, 'Apple', 120, '673ad2226a14a-ACTION.png', 'blue', 1, NULL),
(74, 5, 2, 'Smart Watch', 'This is work for student Best for price', 10, 'Apple', 120, '673cca062b888-03.png', 'green', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_catogory`
--

CREATE TABLE `product_catogory` (
  `product_cat_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_catogory`
--

INSERT INTO `product_catogory` (`product_cat_id`, `name`) VALUES
(1, 'smart phone'),
(2, 'smart watch'),
(3, 'Charging cable'),
(4, 'Earphone'),
(5, 'charger'),
(7, 'Phone Stand '),
(8, 'Mouse'),
(9, 'Keyboard'),
(10, 'Camera'),
(11, 'memory card'),
(12, 'SD card'),
(14, 'Speaker '),
(15, 'Pendrive '),
(16, 'SSD'),
(17, 'charger4'),
(18, 'charger5');

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `promotion_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `discount` decimal(5,2) DEFAULT NULL,
  `price_after_discount` float DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `promotions`
--

INSERT INTO `promotions` (`promotion_id`, `product_id`, `discount`, `price_after_discount`, `start_date`, `end_date`) VALUES
(17, 10, 50.00, 50, '2024-11-20', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL CHECK (`rating` >= 1 and `rating` <= 5),
  `review` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `image_link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `user_id`, `product_id`, `rating`, `review`, `created_at`, `updated_at`, `image_link`) VALUES
(1, 2, 7, 4, 'good product', '2024-10-22 06:05:22', '2024-10-22 06:05:22', ''),
(2, 2, 8, 4, 'hi', '2024-10-22 06:11:24', '2024-10-22 06:11:24', ''),
(3, 3, 7, 5, 'this is very nice product', '2024-10-22 11:54:49', '2024-10-22 11:54:49', ''),
(4, 2, 7, 4, 'hiiiiiiiiiii', '2024-10-30 12:35:16', '2024-10-30 12:35:16', ''),
(5, 2, 7, 2, 'kkkkk', '2024-10-30 12:36:01', '2024-10-30 12:36:01', ''),
(6, 2, 7, 5, 'hoooooooooooo', '2024-10-30 12:48:31', '2024-10-30 12:48:31', ''),
(7, 2, 8, 3, 'nnnnnnnnnn', '2024-10-30 12:53:35', '2024-10-30 12:53:35', ''),
(8, 2, 8, 1, 'ddddddddd', '2024-10-30 12:56:02', '2024-10-30 12:56:02', ''),
(9, 2, 7, 4, 'buddu gona', '2024-10-31 05:09:43', '2024-10-31 05:09:43', ''),
(10, 2, 7, 3, 'lakshitha madushan', '0000-00-00 00:00:00', '2024-10-31 05:52:02', ''),
(11, 2, 7, 3, 'maduhan budddu', '2024-10-31 05:36:17', '2024-10-31 05:36:17', 'usbcable.jpeg'),
(12, 2, 8, 5, 'In case this doesn’t work, you could also inspect the element in your browser\\\'s Developer Tools (right-click on the image and select \\\"Inspect\\\") to see if there are any conflicting styles preventing the', '2024-10-31 06:20:01', '2024-10-31 06:20:01', 'camera.jpeg'),
(13, 2, 8, 2, 'To ensure the larger image size applies correctly on hover, make sure the CSS .popup-image styles aren\\\'t being overridden by other styles in your project', '2024-10-31 06:21:24', '2024-10-31 06:21:24', 'headphone.jpeg'),
(14, 2, 8, 2, 'To ensure the larger image size applies correctly on hover, make sure the CSS .popup-image styles aren\\\'t being overridden by other styles in your project', '2024-10-31 06:21:38', '2024-10-31 06:21:38', 'headphone.jpeg'),
(15, 34, 9, 5, 'good product !!', '2024-11-20 03:11:40', '2024-11-20 03:11:40', ''),
(16, 36, 11, 4, 'lkkk', '2024-11-20 05:15:57', '2024-11-20 05:15:57', ''),
(17, 2, 11, 4, 'good ', '2024-11-20 10:22:19', '2024-11-20 10:22:19', '');

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `seller_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `store_name` varchar(100) DEFAULT NULL,
  `seller_name` varchar(255) NOT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT 0,
  `phone_number` varchar(20) NOT NULL,
  `location` text NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`seller_id`, `user_id`, `store_name`, `seller_name`, `approved`, `phone_number`, `location`, `email`) VALUES
(1, 7, 'lakyshop', '', 0, '', '', ''),
(2, 3, 'techproduct', '', 1, '', '', ''),
(3, 6, 'catshop', '', 1, '', '', ''),
(4, 1, 'catshop', '', 1, '', '', ''),
(5, 2, 'mobilo', '', 1, '0778996508', '', 'lakshithalkmadushan@gmail.com'),
(6, 5, 'jomax', '', 1, '0778996508', '', 'lakshitha@gmail.com'),
(7, 10, 'budhika', '', 1, '0778996508', '', 'lakshithalkmadushan@gmail.com'),
(8, 13, 'cable shop', '', 1, '0778996508', '', 'lakshitha@gmail.com'),
(9, 16, 'buddu stores', '', 1, '0761082274', '', 'bluespottor@gmail.com'),
(10, 18, 'mobilo', '', 0, '0778996508', '', 'bluespottor@gmail.com'),
(11, 19, 'cable shop', '', 0, '0778996508', '', 'bluespottor@gmail.com'),
(12, 21, 'batapola antena', '', 1, '0778996508', '', 'lakshitha@gmail.com'),
(13, 23, 'mobilo', '', 1, '0779674241', '', 'lk@gmail.com'),
(14, 24, 'chargare', '', 0, '0761082274', '', 'lakshithalkmadushan@gmail.com'),
(15, 25, 'jojee shop', '', 1, '0123654789', '', 'joy@gmail.com'),
(16, 26, 'vijay shop', '', 1, '0745882365', '', 'vijay@gmail.com'),
(17, 27, 'SE shop', '', 1, '0777888999', '', 'n.w@gmail.com'),
(18, 32, 'budhika', 'buddu', 1, '0779674241', '', 'lakshitha779988@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` int(11) NOT NULL,
  `service_provider_id` int(11) DEFAULT NULL,
  `catogory_id` int(11) NOT NULL,
  `service_name` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `location` text NOT NULL,
  `contact_detail` text NOT NULL,
  `image_link` varchar(255) NOT NULL,
  `duration` time NOT NULL,
  `service_status` tinyint(1) NOT NULL,
  `view_count` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_id`, `service_provider_id`, `catogory_id`, `service_name`, `description`, `price`, `location`, `contact_detail`, `image_link`, `duration`, `service_status`, `view_count`) VALUES
(2, 1, 3, 'Repair phone screen', 'Damaged screen to broken integral part, we cover all major damages that can strike even from minor falls.', 20.00, 'Wewaldoowa,Kelaniya', '0778996508', 'ultra-screen-repair-768x480.jpg', '00:00:00', 0, 33),
(3, 1, 2, 'Water-damage repair', 'It does not matter whether it is one splash, one spill or full immersion in pool, we can still repair it.', 100.00, 'Dalugama,Kelaniya', '0778996508', 'water-damaged5.jpg', '00:00:00', 0, 6),
(4, 1, 2, 'Water damage reparing', 'It does not matter whether it is one splash, one spill or full immersion in pool, we can still repair it.', 80.00, 'Wattala rd,Kelaniya', '0778996508', 'water-damaged4.jpg', '00:00:00', 0, 4),
(5, 1, 2, 'Water damage reparing', 'we have resources and guides available to help with water damage of mobiles.', 70.00, 'Main street,Kiribathgoda', '0761082274', 'water-damaged3.jpg', '00:30:00', 1, 0),
(6, 1, 2, 'Water damage reparing', 'Blurry photos or weird sound could mean the inside is damaged.We Check the outside too. If it’s warped or the buttons are stuck, water might be inside.You can repair your phone form us.', 100.00, 'Dalugama,Kelaniya', '0774563230', 'water-damaged2.jpg', '00:30:00', 1, 0),
(7, 1, 5, 'USB port repairng', 'From minor charging issues to major signal detection faults, we fix all your mobile worries in no time.', 120.00, 'Wewaldoowa,Kelaniya', '0774563230', 'USB-C-Port-Repair.jpg', '00:30:00', 0, 0),
(8, 1, 1, 'Ultra screen repair', 'We offers the expertise and assurance of quality work.We repair your ultra screen.', 200.00, 'Borella,Colombo 08', '0774563230', 'ultra-screen-repair.jpg', '00:30:00', 1, 4),
(9, 1, 1, 'UI repair', 'Our experts repair any mobile display that looks active but does not respond to any touch commands.', 100.00, 'Dematagoda,Colombo 08', '0761082274', 'ui-repair.jpg', '00:30:00', 1, 2),
(10, 1, 6, 'Storage expansion', 'Whether you use an Android or iOS device, we can provide the service to add additional space you need to store your apps, media, and data.', 150.00, 'Colombo 10', '0776229523', 'storage-expansion.jpg', '00:30:00', 1, 0),
(11, 1, 7, 'Fix Phone', 'We can fix all complex faults including mobile battery not charging, not turning on or keep restarting.', 90.00, 'Nugegoda', '0742564797', 'squad-fix-phones.jpg', '00:30:00', 1, 0),
(12, 1, 3, 'Screen replacement', 'Damaged screen to broken integral part, we cover all major damages that can strike even from minor falls.', 140.00, 'Kiribathgoda', '0761082274', 'Smartphone-Screen-Replacement.jpg', '00:30:00', 1, 0),
(13, 1, 7, 'Smartphone Data recovery', 'Have you Lost your valuble mobile data.?We can recover your all data.', 100.00, 'Wewaldoowa,Kelaniya', '0774563230', 'Smartphone-Data-Recovery.jpg', '00:30:00', 1, 0),
(14, 1, 3, 'Screen damage reparing', 'Damaged screen to broken integral part, we cover all major damages that can strike even from minor falls.', 200.00, 'Wattala', '0776229523', 'screen-damage.jpg', '00:30:00', 1, 0),
(15, 1, 1, 'Repair phone screen', 'Our experts repair any mobile display that looks active but does not respond to any touch commands.', 150.00, 'Panadura', '0772417420', 'screen-repair.jpg', '00:30:00', 1, 3),
(16, 1, 3, 'Screen damage reparing', 'We repair your cracked screen.Join with us and get our expert service.', 200.00, 'Colombo fort', '0742564797', 'repair-a-phone-screen.jpg', '00:30:00', 1, 0),
(17, 1, 7, 'Mobile Reparing', 'We focus on customer satisfaction. We ensure that all ourservices offered are delivered with well experienced.', 400.00, 'Dalugama,Kelaniya', '0772417420', 'Mobile-Phone-Kickstand-Repair.jpg', '00:30:00', 1, 0),
(18, 1, 6, 'Mother board replacement', 'We assist any motherboard repair or replacement service for all mobile phones at reasonable rates.', 300.00, 'Colombo 10', '0776229523', 'Light-Sensor-Brightness-Control.jpg', '00:30:00', 1, 0),
(19, 1, 3, 'Repair phone screen', 'Damaged screen to broken integral part, we cover all major damages that can strike even from minor falls.', 200.00, 'Homagama', '0761082274', 'is-my-phone-broke.jpg', '00:00:00', 0, 0),
(20, 1, 1, 'Display failure reparing', 'Our experts repair any mobile display that looks active but does not respond to any touch commands.', 500.00, 'Colombo 10', '0772417420', 'iPhone-XR-Antenna-Repair.jpg', '00:30:00', 1, 1),
(21, 1, 1, 'Display Repair', 'Our experts repair any mobile display that looks active but does not respond to any touch commands.', 350.00, 'Pannipitiya', '0771234567', 'iPhone-Scratch-and-Crack-Repair.jpg', '00:30:00', 1, 0),
(22, 1, 6, 'Mother board replacement', 'We assist any motherboard repair or replacement service for all mobile phones at reasonable rates. |', 250.00, 'Kelaniya', '0742564797', 'iPhone-Face-ID-Repair.jpg', '00:30:00', 1, 0),
(23, 1, 5, 'Power Issues', 'We can fix all complex faults including mobile battery not charging, not turning on or keep restarting.', 100.00, 'Wewaldoowa,Kelaniya', '0776229523', 'Headphone-Jack-Fix.jpg', '00:30:00', 1, 0),
(24, 1, 7, 'Frame repair', 'Always reach out to us directly for an accurate quote for your smartphone’s screen repair.', 200.00, 'Panadura', '0761082274', 'Frame-Repair.jpg', '00:30:00', 1, 0),
(25, 1, 7, 'Dust Cleaning', 'We clean Your phones,laptops,watches.', 150.00, 'Borella,Colombo 08', '0776229523', 'Dust-Cleaning.jpg', '00:30:00', 1, 0),
(26, 1, 1, 'Display Repair', 'Our experts repair any mobile display that looks active but does not respond to any touch commands.', 200.00, 'Kiribathgoda', '0761082274', 'display failure.jpg', '00:30:00', 1, 0),
(27, 1, 3, 'Screen damage reparing', 'Our experts repair any mobile display that looks active but does not respond to any touch commands.', 300.00, 'Dalugama,Kelaniya', '0742564797', 'damaged4.jpg', '00:30:00', 1, 0),
(28, 1, 5, 'Chraging issues', 'From minor charging issues to major signal detection faults, we fix all your mobile worries in no time.', 100.00, 'Borella,Colombo 08', '0772417420', 'charging-issues.jpg', '00:30:00', 1, 0),
(29, 1, 5, 'Chraging issues', 'From minor charging issues to major signal detection faults, we fix all your mobile worries in no time.', 120.00, 'Colombo 10', '0776229523', 'charging-issue.jpg', '00:30:00', 1, 0),
(30, 1, 7, 'Button reparing', 'We can fix all complex faults including mobile battery not charging, not turning on or keep restarting.', 80.00, 'Dalugama,Kelaniya', '0776229523', 'button-repairing.jpg', '00:30:00', 1, 0),
(31, 1, 3, 'Screen damage reparing', 'Damaged screen to broken integral part, we cover all major damages that can strike even from minor falls.', 85.00, 'Borella,Colombo 08', '0761082274', 'cracked screen.jpg', '00:30:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `service_catogory`
--

CREATE TABLE `service_catogory` (
  `service_cat_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service_catogory`
--

INSERT INTO `service_catogory` (`service_cat_id`, `name`) VALUES
(1, 'Display Failure'),
(2, 'water-damaged repair'),
(3, 'Screen-damage repair'),
(5, 'Charging issues'),
(6, 'Motherboard-replacement'),
(7, 'Mobile reparing');

-- --------------------------------------------------------

--
-- Table structure for table `service_providers`
--

CREATE TABLE `service_providers` (
  `service_provider_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `service_name` varchar(100) DEFAULT NULL,
  `provider_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` int(11) NOT NULL,
  `location` text NOT NULL,
  `aproved` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service_providers`
--

INSERT INTO `service_providers` (`service_provider_id`, `user_id`, `service_name`, `provider_name`, `email`, `phone_number`, `location`, `aproved`) VALUES
(1, 2, 'phonerepair', 'jojee', 'joy@gmail.com', 740778227, '', 1),
(2, 6, 'hi', '', '', 0, '', 0),
(3, 1, 'phonerepair', '', '', 0, '', 0),
(5, 8, 'mobile reparing', 'sellex-phone', 'bluespottor@gmail.com', 778996508, '', 0),
(6, 32, 'mobile ', 'sellex-phone', 'lakshitha779988@gmail.com', 761082274, '', 0),
(7, 36, 'mobile reparing222', 'sellex-phone', 'lakshitha779988@gmail.com', 778996508, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `service_requests`
--

CREATE TABLE `service_requests` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `location` text NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `contact_number` int(11) NOT NULL,
  `accept` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service_requests`
--

INSERT INTO `service_requests` (`id`, `service_id`, `user_id`, `location`, `user_name`, `description`, `contact_number`, `accept`) VALUES
(3, 2, 24, 'batapola,ambalangoda', 'lakshitha madushan', 'hiiii', 778996508, 1),
(11, 2, 2, 'Ambalangoda,', 'lakshitha', 'ss', 778996508, 0),
(12, 2, 2, 'Ambalangoda,', 'lakshitha', 'ss', 778996508, 0),
(13, 2, 2, 'Ambalangoda,batapola', 'lakshitha madushan', 'hhh', 778996508, 0);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_details`
--

CREATE TABLE `shipping_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `address` text NOT NULL,
  `mobile_number` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `zip_code` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shipping_details`
--

INSERT INTO `shipping_details` (`id`, `order_id`, `address`, `mobile_number`, `email`, `zip_code`, `country`) VALUES
(2, 1, 'ambalangoda', '0778996508', '', '80320', 'sri lanka'),
(3, 2, 'ambalangoda', '0778996508', '', '80320', 'sri lanka'),
(4, 3, 'batapola', '0778996508', '', '320', 'dddddd'),
(5, 4, 'batapola', '0779674241', '', '1289', 'austalia'),
(6, 5, 'ambalangoda', '0778996508', '', '34002', 'sri lanka'),
(7, 6, 'has', '0761082274', '', '22', 'sri lanka'),
(8, 7, 'ss', '0778996508', '', '1289', 'sri lanka'),
(9, 8, 'ss', '0778996508', '', '1289', 'sri lanka'),
(10, 9, 'ss', '0778996508', '', '1289', 'sri lanka'),
(11, 11, 'aaa', '0761082274', '', '1289', 'sri lanka'),
(12, 12, 'sss', '0761082274', '', '34002', 'sri lanka'),
(13, 13, 'hooo', '0778996508', '', '1289', 'sri lanka'),
(14, 14, 'biii', '0778996508', '', '34002', 'ddd'),
(15, 15, 'sjhhF', '0778996508', '', '320', 'ddd'),
(16, 16, 'karandeniya', '0779674241', '', '22', 'sri lanka'),
(17, 17, 'pahiyangala', '09999', '', '2222', 'sr'),
(18, 18, 'ahungalla', '0778996508', '', '80320', 'sri lanka'),
(19, 20, 'No line1 available', '', '', 'No postal code available', 'No country available'),
(20, 21, 'No line1 available', '', '', 'No postal code available', 'No country available'),
(21, 22, 'No line1 available', '', '', 'No postal code available', 'No country available'),
(22, 23, 'No line1 available', '9993939333', '', 'No postal code available', 'No country available'),
(23, 24, 'No line1 available', '', '', 'No postal code available', 'No country available'),
(24, 25, 'No line1 available', '9993939333', '', 'No postal code available', 'No country available'),
(25, 26, 'No line1 available', '9993939333', '', 'No postal code available', 'No country available'),
(26, 27, 'No line1 available', '9993939333', '', 'No postal code available', 'No country available'),
(27, 28, 'No line1 available', '9993939333', '', 'No postal code available', 'No country available'),
(28, 29, '', '9993939333', '', '', ''),
(29, 30, '', '9993939333', '', '', ''),
(30, 31, '', '9993939333', '', '', ''),
(31, 32, '', '9993939333', '', '', ''),
(32, 33, '', '9993939333', '', '', ''),
(33, 34, '', '9993939333', '', '', ''),
(34, 35, '', '9993939333', '', '', ''),
(35, 36, '', '9993939333', '', '', ''),
(36, 37, 'No line1 available', '9993939333', '', 'No postal code available', 'No country available'),
(37, 38, 'No line1 available', '9993939333', '', 'No postal code available', 'No country available'),
(38, 39, 'No line1 available', '9993939333', '', 'No postal code available', 'No country available'),
(39, 40, 'No line1 available', '9993939333', '', 'No postal code available', 'No country available'),
(40, 41, 'No line1 available', '9993939333', '', 'No postal code available', 'No country available'),
(41, 42, 'batapola', '0778996508', '', '22', 'sri lanka'),
(42, 43, 'batapola', '0778996508', '', '34002', 'sri lanka'),
(43, 44, 'batapola', '0779674241', '', '1289', 'ddd'),
(44, 45, 'batapola', '0779674241', '', '1289', 'ddd'),
(45, 46, 'ambalngoda', '0778996508', '', '22', 'sri lanka'),
(46, 47, 'ambalngoda', '0778996508', '', '22', 'sri lanka'),
(47, 48, 'ssss', '0761082274', '', '11', 'aaaaaaa'),
(48, 49, 'ssss', '0761082274', '', '11', 'aaaaaaa'),
(49, 50, 'batpola namlsewna', '09999', '', '2222', 'sri'),
(50, 51, 'batpola namlsewna', '09999', '', '2222', 'sri'),
(51, 52, 'ahungalla', '0761082274', '', '1289', 'sri lanka'),
(52, 53, 'matara', '0778996508', '', '34002', 'sri lanka'),
(53, 54, 'kahawa', '0778996508', '', '80320', 'sri lanka'),
(54, 55, 'matara ahungalla', '0778996508', '', '80320', 'sri lanka'),
(55, 56, 'ahungalla ', '09999', '', '34002', 'sri lanka'),
(56, 57, 'ahungalla galwehera', '0778996508', '', '22', 'sri lanka'),
(57, 58, 'anuradapura', '0778996508', '', '1289', 'sri lanka'),
(58, 59, 'asas', '0778996508', '', '2222', 'aaa'),
(59, 60, 'matara', '0778996508', '', '34002', 'sri lanka'),
(60, 61, 'j', '0778996508', '', '320', 'sri lanka'),
(61, 62, 'j', '0778996508', '', '320', 'sri lanka'),
(62, 63, 'dhsgha', '0761082274', '', '1289', 'sri lanka'),
(63, 64, 'fff', '0778996508', '', '80320', 'sri lanka'),
(64, 65, 'gg', '0778996508', '', '1289', 'sri lanka'),
(65, 66, 'sss', '0778996508', '', '22', 'sri lanka'),
(66, 67, 'ambalngid', '0778996508', '', '22', 'ddd'),
(67, 68, 'dd', '0778996508', '', '22', 'sri lanka'),
(68, 69, 'hhhs', '0778996508', '', '320', '222'),
(69, 70, 'ddd', '0761082274', '', '80320', 'sri lanka'),
(70, 71, 'hhhh', '0779674241', '', '22', 'sri lanka'),
(71, 72, 'ambalngda badapola namalsewana', '0761082274', '', '20993', 'sri lanka'),
(72, 73, 'Abmalangoda', '778996508', '', '60000', 'sri lanka'),
(73, 74, 'afafa', '0778996508', '', '1111', 'ggsg'),
(74, 75, 'ambalangodda', '0778996508', '', '80320', 'sri lanka'),
(75, 76, 'llalal', '07789965088', '', '2222', 'sri lanka'),
(76, 77, 'sri lanka', '07789965088', '', '99888', 'sri lanka');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_type` enum('customer','seller','service_provider') DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `coin` int(11) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `mobile_number` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `country` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_type`, `username`, `password`, `email`, `coin`, `display_name`, `mobile_number`, `address`, `country`) VALUES
(1, '', 'lakshitha', '$2y$10$Rf9d/BLoAasuuZh4mf66Yub4lfB6GnVdEO1Lk3SBGu8Ngp4HLeo5i', 'lakshithalkmadushan@gmail.com', 0, '', '', '', ''),
(2, '', 'madushan', '$2y$10$Rf9d/BLoAasuuZh4mf66Yub4lfB6GnVdEO1Lk3SBGu8Ngp4HLeo5i', 'madusha-se21033@stu.kln.ac.lk', 0, 'lakshitha madushan', '0778996508', 'ambalangoda', 'sri lanka'),
(3, '', 'praveen', '$2y$10$Rf9d/BLoAasuuZh4mf66Yub4lfB6GnVdEO1Lk3SBGu8Ngp4HLeo5i', 'bluespottor@gmail.com', 0, '', '', '', ''),
(4, '', 'budhika', '$2y$10$Rf9d/BLoAasuuZh4mf66Yub4lfB6GnVdEO1Lk3SBGu8Ngp4HLeo5i', 'buddu@gmail.com', 0, '', '', '', ''),
(5, '', 'jojeeven', '$2y$10$Rf9d/BLoAasuuZh4mf66Yub4lfB6GnVdEO1Lk3SBGu8Ngp4HLeo5i', 'madusha-se21033@stu.kln.ac', 0, '', '', '', ''),
(6, '', 'buddu', '$2y$10$Rf9d/BLoAasuuZh4mf66Yub4lfB6GnVdEO1Lk3SBGu8Ngp4HLeo5i', 'madusha-se21033', 0, '', '', '', ''),
(7, '', 'lakshitha123', '$2y$10$Rf9d/BLoAasuuZh4mf66Yub4lfB6GnVdEO1Lk3SBGu8Ngp4HLeo5i', 'madusha-se21033@stu.kln.ac.lk', 0, '', '', '', ''),
(8, '', 'buddu1', '$2y$10$Rf9d/BLoAasuuZh4mf66Yub4lfB6GnVdEO1Lk3SBGu8Ngp4HLeo5i', 'lakshithalkmadushan@gmail.com', 0, '', '', '', ''),
(9, '', 'lakshitha9', '$2y$10$Rf9d/BLoAasuuZh4mf66Yub4lfB6GnVdEO1Lk3SBGu8Ngp4HLeo5i', 'bluespottor@gmail.com', 0, '', '', '', ''),
(10, '', 'lakshitha99', '$2y$10$Rf9d/BLoAasuuZh4mf66Yub4lfB6GnVdEO1Lk3SBGu8Ngp4HLeo5i', 'lakshithalkmadushan@gmail.com', 0, '', '', '', ''),
(11, '', 'lan1', '$2y$10$Rf9d/BLoAasuuZh4mf66Yub4lfB6GnVdEO1Lk3SBGu8Ngp4HLeo5i', 'bluespottor@gmail.com', 0, '', '', '', ''),
(12, '', 'lak2', '$2y$10$Rf9d/BLoAasuuZh4mf66Yub4lfB6GnVdEO1Lk3SBGu8Ngp4HLeo5i', 'lakshithalkmadushan@gmail.com', 0, '', '', '', ''),
(13, '', 'lak123', '$2y$10$Rf9d/BLoAasuuZh4mf66Yub4lfB6GnVdEO1Lk3SBGu8Ngp4HLeo5i', 'lakshithalkmadushan@gmail.com', 0, '', '', '', ''),
(14, '', 'lakshithalk', '$2y$10$Rf9d/BLoAasuuZh4mf66Yub4lfB6GnVdEO1Lk3SBGu8Ngp4HLeo5i', 'lakshithalkmadushan@gmail.com', 0, '', '', '', ''),
(15, '', 'lakyy', '$2y$10$Rf9d/BLoAasuuZh4mf66Yub4lfB6GnVdEO1Lk3SBGu8Ngp4HLeo5i', 'lk@gmail.com', 0, '', '', '', ''),
(16, '', 'buddu33', '$2y$10$Rf9d/BLoAasuuZh4mf66Yub4lfB6GnVdEO1Lk3SBGu8Ngp4HLeo5i', 'madusha-se21033@stu.kln.ac.lk', 0, '', '', '', ''),
(17, '', 'jhone', '$2y$10$Rf9d/BLoAasuuZh4mf66Yub4lfB6GnVdEO1Lk3SBGu8Ngp4HLeo5i', 'jhone@gmail.com', 0, '', '', '', ''),
(18, '', 'buddu88', '$2y$10$Rf9d/BLoAasuuZh4mf66Yub4lfB6GnVdEO1Lk3SBGu8Ngp4HLeo5i', 'lakshithalkmadushan@gmail.com', 0, '', '', '', ''),
(19, '', 'lakshitha33', '$2y$10$Rf9d/BLoAasuuZh4mf66Yub4lfB6GnVdEO1Lk3SBGu8Ngp4HLeo5i', 'lakshithalkmadushan@gmail.com', 0, '', '', '', ''),
(20, '', 'madu2', '$2y$10$Rf9d/BLoAasuuZh4mf66Yub4lfB6GnVdEO1Lk3SBGu8Ngp4HLeo5i', 'lakshitha@gmail.com', 0, '', '', '', ''),
(21, '', 'buddu77', '$2y$10$Rf9d/BLoAasuuZh4mf66Yub4lfB6GnVdEO1Lk3SBGu8Ngp4HLeo5i', 'lakshitha779988@gmail.com', 0, '', '', '', ''),
(22, '', 'induwara', '$2y$10$Rf9d/BLoAasuuZh4mf66Yub4lfB6GnVdEO1Lk3SBGu8Ngp4HLeo5i', 'lakshitha@gmail.com', 0, 'lakshitha madushan', '0778996508', 'ambalangoda,batapola', 'australia'),
(23, '', 'john', '$2y$10$Rf9d/BLoAasuuZh4mf66Yub4lfB6GnVdEO1Lk3SBGu8Ngp4HLeo5i', 'lk@gmail.com', 0, '', '', '', ''),
(24, '', 'lakshitha2002', '$2y$10$Rf9d/BLoAasuuZh4mf66Yub4lfB6GnVdEO1Lk3SBGu8Ngp4HLeo5i', 'lakshitha779988@gmail.com', 0, 'lakshitha madushan', '0778996508', '', ''),
(25, '', 'jojee', '$2y$10$Rf9d/BLoAasuuZh4mf66Yub4lfB6GnVdEO1Lk3SBGu8Ngp4HLeo5i', 'joy@gmail.com', 0, '', '', '', ''),
(26, '', 'vijay', '$2y$10$Rf9d/BLoAasuuZh4mf66Yub4lfB6GnVdEO1Lk3SBGu8Ngp4HLeo5i', 'vijay@gmail.com', 0, '', '', '', ''),
(27, '', 'n.warnagith', '$2y$10$Rf9d/BLoAasuuZh4mf66Yub4lfB6GnVdEO1Lk3SBGu8Ngp4HLeo5i', 'n.w@gmail.com', 0, '', '', '', ''),
(28, '', 'lak87', '$2y$10$Rf9d/BLoAasuuZh4mf66Yub4lfB6GnVdEO1Lk3SBGu8Ngp4HLeo5i', 'lakshitha779988@gmail.com', 0, '', '', '', ''),
(29, '', 'praveen1', '$2y$10$Rf9d/BLoAasuuZh4mf66Yub4lfB6GnVdEO1Lk3SBGu8Ngp4HLeo5i', 'lakshithamadushancampus@gmail.com', 0, '', '', '', ''),
(30, '', 'kk', '$2y$10$Rf9d/BLoAasuuZh4mf66Yub4lfB6GnVdEO1Lk3SBGu8Ngp4HLeo5i', 'lk@gmail.com', 0, '', '', '', ''),
(31, '', 'madushan33', '$2y$10$Rf9d/BLoAasuuZh4mf66Yub4lfB6GnVdEO1Lk3SBGu8Ngp4HLeo5i', 'bb@gmail.com', 0, '', '', '', ''),
(32, '', 'madushan322', '$2y$10$0kSd8FZ3isnXroQMtncbZ./VmtmR5U9GDrHka.6ctZitCjnRyqo5q', 'mm@gmail.com', 0, '', '', '', ''),
(33, '', 'user01', '$2y$10$GJgSov4UkoAV/4OeC/kjoeUE/4xH/j35J3MOiG3wpO.aMtVEONM0O', 'user@gmail.com', 0, '', '', '', ''),
(34, '', 'user2', '$2y$10$OQ/e4zo3AZg1R5jiiiaxKOh6v4GQe58OKxlrfLnXaFZPj.jnLnH/C', 'user2@gmail.com', 0, '', '', '', ''),
(35, '', 'user3', '$2y$10$umDnKLFWthA7q4W7D10jbuhImyawPBEaMZY1CQzgAVxRGubstu6UW', 'gg@gmail.com', 0, '', '', '', ''),
(36, '', 'user1', '$2y$10$iQ/IE3V40rID7caXeoK0tuJtG7Si91XLUSlOmEayJDXKm5dsktrPe', 'user333@gmail.com', 0, '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `cart_product_items`
--
ALTER TABLE `cart_product_items`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `cart_id` (`cart_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `cart_service_items`
--
ALTER TABLE `cart_service_items`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `cart_id` (`cart_id`),
  ADD KEY `service_id` (`service_id`);

--
-- Indexes for table `featured_products`
--
ALTER TABLE `featured_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invalid_search_quary`
--
ALTER TABLE `invalid_search_quary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `cart_it` (`cart_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `seller_id` (`seller_id`),
  ADD KEY `catogory_id` (`catogory_id`);

--
-- Indexes for table `product_catogory`
--
ALTER TABLE `product_catogory`
  ADD PRIMARY KEY (`product_cat_id`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`promotion_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratings_ibfk_1` (`product_id`),
  ADD KEY `ratings_ibfk_2` (`user_id`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`seller_id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`),
  ADD KEY `service_provider_id` (`service_provider_id`),
  ADD KEY `catogory_id` (`catogory_id`);

--
-- Indexes for table `service_catogory`
--
ALTER TABLE `service_catogory`
  ADD PRIMARY KEY (`service_cat_id`);

--
-- Indexes for table `service_providers`
--
ALTER TABLE `service_providers`
  ADD PRIMARY KEY (`service_provider_id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `service_requests`
--
ALTER TABLE `service_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_id` (`service_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `shipping_details`
--
ALTER TABLE `shipping_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `cart_product_items`
--
ALTER TABLE `cart_product_items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `cart_service_items`
--
ALTER TABLE `cart_service_items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `featured_products`
--
ALTER TABLE `featured_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `invalid_search_quary`
--
ALTER TABLE `invalid_search_quary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `product_catogory`
--
ALTER TABLE `product_catogory`
  MODIFY `product_cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `promotion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sellers`
--
ALTER TABLE `sellers`
  MODIFY `seller_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `service_catogory`
--
ALTER TABLE `service_catogory`
  MODIFY `service_cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `service_providers`
--
ALTER TABLE `service_providers`
  MODIFY `service_provider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `service_requests`
--
ALTER TABLE `service_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `shipping_details`
--
ALTER TABLE `shipping_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `cart_product_items`
--
ALTER TABLE `cart_product_items`
  ADD CONSTRAINT `cart_product_items_ibfk_1` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`cart_id`),
  ADD CONSTRAINT `cart_product_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `cart_service_items`
--
ALTER TABLE `cart_service_items`
  ADD CONSTRAINT `cart_service_items_ibfk_1` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`cart_id`),
  ADD CONSTRAINT `cart_service_items_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `services` (`service_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`cart_id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `order_items_ibfk_3` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`seller_id`) REFERENCES `sellers` (`seller_id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`catogory_id`) REFERENCES `product_catogory` (`product_cat_id`);

--
-- Constraints for table `promotions`
--
ALTER TABLE `promotions`
  ADD CONSTRAINT `promotions_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `sellers`
--
ALTER TABLE `sellers`
  ADD CONSTRAINT `sellers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_ibfk_1` FOREIGN KEY (`service_provider_id`) REFERENCES `service_providers` (`service_provider_id`),
  ADD CONSTRAINT `services_ibfk_2` FOREIGN KEY (`catogory_id`) REFERENCES `service_catogory` (`service_cat_id`);

--
-- Constraints for table `service_providers`
--
ALTER TABLE `service_providers`
  ADD CONSTRAINT `service_providers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `service_requests`
--
ALTER TABLE `service_requests`
  ADD CONSTRAINT `service_requests_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `services` (`service_id`),
  ADD CONSTRAINT `service_requests_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `shipping_details`
--
ALTER TABLE `shipping_details`
  ADD CONSTRAINT `shipping_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
