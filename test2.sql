-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2024 at 03:19 PM
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
-- Database: `test2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `mobile` varchar(14) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `mobile`, `password`) VALUES
(1, 'kishan2', 'pandeymud237@gmail.com', '7471164124', '1234'),
(2, 'ram', 'pandey@gmail.com', '123456787654', '1234'),
(3, 'aman', 'pandeykishan237@gmail.com', '7471164125', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `cart_table`
--

CREATE TABLE `cart_table` (
  `id` int(11) NOT NULL,
  `user_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `product_price` varchar(200) NOT NULL,
  `product_image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart_table`
--

INSERT INTO `cart_table` (`id`, `user_id`, `product_id`, `product_name`, `product_price`, `product_image`) VALUES
(9, 4, 2, 'Rice', '250rs/kg', '1706855068.jpeg'),
(23, 4, 1, 'dal', '250', '1706868924.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `total_ammount` varchar(200) NOT NULL,
  `payment_method` varchar(200) NOT NULL,
  `address` longtext NOT NULL,
  `user_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `total_ammount`, `payment_method`, `address`, `user_id`) VALUES
(1, '250', 'WALLET', 'address', 4),
(2, '0', 'NET BANKING', '01 bharhut district satna m.p.', 4),
(3, '160', 'NET BANKING', 'vijay nager', 4),
(4, '0', 'select payment', '', 4),
(5, '500', 'UPI', 'address', 2),
(6, '250', 'WALLET', 'address', 2),
(7, '250', 'select payment', '', 1),
(8, '600', 'UPI', 'indore', 1),
(9, '1220', 'NET BANKING', 'indore ', 1),
(10, '620', 'UPI', 'indore', 1),
(11, '1150', 'select payment', '', 1),
(12, '250', 'select payment', '', 1),
(13, '350', 'select payment', '', 1),
(14, '1100', 'select payment', '', 1),
(15, '600', 'select payment', '', 6),
(16, '140', 'select payment', '', 6),
(17, '600', 'select payment', '', 6),
(18, '600', 'select payment', '', 6),
(19, '600', 'select payment', '', 6),
(20, '100', 'select payment', '', 6),
(21, '100', 'select payment', '', 6),
(22, '360', 'select payment', '', 6),
(23, '700', 'COD', 'bhawarkua indore ', 3),
(24, '620', 'COD', 'vijay nagar ', 3);

-- --------------------------------------------------------

--
-- Table structure for table `order_item_table`
--

CREATE TABLE `order_item_table` (
  `id` int(11) NOT NULL,
  `product_id` int(10) NOT NULL,
  `quntity` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_item_table`
--

INSERT INTO `order_item_table` (`id`, `product_id`, `quntity`, `user_id`, `order_id`) VALUES
(1, 2, 2, 4, 2),
(2, 4, 2, 2, 3),
(3, 2, 5, 2, 3),
(4, 2, 1, 4, 4),
(5, 2, 2, 4, 6),
(6, 2, 2, 4, 8),
(7, 2, 1, 4, 1),
(8, 4, 1, 4, 3),
(9, 2, 2, 2, 5),
(10, 2, 1, 2, 6),
(11, 2, 1, 1, 7),
(12, 2, 2, 1, 8),
(13, 1, 2, 1, 9),
(14, 2, 2, 1, 9),
(15, 3, 2, 1, 9),
(16, 2, 2, 1, 10),
(17, 1, 2, 1, 10),
(18, 3, 1, 1, 11),
(19, 1, 1, 1, 11),
(20, 4, 1, 1, 11),
(21, 5, 1, 1, 11),
(22, 1, 1, 1, 12),
(23, 1, 1, 1, 13),
(24, 1, 2, 1, 14),
(25, 1, 2, 1, 14),
(26, 1, 2, 6, 15),
(27, 2, 4, 6, 16),
(28, 1, 2, 6, 19),
(29, 1, 1, 6, 22),
(30, 2, 1, 6, 22),
(31, 3, 3, 3, 23),
(32, 1, 2, 3, 24),
(33, 2, 2, 3, 24);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` longtext NOT NULL,
  `price` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `image`) VALUES
(1, 'dal', 'tuar dal', '250', '1706868924.jpeg'),
(2, 'roti', 'roti', '10rs', '1706868967.jpg'),
(3, 'idli', 'idly', '200rs', '1706869035.jpg'),
(4, 'pizza', 'pizza', '400rs', '1706869077.jpg'),
(5, 'pasta', 'pasta', '200rs', '1706869106.jpg'),
(6, 'rice', 'rice', '200rs', '1706872625.jpeg'),
(7, 'momos', ';kytsarzxgkkj;hlgkd', '200rs', '1706881108.jpg'),
(8, 'bag', 'oiuytreghjjdytrzdgh', '250', '1706881142.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(14) NOT NULL,
  `password` varchar(100) NOT NULL,
  `address` longtext NOT NULL,
  `userfile` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `mobile`, `password`, `address`, `userfile`) VALUES
(1, 'aman', 'pandeymud27@gmail.com', '7471164122', '1234', 'address', 'AdobeStock_229774819_Preview1.jpeg'),
(2, 'aman', 'pandeykishan237@gmail.com', '7471164124', '1234', 'vijay nager', 'AdobeStock_274569206_Preview.jpeg'),
(3, 'dadu', 'dadu@gmail.com', '7471164130', '1234', 'bangali', 'window-3042834_1280.jpg'),
(4, 'aman', '12@gmail.com', '1234567', '1234', 'address', ''),
(5, 'rohan', 'ro@gmail.com', '74747744', '1234', 'satna', 'modern-minimalist-bathroom-3115450_1280.jpg'),
(6, 'kishan2', 'pandeymud@gmail.com', '0987654357', '1234', 'address', 'bedroom-6778193_1280.jpg'),
(7, 'aman', '123@gmail.com', '00000000000', '1234', '000000000', 'images_(1).jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_table`
--
ALTER TABLE `cart_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_item_table`
--
ALTER TABLE `order_item_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cart_table`
--
ALTER TABLE `cart_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `order_item_table`
--
ALTER TABLE `order_item_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
