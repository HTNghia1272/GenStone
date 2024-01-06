-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 26, 2023 lúc 05:36 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `cnpm`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `BrandID` int(11) NOT NULL,
  `BranName` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`BrandID`, `BranName`) VALUES
(1, 'Owen'),
(2, 'Biluxury\r\n'),
(3, 'Routine'),
(5, 'Poloman'),
(6, 'Coolmate');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `ProductName` varchar(250) NOT NULL,
  `Size_x` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Price` decimal(10,0) NOT NULL,
  `Total` decimal(10,0) NOT NULL,
  `DateTime_x` datetime NOT NULL,
  `img_sanpham` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `UserID`, `ProductID`, `ProductName`, `Size_x`, `Quantity`, `Price`, `Total`, `DateTime_x`, `img_sanpham`) VALUES
(13, 14, 3, 'Quần xám', 33, 1, 590000, 590000, '2023-11-26 17:22:48', 'upload/xam.jpg'),
(14, 14, 5, 'Áo polo nam', 44, 1, 200000, 200000, '2023-11-26 17:22:57', 'upload/anh2f.jpg'),
(15, 14, 12, 'Áo Thun ĐeÁo Thun Nữ Đơn Giảnn Cơ Bản Must-Have', 37, 2, 1990000, 3980000, '2023-11-26 17:23:12', 'upload/xanh.jpg'),
(16, 14, 9, 'Sơ Mi Denim Thời Trang Thành ThịHoodie Cổ Điển Với Không Khí Retro', 39, 3, 999000, 2997000, '2023-11-26 17:23:30', 'upload/th.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `ProductID` int(11) NOT NULL,
  `Ma_SanPham` varchar(20) NOT NULL,
  `ProductName` varchar(250) NOT NULL,
  `ProductDescription` varchar(250) NOT NULL,
  `Price` decimal(10,0) NOT NULL,
  `PriceSale` decimal(10,0) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `TypeID` int(11) NOT NULL,
  `BrandID` int(11) NOT NULL,
  `ImgProduct` varchar(250) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`ProductID`, `Ma_SanPham`, `ProductName`, `ProductDescription`, `Price`, `PriceSale`, `Quantity`, `TypeID`, `BrandID`, `ImgProduct`, `status`) VALUES
(1, 'Sp002', 'Áo len màu xanh', 'Áo màu xanh nè lụm nhanh đi', 400000, 10, 100, 1, 1, 'upload/xanh.jpg', 1),
(3, 'Sp001', 'Quần xám', 'để xem insert đc vào không sai ngủ dẹp', 590000, 10, 100, 2, 2, 'upload/xam.jpg', 1),
(4, 'Sp003', 'Áo polo nam 2023', 'Đã update lại rồi', 690000, 50, 10, 1, 3, 'upload/t1.jpg', 1),
(5, 'Sp004', 'Áo polo nam', 'Dung lượng file ảnh quá lớn. Vui lòng chọn một file nhỏ hơn 1MB', 200000, 0, 99, 1, 3, 'upload/anh2f.jpg', 1),
(7, 'Sp005', 'Áo Thun Phong Cách Đường Phố', 'Kiểu dáng mới, chất liệu thoáng khí, thích hợp cho mọi hoạt động ngoại ô.', 899000, 500, 100, 1, 5, 'upload/anh2f.jpg', 1),
(8, 'Sp006', 'Sơ Mi Denim Thời Trang Thành Thị', 'Chất liệu denim chất lượng, phối hợp linh hoạt với nhiều trang phục khác nhau.', 499000, 50, 10, 4, 6, 'upload/th2.jpg', 1),
(9, 'Sp007', 'Sơ Mi Denim Thời Trang Thành ThịHoodie Cổ Điển Với Không Khí Retro', 'Chất liệu mềm mại, thoải mái cho những ngày se lạnh, phong cách hoài cổ', 999000, 50, 10, 4, 3, 'upload/th.jpg', 1),
(10, 'Sp008', 'Áo Polo Thể Thao', 'Thiết kế độc đáo với phần gối, tạo sự sang trọng cho phong cách thể thao', 200000000, 50, 10, 2, 5, 'upload/th (1).jpg', 1),
(11, 'Sp009', 'Áo Thun Đen Cơ Bản Must-Have', 'Item không thể thiếu trong tủ đồ, kết hợp linh hoạt với mọi trang phục.', 699000, 50, 10, 4, 3, 'upload/xam.jpg', 1),
(12, 'Sp0010', 'Áo Thun ĐeÁo Thun Nữ Đơn Giảnn Cơ Bản Must-Have', 'Chất liệu cotton thoáng khí, kiểu dáng đơn giản phù hợp với mọi dịp.', 1990000, 50, 10, 1, 5, 'upload/xanh.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `typeproduct`
--

CREATE TABLE `typeproduct` (
  `TypeID` int(11) NOT NULL,
  `TypeName` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `typeproduct`
--

INSERT INTO `typeproduct` (`TypeID`, `TypeName`) VALUES
(1, 'Áo'),
(2, 'Quần'),
(3, 'Giày'),
(4, 'Dép');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(250) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `hashpassword` varchar(100) NOT NULL,
  `email` varchar(250) NOT NULL,
  `sdt` char(10) NOT NULL,
  `status` tinyint(1) DEFAULT 1,
  `password_user` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `hashpassword`, `email`, `sdt`, `status`, `password_user`) VALUES
(9, 'ndjhdj', 'jkzjiz', '1552c03e78d38d5005d4ce7b8018addf', 'c@gmail.com', '0936354454', 1, '123a'),
(13, 'admin', 'nro', '9cbf8a4dcb8e30682b927f352d6559a0', 'admin@gmail.com', '0123456789', 1, '123456a'),
(14, 'Nguyễn Minh', 'Tú', 'e10adc3949ba59abbe56e057f20f883e', 'kakalot@gmail.com', '01', 1, '123456');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`BrandID`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `ProductID` (`ProductID`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProductID`),
  ADD KEY `TypeID` (`TypeID`),
  ADD KEY `BrandID` (`BrandID`);

--
-- Chỉ mục cho bảng `typeproduct`
--
ALTER TABLE `typeproduct`
  ADD PRIMARY KEY (`TypeID`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `typeproduct`
--
ALTER TABLE `typeproduct`
  MODIFY `TypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ProductID`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`TypeID`) REFERENCES `typeproduct` (`TypeID`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`BrandID`) REFERENCES `brands` (`BrandID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
