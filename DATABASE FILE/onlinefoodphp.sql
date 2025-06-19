-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2024 at 04:21 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinefoodphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(1, 'admin', 'CAC29D7A34687EB14B37068EE4708E7B', 'admin@mail.com', '', '2022-05-27 13:21:52');

-- --------------------------------------------------------

--
-- Table structure for table `com_delivery`
--

CREATE TABLE `com_delivery` (
  `Complite_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `title` varchar(30) NOT NULL,
  `quantity` int(10) NOT NULL,
  `price` int(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `Delivery_id` int(10) NOT NULL,
  `DB_Name` varchar(20) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `Pay_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `com_delivery`
--

INSERT INTO `com_delivery` (`Complite_id`, `username`, `title`, `quantity`, `price`, `status`, `address`, `Delivery_id`, `DB_Name`, `date`, `Pay_status`) VALUES
(24, 'parv_', 'Thepla', 1, 60, 'closed', 'Rupal Gandhinagar 382612', 4, 'parv somani ', '2023-03-11 11:16:48', 'PAYED');

-- --------------------------------------------------------

--
-- Table structure for table `db`
--

CREATE TABLE `db` (
  `User_id` int(11) NOT NULL,
  `DB_Name` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `Delivery_name` varchar(20) NOT NULL,
  `Delivery_id` int(30) NOT NULL,
  `Mobile` bigint(10) NOT NULL,
  `Address` varchar(39) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `db`
--

INSERT INTO `db` (`User_id`, `DB_Name`, `Email`, `Password`, `Delivery_name`, `Delivery_id`, `Mobile`, `Address`, `date`) VALUES
(11, 'kevin', 'kevin@gmail.com', 'kevin$123', 'pizza', 11, 9898123456, 'jklklklkl', '2024-03-10 19:59:04'),
(12, 'parv', 'parv@db.com', 'parv', '', 777, 9876512345, 'ahmedabad', '2024-03-10 20:09:06');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(17, 4, 'Sada Dosa', 'Serves 1 | Tawa- toasted, crispy dosas made from rice batter.', '110.00', '65eee809c2aaa.jpg'),
(18, 4, 'Masala Uttapam', 'Soft and spopngy dosas stuffed with a delicious masala.', '250.00', '65eee846a5c99.jpg'),
(19, 4, 'Onion Masala Dosa', 'Crispy and delicious dosa folded in with masala and topped with onions.', '190.00', '65eeed620f221.jpg'),
(20, 4, 'Mysore soda dosa', 'A semi-spicy, crispy and delicious dosa cooked to perfection', '140.00', '65eeee735cb86.jpg'),
(21, 4, 'Masala uttapam', 'Soft and spopngy dosas stuffed with a delicious masala', '290.00', '65eeeea98dee7.jpg'),
(22, 3, 'Punjabi Fix Thail', ' Paneer Tikka + Mix Veg + Dal Fry + Jira Rice + 5 Roti Tawa(Tandoori Roti) + Salad + Sweet', '130.00', '65eef32d2774f.jpg'),
(23, 3, 'Paneer Yellow Dal Tadka Paratha Thali', 'Simple yet amazingly flavourful paneer dish made with soft paneer cubes cooked, ', '220.00', '65eef3fa93c8e.jpg'),
(24, 3, 'Punjabi Rajma Khichdi', 'A flavourful paratha thali! Enjoy scoops of soft whole wheat paratha with', '180.00', '65eef4e9e4837.jpg'),
(25, 3, 'Paneer Makhmail and Paratha', 'Enjoy the rich and creamy flavours of Paneer Makhmali served with fresh and warm Parathas.', '230.00', '65eef5467da94.jpg'),
(26, 3, 'Paneer  Makhmail and Paratha Meal', '(Contains Onion and garlic)Two warm & fresh Aloo Paratha served with a', '330.00', '65eef5cf1317c.jpg'),
(27, 2, 'Thepla (5 Pcs)', 'Delicious Indian snack bursting with flavors and aromas', '60.00', '65eefb42a7ac1.jpg'),
(28, 2, 'SP. Gujarati Thali', 'A Special Gujarati Thali', '120.00', '65eefc31141e4.jpg'),
(29, 2, 'Sev Khamani', 'Delicious Gujarati Food Item', '110.00', '65eefca65c41b.jpg'),
(30, 2, 'Vatidal Khaman', 'An Amazing and Delicious Gujarati Snack', '100.00', '65eefd1e6dc43.jpg'),
(31, 2, 'Fafda', 'A Crunchy Snack of gujarat', '120.00', '65eefdc3ae91d.jpg'),
(32, 1, 'Smoke Chilli Macroni Veg', ' Macaroni n cheese veg with a unique smoked chilli flavour. ', '165.00', '65ef05ffac750.jpg'),
(33, 1, 'Veg Lasanga Pesto', 'Onions, Sweet Corn, Paneer, Capsicum Topped With Pesto Sauce And Cheese', '299.00', '65ef05c1c3215.jpg'),
(34, 1, 'Cheesy Garlic Bread', ' 1 Pc || Garlic bread baked to perfection with cheese.', '120.00', '65ef06caa835b.jpg'),
(35, 1, 'Cheezy 7 Pizza', 'An Exotic Combination of White Mozzarilla, Cream White Cheese, Cheddar, Monterey Jack, Cream Orange Cheese, Colby, Orange Cheddar', '275.00', '65ef072fd1a8d.jpg'),
(36, 1, 'Double Cheese Margherita', 'Loaded with extra cheese', '195.00', '65ef07841bafc.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `SR_NO` int(11) NOT NULL,
  `payment_id` varchar(30) NOT NULL,
  `Cust_name` varchar(30) NOT NULL,
  `Delivery_Name` varchar(10) NOT NULL,
  `o_id` varchar(20) NOT NULL,
  `Price` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `Delivery_ID` int(10) NOT NULL,
  `Title` varchar(20) NOT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`SR_NO`, `payment_id`, `Cust_name`, `Delivery_Name`, `o_id`, `Price`, `date`, `Delivery_ID`, `Title`, `status`) VALUES
(65, 'PAY24135END', 'Shusti', 'priyanshu ', '203', 100, '2023-03-27 22:45:18', 4, 'Thepla', 'in process'),
(66, 'PAY28778END', 'Shusti', 'priyanshu ', '203', 100, '2023-03-27 22:46:48', 4, 'Fafda', 'closed'),
(67, 'PAY32436END', 'dharati ', 'Jay makava', '206', 250, '2023-03-28 00:11:47', 6, 'Sada dosa', 'closed');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(1, 2, 'in process', 'none', '2022-05-01 05:17:49'),
(2, 3, 'in process', 'none', '2022-05-27 11:01:30'),
(3, 2, 'closed', 'thank you for your order!', '2022-05-27 11:11:41'),
(4, 3, 'closed', 'none', '2022-05-27 11:42:35'),
(5, 4, 'in process', 'none', '2022-05-27 11:42:55'),
(6, 1, 'rejected', 'none', '2022-05-27 11:43:26'),
(7, 7, 'in process', 'none', '2022-05-27 13:03:24'),
(8, 8, 'in process', 'none', '2022-05-27 13:03:38'),
(9, 9, 'rejected', 'thank you', '2022-05-27 13:03:53'),
(10, 7, 'closed', 'thank you for your ordering with us', '2022-05-27 13:04:33'),
(11, 8, 'closed', 'thanks ', '2022-05-27 13:05:24'),
(12, 5, 'closed', 'none', '2022-05-27 13:18:03'),
(13, 26, 'closed', 'very fast delivery', '2024-03-11 15:59:08'),
(14, 27, 'in process', 'stet', '2024-03-11 16:00:52'),
(15, 32, 'in process', 'good', '2024-03-11 18:01:32');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(1, 0, 'Italian', 'nthavern@mail.com', '3547854700', 'www.northstreettavern.com', '9am', '8pm', '24hr-x7', 'Kudasan , Gandhinagar', '65eeff6c1b95c.jpg', '2024-03-11 12:56:12'),
(2, 0, 'Gujarati food ', 'parv@gmail.com', '0557426406', 'www.eataly.com', '9am', '8pm', 'mon-sat', ' Gandhinagar Gh6    ', '65eefea956adb.jpg', '2024-03-11 12:52:57'),
(3, 0, 'Punjabi food', 'dhuvi45@mail.com', '1458745855', 'www.nanxiangbao45.com', '9am', '7pm', 'mon-thu', 'Gandhinagar sector 23 ', '65eeeff2e8ea1.jpg', '2024-03-11 11:50:10'),
(4, 6, 'South indian ', 'kevin@mail.com', '6545687458', 'www.hbg.com', '10am', '8pm', 'mon-sat', 'Sector 28 ,Gandhinagar', '65eeeb6f172ca.jpg', '2024-03-11 11:30:55');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(7, 'pavu_', 'parv', 'somani', 'parv@gmail.com', '9898712345', '05ff92e289be7752444366b2beed5b44', 'D-502, Nishan Avenue , New Ranip , Ahmedabad', 1, '2024-03-10 13:08:55'),
(8, 'kevin_', 'Kevin', 'Rakholiya', 'kevin@gmail.com', '9898812345', '80fca39e6359f75cdcf018073ad34788', 'Gandhinagar', 1, '2024-03-11 17:21:53'),
(9, 'kevin_patel ', 'kevin', 'patel', 'patel@gmail.com', '8140243964', 'a588f61c13a948386072c24916554b58', 'dcdkcrngvgrv', 1, '2024-03-11 17:56:06');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(1, 4, 'Spring Rolls', 2, '6.00', 'rejected', '2022-05-27 11:43:26'),
(2, 4, 'Prawn Crackers', 1, '7.00', 'closed', '2022-05-27 11:11:41'),
(3, 5, 'Chicken Madeira', 1, '23.00', 'closed', '2022-05-27 11:42:35'),
(4, 5, 'Cheesy Mashed Potato', 1, '5.00', 'in process', '2022-05-27 11:42:55'),
(5, 5, 'Meatballs Penne Pasta', 1, '10.00', 'closed', '2022-05-27 13:18:03'),
(6, 5, 'Yorkshire Lamb Patties', 1, '14.00', NULL, '2022-05-27 11:40:51'),
(7, 6, 'Yorkshire Lamb Patties', 1, '14.00', 'closed', '2022-05-27 13:04:33'),
(8, 6, 'Lobster Thermidor', 1, '36.00', 'closed', '2022-05-27 13:05:24'),
(9, 6, 'Stuffed Jacket Potatoes', 1, '8.00', 'rejected', '2022-05-27 13:03:53'),
(10, 0, 'Yorkshire Lamb Patties', 1, '14.00', '', '0000-00-00 00:00:00'),
(11, 0, 'Lobster Thermidor', 1, '36.00', '', '0000-00-00 00:00:00'),
(12, 0, 'Pink Spaghetti Gamberoni', 1, '21.00', '', '0000-00-00 00:00:00'),
(13, 0, 'Yorkshire Lamb Patties', 1, '14.00', '', '0000-00-00 00:00:00'),
(14, 0, 'Lobster Thermidor', 4, '36.00', '', '0000-00-00 00:00:00'),
(15, 0, 'Lobster Thermidor', 8, '36.00', '', '0000-00-00 00:00:00'),
(16, 0, 'Lobster Thermidor', 9, '36.00', '', '0000-00-00 00:00:00'),
(17, 0, 'Manchurian Chicken', 19, '11.00', '', '0000-00-00 00:00:00'),
(25, 7, 'Masala Uttapam', 1, '250.00', NULL, '2024-03-11 11:40:24'),
(26, 7, 'Sada Dosa', 1, '110.00', 'closed', '2024-03-11 15:59:08'),
(27, 7, 'Paneer  Makhmail and Paratha Meal', 1, '330.00', 'in process', '2024-03-11 16:00:52'),
(28, 31, 'Punjabi Fix Thail', 1, '130.00', NULL, '2024-03-11 15:57:51'),
(29, 8, 'SP. Gujarati Thali', 1, '120.00', NULL, '2024-03-11 17:48:53'),
(30, 9, 'Thepla (5 Pcs)', 1, '60.00', NULL, '2024-03-11 17:58:45'),
(31, 9, 'Vatidal Khaman', 1, '100.00', NULL, '2024-03-11 17:58:45'),
(32, 9, 'Fafda', 1, '120.00', 'in process', '2024-03-11 18:01:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `com_delivery`
--
ALTER TABLE `com_delivery`
  ADD PRIMARY KEY (`Complite_id`);

--
-- Indexes for table `db`
--
ALTER TABLE `db`
  ADD PRIMARY KEY (`User_id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`SR_NO`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `com_delivery`
--
ALTER TABLE `com_delivery`
  MODIFY `Complite_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `db`
--
ALTER TABLE `db`
  MODIFY `User_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `SR_NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
