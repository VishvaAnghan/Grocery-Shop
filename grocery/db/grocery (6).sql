-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2023 at 06:30 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grocery`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'admin', '2023-01-31 08:34:03', '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(2, 'Bakery ,Cakes & Dairy', '', '2023-03-18 08:41:57', NULL),
(3, 'food grains ,oil & masala', '', '2023-03-20 07:41:08', NULL),
(4, 'Beverages', '', '2023-03-20 07:41:39', NULL),
(6, 'Gourmet & world food', '', '2023-03-21 08:46:14', NULL),
(7, 'packaged Food', '', '2023-03-21 08:48:00', NULL),
(8, 'Parsonal Care', '', '2023-03-21 08:48:19', NULL),
(9, 'Cleaning & House Hold', '', '2023-04-19 15:21:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`id`, `name`, `email`, `subject`, `message`) VALUES
(2, 'Rishabh', 'rish@gemail.com', 'tuver dal', 'very good &amp; best quality.'),
(3, 'Devanshi', 'devanshi@gmail.com', 'Atta', 'Which Atta is Good?');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(255) DEFAULT NULL,
  `orderStatus` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(1, 1, '4', 1, '2023-04-01 05:13:11', 'COD', 'Delivered'),
(2, 1, '5', 3, '2023-04-24 07:43:18', 'COD', 'Delivered'),
(3, 1, '12', 3, '2023-03-29 15:14:15', 'COD', 'in Process'),
(4, 4, '12', 2, '2023-04-23 09:53:38', 'COD', 'Delivered'),
(5, 4, '5', 1, '2023-04-23 09:59:18', 'COD', 'Delivered'),
(6, 4, '24', 2, '2023-04-21 10:12:07', 'COD', 'Delivered'),
(7, 2, '21', 3, '2023-04-24 09:40:50', 'COD', 'in Process'),
(8, 2, '22', 2, '2023-04-24 09:40:50', 'COD', NULL),
(9, 5, '20', 4, '2023-04-26 15:28:34', 'COD', 'Delivered');

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 2, 'in Process', 'In pfwfrewd', '2023-03-24 03:59:38'),
(2, 1, 'in Process', 'SDfjh,', '2023-03-29 15:13:17'),
(3, 1, 'Delivered', 'Order Completed', '2023-04-01 05:13:11'),
(4, 4, 'in Process', 'Ready for Delivery.', '2023-04-21 10:14:29'),
(5, 5, 'in Process', 'Ready for Delivery.\r\n', '2023-04-21 10:18:18'),
(6, 4, 'Delivered', 'Your order is Delivered.', '2023-04-23 09:53:38'),
(7, 5, 'Delivered', 'Your order is delivered.', '2023-04-23 09:59:18'),
(8, 2, 'Delivered', 'Your order is Delivered.', '2023-04-24 07:43:18'),
(9, 6, 'Delivered', 'Delivered', '2023-04-24 09:19:54'),
(10, 9, 'in Process', 'Thank you for your order. We will begin processing it right away.', '2023-04-26 15:36:19'),
(11, 9, 'in Process', 'Package has been sterilized and shipped out.', '2023-04-27 03:50:26'),
(12, 9, 'in Process', 'Our warehouse has started packing your items.', '2023-04-27 05:13:13'),
(13, 3, 'in Process', 'Thank you for your order. We will begin processing it right away.\r\n', '2023-04-27 05:14:05'),
(14, 7, 'in Process', 'Thank you for your order. We will begin processing it right away.\r\n', '2023-04-27 05:14:24'),
(15, 9, 'Delivered', 'Your order is Delivered.', '2023-04-27 05:18:26');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 4, 4, 4, 5, 'Riya', 'good', 'Good', '2023-03-24 03:49:52'),
(3, 53, 5, 4, 4, 'Rishabh', 'Good', 'best for my hair.', '2023-04-21 10:00:25'),
(7, 20, 5, 5, 5, 'Maya', 'Good', 'Best Test, Quality & Price.', '2023-04-27 09:16:17');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productquantity` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productquantity`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(5, 2, 6, 'Cake', '1 cake', 450, 500, 'testy cake.', 'cakes1.jpg', 'cakes1.jpg', 'cakes1.jpg', 10, 'In Stock', '2023-03-20 08:05:39', NULL),
(6, 2, 3, 'Khari', '250 gm', 15, 20, '', 'khari 1.jpg', 'khari 2.png', 'khari 3.jpg', 0, 'In Stock', '2023-03-20 08:14:13', NULL),
(8, 5, 9, 'pooja thali', '1 ', 100, 150, '', 'puja thali.jpg', 'puja thali.jpg', 'puja thali.jpg', 20, 'In Stock', '2023-03-20 09:05:17', NULL),
(12, 3, 4, 'Toor Dal', '1 Kg', 142, 160, 'Toor Dal is not only delicious but also has nutritional value. It contains a good amount of fiber. Toor dal is an excellent source of nutrients and plant protein, and it also contains dietary fiber. In essence, legumes are nutritional though they represent a low-fat and low-cholesterol alternative. Legumes such as toor dal provide essential nutrients, fibre and protein for vegetarians. Toor dal rich in protein, vitamins and iron is often served with rich spices over rice and Rotis.<br>', 'tuver dal.1.png', 'tuver dal.1.png', 'tuver dal.1.png', 20, 'Out of Stock', '2023-03-23 13:02:09', NULL),
(13, 2, 14, 'Amul Pasteurised Butter', '500g', 256, 275, '<div><span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Amul is synonymous with Butter in India.</span><br></div><span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Several Generation of Indian consumers have grown up with the taste of Amul Butter for the six decades.</span><br style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;\"><span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Utterly Butterly Delicious taste of Amul Butter is must on breakfast table of almost every Indian Household.</span><br style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;\"><span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Utterly Cute Amul Butter Girl has been a part of Indian Consumers since 1950.</span><br style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;\"><span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Amul Butter topical is recognized as one of the longest running advertisement campaign in the world.</span><br>', 'butter.png', 'butter2.png', 'butter3.png', 0, 'In Stock', '2023-03-30 08:00:18', NULL),
(14, 2, 14, 'Amul Sweetened Condensed Milk Mithai Mate', '400g', 113, 122, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">As the name suggests, Amul Mithai Mate is indeed the best friend for your desserts; this sweet thickener is now made with skimmed milk so that you have less calories in your sweet dish. There are probably thousands of recipes which has Amul Mithai Mate as its key ingredient. Whether you are making kheer, thandai, coconut ladoos, or white fudge, you simply cannot do without this smooth creamy sweetened condensed milk.</span><br>', 'Mithaimate.jpg', 'Mithaimate2.jpg', 'Mithaimate3.jpg', 0, 'In Stock', '2023-03-30 08:16:21', NULL),
(15, 2, 15, 'Lays Potato Chips - Indias Magic Masala, 23 g Pouch', '1 Packet', 13, 15, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Taste the unbeatable blend of delectable Indian spices with best quality potatoes. Delicious individual bags: perfect for snacking at work, home or school. About the brand: Lays, the worlds largest and favourite snack food brand, has steadily established itself as an indispensable part of Indias snacking culture since its launch in 1995. With its irresistible taste, international and Indian flavours, Lays has established itself as a youth brand and continues to grow in the hearts and mind of its consumers. Lays is made with Indias best-quality fresh potatoes, simply sliced and cooked in edible vegetable oils, and then seasoned with delicious flavours!</span><br>', 'lays.png', 'lays2.png', 'lays3.png', 0, 'In Stock', '2023-03-30 08:46:03', NULL),
(16, 2, 15, 'Tasty Nut Masala Coated', '200g', 45, 50, 'Authentic, crispy and deliciously mouth-watering Tasties Namkeen - Tasty Nut Masala Coated is the ultimate snack to have in your kitchen. Want something to munch on while you work away? Look no more with these snacky treats from Tasties. Packed with tradition and crunchy peanuts mixed with tangy masala, these treats are perfect to chew on throughout the day without worrying about your health.<br>', 'peanuts.png', 'peanuts1.png', 'peanuts2.png', 0, 'In Stock', '2023-03-30 09:12:42', NULL),
(17, 2, 15, 'Soya Sticks', '200g', 45, 50, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Haldiram Soya Sticks are wholesome crispies. It is made with soya flour blended with some spices. These tasty and crispy Indian snacks is also known as the time pass snack. It is healthy and nutritious snack which is high in protein.</span><br>', 'soyasticks.png', 'soyastick1.png', 'soyastick2.png', 0, 'In Stock', '2023-03-30 09:18:45', NULL),
(18, 3, 4, 'Peanuts', '200g', 37, 50, 'Healthy Peanuts', 'peanut2.png', 'peanut2.png', 'peanut.png', 10, 'In Stock', '2023-03-30 09:51:28', NULL),
(19, 3, 4, 'Moong Dal', '500g', 78, 100, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Moong Dal is a healthy choice. It has high fiber content and a negligible amount of cholesterol and fats. Moong Dal is full of iron, calcium and protein. Along with these nutrients, a bowl of Moong Dal also contains dietary fibers, sodium and all the other nutrients that are required for your body.</span><br>', 'moogdal.png', 'moogdal1.png', 'moogdal.png', 10, 'In Stock', '2023-03-30 09:59:09', NULL),
(20, 3, 4, 'Chana Dal', '500g', 51, 60, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Chana dal is baby chickpeas that have been split and polished. It looks and tastes like small kernels of sweet corn. These lentils have a sweet and nutty taste. Chana dal is delicious, nutritious and easily digested. It is a good source of dietary fibre and includes an insignificant amount of polyunsaturated fat.</span><br>', 'chanadal1.png', 'chanadal.jpg', 'chanadal2.png', 10, 'In Stock', '2023-03-30 10:06:25', NULL),
(21, 3, 5, 'Almond/Badam', '200g', 214, 270, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">One of the few nuts having the highest level of \"good fat\" that can lower cholesterol levels, almonds should be eaten every day.</span><br>', 'badam1.png', 'badam2.png', 'badam3.png', 10, 'In Stock', '2023-04-01 04:44:49', NULL),
(22, 3, 5, 'Walnut/Akhrot - Kernels', '200g', 275, 360, '<ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; padding-left: 1.4rem; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;\"><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgb(255, 255, 255) !important; line-height: 1.4;\">Walnut not only tastes great but is a rich source of heart-healthy, fats and an excellent source of those hard-to-find omega 3 fatty acids.</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgb(255, 255, 255) !important; line-height: 1.4;\">Walnuts are vacuum packaged to retain freshness, taste, and texture ensuring quality.</li></ul>', 'Akhrot1.png', 'Akhrot.png', 'Akhrot3.png', 10, 'In Stock', '2023-04-01 04:54:50', NULL),
(23, 3, 10, 'Aashirvaad Atta', '1 Kg', 65, 70, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">The grain produce goes through a 3-step cleaning process that ensures the best quality of wheat grains. These expertly sourced grains undergo mechanised packaging that ensures zero human contact and 100% safety.</span><br>', 'atta.png', 'atta.png', 'atta2.png', 5, 'In Stock', '2023-04-01 05:02:35', NULL),
(24, 3, 10, 'Sooji/Bombay Rava', '500g', 27, 33, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Sooji Ravva is a staple in the Indian diet. It’s nutritious and can be easily digested. It has a rich flavour and aroma and provides essential amino acids for complete protein. It comes to use as the key ingredient in different dishes as it is used in a variety of soups, salads, sweets and savouries, Sooji Ravva is essential in every household. It is rich in fiber and very wholesome. It makes you stronger and is ideal for people who are managing their weight.&nbsp;</span><br>', 'sooji1.png', 'sooji2.png', 'sooji.png', 0, 'In Stock', '2023-04-01 05:10:41', NULL),
(25, 4, 7, 'Red Label Tea', '100g', 43, 45, ' Enjoy the great tasting range from Red Label Core and Red Label Natural Care; which has a mix of 5 Ayurvedic ingredients, namely Tulsi, Ashwagandha, Mulethi, Ginger and Cardamom. Red Label Natural Care is clinically proven to enhance immunity and to help you fall ill less often.', 'tea.png', 'tea.png', 'tea1.png', 0, 'In Stock', '2023-04-03 09:18:05', NULL),
(26, 4, 7, 'Lipton Honey Lemon Green Tea', '140 g (100 Bags x 1.4 g each)', 470, 625, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Available in a range of flavours, Lipton offers a range of different flavours to ensure that you are offered variety and enjoyment while drinking tea. Lipton flavours some of its teas with added natural flavours and no artificial flavours are used. You may try Lipton Green tea in Pure Light (unflavored), Tulsi Natura, Honey Lemon and Lemon Zest flavours as well, available in pack sizes of 10s and 25s Teabags</span><br>', 'greentea.png', 'greentea1.png', 'greentea2.png', 50, 'In Stock', '2023-04-03 09:25:46', NULL),
(27, 4, 8, 'Nescafe Classic Instant Coffee', '200g', 230, 300, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">The unmistakable flavour of Nescafe Classic is what makes this signature coffee so loved all over the world. Start your day right with the first sip of this classic 100% pure coffee and let the intense taste and wonderfully refreshing aroma of Nescafe instant coffee awaken your senses to new opportunities.</span><br>', 'coffee2.png', 'coffee.jpg', 'coffee1.png', 20, 'In Stock', '2023-04-03 09:30:48', NULL),
(28, 4, 16, 'Frooti Drink', '200ml', 13, 15, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">It brings out the youngster in every one and tastes great too. It ensures that you can get pleasure from the taste of the best-grown mangoes suitably throughout the year.</span><br>', 'mfruti.png', 'mfrooti1.png', 'mfrooti.png', 0, 'In Stock', '2023-04-03 09:40:06', NULL),
(29, 4, 16, '7 Up Nimbooz Soft Drink', '250ml', 18, 20, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">&nbsp;7UP Nimbooz is tangier and bubblier than the other 7UPs. Experience a burst of refreshing taste with each sip. Due to its amazing taste this refreshing drink has become the main player in the juice-based drinks category.</span><br>', '7up.png', '7up.png', '7up1.png', 0, 'In Stock', '2023-04-03 09:46:30', NULL),
(30, 4, 17, 'MTR Drink Mix - Badam', '100g', 80, 90, '<b>How to Use</b><div><ol style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;\"><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgb(255, 255, 255) !important; line-height: 1.4;\">Add 3 tsp (15 g) of MTR Badam Drink mix to 1 cup of hot milk (150 ml). Stir well &amp; serve hot.</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgb(255, 255, 255) !important; line-height: 1.4;\">Drink cold.</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgb(255, 255, 255) !important; line-height: 1.4;\">Mix with oats and cornflakes.</li></ol></div>', 'drink.png', 'drink1.png', 'drink2.png', 0, 'In Stock', '2023-04-03 09:52:08', NULL),
(31, 4, 17, 'Cadbury Bournvita Chocolate Health Drink', '500g', 205, 230, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Cadbury Bournvita is a nutrition brand with a 70 year legacy in India. Cadbury Bournvita is a health food drink with inner strength formula which has nutrients that support - Immune system(8 immunity nutrients), Strong bones (Vitamin D, Phosphorous), Strong muscles (Protein, Vitamin D) and Active Brain(Iron, Iodine, Vitamin B2, Vitamin B12).</span><br>', 'bornvita.png', 'bornvita.png', 'bornvita1.png', 0, 'In Stock', '2023-04-03 09:57:16', NULL),
(32, 5, 18, 'Ariel Complete Detergent Washing Powder', '500g', 173, 180, '<div><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;\"><span style=\"font-weight: 400;\">Ariel Complete Detergent Washing Powder gives you tough stain removal in just 1 wash.</span><b>&nbsp;</b>Ariel dissolves in water completely to remove tough stains like juice, chocolate, tomato and butter/ghee. Perfect for all your clothes, Ariel washing powder helps to give you impeccable cleaning and keeps your clothes smelling fresh.<br></span></div><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;\">Useage:</strong><span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">&nbsp; Use 2 scoops for normal loads, and 3 scoops for heavy loads.</span><br>', 'ariel.png', 'ariel1.png', 'ariel3.png', 0, 'In Stock', '2023-04-03 10:07:54', NULL),
(33, 5, 18, 'Vim Dishwash Bar Lemon', '60g', 5, 5, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Vim is the No.1 dishwashing brand in India.</span><br>', 'vim.png', 'vim1.png', 'vim2.png', 0, 'In Stock', '2023-04-03 10:12:19', NULL),
(35, 5, 19, 'Odonil Room Spray', '600 ml', 335, 500, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">After a hectic day of work and travel dulls your mood, just a calm and normal living area and bedroom is not enough to lift your dull mood. To enhance your living area and bedrooms you need something premium.</span><br>', 'odonil.png', 'odonil.png', 'odonil.png', 50, 'In Stock', '2023-04-03 10:24:42', NULL),
(36, 3, 11, 'Chilli - Guntur with Stem', '200g', 90, 140, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Red Chilli is well non for its flavour and aroma. Finest grade Chillies are carefully handpicked, dried and packed in a very hygienic condition to ensure the superior quality.&nbsp;</span><br>', 'chilli2.png', 'chilli.png', 'chilli1.png', 0, 'In Stock', '2023-04-04 03:44:03', NULL),
(37, 3, 11, 'Everest Chilli Powder', '100g', 40, 50, 'Everest&nbsp;<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Chilli Powder has been made with love in India using the 4-step advantage process to ensure that only a high-quality product reaches your kitchen.</span>', 'chillipowder.png', 'chillipowder1.png', 'chillipowder2.png', 0, 'In Stock', '2023-04-04 03:58:04', NULL),
(38, 3, 11, 'Everest Powder - Hingraj', '100g', 242, 250, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Everest Hungraj is perfect for a richer and stronger flavour in vegetable dishes.</span><br>', 'hingraj.png', 'hingraj1.png', 'hingraj2.png', 0, 'In Stock', '2023-04-04 04:03:22', NULL),
(39, 3, 11, 'Jeera', '100g', 50, 100, 'Jeera&nbsp;<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">are an important kitchen staple, finds worldwide usage in various culinary - Indian, Mexican and Eastern and has major health benefits.&nbsp;</span>', 'jeera0.png', 'jeera.png', 'jeera1.png', 5, 'In Stock', '2023-04-04 04:11:11', NULL),
(40, 3, 11, 'Cardamom Green/Elakki', '20g', 77, 99, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Cardamom is a spice made from plants in the genera Elettaria and Amomum in the family Zingiberaceae. They are recognised by their small seed pods, triangular in cross-section and spindle-shaped, with a thin, papery outer shell and small black seeds. It is free from synthetic chemicals and pesticides.</span><br>', 'elakki2.png', 'elakki.png', 'elakki1.png', 0, 'In Stock', '2023-04-04 04:22:49', NULL),
(41, 3, 11, 'Everest Turmeric/Haldi  Powder', '100g', 35, 40, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Pepper is widely used in the wintry cuisine of North India, to impart spicy and hot to veg. dishes. In the South, it is used as a tasty spice in non-veg preparations.</span><br>', 'halgi.png', 'haldi.png', 'haldi1.png', 0, 'In Stock', '2023-04-04 04:30:35', NULL),
(42, 3, 12, 'Fortune Sunflower Refined Oil', '1 L', 129, 149, '<font color=\"#666666\" face=\"ProximaNova-Regular\">Fortune Sunflower&nbsp;Refined Sunflower Oil is a healthy, light and nutritious oil that is simple to digest. Rich in natural vitamins, it consists mostly of poly-unsaturated fatty acids (PUFA) and is low in soaked fats. It is strong and makes you feel light and active level after heavy food.</font><br>', 'oil.png', 'oil.png', 'oil.png', 10, 'In Stock', '2023-04-04 04:39:08', NULL),
(43, 3, 12, 'Amul Ghee', '500 ml', 310, 320, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">A nutritional powerhouse. Used in every Indian household for cooking and garnishing purposes. With a strong aroma and arich source of nutrients ghee is considered to be healthy fat and it is delicious!</span><br>', 'ghee.png', 'ghee1.png', 'ghee2.png', 0, 'In Stock', '2023-04-04 04:46:49', NULL),
(44, 3, 13, 'Tata Salt', '1 Kg', 25, 28, '<span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;\">Tata namak offers a hygienic alternative to your regular table salt.&nbsp;</span><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: ProximaNova-Regular; -webkit-tap-highlight-color: rgb(255, 255, 255) !important;\">It contains the requisite amount of iodine which is an essential dietary nutrient for humans.</span><br>', 'tata.png', 'tata1.png', 'tata2.png', 0, 'In Stock', '2023-04-04 11:00:59', NULL),
(45, 3, 13, 'Sugar', '1 Kg', 47, 60, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Sugar is finished from organic sugar cane, the grains are light cream-coloured. It is an improved option as opposed to refined sugar that is pure white in colour.&nbsp;</span><br>', 'sugar1.png', 'sugar2.png', 'sugar.png', 0, 'In Stock', '2023-04-04 11:09:03', NULL),
(46, 3, 13, 'Jaggery', '1 Kg', 50, 60, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Jaggery, a natural sweetener and a good source of nutrients is becoming popular as a \"healthy\" replacement to sugar. Jaggery aids in digestion and reduces constipation. It contains two blocks of bucket-shaped jaggery.</span><br>', 'jaggery.png', 'jaggery.png', 'jaggery1.png', 0, 'In Stock', '2023-04-04 11:15:57', NULL),
(48, 5, 19, 'Good knight Gold Flash Liquid Vapourizer, Mosquito Repellent Refill', '45 ml each Pack of 4', 239, 299, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Good Knight Gold Flash Is India’S Most Powerful Liquid Vapouriser.&nbsp;</span><br>', 'good.png', 'good1.png', 'good2.png', 10, 'In Stock', '2023-04-05 07:26:28', NULL),
(51, 5, 20, 'Scotch brite Scrub Pad', '1 Pc', 66, 75, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Scotch brite Scrub Pad is made with high quality material. It is a multipurpose scrub that can be used to clean utilities as well as kitchen platform.</span><br>', 'scrub.png', 'Screenshot 2023-04-05 131015.png', 'scrub.png', 0, 'In Stock', '2023-04-05 07:43:54', NULL),
(52, 5, 20, 'Liao Sink Brush - Flexible Bristles', '1 Pc', 99, 169, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">The LIAO sink and dish brush are ergonomically designed with a comfortable grip for ease of use and precise cleaning</span><br>', '1.png', '01.png', '001.png', 15, 'In Stock', '2023-04-05 07:48:54', NULL),
(53, 8, 33, 'Parachute Coconut Oil - 100% Pure', '600 ml', 196, 251, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Parachute Coconut oil is India’s No.1 coconut oil that contains the goodness of 100% pure coconut oil.</span><br>', 'Screenshot 2023-04-05 162306.png', 'Screenshot 2023-04-21 153536.png', 'Screenshot 2023-04-21 153817.png', 10, 'In Stock', '2023-04-21 10:08:30', NULL),
(54, 8, 33, 'Clinic Plus Strong & Long Health Shampoo', '340 ml', 205, 230, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Clinic Plus believes that girls can achieve their true potential when they are raised to be strong. Mothers who empower their daughters by instilling values such as resilience and determination in them, will find that the confidence to face life’s obstacles comes naturally to them. A solid foundation is always essential and empowering – both in life, and when it comes to hair as well.</span><br>', 'Screenshot 2023-04-05 162836.png', 'Screenshot 2023-04-05 162836.png', 'Screenshot 2023-04-05 162836.png', 0, 'In Stock', '2023-04-05 11:02:11', NULL),
(55, 8, 33, 'Sunsilk Stunning Black Shine Shampoo', '360 ml', 260, 300, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Sunsilk Stunning Black Shine shampoo, for hair that shines like you do! It comes with activ-mix that contains Amla + Oil, Pearl Protein and Vitamin E. Amla + Oil is known for providing shine to hair, Pearl Protein is known for its moisture binding properties and Vitamin E is known as antioxidant.</span><br>', 'Screenshot 2023-04-05 163539.png', 'Screenshot 2023-04-05 163539.png', 'Screenshot 2023-04-05 163607.png', 10, 'In Stock', '2023-04-05 11:08:33', NULL),
(56, 8, 32, 'Himalaya Purifying Neem Face Wash', '140 ml', 200, 300, 'awesdhjkh', 'Screenshot 2023-04-05 164049.png', 'Screenshot 2023-04-05 164049.png', 'Screenshot 2023-04-05 164113.png', 25, 'In Stock', '2023-04-10 08:26:08', NULL),
(57, 9, 36, 'Bhakti Agarbatti', '1 Box', 30, 40, 'That Combines Three Captivating Fragrances - One Each For Health, Wealth And Happiness. Ideal For Daily Puja, Meditation, Yoga, Festivals. Bhakti Supports Women Empowerment, Cares For The Environment, Provides Livelihood To Tribals And Plants Sacred Trees In Temples. ', 'Screenshot 2023-04-19 210211.png', 'Screenshot 2023-04-19 210211.png', 'Screenshot 2023-04-19 210321.png', 0, 'In Stock', '2023-04-19 15:44:12', NULL),
(60, 9, 39, 'Scotch brite Thick Pad Small', '1 Pc', 15, 20, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Scotch-Brite Thick Pad comes with superior stain cutter technology which has the power to cut through tough stains and lasts longer* than any ordinary scrub pad.</span><br>', 'Screenshot 2023-04-19 212428.png', 'Screenshot 2023-04-19 212428.png', 'Screenshot 2023-04-19 212416.png', 0, 'In Stock', '2023-04-19 15:56:29', NULL),
(61, 9, 39, 'Liao Mini Dustpan & Brush - Easy To Use', '2 Pc', 199, 249, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Liao Mini Dustpan &amp; Brush ensures that the dirt goes where it belongs to. Sweeping the dirt is now easier with this dustpan and brush as it assists in the last mile of the sweeping job which is to dispose of the swept dust into your trash can.&nbsp;</span><br>', 'Screenshot 2023-04-19 212804.png', 'Screenshot 2023-04-19 212820.png', 'Screenshot 2023-04-19 212832.png', 0, 'In Stock', '2023-04-19 16:00:23', NULL),
(62, 9, 37, 'Vim Dishwash Bar - Lemon', '200g', 60, 65, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Vim is the No.1 dishwashing brand in India.&nbsp;</span><span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Vim Dishwash Bar has the power of 100 lemons.&nbsp;</span><br>', 'vim.png', 'vim1.png', 'vim2.png', 0, 'In Stock', '2023-04-19 16:05:10', NULL),
(63, 9, 39, 'Natural Grass Broom Jadu', '1 Pc', 149, 199, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Home presents its innovative range of household cleaning products that are made with premium quality material that ensures durability and strength making them last for a longer time. Home Grass Broom is made from the best quality Garo hills grass that delivers an excellent cleaning performance even with the finest dust particles.</span><br>', 'broom.png', 'broom.png', 'broom.png', 10, 'In Stock', '2023-04-19 16:08:42', NULL),
(64, 9, 37, 'Surf Excel Matic Top Load Detergent Powder', '4 Kg', 810, 830, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Presenting, Surf excel matic top load the machine specialist laundry detergent from the Surf excel matic family that gives you 100% Tough Stain Removal in Machines. Surf excel matic top load is specially designed to work in high water level environment (40 liters) of top load washing machines.</span><br>', 'surfexcel.png', 'surfexcel1.png', 'surfexcel2.png', 0, 'In Stock', '2023-04-19 16:16:32', NULL),
(65, 6, 23, 'BORGES Green Olives - Sliced', '450g', 210, 250, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Perfectly Sliced Green Manzanilla Olives Stored In Brine Water vegetarian</span><br>', 'Screenshot 2023-04-20 122532.png', 'Screenshot 2023-04-20 122532.png', 'Screenshot 2023-04-20 122532.png', 0, 'In Stock', '2023-04-20 06:58:11', NULL),
(66, 6, 21, 'Pasta', '500g', 99, 120, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Pastalicious Elbow is the simplest way to enjoy your favourite meal in just 13 minutes.&nbsp;</span><br>', 'Screenshot 2023-04-08 134227.png', 'Screenshot 2023-04-08 134227.png', 'Screenshot 2023-04-08 134247.png', 0, 'In Stock', '2023-04-20 07:06:41', NULL),
(67, 7, 24, 'Lindberg Assorted Choco ', '200 g', 349, 549, 'good', 'Screenshot 2023-04-20 131745.png', 'Screenshot 2023-04-20 131734.png', 'Screenshot 2023-04-20 131734.png', 50, 'In Stock', '2023-04-20 07:49:40', NULL),
(68, 6, 21, 'Noodles', '140 g', 24, 30, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Chings Veg Noodles are prepared from plain boiled noodles, stir fried with vegetables and sauces. Cooking noodles need very less preparation time and you can make Hakka noodles in less than 10 minutes.</span><br>', 'Screenshot 2023-04-08 134943.png', 'Screenshot 2023-04-08 134943.png', 'Screenshot 2023-04-08 134952.png', 0, 'In Stock', '2023-04-20 09:49:45', NULL),
(69, 6, 21, 'Soup', '15g Pouch', 10, 15, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Ek Minute Mein Hunger Ki Bajao! The quickest and most delicious way to bust those hunger pangs is with Chings Instant Soups - Indias No. 1 Desi Chinese Soups. With just one cup of hot water and in just one minute you can relish a delicious garam-a-garam cup of Chings Instant Soup, anytime, anywhere. You can choose between the creamy and wholesome Sweet Corn, the hearty Mix Veg with crunchy veggie bits, the classic rich Tomato, the spicy Hot Sour and the zesty Manchow with veggies. So delicious and so satisfying!</span><br>', 'Screenshot 2023-04-20 123928.png', 'Screenshot 2023-04-20 124008.png', 'Screenshot 2023-04-20 123955.png', 0, 'In Stock', '2023-04-20 09:55:09', NULL),
(70, 6, 22, 'Cashew Biscuits', '400g', 210, 250, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Cashew Biscuits are bite-size biscuits. They are made with high-quality ingredients. It is enriched with a great taste of fresh and delicious cashews.</span><br>', 'Screenshot 2023-04-20 152933.png', 'Screenshot 2023-04-20 152958.png', 'Screenshot 2023-04-20 152933.png', 0, 'In Stock', '2023-04-20 10:02:47', NULL),
(71, 9, 38, 'Good knight Gold Flash Liquid Vapourizer, Mosquito Repellent Refill', '45 ml each Pack of 4', 239, 299, '<span style=\"color: rgb(0, 0, 0); font-family: sans-serif; font-size: 13.12px; white-space: pre-wrap; background-color: rgb(248, 249, 250);\">Good knight Gold Flash Liquid Vapourizer, Mosquito</span><br>', 'good.png', 'good1.png', 'good2.png', 0, 'In Stock', '2023-04-21 04:31:24', NULL),
(72, 8, 31, 'Body Lotion', '400 ml', 349, 499, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular; text-align: justify;\">Experience healthy glowing skin like never before with NIVEA Oil in Lotion</span><br>', 'Screenshot 2023-04-20 153908.png', 'Screenshot 2023-04-20 153908.png', 'Screenshot 2023-04-20 153944.png', 0, 'In Stock', '2023-04-21 04:42:12', NULL),
(73, 8, 35, 'Colgate Toothpaste', '4* 200g', 420, 500, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">&nbsp;Colgate Strong Teeth toothpaste helps prevent cavities, whitens teeth and freshens breath with regular use.&nbsp;</span><br>', 'Screenshot 2023-04-20 154856.png', 'Screenshot 2023-04-20 154856.png', 'Screenshot 2023-04-20 154856.png', 0, 'In Stock', '2023-04-21 04:49:35', NULL),
(74, 6, 22, 'Britannia Good Day Chocochip Cookies', '400g', 99, 140, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Britannia Good Day Chocochip Cookies are crunchy chocolate cookies loaded with melt in your mouth chocolate chips. These cookies offer a delicious chocolate experience that is sure to satisfy any chocolate craving.</span><br>', 'Screenshot 2023-04-21 102502.png', 'Screenshot 2023-04-21 102518.png', 'Screenshot 2023-04-21 102537.png', 0, 'In Stock', '2023-04-21 04:57:50', NULL),
(75, 7, 26, ' Tomato Ketchup', '950 g Spout Pouch', 85, 130, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">&nbsp;Original blend is now classic blend, with the same finger-licking taste! Each batch of Del Monte Tomato Ketchup goes through a rigorous process to give you a rich textured Ketchup, perfect for a classic lip-smacking taste.&nbsp;</span><br>', 'Screenshot 2023-04-21 105439.png', 'Screenshot 2023-04-21 105426.png', 'Screenshot 2023-04-21 105439.png', 0, 'In Stock', '2023-04-21 05:26:35', NULL),
(76, 7, 26, 'Mixed Fruit Jam', '200g', 71, 75, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">A medley of flavours from 8 fruits such as Banana, Papaya, Apple, Pear, Pineapple, Mango, Grape and Orange blended in to one lip smacking jam. Kissan jam is the best jam with the goodness of your favorite 8 fruits.</span><br>', 'Screenshot 2023-04-21 105829.png', 'Screenshot 2023-04-21 105829.png', 'Screenshot 2023-04-21 105829.png', 0, 'In Stock', '2023-04-21 05:30:55', NULL),
(77, 7, 27, 'Rava Idli Ready Mix', '500 g Pouch', 115, 130, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">MTR suggests you the broad range of prepared mix food including the very delicious Rava Idli. A strong and yummy breakfast is what you deserve to load your stomach and that you obtain in MTR Rava Idli which has been extracted from the finely graded ingredients.</span><br>', 'Screenshot 2023-04-21 110738.png', 'Screenshot 2023-04-21 110357.png', 'Screenshot 2023-04-21 110429.png', 0, 'In Stock', '2023-04-21 05:37:54', NULL),
(78, 7, 28, 'Motichoor Laddoo', '500g', 150, 160, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Motichoor Laddoo - Ghee is a delicious treat perfect for any occasion. This is guilt-free and will leave you wanting more.&nbsp;</span><br>', 'Screenshot 2023-04-21 111129.png', 'Screenshot 2023-04-21 111129.png', 'Screenshot 2023-04-21 111333.png', 0, 'In Stock', '2023-04-21 05:44:46', NULL),
(79, 7, 29, 'French - Fries', '120 g', 45, 50, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Deep fry french fries at 175 c for 3 minutes till golden in a pan,&nbsp;</span><br>', 'Screenshot 2023-04-21 131114.png', 'Screenshot 2023-04-21 131355.png', 'Screenshot 2023-04-21 130627.png', 0, 'In Stock', '2023-04-21 07:49:26', NULL),
(80, 7, 25, 'Popcorn', '100g', 35, 40, 'Fresh &amp; Delicious.', 'Screenshot 2023-04-21 132456.png', 'Screenshot 2023-04-21 132456.png', 'Screenshot 2023-04-21 132507.png', 0, 'In Stock', '2023-04-21 07:58:51', NULL),
(81, 7, 25, 'Chana Chur', '250 g', 45, 50, '<span style=\"color: rgb(102, 102, 102); font-family: ProximaNova-Regular;\">Store in a cool and dry place. Once opened, store in an airtight container.</span><br>', 'Screenshot 2023-04-21 133132.png', 'Screenshot 2023-04-21 133222.png', 'Screenshot 2023-04-21 133330.png', 0, 'In Stock', '2023-04-21 08:07:50', NULL),
(82, 7, 24, 'Amul Choco Minis', '250 g', 120, 140, '<span style=\"color: rgba(0, 0, 0, 0.65); font-family: JioType, helvetica, arial, sans-serif; font-size: 16px; letter-spacing: -0.08px;\">Amul Choco Minis is perfect to satisfy your craving for something sweet. It is the most popular sweet in the world and is also gifted during special occasions and celebrations. It has found many uses in desserts, cakes and milkshakes.</span><br>', 'Screenshot 2023-04-21 134020.png', 'Screenshot 2023-04-21 134038.png', 'Screenshot 2023-04-21 134119.png', 0, 'In Stock', '2023-04-21 08:13:20', NULL),
(83, 6, 21, 'Maggi', '600 g', 80, 95, 'Maggi-2 minute Noodles have been a classic indian snack for a good few decades now.', 'maggi.png', 'maggi1.png', 'maggi2.png', 0, 'In Stock', '2023-04-27 09:25:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(3, 2, 'Cookies,Rusk & Khari', '2023-03-18 08:43:49', '18-03-2023 02:13:49 PM'),
(4, 3, 'Dal & pulses', '2023-03-20 07:44:53', NULL),
(5, 3, 'Dry Fruits', '2023-03-20 07:45:39', NULL),
(6, 2, 'Cake & Pastries', '2023-03-20 07:56:18', '20-03-2023 01:26:18 PM'),
(7, 4, 'Tea', '2023-03-20 08:44:55', NULL),
(8, 4, 'coffee', '2023-03-20 08:45:13', NULL),
(10, 3, 'Atta,Flours & Sooji', '2023-03-21 08:51:19', NULL),
(11, 3, 'Masalas & Spices', '2023-03-21 08:51:56', NULL),
(12, 3, 'Oil & Ghee', '2023-03-21 08:52:16', NULL),
(13, 3, 'Salt, Sugar & Jaggery', '2023-03-21 08:53:19', NULL),
(14, 2, 'Dairy', '2023-03-21 08:54:49', NULL),
(15, 2, 'Bakery Snacks', '2023-03-30 08:29:59', '30-03-2023 01:59:59 PM'),
(16, 4, 'Fruit Juices & Soft Drinks', '2023-03-21 08:57:24', NULL),
(17, 4, 'Health Drinks', '2023-03-21 08:57:51', NULL),
(21, 6, 'Pasta, soup & Noodles', '2023-03-21 09:29:12', NULL),
(22, 6, 'Chocolates & Biscuits', '2023-03-21 09:29:39', NULL),
(23, 6, 'Tinned & Processed Food', '2023-03-21 09:30:07', NULL),
(24, 7, 'chocolates', '2023-03-21 09:31:37', NULL),
(25, 7, 'Snacks & Farsan', '2023-03-21 09:32:09', NULL),
(26, 7, 'Ketchup , Saurce & jams', '2023-03-21 09:32:23', NULL),
(27, 7, 'Ready To Cook', '2023-03-21 09:32:42', NULL),
(28, 7, 'Sweets', '2023-03-21 09:32:59', NULL),
(29, 7, 'Frozen Foods', '2023-03-21 09:33:57', NULL),
(31, 8, 'Skin Care', '2023-03-21 09:35:03', NULL),
(32, 8, 'Face Care', '2023-03-21 09:35:26', NULL),
(33, 8, 'Hair Care', '2023-03-21 09:35:43', NULL),
(35, 8, 'Oral Care', '2023-03-21 09:36:36', NULL),
(36, 9, 'pooja needs', '2023-04-19 15:23:54', NULL),
(37, 9, 'Detergents & Dishwash', '2023-04-19 15:24:41', NULL),
(38, 9, '	Fresheners & Repellents', '2023-04-19 15:26:35', NULL),
(39, 9, 'Mops , Brushes & Scrubs', '2023-04-19 15:27:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, '', 0x3132372e302e302e3100000000000000, '2023-02-01 09:19:13', '', 0),
(2, 'riya3@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-14 08:13:45', '14-03-2023 01:43:45 PM', 1),
(3, 'rish@gemail.com', 0x3a3a3100000000000000000000000000, '2023-03-14 08:14:51', '', 1),
(4, 'vishva@gmail.com', 0x3132372e302e302e3100000000000000, '2023-03-21 08:35:28', NULL, 0),
(5, 'vishva@gmail.com', 0x3132372e302e302e3100000000000000, '2023-03-21 08:35:43', NULL, 0),
(6, 'vishva@gmail.com', 0x3132372e302e302e3100000000000000, '2023-03-21 08:38:31', NULL, 1),
(7, 'riya3@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-24 03:47:07', NULL, 1),
(8, 'riya3@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-24 03:55:41', NULL, 1),
(9, '', 0x3a3a3100000000000000000000000000, '2023-03-26 09:33:49', NULL, 0),
(10, 'riya3@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-26 09:47:39', '26-03-2023 03:17:39 PM', 1),
(11, 'riya3@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-28 08:06:06', NULL, 0),
(12, 'riya3@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-28 08:50:04', '28-03-2023 02:20:04 PM', 1),
(13, 'devanshi@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-29 15:14:33', '29-03-2023 08:44:33 PM', 1),
(14, '', 0x3a3a3100000000000000000000000000, '2023-04-03 08:58:11', NULL, 0),
(15, 'devanshi@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-04 08:07:18', NULL, 1),
(16, 'riya3@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-10 08:41:32', '10-04-2023 02:11:32 PM', 1),
(17, 'devanshi@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-10 08:41:51', NULL, 1),
(18, 'devanshi@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-21 10:20:11', '21-04-2023 03:50:11 PM', 1),
(19, 'devanshi@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-23 10:04:41', NULL, 1),
(20, 'riya3@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-24 09:10:24', '24-04-2023 02:40:24 PM', 1),
(21, 'rish@gemail.com', 0x3a3a3100000000000000000000000000, '2023-04-24 09:30:40', NULL, 1),
(22, 'maya@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-26 14:58:20', '26-04-2023 09:21:17 PM', 1),
(23, 'maya@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-26 15:52:52', NULL, 1),
(24, 'riya3@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-27 09:09:30', '27-04-2023 02:43:50 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(1, 'Riya', 'riya3@gmail.com', 7284895367, 'Riya@00000', '27, Ram Park', 'Gujarat', 'Surat', 395004, 'Abc', 'Gujarat', 'Surat', 395004, '2023-03-24 03:56:53', ''),
(2, 'Rishabh', 'rish@gemail.com', 1234567890, 'Rishabh@123', '1103, Raj Laxmi', 'Gujarat', 'Surat', 395001, '1103, Raj Laxmi', 'Gujarat', 'Surat', 395001, '2023-04-24 09:36:14', NULL),
(3, 'vishva', 'vishva@gmail.com', 1234567890, 'Vishva@123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-21 08:38:11', NULL),
(4, 'Devanshi', 'devanshi@gmail.com', 1234567890, 'Devanshi@123', '12, Patel Park', 'Gujarat', 'Surat', 395004, '12, Patel Park', 'Gujarat', 'Bhavnagar', 364002, '2023-03-29 15:09:30', NULL),
(5, 'Maya', 'maya@gmail.com', 1234567800, 'Maya@123', '2003, Elexa, Adval', 'Gujarat', 'Ahmedabad', 382460, '2003, Elexa, Adval', 'Gujarat', 'Ahmedabad', 382460, '2023-04-26 14:57:49', '26-04-2023 08:31:00 PM');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 4, '2023-03-24 03:58:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
