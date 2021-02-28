-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2021 at 12:18 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `170204001_170204004`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(20) NOT NULL,
  `user_id` int(20) NOT NULL,
  `item_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `user_id`, `item_id`) VALUES
(1, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_ammount` int(25) NOT NULL,
  `ship_name` varchar(250) NOT NULL,
  `ship_address` varchar(250) NOT NULL,
  `order_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `user_id`, `total_ammount`, `ship_name`, `ship_address`, `order_date`) VALUES
(1, 1, 2, 'Tanim', '15/2 cantonment', '2020-09-20');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `detail_id` int(20) NOT NULL,
  `detail_order_id` int(20) NOT NULL,
  `detail_product_id` int(20) NOT NULL,
  `detail_quantity` int(200) NOT NULL,
  `detail_price` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`detail_id`, `detail_order_id`, `detail_product_id`, `detail_quantity`, `detail_price`) VALUES
(1, 1, 2, 2, 50.00);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_type` varchar(200) NOT NULL,
  `product_category` varchar(250) NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `product_price` double(10,2) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_description` varchar(500) NOT NULL,
  `product_unit` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_type`, `product_category`, `product_name`, `product_price`, `product_image`, `product_description`, `product_unit`) VALUES
(1, 'Food', 'Dairy', 'Butter', 185.00, './assets/products/Food/Dairy/butter.jpg', 'Butter is a dairy product made by fresh or fermented cream or milk, to separate the butterfat from the buttermilk. It is generally used as a spread as well as in cooking, such as baking, sauce making, and pan frying.', '200g'),
(2, 'Food', 'Dairy', 'Liquid Milk', 70.00, './assets/products/Food/Dairy/liquidMilk.png', 'This is liquid milk', '2 ltr.'),
(3, 'Food', 'Dairy', 'Powder Milk', 240.00, './assets/products/Food/Dairy/powderMilk.jpg', 'This is powder milk', '500 gm'),
(4, 'Food', 'Dairy', 'Sour Card', 60.00, './assets/products/Food/Dairy/sourCurd.png', 'This is sour curd', '200g'),
(5, 'Food', 'Dairy\r\n', 'Sweet Curd', 100.00, './assets/products/Food/Dairy/sweetCurd.jpg', 'This is sweet curd', '250g'),
(6, 'Food', 'Fruits and Vegetables', 'Apple', 150.00, './assets/products/Food/Fruits and Vegetables/apple.jpg', 'This is apple', '1 Kg'),
(7, 'Food\r\n', 'Fruits and Vegetables', 'capsicam', 250.00, './assets/products/Food/Fruits and Vegetables/capsicam.jpg', 'This is capsicam', '1 Kg'),
(8, 'Food', 'Fruits and Vegetables', 'banana', 60.00, './assets/products/Food/Fruits and Vegetables/banana.jpg', 'This is banana', '500 gm'),
(9, 'Food', 'Fruits and Vegetables', 'carrot', 45.00, './assets/products/Food/Fruits and Vegetables/carrot.jpg', 'This is carrot', '500 gm'),
(10, 'Food', 'Fruits and Vegetables', 'grapes', 150.00, './assets/products/Food/Fruits and Vegetables/grapes.jpg', 'This is grapes', '500 gm'),
(11, 'Food', 'Fruits and Vegetables', 'mango', 100.00, './assets/products/Food/Fruits and Vegetables/mango.jpg', 'This ismango', '500 gm'),
(12, 'Food', 'Fruits and Vegetables', 'lemon', 20.00, './assets/products/Food/Fruits and Vegetables/lemon.jpg', 'This is lemon', '500 gm'),
(13, 'Food', 'Fruits and Vegetables', 'pomegranate', 100.00, './assets/products/Food/Fruits and Vegetables/pomegranate.jpg', 'This is pomegranate', '500 gm'),
(14, 'Food', 'Fruits and Vegetables', 'potato', 20.00, './assets/products/Food/Fruits and Vegetables/potato.jpg', 'This is potato', '500 gm'),
(15, 'Food', 'Fruits and Vegetables', 'tomato', 40.00, './assets/products/Food/Fruits and Vegetables/tomato.jpg', 'This is tomato', '500 gm'),
(16, 'Food', 'Meat and Fishes', 'beef', 300.00, './assets/products/Food/Meat and Fishes/beef.jpg', 'This is beef', '500 gm'),
(17, 'Food', 'Meat and Fishes', 'broilerChicken', 80.00, './assets/products/Food/Meat and Fishes/broilerChicken.jpg', 'This is broilerChicken', '500 gm'),
(18, 'Food', 'Meat and Fishes', 'deshiChicken', 120.00, './assets/products/Food/Meat and Fishes/deshiChicken.jpg', 'This is deshiChicken', '500 gm'),
(19, 'Food', 'Meat and Fishes', 'ilishMach', 600.00, './assets/products/Food/Meat and Fishes/ilishMach.jpg', 'This is ilishMach', '500 gm'),
(20, 'Food', 'Meat and Fishes', 'koiMach', 100.00, './assets/products/Food/Meat and Fishes/koiMach.jpg', 'This is koiMach', '500 gm'),
(21, 'Food', 'Meat and Fishes', 'ruiMach', 130.00, './assets/products/Food/Meat and Fishes/ruiMach.jpg', 'This is ruiMach', '500 gm'),
(22, 'Food', 'Meat and Fishes', 'rupchadaMach', 450.00, './assets/products/Food/Meat and Fishes/rupchadaMach.jpg', 'This is rupchadaMach', '500 gm'),
(23, 'Food', 'Meat and Fishes', 'shrimp', 300.00, './assets/products/Food/Meat and Fishes/shrimp.jpg', 'This is shrimp', '500 gm'),
(24, 'Food', 'Snacks', 'biscuits', 60.00, './assets/products/Food/Snacks/biscuits.jpg', 'This is biscuits', '500 gm'),
(25, 'Food', 'Snacks', 'chanachur', 70.00, './assets/products/Food/Snacks/chanachur.jpg', 'This is chanachur', '500 gm'),
(26, 'Food', 'Snacks', 'chips', 30.00, './assets/products/Food/Snacks/chips.jpg', 'This is chips', '500 gm'),
(27, 'Food', 'Snacks', 'noodles', 165.00, './assets/products/Food/Snacks/noodles.jpg', 'This is noodles', '500 gm'),
(31, 'Food', 'Snacks', 'soup', 35.00, './assets/products/Food/Snacks/soup.jpg', 'This is /soup', '500 gm'),
(32, 'Food', 'cooking', 'chili', 80.00, './assets/products/Food/cooking/chili.jpg', 'This is chili', '500 gm'),
(33, 'Food', 'cooking', 'garlic', 35.00, './assets/products/Food/cooking/garlic.jpg', 'This is garlic', '500 gm'),
(34, 'Food', 'cooking', 'lentel', 40.00, './assets/products/Food/cooking/lentel.jpg', 'This is lentel', '500 gm'),
(35, 'Food', 'cooking', 'oil', 50.00, './assets/products/Food/cooking/oil.jpg', 'This is oil', '500 gm'),
(36, 'Food', 'cooking', 'rice', 25.00, './assets/products/Food/cooking/rice.jpg', 'This is rice', '500 gm'),
(37, 'Food', 'cooking', 'salt', 20.00, './assets/products/Food/cooking/salt.jpg', 'This is salt', '500 gm'),
(38, 'Food', 'cooking', 'sugar', 30.00, './assets/products/Food/cooking/sugar.jpg', 'This is sugar', '500 gm'),
(39, 'Food', 'cooking', 'onion', 60.00, './assets/products/Food/cooking/onion.jpg', 'This is onion', '500 gm'),
(40, 'Home', 'cleaning', 'floorCleaner', 240.00, './assets/products/home and cleaning/cleaning/floorCleaner.jpg', 'This is floorCleaner', '500 gm'),
(41, 'Home', 'cleaning', 'glassCleaner', 200.00, './assets/products/home and cleaning/cleaning/glassCleaner.jpg', 'This is glassCleaner', '500 gm'),
(42, 'Home', 'cleaning', 'toiletCleaner', 180.00, './assets/products/home and cleaning/cleaning/toiletCleaner.jpg', 'This is toiletCleaner', '500 gm'),
(43, 'Home', 'dish', 'dishBar', 40.00, './assets/products/home and cleaning/dish/dishBar.jpg', 'This is dishBar.jpg', '500 gm'),
(44, 'Home', 'dish', 'dishCleaner', 100.00, './assets/products/home and cleaning/dish/dishCleaner.jpg', 'This is dishCleaner', '500 gm'),
(45, 'Home', 'dish', 'dishSponge', 40.00, './assets/products/home and cleaning/dish/dishSponge.jpg', 'This is dishSponge', '500 gm'),
(46, 'Home', 'laundry', 'detergentPowder', 80.00, './assets/products/home and cleaning/laundry/detergentPowder.jpg', 'This is detergentPowder', '500 gm'),
(47, 'Home', 'laundry', 'laundrySoap', 40.00, './assets/products/home and cleaning/laundry/laundrySoap.jpg', 'This is laundrySoap', '500 gm'),
(48, 'Home', 'laundry', 'whitener', 100.00, './assets/products/home and cleaning/laundry/whitener.jpg', 'This is whitener', '500 gm'),
(49, 'Beauty', 'food supliments', 'dairymilk', 140.00, './assets/products/beauty and health/food supliments/dairymilk.jpg', 'This is dairymilk', '500 gm'),
(50, 'Beauty', 'food supliments', 'horlicks', 300.00, './assets/products/beauty and health/food supliments/horlicks.jpg', 'This is horlicks', '500 gm'),
(51, 'Beauty', 'food supliments', 'kitkat', 40.00, './assets/products/beauty and health/food supliments/kitkat.jpg', 'This is kitkat', '500 gm'),
(52, 'Beauty', 'food supliments', 'protienpowder', 340.00, './assets/products/beauty and health/food supliments/protienpowder.jpg', 'This is protienpowder', '500 gm'),
(53, 'Beauty', 'food supliments', 'vitaminC', 120.00, './assets/products/beauty and health/food supliments/vitaminC.jpg', 'This is vitaminC', '500 gm'),
(54, 'Beauty', 'food supliments', 'vitaminD', 140.00, './assets/products/beauty and health/food supliments/vitaminD.jpg', 'This is vitaminD', '500 gm'),
(55, 'Beauty', 'hair care', 'conditioner', 440.00, './assets/products/beauty and health/hair care/conditioner.jpg', 'This is conditioner', '500 gm'),
(56, 'Beauty', 'skin care', 'hairgel ', 240.00, './assets/products/beauty and health/hair care/hairgel.jpg', 'This is hairgel ', '500 gm'),
(57, 'Beauty', 'hair care', 'hairOil', 200.00, './assets/products/beauty and health/hair care/hairOil.jpg', 'This is hairOil', '500 gm'),
(58, 'Beauty', 'hair care', 'shampoo ', 300.00, './assets/products/beauty and health/hair care/shampoo.jpg', 'This is shampoo milk', '500 gm'),
(59, 'Beauty', 'health care', 'detol', 35.00, './assets/products/beauty and health/health care/detol.jpg', 'This is detol milk', '500 gm'),
(60, 'Beauty', 'health care', 'facemask ', 40.00, './assets/products/beauty and health/health care/facemask.jpg', 'This is facemask milk', '500 gm'),
(61, 'Beauty', 'health care', 'handRub ', 120.00, './assets/products/beauty and health/health care/handRub.jpg', 'This is handRub milk', '500 gm'),
(62, 'Beauty', 'health care', 'savlon ', 300.00, './assets/products/beauty and health/health care/savlon.jpg', 'This is savlon milk', '500 gm'),
(63, 'Beauty', 'health care', 'showerGel ', 640.00, './assets/products/beauty and health/health care/showerGel.jpg', 'This is showerGel milk', '500 gm'),
(64, 'Beauty', 'health care', 'toiletPaper ', 35.00, './assets/products/beauty and health/health care/toiletPaper.jpg', 'This is toiletPaper milk', '500 gm'),
(65, 'Beauty', 'skin care', 'bodyLotion ', 550.00, './assets/products/beauty and health/skin care/bodyLotion.jpg', 'This is bodyLotion milk', '500 gm'),
(66, 'Beauty', 'skin care', 'facewash ', 180.00, './assets/products/beauty and health/skin care/facewash.jpg', 'This is facewash milk', '500 gm'),
(67, 'Beauty', 'skin care', 'fairandlovely ', 140.00, './assets/products/beauty and health/skin care/fairandlovely.jpg', 'This is fairandlovely milk', '500 gm'),
(68, 'Beauty', 'skin care', 'shavingcream', 300.00, './assets/products/beauty and health/skin care/shavingcream.jpg', 'This is shavingcream milk', '500 gm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`detail_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `detail_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
