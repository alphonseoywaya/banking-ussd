-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2020 at 11:40 AM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `phoneNumber` varchar(15) NOT NULL,
  `balance` int(255) NOT NULL,
  `loan` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`phoneNumber`, `balance`, `loan`) VALUES
('+254723242526', 0, 0),
('+254723232324', 0, 0),
('+254728282828', 0, 0),
('+254726457287', 0, 0),
('+254729201358', 0, 0),
('+254729292929', 0, 0),
('+254731313131', 0, 0),
('+254724242424', 0, 0),
('+254723232325', 0, 0),
('+254756565656', 0, 0),
('+254728282825', 0, 0),
('+254725252524', 0, 0),
('+254712121221', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `status` varchar(255) NOT NULL,
  `amount` int(255) NOT NULL,
  `phoneNumber` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`status`, `amount`, `phoneNumber`) VALUES
('pending', 17, '+254723242526'),
('pending', 17, '+254723242526'),
('pending', 17, '+254723242526'),
('pending', 19, '+254728282828'),
('pending', 17, '+254726457287'),
('pending', 17, '+254726457287'),
('pending', 17, '+254728282825');

-- --------------------------------------------------------

--
-- Table structure for table `microfinance`
--

CREATE TABLE `microfinance` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phoneNumber` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `microfinance`
--

INSERT INTO `microfinance` (`user_id`, `name`, `phoneNumber`, `city`) VALUES
(1, 'John ', '0729201358', 'kisumu'),
(2, 'alphonse', '+254729292929', 'kakamega'),
(18, 'john', '+254723242526', 'doe'),
(19, 'moses', '+254756565656', 'kisii'),
(20, 'everlyne', '+254726457287', 'busia'),
(21, 'john', '+254728282825', 'typ'),
(22, 'oster', '+254725252524', 'kisii'),
(23, 'kasuku', '+254712121221', 'kakamega');

-- --------------------------------------------------------

--
-- Table structure for table `session_levels`
--

CREATE TABLE `session_levels` (
  `session_Id` varchar(255) NOT NULL,
  `phoneNumber` varchar(25) NOT NULL,
  `level` int(10) NOT NULL,
  `time` varchar(255) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session_levels`
--

INSERT INTO `session_levels` (`session_Id`, `phoneNumber`, `level`, `time`) VALUES
('ATUid_42b0ded4c9d0f3b6c1930b9ccd2cefcf', '+254723242526', 2, '2020-03-05 11:10:27'),
('ATUid_42b0ded4c9d0f3b6c1930b9ccd2cefcf', '+254723242526', 1, '2020-03-05 11:10:27'),
('ATUid_096ef34b7238f759cc97488766e5b003', '+254723242526', 9, '2020-03-05 11:10:27'),
('ATUid_65202d8b14ddeb4640659e4f932b8bb3', '+254723242526', 1, '2020-03-05 11:10:27'),
('ATUid_50de922a74131a933ae4710f54999c89', '+254723242526', 9, '2020-03-05 11:10:27'),
('ATUid_e0e4899ddc0b97bb0a5b5c2cfc9b38be', '+254723242526', 1, '2020-03-05 11:10:27'),
('ATUid_272eeeeb94824c22f0a0c81731623772', '+254723242526', 11, '2020-03-05 11:10:27'),
('ATUid_56f824004bfd8853fb2c002a63bd5da0', '+254723242526', 1, '2020-03-05 11:10:27'),
('ATUid_5b396b730a8192b9899bbb06748fcb5f', '+254723242526', 12, '2020-03-05 11:10:27'),
('ATUid_d10e4b68a8a7cb4714f7f9f4793a396c', '+254723242526', 1, '2020-03-05 11:10:27'),
('ATUid_c4f0d5e601e6db1d7fc6ca9cca7bc329', '+254723242526', 1, '2020-03-05 11:10:27'),
('ATUid_610e2246b360e54d7fdeacec178066d7', '+254723242526', 1, '2020-03-05 11:10:27'),
('ATUid_84f6c2f135d4f9a935df81b80e7e1696', '+254723232324', 2, '2020-03-05 11:10:27'),
('ATUid_84f6c2f135d4f9a935df81b80e7e1696', '+254723232324', 1, '2020-03-05 11:10:27'),
('ATUid_81e071d501ec9859ab9bd6a06a2cb4f2', '+254723232324', 1, '2020-03-05 11:10:27'),
('ATUid_13b5678d83cefbe141612a558d30a291', '+254723232324', 1, '2020-03-05 11:10:27'),
('ATUid_0ce085c702d3c0c61aee774c1466b24c', '+254728282828', 2, '2020-03-05 11:10:27'),
('ATUid_0ce085c702d3c0c61aee774c1466b24c', '+254728282828', 1, '2020-03-05 11:10:27'),
('ATUid_64401a839a22739178f1173317eef9db', '+254728282828', 9, '2020-03-05 11:10:27'),
('ATUid_a1951a5a96cd4baae7f3e5b87852fdac', '+254728282828', 1, '2020-03-05 11:10:27'),
('ATUid_3023a24796412796449d6079f1ee66a5', '+254728282828', 1, '2020-03-05 11:10:27'),
('ATUid_97651c90f751bb13a6f502e78031569e', '+254726457287', 2, '2020-03-05 11:10:27'),
('ATUid_97651c90f751bb13a6f502e78031569e', '+254726457287', 1, '2020-03-05 11:10:27'),
('ATUid_3a10a958c925efe1f827755ba64895db', '+254726457287', 2, '2020-03-05 11:10:27'),
('ATUid_d70aca3d1dc00cb46ee39df7888a4461', '+254726457287', 1, '2020-03-05 11:10:27'),
('ATUid_ae92db0cc3ed6d5274b6f45187e67358', '+254723242526', 1, '2020-03-05 11:11:33'),
('ATUid_d555e51afdda5ef9ae8185c1600870e9', '+254723242526', 1, '2020-03-05 11:31:36'),
('ATUid_ccc03bc34aabcdb032293c805e0ec0d2', '+254729201358', 2, '2020-03-06 09:31:02'),
('ATUid_ccc03bc34aabcdb032293c805e0ec0d2', '+254729201358', 1, '2020-03-06 09:31:19'),
('ATUid_f5007dfffc4071bdda0ead928296f9f8', '+254729201358', 1, '2020-03-06 09:31:24'),
('ATUid_eced1b3a8b402afb1ce0f57a713af0ec', '+254729201358', 2, '2020-03-06 10:32:17'),
('ATUid_eced1b3a8b402afb1ce0f57a713af0ec', '+254729201358', 1, '2020-03-06 10:32:31'),
('ATUid_d0b17f71b10f84ed52da1940be69f165', '+254729201358', 1, '2020-03-06 10:32:34'),
('ATUid_a70fefe649c4c4241f849e37dd973065', '+254729292929', 2, '2020-03-06 11:55:20'),
('ATUid_a70fefe649c4c4241f849e37dd973065', '+254729292929', 1, '2020-03-06 11:55:36'),
('ATUid_70b26a5c23142fb994491c9885e6aee8', '+254729292929', 1, '2020-03-06 11:59:49'),
('ATUid_17c80d81410c3398e61e62bc96ceed84', '+254731313131', 2, '2020-03-06 12:00:19'),
('ATUid_17c80d81410c3398e61e62bc96ceed84', '+254731313131', 3, '2020-03-06 12:00:31'),
('ATUid_17c80d81410c3398e61e62bc96ceed84', '+254731313131', 3, '2020-03-06 12:00:36'),
('ATUid_17c80d81410c3398e61e62bc96ceed84', '+254731313131', 3, '2020-03-06 12:00:41'),
('ATUid_17c80d81410c3398e61e62bc96ceed84', '+254731313131', 2, '2020-03-06 12:02:13'),
('ATUid_9c6e42c7d90f47ce3b0baa703c0105dc', '+254731313131', 2, '2020-03-06 12:02:19'),
('ATUid_9c6e42c7d90f47ce3b0baa703c0105dc', '+254731313131', 2, '2020-03-06 12:02:30'),
('ATUid_9c6e42c7d90f47ce3b0baa703c0105dc', '+254731313131', 2, '2020-03-06 12:02:35'),
('ATUid_9c6e42c7d90f47ce3b0baa703c0105dc', '+254731313131', 2, '2020-03-06 12:02:40'),
('ATUid_9c6e42c7d90f47ce3b0baa703c0105dc', '+254731313131', 2, '2020-03-06 12:02:45'),
('ATUid_d5ae74724600aa2e05526b06c4a4d16c', '+254724242424', 4, '2020-03-06 12:06:04'),
('ATUid_d5ae74724600aa2e05526b06c4a4d16c', '+254724242424', 1, '2020-03-06 12:06:22'),
('ATUid_30a44842077ad1d5157ac46495aba58c', '+254724242424', 1, '2020-03-06 12:06:27'),
('ATUid_bc53d41151f12aa29c21dee484c7335a', '+254724242424', 1, '2020-03-06 12:06:36'),
('ATUid_b38248100530f94f3d84b0b10c40b3cb', '+254724242424', 2, '2020-03-06 12:08:13'),
('ATUid_8b8d5db27a83a8723b0e9f2f9252ef7e', '+254724242424', 2, '2020-03-06 12:09:14'),
('ATUid_db592a59d76ba18db6d802300c629842', '+254724242424', 4, '2020-03-06 12:10:26'),
('ATUid_db592a59d76ba18db6d802300c629842', '+254724242424', 1, '2020-03-06 12:10:44'),
('ATUid_73477994302e7a7805bdc95263c88152', '+254724242424', 1, '2020-03-06 12:10:53'),
('ATUid_cf690df844e589884e17ac0a0fb8454e', '+254724242424', 4, '2020-03-06 12:11:42'),
('ATUid_cf690df844e589884e17ac0a0fb8454e', '+254724242424', 3, '2020-03-06 12:12:01'),
('ATUid_70e467c738a0ce8bc371358d624a6070', '+254724242424', 1, '2020-03-06 12:12:06'),
('ATUid_7f9b5b4ebf45bad09d18c07f552e585d', '+254724242424', 4, '2020-03-06 12:12:47'),
('ATUid_7f9b5b4ebf45bad09d18c07f552e585d', '+254724242424', 0, '2020-03-06 12:13:04'),
('ATUid_a3ee8de3629ec5f81129dc0dfeef282e', '+254724242424', 1, '2020-03-06 12:13:08'),
('ATUid_75a3788b265c325c062cc15772134f46', '+254723232325', 2, '2020-03-06 12:25:09'),
('ATUid_75a3788b265c325c062cc15772134f46', '+254723232325', 0, '2020-03-06 12:25:21'),
('ATUid_6e48b678c175f1748a30910bbf58c4b6', '+254723232325', 1, '2020-03-06 12:25:26'),
('ATUid_5efaa5aeef4a372661e06298c9431cec', '+254723242526', 2, '2020-03-06 12:33:50'),
('ATUid_5efaa5aeef4a372661e06298c9431cec', '+254723242526', 0, '2020-03-06 12:34:00'),
('ATUid_34c32044f66bb4c73d0f45063649b9d6', '+254723242526', 1, '2020-03-06 12:34:06'),
('ATUid_74d4c1f97b97c728c74386e3475da7f2', '+254756565656', 2, '2020-03-06 12:34:47'),
('ATUid_74d4c1f97b97c728c74386e3475da7f2', '+254756565656', 0, '2020-03-06 12:35:04'),
('ATUid_6704bc2dca929cd85c873a82a07a2fec', '+254756565656', 1, '2020-03-06 12:35:16'),
('ATUid_4a052750168808ece56c3ebe5ec859c9', '+254726457287', 2, '2020-03-07 09:08:25'),
('ATUid_4a052750168808ece56c3ebe5ec859c9', '+254726457287', 0, '2020-03-07 09:08:50'),
('ATUid_f46cd1991a9329dcd007fc7d11ffb79e', '+254726457287', 11, '2020-03-07 09:08:56'),
('ATUid_61ae7f2aa912ef0b725c742e46424588', '+254726457287', 9, '2020-03-07 09:10:18'),
('ATUid_e1fbab6c41414768d3d62eeb898c2017', '+254726457287', 1, '2020-03-07 09:10:41'),
('ATUid_7b0f5d741a94591737e386d699a30a14', '+254726457287', 1, '2020-03-07 09:11:14'),
('ATUid_3705301f1936361390a490b6eb20bc1f', '+254726457287', 10, '2020-03-07 09:11:26'),
('ATUid_8574833426254b1aa31bfb5ddbbe8f76', '+254726457287', 12, '2020-03-07 09:13:34'),
('ATUid_c20396f524b82942ae2393cf81a23519', '+254726457287', 1, '2020-03-07 09:16:49'),
('ATUid_ef9ddd859eb355e194188cef9a8ccbee', '+254726457287', 1, '2020-03-07 09:30:38'),
('ATUid_b999b3d912a1db4c6637aa9dfeeba7a2', '+254726457287', 1, '2020-03-07 09:33:39'),
('ATUid_a4c2d6ce7412f4dcb5f9a66fa8159ec5', '+254726457287', 1, '2020-03-07 09:38:02'),
('ATUid_d3c00c9f0819879a1badf277b0f7082f', '+254728282825', 2, '2020-03-07 09:56:52'),
('ATUid_d3c00c9f0819879a1badf277b0f7082f', '+254728282825', 0, '2020-03-07 09:57:09'),
('ATUid_c1953f0bbb4c634202992adf18000827', '+254728282825', 9, '2020-03-07 09:57:14'),
('ATUid_2b5f7d34ccca0f3c777d8343ed90fb5e', '+254728282825', 1, '2020-03-07 09:58:04'),
('ATUid_56ac76feb39d6803acd567dfef333210', '+254723242526', 1, '2020-03-09 09:14:50'),
('ATUid_bc33e9e32bb1b8debb10020e249fa83d', '+254725252524', 2, '2020-03-09 09:27:38'),
('ATUid_bc33e9e32bb1b8debb10020e249fa83d', '+254725252524', 0, '2020-03-09 09:27:50'),
('ATUid_fecc72a1838b3eb1e25bc6f57a64785d', '+254725252524', 1, '2020-03-09 09:27:56'),
('ATUid_59e5118d61397393488cf8a8ae46108c', '+254712121221', 1, '2020-03-09 09:33:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `microfinance`
--
ALTER TABLE `microfinance`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `microfinance`
--
ALTER TABLE `microfinance`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
