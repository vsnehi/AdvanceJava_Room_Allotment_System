-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2017 at 05:52 PM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `renting`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer_help_report`
--

CREATE TABLE `customer_help_report` (
  `Customer_id` int(11) NOT NULL,
  `Customer_Name` text NOT NULL,
  `Customer_Email` text NOT NULL,
  `Customer_Mobile` text NOT NULL,
  `Customer_Issue` text NOT NULL,
  `Costumer_feedback_rating` varchar(5) NOT NULL,
  `Customer_feedback_Comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `electricity`
--

CREATE TABLE `electricity` (
  `Electricity _id` int(11) NOT NULL,
  `Electricity _Email` text NOT NULL,
  `Electricity_Bill` text NOT NULL,
  `Electricity_Rate` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `image`) VALUES
(1, 'J:\\www\\home\\WebContent\\Account\\upload\\logout.png'),
(2, 'J:\\www\\home\\WebContent\\Account\\upload\\logout.png'),
(3, 'J:\\www\\home\\WebContent\\Account\\upload\\tlogin.png'),
(4, '\\snehi.jpg'),
(5, 'ee1ee818ff6a5fde8d0d30a99b0dc071'),
(6, 'a3027de6d90a6fa32ee5a7413e0c312a'),
(7, '794294098bbd190e36c28b8f0afc2481'),
(8, 'f1dff294d01ba8504787dd2f34eeb0e4'),
(9, '4a4140adf50e405e3d0088609dfac07e'),
(10, '925afc4dcccf2ab31b66c75ecd1efca3'),
(11, '0cd6deaf089ccd33cc86c019cf075f0c'),
(12, 'ae92580cd0e706242cb00089e042ae61'),
(13, 'cd98869a3e74c2197b735594333926c9'),
(14, 'c7da2202001ef3739c67954b4c9dbb31'),
(15, '4777c64fbcd250b86ef940f3e55bb397'),
(16, '08fe9b47f5075630345540793cd574f6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `msg_id` int(11) NOT NULL,
  `msg_name` text NOT NULL,
  `msg_IP` text NOT NULL,
  `Message` text NOT NULL,
  `msg_reply` text NOT NULL,
  `msg_Email` text NOT NULL,
  `msg_reply_Email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `morecat`
--

CREATE TABLE `morecat` (
  `mid` int(11) NOT NULL,
  `mname` text NOT NULL,
  `minfo` text NOT NULL,
  `mprice` text NOT NULL,
  `mrate` text NOT NULL,
  `memail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `morecat`
--

INSERT INTO `morecat` (`mid`, `mname`, `minfo`, `mprice`, `mrate`, `memail`) VALUES
(11, 'Boys Room', 'Near Gne College', '24,000', 'AC', 'pankri@gmail.com'),
(12, 'Girls Room', 'Near GNDEC', '112,00', 'Non AC', 'pankri@gmail.com'),
(13, 'pg', 'near shiv mandir gill', '2500', 'AC', 'prateek123@gmail.com'),
(14, 'Boys Hostel', 'Near Bangla sahib gurudwara', '2000', 'AC', 'lands@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `pid` int(11) NOT NULL,
  `pemail` text NOT NULL,
  `uid` text NOT NULL,
  `roomid` text NOT NULL,
  `cardnumber` text NOT NULL,
  `expirationdate` text NOT NULL,
  `cvcode` text NOT NULL,
  `coupon` text NOT NULL,
  `mobile` text NOT NULL,
  `money` text NOT NULL,
  `name` text NOT NULL,
  `conform` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`pid`, `pemail`, `uid`, `roomid`, `cardnumber`, `expirationdate`, `cvcode`, `coupon`, `mobile`, `money`, `name`, `conform`) VALUES
(1, 'ganja@gmail.com', '', '15', '****', '****', '*****', '****', '1123', '48,000 per sem', 'Ideal Room', '1'),
(2, 'ganja@gmail.com', '', '15', '****', '****', '*****', '****', '1123', '48,000 per sem', 'Ideal Room', '1'),
(3, 'ganja@gmail.com', '', '15', '****', '****', '*****', '****', '1123', '48,000 per sem', 'Ideal Room', '1'),
(5, 'ganja@gmail.com', '', '16', '****', '****', '*****', '****', '1123', '2300', '', '1'),
(6, 'rent@gmail.com', '', '13', '****', '****', '*****', '****', '123', '42,000 per sem', 'Gne Hostel Gate no 2', 'yes'),
(7, 'rent@gmail.com', '', '23', '****', '****', '*****', '****', '123', '8999', 'Main Home Image 2', 'yes'),
(8, 'prateek123@gmail.com', '', '24', '****', '****', '*****', '****', '9412526968', '2300', 'silky', 'yes'),
(9, 'prateek123@gmail.com', '', '22', '****', '****', '*****', '****', '9412526968', '8999', 'Main Home Image 2', 'yes'),
(10, 'shiv30300@gmail.com', '', '21', '****', '****', '*****', '****', '9412526968', '1999', 'Main Home Image 2', 'yes'),
(11, 'shiv30300@gmail.com', '', '20', '****', '****', '*****', '****', '9412526968', '8999', 'Main Home Image 2', 'yes'),
(12, 'shiv30300@gmail.com', '', '19', '****', '****', '*****', '****', '9412526968', '12000', 'Main Home Image', 'yes'),
(13, 'admin@gmail.com', '', '19', '****', '****', '*****', '****', '9803907906', '5000', 'Ladies Room', 'yes'),
(14, 'admin@gmail.com', '', '21', '****', '****', '*****', '****', '9803907906', '2300', 'Main Home Image 2', 'yes'),
(15, 'admin@gmail.com', '', '20', '****', '****', '*****', '****', '9803907906', '2300', 'Main Home Image 2', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `rent_design`
--

CREATE TABLE `rent_design` (
  `rent_id` int(11) NOT NULL,
  `rent_room` text NOT NULL,
  `rent_name` text NOT NULL,
  `rent_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `room_list`
--

CREATE TABLE `room_list` (
  `Roomid` int(11) NOT NULL,
  `roomimg` text NOT NULL,
  `RoomName` text NOT NULL,
  `RoomAddress` varchar(180) NOT NULL,
  `RoomType` text NOT NULL,
  `RoomPrice` text NOT NULL,
  `userimage` text NOT NULL,
  `username` text NOT NULL,
  `RoomRating` varchar(34) NOT NULL,
  `RoomViewed` varchar(11) NOT NULL,
  `RoomComment` varchar(180) NOT NULL,
  `Likes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_list`
--

INSERT INTO `room_list` (`Roomid`, `roomimg`, `RoomName`, `RoomAddress`, `RoomType`, `RoomPrice`, `userimage`, `username`, `RoomRating`, `RoomViewed`, `RoomComment`, `Likes`) VALUES
(26, 'e92964894539a37a6548973038320007.jpg', 'Girls Room', 'Maxico', 'Girls Room', '2000', 'e92964894539a37a6548973038320007.jpg', 'Next Lands', 'AC', '1', 'A', 1),
(27, 'e92964894539a37a6548973038320007.jpg', 'Silky Pg', 'Maxico', 'pg', '5000', 'e92964894539a37a6548973038320007.jpg', 'Next Lands', 'Non AC', '1', 'A', 1),
(28, 'e92964894539a37a6548973038320007.jpg', 'Boys Room', 'Gne Colony', 'Boys Room', '2000', 'e92964894539a37a6548973038320007.jpg', 'Next Lands', 'AC', '1', 'A', 1),
(29, 'e92964894539a37a6548973038320007.jpg', 'Guru Nanak Dev Engineering College Hostel 5', 'Hostel no. 5,Gne Colony,Gill Road,Ludhiana,Punjab', 'Boys Hostel', '5000', 'e92964894539a37a6548973038320007.jpg', 'Next Lands', 'Non AC', '1', 'A', 1);

-- --------------------------------------------------------

--
-- Table structure for table `room_services`
--

CREATE TABLE `room_services` (
  `Services_id` int(11) NOT NULL,
  `Services_name` text NOT NULL,
  `Services_email` text NOT NULL,
  `Services_images` text NOT NULL,
  `Services_quantity` text NOT NULL,
  `Services_charge` text NOT NULL,
  `Services_agenta` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Uid` int(11) NOT NULL,
  `UserEmail` text NOT NULL,
  `UserPass` text NOT NULL,
  `UserName` text NOT NULL,
  `gender` text NOT NULL,
  `dob` text NOT NULL,
  `UserMobile` text NOT NULL,
  `UserAddress` text NOT NULL,
  `image` text NOT NULL,
  `UserType` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Uid`, `UserEmail`, `UserPass`, `UserName`, `gender`, `dob`, `UserMobile`, `UserAddress`, `image`, `UserType`) VALUES
(85, 'admin@gmail.com', '202cb962ac59075b964b07152d234b70', 'Admin', 'male', '2017-12-04', '7909025861', 'Gne COllege', '32d3ca5e23f4ccf1e4c8660c40e75f33.jpg', 'Admin'),
(86, 'newland@gmail.com', '202cb962ac59075b964b07152d234b70', 'New Land', 'female', '2017-12-06', '7909025861', 'Gill Road', '32d3ca5e23f4ccf1e4c8660c40e75f33.jpg', 'LandLoard'),
(87, 'lands@gmail.com', '202cb962ac59075b964b07152d234b70', 'Next Lands', 'female', '2017-12-04', '7909025861', 'Maxico', 'e92964894539a37a6548973038320007.jpg', 'LandLoard');

-- --------------------------------------------------------

--
-- Table structure for table `user_list`
--

CREATE TABLE `user_list` (
  `User_Id` int(11) NOT NULL,
  `User_Email` text NOT NULL,
  `User_pass` text NOT NULL,
  `User_Name` text NOT NULL,
  `gender` text NOT NULL,
  `dob` text NOT NULL,
  `User_Mobile` text NOT NULL,
  `User_Address` text NOT NULL,
  `User_Images` text NOT NULL,
  `User_Activity` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `water`
--

CREATE TABLE `water` (
  `Water_id` int(11) NOT NULL,
  `Water_email` text NOT NULL,
  `Water_name` text NOT NULL,
  `Water_Bill` text NOT NULL,
  `Water_Rate` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer_help_report`
--
ALTER TABLE `customer_help_report`
  ADD PRIMARY KEY (`Customer_id`);

--
-- Indexes for table `electricity`
--
ALTER TABLE `electricity`
  ADD PRIMARY KEY (`Electricity _id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `morecat`
--
ALTER TABLE `morecat`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `rent_design`
--
ALTER TABLE `rent_design`
  ADD PRIMARY KEY (`rent_id`);

--
-- Indexes for table `room_list`
--
ALTER TABLE `room_list`
  ADD PRIMARY KEY (`Roomid`);

--
-- Indexes for table `room_services`
--
ALTER TABLE `room_services`
  ADD PRIMARY KEY (`Services_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Uid`);

--
-- Indexes for table `user_list`
--
ALTER TABLE `user_list`
  ADD PRIMARY KEY (`User_Id`);

--
-- Indexes for table `water`
--
ALTER TABLE `water`
  ADD PRIMARY KEY (`Water_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer_help_report`
--
ALTER TABLE `customer_help_report`
  MODIFY `Customer_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `electricity`
--
ALTER TABLE `electricity`
  MODIFY `Electricity _id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `morecat`
--
ALTER TABLE `morecat`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `rent_design`
--
ALTER TABLE `rent_design`
  MODIFY `rent_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `room_list`
--
ALTER TABLE `room_list`
  MODIFY `Roomid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `room_services`
--
ALTER TABLE `room_services`
  MODIFY `Services_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `Uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT for table `user_list`
--
ALTER TABLE `user_list`
  MODIFY `User_Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `water`
--
ALTER TABLE `water`
  MODIFY `Water_id` int(11) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
