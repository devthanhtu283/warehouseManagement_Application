-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 14, 2023 lúc 04:13 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `warehouse_management`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `warehousebackinvoicedetails`
--

CREATE TABLE `warehousebackinvoicedetails` (
  `ID` int(11) NOT NULL,
  `itemID` varchar(250) NOT NULL,
  `quantity` int(11) NOT NULL,
  `feedback` varchar(250) NOT NULL,
  `date` date NOT NULL,
  `userID` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `warehousebackinvoicedetails`
--

INSERT INTO `warehousebackinvoicedetails` (`ID`, `itemID`, `quantity`, `feedback`, `date`, `userID`) VALUES
(1, 'Item004', 10, 'abc', '2023-02-03', 'user001'),
(2, 'Item001', 10, 'abc', '2023-02-03', 'user001'),
(3, 'Item002', 5, 'aaa', '2023-02-03', 'user001'),
(4, 'Item002', 5, 'abc', '2023-02-03', 'user001'),
(5, 'Item002', 5, 'abc', '2023-02-03', 'user001'),
(6, 'Item002', 10, 'abc', '2023-02-03', 'user001'),
(7, 'Item003', 10, 'tra 10', '2023-02-03', 'user001'),
(8, 'Item003', 10, 'tra10', '2023-02-10', 'user001'),
(9, 'Item004', 5, 'back', '2023-02-12', 'user001'),
(10, 'Item004', 10, 'back', '2023-02-17', 'user001'),
(11, 'Item002', 10, 'back', '2023-02-04', 'user002'),
(12, 'Item001', 5, 'back', '2023-02-11', 'user002'),
(13, 'Item003', 10, 'haha', '2023-02-11', 'user003'),
(14, 'Item003', 10, 'aaaa', '2023-02-11', 'user003');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `warehousebackinvoicedetails`
--
ALTER TABLE `warehousebackinvoicedetails`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `itemID` (`itemID`),
  ADD KEY `userID` (`userID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `warehousebackinvoicedetails`
--
ALTER TABLE `warehousebackinvoicedetails`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `warehousebackinvoicedetails`
--
ALTER TABLE `warehousebackinvoicedetails`
  ADD CONSTRAINT `warehousebackinvoicedetails_ibfk_2` FOREIGN KEY (`itemID`) REFERENCES `warehouse` (`itemID`),
  ADD CONSTRAINT `warehousebackinvoicedetails_ibfk_3` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
