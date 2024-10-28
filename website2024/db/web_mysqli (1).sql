-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 28, 2024 lúc 10:32 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web_mysqli`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`, `admin_status`) VALUES
(1, 'oneadmin', '25f9e794323b453885f5181f1b624d0b', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_baiviet`
--

CREATE TABLE `tbl_baiviet` (
  `id` int(11) NOT NULL,
  `tenbaiviet` varchar(255) NOT NULL,
  `tomtat` mediumtext NOT NULL,
  `noidung` longtext NOT NULL,
  `id_danhmuc` int(11) NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `hinhanh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_baiviet`
--

INSERT INTO `tbl_baiviet` (`id`, `tenbaiviet`, `tomtat`, `noidung`, `id_danhmuc`, `tinhtrang`, `hinhanh`) VALUES
(9, 'Alo bài viết mới', 'sssssssssssss', 'ssssssssss', 4, 1, '1729940744Ảnh chụp màn hình (231).png'),
(10, '123', 'sssssssss', 'ssssssssss', 3, 1, '1729940755Ảnh chụp màn hình (277).png'),
(11, 'Hải minh', 'dddddddd', 'ddddddddd', 1, 1, '1729940769Ảnh chụp màn hình (291).png'),
(12, 'Alo bài viết mới xã hội', 'ffff', 'ffffffff', 4, 1, '1729940782Ảnh chụp màn hình (287).png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id_cart` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `cart_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`id_cart`, `id_khachhang`, `code_cart`, `cart_status`) VALUES
(9, 1, '1078', 0),
(10, 1, '7026', 0),
(11, 1, '2959', 0),
(12, 1, '2671', 0),
(13, 10, '7164', 0),
(14, 10, '7714', 0),
(15, 10, '114', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart_details`
--

CREATE TABLE `tbl_cart_details` (
  `id_cart_details` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart_details`
--

INSERT INTO `tbl_cart_details` (`id_cart_details`, `code_cart`, `id_sanpham`, `soluongmua`) VALUES
(1, '7026', 14, 1),
(2, '2959', 16, 5),
(3, '2671', 16, 4),
(4, '7164', 16, 2),
(5, '7714', 14, 5),
(6, '114', 16, 4),
(7, '114', 14, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_dangky`
--

CREATE TABLE `tbl_dangky` (
  `id_dangky` int(11) NOT NULL,
  `tenkhachhang` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `dienthoai` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_dangky`
--

INSERT INTO `tbl_dangky` (`id_dangky`, `tenkhachhang`, `email`, `diachi`, `matkhau`, `dienthoai`) VALUES
(1, 'Lê Trần Bảo Đăng', 'led669208@gmail.com', 'Thừa thiên huế', '5c584042feb8c8e23582d9ea5b5b8ef8', 'Thừa thiên huế 09179'),
(10, 'Nguyễn Thị Hải Minh', 'hm@gmail.com', 'Thừa thiên huế', '5c584042feb8c8e23582d9ea5b5b8ef8', '0904112005'),
(11, 'Lê Trần Bảo Đăng1', '123@gmail.com', '1', '698d51a19d8a121ce581499d7b701668', '1'),
(12, 'Lê Trần Bảo Đăng1', '123@gmail.com', '1', '698d51a19d8a121ce581499d7b701668', '1'),
(13, 'Lê Trần Bảo Đăng1', '123@gmail.com', '1', '698d51a19d8a121ce581499d7b701668', '1'),
(14, '', '', '', 'd41d8cd98f00b204e9800998ecf8427e', ''),
(15, '', '', '', 'd41d8cd98f00b204e9800998ecf8427e', ''),
(16, '', '', '', 'd41d8cd98f00b204e9800998ecf8427e', ''),
(17, '', '', '', 'd41d8cd98f00b204e9800998ecf8427e', ''),
(18, '', '', '', 'd41d8cd98f00b204e9800998ecf8427e', ''),
(19, '', '', '', 'd41d8cd98f00b204e9800998ecf8427e', ''),
(20, '', '', '', 'd41d8cd98f00b204e9800998ecf8427e', ''),
(21, '', '', '', 'd41d8cd98f00b204e9800998ecf8427e', ''),
(22, '', '', '', 'd41d8cd98f00b204e9800998ecf8427e', ''),
(23, '', '', '', 'd41d8cd98f00b204e9800998ecf8427e', ''),
(24, '', '', '', 'd41d8cd98f00b204e9800998ecf8427e', ''),
(25, 'Đăng nè', '1@gmail.com', '123', 'c4ca4238a0b923820dcc509a6f75849b', '099999999'),
(26, 'Đăng nè', '1@gmail.com', '123', 'c4ca4238a0b923820dcc509a6f75849b', '099999999'),
(27, 'Đăng nè', '1@gmail.com', '123', 'c4ca4238a0b923820dcc509a6f75849b', '099999999');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(100) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id_danhmuc`, `tendanhmuc`, `thutu`) VALUES
(3, 'kính cường lực', 3),
(4, 'Phụ kiện trang trí', 4),
(5, 'Ốp lưng', 3),
(7, 'Màn hình điện thoại', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmucbaiviet`
--

CREATE TABLE `tbl_danhmucbaiviet` (
  `id_baiviet` int(11) NOT NULL,
  `tendanhmuc_baiviet` varchar(255) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmucbaiviet`
--

INSERT INTO `tbl_danhmucbaiviet` (`id_baiviet`, `tendanhmuc_baiviet`, `thutu`) VALUES
(1, 'Tin bóng đá', 1),
(3, 'Tin thời sự', 2),
(4, 'tin xã hội', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_lienhe`
--

CREATE TABLE `tbl_lienhe` (
  `id` int(11) NOT NULL,
  `thongtinlienhe` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_lienhe`
--

INSERT INTO `tbl_lienhe` (`id`, `thongtinlienhe`) VALUES
(1, '<h3><strong>TH&Ocirc;NG TIN LI&Ecirc;N HỆ VỚI CH&Uacute;NG T&Ocirc;I</strong></h3>\r\n\r\n<p>Số điện thoại: 0917902606</p>\r\n\r\n<p>Email: led669208@gmail.com</p>\r\n\r\n<p>Fb:&nbsp;<a href=\"https://www.facebook.com/baodang.le.12\">https://www.facebook.com/baodang.le.12</a></p>\r\n\r\n<p>Ins:&nbsp;<a href=\"https://www.instagram.com/baoodang_0612/\">https://www.instagram.com/baoodang_0612/</a></p>\r\n\r\n<p>Tiktok:&nbsp;<a href=\"https://www.tiktok.com/@lebaodang06\">https://www.tiktok.com/@lebaodang06</a></p>\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `id_sanpham` int(1) NOT NULL,
  `tensanpham` varchar(250) NOT NULL,
  `masp` varchar(100) NOT NULL,
  `giasp` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL,
  `hinhanh` varchar(50) NOT NULL,
  `tomtat` tinytext NOT NULL,
  `noidung` text NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id_sanpham`, `tensanpham`, `masp`, `giasp`, `soluong`, `hinhanh`, `tomtat`, `noidung`, `tinhtrang`, `id_danhmuc`) VALUES
(8, 'Tai nghe gaming', '001', '11000000', 1, '1729697429Ảnh chụp màn hình 2024-10-10 010656.png', 'ddddddddd', 'dddddddddddddddddd', 1, 3),
(9, 'tai phone 12', '001', '20000000', 1, '1728724989Ảnh chụp màn hình (232).png', 'dddddddd', 'dddddddddddddddd', 1, 3),
(10, 'iphoneee', '002', '20000000', 2, '1729697419Ảnh chụp màn hình 2024-10-09 153452.png', 'ddddddddddd', 'ddddddddddddd', 1, 4),
(12, 'iphoneee', '001', '11000000', 1, '1729697411Ảnh chụp màn hình (232).png', 'dddd', 'dddd', 1, 3),
(13, 'Tai nghe gaming', '002', '11000000', 2, '17287252167dcffc01a11c1842410d.jpg', 'dddddddddddddddddd', 'ddddddddddddddddd', 1, 3),
(14, 'Tai nghe gaming', '002', '13200000', 2, '1728756487Ảnh chụp màn hình (231).png', 'dddddddddddddddd', 'ddddddddddddddddddddd', 1, 3),
(15, 'Kính 1', '004', '32000000', 3, '1728756517Ảnh chụp màn hình (279).png', 'dddddddddddddddd', 'ddddddddddddddddddd', 1, 3),
(16, 'iphoneee', '001', '11000000', 1, '1729697398Ảnh chụp màn hình (287).png', 'dddddddddddddddd', 'dddddddddddddddddddddd', 1, 5);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Chỉ mục cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Chỉ mục cho bảng `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  ADD PRIMARY KEY (`id_cart_details`);

--
-- Chỉ mục cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  ADD PRIMARY KEY (`id_dangky`);

--
-- Chỉ mục cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Chỉ mục cho bảng `tbl_danhmucbaiviet`
--
ALTER TABLE `tbl_danhmucbaiviet`
  ADD PRIMARY KEY (`id_baiviet`);

--
-- Chỉ mục cho bảng `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`id_sanpham`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  MODIFY `id_cart_details` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  MODIFY `id_dangky` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmucbaiviet`
--
ALTER TABLE `tbl_danhmucbaiviet`
  MODIFY `id_baiviet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `id_sanpham` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
