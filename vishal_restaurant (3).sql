-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2019 at 08:54 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vishal_restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(1, 'Hyderabadi Biryani'),
(2, 'Lucknowi Biryani'),
(3, 'Kebab'),
(4, 'Beverages'),
(5, 'Dessert'),
(6, 'Korma');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_id` int(11) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `ph_no` varchar(20) NOT NULL,
  `full_name` varchar(20) NOT NULL,
  `email_id` varchar(40) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `locality` varchar(30) DEFAULT NULL,
  `date_joined` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_id`, `password`, `ph_no`, `full_name`, `email_id`, `state`, `city`, `locality`, `date_joined`) VALUES
(3, '123', '7838938738', 'Md', 'mohammadsaqulain18@gmail.com', 'Haryana', 'Haryana', NULL, NULL),
(4, '123', '9899157445', 'Md', 'sasa@gmail.com', 'Haryana', 'Haryana', NULL, NULL),
(5, '1234', '7838938739', 'Md ', 'mohammadsaqulain18@gmail.com', 'Haryana', 'Haryana', NULL, NULL),
(6, 'asasa', '7838938731', 'sasas', 'moham@gmail.com', 'Haryana', 'Haryana', NULL, NULL),
(7, 'nasir@123', '8377949601', 'Nasir ', '1419nasir@gmail.com', 'Haryana', 'Haryana', NULL, NULL),
(8, '1234', '9899157446', 'Mohd', 'mohd@gmail.com', 'Haryana', 'Gurgaon', 'Rajeev Nagar', NULL),
(9, '1234', '9899154776', 'new', 'mohd@gmail.com', 'Haryana', 'Gurgaon', 'Sector 5', NULL),
(10, '1234', '9899154773', 'new', 'mohd@gmail.com', 'Haryana', 'Gurgaon', 'Sector 5', NULL),
(12, '1212', '1212121', 'asasas', 'sasasa', 'Haryana', 'Gurgaon', 'Sector 17', NULL),
(13, '1212', '12121212', 'ssasas', 'sasas', 'Haryana', 'Gurgaon', 'Sector 14', NULL),
(14, '1234', '7838938736', 'New Data', 'mohad@gmail.com', 'Haryana', 'Gurgaon', 'Sector 4', '2019/07/31'),
(15, '1234', '7838938735', 'NewDtaa', 'sasasasa', 'Haryana', 'Gurgaon', 'Sector 4', '2019/07/31'),
(16, '1234', '7838938733', 'new data g', 'sasasa@gmail.com', 'Haryana', 'Gurgaon', 'Sector 14', '2019/07/31'),
(19, '1234', '8888888888', 'all data is new', 'mhshas@gmail.com', 'Haryana', 'Gurgaon', 'Sector 17', '2019/07/31'),
(20, '1234', '9898989898', 'check it', 'sahsa@gmail.com', 'Haryana', 'Gurgaon', 'Rajeev Nagar', '2019/07/31');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `item_name` varchar(40) DEFAULT NULL,
  `price` decimal(5,2) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `category_id`, `item_name`, `price`, `image`) VALUES
(1, 1, 'Hyderabadi Chicken Biryani 1/2 Kg', '200.00', 'hyderabadi-biryani-recipe-500x500.jpg'),
(2, 1, 'Hyderabadi Veg Biryani 1/2 Kg', '150.00', 'big_biryani-10300.jpg'),
(4, 1, 'Hyderabadi Mutton 1/2 Kg', '300.00', 'big_biryani-10300.jpg'),
(5, 1, 'Hyderabadi Egg 1/2 Kg', '150.00', 'hyderabadi-biryani-recipe-500x500.jpg'),
(6, 2, 'Awadhi Veg 1/2 Kg', '150.00', 'awadhi-chicken-biryani-.jpg'),
(7, 2, 'Awadhi Murg 1/2 Kg', '200.00', 'awadhi-chicken-biryani-.jpg'),
(8, 2, 'Awadhi Mutton 1/2 Kg', '300.00', 'awadhi-chicken-biryani-.jpg'),
(10, 3, 'Chicken Seekh', '200.00', 'chicken.seekh.jpg'),
(12, 4, 'Pepsi 650 ml', '40.00', 'Pepsi-16oz.jpg'),
(13, 4, 'Coke 650 ml', '40.00', 'coke.jpg'),
(14, 1, 'Hyderabadi Chicken Biryani 1 Kg', '350.00', 'hyderabadi-biryani-recipe-500x500.jpg'),
(15, 1, 'Hyderabadi Veg Biryani 1 Kg', '300.00', 'hyderabadi-biryani-recipe-500x500.jpg'),
(17, 1, 'Hyderabadi Mutton 1 Kg', '450.00', 'hyderabadi-biryani-recipe-500x500.jpg'),
(18, 1, 'Hyderabadi Egg 1 Kg', '250.00', 'hyderabadi-biryani-recipe-500x500.jpg'),
(19, 2, 'Awadhi Veg 1 Kg', '250.00', 'awadhi-chicken-biryani-.jpg'),
(20, 2, 'Awadhi Murg 1 Kg', '350.00', 'awadhi-chicken-biryani-.jpg'),
(21, 2, 'Awadhi Mutton 1 Kg', '450.00', 'awadhi-chicken-biryani-.jpg'),
(22, 3, 'Veg Shami Kebab', '200.00', 'chicken.seekh.jpg'),
(23, 3, 'Veg Galouti Kebab', '200.00', 'chicken.seekh.jpg'),
(24, 3, 'Mutton Galouti Kebab', '375.00', 'chicken.seekh.jpg'),
(25, 3, 'Chicken Galouti Kebab', '325.00', 'chicken.seekh.jpg'),
(26, 3, 'Chicken Boti Kebab', '325.00', 'chicken.seekh.jpg'),
(27, 3, 'Chicken Angara Kebab', '325.00', 'chicken.seekh.jpg'),
(28, 3, 'Kakori Kebab', '375.00', 'chicken.seekh.jpg'),
(29, 6, 'Paneer Tamatar K Kut', '300.00', 'chicken.seekh.jpg'),
(30, 6, 'Veg Korma', '250.00', 'chicken.seekh.jpg'),
(31, 6, 'Chicken Changezi', '350.00', 'chicken.seekh.jpg'),
(32, 6, 'Chicken Korma', '350.00', 'chicken.seekh.jpg'),
(33, 6, 'Mutton Nihari', '400.00', 'chicken.seekh.jpg'),
(34, 5, 'Phirni', '100.00', 'chicken.seekh.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `ph_no` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`ph_no`, `password`) VALUES
('7838938738', '1234'),
('9899157445', '1234'),
('7838938739', '1234'),
('7838938731', '1234'),
('8377949601', '1234'),
('9898989898', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `cust_id` varchar(20) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `order_id` varchar(30) DEFAULT NULL,
  `item_id` varchar(50) DEFAULT NULL,
  `ordered_item` varchar(1000) DEFAULT NULL,
  `amount` varchar(20) DEFAULT NULL,
  `phone_no` varchar(20) NOT NULL,
  `transaction_id` varchar(30) NOT NULL,
  `order_date` varchar(20) NOT NULL,
  `order_late` varchar(40) DEFAULT NULL,
  `delivery_address` varchar(200) DEFAULT NULL,
  `payment` varchar(10) DEFAULT NULL,
  `offer_used` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`cust_id`, `name`, `order_id`, `item_id`, `ordered_item`, `amount`, `phone_no`, `transaction_id`, `order_date`, `order_late`, `delivery_address`, `payment`, `offer_used`, `status`) VALUES
('3', 'Md', 'OrderID667662700', '11-10-', '<br />\nname: Mutton Seekh<br />\nitem_id: 11<br />\nquantity: 1<br />\nprice: 300.00<br />\nname: Chicken Seekh<br />\nitem_id: 10<br />\nquantity: 1<br />\nprice: 200.00', '450', '7838938738', 'TrId871144993', '00:31:53 2019/08/01', 'Now', 'H.no 1576/B,Street No 11 Rajeev Nagar', 'COD', 'True', 'Order Received'),
('3', 'Md', 'OrderID895264242', '11-10-9-', '<br />\nname: Mutton Seekh<br />\nitem_id: 11<br />\nquantity: 1<br />\nprice: 300.00<br />\nname: Chicken Seekh<br />\nitem_id: 10<br />\nquantity: 1<br />\nprice: 200.00<br />\nname: Chicken 65<br />\nitem_id: 9<br />\nquantity: 1<br />\nprice: 200.00', '630', '7838938738', 'TrId1207318224', '00:33:16 2019/08/01', '', 'H.no 1576/B,Street No 11  Rajeev Nagar', 'COD', 'True', 'Order Received'),
('3', 'Md', 'OrderID1090213285', '11-10-9-', '<br />\nname: Mutton Seekh<br />\nitem_id: 11<br />\nquantity: 1<br />\nprice: 300.00<br />\nname: Chicken Seekh<br />\nitem_id: 10<br />\nquantity: 1<br />\nprice: 200.00<br />\nname: Chicken 65<br />\nitem_id: 9<br />\nquantity: 1<br />\nprice: 200.00', '630', '7838938738', 'TrId1121667664', '00:36:47 2019/08/01', '2019-08-22 13:01', 'H.no 1576/B,Street No 11   Rajeev Nagar', 'COD', 'True', 'Order Received'),
('3', 'Md', 'OrderID304805617', '14-5-17-', '<br />\nname: Hyderabadi Chicken Biryani 1 Kg<br />\nitem_id: 14<br />\nquantity: 1<br />\nprice: 350.00<br />\nname: Hyderabadi Egg 1/2 Kg<br />\nitem_id: 5<br />\nquantity: 1<br />\nprice: 150.00<br />\nname: Hyderabadi Mutton 1 Kg<br />\nitem_id: 17<br />\nquantity: 1<br />\nprice: 450.00', '630', '7838938738', 'TrId1537809270', '00:37:37 2019/08/01', 'Now', 'H.no 1576/B,Street No 11  Rajeev Nagar', 'COD', 'False', 'Order Received'),
('3', 'Md', 'OrderID45421410', '11-', '<br />\nname: Mutton Seekh<br />\nitem_id: 11<br />\nquantity: 1<br />\nprice: 300.00', '270', '7838938738', 'TrId206305471', '00:46:35 2019/08/01', 'Now', 'sasasas sasasasasasas', 'COD', 'True', 'Order Received'),
('random_user_51550', '', 'OrderID1845929452', '11-10-', '<br />\nname: Mutton Seekh<br />\nitem_id: 11<br />\nquantity: 1<br />\nprice: 300.00<br />\nname: Chicken Seekh<br />\nitem_id: 10<br />\nquantity: 1<br />\nprice: 200.00', '500', '9899154454', 'TrId932082939', '00:54:52 2019/08/01', 'Now', 'new address 1234', 'COD', 'False', 'Order Received');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`),
  ADD UNIQUE KEY `ph_no` (`ph_no`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `FOREIGN KEY` (`category_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD KEY `ph_no` (`ph_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `FOREIGN KEY` FOREIGN KEY (`category_id`) REFERENCES `category` (`cat_id`);

--
-- Constraints for table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`ph_no`) REFERENCES `customer` (`ph_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
