-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2020 at 08:04 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `9ahotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 5689784592, 'admin@gmail.com', 'a8a133c1b2c9b51a6a8170d22407c17e', '2020-11-12 07:25:30');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `ID` int(10) NOT NULL,
  `RoomId` int(5) DEFAULT NULL,
  `BookingNumber` varchar(120) DEFAULT NULL,
  `UserID` int(5) NOT NULL,
  `IDType` varchar(120) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `CheckinDate` varchar(200) DEFAULT NULL,
  `CheckoutDate` varchar(200) DEFAULT NULL,
  `BookingDate` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(50) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`ID`, `RoomId`, `BookingNumber`, `UserID`, `IDType`, `Gender`, `Address`, `CheckinDate`, `CheckoutDate`, `BookingDate`, `Remark`, `Status`, `UpdationDate`) VALUES
(3, 6, '988041674', 4, 'Driving Licence Card', 'Female', 'bollapadu', '2020-11-26', '2020-11-27', '2020-11-25 16:33:08', 'confirm booking', 'Approved', '2020-11-25 16:35:14'),
(4, 1, '858515086', 5, 'Passport', 'Male', '4-239A,Near Ramalayam,Hanumanpalem\r\nKollipara Mandal,Guntur District', '2020-11-28', '2020-11-29', '2020-11-26 12:46:09', NULL, NULL, NULL),
(5, 2, '409421033', 2, 'Passport', 'Female', '19 Dundas Gardens', '2020-12-20', '2020-12-25', '2020-11-29 21:40:51', 'booking Confirmation', 'Approved', '2020-11-30 23:29:29');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `ID` int(10) NOT NULL,
  `CategoryName` varchar(120) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `Price` int(5) NOT NULL,
  `Date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`ID`, `CategoryName`, `Description`, `Price`, `Date`) VALUES
(1, ' Premier Room', 'Only for one person', 60, '2020-11-28 06:43:55'),
(2, 'Deluxe Room', 'For Two Person', 40, '2020-11-28 06:44:55'),
(3, 'Exclusive Suit Room', 'A room assigned to three people. May have two or more beds.', 100, '2020-11-28 06:45:27'),
(4, 'Presidential Suite Room', 'A room assigned to four people. May have two or more beds.', 120, '2020-11-27 20:54:24'),
(5, 'Junior Suite Room', 'A room with a queen-sized bed. May be occupied by one or more people', 80, '2020-11-28 06:46:30');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontact`
--

CREATE TABLE `tblcontact` (
  `ID` int(10) NOT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `EnquiryDate` timestamp NULL DEFAULT current_timestamp(),
  `IsRead` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcontact`
--

INSERT INTO `tblcontact` (`ID`, `Name`, `MobileNumber`, `Email`, `Message`, `EnquiryDate`, `IsRead`) VALUES
(1, 'kavya', 9494733119, 'kavya@123', '	My booking id is 988041674.\r\ni need to cancel my room.', '2020-11-25 16:41:09', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblfacility`
--

CREATE TABLE `tblfacility` (
  `ID` int(10) NOT NULL,
  `FacilityTitle` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `Image` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblfacility`
--

INSERT INTO `tblfacility` (`ID`, `FacilityTitle`, `Description`, `Image`, `CreationDate`) VALUES
(1, '24-Hour room service', '24-Hour room service available', 'b9fb9d37bdf15a699bc071ce49baea531582890659.jpg', '2020-11-12 11:50:59'),
(2, 'Free wireless internet access', 'Free wireless internet access available in room restro area', '7fdc1a630c238af0815181f9faa190f51582890845.jpg', '2020-11-13 11:54:05'),
(3, 'Laundry service', 'Free Laundry service available for a customer who book queen and king size room', '3c7baecb174a0cbcc64507e9c3308c4b1582890987.jpg', '2020-11-13 11:56:27'),
(4, 'Tour & excursions', 'vehicle are available for tour and travels', '1e6ae4ada992769567b71815f124fac51582891174.jpg', '2020-11-13 11:59:34'),
(5, 'Airport transfers', 'Airport transfers facility available on demand', 'c9e82378a39eec108727a123b09056651582891272.jpg', '2020-11-13 12:01:12'),
(6, 'Babysitting on request', 'Babysitting on request', 'c26be60cfd1ba40772b5ac48b95ab19b1582891331.png', '2020-11-13 12:02:11'),
(7, '24-Hour doctor on call', '24-Hour doctor on call', '55ccf27d26d7b23839986b6ae2e447ab1582891425.jpg', '2020-11-13 12:03:45'),
(8, 'Meeting facilities', 'Meeting facilities available for company person', 'efc1a80c391be252d7d777a437f868701582891713.jpg', '2020-11-13 12:08:33');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(120) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', 'The hotel with its 267 smartly furnished rooms and suites, offers you a wide array of accommodation options. Room categories include Superior Room; Deluxe Room; Premier Room; Junior Suite; Executive Suite and Presidential Suite.\r\n', NULL, NULL, NULL),
(2, 'contactus', 'Contact Us', 'Dundas Garden,\r\nwest molesey,\r\nsurrey,\r\nKT81RX.', 'info.9ahotel@gmail.com', 447717035259, '2020-11-29 11:51:15');

-- --------------------------------------------------------

--
-- Table structure for table `tblroom`
--

CREATE TABLE `tblroom` (
  `ID` int(10) NOT NULL,
  `RoomType` int(10) DEFAULT NULL,
  `RoomName` varchar(200) DEFAULT NULL,
  `MaxAdult` int(5) DEFAULT NULL,
  `MaxChild` int(5) DEFAULT NULL,
  `RoomDesc` mediumtext DEFAULT NULL,
  `NoofBed` int(5) DEFAULT NULL,
  `Image` varchar(200) DEFAULT NULL,
  `RoomFacility` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblroom`
--

INSERT INTO `tblroom` (`ID`, `RoomType`, `RoomName`, `MaxAdult`, `MaxChild`, `RoomDesc`, `NoofBed`, `Image`, `RoomFacility`, `CreationDate`) VALUES
(1, 1, 'Premier room', 1, 0, 'This is the standard room category of this hotel. These rooms come with a King Bed and premium amenities with an Area:215 Sq.Ft.', 1, '46feae13ee821df9718dd551c17939201606844526.jpg', 'tea/coffee maker and an electronic safe make your stay cozy and comfortable.24-Hour room service, Free wireless internet access', '2020-11-27 11:33:14'),
(2, 2, 'Deluxe Room', 2, 1, 'With an option of King and Twin beds, these spacious rooms come with free WiFi*. The contemporary ambience accompanied with facilities similar to Superior Rooms, these rooms are specially designed to give you relaxed experience.\r\nArea:274 Sq.Ft.', 2, '3d8551ceee5c4426a955162efb3070531606844709.jpg', '   Tea Coffee Maker, Electronic Safe, WiFi, DVD Player, Four-fixture Bathroom', '2020-11-27 11:35:47'),
(3, 3, 'Exclusive \r\n Suit Room', 3, 0, 'These spacious rooms with their contemporary ambience, living room and separate sitting area come with King bed. It offers top of the class amenities and free WiFi* to maximize your in-room experience.\r\nArea:400 Sq.Ft.', 3, 'dc91aec0cca05e1e3b52c2614e55ad701606844908.jpg', '24-Hour room service,Free wireless internet access,Laundry service,Babysitting on request,24-Hour doctor on call,Meeting facilities', '2020-11-13 11:43:58'),
(4, 4, 'Presidential Suit Room', 2, 2, 'This suite comprises two large rooms, a separate sitting room with dining and bar areas. It has been designed for high comfort and luxury. The rooms come with King bed, free WiFi* and modern amenities. Pamper yourself with your own personal Jacuzzi and an in-room microwave.\r\nArea:1499 Sq.Ft.', 4, 'fa45e5707b7e8fb47fcfcea3026c64391606845495.jpg', '• Tea Coffee Maker\r\n• Electronic Safe\r\n• WiFi\r\n• DVD Player\r\n• Airport Transfer\r\n• Jacuzzi\r\n• In-Room Microwave', '2020-11-27 11:45:49'),
(5, 5, 'Junior Suit Room', 2, 0, 'A room with a queen-size bed. It may be occupied by one or more people (Size: 153 x 203 cm). King:', 1, '7edd3d2f392c4a07d107f07cbe764fa51582977081.jpg', '24-Hour room service,Free wireless internet access,Laundry service,Tour & excursions,Airport transfers,Babysitting on request,24-Hour doctor on call,Meeting facilities', '2020-11-29 11:51:21'),
(6, 1, 'Single Room with Balcony', 1, 2, 'Each room is equipped with satellite TV, minibar and a tea/coffee maker. Ironing facilities are provided in all rooms.\r\n\r\nTreebo Select Royal Garden offers a well-equipped business centre. Guests can make travel arrangements at the tour desk.\r\n\r\nCheckers Restaurant serves a variety of Indian, Chinese and Continental dishes.', 1, 'ca3de1cf40a0af9351083d4b0e95736c1583047692.jpg', '24-Hour doctor on call', '2020-11-23 07:28:12');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FullName` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FullName`, `MobileNumber`, `Email`, `Password`, `RegDate`) VALUES
(2, 'kavya kolli', 9494733119, 'kavya@123', 'e10adc3949ba59abbe56e057f20f883e', '2020-11-25 13:54:11'),
(3, 'trinath', 8686338695, 'trinath.movva129@gmail.com', '832dba47fdcb07855f8bd100e33c20f8', '2020-11-26 12:44:32'),
(4, 'chaitu', 9014141011, 'chaitu@123', 'e10adc3949ba59abbe56e057f20f883e', '2020-11-29 18:34:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `tblcontact`
--
ALTER TABLE `tblcontact`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblfacility`
--
ALTER TABLE `tblfacility`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblroom`
--
ALTER TABLE `tblroom`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RoomType` (`RoomType`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblcontact`
--
ALTER TABLE `tblcontact`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblfacility`
--
ALTER TABLE `tblfacility`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblroom`
--
ALTER TABLE `tblroom`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
