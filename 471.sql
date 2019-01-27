-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 15, 2018 at 04:28 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.1.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `NewTestForMovie`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_account`
--

CREATE TABLE `admin_account` (
  `AdminID` int(5) NOT NULL,
  `First_Name` varchar(255) NOT NULL,
  `Last_Name` varchar(255) NOT NULL,
  `Username` varchar(15) NOT NULL,
  `Password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_account`
--

INSERT INTO `admin_account` (`AdminID`, `First_Name`, `Last_Name`, `Username`, `Password`) VALUES
(1, 'Steve', 'Khanna', 'admin', 'admin'),
(2, 'Masroor', 'Syed', 'm.syed', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `are_assigned`
--

CREATE TABLE `are_assigned` (
  `Movie_Name` varchar(255) NOT NULL,
  `TheatreID` int(2) NOT NULL,
  `Date` date NOT NULL,
  `StartTime` time NOT NULL,
  `EndTime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `are_assigned`
--

INSERT INTO `are_assigned` (`Movie_Name`, `TheatreID`, `Date`, `StartTime`, `EndTime`) VALUES
('hi', 1, '2012-01-01', '03:00:00', '04:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `are_assigned_renting`
--

CREATE TABLE `are_assigned_renting` (
  `TheatreID` int(2) NOT NULL,
  `Date` date NOT NULL,
  `StartTime` time NOT NULL,
  `EndTime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `are_assigned_renting`
--

INSERT INTO `are_assigned_renting` (`TheatreID`, `Date`, `StartTime`, `EndTime`) VALUES
(1, '2019-01-01', '04:00:00', '05:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `buy_tickets`
--

CREATE TABLE `buy_tickets` (
  `TicketID` int(6) NOT NULL,
  `CustomerID` int(5) NOT NULL,
  `Quantity` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buy_tickets`
--

INSERT INTO `buy_tickets` (`TicketID`, `CustomerID`, `Quantity`) VALUES
(1, 2, 16),
(2, 2, 16),
(3, 2, 16),
(4, 2, 16),
(5, 2, 16),
(6, 2, 16),
(7, 2, 16),
(8, 2, 16),
(9, 2, 16),
(10, 2, 16),
(11, 2, 16),
(12, 2, 16),
(13, 2, 16),
(14, 2, 16),
(15, 2, 16),
(16, 2, 16),
(17, 3, 18),
(18, 3, 18),
(19, 3, 18),
(20, 3, 18),
(21, 3, 18),
(22, 3, 18),
(23, 3, 18),
(24, 3, 18),
(25, 3, 18),
(26, 3, 18),
(27, 3, 18),
(28, 3, 18),
(29, 3, 18),
(30, 3, 18),
(31, 3, 18),
(32, 3, 18),
(33, 3, 18),
(34, 3, 18),
(35, 17, 16),
(36, 17, 16),
(37, 17, 16),
(38, 17, 16),
(39, 17, 16),
(40, 17, 16),
(41, 17, 16),
(42, 17, 16),
(43, 17, 16),
(44, 17, 16),
(45, 17, 16),
(46, 17, 16),
(47, 17, 16),
(48, 17, 16),
(49, 17, 16),
(50, 17, 16);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CustomerID` int(5) NOT NULL,
  `Email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CustomerID`, `Email`) VALUES
(1, 'a@g.com'),
(2, 'asd@g.com'),
(3, 'hello'),
(4, 'a@g.com'),
(5, 'a@g.com'),
(6, 'b.'),
(7, 'lj;k'),
(8, 'a'),
(9, 'h'),
(10, 'h'),
(11, 'h'),
(12, 'm'),
(13, 'm'),
(14, 'm'),
(15, 'a@g.com'),
(16, 'asd@g.com'),
(17, 'fdkjldsaj;f'),
(18, 'h'),
(19, 'jk'),
(20, 'h'),
(21, 'fdas'),
(22, 'kl'),
(23, 'daf'),
(24, 'df'),
(25, 'dsf'),
(26, 'sdf'),
(27, 'dsaf'),
(28, 'asodmas'),
(29, 'some@gmail.com'),
(30, 'some@gmail.com'),
(31, 'some@gmail.com'),
(32, 'some@gmail.com'),
(33, 'some@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `for_movie_ticket`
--

CREATE TABLE `for_movie_ticket` (
  `Movie_Name` varchar(255) NOT NULL,
  `TheatreID` int(2) NOT NULL,
  `Date` date NOT NULL,
  `TicketID` int(6) NOT NULL,
  `SeatNumber` int(3) NOT NULL,
  `StartTime` time NOT NULL,
  `EndTime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `member_account`
--

CREATE TABLE `member_account` (
  `CustomerID` int(5) NOT NULL,
  `First_Name` varchar(255) NOT NULL,
  `Last_Name` varchar(255) NOT NULL,
  `Username` varchar(15) NOT NULL,
  `Password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member_account`
--

INSERT INTO `member_account` (`CustomerID`, `First_Name`, `Last_Name`, `Username`, `Password`) VALUES
(1, 'M', 'S', 'm', 'm');

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `Name` varchar(255) NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL,
  `Duration` time NOT NULL,
  `Genre` varchar(15) NOT NULL,
  `ReleaseDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`Name`, `StartDate`, `EndDate`, `Duration`, `Genre`, `ReleaseDate`) VALUES
('hi', '2018-12-01', '2018-12-15', '03:00:00', 'av', '2018-11-27');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `paymentID` int(6) NOT NULL,
  `PaymentMethod` varchar(255) NOT NULL,
  `AmountPaid` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`paymentID`, `PaymentMethod`, `AmountPaid`) VALUES
(1, 'debit', 160),
(2, 'visa', 180),
(3, 'debit', 160),
(4, 'visa', 190),
(5, 'visa', 190),
(6, 'debit', 180),
(7, 'visa', 190),
(8, 'debit', 190),
(9, 'visa', 190),
(10, 'debit', 190),
(11, 'visa', 10),
(12, 'visa', 10),
(13, 'visa', 190),
(14, 'visa', 600),
(15, 'visa', 0);

-- --------------------------------------------------------

--
-- Table structure for table `renting`
--

CREATE TABLE `renting` (
  `ServiceID` int(10) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Quantity_of_Slots` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `renting`
--

INSERT INTO `renting` (`ServiceID`, `Name`, `Quantity_of_Slots`) VALUES
(4, 'some', 2);

-- --------------------------------------------------------

--
-- Table structure for table `renting_reservation`
--

CREATE TABLE `renting_reservation` (
  `ServiceID` int(10) NOT NULL,
  `Date` date NOT NULL,
  `TheatreID` int(2) NOT NULL,
  `StartTime` time NOT NULL,
  `EndTime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `seats`
--

CREATE TABLE `seats` (
  `TheatreID` int(2) NOT NULL,
  `SeatNumber` int(3) NOT NULL,
  `IsTaken` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seats`
--

INSERT INTO `seats` (`TheatreID`, `SeatNumber`, `IsTaken`) VALUES
(1, 1, 1),
(1, 2, 1),
(1, 3, 1),
(1, 4, 1),
(1, 5, 1),
(1, 6, 1),
(1, 7, 1),
(1, 8, 1),
(1, 9, 1),
(1, 10, 1),
(1, 11, 1),
(1, 12, 1),
(1, 13, 1),
(1, 14, 1),
(1, 15, 1),
(1, 16, 1),
(1, 17, 1),
(1, 18, 1),
(1, 19, 1),
(1, 20, 1),
(1, 21, 1),
(1, 22, 1),
(1, 23, 1),
(1, 24, 1),
(1, 25, 1),
(1, 26, 1),
(1, 27, 1),
(1, 28, 1),
(1, 29, 1),
(1, 30, 1),
(1, 31, 1),
(1, 32, 1),
(1, 33, 1),
(1, 34, 1),
(1, 35, 1),
(1, 36, 1),
(1, 37, 1),
(1, 38, 1),
(1, 39, 1),
(1, 40, 1),
(1, 41, 1),
(1, 42, 1),
(1, 43, 1),
(1, 44, 1),
(1, 45, 1),
(1, 46, 1),
(1, 47, 1),
(1, 48, 1),
(1, 49, 1),
(1, 50, 1),
(1, 51, 0),
(1, 52, 0),
(1, 53, 0),
(1, 54, 0),
(1, 55, 0),
(1, 56, 0),
(1, 57, 0),
(1, 58, 0),
(1, 59, 0),
(1, 60, 0),
(1, 61, 0),
(1, 62, 0),
(1, 63, 0),
(1, 64, 0),
(1, 65, 0),
(1, 66, 0),
(1, 67, 0),
(1, 68, 0),
(1, 69, 0),
(1, 70, 0),
(1, 71, 0),
(1, 72, 0),
(1, 73, 0),
(1, 74, 0),
(1, 75, 0),
(1, 76, 0),
(1, 77, 0),
(1, 78, 0),
(1, 79, 0),
(1, 80, 0),
(1, 81, 0),
(1, 82, 0),
(1, 83, 0),
(1, 84, 0),
(1, 85, 0),
(1, 86, 0),
(1, 87, 0),
(1, 88, 0),
(1, 89, 0),
(1, 90, 0),
(1, 91, 0),
(1, 92, 0),
(1, 93, 0),
(1, 94, 0),
(1, 95, 0),
(1, 96, 0),
(1, 97, 0),
(1, 98, 0),
(1, 99, 0),
(1, 100, 0),
(1, 101, 0),
(1, 102, 0),
(1, 103, 0),
(1, 104, 0),
(1, 105, 0),
(1, 106, 0),
(1, 107, 0),
(1, 108, 0),
(1, 109, 0),
(1, 110, 0),
(1, 111, 0),
(1, 112, 0),
(1, 113, 0),
(1, 114, 0),
(1, 115, 0),
(1, 116, 0),
(1, 117, 0),
(1, 118, 0),
(1, 119, 0),
(1, 120, 0),
(1, 121, 0),
(1, 122, 0),
(1, 123, 0),
(1, 124, 0),
(1, 125, 0),
(1, 126, 0),
(1, 127, 0),
(1, 128, 0),
(1, 129, 0),
(1, 130, 0),
(1, 131, 0),
(1, 132, 0),
(1, 133, 0),
(1, 134, 0),
(1, 135, 0),
(1, 136, 0),
(1, 137, 0),
(1, 138, 0),
(1, 139, 0),
(1, 140, 0),
(1, 141, 0),
(1, 142, 0),
(1, 143, 0),
(1, 144, 0),
(1, 145, 0),
(1, 146, 0),
(1, 147, 0),
(1, 148, 0),
(1, 149, 0),
(1, 150, 0),
(1, 151, 0),
(1, 152, 0),
(1, 153, 0),
(1, 154, 0),
(1, 155, 0),
(1, 156, 0),
(1, 157, 0),
(1, 158, 0),
(1, 159, 0),
(1, 160, 0),
(1, 161, 0),
(1, 162, 0),
(1, 163, 0),
(1, 164, 0),
(1, 165, 0),
(1, 166, 0),
(1, 167, 0),
(1, 168, 0),
(1, 169, 0),
(1, 170, 0),
(1, 171, 0),
(1, 172, 0),
(1, 173, 0),
(1, 174, 0),
(1, 175, 0),
(1, 176, 0),
(1, 177, 0),
(1, 178, 0),
(1, 179, 0),
(1, 180, 0),
(1, 181, 0),
(1, 182, 0),
(1, 183, 0),
(1, 184, 0),
(1, 185, 0),
(1, 186, 0),
(1, 187, 0),
(1, 188, 0),
(1, 189, 0),
(1, 190, 0),
(1, 191, 0),
(1, 192, 0),
(1, 193, 0),
(1, 194, 0),
(1, 195, 0),
(1, 196, 0),
(1, 197, 0),
(1, 198, 0),
(1, 199, 0),
(1, 200, 0);

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `ServiceID` int(10) NOT NULL,
  `ServiceName` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`ServiceID`, `ServiceName`) VALUES
(4, 'Rent');

-- --------------------------------------------------------

--
-- Table structure for table `service_payment`
--

CREATE TABLE `service_payment` (
  `ServiceID` int(10) NOT NULL,
  `PaymentID` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `service_sales`
--

CREATE TABLE `service_sales` (
  `ServiceID` int(10) NOT NULL,
  `CustomerID` int(5) NOT NULL,
  `Quantity` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `snacks`
--

CREATE TABLE `snacks` (
  `ServiceID` int(10) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Quantity` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `theatre`
--

CREATE TABLE `theatre` (
  `TheatreID` int(2) NOT NULL,
  `Capacity` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `theatre`
--

INSERT INTO `theatre` (`TheatreID`, `Capacity`) VALUES
(1, 200);

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `TicketID` int(6) NOT NULL,
  `Price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`TicketID`, `Price`) VALUES
(1, 10),
(2, 10),
(3, 10),
(4, 10),
(5, 10),
(6, 10),
(7, 10),
(8, 10),
(9, 10),
(10, 10),
(11, 10),
(12, 10),
(13, 10),
(14, 10),
(15, 10),
(16, 10),
(17, 10),
(18, 10),
(19, 10),
(20, 10),
(21, 10),
(22, 10),
(23, 10),
(24, 10),
(25, 10),
(26, 10),
(27, 10),
(28, 10),
(29, 10),
(30, 10),
(31, 10),
(32, 10),
(33, 10),
(34, 10),
(35, 10),
(36, 10),
(37, 10),
(38, 10),
(39, 10),
(40, 10),
(41, 10),
(42, 10),
(43, 10),
(44, 10),
(45, 10),
(46, 10),
(47, 10),
(48, 10),
(49, 10),
(50, 10);

-- --------------------------------------------------------

--
-- Table structure for table `ticket_payment`
--

CREATE TABLE `ticket_payment` (
  `TicketID` int(6) NOT NULL,
  `PaymentID` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket_payment`
--

INSERT INTO `ticket_payment` (`TicketID`, `PaymentID`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 3),
(36, 3),
(37, 3),
(38, 3),
(39, 3),
(40, 3),
(41, 3),
(42, 3),
(43, 3),
(44, 3),
(45, 3),
(46, 3),
(47, 3),
(48, 3),
(49, 3),
(50, 3);

-- --------------------------------------------------------

--
-- Table structure for table `timeslot`
--

CREATE TABLE `timeslot` (
  `Date` date NOT NULL,
  `ServiceName` varchar(5) DEFAULT NULL,
  `StartTime` time NOT NULL,
  `EndTime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timeslot`
--

INSERT INTO `timeslot` (`Date`, `ServiceName`, `StartTime`, `EndTime`) VALUES
('2012-01-01', 'NULL', '03:00:00', '04:00:00'),
('2019-01-01', 'Rent', '04:00:00', '05:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_account`
--
ALTER TABLE `admin_account`
  ADD PRIMARY KEY (`AdminID`);

--
-- Indexes for table `are_assigned`
--
ALTER TABLE `are_assigned`
  ADD PRIMARY KEY (`Movie_Name`,`TheatreID`,`Date`,`StartTime`,`EndTime`),
  ADD KEY `Movie_Name` (`Movie_Name`),
  ADD KEY `TheatreID` (`TheatreID`),
  ADD KEY `Date` (`Date`,`StartTime`,`EndTime`),
  ADD KEY `AreAssigned_StartTime` (`StartTime`),
  ADD KEY `AreAssigned_EndTime` (`EndTime`);

--
-- Indexes for table `are_assigned_renting`
--
ALTER TABLE `are_assigned_renting`
  ADD PRIMARY KEY (`TheatreID`,`Date`,`StartTime`,`EndTime`),
  ADD KEY `TheatreID` (`TheatreID`),
  ADD KEY `Date` (`Date`),
  ADD KEY `StartTime` (`StartTime`),
  ADD KEY `EndTime` (`EndTime`);

--
-- Indexes for table `buy_tickets`
--
ALTER TABLE `buy_tickets`
  ADD PRIMARY KEY (`TicketID`,`CustomerID`),
  ADD KEY `TicketID` (`TicketID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `for_movie_ticket`
--
ALTER TABLE `for_movie_ticket`
  ADD PRIMARY KEY (`Movie_Name`,`TheatreID`,`Date`,`TicketID`,`SeatNumber`,`StartTime`,`EndTime`),
  ADD KEY `TheatreID` (`TheatreID`),
  ADD KEY `Date` (`Date`),
  ADD KEY `TicketID` (`TicketID`),
  ADD KEY `SeatNumber` (`SeatNumber`),
  ADD KEY `StartTimeFinal` (`StartTime`),
  ADD KEY `EndTimeFinal` (`EndTime`);

--
-- Indexes for table `member_account`
--
ALTER TABLE `member_account`
  ADD PRIMARY KEY (`CustomerID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`Name`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`paymentID`);

--
-- Indexes for table `renting`
--
ALTER TABLE `renting`
  ADD PRIMARY KEY (`ServiceID`),
  ADD KEY `ServiceID` (`ServiceID`);

--
-- Indexes for table `renting_reservation`
--
ALTER TABLE `renting_reservation`
  ADD PRIMARY KEY (`ServiceID`,`Date`,`TheatreID`,`StartTime`,`EndTime`) USING BTREE,
  ADD KEY `ServiceID` (`ServiceID`),
  ADD KEY `Date` (`Date`),
  ADD KEY `TheatreID` (`TheatreID`),
  ADD KEY `StartTimeFinal` (`StartTime`),
  ADD KEY `EndTimeFinal` (`EndTime`);

--
-- Indexes for table `seats`
--
ALTER TABLE `seats`
  ADD PRIMARY KEY (`TheatreID`,`SeatNumber`),
  ADD KEY `TheatreID` (`TheatreID`),
  ADD KEY `SeatNumber` (`SeatNumber`) USING BTREE;

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`ServiceID`);

--
-- Indexes for table `service_payment`
--
ALTER TABLE `service_payment`
  ADD PRIMARY KEY (`ServiceID`,`PaymentID`),
  ADD KEY `ServiceID` (`ServiceID`,`PaymentID`),
  ADD KEY `ServicePayment_PaymentID` (`PaymentID`);

--
-- Indexes for table `service_sales`
--
ALTER TABLE `service_sales`
  ADD PRIMARY KEY (`ServiceID`,`CustomerID`),
  ADD KEY `ServiceID` (`ServiceID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Indexes for table `snacks`
--
ALTER TABLE `snacks`
  ADD PRIMARY KEY (`ServiceID`),
  ADD KEY `Snacks_ServiceID` (`ServiceID`);

--
-- Indexes for table `theatre`
--
ALTER TABLE `theatre`
  ADD PRIMARY KEY (`TheatreID`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`TicketID`);

--
-- Indexes for table `ticket_payment`
--
ALTER TABLE `ticket_payment`
  ADD PRIMARY KEY (`TicketID`,`PaymentID`),
  ADD KEY `TicketID` (`TicketID`),
  ADD KEY `PaymentID` (`PaymentID`);

--
-- Indexes for table `timeslot`
--
ALTER TABLE `timeslot`
  ADD PRIMARY KEY (`Date`,`StartTime`,`EndTime`),
  ADD KEY `StartTimeFinal` (`StartTime`),
  ADD KEY `EndTimeFinal` (`EndTime`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_account`
--
ALTER TABLE `admin_account`
  MODIFY `AdminID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `are_assigned`
--
ALTER TABLE `are_assigned`
  MODIFY `TheatreID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CustomerID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `paymentID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `ServiceID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `theatre`
--
ALTER TABLE `theatre`
  MODIFY `TheatreID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `TicketID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `are_assigned`
--
ALTER TABLE `are_assigned`
  ADD CONSTRAINT `AreAssigned_Date` FOREIGN KEY (`Date`) REFERENCES `timeslot` (`Date`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `AreAssigned_EndTime` FOREIGN KEY (`EndTime`) REFERENCES `timeslot` (`EndTime`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `AreAssigned_MovieName` FOREIGN KEY (`Movie_Name`) REFERENCES `movie` (`Name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `AreAssigned_StartTime` FOREIGN KEY (`StartTime`) REFERENCES `timeslot` (`StartTime`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `AreAssigned_TheatreID` FOREIGN KEY (`TheatreID`) REFERENCES `theatre` (`TheatreID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `are_assigned_renting`
--
ALTER TABLE `are_assigned_renting`
  ADD CONSTRAINT `AAR_Date` FOREIGN KEY (`Date`) REFERENCES `timeslot` (`Date`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `AAR_EndTime` FOREIGN KEY (`EndTime`) REFERENCES `timeslot` (`EndTime`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `AAR_StartTime` FOREIGN KEY (`StartTime`) REFERENCES `timeslot` (`StartTime`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `AAR_TheatreID` FOREIGN KEY (`TheatreID`) REFERENCES `theatre` (`TheatreID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `buy_tickets`
--
ALTER TABLE `buy_tickets`
  ADD CONSTRAINT `BuyTickets_TicketID` FOREIGN KEY (`TicketID`) REFERENCES `ticket` (`TicketID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `for_movie_ticket`
--
ALTER TABLE `for_movie_ticket`
  ADD CONSTRAINT `FMT_Date` FOREIGN KEY (`Date`) REFERENCES `timeslot` (`Date`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FMT_EndTime` FOREIGN KEY (`EndTime`) REFERENCES `timeslot` (`EndTime`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FMT_SeatNumber` FOREIGN KEY (`SeatNumber`) REFERENCES `seats` (`SeatNumber`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FMT_StartTime` FOREIGN KEY (`StartTime`) REFERENCES `timeslot` (`StartTime`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FMT_TheatreID` FOREIGN KEY (`TheatreID`) REFERENCES `theatre` (`TheatreID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `member_account`
--
ALTER TABLE `member_account`
  ADD CONSTRAINT `CustomerID` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `renting`
--
ALTER TABLE `renting`
  ADD CONSTRAINT `Renting_ServiceID` FOREIGN KEY (`ServiceID`) REFERENCES `service` (`ServiceID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `renting_reservation`
--
ALTER TABLE `renting_reservation`
  ADD CONSTRAINT `RentingReservation_Date` FOREIGN KEY (`Date`) REFERENCES `timeslot` (`Date`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `RentingReservation_EndTime` FOREIGN KEY (`EndTime`) REFERENCES `timeslot` (`EndTime`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `RentingReservation_ServiceID` FOREIGN KEY (`ServiceID`) REFERENCES `service` (`ServiceID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `RentingReservation_StartTime` FOREIGN KEY (`StartTime`) REFERENCES `timeslot` (`StartTime`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `RentingReservation_TheatreID` FOREIGN KEY (`TheatreID`) REFERENCES `theatre` (`TheatreID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `seats`
--
ALTER TABLE `seats`
  ADD CONSTRAINT `Seat_TheatreID` FOREIGN KEY (`TheatreID`) REFERENCES `theatre` (`TheatreID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `service_payment`
--
ALTER TABLE `service_payment`
  ADD CONSTRAINT `ServicePayement_ServiceID` FOREIGN KEY (`ServiceID`) REFERENCES `service` (`ServiceID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ServicePayment_PaymentID` FOREIGN KEY (`PaymentID`) REFERENCES `payment` (`paymentID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `service_sales`
--
ALTER TABLE `service_sales`
  ADD CONSTRAINT `ServiceSales_CustomerID` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ServiceSales_ServiceID` FOREIGN KEY (`ServiceID`) REFERENCES `service` (`ServiceID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `snacks`
--
ALTER TABLE `snacks`
  ADD CONSTRAINT `Snack_ServiceID` FOREIGN KEY (`ServiceID`) REFERENCES `service` (`ServiceID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ticket_payment`
--
ALTER TABLE `ticket_payment`
  ADD CONSTRAINT `TicketPayment_PaymentID` FOREIGN KEY (`PaymentID`) REFERENCES `payment` (`paymentID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `TicketPayment_TicketID` FOREIGN KEY (`TicketID`) REFERENCES `ticket` (`TicketID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
