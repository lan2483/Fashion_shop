-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2024 at 02:12 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `group10`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`catId`, `catName`) VALUES
(40, 'Shirt'),
(41, 'Jacket'),
(42, 'Jeans; JUMPSUIT'),
(43, 'Skirt'),
(44, 'Dress'),
(45, 'Underwear');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) NOT NULL,
  `adminEmail` varchar(150) NOT NULL,
  `adminUser` varchar(255) NOT NULL,
  `adminPass` varchar(255) NOT NULL,
  `level` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminEmail`, `adminUser`, `adminPass`, `level`) VALUES
(2, 'Diem', '20070736@gmail.com', 'Diem202', '0dff433d8e179c54f0ef8338dbdb616a', ''),
(3, 'Lanlan', 'lanlan248309@gmail.com', 'Lanlan', '0dff433d8e179c54f0ef8338dbdb616a', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(15, 'IVY moda'),
(16, 'Chanel'),
(17, 'Hermès'),
(18, 'Gucci'),
(19, 'Louis Vuitton'),
(20, 'Prada'),
(21, 'Dior'),
(22, 'Burberry'),
(23, 'Dolce &amp; Gabbana'),
(24, 'Ralph Lauren'),
(25, 'Versace'),
(26, 'Armani'),
(27, 'Givenchy'),
(30, 'Bottega Veneta'),
(31, 'Mikenco');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartID` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `sessionId` varchar(255) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `quantity` int(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `userId` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartID`, `productId`, `sessionId`, `productName`, `size`, `price`, `quantity`, `image`, `userId`, `coupon_id`) VALUES
(1, 98, 'lof6r2alolnms3ausca9jcks9h', 'T-SHIRT AND PANTS SET OF THE SAME COLOR', 'M', '548000', 1, '59848e5c59.jfif', 2, 0),
(8, 78, 'ljjrud56n1jrbt2lkls5bjlsm4', 'HEART COLLAR DRESS WITH WAIST BAND', 'S', '1590000', 2, 'dc7d439423.jfif', 1, 0),
(13, 75, 'jdchbhu2jfguvij78mjcdhrlkv', 'CROPTOP SHIRT WITH FRONT POCKETS', 'S', '1090000', 1, '7f4f581ada.jfif', 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `id` int(11) NOT NULL,
  `namebl` varchar(30) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `productId` int(11) NOT NULL,
  `dateComment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_comment`
--

INSERT INTO `tbl_comment` (`id`, `namebl`, `comment`, `productId`, `dateComment`) VALUES
(1, 'HoangLua', 'fgfggf', 98, '21/12/2023');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_discount`
--

CREATE TABLE `tbl_discount` (
  `coupon_name` varchar(50) NOT NULL,
  `coupon_time` varchar(50) NOT NULL,
  `coupon_conditions` int(50) NOT NULL,
  `coupon_number` int(11) NOT NULL,
  `coupon_code` varchar(50) NOT NULL,
  `coupon_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_discount`
--

INSERT INTO `tbl_discount` (`coupon_name`, `coupon_time`, `coupon_conditions`, `coupon_number`, `coupon_code`, `coupon_id`) VALUES
('Chuc_mung_Nam_Moi', '100', 0, 10, ' CMNM ', 6);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `orderId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `size` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `thanhtien` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `order_time` datetime NOT NULL,
  `recieve_time` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`orderId`, `productId`, `size`, `price`, `image`, `quantity`, `thanhtien`, `userId`, `order_time`, `recieve_time`, `status`) VALUES
(80, 88, 'S', '1690000', 'c6e718b57c.jfif', 11, 18590000, 10, '2022-05-31 09:40:40', '2022-05-31 09:41:17', 3),
(81, 84, 'M', '950000', '7c81aa945b.jfif', 1, 950000, 1, '2023-12-26 22:41:49', '0000-00-00 00:00:00', 0),
(82, 82, 'M', '1490000', 'a5f20177f0.jfif', 1, 1490000, 1, '2023-12-26 22:44:01', '0000-00-00 00:00:00', 0),
(83, 60, 'M', '1125600', '1b792b54ed.jpg', 1, 1125600, 3, '2023-12-26 23:01:14', '0000-00-00 00:00:00', 0),
(84, 75, 'M', '1090000', '7f4f581ada.jfif', 1, 1090000, 1, '2023-12-27 00:20:50', '0000-00-00 00:00:00', 0),
(85, 1, 'M', '300000', '9e64fe7d5d.png', 1, 300000, 5, '2023-12-28 23:35:59', '0000-00-00 00:00:00', 0),
(86, 60, 'M', '1125600', '1b792b54ed.jpg', 1, 1125600, 8, '2024-01-03 22:16:46', '2024-01-03 22:28:23', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(100) NOT NULL,
  `productName` tinytext NOT NULL,
  `catId` int(110) NOT NULL,
  `brandId` int(110) NOT NULL,
  `product_desc` text NOT NULL,
  `type` int(11) NOT NULL,
  `price` bigint(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `typeProductId` int(100) NOT NULL,
  `quantity` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `catId`, `brandId`, `product_desc`, `type`, `price`, `image`, `typeProductId`, `quantity`) VALUES
(1, 'Sweatshirt', 40, 21, 'A sweater is a pullover shirt with long sleeves and straps on the arms and legs. Sweaters do not have hoods like hoodies. The shirt is mainly made of wool fabric. Sweaters do not have pockets like hoodies and can be used by both men and women. Sweaters are often worn in winter to help keep the body warm.', 1, 300000, '9e64fe7d5d.png', 33, 50),
(55, 'Gucci Logo-Patch Polo Shirt Green', 40, 18, 'Green Gucci Logo-Patch Polo Shirt is a fashionable shirt for men from the famous Gucci brand. With a modern design and outstanding delicate patterns, the Gucci Logo-Patch Shirt is sought after by many fashionistas.', 0, 11000000, 'a5ce1e5572.jpg', 28, 0),
(56, 'Gucci Bomber Jacket Navy Blue Size', 41, 18, 'Gucci Bomber Jacket Navy Blue Size 44\r\n', 0, 5000000, '860d19c990.jpg', 34, 0),
(57, 'Gucci Bomber Jacket Black Size', 41, 18, 'Black Gucci Jacket Bomber Jacket is a fashionable shirt for men from the famous Gucci brand. With modern design and high-quality materials, the Black Gucci Jacket is sought after by many fashionistas.', 0, 6000000, '48babe3b85.jpg', 34, 0),
(58, 'Áo Sơ Mi Gucci White Cotton Snake Embroidered Collar Duke Shirt', 40, 18, 'Gucci White Cotton Snake Embroidered Collar Duke Shirt Size 38 is a fashionable shirt for men from the famous Gucci brand. With a modern design and outstanding delicate patterns, the Gucci White Cotton Snake Embroidered Collar Duke Shirt is sought after by many fashionistas.', 0, 11500000, 'a84d252252.jpg', 29, 1),
(59, 'Gucci Sweater Cardigan 595514 XKA0Z 4206 Navy Blue', 41, 18, 'Gucci Sweater Cardigan 595514 XKA0Z 4206 Navy Blue is a fashionable shirt for men from the famous Gucci brand. With modern design and high-quality materials, the Gucci Sweater 595514 XKA0Z 4206 Navy Blue is sought after by many fashionistas.', 0, 300000, '3dec240203.jpg', 34, 5),
(60, 'Gucci Web Stripe-Detail Polo Shirt Black Long Sleeve', 40, 18, 'Gucci Web Stripe-Detail Polo Shirt Black Long Sleeve is a fashionable shirt for men from the famous Gucci brand. With modern design and high-quality materials, the Gucci Web Stripe-Detail Polo Shirt is sought after by many fashionistas.', 0, 1125600, '1b792b54ed.jpg', 29, 6),
(61, 'Áo Bomber Gucci Reversible Nylon GG Bomber Jacket Orange', 41, 18, 'Gucci Reversible Nylon GG Bomber Jacket Orange Bomber Jacket is a fashionable shirt for men from the famous Gucci brand. With modern design and high-quality materials, the Gucci Reversible Nylon GG Bomber Jacket Orange is sought after by many fashionistas.', 0, 2560000, '3354fdf70d.jpg', 34, 1),
(62, 'Gucci Cotton Shirt With Symbols White', 40, 18, 'Gucci Cotton Shirt With Symbols White is a fashionable shirt for men from the famous Gucci brand. With a modern design and outstanding delicate patterns, the Gucci Cotton Shirt With Symbols is sought after by many fashionistas.', 0, 25600000, '0bedfbdb7f.jpg', 29, 0),
(63, 'Gucci Bee-Embroidered Slim-Fit Stretch-Cotton Polo Shirt New SS2019', 40, 18, 'The Gucci Bee-Embroidered Slim-Fit Stretch-Cotton Polo Shirt New SS2019 Black is designed with a collar, short sleeves and Gucci\'s signature bee pattern, creating a dynamic and youthful look for the wearer but also elegant. showy, luxurious.', 0, 25600000, 'c0f99931c5.jpg', 28, 0),
(64, 'Gucci Polo Shirt Blue with Red Trim', 40, 18, 'Gucci Polo Shirt in Blue with Red Border is designed with a collar and short sleeves, creating a dynamic and youthful look for the wearer but also equally elegant and luxurious. With 100% cotton material, the shirt is soft, smooth, and airy, creating a comfortable feeling for the wearer.', 0, 9000000, 'd9c66c0f90.jpg', 28, 0),
(65, 'PARKA', 41, 30, 'Linen and linen hooded parka\r\n\r\n• Removable hand-stitched wavy triangle cut-out lining • Buckle\r\n\r\nConcealed pull and button closure\r\n\r\n• Oversized fit\r\n\r\n  Material: 60% cotton, 40% canvas\r\n• Color: Chalk\r\n  Made in: Italy', 0, 30000000, '5681815b98.jpg', 34, 0),
(66, 'T-SHIRT', 40, 30, ' Dyed t-shirts\r\n\r\n• Tonal \"Bottega\" embroidery on back\r\n\r\n• Fit\r\n\r\n  Material: 100% cotton\r\n• Color: Kiwi\r\n  Made in: Italy', 0, 560000, 'bee7eedaa2.jpg', 29, 101),
(67, 'COAT', 41, 30, '• Hand-stitched wavy triangle intarsia cropped jacket\r\n\r\n• Fabric belt\r\n\r\n• Borderless • Medium\r\n\r\ntwist\r\n\r\n  Material: 100% sheep wool\r\n• Color: Parakeet / Kiwi\r\n  Made in: Italy\r\n\r\nStyle: 647708V1KV07072', 0, 9600000, '0c5a4419ed.jpg', 34, 10),
(68, 'SHORTS', 42, 30, 'Straight shorts in soft denim with 3-way macaw closure\r\n\r\n• Button closure\r\n\r\n  Material: 100% cotton\r\n• Color: Indigo\r\n  Made in: Italy', 0, 890000, 'b416b41575.jpg', 38, 10),
(69, 'Jacket', 41, 30, 'Knitted denim jacket with macaw buckle seams\r\n\r\n• Button closure •\r\n\r\nBorderless\r\n\r\n• Fit\r\n\r\n  Material: 92% Cotton, 8% Polyester\r\n• Color: Navy blue\r\n  Made in: Italy', 0, 7000000, '159cf726ce.jpg', 34, 0),
(70, 'DRESS', 44, 30, 'See-through criss-cross dress in viscose ottoman fabric\r\n\r\n• Close\r\n\r\nbuckle • Borderless • Fit\r\n\r\ntwist\r\n\r\n  Material: 63% Polyester, 37% Viscose\r\n• Color: White / Black\r\n  Made in: Italy', 1, 852000, 'bf3ee98a96.jpg', 45, 5),
(71, 'Dress', 43, 30, 'Soft twill skirt with chintz finish\r\n\r\n• Decorative tassels around the neck\r\n\r\n• Comfortable fit\r\n\r\n  Material: 100% Polyester\r\n• Black\r\n  Made in: Italy', 1, 890000, '45b2b29d11.jpg', 42, 5),
(72, 'Sweater', 41, 30, 'Cotton blend intreccio pattern cardigan • Button closure\r\n\r\n• Fit\r\n\r\ntwist\r\n\r\n  Material: 61% Polyamide, 39% Cotton\r\n• Color: Parakeet\r\n  Made in: Italy', 1, 589000, '6facb4dc25.jpg', 34, 70),
(73, 'Women\'s shorts', 42, 30, 'Shorts lined with sand-blend cotton • Elastic waistband\r\n\r\nwith reverse embroidered logo\r\n\r\n  Material: 100% cotton\r\n• White\r\n  Made in: Italy', 1, 4560000, '7ae82fe310.jpg', 39, 0),
(74, 'Shirt', 40, 30, 'Stretch poplin shirt\r\n\r\n• Button closure\r\n\r\n• Fit\r\n\r\n  Material: 96% Cotton, 4% Elastane\r\n• Color: Parakeet\r\n  Made in: Italy', 1, 6000000, '936e95c02b.jpg', 29, 698),
(75, 'CROPTOP SHIRT WITH FRONT POCKETS', 40, 15, 'German collar shirt, crop top shape with mid-length, short sleeves. Along the body of the shirt are buttons hidden inside. The front has 2 square pockets and faux buttons.', 1, 1090000, '7f4f581ada.jfif', 29, 100),
(76, 'SUMMARY PANTS WITH EMBROIDERED POCKETS', 42, 16, 'The embroidered border will have random colors (pink, red, black, white). Straight pants, ankle length. The main material is thick Tuysi. There are hidden buttons on the waistband of the pants. The front has 2 box pockets, the stylized border is embroidered with embroidered thread', 1, 800000, 'b65d52f15c.jfif', 39, 100),
(77, 'MONGTOGHI T-SHIRT', 40, 16, 'T-shirt with crop top shape, V neck, short sleeves, mongtoghi style. The shirt has a slim fit, with mini buttons on the front.', 1, 750000, '3a92fe9b64.jfif', 28, 93),
(78, 'HEART COLLAR DRESS WITH WAIST BAND', 44, 15, 'Long turtleneck dress. The body of the dress is made up of 2 diagonal flaps and is fixed at the waist with an adjustable bow. The dress is sleeveless and the long belt covers the wearer\'s shoulder blades.', 1, 1590000, 'dc7d439423.jfif', 46, 101),
(79, 'A-line dress with metal straps', 44, 21, 'A-line dress, V neck. Sleeveless dress design. On the front of the chest is a twisted part combined with a small gold-colored metal chain. The dress has a waistline and a comfortable loose fit.', 1, 1369000, '428bb42f4d.jfif', 46, 998),
(80, 'SILK SHIRT', 40, 21, 'Straight shirt, silk material. Ancient German, long sleeves. Solid color scheme.', 1, 1090000, '62e5238c9d.jfif', 29, 129),
(81, 'LARGE BOW-BOW MIXED SHIRT', 40, 19, 'The shirt is made from light chiffon material. The shirt\'s shape is straight and the sleeves are wide and tapered at the top of the tube. Along the body of the shirt are golden metal buttons. Stylized collar with large silk tie. The shirt set includes a 2-strap shirt inside.\r\n\r\n', 1, 1190000, 'f29695aac5.jfif', 29, 248),
(82, 'EMBROIDERED SILK SHIRT', 40, 22, 'Straight shirt, round neck. The sleeves are tapered gradually towards the head. Along the body of the shirt is embroidered plant motifs.', 1, 1490000, 'a5f20177f0.jfif', 29, 1233),
(83, 'BLENDED SILK SHIRT', 40, 19, 'Simple design shirt with basic ancient virtues. Sleeveless design, straight fit. Along the button edge is a row of large ruffles. The main materials are high quality silk and soft chiffon.\r\n', 1, 850000, '98d199e397.jfif', 29, 770),
(84, 'PEARL TIE-ATTACHED SHIRT', 40, 16, 'Ancient German shirt. Chiffon material. The sleeves are short and slightly puffy, rounded at the top of the tube. The front is a metal button. The collar is decorated with a pearl bow. The collar, sleeve hem and button hem are all the same color.', 1, 950000, '7c81aa945b.jfif', 29, 75),
(85, 'SILK DRESS WITH HEARTS', 40, 15, 'The shirt design is straight, cylindrical neck, long sleeves. The collar is coordinated with small ruffles. Both sleeves are designed with large ruffles and combined with sophisticated heart accessories. The back collar has buttons', 1, 1590000, '35105a5e9a.jfif', 29, 965),
(86, 'BLAZER 4 BUTTON', 41, 19, 'Blazer-style jacket, felt fabric with 2 lapels and K-shaped cutout, long sleeves with belt. 2 diagonal pockets on both sides. 4 buttons on the front. Through sophisticated lines such as sharp shoulders, buttons and a perfect shape, every centimeter is worn', 1, 1953000, '0f80304c03.jfif', 35, 15),
(87, 'BLAZER YES', 41, 20, 'Blazer-style jacket, felt fabric with 2 lapels and K-shaped cutout, long sleeves with belt. 2 diagonal pockets on both sides. 4 buttons on the front. Through sophisticated lines such as sharp shoulders, buttons and a perfect shape, every centimeter is worn', 1, 1953000, '694bc64b29.jfif', 35, 334),
(88, 'SLIM JUMPSUIT', 42, 16, 'Jumpsuit is plain and loose. The shirt is sleeveless, the flap falls from the front to the back. Straight leg pants, wide, heel-length. There are 2 diagonal pockets on both sides. The main material is silk.', 1, 1690000, 'c6e718b57c.jfif', 41, 18),
(89, 'JUMPSUIT VEST WITH BELT', 42, 22, 'Jumpsuit design is straight, the middle of the waist is accentuated by a belt. The shirt has a vest collar and short sleeves. Straight-leg pants, ankle length. The main material is soft silk with a slight shine.', 1, 1790000, '8ec266b465.jfif', 41, 47),
(90, 'SILK CHECKED SHIRT', 40, 15, 'Shirt with slim fit and vertical body. Ancient German design. The front has 2 box pockets combined with metal buttons. At the elbow there is a button to fix it when the sleeve is folded. The tail-shaped shirt is split on both sides.\r\n\r\n\r\n\r\n', 1, 1490000, '15177fd3b3.jpg', 29, 4241),
(91, 'MEN\'S KHAKI DRAWBOW PANTS', 42, 19, 'Skinny elastic waistband khaki pants, quilted waistband with drawstring. There are front pockets and 2 back flap pockets.', 0, 1090000, 'bd9400c2f4.jpg', 39, 77),
(92, 'Jeans', 42, 15, 'Long jeans reaching the ankle, comfortable material and easy to move\r\nThe youthful, dynamic design of the slim fit design has a sewn box pocket on the back and 2 diagonal pockets on both sides. Highly applicable for men', 0, 1190000, 'ce32e86223.jfif', 38, 54),
(93, 'Plaid VEST', 41, 21, 'Chest, 2 squares with flaps on both sides, 3 pockets lined inside. There are 2 buttons on the front. Split sides at the back.', 0, 1745000, '2b18d3adeb.jfif', 36, 4570),
(94, 'LONG MEN DARK JACKET', 41, 23, 'Evening jacket with 2 K-shaped lapel collars. Long sleeves with 3 decorative buttons. 2 square pockets with flaps on both sides. Long straight shirt. Fastens with buttons at the front. With high quality pressed felt material, soft, keeps warm well, does not stick to dust, fashionable design, elegant and polite style.', 0, 3690000, 'befc208b26.jfif', 34, 54),
(95, 'ÁO POLO CỔ ĐỨC', 40, 19, 'With elastic fabric and easy-to-wear short-sleeved shirt form, it will give the wearer a comfortable and cool feeling', 0, 790000, '63afc5eb72.jfif', 28, 72),
(96, 'MEN JEANS SOOCS', 42, 27, 'Regular fit black denim shorts. There are 5 pockets. The waistband uses metal buckles and buttons, with a unique torn front. Modern black color, suitable for street fashion.', 0, 990000, 'f5a062b608.jfif', 38, 10),
(98, 'T-SHIRT AND PANTS SET OF THE SAME COLOR', 40, 19, 'A set includes a short-sleeved shirt and shorts of the same color. The color of the set will be randomly assigned.', 2, 548000, '59848e5c59.jfif', 28, 45),
(99, 'QUẦN SOOC NƠ', 42, 18, 'Elastic shorts, thigh length. The shape of the pants is slightly tight. The front has a cute bow tie. The elastic material is cool and light', 2, 450000, 'c1a7aa790d.jfif', 40, 74),
(100, 'SET THUN COOL GIRL HAVE FUN', 40, 16, 'T-shirt set includes shirt and short pants. Short-sleeved shirt, loose fit, funny print on the front. Short pants, elastic belt, front diagonal pockets, printed to match the shirt.', 2, 598000, '5a320bc109.jfif', 40, 597988),
(101, 'DYE TIE SET', 43, 18, 'T-shirt set includes short-sleeved shirt and shorts. The main pattern is Tie Dye. The front of the shirt is printed with quotes in embossed material. The shorts have pockets on both sides.', 2, 739000, 'cbb5f00d61.jfif', 50, 350),
(102, 'PRINTED BAG SET', 40, 15, 'T-shirt set for boys is spacious and airy. The unique crossbody bag print makes the set more eye-catching. This t-shirt set is suitable for your child to wear to class or out with the family.', 2, 698000, '5567c155a3.jfif', 28, 14),
(103, 'LITTLE DINOSAUR KHAKI PANTS', 40, 16, 'Khaki pants have cute little dinosaur patterns. The shape of the pants is light and straight, yet still feels comfortable for your child. The pants have a faux zipper waistband, cute and suitable for everyday wear.', 2, 390000, '3e372328c0.jfif', 41, 65);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_repcomment`
--

CREATE TABLE `tbl_repcomment` (
  `id` int(11) NOT NULL,
  `nameId` int(11) NOT NULL,
  `rep` varchar(255) NOT NULL,
  `namerep` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_repcomment`
--

INSERT INTO `tbl_repcomment` (`id`, `nameId`, `rep`, `namerep`) VALUES
(0, 0, 'hgygytg', ' HoangLua'),
(1, 43, 'hay quas chij', ' thuy122'),
(2, 43, 'oichi', ' thuy122'),
(3, 43, 'oichi', ' thuy122'),
(4, 46, 'hhh', ' thuy122'),
(5, 47, 'hihi', ' thuy122'),
(6, 46, 'hihimNH', ' thuy122'),
(7, 45, 'anh manh rat deptrai', ' thuy122'),
(8, 41, 'an com ddi', ' thuy122'),
(9, 48, 'droi', ' thuy122'),
(10, 48, 'cc', ' thuy122'),
(11, 48, 'cc', ' thuy122'),
(12, 48, 'cc', ' thuy122'),
(13, 48, 'cc', ' thuy122'),
(14, 48, 'cc', ' thuy122'),
(15, 46, 'oke', ' thuy122'),
(16, 49, 'thank', ' thuy122'),
(17, 50, 'tim', ' thuy122'),
(18, 53, 'dkfjskdjf', ' thuy122'),
(19, 53, 'lkifpkakfpas', ' thuy122');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_type_product`
--

CREATE TABLE `tbl_type_product` (
  `typeProductID` int(100) NOT NULL,
  `typeProductName` varchar(255) NOT NULL,
  `catID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_type_product`
--

INSERT INTO `tbl_type_product` (`typeProductID`, `typeProductName`, `catID`) VALUES
(28, 'Shirt', 40),
(29, 't-Shirt', 40),
(30, 'Peplum Shirt', 40),
(31, 'Modern wear', 40),
(32, 'Croptop shirt', 40),
(33, 'Sweater', 40),
(34, 'Jacket', 41),
(35, 'Blazer', 41),
(36, 'Suit', 41),
(37, 'Mang-to', 41),
(38, 'Jeans', 42),
(39, 'Trouse', 42),
(40, 'Shorts', 42),
(41, 'Jumpsuit', 42),
(42, 'Skirt', 43),
(43, 'Pleated shirt', 43),
(44, 'A-line skirt', 43),
(45, 'Dress', 44),
(46, 'Chiffon talk', 44),
(47, 'T-shirt', 44),
(48, 'Senora - Event dress', 44),
(49, 'Underwear', 45),
(50, 'Bra', 45),
(51, 'Pyjama', 45),
(52, 'Bikini', 45);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_uer`
--

CREATE TABLE `tbl_uer` (
  `userId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userPassword` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gioiTinh` varchar(255) NOT NULL,
  `sdt` int(11) NOT NULL,
  `ngaySinh` varchar(255) NOT NULL,
  `diaChi` text NOT NULL,
  `cauHoiBM` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_uer`
--

INSERT INTO `tbl_uer` (`userId`, `name`, `username`, `userPassword`, `email`, `gioiTinh`, `sdt`, `ngaySinh`, `diaChi`, `cauHoiBM`) VALUES
(3, 'Hoang Thi Lua', 'HoangLua', '0dff433d8e179c54f0ef8338dbdb616a', '20070736@vnu.edu.vn', 'Nữ', 2147483647, '2002', 'Bac Giang', 'book'),
(4, 'Hoang Thi Lua', 'HoangLua', '25f9e794323b453885f5181f1b624d0b', '20070736vnu.edu.vn', 'Nữ', 2147483647, '2002', 'Bac Giang', 'book'),
(5, 'An Pham', 'An Pham ', '25f9e794323b453885f5181f1b624d0b', 'Anpham@gmail.com', 'Nam', 702222002, '8/3/2002', 'Bac Giang', 'book'),
(8, 'Nguyen Hoang Lan', 'Lanlan', '0dff433d8e179c54f0ef8338dbdb616a', 'lanlan248309@gmail.com', 'Nữ', 2147483647, '24/09/2002', 'Bac Giang', 'book');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`catId`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartID`),
  ADD KEY `productId` (`productId`,`userId`),
  ADD KEY `coupon_id` (`coupon_id`);

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productId` (`productId`);

--
-- Indexes for table `tbl_discount`
--
ALTER TABLE `tbl_discount`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`orderId`),
  ADD KEY `productId` (`productId`,`userId`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`),
  ADD KEY `catId` (`catId`,`brandId`,`typeProductId`);

--
-- Indexes for table `tbl_repcomment`
--
ALTER TABLE `tbl_repcomment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nameId` (`nameId`);

--
-- Indexes for table `tbl_type_product`
--
ALTER TABLE `tbl_type_product`
  ADD PRIMARY KEY (`typeProductID`),
  ADD KEY `catID` (`catID`);

--
-- Indexes for table `tbl_uer`
--
ALTER TABLE `tbl_uer`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `tbl_discount`
--
ALTER TABLE `tbl_discount`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `tbl_type_product`
--
ALTER TABLE `tbl_type_product`
  MODIFY `typeProductID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `tbl_uer`
--
ALTER TABLE `tbl_uer`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
