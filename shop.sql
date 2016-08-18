-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2015 at 01:52 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `giohang`
--

CREATE TABLE IF NOT EXISTS `giohang` (
  `id_giohang` int(10) NOT NULL AUTO_INCREMENT,
  `id` int(10) NOT NULL,
  `user` varchar(255) NOT NULL,
  `soluong` int(10) NOT NULL,
  `tinhtrang` text NOT NULL,
  `ngaydat` datetime NOT NULL,
  PRIMARY KEY (`id_giohang`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=158 ;

--
-- Dumping data for table `giohang`
--

INSERT INTO `giohang` (`id_giohang`, `id`, `user`, `soluong`, `tinhtrang`, `ngaydat`) VALUES
(156, 71368667, 'Minhthanh', 1, 'dathang', '2015-12-13 13:10:15'),
(157, 71368668, 'Minhthanh', 1, 'themgiohang', '2015-12-13 00:00:00'),
(151, 71368667, 'admin', 1, 'themgiohang', '2015-11-20 00:00:00'),
(155, 71368666, 'Minhthanh', 3, 'dathang', '2015-12-13 13:10:15'),
(152, 71368671, 'Minhthanh', 2, 'dathang', '2015-11-22 09:07:18'),
(154, 71368668, 'Minhthanh', 1, 'dathang', '2015-11-22 09:16:00');

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE IF NOT EXISTS `hoadon` (
  `id_hoadon` int(10) NOT NULL AUTO_INCREMENT,
  `hoten` varchar(255) NOT NULL,
  `diachi` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `dienthoai` int(20) NOT NULL,
  `fax` int(20) NOT NULL,
  `cty` varchar(255) NOT NULL,
  `id` varchar(10) NOT NULL,
  `soluong` int(10) NOT NULL,
  `tongtien` float NOT NULL,
  `ngaydat` datetime NOT NULL,
  `tinhtrang` text NOT NULL,
  PRIMARY KEY (`id_hoadon`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`id_hoadon`, `hoten`, `diachi`, `email`, `dienthoai`, `fax`, `cty`, `id`, `soluong`, `tongtien`, `ngaydat`, `tinhtrang`) VALUES
(37, 'Minh Thành', '77 Đinh Tiên Hoàng', 'thanhnmpd01257@fpt.edu.vn', 976842824, 976585258, 'FPT', '71368667', 1, 39000000, '2015-12-03 13:56:01', 'damua'),
(36, 'test', 'DN', 'thanhnmpd01257@fpt.edu.vn', 938567, 24356, 'fsd', '71368666', 2, 52994000, '2015-11-22 04:27:48', 'dathang');

-- --------------------------------------------------------

--
-- Table structure for table `lienhe`
--

CREATE TABLE IF NOT EXISTS `lienhe` (
  `id_lienhe` int(10) NOT NULL AUTO_INCREMENT,
  `hoten` text NOT NULL,
  `cty` text NOT NULL,
  `email` text NOT NULL,
  `dienthoai` int(20) NOT NULL,
  `fax` int(20) NOT NULL,
  `diachi` text NOT NULL,
  `noidung` text NOT NULL,
  `ngaylienhe` datetime NOT NULL,
  PRIMARY KEY (`id_lienhe`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `lienhe`
--

INSERT INTO `lienhe` (`id_lienhe`, `hoten`, `cty`, `email`, `dienthoai`, `fax`, `diachi`, `noidung`, `ngaylienhe`) VALUES
(14, 'Ngô Minh Thành', 'Fpt Polytechnic', 'Thanhnmpd01257@fpt.edu.vn', 976842824, 12345678, 'đà nẵng', 'abvcidjsifjsdi', '0000-00-00 00:00:00'),
(17, 'test', 'fsd', 'testhoctap@gmail.com', 938567, 24356, 'Đà nẵng', 'gugdufdufu  ', '2015-11-21 04:44:30'),
(18, 'test1', 'ádasdsa', 'thanhnmpd01257@fpt.edu.vn', 21323, 2132, 'đn', '  dfsfds', '2015-11-22 12:17:22');

-- --------------------------------------------------------

--
-- Table structure for table `loaisanpham`
--

CREATE TABLE IF NOT EXISTS `loaisanpham` (
  `id_loai` int(10) NOT NULL,
  `id_nhom` int(11) NOT NULL,
  `tenloaisp` text NOT NULL,
  `ghichu` varchar(255) NOT NULL,
  PRIMARY KEY (`id_loai`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loaisanpham`
--

INSERT INTO `loaisanpham` (`id_loai`, `id_nhom`, `tenloaisp`, `ghichu`) VALUES
(15, 2, 'Loa Laptop', ''),
(7, 1, 'Samsung', ''),
(5, 1, 'Sony', ''),
(11, 2, 'USB 3G', ''),
(10, 2, 'USB', ''),
(13, 2, 'Chuột', ''),
(3, 1, 'Asus', ''),
(9, 1, 'Lenovo', ''),
(8, 1, 'Dell', ''),
(1, 1, 'Apple (Macbook)', ''),
(2, 1, 'Acer', '');

-- --------------------------------------------------------

--
-- Table structure for table `nhomsanpham`
--

CREATE TABLE IF NOT EXISTS `nhomsanpham` (
  `id_nhom` int(10) NOT NULL,
  `tennhom` varchar(255) NOT NULL,
  PRIMARY KEY (`id_nhom`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nhomsanpham`
--

INSERT INTO `nhomsanpham` (`id_nhom`, `tennhom`) VALUES
(1, 'Laptop'),
(2, 'Phụ kiện');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE IF NOT EXISTS `sanpham` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `id_loai` int(10) NOT NULL,
  `tensp` text NOT NULL,
  `hinh` text NOT NULL,
  `gia` int(15) NOT NULL,
  `ghichu` text NOT NULL,
  `soluongban` int(10) NOT NULL,
  `id_menu` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2147483648 ;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id`, `id_loai`, `tensp`, `hinh`, `gia`, `ghichu`, `soluongban`, `id_menu`) VALUES
(71368666, 7, 'Samsung NP540U3C', 'SamsungNP540U3C.jpg', 26497000, 'new', 1, 0),
(49260, 1, 'MacBook Air MD760', 'MacBookAirMD760.jpg', 26990000, 'new', 1, 0),
(71368667, 7, 'Samsung XE700T1C', 'SamsungXE700T1C.jpg', 39000000, 'new', 1, 0),
(71368668, 7, 'Samsung NP530U4C', 'SamsungNP530U4C.jpg', 21999999, 'new', 20, 0),
(71368669, 7, 'Samsung NP535U3X', 'SamsungNP535U3X.jpg', 13900000, 'hienthi', 0, 0),
(71368670, 7, 'Samsung NP530U3C', 'SamsungNP530U3C.jpg', 21000000, 'hienthi', 0, 0),
(71368671, 7, 'Samsung NP900X3C', 'SamsungNP900X3C.jpg', 36999999, 'new', 4, 0),
(71368672, 7, 'Samsung NP300E4X', 'SamsungNP300E4X.jpg', 11310000, 'hienthi', 0, 0),
(895, 5, 'VAIO® Tap 11', 'VAIOTap11.jpg', 25990000, 'new', 0, 0),
(71368674, 5, 'VAIO® Pro 13', 'VAIOPro13.jpg', 35990000, 'new', 0, 0),
(875, 5, 'VAIO® Pro 11', 'VAIOPro11.jpg', 23990000, 'new', 0, 0),
(914362335, 5, 'VAIO® Fit 14', 'VAIOFit14.jpg', 25990000, 'new', 0, 0),
(905, 3, 'ASUS X451CA15', 'ASUSX451CA15.jpg', 10570000, 'new', 0, 0),
(2147483647, 3, 'ZENBOOK UX21A', 'ZENBOOKUX21A.jpg', 25670000, 'new', 0, 0),
(8148, 3, 'TAICHI 21', 'TAICHI21.jpg', 30500000, 'new', 0, 0),
(74609, 3, 'S200E', 'S200E.jpg', 16789000, 'hienthi', 0, 0),
(1, 9, 'YOGA 2 PRO', 'YOGA2PRO.jpg', 29490000, 'new', 0, 0),
(8, 9, 'LENOVO Z400', 'LENOVOZ400.jpg', 11990000, 'new', 0, 0),
(66, 9, 'LENOVO S400', 'LENOVOS400.jpg', 8790000, 'hienthi', 0, 0),
(121, 8, 'INSPIRON 15 N5537', 'INSPIRON15N5537.jpg', 15390000, 'new', 0, 0),
(59, 8, 'DELL VOSTRO-V3560', 'DELLVOSTROV3560.jpg', 19699900, 'hienthi', 0, 0),
(573447, 1, 'RETINA ME664ZP/A', 'RETINAME664ZPA.jpg', 47990000, 'new', 0, 0),
(78713611, 1, 'MACBOOK PRO 13.3', 'MACBOOKPRO13.3.jpg', 33990000, 'new', 0, 0),
(92, 2, 'ACER ASPIRE V5', 'ACERASPIREV5.jpg', 12090000, 'new', 0, 0),
(959, 2, 'ACER V533214G50', 'ACERV533214G50.jpg', 9990000, 'hienthi', 0, 0),
(70, 11, 'D-LINK DWM 156', 'USB3GDLINKDWM156.jpg', 590000, 'new', 0, 0),
(21, 11, 'Fast Connect MF190', 'FastConnectMF190.jpg', 690000, 'new', 0, 0),
(41, 11, 'D-COM 3G', 'DCOM3G.jpg', 530000, 'new', 0, 0),
(3, 10, 'KINGSTON 32G', 'KINGSTON32G.jpg', 550000, 'hienthi', 0, 0),
(6, 10, 'PNY LOVELY 8G', 'PNYLOVELY8G.jpg', 299000, 'new', 0, 0),
(77, 15, 'MICROLAB M119/2.1', 'MICROLABM1192.1.jpg', 789000, 'hienthi', 0, 0),
(4297, 15, 'SOUNDMAX A850', 'SOUNDMAXA850.jpg', 640000, 'new', 0, 0),
(30, 13, 'LOGITECH M187', 'LOGITECHM187.jpg', 298000, 'hienthi', 0, 0),
(98, 13, 'Vtrack 800', 'Vtrack800.jpg', 235000, 'hienthi', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `thanhvien`
--

CREATE TABLE IF NOT EXISTS `thanhvien` (
  `hoten` varchar(255) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dienthoai` int(20) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(32) NOT NULL,
  `hieuluc` int(10) NOT NULL,
  `capquyen` int(10) NOT NULL,
  PRIMARY KEY (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `thanhvien`
--

INSERT INTO `thanhvien` (`hoten`, `diachi`, `email`, `dienthoai`, `user`, `pass`, `hieuluc`, `capquyen`) VALUES
('Ngô Minh Thành', 'Đà Nẵng', 'Thanhnmpd01257@fpt.edu.vn', 976842824, 'admin', 'abc123', 1, 1),
('thanhnmpd', 'Đn', 'thanhnmpd01257@fpt.edu.vn', 1234557, 'thanhvien', 'e10adc3949ba59abbe56e057f20f883e', 1, 3),
('Ngô Minh Thành', 'Đn', 'testhoctap@gmail.com', 976842824, 'Minhthanh', 'e10adc3949ba59abbe56e057f20f883e', 1, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
