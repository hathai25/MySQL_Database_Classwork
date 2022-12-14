-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2022 at 04:53 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ql_bongda`
--

-- --------------------------------------------------------

--
-- Table structure for table `bangxh`
--

CREATE TABLE `bangxh` (
  `MACLB` varchar(5) NOT NULL,
  `NAM` int(11) NOT NULL,
  `VONG` int(11) NOT NULL,
  `SOTRAN` int(11) NOT NULL,
  `THANG` int(11) NOT NULL,
  `HOA` int(11) NOT NULL,
  `THUA` int(11) NOT NULL,
  `HIEUSO` varchar(5) NOT NULL,
  `DIEM` int(11) NOT NULL,
  `HANG` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bangxh`
--

INSERT INTO `bangxh` (`MACLB`, `NAM`, `VONG`, `SOTRAN`, `THANG`, `HOA`, `THUA`, `HIEUSO`, `DIEM`, `HANG`) VALUES
('BBD', 0, 0, 0, 0, 0, 0, '', 0, 0),
('BBD', 2009, 1, 1, 1, 0, 0, '3-0', 3, 1),
('BBD', 2009, 3, 3, 2, 0, 1, '4-5', 6, 1),
('BBD', 2009, 4, 4, 2, 1, 1, '6-7', 7, 1),
('GDT', 2009, 1, 1, 0, 1, 0, '1-1', 1, 3),
('GDT', 2009, 2, 1, 0, 1, 0, '1-1', 1, 4),
('GDT', 2009, 3, 2, 1, 1, 0, '3-1', 4, 2),
('GDT', 2009, 4, 3, 1, 2, 0, '5-1', 5, 2),
('KKH', 2009, 1, 1, 0, 1, 0, '1-1', 1, 2),
('KKH', 2009, 2, 2, 0, 2, 0, '3-3', 2, 3),
('KKH', 2009, 3, 3, 0, 2, 1, '3-4', 2, 4),
('KKH', 2009, 4, 4, 1, 2, 1, '4-4', 5, 3),
('SDN', 2009, 1, 1, 0, 0, 1, '0-3', 0, 5),
('SDN', 2009, 2, 2, 1, 1, 0, '2-5', 1, 5),
('SDN', 2009, 3, 2, 1, 1, 0, '2-5', 1, 5),
('SDN', 2009, 4, 2, 1, 1, 0, '2-5', 1, 5),
('TPY', 2009, 1, 0, 0, 0, 0, '0-0', 0, 4),
('TPY', 2009, 2, 1, 1, 0, 0, '5-0', 3, 1),
('TPY', 2009, 3, 2, 1, 0, 1, '5-2', 3, 3),
('TPY', 2009, 4, 3, 1, 0, 2, '5-3', 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `caulacbo`
--

CREATE TABLE `caulacbo` (
  `MACLB` varchar(5) NOT NULL,
  `TENCLB` varchar(100) NOT NULL,
  `MASAN` varchar(5) NOT NULL,
  `MATINH` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `caulacbo`
--

INSERT INTO `caulacbo` (`MACLB`, `TENCLB`, `MASAN`, `MATINH`) VALUES
('BBD', 'Becamex B??nh D????ng', 'GD', 'BD'),
('GDT', 'G???ch ?????ng T??m Long An', 'LA', 'LA'),
('HAGL', 'Ho??ng Anh Gia Lai', 'PL', 'GL'),
('KKH', 'KHATOCO Kh??nh H??a', 'NT', 'KH'),
('SDN', 'SHB ???? N???ng', 'CL', 'DN'),
('TPY', 'Th??p Ph?? Y??n', 'TH', 'PY');

-- --------------------------------------------------------

--
-- Table structure for table `cauthu`
--

CREATE TABLE `cauthu` (
  `MACT` int(11) NOT NULL,
  `HOTEN` varchar(100) NOT NULL,
  `VITRI` varchar(20) NOT NULL,
  `NGAYSINH` date DEFAULT NULL,
  `DIACHI` varchar(200) DEFAULT NULL,
  `MACLB` varchar(5) NOT NULL,
  `MAQG` varchar(5) NOT NULL,
  `SO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cauthu`
--

INSERT INTO `cauthu` (`MACT`, `HOTEN`, `VITRI`, `NGAYSINH`, `DIACHI`, `MACLB`, `MAQG`, `SO`) VALUES
(1, 'Nguy???n V?? Phong', 'Ti???n v???', '1990-02-20', NULL, 'BBD', 'VN', 17),
(2, 'Nguy???n C??ng Vinh', 'Ti???n ?????o', '1992-03-10', NULL, 'HAGL', 'VN', 9),
(3, 'Tr???n T???n T??i', 'Ti???n v???', '1989-11-12', NULL, 'BBD', 'VN', 8),
(4, 'Phan H???ng S??n', 'Th??? m??n', '1991-06-10', NULL, 'HAGL', 'VN', 1),
(5, 'Ronaldo', 'Ti???n ?????o', '1989-12-12', NULL, 'SDN', 'BRA', 7),
(6, 'Robinho', 'Ti???n ?????o', '1989-10-12', NULL, 'SDN', 'BRA', 8),
(7, 'Vidic', 'H???u v???', '1987-10-15', NULL, 'HAGL', 'ANH', 3),
(8, 'Tr???n V??n Santos', 'Th??? m??n', '1990-10-21', NULL, 'BBD', 'BRA', 1),
(9, 'Nguy???n Tr?????ng S??n', 'H???u v???', '1993-08-26', NULL, 'BBD', 'VN', 4);

-- --------------------------------------------------------

--
-- Table structure for table `hlv_clb`
--

CREATE TABLE `hlv_clb` (
  `MAHLV` varchar(5) NOT NULL,
  `MACLB` varchar(5) NOT NULL,
  `VAITRO` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hlv_clb`
--

INSERT INTO `hlv_clb` (`MAHLV`, `MACLB`, `VAITRO`) VALUES
('HLV01', 'BBD', 'HLV Ch??nh'),
('HLV02', 'SDN', 'HLV Ch??nh'),
('HLV03', 'HAGL', 'HLV Ch??nh'),
('HLV04', 'KKH', 'HLV Ch??nh'),
('HLV05', 'GDT', 'HLV Ch??nh'),
('HLV06', 'BBD', 'HLV th??? m??n');

-- --------------------------------------------------------

--
-- Table structure for table `huanluyenvien`
--

CREATE TABLE `huanluyenvien` (
  `MAHLV` varchar(5) NOT NULL,
  `TENHLV` varchar(100) NOT NULL,
  `NGAYSINH` date DEFAULT NULL,
  `DIACHI` varchar(200) DEFAULT NULL,
  `DIENTHOAI` varchar(20) DEFAULT NULL,
  `MAQG` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `huanluyenvien`
--

INSERT INTO `huanluyenvien` (`MAHLV`, `TENHLV`, `NGAYSINH`, `DIACHI`, `DIENTHOAI`, `MAQG`) VALUES
('HLV01', 'Vital', '1955-10-15', NULL, '0918011075', 'BDN'),
('HLV02', 'L?? Hu???nh ?????c', '1972-05-20', NULL, '01223456789', 'VN'),
('HLV03', 'Kiatisuk', '1970-12-11', NULL, '019901123456', 'THA'),
('HLV04', 'Ho??ng Anh Tu???n', '1970-06-10', NULL, '0989112233', 'VN'),
('HLV05', 'Tr???n C??ng Minh', '1972-07-07', NULL, '0909099990', 'VN'),
('HLV06', 'Tr???n V??n Ph??c', '1965-03-02', NULL, '016550101234', 'VN');

-- --------------------------------------------------------

--
-- Table structure for table `quocgia`
--

CREATE TABLE `quocgia` (
  `MAQG` varchar(5) NOT NULL,
  `TENQG` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quocgia`
--

INSERT INTO `quocgia` (`MAQG`, `TENQG`) VALUES
('ANH', 'Anh Qu???c'),
('BDN', 'B??? ????o Nha'),
('BRA', 'Bra-xin'),
('ITA', '??'),
('TBN', 'T??y Ban Nha'),
('THA', 'Th??i Lan'),
('VN', 'Vi???t Nam');

-- --------------------------------------------------------

--
-- Table structure for table `sanvd`
--

CREATE TABLE `sanvd` (
  `MASAN` varchar(5) NOT NULL,
  `TENSAN` varchar(100) NOT NULL,
  `DIACHI` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sanvd`
--

INSERT INTO `sanvd` (`MASAN`, `TENSAN`, `DIACHI`) VALUES
('CL', 'Chi L??ng', '127 V?? V??n T???n, ???? N???ng'),
('GD', 'G?? ?????u', '123 QL1, TX Th??? D???u M???t, B??nh D????ng'),
('LA', 'Long An', '102 H??ng V????ng, TP T??n An, Long An'),
('NT', 'Nha Trang', '128 Phan Chu Trinh, Nha Trang, Kh??nh H??a'),
('PL', 'Pleiku', '22 H??? T??ng M???u, Th???ng Nh???t, Th??? x?? Pleiku, Gia Lai'),
('TH', 'Tuy H??a', '57 Tr?????ng Chinh, Tuy H??a, Ph?? Y??n');

-- --------------------------------------------------------

--
-- Table structure for table `tinh`
--

CREATE TABLE `tinh` (
  `MATINH` varchar(5) NOT NULL,
  `TENTINH` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tinh`
--

INSERT INTO `tinh` (`MATINH`, `TENTINH`) VALUES
('BD', 'B??nh D????ng'),
('DN', '???? N???ng'),
('GL', 'Gia Lai'),
('KH', 'Kh??nh H??a'),
('LA', 'Long An'),
('PY', 'Ph?? Y??n');

-- --------------------------------------------------------

--
-- Table structure for table `trandau`
--

CREATE TABLE `trandau` (
  `MATRAN` int(11) NOT NULL,
  `NAM` int(11) NOT NULL,
  `VONG` int(11) NOT NULL,
  `NGAYTD` datetime NOT NULL,
  `MACLB1` varchar(5) NOT NULL,
  `MACLB2` varchar(5) NOT NULL,
  `MASAN` varchar(5) NOT NULL,
  `KETQUA` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trandau`
--

INSERT INTO `trandau` (`MATRAN`, `NAM`, `VONG`, `NGAYTD`, `MACLB1`, `MACLB2`, `MASAN`, `KETQUA`) VALUES
(1, 2009, 1, '2009-02-07 00:00:00', 'BBD', 'SDN', 'GD', '3-0'),
(2, 2009, 1, '2009-02-07 00:00:00', 'KKH', 'GDT', 'NT', '1-1'),
(3, 2009, 2, '2009-02-16 00:00:00', 'SDN', 'KKH', 'TH', '5-0'),
(4, 2009, 2, '2009-02-16 00:00:00', 'TPY', 'BBD', 'TH', '5-0'),
(5, 2009, 3, '2009-03-01 00:00:00', 'TPY', 'GDT', 'TH', '0-2'),
(6, 2009, 3, '2009-03-01 00:00:00', 'KKH', 'BBD', 'NT', '0-1'),
(7, 2009, 4, '2009-03-07 00:00:00', 'KKH', 'TPY', 'NT', '1-0'),
(8, 2009, 4, '2009-03-07 00:00:00', 'BBD', 'GDT', 'GD', '2-2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bangxh`
--
ALTER TABLE `bangxh`
  ADD PRIMARY KEY (`MACLB`,`NAM`,`VONG`);

--
-- Indexes for table `caulacbo`
--
ALTER TABLE `caulacbo`
  ADD PRIMARY KEY (`MACLB`),
  ADD KEY `MASAN` (`MASAN`),
  ADD KEY `MATINH` (`MATINH`);

--
-- Indexes for table `cauthu`
--
ALTER TABLE `cauthu`
  ADD PRIMARY KEY (`MACT`),
  ADD KEY `MACLB` (`MACLB`),
  ADD KEY `MAQG` (`MAQG`);

--
-- Indexes for table `hlv_clb`
--
ALTER TABLE `hlv_clb`
  ADD PRIMARY KEY (`MAHLV`,`MACLB`),
  ADD KEY `MACLB` (`MACLB`);

--
-- Indexes for table `huanluyenvien`
--
ALTER TABLE `huanluyenvien`
  ADD PRIMARY KEY (`MAHLV`),
  ADD KEY `MAQG` (`MAQG`);

--
-- Indexes for table `quocgia`
--
ALTER TABLE `quocgia`
  ADD PRIMARY KEY (`MAQG`);

--
-- Indexes for table `sanvd`
--
ALTER TABLE `sanvd`
  ADD PRIMARY KEY (`MASAN`);

--
-- Indexes for table `tinh`
--
ALTER TABLE `tinh`
  ADD PRIMARY KEY (`MATINH`);

--
-- Indexes for table `trandau`
--
ALTER TABLE `trandau`
  ADD PRIMARY KEY (`MATRAN`),
  ADD KEY `MASAN` (`MASAN`),
  ADD KEY `MACLB1` (`MACLB1`),
  ADD KEY `MACLB2` (`MACLB2`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cauthu`
--
ALTER TABLE `cauthu`
  MODIFY `MACT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `trandau`
--
ALTER TABLE `trandau`
  MODIFY `MATRAN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bangxh`
--
ALTER TABLE `bangxh`
  ADD CONSTRAINT `bangxh_ibfk_1` FOREIGN KEY (`MACLB`) REFERENCES `caulacbo` (`MACLB`);

--
-- Constraints for table `caulacbo`
--
ALTER TABLE `caulacbo`
  ADD CONSTRAINT `caulacbo_ibfk_1` FOREIGN KEY (`MASAN`) REFERENCES `sanvd` (`MASAN`),
  ADD CONSTRAINT `caulacbo_ibfk_2` FOREIGN KEY (`MATINH`) REFERENCES `tinh` (`MATINH`);

--
-- Constraints for table `cauthu`
--
ALTER TABLE `cauthu`
  ADD CONSTRAINT `cauthu_ibfk_2` FOREIGN KEY (`MACLB`) REFERENCES `caulacbo` (`MACLB`),
  ADD CONSTRAINT `cauthu_ibfk_3` FOREIGN KEY (`MAQG`) REFERENCES `quocgia` (`MAQG`);

--
-- Constraints for table `hlv_clb`
--
ALTER TABLE `hlv_clb`
  ADD CONSTRAINT `hlv_clb_ibfk_1` FOREIGN KEY (`MAHLV`) REFERENCES `huanluyenvien` (`MAHLV`),
  ADD CONSTRAINT `hlv_clb_ibfk_2` FOREIGN KEY (`MACLB`) REFERENCES `caulacbo` (`MACLB`);

--
-- Constraints for table `huanluyenvien`
--
ALTER TABLE `huanluyenvien`
  ADD CONSTRAINT `huanluyenvien_ibfk_1` FOREIGN KEY (`MAQG`) REFERENCES `quocgia` (`MAQG`);

--
-- Constraints for table `trandau`
--
ALTER TABLE `trandau`
  ADD CONSTRAINT `trandau_ibfk_1` FOREIGN KEY (`MASAN`) REFERENCES `sanvd` (`MASAN`),
  ADD CONSTRAINT `trandau_ibfk_2` FOREIGN KEY (`MACLB1`) REFERENCES `caulacbo` (`MACLB`),
  ADD CONSTRAINT `trandau_ibfk_3` FOREIGN KEY (`MACLB2`) REFERENCES `caulacbo` (`MACLB`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
