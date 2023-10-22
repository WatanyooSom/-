-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2022 at 05:53 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sosrepair`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `aid` tinyint(9) NOT NULL,
  `cls` varchar(2) NOT NULL,
  `apname` varchar(10) NOT NULL,
  `afname` varchar(50) NOT NULL,
  `alname` varchar(50) NOT NULL,
  `smail` varchar(100) NOT NULL,
  `pass` varchar(10) NOT NULL,
  `msion` varchar(30) NOT NULL,
  `svdate` datetime NOT NULL,
  `upddate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aid`, `cls`, `apname`, `afname`, `alname`, `smail`, `pass`, `msion`, `svdate`, `upddate`) VALUES
(1, '1', 'นาย', 'ดูแล', 'ระบบ', 'admin', '123456', 'ดูแลระบบ', '2022-03-16 16:29:29', '2022-03-16 09:29:29'),
(2, '2', 'นาย', 'นายหัวหน้า', 'งาน', '001', '001', 'จ่ายงานช่าง', '2022-05-14 19:58:41', '2022-05-14 12:58:41'),
(3, '3', 'นาย', 'นายช่าง', 'ซ่อม', '002', '002', 'ช่างไอที', '2022-05-14 19:59:00', '2022-05-14 12:59:00');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `catid` tinyint(4) NOT NULL,
  `catname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`catid`, `catname`) VALUES
(1, 'ไฟฟ้า'),
(2, 'ประปา'),
(3, 'เครื่องจักร'),
(4, 'อาคารสถานที่'),
(5, 'อินเตอร์เน็ต');

-- --------------------------------------------------------

--
-- Table structure for table `cls`
--

CREATE TABLE `cls` (
  `clsid` int(11) NOT NULL,
  `clsname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cls`
--

INSERT INTO `cls` (`clsid`, `clsname`) VALUES
(1, 'อาจารย์'),
(2, 'นักศึกษา'),
(3, 'หัวหน้าแผนก'),
(4, 'เจ้าหน้าที่');

-- --------------------------------------------------------

--
-- Table structure for table `depart`
--

CREATE TABLE `depart` (
  `depid` tinyint(4) NOT NULL,
  `depname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `depart`
--

INSERT INTO `depart` (`depid`, `depname`) VALUES
(1, 'บริหาร'),
(2, 'วิชาการ'),
(3, 'การเงิน'),
(4, 'บัญชี');

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `jid` tinyint(4) NOT NULL,
  `jobname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `depid` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`jid`, `jobname`, `depid`) VALUES
(1, 'ธุรการ', 1),
(2, 'พัสดุ ครุภัณฑ์', 1),
(3, 'ทะเบียนนักศึกษา', 2),
(4, 'วัดและประเมินผล', 2);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `mid` int(11) NOT NULL,
  `ranid` varchar(100) NOT NULL,
  `pname` varchar(10) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `clsid` int(11) NOT NULL,
  `jid` tinyint(4) NOT NULL,
  `smail` varchar(100) NOT NULL,
  `tel` varchar(10) NOT NULL,
  `pass` varchar(25) NOT NULL,
  `chk` tinyint(4) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `svd` datetime NOT NULL,
  `upd` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`mid`, `ranid`, `pname`, `fname`, `lname`, `clsid`, `jid`, `smail`, `tel`, `pass`, `chk`, `ip`, `svd`, `upd`) VALUES
(2, 'IERBIGAUGE2022051416525360381776669251', 'นาย', 'แจ้งซ่อม', 'ระบบ', 4, 1, '1@1.com', '0852817096', '207665', 2, '127.0.0.1', '2022-05-14 20:47:18', '2022-05-14 13:50:45'),
(3, 'OLWWOZOUME202205141652536748246293719', 'นาย', 'นายเรียนเก่ง', 'อ่านเยอะ', 4, 1, 'r@gmail.com', '0666666666', '314686', 2, '127.0.0.1', '2022-05-14 20:59:08', '2022-05-14 14:00:34');

-- --------------------------------------------------------

--
-- Table structure for table `memo`
--

CREATE TABLE `memo` (
  `moid` int(11) NOT NULL,
  `ranid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mid` int(11) NOT NULL,
  `mname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `catid` tinyint(4) NOT NULL,
  `clsid` tinyint(4) NOT NULL,
  `clsname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `depid` tinyint(4) NOT NULL,
  `depname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jid` tinyint(4) NOT NULL,
  `jobname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smail` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sname` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `snum` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plc` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fail` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `need` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `simg` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chk` tinyint(4) NOT NULL,
  `ip` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `svd` datetime NOT NULL,
  `upd` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `memo`
--

INSERT INTO `memo` (`moid`, `ranid`, `mid`, `mname`, `catid`, `clsid`, `clsname`, `depid`, `depname`, `jid`, `jobname`, `smail`, `tel`, `sname`, `snum`, `plc`, `fail`, `need`, `simg`, `chk`, `ip`, `svd`, `upd`) VALUES
(1, 'JWSYXGZJGD2022051416525370841402791908', 3, 'นายนายเรียนเก่ง อ่านเยอะ', 5, 4, 'เจ้าหน้าที่', 1, 'บริหาร', 1, 'ธุรการ', 'r@gmail.com', '0666666666', 'ใช้งานไม่ได้', '-', 'ตึกผู้บริหาร', 'ใช้งานไม่ได้', 'ด่วนที่สุด', '175146165820220514_090444.jpg', 0, '127.0.0.1', '2022-05-14 21:04:44', '2022-05-14 14:04:44');

-- --------------------------------------------------------

--
-- Table structure for table `setdat`
--

CREATE TABLE `setdat` (
  `sdid` tinyint(4) NOT NULL,
  `nametl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tktech` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tkadmin` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rootmail` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rootpass` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hostmail` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `durl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setdat`
--

INSERT INTO `setdat` (`sdid`, `nametl`, `img`, `tktech`, `tkadmin`, `rootmail`, `rootpass`, `hostmail`, `durl`) VALUES
(1, 'ABC จำกัด', '116494193720220314_070946.png', 'Z7OvMLXHAg6W3yjtVekHediuj5GTkdtcw0exAcoaBYq', 'F8K4Z7beSY4uGvsZLpafGlORfHpjshcxp75DHSIy3Am', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sos`
--

CREATE TABLE `sos` (
  `sosid` int(11) NOT NULL,
  `moid` int(11) NOT NULL,
  `adid` int(11) NOT NULL,
  `adname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asid` int(11) NOT NULL,
  `asname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aid` int(11) NOT NULL,
  `aname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mid` int(11) NOT NULL,
  `mname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `catid` tinyint(4) NOT NULL,
  `catname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clsid` int(11) NOT NULL,
  `clsname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `depid` tinyint(4) NOT NULL,
  `depname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jid` tinyint(4) NOT NULL,
  `jobname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smail` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sname` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `snum` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plc` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fail` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `need` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `simg` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fwd` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ccl` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scs` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` tinyint(4) NOT NULL,
  `signname` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sts` tinyint(4) NOT NULL,
  `d1` datetime NOT NULL,
  `d2` datetime NOT NULL,
  `d3` datetime NOT NULL,
  `d4` datetime NOT NULL,
  `d5` datetime NOT NULL,
  `d6` datetime DEFAULT NULL,
  `ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `svd` datetime NOT NULL,
  `upd` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sos`
--

INSERT INTO `sos` (`sosid`, `moid`, `adid`, `adname`, `asid`, `asname`, `aid`, `aname`, `mid`, `mname`, `catid`, `catname`, `clsid`, `clsname`, `depid`, `depname`, `jid`, `jobname`, `smail`, `tel`, `sname`, `snum`, `plc`, `fail`, `need`, `simg`, `fwd`, `ccl`, `scs`, `sale`, `rate`, `signname`, `sts`, `d1`, `d2`, `d3`, `d4`, `d5`, `d6`, `ip`, `svd`, `upd`) VALUES
(1, 1, 0, '', 2, 'นายนายหัวหน้า งาน', 3, 'นายช่าง ซ่อม', 3, 'นายนายเรียนเก่ง อ่านเยอะ', 5, 'อินเตอร์เน็ต', 4, 'เจ้าหน้าที่', 1, 'บริหาร', 1, 'ธุรการ', 'r@gmail.com', '0666666666', 'ใช้งานไม่ได้', '-', 'ตึกผู้บริหาร', 'ใช้งานไม่ได้', 'ด่วนที่สุด', '175146165820220514_090444.jpg', '', '', 'Restart Router ใหม่ ใช้งานได้ปกติแล้ว', '', 5, '627fc0b93c382.png', 5, '2022-05-14 21:24:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2022-05-14 21:43:10', '2022-05-14 21:46:17', NULL, '127.0.0.1', '2022-05-14 21:19:37', '2022-05-14 14:46:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`catid`);

--
-- Indexes for table `cls`
--
ALTER TABLE `cls`
  ADD PRIMARY KEY (`clsid`);

--
-- Indexes for table `depart`
--
ALTER TABLE `depart`
  ADD PRIMARY KEY (`depid`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`jid`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `memo`
--
ALTER TABLE `memo`
  ADD PRIMARY KEY (`moid`);

--
-- Indexes for table `setdat`
--
ALTER TABLE `setdat`
  ADD PRIMARY KEY (`sdid`);

--
-- Indexes for table `sos`
--
ALTER TABLE `sos`
  ADD PRIMARY KEY (`sosid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `aid` tinyint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `catid` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cls`
--
ALTER TABLE `cls`
  MODIFY `clsid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `depart`
--
ALTER TABLE `depart`
  MODIFY `depid` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `jid` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `memo`
--
ALTER TABLE `memo`
  MODIFY `moid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `setdat`
--
ALTER TABLE `setdat`
  MODIFY `sdid` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sos`
--
ALTER TABLE `sos`
  MODIFY `sosid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
