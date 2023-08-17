-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2023 at 05:26 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myhmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admintb`
--

CREATE TABLE `admintb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admintb`
--

INSERT INTO `admintb` (`username`, `password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `appointmenttb`
--

CREATE TABLE `appointmenttb` (
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `usn` varchar(15) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `doctor` varchar(30) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `userStatus` int(5) NOT NULL,
  `doctorStatus` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `appointmenttb`
--

INSERT INTO `appointmenttb` (`pid`, `ID`, `fname`, `lname`, `usn`, `gender`, `dob`, `email`, `contact`, `doctor`, `appdate`, `apptime`, `userStatus`, `doctorStatus`) VALUES
(24, 1, 'Yuvaraj', 'Rayamane', '1RV20IS064', 'Male', '2002-09-22', 'y@gmail.com', '1234567890', 'Yuvaraj', '2023-02-01', '10:00:00', 1, 1),
(24, 16, 'Yuvaraj', 'Rayamane', '1RV20IS064', 'Male', '2002-09-22', 'y@gmail.com', '1234567890', 'Yuvaraj', '2023-02-25', '10:00:00', 1, 1),
(26, 17, 'Ravi', 'P', '1RV21EC413', 'Male', '1999-06-10', 'ravipadekanur.ec21@rvce.edu.in', '9972568632', 'Yuvaraj', '2023-02-26', '10:00:00', 1, 1),
(24, 18, 'Yuvaraj', 'Rayamane', '1RV20IS064', 'Male', '2002-09-22', 'y@gmail.com', '1234567890', 'Yuvaraj', '2023-02-24', '10:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `chatbot_hints`
--

CREATE TABLE `chatbot_hints` (
  `id` int(11) NOT NULL,
  `question` varchar(1000) NOT NULL,
  `reply` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `chatbot_hints`
--

INSERT INTO `chatbot_hints` (`id`, `question`, `reply`) VALUES
(1, 'HI||Hello||Hola', 'Hi! Welcome to the RV Health Center\r\nWhat can I do for you Today?\r\n\r\nPlease choose one of the options below.\\n\r\n1.Health tips    2. Opening hours\r\n3.Contact us.\r\n'),
(2, 'health tips', 'Choose your symptoms, \n1.Fever\n2.Cold and Fever\n3.Gastritis with vomiting\n4.Stomach pain\n5.Loose motions\n6.Other '),
(3, 'fever||1', 'If you only normal fever, then take the medicini \"T.Calpal 500mg\".'),
(4, 'cold and fever|| 2', 'take medicine \" T.Sinarest\".     after takeing 2 tablets, if you dont feel well, please visit Helth center.'),
(5, 'Gastritis with vomiting || 3', 'take medicine \" T.Rantac-D\".     after takeing 2 tablets, if you dont feel well, please visit Helth center.'),
(6, 'Stomach pain ||4', 'take medicine \" T.Meftal Spas\".     after takeing 2 tablets, if you dont feel well, please visit Helth center.'),
(7, 'Loose motions||5', 'take medicine \" T.Eldoper\".     after takeing 2 tablets, if you dont feel well, please visit Helth center.'),
(9, 'Other || 6', 'Sorry, I can not suggest.\nYou have to diagnosis.\nPlease book the appointment.\nThank You.\n'),
(10, 'opening hours', 'RV Health Center remains open on monday to friday from 10AM to 6PM.\r\nAnd Saturday from 10AM to 1:45PM.\r\n'),
(11, 'Contact us', 'You can contact us by \r\nPhone No. :08068188102\r\nEmail : rvcehealthcenter@rvce.edu.in'),
(12, 'Thanks || Thank you || Bye', 'Thank You for taking consultation from RV Health Center.');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(30) NOT NULL,
  `email` text NOT NULL,
  `contact` varchar(10) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `contact`, `message`) VALUES
(' Viki', 'viki@gmail.com', '9899778865', 'Good Job, Pal'),
('Abbis', 'abbis@gmail.com', '8979776868', 'Love your service'),
('Asiq', 'asiq@gmail.com', '9087897564', 'Love your service. Thank you!'),
('Jane', 'jane@gmail.com', '7869869757', 'I love your service!'),
('yuvaraj', 'y@gmail.com', '1234567890', 'good');

-- --------------------------------------------------------

--
-- Table structure for table `doctb`
--

CREATE TABLE `doctb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `spec` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctb`
--

INSERT INTO `doctb` (`username`, `password`, `email`, `spec`) VALUES
('Dr B G Sudarshan', '123456', 'sudarshanbg@rvce.edu.in', 'General'),
('Yuvaraj', '2002', 'yuvarajtr.is20@rvce.edu.in', 'General');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `message` text NOT NULL,
  `added_on` datetime NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `message`, `added_on`, `type`) VALUES
(57, 'Hi', '2023-02-07 04:37:59', 'user'),
(58, 'Hi! Welcome to the RV Health Center\r\nWhat can I do for you Today?\r\n\r\nPlease choose one of the options below.\n\r\n1.Health tips    2. Opening hours\r\n3.Contact us.\r\n', '2023-02-07 04:37:59', 'bot'),
(59, 'Health tips', '2023-02-23 07:46:57', 'user'),
(60, 'Choose your symptoms, \n1.Fever\n2.Cold and Fever\n3.Gastritis with vomiting\n4.Stomach pain\n5.Loose motions\n6.Other ', '2023-02-23 07:46:57', 'bot'),
(61, '4', '2023-02-23 07:47:13', 'user'),
(62, 'take medicine \" T.Meftal Spas\".     after takeing 2 tablets, if you dont feel well, please visit Helth center.', '2023-02-23 07:47:13', 'bot'),
(63, '6', '2023-02-23 07:47:24', 'user'),
(64, 'Sorry, I can not suggest.\nYou have to diagnosis.\nPlease book the appointment.\nThank You.\n', '2023-02-23 07:47:24', 'bot'),
(65, 'Opening hours', '2023-02-23 07:47:49', 'user'),
(66, 'RV Health Center remains open on monday to friday from 10AM to 6PM.\r\nAnd Saturday from 10AM to 1:45PM.\r\n', '2023-02-23 07:47:49', 'bot'),
(67, 'contact us', '2023-02-23 07:47:59', 'user'),
(68, 'You can contact us by \r\nPhone No. :08068188102\r\nEmail : rvcehealthcenter@rvce.edu.in', '2023-02-23 07:47:59', 'bot'),
(69, 'how are you', '2023-02-23 07:50:10', 'user'),
(70, 'Sorry not be able to understand you', '2023-02-23 07:50:10', 'bot');

-- --------------------------------------------------------

--
-- Table structure for table `patreg`
--

CREATE TABLE `patreg` (
  `pid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `usn` varchar(15) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `password` varchar(30) NOT NULL,
  `cpassword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `patreg`
--

INSERT INTO `patreg` (`pid`, `fname`, `lname`, `usn`, `gender`, `dob`, `email`, `contact`, `password`, `cpassword`) VALUES
(24, 'Yuvaraj', 'Rayamane', '1RV20IS064', 'Male', '2002-09-22', 'y@gmail.com', '1234567890', 'yuvaraj123', 'yuvaraj123'),
(25, 'Vijay', 'Mane', '1RV20IS001', 'Male', '2000-09-22', 'vijay@gmail.com', '1234567890', '123456', '123456'),
(26, 'Ravi', 'P', '1RV21EC413', 'Male', '1999-06-10', 'ravipadekanur.ec21@rvce.edu.in', '9972568632', '123456', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `prestb`
--

CREATE TABLE `prestb` (
  `doctor` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `disease` varchar(250) NOT NULL,
  `allergy` varchar(250) NOT NULL,
  `vaccine` varchar(50) NOT NULL,
  `prescription` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `prestb`
--

INSERT INTO `prestb` (`doctor`, `pid`, `ID`, `fname`, `lname`, `appdate`, `apptime`, `disease`, `allergy`, `vaccine`, `prescription`) VALUES
('Yuvaraj', 24, 1, 'Yuvaraj', 'Rayamane', '2023-02-01', '10:00:00', 'no', 'no', '', 'drink hot water'),
('Yuvaraj', 26, 17, 'Ravi', 'P', '2023-02-26', '10:00:00', 'Knee pain', 'Nothing', 'Covid Vacine', 'No damaged'),
('Yuvaraj', 24, 16, 'Yuvaraj', 'Rayamane', '2023-02-25', '10:00:00', 'Fever and Cold', 'Nothing', 'Had Both Covid Vaccine', 'Drink Hot water.\r\nFebrex Plus  take morning and night after lunch');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `chatbot_hints`
--
ALTER TABLE `chatbot_hints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctb`
--
ALTER TABLE `doctb`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patreg`
--
ALTER TABLE `patreg`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `prestb`
--
ALTER TABLE `prestb`
  ADD KEY `ID` (`ID`),
  ADD KEY `pid` (`pid`),
  ADD KEY `doctor` (`doctor`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `chatbot_hints`
--
ALTER TABLE `chatbot_hints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `patreg`
--
ALTER TABLE `patreg`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  ADD CONSTRAINT `appointmenttb_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `patreg` (`pid`);

--
-- Constraints for table `prestb`
--
ALTER TABLE `prestb`
  ADD CONSTRAINT `prestb_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `appointmenttb` (`ID`),
  ADD CONSTRAINT `prestb_ibfk_2` FOREIGN KEY (`pid`) REFERENCES `patreg` (`pid`),
  ADD CONSTRAINT `prestb_ibfk_3` FOREIGN KEY (`doctor`) REFERENCES `doctb` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
