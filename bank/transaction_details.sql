-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2023 at 07:59 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `transaction_details`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(15) NOT NULL,
  `sender` varchar(20) NOT NULL,
  `receiver` varchar(20) NOT NULL,
  `balance` float NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(15, 'simontini', 'Shreya Adak', 23, '2023-09-11 18:11:20'),
(16, 'Riya Roy', 'Grip', 10, '2023-09-11 19:05:38'),
(17, 'Riya Roy', 'Priyam ', 23, '2023-09-11 19:28:34'),
(18, 'simontini', 'Ashok', 200, '2023-09-13 17:45:00'),
(19, 'simontini', 'Grip', 20, '2023-09-13 17:48:54');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `sno` int(15) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `mobile` text NOT NULL,
  `balance` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`sno`, `name`, `email`, `mobile`, `balance`) VALUES
(1, 'Shreya Adak', 'shreya@gmail.com', '8569856985', 5023),
(2, 'simontini', 'simontini@gmail.com', '8765432198', 6769),
(3, 'Riya Roy', 'riya@gmail.com', '9543218765', 3967),
(4, 'Grip', 'tsf@gmail.com', '9830730972', 4880),
(5, 'Adrija', 'adrija@gmail.com', '9874568965', 1958),
(6, 'Pupu Sen', 'pupu@gmail.com', '632547789', 1000),
(7, 'Priyam ', 'priyam@gmail.com', '7894561230', 3023),
(8, 'Neha ', 'neha@gmail.com', '9876543210', 20000),
(9, 'Ashok', 'ashok@gmail.com', '9856471230', 8200),
(10, 'Nilima', 'nilima@gmail.com', '8974563210', 9000),
(11, 'Teddy Roy', 'teddy@gmail.com', '8459632547', 1000),
(12, 'Kolu', 'kolu@gmail.com', '9856632564', 1130),
(13, 'Adak Sen', 'adak@gmail.com', '986543296', 34),
(14, 'Elisa', 'elisa@gmail.com', '85859909768', 3000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `sno` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
