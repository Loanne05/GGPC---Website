-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2021 at 03:34 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `messagein`
--

CREATE TABLE `messagein` (
  `Id` int(11) NOT NULL,
  `SendTime` datetime DEFAULT NULL,
  `ReceiveTime` datetime DEFAULT NULL,
  `MessageFrom` varchar(80) DEFAULT NULL,
  `MessageTo` varchar(80) DEFAULT NULL,
  `SMSC` varchar(80) DEFAULT NULL,
  `MessageText` text DEFAULT NULL,
  `MessageType` varchar(80) DEFAULT NULL,
  `MessageParts` int(11) DEFAULT NULL,
  `MessagePDU` text DEFAULT NULL,
  `Gateway` varchar(80) DEFAULT NULL,
  `UserId` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messagein`
--

INSERT INTO `messagein` (`Id`, `SendTime`, `ReceiveTime`, `MessageFrom`, `MessageTo`, `SMSC`, `MessageText`, `MessageType`, `MessageParts`, `MessagePDU`, `Gateway`, `UserId`) VALUES
(1, '2017-11-02 05:19:29', NULL, '211', '+639305235027', NULL, '0B05040B8423F00003FB0302,870906890101C651018715060350524F585932000187070603534D415254204D4D530001C65201872F060350524F5859325F3100018720060331302E3130322E36312E343600018721068501872206034E4150475052535F320001C6530187230603383038300001010101C600015501873606037734000187070603534D4152', NULL, NULL, NULL, NULL, NULL),
(2, '2017-11-02 05:19:34', NULL, '211', '+639305235027', NULL, '0B05040B8423F00003FB0303,54204D4D5300018739060350524F585932000187340603687474703A2F2F31302E3130322E36312E3233383A383030322F00010101', NULL, NULL, NULL, NULL, NULL),
(3, '2017-11-02 05:19:14', NULL, '211', '+639305235027', NULL, '0B05040B8423F00003FA0201,6C062F1F2DB69180923646443032463643313042394231363544354242413143304143413232424334343239453236423600030B6A00C54503312E310001C6560187070603534D41525420494E5445524E4554000101C65501871106034E4150475052535F330001871006AB0187070603534D41525420494E5445524E455400', NULL, NULL, NULL, NULL, NULL),
(4, '2017-11-02 05:19:19', NULL, '211', '+639305235027', NULL, '0B05040B8423F00003FA0202,0187140187080603696E7465726E65740001870906890101C600015501873606037732000187070603534D41525420494E5445524E45540001872206034E4150475052535F330001C65901873A0603687474703A2F2F6D2E736D6172742E636F6D2E7068000187070603484F4D450001871C01010101', NULL, NULL, NULL, NULL, NULL),
(5, '2017-11-02 05:19:24', NULL, '211', '+639305235027', NULL, '0B05040B8423F00003FB0301,6D062F1F2DB69180923432373832413042464145313131463335303137323744303141433530304134373930423843334500030B6A00C54503312E310001C6560187070603534D415254204D4D53000101C65501871106034E4150475052535F320001871006AB0187070603534D415254204D4D530001870806036D6D730001', NULL, NULL, NULL, NULL, NULL),
(6, '2017-11-02 05:19:29', NULL, '211', '+639305235027', NULL, '0B05040B8423F00003FB0302,870906890101C651018715060350524F585932000187070603534D415254204D4D530001C65201872F060350524F5859325F3100018720060331302E3130322E36312E343600018721068501872206034E4150475052535F320001C6530187230603383038300001010101C600015501873606037734000187070603534D4152', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messagelog`
--

CREATE TABLE `messagelog` (
  `Id` int(11) NOT NULL,
  `SendTime` datetime DEFAULT NULL,
  `ReceiveTime` datetime DEFAULT NULL,
  `StatusCode` int(11) DEFAULT NULL,
  `StatusText` varchar(80) DEFAULT NULL,
  `MessageTo` varchar(80) DEFAULT NULL,
  `MessageFrom` varchar(80) DEFAULT NULL,
  `MessageText` text DEFAULT NULL,
  `MessageType` varchar(80) DEFAULT NULL,
  `MessageId` varchar(80) DEFAULT NULL,
  `ErrorCode` varchar(80) DEFAULT NULL,
  `ErrorText` varchar(80) DEFAULT NULL,
  `Gateway` varchar(80) DEFAULT NULL,
  `MessageParts` int(11) DEFAULT NULL,
  `MessagePDU` text DEFAULT NULL,
  `Connector` varchar(80) DEFAULT NULL,
  `UserId` varchar(80) DEFAULT NULL,
  `UserInfo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `messageout`
--

CREATE TABLE `messageout` (
  `Id` int(11) NOT NULL,
  `MessageTo` varchar(80) DEFAULT NULL,
  `MessageFrom` varchar(80) DEFAULT NULL,
  `MessageText` text DEFAULT NULL,
  `MessageType` varchar(80) DEFAULT NULL,
  `Gateway` varchar(80) DEFAULT NULL,
  `UserId` varchar(80) DEFAULT NULL,
  `UserInfo` text DEFAULT NULL,
  `Priority` int(11) DEFAULT NULL,
  `Scheduled` datetime DEFAULT NULL,
  `ValidityPeriod` int(11) DEFAULT NULL,
  `IsSent` tinyint(1) NOT NULL DEFAULT 0,
  `IsRead` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblautonumber`
--

CREATE TABLE `tblautonumber` (
  `ID` int(11) NOT NULL,
  `AUTOSTART` varchar(11) NOT NULL,
  `AUTOINC` int(11) NOT NULL,
  `AUTOEND` int(11) NOT NULL,
  `AUTOKEY` varchar(12) NOT NULL,
  `AUTONUM` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblautonumber`
--

INSERT INTO `tblautonumber` (`ID`, `AUTOSTART`, `AUTOINC`, `AUTOEND`, `AUTOKEY`, `AUTONUM`) VALUES
(1, '2017', 1, 63, 'PROID', 10),
(2, '0', 1, 131, 'ordernumber', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `CATEGID` int(11) NOT NULL,
  `CATEGORIES` varchar(255) NOT NULL,
  `USERID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`CATEGID`, `CATEGORIES`, `USERID`) VALUES
(5, 'PC COMPONENTS', 0),
(11, 'LAPTOP', 0),
(12, 'FOR GAMERS', 0),
(13, 'PERIPHERALS AND ACCESSORIES', 0),
(14, 'SMARTPHONE', 0),
(15, 'TABLET', 0),
(16, 'DESKTOP PC PACKAGE', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomer`
--

CREATE TABLE `tblcustomer` (
  `CUSTOMERID` int(11) NOT NULL,
  `FNAME` varchar(30) NOT NULL,
  `LNAME` varchar(30) NOT NULL,
  `MNAME` varchar(30) NOT NULL,
  `CUSHOMENUM` varchar(90) NOT NULL,
  `STREETADD` text NOT NULL,
  `BRGYADD` text NOT NULL,
  `CITYADD` text NOT NULL,
  `PROVINCE` varchar(80) NOT NULL,
  `COUNTRY` varchar(30) NOT NULL,
  `DBIRTH` date NOT NULL,
  `GENDER` varchar(10) NOT NULL,
  `PHONE` varchar(20) NOT NULL,
  `EMAILADD` varchar(40) NOT NULL,
  `ZIPCODE` int(6) NOT NULL,
  `CUSUNAME` varchar(20) NOT NULL,
  `CUSPASS` varchar(90) NOT NULL,
  `CUSPHOTO` varchar(255) NOT NULL,
  `TERMS` tinyint(4) NOT NULL,
  `DATEJOIN` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcustomer`
--

INSERT INTO `tblcustomer` (`CUSTOMERID`, `FNAME`, `LNAME`, `MNAME`, `CUSHOMENUM`, `STREETADD`, `BRGYADD`, `CITYADD`, `PROVINCE`, `COUNTRY`, `DBIRTH`, `GENDER`, `PHONE`, `EMAILADD`, `ZIPCODE`, `CUSUNAME`, `CUSPASS`, `CUSPHOTO`, `TERMS`, `DATEJOIN`) VALUES
(12, 'Redel', 'Laturnas', '', '', '', '', 'marikina', '', '', '0000-00-00', 'Male', '09458922333', '', 0, 'redellaturnas', '5a5edad9221e88d54ee3a64df65f6077ca879002', 'customer_image/d2.PNG', 1, '2021-11-09'),
(15, 'Kento', 'Ozawa', '', '', '', '', 'Pasig', '', '', '0000-00-00', 'Male', '09458922333', '', 0, 'kento', '5a5edad9221e88d54ee3a64df65f6077ca879002', 'customer_image/d3.PNG', 1, '2021-11-10'),
(16, 'Irish', 'Tresvalles', '', '', '', '', 'QC', '', '', '0000-00-00', 'Female', '09458922333', '', 0, 'irishcutie', '5a5edad9221e88d54ee3a64df65f6077ca879002', 'customer_image/klee.jpg', 1, '2021-11-11'),
(21, 'Bill', 'Mercado', '', '', '', '', 'Cainta', '', '', '0000-00-00', 'Male', '09458922333', '', 0, 'bill', '1de6492cd56dc9ec3973f43177db06562272e307', '', 1, '2021-11-15'),
(22, 'Janry', 'Deoduco', '', '', '', '', 'Pasig City', '', '', '0000-00-00', 'Male', '09458922333', '', 0, 'janry', '72bc479c7948da4618db46c9af5f9821b987bc9d', '', 1, '2021-11-16');

-- --------------------------------------------------------

--
-- Table structure for table `tblorder`
--

CREATE TABLE `tblorder` (
  `ORDERID` int(11) NOT NULL,
  `PROID` int(11) NOT NULL,
  `ORDEREDQTY` int(11) NOT NULL,
  `ORDEREDPRICE` double NOT NULL,
  `ORDEREDNUM` int(11) NOT NULL,
  `USERID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblorder`
--

INSERT INTO `tblorder` (`ORDERID`, `PROID`, `ORDEREDQTY`, `ORDEREDPRICE`, `ORDEREDNUM`, `USERID`) VALUES
(3, 201738, 1, 199, 94, 0),
(4, 201739, 1, 289, 95, 0),
(5, 201740, 1, 149, 96, 0),
(6, 201739, 1, 289, 97, 0),
(7, 201746, 1, 1395, 98, 0),
(8, 201745, 1, 1379, 98, 0),
(11, 201747, 1, 30995, 101, 0),
(12, 201745, 1, 1379, 102, 0),
(13, 201744, 1, 7395, 103, 0),
(14, 201744, 1, 7395, 104, 0),
(15, 201745, 1, 1379, 104, 0),
(16, 201745, 1, 1379, 105, 0),
(17, 201744, 1, 7395, 106, 0),
(18, 201744, 1, 7395, 107, 0),
(19, 201744, 1, 7395, 108, 0),
(20, 201744, 1, 7395, 109, 0),
(21, 201744, 1, 7395, 110, 0),
(22, 201745, 1, 1379, 111, 0),
(23, 201744, 1, 7395, 112, 0),
(24, 201745, 1, 1379, 113, 0),
(25, 201746, 1, 1395, 114, 0),
(26, 201745, 1, 1379, 115, 0),
(27, 201744, 1, 7395, 116, 0),
(28, 201746, 1, 1395, 117, 0),
(29, 201760, 1, 14195, 118, 0),
(30, 201749, 1, 10429, 119, 0),
(31, 201744, 1, 7395, 120, 0),
(32, 201744, 1, 7395, 121, 0),
(33, 201751, 1, 124995, 122, 0),
(34, 201751, 1, 124995, 123, 0),
(35, 201746, 1, 1395, 124, 0),
(36, 201752, 1, 11200, 125, 0),
(37, 201744, 1, 7395, 126, 0),
(38, 201751, 1, 124995, 127, 0),
(39, 201761, 1, 6999, 128, 0),
(40, 201751, 1, 124995, 129, 0),
(41, 201762, 1, 7000, 130, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblproduct`
--

CREATE TABLE `tblproduct` (
  `PROID` int(11) NOT NULL,
  `PRODESC` varchar(255) DEFAULT NULL,
  `INGREDIENTS` varchar(255) NOT NULL,
  `PROQTY` int(11) DEFAULT NULL,
  `ORIGINALPRICE` double NOT NULL,
  `PROPRICE` double DEFAULT NULL,
  `CATEGID` int(11) DEFAULT NULL,
  `IMAGES` varchar(255) DEFAULT NULL,
  `PROSTATS` varchar(30) DEFAULT NULL,
  `OWNERNAME` varchar(90) NOT NULL,
  `OWNERPHONE` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproduct`
--

INSERT INTO `tblproduct` (`PROID`, `PRODESC`, `INGREDIENTS`, `PROQTY`, `ORIGINALPRICE`, `PROPRICE`, `CATEGID`, `IMAGES`, `PROSTATS`, `OWNERNAME`, `OWNERPHONE`) VALUES
(201743, 'Gigabyte GA-B450 Pro Wifi Motherboard Socket Am4 Ddr4', '', 10, 7395, 7395, 0, 'uploaded_photos/Gigabyte GA-B450 Pro Wifi Motherboard Socket Am4 Ddr4.jpg', 'Available', 'GGPC', ''),
(201744, 'Gigabyte GA-B450 Pro Wifi Motherboard Socket Am4 Ddr4                      ', '', 11, 7395, 7395, 5, 'uploaded_photos/Gigabyte GA-B450 Pro Wifi Motherboard Socket Am4 Ddr4.jpg', 'Available', 'GGPC', '09458922333'),
(201745, 'Rakk Dasig Illuminated Excellent Performance Gaming Mouse                      ', '', 10, 1379, 1379, 12, 'uploaded_photos/Rakk Dasig Illuminated Excellent Performance Gaming Mouse.jpg', 'Available', 'GGPC', '09458922333'),
(201746, 'Rakk Tandus 87 Keys Multi-Color Hotswappable Switch                    ', '', 6, 1395, 1395, 12, 'uploaded_photos/Rakk Tandus 87 Keys Multi-Color Hotswappable Switch,Outemu Blue switch Clicky and Tactile Double Shot ABS Keycaps Mechanical Gaming Keyboard.jpg', 'Available', 'GGPC', '09458922333'),
(201749, 'ASUS TUF B450M PLUS II SOCKET AM4', '', 9, 10420, 10429, 5, 'uploaded_photos/TUFGAMINGB450.jpg', 'Available', 'GGPC', '09458922333'),
(201750, 'ASUS Studiobook Pro 17 (Star Grey) Intel Xeon', '', 10, 179995, 179995, 11, 'uploaded_photos/ASUSstudiobook17.jpg', 'Available', 'GGPC', '09458922333'),
(201751, 'Asus ROG Strix Scar 15 Gaming Laptop', '', 6, 124995, 124995, 11, 'uploaded_photos/AsusRogStrix.jpg', 'Available', 'GGPC', '09458922333'),
(201752, 'ViewSonic VX2468-PC-MHD 24”                                        ', '', 9, 11200, 11200, 13, 'uploaded_photos/4342-a_4bfaa3fe-fcdb-4ddd-a0d4-85c18f16fcd5.jpg', 'Available', 'GGPC', '09458922333'),
(201753, 'Royal Kludge RK61 61 Keys Wireless', '', 10, 5995, 5995, 13, 'uploaded_photos/RoyalKludge.jpg', 'Available', 'GGPC', '09458922333'),
(201754, 'Apple iPhone 13', '', 10, 509990, 50990, 14, 'uploaded_photos/Iphone.png', 'Available', 'GGPC', '09458922333'),
(201757, 'Apple iPhone 13', '', 10, 56800, 56800, 15, 'uploaded_photos/Ipad.png', 'Available', 'GGPC', '09458922333'),
(201758, 'Samsung Galaxy Tab S6 Lite', '', 10, 26990, 26990, 15, 'uploaded_photos/Samsungtab.png', 'Available', 'GGPC', '09458922333'),
(201759, 'EasyBundles AMD Recommended for Latest Games', '', 10, 11595, 11595, 16, 'uploaded_photos/package1.jpg', 'Available', 'GGPC', '09458922333'),
(201760, 'EasyBuild AMD Kaveri A8-7680 Complete Desktop Computer Set for Education', '', 9, 14195, 14195, 16, 'uploaded_photos/package3.jpg', 'Available', 'GGPC', '09458922333');

-- --------------------------------------------------------

--
-- Table structure for table `tblpromopro`
--

CREATE TABLE `tblpromopro` (
  `PROMOID` int(11) NOT NULL,
  `PROID` int(11) NOT NULL,
  `PRODISCOUNT` double NOT NULL,
  `PRODISPRICE` double NOT NULL,
  `PROBANNER` tinyint(4) NOT NULL,
  `PRONEW` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpromopro`
--

INSERT INTO `tblpromopro` (`PROMOID`, `PROID`, `PRODISCOUNT`, `PRODISPRICE`, `PROBANNER`, `PRONEW`) VALUES
(3, 201739, 0, 289, 0, 0),
(4, 201740, 0, 149, 0, 0),
(5, 201741, 0, 89, 0, 0),
(7, 201743, 0, 7395, 0, 0),
(8, 201744, 0, 7395, 1, 0),
(9, 201745, 0, 1379, 0, 0),
(10, 201746, 0, 1395, 0, 0),
(13, 201749, 0, 10429, 0, 0),
(14, 201750, 0, 179995, 0, 0),
(15, 201751, 0, 124995, 0, 0),
(16, 201752, 0, 11200, 0, 0),
(17, 201753, 0, 5995, 0, 0),
(18, 201754, 0, 50990, 0, 0),
(21, 201757, 0, 56800, 1, 0),
(22, 201758, 0, 26990, 0, 0),
(23, 201759, 0, 11595, 0, 0),
(24, 201760, 0, 14195, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblsetting`
--

CREATE TABLE `tblsetting` (
  `SETTINGID` int(11) NOT NULL,
  `PLACE` text NOT NULL,
  `BRGY` varchar(90) NOT NULL,
  `DELPRICE` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsetting`
--

INSERT INTO `tblsetting` (`SETTINGID`, `PLACE`, `BRGY`, `DELPRICE`) VALUES
(1, 'Pasig City', 'Brgy. Sta Lucia ', 50),
(2, 'Pasig City', 'Brgy. Rosario ', 70);

-- --------------------------------------------------------

--
-- Table structure for table `tblstockin`
--

CREATE TABLE `tblstockin` (
  `STOCKINID` int(11) NOT NULL,
  `STOCKDATE` datetime DEFAULT NULL,
  `PROID` int(11) DEFAULT NULL,
  `STOCKQTY` int(11) DEFAULT NULL,
  `STOCKPRICE` double DEFAULT NULL,
  `USERID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblsummary`
--

CREATE TABLE `tblsummary` (
  `SUMMARYID` int(11) NOT NULL,
  `ORDEREDDATE` datetime NOT NULL,
  `CUSTOMERID` int(11) NOT NULL,
  `ORDEREDNUM` int(11) NOT NULL,
  `DELFEE` double NOT NULL,
  `PAYMENT` double NOT NULL,
  `PAYMENTMETHOD` varchar(30) NOT NULL,
  `ORDEREDSTATS` varchar(30) NOT NULL,
  `ORDEREDREMARKS` varchar(125) NOT NULL,
  `CLAIMEDADTE` datetime NOT NULL,
  `HVIEW` tinyint(4) NOT NULL,
  `USERID` int(11) NOT NULL,
  `DN` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsummary`
--

INSERT INTO `tblsummary` (`SUMMARYID`, `ORDEREDDATE`, `CUSTOMERID`, `ORDEREDNUM`, `DELFEE`, `PAYMENT`, `PAYMENTMETHOD`, `ORDEREDSTATS`, `ORDEREDREMARKS`, `CLAIMEDADTE`, `HVIEW`, `USERID`, `DN`) VALUES
(4, '2021-11-09 12:22:52', 12, 95, 50, 289, 'Cash on Delivery', 'Confirmed', 'Your order has been confirmed.', '2021-11-09 00:00:00', 1, 0, ''),
(5, '2021-11-10 09:11:09', 15, 96, 50, 149, 'Cash on Delivery', 'Confirmed', 'Your order has been confirmed.', '2021-11-10 00:00:00', 0, 0, ''),
(6, '2021-11-11 07:37:01', 16, 97, 70, 289, 'Cash on Delivery', 'Cancelled', 'Your order has been cancelled due to lack of communication and incomplete information.', '0000-00-00 00:00:00', 1, 0, ''),
(7, '2021-11-14 05:30:18', 12, 98, 50, 2774, 'Cash on Delivery', 'Delivered', 'Your order has been delivered.', '2021-11-15 00:00:00', 0, 0, ''),
(16, '2021-11-15 04:25:30', 12, 105, 0, 1379, 'Cash on Delivery', 'Delivered', 'Your order has been delivered.', '2021-11-15 00:00:00', 0, 0, ''),
(17, '2021-11-15 04:29:17', 12, 106, 0, 7395, 'Cash on Delivery', 'Delivered', 'Your order has been delivered.', '2021-11-15 00:00:00', 0, 0, ''),
(18, '2021-11-15 04:30:36', 12, 107, 0, 7395, 'Cash on Delivery', 'Delivered', 'Your order has been delivered.', '2021-11-15 00:00:00', 1, 0, ''),
(19, '2021-11-15 04:35:55', 19, 108, 0, 7395, 'Cash on Delivery', 'Pending', 'Your order is on process.', '0000-00-00 00:00:00', 0, 0, ''),
(20, '2021-11-15 04:38:54', 20, 109, 50, 7395, 'Cash on Delivery', 'Delivered', 'Your order has been delivered.', '2021-11-15 00:00:00', 0, 0, ''),
(21, '2021-11-15 04:48:00', 21, 110, 0, 7395, 'Cash on Delivery', 'Delivered', 'Your order has been delivered.', '2021-11-15 00:00:00', 1, 0, ''),
(22, '2021-11-15 05:00:04', 21, 111, 0, 1379, 'Cash on Delivery', 'Delivered', 'Your order has been delivered.', '2021-11-15 00:00:00', 0, 0, ''),
(23, '2021-11-16 04:43:31', 22, 112, 0, 7395, 'Cash on Delivery', 'Delivered', 'Your order has been delivered.', '2021-11-16 00:00:00', 0, 0, ''),
(24, '2021-11-16 04:44:42', 22, 113, 0, 1379, 'Cash on Delivery', 'Delivered', 'Your order has been delivered.', '2021-11-16 00:00:00', 0, 0, ''),
(25, '2021-11-16 04:46:53', 21, 114, 0, 1395, 'Cash on Delivery', 'Cancelled', 'Your order has been cancelled due to lack of communication and incomplete information.', '0000-00-00 00:00:00', 0, 0, ''),
(26, '2021-11-16 08:44:51', 21, 115, 0, 1379, 'Cash on Delivery', 'Delivered', 'Your order has been delivered.', '2021-11-16 00:00:00', 0, 0, ''),
(27, '2021-11-16 08:53:50', 21, 116, 0, 7395, 'Cash on Delivery', 'Delivered', 'Your order has been delivered.', '2021-11-16 00:00:00', 0, 0, ''),
(28, '2021-11-18 11:08:59', 12, 117, 0, 1395, 'Cash on Delivery', 'Delivered', 'Your order has been delivered.', '2021-11-18 00:00:00', 1, 0, ''),
(29, '2021-11-19 04:56:23', 12, 118, 0, 14195, 'Cash on Delivery', 'Delivered', 'Your order has been delivered.', '2021-11-19 00:00:00', 0, 0, ''),
(30, '2021-11-19 05:10:51', 12, 119, 0, 10429, 'Cash on Delivery', 'Pending', 'Your order is on process.', '0000-00-00 00:00:00', 0, 0, ''),
(31, '2021-11-19 05:11:14', 12, 120, 0, 7395, 'Cash on Delivery', 'Pending', 'Your order is on process.', '0000-00-00 00:00:00', 0, 0, ''),
(32, '2021-11-19 05:11:28', 12, 121, 0, 7395, 'Cash on Delivery', 'Pending', 'Your order is on process.', '0000-00-00 00:00:00', 0, 0, ''),
(33, '2021-11-19 05:13:12', 12, 122, 0, 124995, 'Cash on Delivery', 'Delivered', 'Your order has been delivered.', '2021-11-19 00:00:00', 0, 0, ''),
(34, '2021-11-20 06:28:46', 12, 123, 0, 124995, 'Cash on Delivery', 'Delivered', 'Your order has been delivered.', '2021-11-20 00:00:00', 0, 0, ''),
(35, '2021-11-20 06:40:22', 12, 124, 50, 1395, 'Cash on Delivery', 'Pending', 'Your order is on process.', '0000-00-00 00:00:00', 1, 0, ''),
(36, '2021-11-21 11:31:11', 12, 125, 0, 11200, 'Cash on Delivery', 'Cancelled', 'Your order has been cancelled due to lack of communication and incomplete information.', '0000-00-00 00:00:00', 0, 0, ''),
(37, '2021-11-21 11:50:24', 23, 126, 70, 7395, 'Cash on Delivery', 'Delivered', 'Your order has been delivered.', '2021-11-21 00:00:00', 0, 0, ''),
(38, '2021-11-22 01:28:05', 24, 127, 70, 124995, 'Cash on Delivery', 'Delivered', 'Your order has been delivered.', '2021-11-22 00:00:00', 0, 0, ''),
(39, '2021-11-22 01:34:25', 24, 128, 70, 6999, 'Cash on Delivery', 'Cancelled', 'Your order has been cancelled due to lack of communication and incomplete information.', '0000-00-00 00:00:00', 0, 0, ''),
(40, '2021-11-22 01:43:08', 25, 129, 70, 124995, 'Cash on Delivery', 'Delivered', 'Your order has been delivered.', '2021-11-22 00:00:00', 1, 0, ''),
(41, '2021-11-22 01:47:24', 25, 130, 50, 7000, 'Cash on Delivery', 'Delivered', 'Your order has been delivered.', '2021-11-22 00:00:00', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbluseraccount`
--

CREATE TABLE `tbluseraccount` (
  `USERID` int(11) NOT NULL,
  `U_NAME` varchar(122) NOT NULL,
  `U_USERNAME` varchar(122) NOT NULL,
  `U_PASS` varchar(122) NOT NULL,
  `U_ROLE` varchar(30) NOT NULL,
  `USERIMAGE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluseraccount`
--

INSERT INTO `tbluseraccount` (`USERID`, `U_NAME`, `U_USERNAME`, `U_PASS`, `U_ROLE`, `USERIMAGE`) VALUES
(128, 'GGPC', 'GGPC', '91b674f39dfe11b420eeaceef622fdeec4d76764', 'Administrator', 'photos/iconggpc.png');

-- --------------------------------------------------------

--
-- Table structure for table `tblwishlist`
--

CREATE TABLE `tblwishlist` (
  `id` int(11) NOT NULL,
  `CUSID` int(11) NOT NULL,
  `PROID` int(11) NOT NULL,
  `WISHDATE` date NOT NULL,
  `WISHSTATS` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblwishlist`
--

INSERT INTO `tblwishlist` (`id`, `CUSID`, `PROID`, `WISHDATE`, `WISHSTATS`) VALUES
(3, 12, 201740, '2021-11-09', '0'),
(4, 15, 201737, '2021-11-10', '0'),
(5, 21, 201745, '2021-11-16', '0'),
(6, 12, 201745, '2021-11-18', '0'),
(7, 24, 201752, '2021-11-22', '0'),
(8, 25, 201751, '2021-11-22', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messagein`
--
ALTER TABLE `messagein`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `messagelog`
--
ALTER TABLE `messagelog`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IDX_MessageId` (`MessageId`,`SendTime`);

--
-- Indexes for table `messageout`
--
ALTER TABLE `messageout`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IDX_IsRead` (`IsRead`);

--
-- Indexes for table `tblautonumber`
--
ALTER TABLE `tblautonumber`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`CATEGID`);

--
-- Indexes for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  ADD PRIMARY KEY (`CUSTOMERID`);

--
-- Indexes for table `tblorder`
--
ALTER TABLE `tblorder`
  ADD PRIMARY KEY (`ORDERID`),
  ADD KEY `USERID` (`USERID`),
  ADD KEY `PROID` (`PROID`),
  ADD KEY `ORDEREDNUM` (`ORDEREDNUM`);

--
-- Indexes for table `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD PRIMARY KEY (`PROID`),
  ADD KEY `CATEGID` (`CATEGID`);

--
-- Indexes for table `tblpromopro`
--
ALTER TABLE `tblpromopro`
  ADD PRIMARY KEY (`PROMOID`),
  ADD UNIQUE KEY `PROID` (`PROID`);

--
-- Indexes for table `tblsetting`
--
ALTER TABLE `tblsetting`
  ADD PRIMARY KEY (`SETTINGID`);

--
-- Indexes for table `tblstockin`
--
ALTER TABLE `tblstockin`
  ADD PRIMARY KEY (`STOCKINID`),
  ADD KEY `PROID` (`PROID`,`USERID`),
  ADD KEY `USERID` (`USERID`);

--
-- Indexes for table `tblsummary`
--
ALTER TABLE `tblsummary`
  ADD PRIMARY KEY (`SUMMARYID`),
  ADD UNIQUE KEY `ORDEREDNUM` (`ORDEREDNUM`),
  ADD KEY `CUSTOMERID` (`CUSTOMERID`),
  ADD KEY `USERID` (`USERID`);

--
-- Indexes for table `tbluseraccount`
--
ALTER TABLE `tbluseraccount`
  ADD PRIMARY KEY (`USERID`);

--
-- Indexes for table `tblwishlist`
--
ALTER TABLE `tblwishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messagein`
--
ALTER TABLE `messagein`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `messagelog`
--
ALTER TABLE `messagelog`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `messageout`
--
ALTER TABLE `messageout`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblautonumber`
--
ALTER TABLE `tblautonumber`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `CATEGID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  MODIFY `CUSTOMERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tblorder`
--
ALTER TABLE `tblorder`
  MODIFY `ORDERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tblpromopro`
--
ALTER TABLE `tblpromopro`
  MODIFY `PROMOID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tblsetting`
--
ALTER TABLE `tblsetting`
  MODIFY `SETTINGID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblstockin`
--
ALTER TABLE `tblstockin`
  MODIFY `STOCKINID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblsummary`
--
ALTER TABLE `tblsummary`
  MODIFY `SUMMARYID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tbluseraccount`
--
ALTER TABLE `tbluseraccount`
  MODIFY `USERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `tblwishlist`
--
ALTER TABLE `tblwishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
