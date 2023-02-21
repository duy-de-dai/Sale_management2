-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 20, 2023 lúc 02:37 PM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `sale_management`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dien_thoai`
--

CREATE TABLE `dien_thoai` (
  `id` int(10) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cost` double NOT NULL,
  `image` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `storage` int(11) NOT NULL,
  `details` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `createdate` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `dien_thoai`
--

INSERT INTO `dien_thoai` (`id`, `name`, `cost`, `image`, `size`, `storage`, `details`, `createdate`) VALUES
(2, 'SAMSUNG Galaxy Z Fold 4 256GB', 1766, 'https://m.media-amazon.com/images/I/71rtLTkq7PL._AC_SL1500_.jpg', '7.6', 256, 'Flex Mode, Hands Free Video, Multi Window View, Foldable Display, S Pen Compatible, US Version, Gray Green. Dynamic AMOLED,  50MP Wide | 12MP Ultra Wide, 10MP Tele + 3x Optical Zoom', 1676885671),
(3, 'SAMSUNG Galaxy Z Fold 3 5G', 850, 'https://m.media-amazon.com/images/I/51jhXNsXexS._AC_SL1000_.jpg', '7.6', 256, 'Factory Unlocked 2-in-1 Android Smartphone Tablet, 256GB, 120Hz, Foldable Dual Screen, Under Display Camera, US Version, Phantom Black\nMain: 7.6\" Infinity Flex display | Cover: 6.2\" Dynamic AMOLED', 1676888779),
(4, 'SAMSUNG Galaxy S21 Ultra 5G', 850, 'https://m.media-amazon.com/images/I/61O45C5qASL._AC_SL1000_.jpg', '6.8', 256, 'Cell Phone 256GB US Version Smartphone Pro-Grade Camera 8K Video 108MP High Res, Phantom Black. Snapdragon 888, PRO-GRADE CAMERA, SHARP 8K VIDEO, HIGHER RESOLUTION, 100X ZOOM', 1676888914),
(5, 'TracFone BLU View 2 (2022) 4G LTE', 32, 'https://m.media-amazon.com/images/I/61qTWOAsIPL._AC_SL1500_.jpg', '5.8', 32, 'The all new BLU View 2 smartphone pushes the limit to the edge with a gorgeous 5.5” HD+ Incell display, 64-Bit Quad-Core processor, 13MP Main Camera with Flash, and 8MP Camera for selfie lovers5. Android 11', 1676889094),
(6, 'Tracfone Motorola moto g Pure (2021)', 50, 'https://m.media-amazon.com/images/I/71zGrrAe5NL._AC_SL1500_.jpg', '6.5', 32, 'DUAL CAMERA SYSTEM: Get professional-looking portraits.  MORE FUN. LESS LAG: Feel your phone respond instantly to every touch, tap, and swipe. WATER-REPELLENT. WORRY PROOF. BEAUTIFULLY DESIGNED', 1676889200),
(7, 'Apple iPhone SE, 64GB', 226, 'https://m.media-amazon.com/images/I/71Jms6PpF0L._AC_SL1500_.jpg', '4.7', 64, 'This phone is unlocked and compatible. Tested for battery health and guaranteed. Backed by a one-year satisfaction guarantee. Inspected and guaranteed to have minimal cosmetic damage. Products with electrical plugs are designed for use in the US', 1676889352),
(8, 'iPhone 13 Pro Max', 1029, 'https://m.media-amazon.com/images/I/61-r9zOKBCL._FMwebp__.jpg', '6.7', 128, 'Unlocked. Tested for battery health and guaranteed to come with a battery that exceeds 90% of original capacity.\nInspected and guaranteed to have minimal cosmetic damage, which is not noticeable when the device is held at arm’s length.', 1676889430),
(9, 'OnePlus 11 5G', 700, 'https://m.media-amazon.com/images/I/81fRAoUL-fL._AC_SL1500_.jpg', '6.7', 128, '8GB RAM+128GB | Dual-SIM | Titan Black | US Factory Unlocked Android Smartphone | 5000 mAh battery | 80W Fast charging | Hasselblad Camera | 120Hz Fluid Display | 4nm Processor', 1676889487),
(10, 'Motorola Edge | 2022', 427, 'https://m.media-amazon.com/images/I/61S+zW8p4jL._AC_SL1500_.jpg', '6', 256, '2-Day Battery | Unlocked | Made for US 8/256GB | 50MP Camera | Mineral Gray. 2-Day Battery | Unlocked | Made for US 8/256GB | 50MP Camera | Mineral Gray. Made for US 8/256GB | 50MP Camera | Mineral Gray', 1676889541),
(11, 'SAMSUNG Galaxy S22+', 1000, 'https://m.media-amazon.com/images/I/51xekry3J5L._AC_SL1080_.jpg', '6.9', 256, 'Factory Unlocked Android Smartphone, 128GB, 8K Camera & Video, Brightest Display Screen, Long Battery Life, Fast 4nm Processor, US Version, Phantom White. 8K SUPER STEADY VIDEO. 50MP PHOTO', 1676889611),
(12, 'iPhone 11 Pro Max', 578, 'https://m.media-amazon.com/images/I/81RKYR7KDgL._AC_SL1500_.jpg', '6', 512, 'Includes a brand new, generic charging cable that is certified Mfi (Made for iPhone) and a brand new, generic wall plug that is UL certified for performance and safety. Also includes a SIM tray removal tool but does not come with headphones or a SIM card.', 1676889705),
(13, 'Apple iPhone 12 Pro Max', 888, 'https://m.media-amazon.com/images/I/71FuI8YvCNL._AC_SL1500_.jpg', '6', 512, 'Includes a brand new, generic charging cable that is certified Mfi (Made for iPhone) and a brand new, generic wall plug that is UL certified for performance and safety. Also includes a SIM tray removal tool', 1676889788),
(14, 'Apple iPhone 12 Pro Max', 888, 'https://m.media-amazon.com/images/I/71FuI8YvCNL._AC_SL1500_.jpg', '6', 512, 'Includes a brand new, generic charging cable that is certified Mfi (Made for iPhone) and a brand new, generic wall plug that is UL certified for performance and safety. Also includes a SIM tray removal tool', 1676889789),
(15, 'OnePlus Nord N20 5G', 245, 'https://m.media-amazon.com/images/I/71hIjJkMqFL._AC_SL1500_.jpg', '6.43', 128, 'Android Smart Phone |6.43\" AMOLED Display|6+128GB |U.S. Unlocked |4500 mAh Battery | 33W Fast Charging | Blue Smoke. Large 4500mAh Battery - Spend less time plugged in with an extra large battery.', 1676889845),
(16, 'OnePlus Nord N20 5G', 245, 'https://m.media-amazon.com/images/I/71hIjJkMqFL._AC_SL1500_.jpg', '6.43', 128, 'Android Smart Phone |6.43\" AMOLED Display|6+128GB |U.S. Unlocked |4500 mAh Battery | 33W Fast Charging | Blue Smoke. Large 4500mAh Battery - Spend less time plugged in with an extra large battery.', 1676889847),
(17, 'SAMSUNG Galaxy S23 Ultra 512GB', 1232, 'https://m.media-amazon.com/images/I/71Sa3dqTqzL._AC_SL1500_.jpg', '6.8', 512, 'Factory Unlocked Android Smartphone, 256GB Storage, 200MP Camera, Night Mode, Long Battery Life, S Pen, US Version, 2023, Phantom Black. WRITE, DRAW, CREATE w/ S PEN', 1676890469),
(18, 'Tracfone Motorola moto g Stylus', 100, 'https://m.media-amazon.com/images/I/71DLwhy2A1L._AC_SL1500_.jpg', '6.8', 128, 'Go longer on a single charge with a 4000 mAh battery..Form_factor : Slate\n48MP quad camera system: Showcase your creativity from every perspective, from ultra-wide angle shots to detailed close-ups and everything in between.', 1676890551),
(19, 'TracFone Nokia C100, 32GB', 100, 'https://m.media-amazon.com/images/I/71jP4h-XtLL._AC_SL1500_.jpg', '6.8', 32, 'Go longer on a single charge with a 4000 mAh battery..Form_factor : Slate\n48MP quad camera system: Showcase your creativity from every perspective, from ultra-wide angle shots to detailed close-ups', 1676890600),
(20, 'Google Pixel 7-5G Android Phone', 300, 'https://m.media-amazon.com/images/I/7173p0j-mbL._AC_SL1500_.jpg', '6.3', 256, 'Unlocked Smartphone with Wide Angle Lens and 24-Hour Battery - 256GB - Snow. Google Pixel 7 is powered by Google Tensor G2; it’s faster, more efficient, and more secure, with the best photo and video quality yet on Pixel', 1676890705),
(21, 'Xiaomi Redmi Note 8 Pro', 222, 'https://m.media-amazon.com/images/I/61ykl4wsysL._AC_SL1000_.jpg', '6.53', 64, '6 GB + 64 GB, Blu (Ocean Blue). Ultra high resolution photos allow for 3.26m poster prints. - Capture all the details with the macro lens. Field of vision 1.3 times greater. - 20 MP selfie camera. Helio G90T gaming processor.', 1676890806),
(22, 'Sony Xperia 5 IV 128GB', 798, 'https://m.media-amazon.com/images/I/61mX-x4KktL._AC_SL1500_.jpg', '6.1', 128, 'Get creative with a choice of three lenses; 16mm, 24mm and 60mm 120fps slow motion on all lenses\nReal-time Eye AF & object tracking for photo/video on all rear lenses\nBrighter 6.1” FHD 120Hz HDR 21:9 wide display', 1676890892),
(23, 'Sony Xperia 1 IV 512GB', 1111, 'https://m.media-amazon.com/images/I/41Lqw+OF15L._AC_.jpg', '6.1', 512, 'Get creative with a choice of three lenses; 16mm, 24mm and 60mm\nDramatize every moment w/ 4K HDR 120fps slow motion on all lenses\nReal-time Eye AF & object tracking for photo/video on all rear lenses\nBrighter 6.1”', 1676890926),
(24, 'Xiaomi 12T PRO', 670, 'https://m.media-amazon.com/images/I/51jXpdEbsYL._AC_SL1001_.jpg', '6.67', 512, '5G + 4G LTE (256GB + 12GB) Unlocked Worldwide (Only T-Mobile/Metro/Mint USA Market) 200MP Pro Camera 6.67\" 120Mhz + (w/Fast 51w Car Charger) (Black Global).  Proximity sensor | 360° Ambient light sensor', 1676890996),
(25, 'Xiaomi 12T 5G + 4G LTE', 670, 'https://m.media-amazon.com/images/I/411I1+BGmnL._AC_.jpg', '6.67', 128, 'Unlocked Worldwide (Only T-Mobile/Metro/Mint USA Market) 108MP Pro Camera 6.67\" 120Mhz + (w/Fast 51w Car Charger) (Blue (Global Version))', 1676891055);

--
-- Bẫy `dien_thoai`
--
DELIMITER $$
CREATE TRIGGER `Tự động thêm ngày khi tạo sản phẩm` BEFORE INSERT ON `dien_thoai` FOR EACH ROW BEGIN
SET NEW.createdate = UNIX_TIMESTAMP();
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thong_ke`
--

CREATE TABLE `thong_ke` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gia_nhap` int(11) NOT NULL,
  `gia_ban` int(11) NOT NULL,
  `da_ban` int(11) NOT NULL,
  `ton_kho` int(11) NOT NULL,
  `createdate` double NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `thong_ke`
--

INSERT INTO `thong_ke` (`id`, `name`, `gia_nhap`, `gia_ban`, `da_ban`, `ton_kho`, `createdate`, `image`) VALUES
(1, 'SAMSUNG Galaxy Z Flip 4 128GB', 800, 1000, 121, 444, 1676885092, 'https://m.media-amazon.com/images/I/517PxzJ-fUL._AC_SL1500_.jpg'),
(2, 'SAMSUNG Galaxy Z Fold 4 256GB', 1400, 1766, 21, 122, 1676885671, 'https://m.media-amazon.com/images/I/71rtLTkq7PL._AC_SL1500_.jpg'),
(3, 'SAMSUNG Galaxy Z Fold 3 5G', 664, 850, 45, 128, 1676888779, 'https://m.media-amazon.com/images/I/51jhXNsXexS._AC_SL1000_.jpg'),
(4, 'SAMSUNG Galaxy S21 Ultra 5G', 664, 850, 55, 128, 1676888914, 'https://m.media-amazon.com/images/I/61O45C5qASL._AC_SL1000_.jpg'),
(5, 'TracFone BLU View 2 (2022) 4G LTE', 25, 32, 124, 32, 1676889094, 'https://m.media-amazon.com/images/I/61qTWOAsIPL._AC_SL1500_.jpg'),
(6, 'Tracfone Motorola moto g Pure (2021)', 39, 50, 12, 32, 1676889200, 'https://m.media-amazon.com/images/I/71zGrrAe5NL._AC_SL1500_.jpg'),
(7, 'Apple iPhone SE, 64GB', 200, 226, 122, 36, 1676889352, 'https://m.media-amazon.com/images/I/71Jms6PpF0L._AC_SL1500_.jpg'),
(8, 'iPhone 13 Pro Max', 888, 1029, 111, 36, 1676889430, 'https://m.media-amazon.com/images/I/71zwao302EL._AC_SL1500_.jpg'),
(9, 'OnePlus 11 5G', 556, 700, 43, 3, 1676889487, 'https://m.media-amazon.com/images/I/81fRAoUL-fL._AC_SL1500_.jpg'),
(10, 'Motorola Edge | 2022', 300, 427, 43, 32, 1676889541, 'https://m.media-amazon.com/images/I/61S+zW8p4jL._AC_SL1500_.jpg'),
(11, 'SAMSUNG Galaxy S22+', 802, 1000, 431, 32, 1676889611, 'https://m.media-amazon.com/images/I/51xekry3J5L._AC_SL1080_.jpg'),
(12, 'iPhone 11 Pro Max', 400, 578, 47, 32, 1676889705, 'https://m.media-amazon.com/images/I/81RKYR7KDgL._AC_SL1500_.jpg'),
(13, 'Apple iPhone 12 Pro Max', 700, 888, 111, 32, 1676889788, 'https://m.media-amazon.com/images/I/71FuI8YvCNL._AC_SL1500_.jpg'),
(14, 'Apple iPhone 12 Pro Max', 700, 888, 111, 32, 1676889789, 'https://m.media-amazon.com/images/I/71FuI8YvCNL._AC_SL1500_.jpg'),
(15, 'OnePlus Nord N20 5G', 200, 245, 11, 3, 1676889845, 'https://m.media-amazon.com/images/I/71hIjJkMqFL._AC_SL1500_.jpg'),
(16, 'OnePlus Nord N20 5G', 200, 245, 11, 3, 1676889847, 'https://m.media-amazon.com/images/I/71hIjJkMqFL._AC_SL1500_.jpg'),
(17, 'SAMSUNG Galaxy S23 Ultra 512GB', 1000, 1232, 211, 32, 1676890469, 'https://m.media-amazon.com/images/I/71Sa3dqTqzL._AC_SL1500_.jpg'),
(18, 'Tracfone Motorola moto g Stylus', 78, 100, 21, 11, 1676890551, 'https://m.media-amazon.com/images/I/71DLwhy2A1L._AC_SL1500_.jpg'),
(19, 'TracFone Nokia C100, 32GB', 78, 100, 21, 11, 1676890600, 'https://m.media-amazon.com/images/I/71jP4h-XtLL._AC_SL1500_.jpg'),
(20, 'Google Pixel 7-5G Android Phone', 222, 300, 21, 11, 1676890705, 'https://m.media-amazon.com/images/I/7173p0j-mbL._AC_SL1500_.jpg'),
(21, 'Xiaomi Redmi Note 8 Pro', 200, 222, 21, 11, 1676890806, 'https://m.media-amazon.com/images/I/7173p0j-mbL._AC_SL1500_.jpg'),
(22, 'Sony Xperia 5 IV 128GB', 712, 798, 112, 33, 1676890892, 'https://m.media-amazon.com/images/I/61mX-x4KktL._AC_SL1500_.jpg'),
(23, 'Sony Xperia 1 IV 512GB', 867, 1111, 112, 33, 1676890926, 'https://m.media-amazon.com/images/I/41Lqw+OF15L._AC_.jpg'),
(24, 'Xiaomi 12T PRO', 555, 670, 11, 33, 1676890996, 'https://m.media-amazon.com/images/I/51jXpdEbsYL._AC_SL1001_.jpg'),
(25, 'Xiaomi 12T 5G + 4G LTE', 555, 670, 11, 33, 1676891055, 'https://m.media-amazon.com/images/I/411I1+BGmnL._AC_.jpg');

--
-- Bẫy `thong_ke`
--
DELIMITER $$
CREATE TRIGGER `tu dong them ngay khi tao tai khoan` BEFORE INSERT ON `thong_ke` FOR EACH ROW BEGIN
SET NEW.createdate = UNIX_TIMESTAMP();
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `createdate` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `level`, `createdate`) VALUES
(1, 'duydaidot@gmail.com', '123456', '', 1669953531),
(56, '222', 'd41d8cd98f00b204e9800998ecf8427e', '2', 1670422024),
(57, 'xsscs', '8e14411d205d3a428ea28feadbdedd79', '1', 1670422232),
(58, '', '8e14411d205d3a428ea28feadbdedd79', '1', 1670422234),
(59, 'viet@gmail.com', 'ad57484016654da87125db86f4227ea3', '1', 1670422251),
(60, 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '1', 1670511550),
(61, '', 'c4ca4238a0b923820dcc509a6f75849b', '1', 1670513981),
(62, 'duydaidot@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '1', 1670514044),
(63, 'viet@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '2', 1670557636),
(64, 'nguoidung@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '2', 1670557703),
(65, 'admin1@gmail.com', 'admin1@gmail.com', '1', 1673063983),
(66, '', '21232f297a57a5a743894a0e4a801fc3', '1', 1673324280),
(67, '', 'd41d8cd98f00b204e9800998ecf8427e', '', 1673324337),
(68, '', 'b59c67bf196a4758191e42f76670ceba', '1', 1673324354);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `dien_thoai`
--
ALTER TABLE `dien_thoai`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thong_ke`
--
ALTER TABLE `thong_ke`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `dien_thoai`
--
ALTER TABLE `dien_thoai`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `thong_ke`
--
ALTER TABLE `thong_ke`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
