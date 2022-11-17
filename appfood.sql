-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 17, 2022 lúc 10:26 AM
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
-- Cơ sở dữ liệu: `appfood`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `id` int(10) NOT NULL,
  `madonhang` int(10) NOT NULL,
  `mamon` int(10) NOT NULL,
  `tenmon` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gia` double NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`id`, `madonhang`, `mamon`, `tenmon`, `gia`, `soluong`) VALUES
(33, 45, 1, 'Trà sữa truyền thống', 35000, 1),
(34, 45, 4, 'Sữa tươi trân châu đường đen', 35000, 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(10) NOT NULL,
  `tendanhmuc` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `hinhdanhmuc` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `tendanhmuc`, `hinhdanhmuc`) VALUES
(1, 'Trà Sữa', 'https://images.foody.vn/res/g20/197098/s750/foody-vimo-tra-sua-online-848-636739803283368863.jpg'),
(2, 'Trà Trái Cây', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRT_iz7YEXjQJ_jTHOv7P1CjAAqc4M9VeK7ATCjJlgOfGHQ4NPRO1JY8HE3J2yNvlmdFG4&usqp=CAU'),
(3, 'Topping', 'https://cdn.daylambanh.edu.vn/wp-content/uploads/2019/06/nhieu-loai-topping-khac-nhau.jpg'),
(4, 'Sashimi', 'https://cdn.tgdd.vn/2020/09/CookProduct/10-1200x676-6.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id` int(10) NOT NULL,
  `tenkhachhang` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `sodienthoai` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `tongtien` double NOT NULL,
  `ghichu` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id`, `tenkhachhang`, `email`, `sodienthoai`, `tongtien`, `ghichu`) VALUES
(45, 'Thang', 'thang@gmail.com', '0233456789', 385000, 'it da, nhieu ngot');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mon`
--

CREATE TABLE `mon` (
  `id` int(10) NOT NULL,
  `madanhmuc` int(10) NOT NULL,
  `tenmon` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `hinhmon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gia` double NOT NULL,
  `mota` varchar(1000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mon`
--

INSERT INTO `mon` (`id`, `madanhmuc`, `tenmon`, `hinhmon`, `gia`, `mota`) VALUES
(1, 1, 'Trà sữa truyền thống', 'https://shopnguyenlieu.com/wp-content/uploads/2019/09/cach-lam-tra-sua-tran-chau-550x440.jpg', 35000, 'Trà sữa truyền thống 25/35/45 được chọn 3 loại topping, thơm trà ngọt sữa'),
(2, 1, 'Trà sữa thái xanh', 'http://cdn.tgdd.vn/Files/2021/12/09/1403510/cach-lam-matcha-tran-chau-duong-den-uong-ngon-cuc-thich-202112092206182099.jpg', 35000, 'Trà sữa thái xanh, thơm trà béo sữa được chọn 3 loại topping'),
(3, 1, 'Trà sữa thái đỏ', 'https://tiepthigiadinh.vn/wp-content/uploads/2016/06/cach-lam-tra-sua-thai-do-hinh-anh-4-e1465895085668.jpg', 35000, 'Trà sữa thái đỏ độc lạ'),
(4, 1, 'Sữa tươi trân châu đường đen', 'https://vuaphache.net/wp-content/uploads/2017/10/sua-tuoi-tran-chau-duong-den.jpg', 35000, 'Béo ngọt của sữa thơm dịu của trân châu đường đen'),
(5, 2, 'Trà dâu', 'http://cdn.tgdd.vn/Files/2019/12/29/1229060/cach-lam-tra-dau-dong-du-mat-lanh-giai-nhiet-don-gian-tai-nha-202201170928357855.jpg', 35000, 'Trà dâu tươi thanh mát giải khát'),
(6, 2, 'Trà cam', 'https://afamilycdn.com/150157425591193600/2020/5/7/95652598746505222552680886210027004624896n-1588835037899594052012.jpg', 35000, 'Trà cam tươi thật nhiều vitamin rất tốt cho sức khỏe'),
(7, 3, 'Trân châu', 'https://bizweb.dktcdn.net/100/421/036/files/tran-chau-den-6630c62d-9e20-49ab-b979-7c5fd872e147.jpg?v=1639106526827', 5000, 'Trân châu dai giòn '),
(8, 3, 'Khúc bạch', 'https://2sao.vietnamnetjsc.vn/images/2017/05/15/14/02/149459819420612-cau-4.jpg', 5000, 'Khúc bạch ngon béo '),
(10, 4, 'Sashimi cá hồi', 'http://www.foodsach.com/uploads/images/11-9-2014%2011-01-29%20PM.png', 300000, 'Ca tươi dành cho các bạn thích sashimi'),
(11, 4, 'Sashimi đủ loại', 'https://images.foody.vn/res/g109/1087030/prof/s576x330/foody-upload-api-foody-mobile-av-7aac1f32-210717014349.jpeg', 400000, 'kết hợp nhiều hương vị của biển');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `madonhang` (`madonhang`),
  ADD KEY `mamon` (`mamon`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `mon`
--
ALTER TABLE `mon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `madanhmuc` (`madanhmuc`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `mon`
--
ALTER TABLE `mon`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `chitietdonhang_ibfk_1` FOREIGN KEY (`madonhang`) REFERENCES `donhang` (`id`),
  ADD CONSTRAINT `chitietdonhang_ibfk_2` FOREIGN KEY (`mamon`) REFERENCES `mon` (`id`);

--
-- Các ràng buộc cho bảng `mon`
--
ALTER TABLE `mon`
  ADD CONSTRAINT `mon_ibfk_1` FOREIGN KEY (`madanhmuc`) REFERENCES `danhmuc` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
