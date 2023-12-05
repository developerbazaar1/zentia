-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 05, 2023 at 12:36 PM
-- Server version: 10.5.22-MariaDB-cll-lve
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demodbtechserver_zentia`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `coach_id` text DEFAULT NULL,
  `user_id` text DEFAULT NULL,
  `order_id` text DEFAULT NULL,
  `plan` text DEFAULT NULL,
  `price` text DEFAULT NULL,
  `meeting_date` date DEFAULT NULL,
  `meeting_time` text DEFAULT NULL,
  `meeting_link` text DEFAULT NULL,
  `meeting_session` text DEFAULT NULL,
  `meeting_price` text DEFAULT NULL,
  `meeting_start_time` text DEFAULT NULL,
  `token_id` text DEFAULT NULL,
  `status` enum('Request','Reject','Pending','In review','Scheduled','Cancel','Done') DEFAULT 'Request',
  `rejection` text DEFAULT NULL,
  `paid_session` text DEFAULT NULL,
  `paid_amount` text DEFAULT NULL,
  `paid_currency` text DEFAULT NULL,
  `tran_token` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `booking_id` text DEFAULT 'null',
  `status_extend` enum('0','1') NOT NULL DEFAULT '0',
  `pay_status` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `coach_id`, `user_id`, `order_id`, `plan`, `price`, `meeting_date`, `meeting_time`, `meeting_link`, `meeting_session`, `meeting_price`, `meeting_start_time`, `token_id`, `status`, `rejection`, `paid_session`, `paid_amount`, `paid_currency`, `tran_token`, `created_at`, `updated_at`, `booking_id`, `status_extend`, `pay_status`) VALUES
(18, '106', '114', '62ee4597108d2', '1-2pm/2022-08-06,7-8am/2022-08-09,1-2pm/2022-08-09,7-8am/2022-08-13', '300/20', '2022-08-13', '7-8am', 'https://pragya.dbtechserver.online/zentia/public/callbackurl/62ee4597108d2', '1', '300', '2022-08-22 10:03:00', NULL, 'Scheduled', NULL, '20', '300', 'usd', 'tok_1LZV4RHqIFxRUMFc70mng0BJ', '2022-08-06 09:42:31', '2022-08-22 09:29:17', 'null', '0', '0'),
(19, '104', '114', '62ee45e4cc7e0', '1-2pm/2022-08-06,2-3pm/2022-08-06,1-2pm/2022-08-10,2-3pm/2022-08-10', '100/20', '2022-08-30', '2-3pm', 'https://pragya.dbtechserver.online/zentia/public/callbackurl/62ee45e4cc7e0', '1', '100', '2022-08-30 14:00:00', NULL, 'Done', NULL, '20', '100,100', 'usd', 'tok_1LXlZ0HqIFxRUMFca4cPM7jz,tok_1LabRbHqIFxRUMFcTPMiesBD', '2022-08-06 09:43:48', '2022-09-01 10:04:47', 'null', '1', 'Approved'),
(20, '104', '114', '62ee496e2cd7e', '1-2pm/2022-08-06,2-3pm/2022-08-06,3-4am/2022-08-12', '100/20', '2022-08-12', '3-4am', NULL, '20', '100', '2022-08-12 3:00:00', NULL, 'Pending', NULL, '20', '', '', '', '2022-08-06 09:58:54', '2022-09-29 10:26:43', 'null', '0', '0'),
(21, '104', '114', '62ee5232ad1de', '1-2pm/2022-08-06,2-3pm/2022-08-06,1-2pm/2022-08-08,2-3pm/2022-08-08,1-2pm/2022-08-09,2-3pm/2022-08-09', '100/20', '2022-08-06', '2-3pm', 'https://pragya.dbtechserver.online/zentia/public/callbackurl/62ee5232ad1de', '20', '100', '2022-08-16 15:18:00', NULL, 'Scheduled', NULL, '20', '100', 'usd', 'tok_1LiZ3vHqIFxRUMFcG7avr9CA', '2022-08-06 10:36:18', '2022-09-16 09:34:13', 'null', '0', '0'),
(22, '104', '114', '62ee533d35ac6', '1-2pm/2022-08-06', '300/60', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Reject', 'I am not here at this ime, we can schedule next monday at2-3', NULL, '', '', '', '2022-08-06 10:40:45', '2022-08-06 10:41:34', 'null', '0', '0'),
(23, '104', '114', '62f0e858a10c2', '1-2pm/2022-08-08,2-3pm/2022-08-08,3-4am/2022-08-08,2-3pm/2022-08-09,3-4am/2022-08-09', '200/40', '2022-08-30', '1-2pm', 'https://pragya.dbtechserver.online/zentia/public/callbackurl/62f0e858a10c2', '20', '200', '2022-09-01 16:50:00', NULL, 'Done', NULL, '20,40', '100,200', 'usd', 'tok_1LZXYbHqIFxRUMFcZ8OHDjQZ,tok_1LcRbzHqIFxRUMFcLRthcmab', '2022-08-08 09:41:28', '2022-09-01 16:29:37', 'null', '1', '0'),
(24, '103', '123', '62f10622af8ca', '7-8am/2022-08-09,12-1pm/2022-08-09,5-6pm/2022-08-09', '20/20', '2022-08-09', '12-1pm', 'https://pragya.dbtechserver.online/zentia/public/callbackurl/62f1073565f52', '20', '20', '2022-08-09 12:00:00', NULL, 'In review', NULL, '20', '', '', '', '2022-08-08 11:48:34', '2022-08-08 11:53:09', 'null', '0', '0'),
(25, '106', '124', '62fbba4fb5c4c', '1-2am/2022-08-16', '300/20', '2022-08-16', '1-2am', NULL, '20', '300', '2022-08-16 1:00:00', NULL, 'Pending', NULL, '20', '', '', '', '2022-08-16 16:39:59', '2022-08-22 09:27:24', 'null', '0', '0'),
(27, '106', '126', '62fe36147c9a5', '7-8am/2022-08-19,1-2pm/2022-08-19,8-9pm/2022-08-19,1-2pm/2022-08-20,8-9pm/2022-08-20', '400/40', '2022-08-20', '8-9pm', 'https://pragya.dbtechserver.online/zentia/public/callbackurl/62fe36147c9a5', '40', '400', '2022-08-18 14:55:00', NULL, 'Scheduled', NULL, '40', '400', 'usd', 'tok_1LY8FyHqIFxRUMFclgCIppC5', '2022-08-18 14:52:36', '2022-08-18 14:55:33', 'null', '0', '0'),
(28, '104', '129', '62ff46e5d5b69', '2-3pm/2022-08-19,2-3pm/2022-08-20,2-3pm/2022-08-21,1-2pm/2022-08-23,1-2pm/2022-08-25,1-2pm/2022-08-27,1-2pm/2022-08-28', '100/20', '2022-08-20', '2-3pm', 'https://pragya.dbtechserver.online/zentia/public/callbackurl/62ff46e5d5b69', '20', '100', '2022-08-20 14:00:00', NULL, 'Done', NULL, '20', '100', 'usd', 'tok_1LYU4DHqIFxRUMFcKvS7Gj1B', '2022-08-19 10:16:37', '2022-09-08 10:23:39', 'null', '0', '0'),
(29, '103', '124', '6300968bbac65', '12-1pm/2022-08-20,12-1pm/2022-08-24,12-1pm/2022-08-27', '20/20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Request', NULL, NULL, NULL, NULL, NULL, '2022-08-20 10:08:43', '2022-08-20 10:08:43', 'null', '0', '0'),
(30, '106', '114', '63035ceb9cbe8', '7-8am/2022-08-22', '300/20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Request', NULL, NULL, NULL, NULL, NULL, '2022-08-22 12:39:39', '2022-08-22 12:39:39', 'null', '0', '0'),
(31, '106', '114', '630362741ec56', '7-8am/2022-08-22,1-2pm/2022-08-22,7-8am/2022-08-23,1-2pm/2022-08-23', '300/20', '2022-08-22', '7-8am', 'https://pragya.dbtechserver.online/zentia/public/callbackurl/630362741ec56', '20', '300', '2022-08-23 15:18:00', NULL, 'Done', NULL, '20', '300,300,500,300,300,400', 'usd', 'tok_1LZvOIHqIFxRUMFcrF83IucC,tok_1LZw1SHqIFxRUMFcJHTxQpIH,tok_1LZw2PHqIFxRUMFcwceKLOJ2,tok_1LZx1WHqIFxRUMFcskN0dNb4,tok_1LZy4jHqIFxRUMFco5dcJHHz,tok_1LZy5vHqIFxRUMFctA7hCilz', '2022-08-22 13:03:16', '2022-09-01 16:30:23', 'null', '1', '0'),
(32, '103', '114', '6304ccc39bb7e', '7-8am/2022-08-24,12-1pm/2022-08-24,7-8am/2022-08-25,12-1pm/2022-08-25', '20/20', '2022-08-25', '12-1pm', 'https://pragya.dbtechserver.online/zentia/public/callbackurl/6304ccc39bb7e', '20', '200', '2022-08-25 12:00:00', NULL, 'Scheduled', NULL, '20', '200', 'usd', 'tok_1LfktFHqIFxRUMFcmVJ6RpUK', '2022-08-23 14:49:07', '2022-09-08 15:35:35', 'null', '0', '0'),
(33, '103', '114', '6304ccf3e2732', '7-8am/2022-08-24,12-1pm/2022-08-24,7-8am/2022-08-25,12-1pm/2022-08-25', '20/20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Request', NULL, NULL, NULL, NULL, NULL, '2022-08-23 14:49:55', '2022-08-23 14:49:55', 'null', '0', '0'),
(34, '103', '114', '6304ce4c339ec', '7-8am/2022-08-24,12-1pm/2022-08-24', '20/20', '2022-08-24', '7-8am', 'https://pragya.dbtechserver.online/zentia/public/callbackurl/6304ce4c339ec', '1', '200', '2022-08-25 16:05:00', NULL, 'Done', NULL, '20', '200', 'usd', 'tok_1LZxkJHqIFxRUMFcQSebacxP', '2022-08-23 14:55:40', '2022-08-26 13:40:38', 'null', '0', 'Request'),
(35, '104', '114', '6305bcec6614b', '2-3pm/2022-08-24,1-2pm/2022-08-26,2-3pm/2022-08-29,3-4am/2022-09-01', '100/20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Reject', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a', NULL, NULL, NULL, NULL, '2022-08-24 07:53:48', '2022-08-24 08:52:39', 'null', '0', '0'),
(36, '106', '115', '6305f439ba86f', '1-2pm/2022-08-24,8-9pm/2022-08-24,7-8am/2022-08-27', '300/20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Request', NULL, NULL, NULL, NULL, NULL, '2022-08-24 11:49:45', '2022-08-24 11:49:45', 'null', '0', '0'),
(37, '106', '115', '6305f47aa941b', '1-2pm/2022-08-25,8-9pm/2022-08-25', '300/20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Request', NULL, NULL, NULL, NULL, NULL, '2022-08-24 11:50:50', '2022-08-24 11:50:50', 'null', '0', '0'),
(38, '103', '115', '6305f50d650d1', '7-8am/2022-08-24,12-1pm/2022-08-24', '20/20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Request', NULL, NULL, NULL, NULL, NULL, '2022-08-24 11:53:17', '2022-08-24 11:53:17', 'null', '0', '0'),
(39, '103', '114', '63074a687192a', '7-8am/2022-08-26,7-8am/2022-08-27', '20/20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Reject', 'test', NULL, NULL, NULL, NULL, '2022-08-25 12:09:44', '2022-08-25 12:26:13', 'null', '0', '0'),
(40, '103', '114', '63076710ef0f1', '7-8am/2022-08-26,12-1pm/2022-08-26,7-8am/2022-08-27,12-1pm/2022-08-27', '20/20', '2022-08-26', '7-8am', 'https://pragya.dbtechserver.online/zentia/public/callbackurl/63076710ef0f1', '1', '200', '2022-08-25 16:02:00', NULL, 'Done', NULL, '20', '200', 'usd', 'tok_1Laex2HqIFxRUMFcAYmtGaHD', '2022-08-25 14:12:00', '2022-08-26 12:37:14', 'null', '0', 'Approved'),
(41, '103', '114', '630786a85edda', '12-1pm/2022-08-25,12-1pm/2022-08-26,12-1pm/2022-08-28', '200/20', '2022-08-26', '12-1pm', 'https://pragya.dbtechserver.online/zentia/public/callbackurl/630786a85edda', '20', '200', '2022-08-26 12:00:00', NULL, 'Done', 'test', '20', '200', 'usd', 'tok_1LahIkHqIFxRUMFcMQ8COkSs', '2022-08-25 16:26:48', '2022-09-02 08:59:34', 'null', '0', '0'),
(42, '103', '114', '6308cf3a67324', '7-8am/2022-08-26', '250/40', '2022-08-26', '7-8am', 'https://pragya.dbtechserver.online/zentia/public/callbackurl/6308cf3a67324', '1', '250', '2022-08-26 15:55:00', NULL, 'Done', NULL, '20', '250', 'usd', 'tok_1Lb2vnHqIFxRUMFcbQTMQW46', '2022-08-26 15:48:42', '2022-08-26 16:01:55', 'null', '0', 'Approved'),
(43, '104', '114', '630c67a09b7ca', '1-2pm/2022-08-29,2-3pm/2022-08-29,8-9pm/2022-08-29', '100/20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Request', NULL, NULL, NULL, NULL, NULL, '2022-08-29 09:15:44', '2022-08-29 09:15:44', 'null', '0', '0'),
(44, '104', '114', '630c67b6436f1', '1-2pm/2022-08-29,2-3pm/2022-08-29,8-9pm/2022-08-29', '100/20', '2022-08-29', '2-3pm', 'https://pragya.dbtechserver.online/zentia/public/callbackurl/630c67b6436f1', '1', '100', '2022-08-29 12:28:00', NULL, 'Done', NULL, '20', '100', 'usd', 'tok_1Lc2Y0HqIFxRUMFciIEaha3l', '2022-08-29 09:16:06', '2023-11-15 14:35:58', 'null', '0', 'Approved'),
(45, '104', '114', '630c92f158774', '3-4am/2022-08-29,1-2pm/2022-08-30', '100/20', '2022-08-30', '1-2pm', 'https://pragya.dbtechserver.online/zentia/public/callbackurl/630c92f158774', '1', '100', '2022-08-29 14:15:00', NULL, 'Done', NULL, '20', '100', 'usd', 'tok_1Lc5P0HqIFxRUMFclDuqw3Qz', '2022-08-29 12:20:33', '2022-08-29 14:15:54', 'null', '0', 'Approved'),
(46, '104', '114', '630df2e054da1', '3-4pm/2022-08-30,1-2pm/2022-08-31', '100/20', '2022-08-30', '3-4pm', 'https://pragya.dbtechserver.online/zentia/public/callbackurl/630df2e054da1', '20', '100', '2022-08-30 15:00:00', NULL, 'Done', NULL, '20', '100', 'usd', 'tok_1LcSXVHqIFxRUMFc4II3r3ZW', '2022-08-30 13:22:08', '2022-09-02 13:59:51', 'null', '0', '0'),
(47, '104', '114', '630df3853b391', '1-2pm/2022-08-31', '100/20', '2022-08-31', '1-2pm', 'https://pragya.dbtechserver.online/zentia/public/callbackurl/630df3853b391', '5', '100', '2022-09-02 09:00:00', NULL, 'Done', NULL, '20,20', '100,100', 'usd', 'tok_1LcSZKHqIFxRUMFcOBkFPBBh,tok_1LdTtXHqIFxRUMFc12NpDIrZ', '2022-08-30 13:24:53', '2022-09-02 09:04:38', 'null', '1', '0'),
(48, '104', '114', '630e08f9c5459', '2-3pm/2022-08-30,2-3pm/2022-08-31', '100/20', '2022-08-30', '2-3pm', 'https://pragya.dbtechserver.online/zentia/public/callbackurl/630e08f9c5459', '20', '100', '2022-08-30 14:00:00', NULL, 'Scheduled', NULL, '20', '100', 'usd', 'tok_1LfIxbHqIFxRUMFc8BMaj6zl', '2022-08-30 14:56:25', '2022-09-07 09:46:13', 'null', '0', '0'),
(49, '139', '142', '6311bb60f287d', '5-6pm/2022-09-02,12-1am/2022-09-02,7-8am/2022-09-03,3-4pm/2022-09-03', '1/20', '2022-09-02', '5-6pm', NULL, '20', '1', '2022-09-02 17:00:00', NULL, 'Pending', NULL, '20', NULL, NULL, NULL, '2022-09-02 10:14:24', '2022-09-02 10:16:07', 'null', '0', '0'),
(50, '144', '145', '6311e4114ed08', '9-10am/2022-09-02,6-7am/2022-09-03,9-10am/2022-09-04', '50/20', '2022-09-02', '9-10am', 'https://pragya.dbtechserver.online/zentia/public/callbackurl/6311e4114ed08', '1', '1', '2022-09-02 13:13:00', NULL, 'Done', NULL, '20,20', '50,50', 'usd', 'tok_1LdXl0HqIFxRUMFcQeToyHj6,tok_1LdXqaHqIFxRUMFcJC8TlN5V', '2022-09-02 13:08:01', '2022-09-02 14:23:35', 'null', '1', 'Approved'),
(51, '139', '142', '6314867d42c8f', '3-4pm/2022-09-06', '1/20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Request', NULL, NULL, NULL, NULL, NULL, '2022-09-04 13:05:33', '2022-09-04 13:05:33', 'null', '0', '0'),
(52, '106', '114', '6315b1c47385a', '1-2pm/2022-09-05', '300/20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Request', NULL, NULL, NULL, NULL, NULL, '2022-09-05 10:22:28', '2022-09-05 10:22:28', 'null', '0', '0'),
(53, '104', '114', '632c0d4c18488', '8-9pm/2022-09-22,9-10pm/2022-09-22,1-2pm/2022-09-23', '100/20', '2022-09-22', '8-9pm', 'https://pragya.dbtechserver.online/zentia/public/callbackurl/632c0d4c18488', '20', '100', '2022-09-22 20:00:00', NULL, 'Scheduled', NULL, '20', '100', 'usd', 'tok_1LkjqNHqIFxRUMFcmfCkLMDq', '2022-09-22 09:22:52', '2022-09-22 09:29:13', 'null', '0', '0'),
(54, '104', '150', '632d4e018fc9f', '10-11am/2022-09-23,2-3pm/2022-09-23', '100/20', '2022-09-23', '2-3pm', NULL, '20', '100', '2022-09-23 14:00:00', NULL, 'Pending', NULL, '20', NULL, NULL, NULL, '2022-09-23 08:11:13', '2022-09-23 09:36:43', 'null', '0', '0'),
(55, '104', '150', '632d5ee1458ad', '8-9pm/2022-09-23,9-10pm/2022-09-23,3-4am/2022-09-23,1-2pm/2022-09-24,2-3pm/2022-09-24,3-4pm/2022-09-24', '100/20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Request', NULL, NULL, NULL, NULL, NULL, '2022-09-23 09:23:13', '2022-09-23 09:23:13', 'null', '0', '0'),
(56, '104', '150', '632d7e9d10597', '8-9pm/2022-09-23,9-10pm/2022-09-23,3-4am/2022-09-23,1-2pm/2022-09-24,2-3pm/2022-09-24,3-4pm/2022-09-24', '100/20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Request', NULL, NULL, NULL, NULL, NULL, '2022-09-23 11:38:37', '2022-09-23 11:38:37', 'null', '0', '0'),
(57, '104', '114', NULL, '8-9pm/2022-09-27,1-2pm/2022-09-28', '100/20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Request', NULL, NULL, NULL, NULL, NULL, '2022-09-27 13:34:42', '2022-09-27 13:34:42', 'null', '0', '0'),
(58, '144', '114', '6332fc1cb66ca', '7-8am/2022-09-27,6-7am/2022-09-28,7-8am/2022-09-29', '50/20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Request', NULL, NULL, NULL, NULL, NULL, '2022-09-27 15:35:24', '2022-09-27 15:35:24', 'null', '0', '0'),
(59, '144', '114', '6332fcd0198b5', '7-8am/2022-09-27,6-7am/2022-09-28', '100/40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Request', NULL, NULL, NULL, NULL, NULL, '2022-09-27 15:38:24', '2022-09-27 15:38:24', 'null', '0', '0'),
(60, '144', '114', '6332fd3424d9b', '7-8am/2022-09-27', '50/20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Request', NULL, NULL, NULL, NULL, NULL, '2022-09-27 15:40:04', '2022-09-27 15:40:04', 'null', '0', '0'),
(61, '144', '114', '6332fe5c8547c', '7-8am/2022-09-27,6-7am/2022-09-28,7-8am/2022-09-29', '50/20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Request', NULL, NULL, NULL, NULL, NULL, '2022-09-27 15:45:00', '2022-09-27 15:45:00', 'null', '0', '0'),
(62, '104', '114', '6333e3977ef63', '2-3pm/2022-09-28,2-3pm/2022-09-29', '100/20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Request', NULL, NULL, NULL, NULL, NULL, '2022-09-28 08:03:03', '2022-09-28 08:03:03', 'null', '0', '0'),
(63, '104', '152', '63355613ce052', '2-3pm/2022-09-29,3-4pm/2022-09-29', '200/40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Request', NULL, NULL, NULL, NULL, NULL, '2022-09-29 10:23:47', '2022-09-29 10:23:47', 'null', '0', '0'),
(64, '139', '154', '633addb052ef4', '7-8am/2022-10-03,3-4pm/2022-10-03,5-6pm/2022-10-03', '1/40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Request', NULL, NULL, NULL, NULL, NULL, '2022-10-03 15:03:44', '2022-10-03 15:03:44', 'null', '0', '0'),
(65, '153', '154', '633ade4665c3a', '1-2pm/2022-10-03,2-3pm/2022-10-03,3-4pm/2022-10-03', '4/40', '2022-10-03', '1-2pm', 'https://pragya.dbtechserver.online/zentia/public/callbackurl/633ade4665c3a', '40', '4', '2022-10-03 13:00:00', NULL, 'Scheduled', NULL, '40', '4', 'usd', 'tok_1LooXOHqIFxRUMFcr91NED7J', '2022-10-03 15:06:14', '2022-10-03 15:18:27', 'null', '0', '0'),
(66, '153', '154', '633adef03b7f8', '1-2pm/2022-10-03,2-3pm/2022-10-03,3-4pm/2022-10-03', '4/60', '2022-10-03', '1-2pm', NULL, '60', '4', '2022-10-03 13:00:00', NULL, 'Pending', NULL, '60', NULL, NULL, NULL, '2022-10-03 15:09:04', '2022-10-03 15:17:06', 'null', '0', '0'),
(67, '104', '114', '633adf41ec1a0', '8-9pm/2022-10-03,2-3pm/2022-10-04,3-4pm/2022-10-04', '200/40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Request', NULL, NULL, NULL, NULL, NULL, '2022-10-03 15:10:25', '2022-10-03 15:10:25', 'null', '0', '0'),
(68, '107', '114', '6345289945dfa', '9-10pm/2022-10-11,8-9am/2022-10-12', '300/20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Request', NULL, NULL, NULL, NULL, NULL, '2022-10-11 10:26:01', '2022-10-11 10:26:01', 'null', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `booking_plan`
--

CREATE TABLE `booking_plan` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `time` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking_tempory`
--

CREATE TABLE `booking_tempory` (
  `id` int(11) NOT NULL,
  `plan` text DEFAULT NULL,
  `price` text DEFAULT NULL,
  `coach_id` text DEFAULT NULL,
  `user_id` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `booking_tempory`
--

INSERT INTO `booking_tempory` (`id`, `plan`, `price`, `coach_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '8-9pm/2022-09-27,1-2pm/2022-09-28', '100/20', '104', '114', '2022-09-27 13:36:40', '2022-09-27 13:36:40'),
(2, '1-2pm/2022-09-27,1-2pm/2022-09-28', '100/20', '104', '114', '2022-09-27 13:51:43', '2022-09-27 13:51:43'),
(3, '9-10pm/2022-09-27,2-3pm/2022-09-28,3-4pm/2022-09-28', '200/40', '104', '114', '2022-09-27 14:02:06', '2022-09-27 14:02:06'),
(4, '2-3pm/2022-09-27,2-3pm/2022-09-28,3-4pm/2022-09-28', '200/40', '104', '114', '2022-09-27 14:03:17', '2022-09-27 14:03:17'),
(5, '1-2pm/2022-09-27,1-2pm/2022-09-28', '200/40', '104', '114', '2022-09-27 14:10:06', '2022-09-27 14:10:06'),
(6, '1-2pm/2022-09-27', '200/40', '104', '114', '2022-09-27 14:12:33', '2022-09-27 14:12:33'),
(7, '7-8am/2022-09-27,6-7am/2022-09-28', '100/40', '144', '114', '2022-09-27 14:15:57', '2022-09-27 14:15:57'),
(8, '7-8am/2022-09-27,6-7am/2022-09-28', '100/40', '144', '114', '2022-09-27 14:21:52', '2022-09-27 14:21:52'),
(9, '7-8am/2022-09-29', '50/20', '144', '114', '2022-09-27 15:06:41', '2022-09-27 15:06:41'),
(10, '6-7am/2022-09-28', '50/20', '144', '114', '2022-09-27 15:11:57', '2022-09-27 15:11:57'),
(11, '7-8am/2022-09-27,6-7am/2022-09-28', '100/40', '144', '114', '2022-09-27 15:35:05', '2022-09-27 15:35:05'),
(12, '7-8am/2022-09-27,6-7am/2022-09-28,7-8am/2022-09-29', '50/20', '144', '114', '2022-09-27 15:35:17', '2022-09-27 15:35:17'),
(13, '7-8am/2022-09-27', '50/20', '144', '114', '2022-09-27 15:39:59', '2022-09-27 15:39:59'),
(14, '1-2pm/2022-09-28,1-2pm/2022-09-29', '200/40', '104', '114', '2022-09-27 15:40:50', '2022-09-27 15:40:50'),
(15, '2-3pm/2022-09-27', NULL, '104', '114', '2022-09-27 15:41:17', '2022-09-27 15:41:17'),
(16, '9-10pm/2022-09-27', NULL, '104', '114', '2022-09-27 15:41:33', '2022-09-27 15:41:33'),
(17, '7-8am/2022-09-27,6-7am/2022-09-28,7-8am/2022-09-29', '50/20', '144', '114', '2022-09-27 15:44:53', '2022-09-27 15:44:53'),
(18, '1-2pm/2022-09-28,1-2pm/2022-09-29', '100/20', '104', '114', '2022-09-28 07:54:50', '2022-09-28 07:54:50'),
(19, '2-3pm/2022-09-28,2-3pm/2022-09-29', '100/20', '104', '114', '2022-09-28 08:02:58', '2022-09-28 08:02:58'),
(20, '2-3pm/2022-09-29', '100/20', '104', '114', '2022-09-29 10:05:55', '2022-09-29 10:05:55'),
(21, '2-3pm/2022-09-29', '100/20', '104', '114', '2022-09-29 10:16:02', '2022-09-29 10:16:02'),
(22, '2-3pm/2022-09-29', '100/20', '104', '114', '2022-09-29 10:21:24', '2022-09-29 10:21:24'),
(23, '2-3pm/2022-09-29,2-3pm/2022-09-30', '100/20', '104', '152', '2022-09-29 10:23:30', '2022-09-29 10:23:30'),
(24, '2-3pm/2022-09-29,3-4pm/2022-09-29', '200/40', '104', '152', '2022-09-29 10:23:45', '2022-09-29 10:23:45'),
(25, '7-8am/2022-10-03,3-4pm/2022-10-03,5-6pm/2022-10-03', '1/40', '139', '154', '2022-10-03 15:02:51', '2022-10-03 15:02:51'),
(26, '1-2pm/2022-10-03,2-3pm/2022-10-03,3-4pm/2022-10-03', '4/40', '153', '154', '2022-10-03 15:06:12', '2022-10-03 15:06:12'),
(27, '1-2pm/2022-10-03,2-3pm/2022-10-03,3-4pm/2022-10-03', '4/60', '153', '154', '2022-10-03 15:09:02', '2022-10-03 15:09:02'),
(28, '8-9pm/2022-10-03,2-3pm/2022-10-04,3-4pm/2022-10-04', '200/40', '104', '114', '2022-10-03 15:10:09', '2022-10-03 15:10:09'),
(29, '9-10pm/2022-10-11,8-9am/2022-10-12', '300/20', '107', '114', '2022-10-11 10:25:58', '2022-10-11 10:25:58'),
(30, '3-4pm/2022-10-12', '1/20', '139', '142', '2022-10-12 13:50:05', '2022-10-12 13:50:05');

-- --------------------------------------------------------

--
-- Table structure for table `booking_time_slots`
--

CREATE TABLE `booking_time_slots` (
  `id` int(11) NOT NULL,
  `booking_id` text DEFAULT NULL,
  `meeting_date` date DEFAULT NULL,
  `meeting_time` time DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `business_model`
--

CREATE TABLE `business_model` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `business_model`
--

INSERT INTO `business_model` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'SaaS', '2022-07-13 10:18:28', '2022-07-13 10:18:28'),
(2, 'On Demand', '2022-07-13 10:18:28', '2022-07-13 10:18:28'),
(3, 'SMB', '2022-07-13 10:18:50', '2022-07-13 10:18:50'),
(4, 'B2B2C', '2022-07-13 10:18:50', '2022-07-13 10:18:50'),
(5, 'B2B', '2022-07-13 10:19:16', '2022-07-13 10:19:16'),
(6, 'B2C', '2022-07-13 10:19:16', '2022-07-13 10:19:16'),
(7, 'Marketplace', '2022-07-13 10:19:41', '2022-07-13 10:19:41'),
(8, 'Franchise', '2022-07-13 10:19:41', '2022-07-13 10:19:41'),
(9, 'Consulting', '2022-07-13 10:20:05', '2022-07-13 10:20:05'),
(10, 'Blockchain', '2022-07-13 10:20:05', '2022-07-13 10:20:05');

-- --------------------------------------------------------

--
-- Table structure for table `charity`
--

CREATE TABLE `charity` (
  `id` int(11) NOT NULL,
  `booking_id` text DEFAULT NULL,
  `coach_id` text DEFAULT NULL,
  `price` text DEFAULT NULL,
  `charity_amount` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coach_category`
--

CREATE TABLE `coach_category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `cat_img` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coach_category`
--

INSERT INTO `coach_category` (`id`, `categoryName`, `cat_img`, `created_at`, `updated_at`) VALUES
(15, 'demo', 'upload/category/3463801659437830.download.jpg', '2022-08-02 10:57:10', '2022-08-02 10:57:10');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `iso` char(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `nicename` varchar(80) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  `phonecode` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES
(1, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 4, 93),
(2, 'AL', 'ALBANIA', 'Albania', 'ALB', 8, 355),
(3, 'DZ', 'ALGERIA', 'Algeria', 'DZA', 12, 213),
(4, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 16, 1684),
(5, 'AD', 'ANDORRA', 'Andorra', 'AND', 20, 376),
(6, 'AO', 'ANGOLA', 'Angola', 'AGO', 24, 244),
(7, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', 660, 1264),
(8, 'AQ', 'ANTARCTICA', 'Antarctica', NULL, NULL, 0),
(9, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 28, 1268),
(10, 'AR', 'ARGENTINA', 'Argentina', 'ARG', 32, 54),
(11, 'AM', 'ARMENIA', 'Armenia', 'ARM', 51, 374),
(12, 'AW', 'ARUBA', 'Aruba', 'ABW', 533, 297),
(13, 'AU', 'AUSTRALIA', 'Australia', 'AUS', 36, 61),
(14, 'AT', 'AUSTRIA', 'Austria', 'AUT', 40, 43),
(15, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 31, 994),
(16, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', 44, 1242),
(17, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', 48, 973),
(18, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', 50, 880),
(19, 'BB', 'BARBADOS', 'Barbados', 'BRB', 52, 1246),
(20, 'BY', 'BELARUS', 'Belarus', 'BLR', 112, 375),
(21, 'BE', 'BELGIUM', 'Belgium', 'BEL', 56, 32),
(22, 'BZ', 'BELIZE', 'Belize', 'BLZ', 84, 501),
(23, 'BJ', 'BENIN', 'Benin', 'BEN', 204, 229),
(24, 'BM', 'BERMUDA', 'Bermuda', 'BMU', 60, 1441),
(25, 'BT', 'BHUTAN', 'Bhutan', 'BTN', 64, 975),
(26, 'BO', 'BOLIVIA', 'Bolivia', 'BOL', 68, 591),
(27, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 70, 387),
(28, 'BW', 'BOTSWANA', 'Botswana', 'BWA', 72, 267),
(29, 'BV', 'BOUVET ISLAND', 'Bouvet Island', NULL, NULL, 0),
(30, 'BR', 'BRAZIL', 'Brazil', 'BRA', 76, 55),
(31, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', NULL, NULL, 246),
(32, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 96, 673),
(33, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', 100, 359),
(34, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 854, 226),
(35, 'BI', 'BURUNDI', 'Burundi', 'BDI', 108, 257),
(36, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', 116, 855),
(37, 'CM', 'CAMEROON', 'Cameroon', 'CMR', 120, 237),
(38, 'CA', 'CANADA', 'Canada', 'CAN', 124, 1),
(39, 'CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 132, 238),
(40, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 136, 1345),
(41, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 140, 236),
(42, 'TD', 'CHAD', 'Chad', 'TCD', 148, 235),
(43, 'CL', 'CHILE', 'Chile', 'CHL', 152, 56),
(44, 'CN', 'CHINA', 'China', 'CHN', 156, 86),
(45, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', NULL, NULL, 61),
(46, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', NULL, NULL, 672),
(47, 'CO', 'COLOMBIA', 'Colombia', 'COL', 170, 57),
(48, 'KM', 'COMOROS', 'Comoros', 'COM', 174, 269),
(49, 'CG', 'CONGO', 'Congo', 'COG', 178, 242),
(50, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 180, 242),
(51, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 184, 682),
(52, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', 188, 506),
(53, 'CI', 'COTE D\'IVOIRE', 'Cote D\'Ivoire', 'CIV', 384, 225),
(54, 'HR', 'CROATIA', 'Croatia', 'HRV', 191, 385),
(55, 'CU', 'CUBA', 'Cuba', 'CUB', 192, 53),
(56, 'CY', 'CYPRUS', 'Cyprus', 'CYP', 196, 357),
(57, 'CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 203, 420),
(58, 'DK', 'DENMARK', 'Denmark', 'DNK', 208, 45),
(59, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 262, 253),
(60, 'DM', 'DOMINICA', 'Dominica', 'DMA', 212, 1767),
(61, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 214, 1809),
(62, 'EC', 'ECUADOR', 'Ecuador', 'ECU', 218, 593),
(63, 'EG', 'EGYPT', 'Egypt', 'EGY', 818, 20),
(64, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', 222, 503),
(65, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 226, 240),
(66, 'ER', 'ERITREA', 'Eritrea', 'ERI', 232, 291),
(67, 'EE', 'ESTONIA', 'Estonia', 'EST', 233, 372),
(68, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 231, 251),
(69, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 238, 500),
(70, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 234, 298),
(71, 'FJ', 'FIJI', 'Fiji', 'FJI', 242, 679),
(72, 'FI', 'FINLAND', 'Finland', 'FIN', 246, 358),
(73, 'FR', 'FRANCE', 'France', 'FRA', 250, 33),
(74, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 254, 594),
(75, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 258, 689),
(76, 'TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', NULL, NULL, 0),
(77, 'GA', 'GABON', 'Gabon', 'GAB', 266, 241),
(78, 'GM', 'GAMBIA', 'Gambia', 'GMB', 270, 220),
(79, 'GE', 'GEORGIA', 'Georgia', 'GEO', 268, 995),
(80, 'DE', 'GERMANY', 'Germany', 'DEU', 276, 49),
(81, 'GH', 'GHANA', 'Ghana', 'GHA', 288, 233),
(82, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 292, 350),
(83, 'GR', 'GREECE', 'Greece', 'GRC', 300, 30),
(84, 'GL', 'GREENLAND', 'Greenland', 'GRL', 304, 299),
(85, 'GD', 'GRENADA', 'Grenada', 'GRD', 308, 1473),
(86, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 312, 590),
(87, 'GU', 'GUAM', 'Guam', 'GUM', 316, 1671),
(88, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', 320, 502),
(89, 'GN', 'GUINEA', 'Guinea', 'GIN', 324, 224),
(90, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 624, 245),
(91, 'GY', 'GUYANA', 'Guyana', 'GUY', 328, 592),
(92, 'HT', 'HAITI', 'Haiti', 'HTI', 332, 509),
(93, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', NULL, NULL, 0),
(94, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 336, 39),
(95, 'HN', 'HONDURAS', 'Honduras', 'HND', 340, 504),
(96, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', 344, 852),
(97, 'HU', 'HUNGARY', 'Hungary', 'HUN', 348, 36),
(98, 'IS', 'ICELAND', 'Iceland', 'ISL', 352, 354),
(99, 'IN', 'INDIA', 'India', 'IND', 356, 91),
(100, 'ID', 'INDONESIA', 'Indonesia', 'IDN', 360, 62),
(101, 'IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', 364, 98),
(102, 'IQ', 'IRAQ', 'Iraq', 'IRQ', 368, 964),
(103, 'IE', 'IRELAND', 'Ireland', 'IRL', 372, 353),
(104, 'IL', 'ISRAEL', 'Israel', 'ISR', 376, 972),
(105, 'IT', 'ITALY', 'Italy', 'ITA', 380, 39),
(106, 'JM', 'JAMAICA', 'Jamaica', 'JAM', 388, 1876),
(107, 'JP', 'JAPAN', 'Japan', 'JPN', 392, 81),
(108, 'JO', 'JORDAN', 'Jordan', 'JOR', 400, 962),
(109, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 398, 7),
(110, 'KE', 'KENYA', 'Kenya', 'KEN', 404, 254),
(111, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', 296, 686),
(112, 'KP', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'Korea, Democratic People\'s Republic of', 'PRK', 408, 850),
(113, 'KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', 410, 82),
(114, 'KW', 'KUWAIT', 'Kuwait', 'KWT', 414, 965),
(115, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 417, 996),
(116, 'LA', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'Lao People\'s Democratic Republic', 'LAO', 418, 856),
(117, 'LV', 'LATVIA', 'Latvia', 'LVA', 428, 371),
(118, 'LB', 'LEBANON', 'Lebanon', 'LBN', 422, 961),
(119, 'LS', 'LESOTHO', 'Lesotho', 'LSO', 426, 266),
(120, 'LR', 'LIBERIA', 'Liberia', 'LBR', 430, 231),
(121, 'LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 434, 218),
(122, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 438, 423),
(123, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', 440, 370),
(124, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 442, 352),
(125, 'MO', 'MACAO', 'Macao', 'MAC', 446, 853),
(126, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807, 389),
(127, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', 450, 261),
(128, 'MW', 'MALAWI', 'Malawi', 'MWI', 454, 265),
(129, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', 458, 60),
(130, 'MV', 'MALDIVES', 'Maldives', 'MDV', 462, 960),
(131, 'ML', 'MALI', 'Mali', 'MLI', 466, 223),
(132, 'MT', 'MALTA', 'Malta', 'MLT', 470, 356),
(133, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 584, 692),
(134, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 474, 596),
(135, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', 478, 222),
(136, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', 480, 230),
(137, 'YT', 'MAYOTTE', 'Mayotte', NULL, NULL, 269),
(138, 'MX', 'MEXICO', 'Mexico', 'MEX', 484, 52),
(139, 'FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', 583, 691),
(140, 'MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', 498, 373),
(141, 'MC', 'MONACO', 'Monaco', 'MCO', 492, 377),
(142, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', 496, 976),
(143, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', 500, 1664),
(144, 'MA', 'MOROCCO', 'Morocco', 'MAR', 504, 212),
(145, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 508, 258),
(146, 'MM', 'MYANMAR', 'Myanmar', 'MMR', 104, 95),
(147, 'NA', 'NAMIBIA', 'Namibia', 'NAM', 516, 264),
(148, 'NR', 'NAURU', 'Nauru', 'NRU', 520, 674),
(149, 'NP', 'NEPAL', 'Nepal', 'NPL', 524, 977),
(150, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', 528, 31),
(151, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 530, 599),
(152, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 540, 687),
(153, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 554, 64),
(154, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', 558, 505),
(155, 'NE', 'NIGER', 'Niger', 'NER', 562, 227),
(156, 'NG', 'NIGERIA', 'Nigeria', 'NGA', 566, 234),
(157, 'NU', 'NIUE', 'Niue', 'NIU', 570, 683),
(158, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 574, 672),
(159, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 580, 1670),
(160, 'NO', 'NORWAY', 'Norway', 'NOR', 578, 47),
(161, 'OM', 'OMAN', 'Oman', 'OMN', 512, 968),
(162, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', 586, 92),
(163, 'PW', 'PALAU', 'Palau', 'PLW', 585, 680),
(164, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', NULL, NULL, 970),
(165, 'PA', 'PANAMA', 'Panama', 'PAN', 591, 507),
(166, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 598, 675),
(167, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', 600, 595),
(168, 'PE', 'PERU', 'Peru', 'PER', 604, 51),
(169, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', 608, 63),
(170, 'PN', 'PITCAIRN', 'Pitcairn', 'PCN', 612, 0),
(171, 'PL', 'POLAND', 'Poland', 'POL', 616, 48),
(172, 'PT', 'PORTUGAL', 'Portugal', 'PRT', 620, 351),
(173, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 630, 1787),
(174, 'QA', 'QATAR', 'Qatar', 'QAT', 634, 974),
(175, 'RE', 'REUNION', 'Reunion', 'REU', 638, 262),
(176, 'RO', 'ROMANIA', 'Romania', 'ROM', 642, 40),
(177, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 643, 70),
(178, 'RW', 'RWANDA', 'Rwanda', 'RWA', 646, 250),
(179, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 654, 290),
(180, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 659, 1869),
(181, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 662, 1758),
(182, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 666, 508),
(183, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 670, 1784),
(184, 'WS', 'SAMOA', 'Samoa', 'WSM', 882, 684),
(185, 'SM', 'SAN MARINO', 'San Marino', 'SMR', 674, 378),
(186, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 678, 239),
(187, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 682, 966),
(188, 'SN', 'SENEGAL', 'Senegal', 'SEN', 686, 221),
(189, 'CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', NULL, NULL, 381),
(190, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', 690, 248),
(191, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 694, 232),
(192, 'SG', 'SINGAPORE', 'Singapore', 'SGP', 702, 65),
(193, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', 703, 421),
(194, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', 705, 386),
(195, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 90, 677),
(196, 'SO', 'SOMALIA', 'Somalia', 'SOM', 706, 252),
(197, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 710, 27),
(198, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', NULL, NULL, 0),
(199, 'ES', 'SPAIN', 'Spain', 'ESP', 724, 34),
(200, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 144, 94),
(201, 'SD', 'SUDAN', 'Sudan', 'SDN', 736, 249),
(202, 'SR', 'SURINAME', 'Suriname', 'SUR', 740, 597),
(203, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 744, 47),
(204, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 748, 268),
(205, 'SE', 'SWEDEN', 'Sweden', 'SWE', 752, 46),
(206, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', 756, 41),
(207, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 760, 963),
(208, 'TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', 158, 886),
(209, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 762, 992),
(210, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', 834, 255),
(211, 'TH', 'THAILAND', 'Thailand', 'THA', 764, 66),
(212, 'TL', 'TIMOR-LESTE', 'Timor-Leste', NULL, NULL, 670),
(213, 'TG', 'TOGO', 'Togo', 'TGO', 768, 228),
(214, 'TK', 'TOKELAU', 'Tokelau', 'TKL', 772, 690),
(215, 'TO', 'TONGA', 'Tonga', 'TON', 776, 676),
(216, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 780, 1868),
(217, 'TN', 'TUNISIA', 'Tunisia', 'TUN', 788, 216),
(218, 'TR', 'TURKEY', 'Turkey', 'TUR', 792, 90),
(219, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 795, 7370),
(220, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 796, 1649),
(221, 'TV', 'TUVALU', 'Tuvalu', 'TUV', 798, 688),
(222, 'UG', 'UGANDA', 'Uganda', 'UGA', 800, 256),
(223, 'UA', 'UKRAINE', 'Ukraine', 'UKR', 804, 380),
(224, 'AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 784, 971),
(225, 'GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 826, 44),
(226, 'US', 'UNITED STATES', 'United States', 'USA', 840, 1),
(227, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', NULL, NULL, 1),
(228, 'UY', 'URUGUAY', 'Uruguay', 'URY', 858, 598),
(229, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 860, 998),
(230, 'VU', 'VANUATU', 'Vanuatu', 'VUT', 548, 678),
(231, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', 862, 58),
(232, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', 704, 84),
(233, 'VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', 92, 1284),
(234, 'VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', 850, 1340),
(235, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 876, 681),
(236, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 732, 212),
(237, 'YE', 'YEMEN', 'Yemen', 'YEM', 887, 967),
(238, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', 894, 260),
(239, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716, 263);

-- --------------------------------------------------------

--
-- Table structure for table `expertise`
--

CREATE TABLE `expertise` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `expertise`
--

INSERT INTO `expertise` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Marketing & Branding', '2022-07-13 10:07:55', '2022-07-13 10:07:55'),
(2, 'Product ', '2022-07-13 10:07:55', '2022-07-13 10:07:55'),
(3, 'Sales', '2022-07-13 10:08:30', '2022-07-13 10:08:30'),
(4, 'Customer Experience', '2022-07-13 10:08:30', '2022-07-13 10:08:30'),
(5, 'Software', '2022-07-13 10:09:20', '2022-07-13 10:09:20'),
(6, 'Leadership', '2022-07-13 10:09:20', '2022-07-13 10:09:20'),
(7, 'Fundraising', '2022-07-13 10:09:42', '2022-07-13 10:09:42'),
(8, 'Investment', '2022-07-13 10:09:42', '2022-07-13 10:09:42'),
(9, 'Operations', '2022-07-13 10:10:07', '2022-07-13 10:10:07'),
(10, 'Business Development', '2022-07-13 10:10:07', '2022-07-13 10:10:07'),
(11, 'HR & Culture', '2022-07-13 10:10:18', '2022-07-13 10:10:18');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `descp` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `title`, `descp`, `type`, `created_at`, `updated_at`) VALUES
(6, 'How long does it take for my profile to be approved?', 'We’ve implemented a couple of approval steps in the signup process, for quality insurance reasons. Generally the process goes like this: You must first apply to become an advisor, once your application is approved by our team, you will need to fill out your profile information, and then have it approved by our team again. Once that has happened, we’ll notify you and set your profile live within 7 business days.', 'coach', '2022-08-30 08:13:29', '2022-08-30 08:13:29'),
(7, 'How do I get lots of bookings on Zentia?', 'There’s multiple options. Here’s a few for starters: \r\n1.) We will market the Zentia platform and our advisors, to create demand, but you can also take steps yourself to further boost demand for your profile.\r\n2.) We recommend you add to your Linkedin resume that you’re an ‘Advisor’ at ‘Zentia Inc.’ and add a direct link to your Zentia profile, to make it easy for people, who visit your Linkedin, to book a session with you. \r\n3.) You can also let your Linkedin, Instagram, Youtube, TikTok (you name it) network know that they can now book a session with you by creating content about subjects you advise within + share a link to your Zentia profile.', 'coach', '2022-08-30 08:13:45', '2022-08-30 08:13:45'),
(8, 'What do I charge for my time?', 'It’s totally up to you. We recommend you define your prices based on what makes sense in your case. The important thing is that you feel you’re being compensated fairly for your time spent on advising. Remember, you can always change and adjust your prices.', 'coach', '2022-08-30 08:14:03', '2022-08-30 08:14:03'),
(9, 'Can I be selective about my meetings?', 'Yes. You will always receive a booking request with the other person’s name and a short message from them describing what they would like to talk to you about. Based on that information, you can decide to either approve or decline the booking request. \r\nIf, for some reason, the timing isn’t right, you can also suggest a different time for the meeting.', 'coach', '2022-08-30 08:14:16', '2022-08-30 08:14:16'),
(10, 'I’ve accepted a meeting, what do I do now?', 'You will receive emails explaining the process step-by-step, but here’s what happens:\r\n1.) Once you’ve accepted a meeting request, the user will have 24 hours to pay for the booking. Once the payment has been done, the booking is confirmed.\r\n2.)  Once the booking is paid and confirmed, a calendar invite will be generated and sent to both parties by email.\r\n3.) The meeting will take place in a video room, on the Zentia platform. You will find this room by clicking the section ‘Join Meeting’ in your Advisor Panel. \r\n4.) We strongly recommend doing the meeting from your laptop, because the experience for both parties is so much better that way.\r\n5.) In case a meeting goes really well and both participants wish to extend the meeting, they will be able to do so in the call. The user will have the option to extend the meeting with either 20 minutes, 40 minutes or 60 minutes and an additional payment request will appear on their side. \r\n6.) When the meeting ends, the user will be asked to do a review and rating of the session.', 'coach', '2022-08-30 08:14:31', '2022-08-30 08:14:31'),
(11, 'How do I get my earnings paid out?', 'In your Advisor Panel, you will see the section called: ‘Payments’. In ‘Payments’ you can request a payout of your earnings. Please be aware that you can not request a payout of less than US $100, so please make sure your account holds more than US $100 before making a payout request.', 'coach', '2022-08-30 08:14:45', '2022-08-30 08:14:45'),
(12, 'How long does it take for my earnings to arrive in my account?', 'Once you’ve requested a payout, Zentia will execute it within 7 business days. Zentia is a US based company, so advisors based in Europe might experience a bit of extra processing time from our payments partner in some cases. If you have questions regarding a payout, please contact info@zentio.io', 'coach', '2022-08-30 08:15:03', '2022-08-30 08:15:03'),
(13, 'Does Zentia charge any fees?', 'Zentia charges a 25% booking fee for every processed booking payment, which helps us cover some of the transaction expenses, potential exchange fees, platform maintenance, development, marketing and sales, salaries etc. \r\nWe recommend you take this into consideration when defining your prices and add 25% to the price you would normally charge for your time.', 'coach', '2022-08-30 08:15:16', '2022-08-30 08:15:16'),
(14, 'I want to donate my earnings to charity. How do I do that?', 'You have two options: \r\n1.) You can choose to pay out your earnings, made on bookings, to yourself and donate it to a charity of your choice.\r\n2.) You can choose the ‘Donate’ option on the specific booking transaction, which means the money will be transferred to Zentia’s donation account. We badge all of these donations - and once a month we will choose a cause/charity to donate to. As an advisor, you can influence what charity/cause we donate to, by sending a suggestion to donation@zentia.io on a monthly basis.', 'coach', '2022-08-30 08:15:34', '2022-08-30 08:15:34'),
(15, 'How do I find the right advisor for my needs?', 'We recommend looking at the different categories, industries and expertise areas on the Discover side. On this page, you can also do specific searches for advisors based on their names etc.\r\nOnce you’ve found an appealing advisor, you can read more about them, their experience and expertise on their individual profile.', 'user', '2022-08-30 08:19:23', '2022-08-30 08:19:23'),
(16, 'What questions can I ask an advisor?', 'We recommend you have a read on the advisor’s profile, to see what their expertise is. Once you’ve found an advisor matching your needs, you can request a meeting and add a message to the advisor describing what areas you would like to receive advice within.', 'user', '2022-08-30 08:19:37', '2022-08-30 08:19:37'),
(17, 'How do I get my booking request approved by the advisor?', 'When requesting a meeting with an advisor, we strongly recommend that you include a small message in your booking request, including the subjects you want to get their advice on during the session. This makes it easy for the advisor to evaluate whether they’re able to help you.', 'user', '2022-08-30 08:19:52', '2022-08-30 08:19:52'),
(18, 'What if we need more time in the session?', 'In some cases a meeting might be going really well - and both parties want to extend the meeting. Please ask the advisor on the call and make sure they have time. If they do, you can purchase either 20 minutes, 40 minutes or 60 minutes extra time, directly in the Meeting room.', 'user', '2022-08-30 08:20:05', '2022-08-30 08:20:05'),
(19, 'How do I join a meeting?', 'First off, we strongly recommend doing meetings from your laptop, because it’s just a much better experience for both parties. We also recommend you login to your Zentia profile a few minutes before the meeting is about to start. Click the ‘Join Meeting’ section in your navigation panel and you will then enter the video room. Once the meeting is about to start, you will be able to join.', 'user', '2022-08-30 08:20:19', '2022-08-30 08:20:19'),
(20, 'I want to book an advisor, who’s not on the Zentia platform', 'If you wish to book a person, who’s not currently an advisor on Zentia, please send us an email at info@zentia.io and let us know who would like for us to invite to the platform, and we’ll try our best to get the person onboard.', 'user', '2022-08-30 08:20:33', '2022-08-30 08:20:33');

-- --------------------------------------------------------

--
-- Table structure for table `industry`
--

CREATE TABLE `industry` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `industry`
--

INSERT INTO `industry` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Finance and Insurance', '2022-07-13 10:16:33', '2022-07-13 10:16:33'),
(2, 'Venture Capital & Investments', '2022-07-13 10:16:33', '2022-07-13 10:16:33'),
(3, 'Technology', '2022-07-13 10:16:48', '2022-07-13 10:16:48'),
(4, 'Healthcare', '2022-07-13 10:16:48', '2022-07-13 10:16:48'),
(5, 'Retail', '2022-07-13 10:17:18', '2022-07-13 10:17:18'),
(6, 'Construction', '2022-07-13 10:17:18', '2022-07-13 10:17:18'),
(7, 'Agriculture', '2022-07-13 10:17:33', '2022-07-13 10:17:33'),
(8, 'Arts & Entertainment', '2022-07-13 10:17:33', '2022-07-13 10:17:33'),
(9, 'Manufacturing', '2022-07-13 10:17:46', '2022-07-13 10:17:46');

-- --------------------------------------------------------

--
-- Table structure for table `master_catdata`
--

CREATE TABLE `master_catdata` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'coach',
  `type_id` varchar(255) DEFAULT NULL,
  `create_at` varchar(255) NOT NULL DEFAULT current_timestamp(),
  `updated_at` varchar(255) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `master_catdata`
--

INSERT INTO `master_catdata` (`id`, `name`, `type`, `role`, `type_id`, `create_at`, `updated_at`) VALUES
(12, 'Marketing & Branding', 'Expertise', 'coach', '1', '2022-07-23 16:28:42', '2022-07-23 16:28:42'),
(13, 'Product', 'Expertise', 'coach', '1', '2022-07-23 16:28:51', '2022-07-23 16:28:51'),
(14, 'Sales', 'Expertise', 'coach', '1', '2022-07-23 16:29:00', '2022-07-23 16:29:00'),
(15, 'Customer Experience', 'Expertise', 'coach', '1', '2022-07-23 16:29:07', '2022-07-23 16:29:07'),
(16, 'Software', 'Expertise', 'coach', '1', '2022-07-23 16:29:14', '2022-07-23 16:29:14'),
(17, 'Leadership', 'Expertise', 'coach', '1', '2022-07-23 16:29:21', '2022-07-23 16:29:21'),
(18, 'Fundraising', 'Expertise', 'coach', '1', '2022-07-23 16:30:47', '2022-07-23 16:30:47'),
(19, 'Investment', 'Expertise', 'coach', '1', '2022-07-23 16:30:52', '2022-07-23 16:30:52'),
(20, 'Operations', 'Expertise', 'coach', '1', '2022-07-23 16:31:00', '2022-07-23 16:31:00'),
(21, 'Business Development', 'Expertise', 'coach', '1', '2022-07-23 16:31:07', '2022-07-23 16:31:07'),
(22, 'HR & Culture', 'Expertise', 'coach', '1', '2022-07-23 16:31:19', '2022-07-23 16:31:19'),
(23, 'Head of', 'Seniority', 'coach', '2', '2022-07-23 16:31:37', '2022-07-23 16:31:37'),
(24, 'Director', 'Seniority', 'coach', '2', '2022-07-23 16:31:45', '2022-07-23 16:31:45'),
(25, 'Senior Director', 'Seniority', 'coach', '2', '2022-07-23 16:31:55', '2022-07-23 16:31:55'),
(26, 'VP', 'Seniority', 'coach', '2', '2022-07-23 16:32:09', '2022-07-23 16:32:09'),
(27, 'SVP', 'Seniority', 'coach', '2', '2022-07-23 16:32:21', '2022-07-23 16:32:21'),
(28, 'C-level', 'Seniority', 'coach', '2', '2022-07-23 16:32:28', '2022-07-23 16:32:28'),
(29, 'Partner', 'Seniority', 'coach', '2', '2022-07-23 16:32:34', '2022-07-23 16:32:34'),
(30, 'Founder', 'Seniority', 'coach', '2', '2022-07-23 16:32:40', '2022-07-23 16:32:40'),
(31, 'Board Member', 'Seniority', 'coach', '2', '2022-07-23 16:32:46', '2022-07-23 16:32:46'),
(32, 'Chairperson', 'Seniority', 'coach', '2', '2022-07-23 16:32:51', '2022-07-23 16:32:51'),
(33, 'Investor', 'Seniority', 'coach', '2', '2022-07-23 16:32:58', '2022-07-23 16:32:58'),
(34, 'Finance and Insurance', 'Industry', 'coach', '3', '2022-07-23 16:33:19', '2022-07-23 16:33:19'),
(35, 'Venture Capital & Investments', 'Industry', 'coach', '3', '2022-07-23 16:33:26', '2022-07-23 16:33:26'),
(36, 'Technology', 'Industry', 'coach', '3', '2022-07-23 16:33:32', '2022-07-23 16:33:32'),
(37, 'Healthcare', 'Industry', 'coach', '3', '2022-07-23 16:33:38', '2022-07-23 16:33:38'),
(38, 'Retail', 'Industry', 'coach', '3', '2022-07-23 16:33:44', '2022-07-23 16:33:44'),
(39, 'Construction', 'Industry', 'coach', '3', '2022-07-23 16:33:50', '2022-07-23 16:33:50'),
(40, 'Agriculture', 'Industry', 'coach', '3', '2022-07-23 16:33:55', '2022-07-23 16:33:55'),
(41, 'Arts & Entertainment', 'Industry', 'coach', '3', '2022-07-23 16:34:00', '2022-07-23 16:34:00'),
(42, 'Manufacturing', 'Industry', 'coach', '3', '2022-07-23 16:34:07', '2022-07-23 16:34:07'),
(43, 'SaaS', 'Business Model', 'coach', '4', '2022-07-23 16:34:18', '2022-07-23 16:34:18'),
(44, 'On Demand', 'Business Model', 'coach', '4', '2022-07-23 16:34:24', '2022-07-23 16:34:24'),
(45, 'SMB', 'Business Model', 'coach', '4', '2022-07-23 16:34:30', '2022-07-23 16:34:30'),
(46, 'B2B2C', 'Business Model', 'coach', '4', '2022-07-23 16:34:36', '2022-07-23 16:34:36'),
(47, 'B2B', 'Business Model', 'coach', '4', '2022-07-23 16:34:45', '2022-07-23 16:34:45'),
(48, 'B2C', 'Business Model', 'coach', '4', '2022-07-23 16:34:52', '2022-07-23 16:34:52'),
(49, 'Marketplace', 'Business Model', 'coach', '4', '2022-07-23 16:34:58', '2022-07-23 16:34:58'),
(50, 'Franchise', 'Business Model', 'coach', '4', '2022-07-23 16:35:03', '2022-07-23 16:35:03'),
(51, 'Consulting', 'Business Model', 'coach', '4', '2022-07-23 16:35:10', '2022-07-23 16:35:10'),
(52, 'Blockchain', 'Business Model', 'coach', '4', '2022-07-23 16:35:16', '2022-07-23 16:35:16'),
(54, 'Associate', 'Seniority', 'user', '2', '2022-08-01 08:50:27', '2022-08-01 08:50:27'),
(55, 'Manager', 'Seniority', 'user', '2', '2022-08-01 08:50:39', '2022-08-01 08:50:39');

-- --------------------------------------------------------

--
-- Table structure for table `master_category`
--

CREATE TABLE `master_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `create_at` varchar(255) NOT NULL DEFAULT current_timestamp(),
  `updated_at` varchar(255) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `master_category`
--

INSERT INTO `master_category` (`id`, `name`, `create_at`, `updated_at`) VALUES
(1, 'Expertise', '2022-07-23 16:28:06', '2022-07-23 16:28:06'),
(2, 'Seniority', '2022-07-23 16:28:13', '2022-07-23 16:28:13'),
(3, 'Industry', '2022-07-23 16:28:19', '2022-07-23 16:28:19'),
(4, 'Business Model', '2022-07-23 16:28:24', '2022-07-23 16:28:24');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `notification_msg` text DEFAULT NULL,
  `url` text DEFAULT NULL,
  `status` enum('unseen','seen') NOT NULL DEFAULT 'unseen',
  `page` text DEFAULT NULL,
  `admin_status` enum('unseen','seen') NOT NULL DEFAULT 'unseen',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `user_id`, `sender_id`, `notification_msg`, `url`, `status`, `page`, `admin_status`, `created_at`, `updated_at`) VALUES
(1, 104, 114, 'Incoming meeting request.', 'coach-booking', 'seen', 'booking', 'seen', '2022-08-29 09:16:06', '2022-08-29 15:29:10'),
(2, 114, 104, 'Complete booking payment within 12 hours.', 'user-booking', 'seen', 'booking', 'seen', '2022-08-29 09:29:36', '2022-08-29 15:29:10'),
(3, 104, 114, 'Yay! Booking confirmed.', 'coach-booking', 'seen', 'booking', 'seen', '2022-08-29 09:38:18', '2022-08-29 15:29:10'),
(4, 104, 114, 'Incoming meeting request frompp.', 'coach-booking', 'seen', 'booking', 'seen', '2022-08-29 12:20:34', '2022-08-29 15:29:10'),
(5, 114, 104, 'Complete booking payment within 12 hours meeting availability confirm fromRaj.', 'user-booking', 'seen', 'booking', 'seen', '2022-08-29 12:22:17', '2022-08-29 13:34:02'),
(6, 104, 114, 'Yay! Booking confirmed.', 'coach-booking', 'seen', NULL, 'seen', '2022-08-29 12:23:57', '2022-08-29 15:17:36'),
(7, 104, 114, 'Yay! Booking confirmed from pp.', 'coach-booking', 'seen', 'booking', 'seen', '2022-08-29 12:27:13', '2022-08-29 13:20:55'),
(8, 104, 114, 'Yay! Booking confirmed from pp.', 'coach-booking', 'seen', 'booking', 'seen', '2022-08-29 12:41:12', '2022-08-29 13:20:49'),
(9, 114, 104, 'Payment sent to Raj.', 'user-transaction', 'seen', 'transaction', 'seen', '2022-08-29 12:41:12', '2022-08-29 13:32:53'),
(10, 1, 133, 'User( test ) register on your site. ', 'admin-users', 'unseen', 'user', 'seen', '2022-08-29 13:50:58', '2022-08-29 14:52:00'),
(11, 104, 114, 'Meeting done with pp,now you can request for transaction.', 'user-transaction', 'seen', 'transaction', 'seen', '2022-08-29 14:15:54', '2022-08-29 15:17:25'),
(12, 1, 104, 'Coach( Raj ) updated his profile. ', 'admin-coach-list', 'unseen', 'coach', 'seen', '2022-08-29 15:11:57', '2022-08-29 15:12:07'),
(13, 104, 114, 'Meeting done with pp,now you can request for transaction.', 'user-transaction', 'seen', 'transaction', 'seen', '2022-08-30 13:14:53', '2022-09-01 07:54:35'),
(14, 104, 114, 'Incoming meeting request from pp.', 'coach-booking', 'seen', 'booking', 'seen', '2022-08-30 13:22:09', '2022-09-01 07:54:28'),
(15, 114, 104, 'Complete booking payment within 12 hours meeting availability confirm from Raj.', 'user-booking', 'seen', 'booking', 'seen', '2022-08-30 13:23:03', '2022-09-01 07:54:28'),
(16, 104, 114, 'Yay! Booking confirmed from pp.', 'coach-booking', 'seen', 'booking', 'seen', '2022-08-30 13:23:31', '2022-09-01 07:54:28'),
(17, 114, 104, 'Payment sent to Raj.', 'user-transaction', 'seen', 'transaction', 'seen', '2022-08-30 13:23:31', '2022-09-01 07:54:35'),
(18, 104, 114, 'Incoming meeting request from pp.', 'coach-booking', 'seen', 'booking', 'seen', '2022-08-30 13:24:53', '2022-09-01 07:54:28'),
(19, 114, 104, 'Complete booking payment within 12 hours meeting availability confirm from Raj.', 'user-booking', 'seen', 'booking', 'seen', '2022-08-30 13:25:03', '2022-09-01 07:54:28'),
(20, 114, 104, 'Complete booking payment within 12 hours meeting availability confirm from Raj.', 'user-booking', 'seen', 'booking', 'seen', '2022-08-30 13:25:04', '2022-09-01 07:54:28'),
(21, 104, 114, 'Yay! Booking confirmed from pp.', 'coach-booking', 'seen', 'booking', 'seen', '2022-08-30 13:25:24', '2022-09-01 07:54:28'),
(22, 114, 104, 'Payment sent to Raj.', 'user-transaction', 'seen', 'transaction', 'seen', '2022-08-30 13:25:24', '2022-09-01 07:54:35'),
(23, 104, 114, 'Yay! Booking confirmed from pp.', 'coach-booking', 'seen', 'booking', 'seen', '2022-08-30 13:25:24', '2022-09-01 07:54:28'),
(24, 114, 104, 'Payment sent to Raj.', 'user-transaction', 'seen', 'transaction', 'seen', '2022-08-30 13:25:24', '2022-09-01 07:54:35'),
(25, 104, 114, 'Incoming meeting request from pp.', 'coach-booking', 'seen', 'booking', 'seen', '2022-08-30 14:56:26', '2022-09-01 07:54:28'),
(26, 114, 104, 'Complete booking payment within 12 hours meeting availability confirm from Raj.', 'user-booking', 'seen', 'booking', 'seen', '2022-08-30 14:57:42', '2022-09-01 07:54:28'),
(27, 1, 134, 'User( pku ) register on your site. ', 'admin-users', 'unseen', 'user', 'seen', '2022-08-31 12:35:17', '2022-08-31 12:38:01'),
(28, 1, 104, 'Coach( Raj ) send withdrawl request. ', 'coach-transaction', 'unseen', 'transaction', 'seen', '2022-09-01 10:03:21', '2022-09-01 10:03:30'),
(29, 104, 1, 'Pyament Request Approved', 'coach-transaction', 'seen', 'transaction', 'seen', '2022-09-01 10:04:48', '2022-09-01 10:08:37'),
(30, 1, 135, 'Coach( Maiken Paaske ) register on your site. ', 'admin-coach-list', 'unseen', 'coach', 'seen', '2022-09-01 11:47:58', '2022-09-01 12:07:54'),
(31, 1, 135, 'Coach( Maiken Paaske ) updated his profile. ', 'admin-coach-list', 'unseen', 'coach', 'seen', '2022-09-01 12:23:18', '2022-09-01 12:23:45'),
(32, 1, 136, 'Coach( Maiken Paaske ) register on your site. ', 'admin-coach-list', 'unseen', 'coach', 'seen', '2022-09-01 12:30:51', '2022-09-01 12:31:17'),
(33, 1, 104, 'Coach( Raj ) updated his profile. ', 'admin-coach-list', 'unseen', 'coach', 'seen', '2022-09-01 13:58:06', '2022-09-01 15:31:50'),
(34, 1, 137, 'Coach( Maiken Paaske ) register on your site. ', 'admin-coach-list', 'unseen', 'coach', 'seen', '2022-09-01 16:05:31', '2022-09-01 16:16:47'),
(35, 1, 138, 'Coach( Maiken ) register on your site. ', 'admin-coach-list', 'unseen', 'coach', 'seen', '2022-09-01 16:15:49', '2022-09-01 16:16:47'),
(36, 1, 139, 'Coach( Maiken Paaske ) register on your site. ', 'admin-coach-list', 'unseen', 'coach', 'seen', '2022-09-01 16:18:24', '2022-09-01 16:18:32'),
(37, 1, 139, 'Coach( Maiken Paaske ) updated his profile. ', 'admin-coach-list', 'unseen', 'coach', 'seen', '2022-09-01 16:29:18', '2022-09-01 16:31:00'),
(38, 104, 114, 'Meeting done with pp,now youRaj can request for transaction.', 'user-transaction', 'seen', 'transaction', 'seen', '2022-09-01 16:29:37', '2022-09-02 12:49:59'),
(39, 106, 114, 'Meeting done with pp,now youmaikan can request for transaction.', 'user-transaction', 'unseen', 'transaction', 'seen', '2022-09-01 16:30:23', '2022-09-01 16:31:47'),
(40, 1, 140, 'Coach( in ) register on your site. ', 'admin-coach-list', 'unseen', 'coach', 'seen', '2022-09-02 08:26:28', '2022-09-02 08:28:53'),
(41, 1, 140, 'Coach( in ) updated his profile. ', 'admin-coach-list', 'unseen', 'coach', 'seen', '2022-09-02 08:31:41', '2022-09-02 08:32:06'),
(42, 103, 114, 'Meeting done with pp,now youpragya chouhan can request for transaction.', 'user-transaction', 'unseen', 'transaction', 'seen', '2022-09-02 08:59:34', '2022-09-02 12:45:30'),
(43, 104, 114, 'Meeting done with pp,now youRaj can request for transaction.', 'user-transaction', 'seen', 'transaction', 'seen', '2022-09-02 09:04:38', '2022-09-02 12:49:59'),
(44, 1, 141, 'User( Maiken Paaske ) register on your site. ', 'admin-users', 'unseen', 'user', 'seen', '2022-09-02 10:05:30', '2022-09-02 10:10:44'),
(45, 1, 142, 'User( Maiken Paaske ) register on your site. ', 'admin-users', 'unseen', 'user', 'seen', '2022-09-02 10:12:00', '2022-09-02 12:29:12'),
(46, 139, 142, 'Incoming meeting request from Maiken Paaske.', 'coach-booking', 'seen', 'booking', 'seen', '2022-09-02 10:14:25', '2022-09-02 12:45:19'),
(47, 142, 139, 'Complete booking payment within 12 hours meeting availability confirm from Maiken Paaske.', 'user-booking', 'seen', 'booking', 'seen', '2022-09-02 10:16:07', '2022-09-02 12:45:19'),
(48, 1, 143, 'Coach( atul ) register on your site. ', 'admin-coach-list', 'unseen', 'coach', 'seen', '2022-09-02 12:42:06', '2022-09-02 12:55:18'),
(49, 1, 144, 'Coach( Dbsharukh ) register on your site. ', 'admin-coach-list', 'unseen', 'coach', 'seen', '2022-09-02 12:54:06', '2022-09-02 12:55:18'),
(50, 1, 144, 'Coach( Dbsharukh ) updated his profile. ', 'admin-coach-list', 'unseen', 'coach', 'seen', '2022-09-02 13:01:02', '2022-09-02 13:02:28'),
(51, 1, 145, 'User( Pragya ) register on your site. ', 'admin-users', 'unseen', 'user', 'seen', '2022-09-02 13:06:52', '2022-09-05 09:52:11'),
(52, 144, 145, 'Incoming meeting request from Pragya.', 'coach-booking', 'seen', 'booking', 'seen', '2022-09-02 13:08:01', '2022-09-06 08:10:16'),
(53, 145, 144, 'Complete booking payment within 12 hours meeting availability confirm from Dbsharukh.', 'user-booking', 'seen', 'booking', 'seen', '2022-09-02 13:08:45', '2022-09-06 08:10:16'),
(54, 144, 145, 'Yay! Booking confirmed from Pragya.', 'coach-booking', 'seen', 'booking', 'seen', '2022-09-02 13:09:56', '2022-09-06 08:10:16'),
(55, 145, 144, 'Payment sent to Dbsharukh.', 'user-transaction', 'seen', 'transaction', 'seen', '2022-09-02 13:09:56', '2022-09-02 13:22:14'),
(56, 144, 145, 'Meeting done with Pragya,now youDbsharukh can request for transaction.', 'user-transaction', 'seen', 'transaction', 'seen', '2022-09-02 13:16:39', '2022-09-02 13:22:14'),
(57, 1, 144, 'Coach( Dbsharukh ) send withdrawl request. ', 'coach-transaction', 'unseen', 'transaction', 'seen', '2022-09-02 13:20:11', '2022-09-02 13:22:14'),
(58, 1, 144, 'Coach( Dbsharukh ) send withdrawl request. ', 'coach-transaction', 'unseen', 'transaction', 'seen', '2022-09-02 13:25:04', '2022-09-02 13:25:20'),
(59, 144, 1, 'Rejected', 'coach-transaction', 'seen', 'transaction', 'seen', '2022-09-02 13:31:02', '2022-09-02 14:21:10'),
(60, 104, 114, 'Meeting done with pp,now youRaj can request for transaction.', 'user-transaction', 'seen', 'transaction', 'seen', '2022-09-02 13:59:51', '2022-09-05 10:32:43'),
(61, 1, 144, 'Coach( Dbsharukh ) send withdrawl request. ', 'coach-transaction', 'unseen', 'transaction', 'seen', '2022-09-02 14:21:20', '2022-09-02 14:21:57'),
(62, 144, 1, 'Rejected', 'coach-transaction', 'seen', 'transaction', 'seen', '2022-09-02 14:22:18', '2022-09-02 14:23:20'),
(63, 1, 144, 'Coach( Dbsharukh ) send withdrawl request. ', 'coach-transaction', 'unseen', 'transaction', 'seen', '2022-09-02 14:22:59', '2022-09-02 14:23:20'),
(64, 144, 1, 'Approved', 'coach-transaction', 'unseen', 'transaction', 'seen', '2022-09-02 14:23:35', '2022-09-06 08:10:23'),
(65, 139, 142, 'Incoming meeting request from Maiken Paaske.', 'coach-booking', 'unseen', 'booking', 'seen', '2022-09-04 13:05:33', '2022-09-06 08:10:16'),
(66, 106, 114, 'Incoming meeting request from pp.', 'coach-booking', 'unseen', 'booking', 'seen', '2022-09-05 10:22:28', '2022-09-06 08:10:16'),
(67, 1, 146, 'Coach( test ) register on your site. ', 'admin-coach-list', 'unseen', 'coach', 'seen', '2022-09-05 15:20:42', '2022-09-05 16:22:51'),
(68, 1, 147, 'User( zen ) register on your site. ', 'admin-users', 'unseen', 'user', 'seen', '2022-09-05 15:35:19', '2022-09-06 07:46:29'),
(69, 1, 148, 'Coach( tere ) register on your site. ', 'admin-coach-list', 'unseen', 'coach', 'seen', '2022-09-06 16:12:32', '2022-10-03 13:03:25'),
(70, 104, 114, 'Yay! Booking confirmed from pp.', 'coach-booking', 'seen', 'booking', 'seen', '2022-09-07 09:46:13', '2022-10-12 13:53:50'),
(71, 114, 104, 'Payment sent to Raj.', 'user-transaction', 'seen', 'transaction', 'seen', '2022-09-07 09:46:13', '2022-10-12 13:53:53'),
(72, 104, 114, 'Meeting done with pp,now youRaj can request for transaction.', 'user-transaction', 'seen', 'transaction', 'seen', '2022-09-08 10:22:35', '2022-10-12 13:53:53'),
(73, 104, 114, 'Meeting done with pp,now youRaj can request for transaction.', 'user-transaction', 'seen', 'transaction', 'seen', '2022-09-08 10:22:55', '2022-10-12 13:53:53'),
(74, 104, 114, 'Meeting done with pp,now youRaj can request for transaction.', 'user-transaction', 'seen', 'transaction', 'seen', '2022-09-08 10:23:39', '2022-10-12 13:53:53'),
(75, 114, 103, 'Complete booking payment within 12 hours meeting availability confirm from pragya chouhan.', 'user-booking', 'seen', 'booking', 'seen', '2022-09-08 15:23:31', '2022-10-12 13:53:50'),
(76, 103, 114, 'Yay! Booking confirmed from pp.', 'coach-booking', 'unseen', 'booking', 'seen', '2022-09-08 15:25:35', '2022-10-12 13:53:50'),
(77, 114, 103, 'Payment sent to pragya chouhan.', 'user-transaction', 'seen', 'transaction', 'seen', '2022-09-08 15:25:35', '2022-10-12 13:53:53'),
(78, 103, 114, 'Yay! Booking confirmed from pp.', 'coach-booking', 'unseen', 'booking', 'seen', '2022-09-08 15:27:37', '2022-10-12 13:53:50'),
(79, 114, 103, 'Payment sent to pragya chouhan.', 'user-transaction', 'seen', 'transaction', 'seen', '2022-09-08 15:27:37', '2022-10-12 13:53:53'),
(80, 103, 114, 'Yay! Booking confirmed from pp.', 'coach-booking', 'unseen', 'booking', 'seen', '2022-09-08 15:35:35', '2022-10-12 13:53:50'),
(81, 114, 103, 'Payment sent to pragya chouhan.', 'user-transaction', 'seen', 'transaction', 'seen', '2022-09-08 15:35:35', '2022-10-12 13:53:53'),
(82, 104, 114, 'Yay! Booking confirmed from pp.', 'coach-booking', 'seen', 'booking', 'seen', '2022-09-16 09:34:13', '2022-10-12 13:53:50'),
(83, 114, 104, 'Payment sent to Raj.', 'user-transaction', 'seen', 'transaction', 'seen', '2022-09-16 09:34:13', '2022-10-12 13:53:53'),
(84, 104, 114, 'Incoming meeting request from pp.', 'coach-booking', 'seen', 'booking', 'seen', '2022-09-22 09:22:52', '2022-10-12 13:53:50'),
(85, 114, 104, 'Complete booking payment within 12 hours meeting availability confirm from Raj.', 'user-booking', 'seen', 'booking', 'seen', '2022-09-22 09:27:41', '2022-10-12 13:53:50'),
(86, 104, 114, 'Yay! Booking confirmed from pp.', 'coach-booking', 'seen', 'booking', 'seen', '2022-09-22 09:29:13', '2022-10-12 13:53:50'),
(87, 114, 104, 'Payment sent to Raj.', 'user-transaction', 'seen', 'transaction', 'seen', '2022-09-22 09:29:13', '2022-10-12 13:53:53'),
(88, 1, 149, 'User( gg ) register on your site. ', 'admin-users', 'unseen', 'user', 'seen', '2022-09-22 14:38:09', '2022-10-12 13:53:45'),
(89, 1, 150, 'User( tt ) register on your site. ', 'admin-users', 'unseen', 'user', 'seen', '2022-09-22 14:55:25', '2022-10-12 13:53:45'),
(90, 104, 150, 'Incoming meeting request from tt.', 'coach-booking', 'seen', 'booking', 'seen', '2022-09-23 08:11:14', '2022-10-12 13:53:50'),
(91, 104, 150, 'Incoming meeting request from tt.', 'coach-booking', 'seen', 'booking', 'seen', '2022-09-23 09:23:13', '2022-10-12 13:53:50'),
(92, 150, 104, 'Complete booking payment within 12 hours meeting availability confirm from Raj.', 'user-booking', 'seen', 'booking', 'seen', '2022-09-23 09:36:43', '2022-10-12 13:53:50'),
(93, 104, 150, 'Incoming meeting request from tt.', 'coach-booking', 'seen', 'booking', 'seen', '2022-09-23 11:38:37', '2022-10-12 13:53:50'),
(94, 144, 114, 'Incoming meeting request from pp.', 'coach-booking', 'unseen', 'booking', 'seen', '2022-09-27 15:35:25', '2022-10-12 13:53:50'),
(95, 144, 114, 'Incoming meeting request from pp.', 'coach-booking', 'unseen', 'booking', 'seen', '2022-09-27 15:38:24', '2022-10-12 13:53:50'),
(96, 144, 114, 'Incoming meeting request from pp.', 'coach-booking', 'unseen', 'booking', 'seen', '2022-09-27 15:40:04', '2022-10-12 13:53:50'),
(97, 144, 114, 'Incoming meeting request from pp.', 'coach-booking', 'unseen', 'booking', 'seen', '2022-09-27 15:45:00', '2022-10-12 13:53:50'),
(98, 104, 114, 'Incoming meeting request from pp.', 'coach-booking', 'seen', 'booking', 'seen', '2022-09-28 08:03:03', '2022-10-12 13:53:50'),
(99, 1, 151, 'Coach( test1 ) register on your site. ', 'admin-coach-list', 'unseen', 'coach', 'seen', '2022-09-28 09:08:00', '2022-10-03 13:03:25'),
(100, 1, 152, 'User( y ) register on your site. ', 'admin-users', 'unseen', 'user', 'seen', '2022-09-29 10:23:01', '2022-10-12 13:53:45'),
(101, 104, 152, 'Incoming meeting request from y.', 'coach-booking', 'seen', 'booking', 'seen', '2022-09-29 10:23:48', '2022-10-12 13:53:50'),
(102, 114, 104, 'Complete booking payment within 12 hours meeting availability confirm from Raj.', 'user-booking', 'seen', 'booking', 'seen', '2022-09-29 10:26:46', '2022-10-12 13:53:50'),
(103, 1, 153, 'Coach( maiken ) register on your site. ', 'admin-coach-list', 'unseen', 'coach', 'seen', '2022-10-03 13:01:09', '2022-10-03 13:03:25'),
(104, 1, 153, 'Coach( maiken ) updated his profile. ', 'admin-coach-list', 'unseen', 'coach', 'seen', '2022-10-03 15:00:42', '2022-10-03 15:05:20'),
(105, 1, 153, 'Coach( maiken ) updated his profile. ', 'admin-coach-list', 'unseen', 'coach', 'seen', '2022-10-03 15:00:58', '2022-10-03 15:05:20'),
(106, 1, 154, 'User( dfs ) register on your site. ', 'admin-users', 'unseen', 'user', 'seen', '2022-10-03 15:01:43', '2022-10-12 13:53:45'),
(107, 139, 154, 'Incoming meeting request from dfs.', 'coach-booking', 'unseen', 'booking', 'seen', '2022-10-03 15:03:44', '2022-10-12 13:53:50'),
(108, 153, 154, 'Incoming meeting request from dfs.', 'coach-booking', 'seen', 'booking', 'seen', '2022-10-03 15:06:14', '2022-10-12 13:53:50'),
(109, 154, 153, 'Complete booking payment within 12 hours meeting availability confirm from maiken.', 'user-booking', 'seen', 'booking', 'seen', '2022-10-03 15:07:42', '2022-10-12 13:53:50'),
(110, 153, 154, 'Incoming meeting request from dfs.', 'coach-booking', 'seen', 'booking', 'seen', '2022-10-03 15:09:04', '2022-10-12 13:53:50'),
(111, 104, 114, 'Incoming meeting request from pp.', 'coach-booking', 'seen', 'booking', 'seen', '2022-10-03 15:10:26', '2022-10-12 13:53:50'),
(112, 154, 153, 'Complete booking payment within 12 hours meeting availability confirm from maiken.', 'user-booking', 'seen', 'booking', 'seen', '2022-10-03 15:17:06', '2022-10-12 13:53:50'),
(113, 153, 154, 'Yay! Booking confirmed from dfs.', 'coach-booking', 'unseen', 'booking', 'seen', '2022-10-03 15:18:27', '2022-10-12 13:53:50'),
(114, 154, 153, 'Payment sent to maiken.', 'user-transaction', 'seen', 'transaction', 'seen', '2022-10-03 15:18:27', '2022-10-12 13:53:53'),
(115, 107, 114, 'Incoming meeting request from pp.', 'coach-booking', 'unseen', 'booking', 'seen', '2022-10-11 10:26:01', '2022-10-12 13:53:50'),
(116, 1, 155, 'Coach( maiken ) register on your site. ', 'admin-coach-list', 'unseen', 'coach', 'seen', '2022-10-12 13:56:30', '2022-10-12 13:56:40'),
(117, 1, 155, 'Coach( maiken ) updated his profile. ', 'admin-coach-list', 'unseen', 'coach', 'seen', '2022-10-12 13:57:48', '2022-10-12 13:58:10'),
(118, 1, 156, 'User( tt ) register on your site. ', 'admin-users', 'unseen', 'user', 'seen', '2023-08-10 08:49:59', '2023-10-12 09:25:06'),
(119, 1, 157, 'User( tt ) register on your site. ', 'admin-users', 'unseen', 'user', 'seen', '2023-08-10 08:51:35', '2023-10-12 09:25:06'),
(120, 1, 158, 'User( tt ) register on your site. ', 'admin-users', 'unseen', 'user', 'seen', '2023-08-10 08:53:22', '2023-10-12 09:25:06');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('maiken.paaske@hotmail.com', '$2y$10$LpJiifjpiU4oMzDxLmbumevgnNjYewcWUSBVnF.n5fbCdYNp89yi6', '2022-09-01 11:40:13'),
('pragyachouhan76666@gmail.com', '$2y$10$snO7PSoM36.zhVaiZAOxQut8rd9q4dVAMz0HR7QCplp2IbGD/7gLi', '2022-09-15 13:27:23');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `coach_id` text DEFAULT NULL,
  `user_id` text DEFAULT NULL,
  `rating` enum('0','1','2','3','4','5') DEFAULT '0',
  `comment` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `coach_id`, `user_id`, `rating`, `comment`, `created_at`, `updated_at`) VALUES
(6, '106', '114', '5', 'great job', '2022-08-23 06:57:41', '2022-08-23 06:57:41'),
(7, '106', '114', '5', 'orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, whenLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the ', '2022-08-23 07:01:56', '2022-08-23 07:01:56'),
(8, '106', '114', '2', 'cv', '2022-08-23 07:05:15', '2022-08-23 07:05:15'),
(9, '106', '114', '3', 'd', '2022-08-23 07:07:05', '2022-08-23 07:07:05'),
(10, '106', '114', '4', 'sed to demonstrate the visual form of a document or a typeface without relying on meaningful content.\r\n\r\nsed to demonstrate the visual form of a document or a typeface without relying on meaningful content.\r\n\r\nsed to demonstrate the visual form of a document or a typeface without relying on meaningful content.\r\n\r\nsed to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2022-08-23 10:10:30', '2022-08-23 10:10:30'),
(11, '106', '114', '4', 'e for rate our platform or write suggestion message for us. We wood be glad to hea', '2022-08-23 11:02:59', '2022-08-23 11:02:59'),
(12, '104', '114', '5', 'test', '2022-08-25 08:31:02', '2022-08-25 08:31:02'),
(13, '103', '114', '3', 'test', '2022-08-25 14:03:49', '2022-08-25 14:03:49'),
(14, '103', '114', '5', 'take 5 minute for rate our platform or write take 5 minute for rate our platform or write suggestion message for us. We wood be glad to hear your opintake 5 minute for rate our platform or write suggestion message for us. We wood be glad to hear your opinsuggestion message for us. We wood be glad to hear your opin', '2022-08-25 14:06:59', '2022-08-25 14:06:59'),
(16, '103', '114', '3', 'ok', '2022-08-26 13:59:14', '2022-08-26 13:59:14'),
(17, '104', '114', '5', 'test', '2022-08-29 10:29:57', '2022-08-29 10:29:57'),
(18, '104', '114', '5', 'ate our platform or write suggestion message for us. We wood be glad to hear your opin', '2022-08-29 10:45:30', '2022-08-29 10:45:30'),
(19, '104', '114', '3', 'ty', '2022-08-29 12:17:51', '2022-08-29 12:17:51'),
(20, '144', '145', '5', 'very good', '2022-09-02 11:16:57', '2022-09-02 11:16:57'),
(21, '104', '114', '3', 'test', '2022-09-08 08:23:06', '2022-09-08 08:23:06');

-- --------------------------------------------------------

--
-- Table structure for table `seniority`
--

CREATE TABLE `seniority` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seniority`
--

INSERT INTO `seniority` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Head of', '2022-07-13 10:11:03', '2022-07-13 10:11:03'),
(2, 'Director', '2022-07-13 10:11:03', '2022-07-13 10:11:03'),
(3, 'Senior Director', '2022-07-13 10:11:27', '2022-07-13 10:11:27'),
(4, 'VP', '2022-07-13 10:11:27', '2022-07-13 10:11:27'),
(5, 'SVP', '2022-07-13 10:12:10', '2022-07-13 10:12:10'),
(6, 'C-level', '2022-07-13 10:12:10', '2022-07-13 10:12:10'),
(7, 'Partner', '2022-07-13 10:12:33', '2022-07-13 10:12:33'),
(8, 'Founder', '2022-07-13 10:12:33', '2022-07-13 10:12:33'),
(9, 'Board Member', '2022-07-13 10:12:58', '2022-07-13 10:12:58'),
(10, 'Chairperson', '2022-07-13 10:12:58', '2022-07-13 10:12:58'),
(11, 'Investor', '2022-07-13 10:13:11', '2022-07-13 10:13:11');

-- --------------------------------------------------------

--
-- Table structure for table `timezone`
--

CREATE TABLE `timezone` (
  `id` int(11) DEFAULT NULL,
  `Country_Code` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Country_Name` varchar(44) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Time_Zone` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `GMT_Offset` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `timezone`
--

INSERT INTO `timezone` (`id`, `Country_Code`, `Country_Name`, `Time_Zone`, `GMT_Offset`) VALUES
(1, 'AF', 'Afghanistan', 'Asia/Kabul', 'UTC +04:36'),
(2, 'AL', 'Albania', 'Europe/Tirane', 'UTC +01:19'),
(3, 'DZ', 'Algeria', 'Africa/Algiers', 'UTC +00:12'),
(4, 'AS', 'American Samoa', 'Pacific/Pago_Pago', 'UTC +12:37'),
(5, 'AD', 'Andorra', 'Europe/Andorra', 'UTC +00:06'),
(6, 'AO', 'Angola', 'Africa/Luanda', 'UTC +00:13'),
(7, 'AI', 'Anguilla', 'America/Anguilla', 'UTC -04:24'),
(8, 'AQ', 'Antarctica', 'Antarctica/Casey', 'UTC'),
(9, 'AQ', 'Antarctica', 'Antarctica/Davis', 'UTC'),
(10, 'AQ', 'Antarctica', 'Antarctica/DumontDUrville', 'UTC +09:48'),
(11, 'AQ', 'Antarctica', 'Antarctica/Mawson', 'UTC'),
(12, 'AQ', 'Antarctica', 'Antarctica/McMurdo', 'UTC +11:39'),
(13, 'AQ', 'Antarctica', 'Antarctica/Palmer', 'UTC'),
(14, 'AQ', 'Antarctica', 'Antarctica/Rothera', 'UTC'),
(15, 'AQ', 'Antarctica', 'Antarctica/Syowa', 'UTC +03:06'),
(16, 'AQ', 'Antarctica', 'Antarctica/Troll', 'UTC'),
(17, 'AQ', 'Antarctica', 'Antarctica/Vostok', 'UTC +05:50'),
(18, 'AG', 'Antigua and Barbuda', 'America/Antigua', 'UTC -04:24'),
(19, 'AR', 'Argentina', 'America/Argentina/Buenos_Aires', 'UTC -03:53'),
(20, 'AR', 'Argentina', 'America/Argentina/Catamarca', 'UTC -04:23'),
(21, 'AR', 'Argentina', 'America/Argentina/Cordoba', 'UTC -04:16'),
(22, 'AR', 'Argentina', 'America/Argentina/Jujuy', 'UTC -04:21'),
(23, 'AR', 'Argentina', 'America/Argentina/La_Rioja', 'UTC -04:27'),
(24, 'AR', 'Argentina', 'America/Argentina/Mendoza', 'UTC -04:35'),
(25, 'AR', 'Argentina', 'America/Argentina/Rio_Gallegos', 'UTC -04:36'),
(26, 'AR', 'Argentina', 'America/Argentina/Salta', 'UTC -04:21'),
(27, 'AR', 'Argentina', 'America/Argentina/San_Juan', 'UTC -04:34'),
(28, 'AR', 'Argentina', 'America/Argentina/San_Luis', 'UTC -04:25'),
(29, 'AR', 'Argentina', 'America/Argentina/Tucuman', 'UTC -04:20'),
(30, 'AR', 'Argentina', 'America/Argentina/Ushuaia', 'UTC -04:33'),
(31, 'AM', 'Armenia', 'Asia/Yerevan', 'UTC +02:58'),
(32, 'AW', 'Aruba', 'America/Aruba', 'UTC -04:24'),
(33, 'AU', 'Australia', 'Antarctica/Macquarie', 'UTC'),
(34, 'AU', 'Australia', 'Australia/Adelaide', 'UTC +09:14'),
(35, 'AU', 'Australia', 'Australia/Brisbane', 'UTC +10:12'),
(36, 'AU', 'Australia', 'Australia/Broken_Hill', 'UTC +09:25'),
(37, 'AU', 'Australia', 'Australia/Darwin', 'UTC +08:43'),
(38, 'AU', 'Australia', 'Australia/Eucla', 'UTC +08:35'),
(39, 'AU', 'Australia', 'Australia/Hobart', 'UTC +09:49'),
(40, 'AU', 'Australia', 'Australia/Lindeman', 'UTC +09:55'),
(41, 'AU', 'Australia', 'Australia/Lord_Howe', 'UTC +10:36'),
(42, 'AU', 'Australia', 'Australia/Melbourne', 'UTC +09:39'),
(43, 'AU', 'Australia', 'Australia/Perth', 'UTC +07:43'),
(44, 'AU', 'Australia', 'Australia/Sydney', 'UTC +10:04'),
(45, 'AT', 'Austria', 'Europe/Vienna', 'UTC +01:05'),
(46, 'AZ', 'Azerbaijan', 'Asia/Baku', 'UTC +03:19'),
(47, 'BS', 'Bahamas', 'America/Nassau', 'UTC -05:17'),
(48, 'BH', 'Bahrain', 'Asia/Bahrain', 'UTC +03:26'),
(49, 'BD', 'Bangladesh', 'Asia/Dhaka', 'UTC +06:01'),
(50, 'BB', 'Barbados', 'America/Barbados', 'UTC -03:58'),
(51, 'BY', 'Belarus', 'Europe/Minsk', 'UTC +01:50'),
(52, 'BE', 'Belgium', 'Europe/Brussels', 'UTC +00:17'),
(53, 'BZ', 'Belize', 'America/Belize', 'UTC -05:52'),
(54, 'BJ', 'Benin', 'Africa/Porto-Novo', 'UTC +00:13'),
(55, 'BM', 'Bermuda', 'Atlantic/Bermuda', 'UTC -04:19'),
(56, 'BT', 'Bhutan', 'Asia/Thimphu', 'UTC +05:58'),
(57, 'BO', 'Bolivia, Plurinational State of', 'America/La_Paz', 'UTC -04:32'),
(58, 'BQ', 'Bonaire, Sint Eustatius and Saba', 'America/Kralendijk', 'UTC -04:24'),
(59, 'BA', 'Bosnia and Herzegovina', 'Europe/Sarajevo', 'UTC +01:22'),
(60, 'BW', 'Botswana', 'Africa/Gaborone', 'UTC +02:10'),
(61, 'BR', 'Brazil', 'America/Araguaina', 'UTC -03:12'),
(62, 'BR', 'Brazil', 'America/Bahia', 'UTC -02:34'),
(63, 'BR', 'Brazil', 'America/Belem', 'UTC -03:13'),
(64, 'BR', 'Brazil', 'America/Boa_Vista', 'UTC -04:02'),
(65, 'BR', 'Brazil', 'America/Campo_Grande', 'UTC -03:38'),
(66, 'BR', 'Brazil', 'America/Cuiaba', 'UTC -03:44'),
(67, 'BR', 'Brazil', 'America/Eirunepe', 'UTC -04:39'),
(68, 'BR', 'Brazil', 'America/Fortaleza', 'UTC -02:34'),
(69, 'BR', 'Brazil', 'America/Maceio', 'UTC -02:22'),
(70, 'BR', 'Brazil', 'America/Manaus', 'UTC -04:00'),
(71, 'BR', 'Brazil', 'America/Noronha', 'UTC -02:09'),
(72, 'BR', 'Brazil', 'America/Porto_Velho', 'UTC -04:15'),
(73, 'BR', 'Brazil', 'America/Recife', 'UTC -02:19'),
(74, 'BR', 'Brazil', 'America/Rio_Branco', 'UTC -04:31'),
(75, 'BR', 'Brazil', 'America/Santarem', 'UTC -03:38'),
(76, 'BR', 'Brazil', 'America/Sao_Paulo', 'UTC -03:06'),
(77, 'IO', 'British Indian Ocean Territory', 'Indian/Chagos', 'UTC +04:49'),
(78, 'BN', 'Brunei Darussalam', 'Asia/Brunei', 'UTC +07:21'),
(79, 'BG', 'Bulgaria', 'Europe/Sofia', 'UTC +01:33'),
(80, 'BF', 'Burkina Faso', 'Africa/Ouagadougou', 'UTC -00:16'),
(81, 'BI', 'Burundi', 'Africa/Bujumbura', 'UTC +02:10'),
(82, 'KH', 'Cambodia', 'Asia/Phnom_Penh', 'UTC +06:42'),
(83, 'CM', 'Cameroon', 'Africa/Douala', 'UTC +00:13'),
(84, 'CA', 'Canada', 'America/Atikokan', 'UTC -05:18'),
(85, 'CA', 'Canada', 'America/Blanc-Sablon', 'UTC -04:24'),
(86, 'CA', 'Canada', 'America/Cambridge_Bay', 'UTC'),
(87, 'CA', 'Canada', 'America/Creston', 'UTC -07:28'),
(88, 'CA', 'Canada', 'America/Dawson', 'UTC -09:17'),
(89, 'CA', 'Canada', 'America/Dawson_Creek', 'UTC -08:00'),
(90, 'CA', 'Canada', 'America/Edmonton', 'UTC -07:33'),
(91, 'CA', 'Canada', 'America/Fort_Nelson', 'UTC -08:10'),
(92, 'CA', 'Canada', 'America/Glace_Bay', 'UTC -03:59'),
(93, 'CA', 'Canada', 'America/Goose_Bay', 'UTC -04:01'),
(94, 'CA', 'Canada', 'America/Halifax', 'UTC -04:14'),
(95, 'CA', 'Canada', 'America/Inuvik', 'UTC'),
(96, 'CA', 'Canada', 'America/Iqaluit', 'UTC'),
(97, 'CA', 'Canada', 'America/Moncton', 'UTC -04:19'),
(98, 'CA', 'Canada', 'America/Nipigon', 'UTC -05:53'),
(99, 'CA', 'Canada', 'America/Pangnirtung', 'UTC'),
(100, 'CA', 'Canada', 'America/Rainy_River', 'UTC -06:18'),
(101, 'CA', 'Canada', 'America/Rankin_Inlet', 'UTC'),
(102, 'CA', 'Canada', 'America/Regina', 'UTC -06:58'),
(103, 'CA', 'Canada', 'America/Resolute', 'UTC'),
(104, 'CA', 'Canada', 'America/St_Johns', 'UTC -03:30'),
(105, 'CA', 'Canada', 'America/Swift_Current', 'UTC -07:11'),
(106, 'CA', 'Canada', 'America/Thunder_Bay', 'UTC -05:57'),
(107, 'CA', 'Canada', 'America/Toronto', 'UTC -05:17'),
(108, 'CA', 'Canada', 'America/Vancouver', 'UTC -08:12'),
(109, 'CA', 'Canada', 'America/Whitehorse', 'UTC -09:00'),
(110, 'CA', 'Canada', 'America/Winnipeg', 'UTC -06:28'),
(111, 'CA', 'Canada', 'America/Yellowknife', 'UTC'),
(112, 'CV', 'Cape Verde', 'Atlantic/Cape_Verde', 'UTC -01:34'),
(113, 'KY', 'Cayman Islands', 'America/Cayman', 'UTC -05:18'),
(114, 'CF', 'Central African Republic', 'Africa/Bangui', 'UTC +00:13'),
(115, 'TD', 'Chad', 'Africa/Ndjamena', 'UTC +01:00'),
(116, 'CL', 'Chile', 'America/Punta_Arenas', 'UTC -04:43'),
(117, 'CL', 'Chile', 'America/Santiago', 'UTC -04:42'),
(118, 'CL', 'Chile', 'Pacific/Easter', 'UTC -07:17'),
(119, 'CN', 'China', 'Asia/Shanghai', 'UTC +08:05'),
(120, 'CN', 'China', 'Asia/Urumqi', 'UTC +05:50'),
(121, 'CX', 'Christmas Island', 'Indian/Christmas', 'UTC +06:42'),
(122, 'CC', 'Cocos (Keeling) Islands', 'Indian/Cocos', 'UTC +06:24'),
(123, 'CO', 'Colombia', 'America/Bogota', 'UTC -04:56'),
(124, 'KM', 'Comoros', 'Indian/Comoro', 'UTC +02:27'),
(125, 'CG', 'Congo', 'Africa/Brazzaville', 'UTC +00:13'),
(126, 'CD', 'Congo, the Democratic Republic of the', 'Africa/Kinshasa', 'UTC +00:13'),
(127, 'CD', 'Congo, the Democratic Republic of the', 'Africa/Lubumbashi', 'UTC +02:10'),
(128, 'CK', 'Cook Islands', 'Pacific/Rarotonga', 'UTC +13:20'),
(129, 'CR', 'Costa Rica', 'America/Costa_Rica', 'UTC -05:36'),
(130, 'HR', 'Croatia', 'Europe/Zagreb', 'UTC +01:22'),
(131, 'CU', 'Cuba', 'America/Havana', 'UTC -05:29'),
(132, 'CW', 'Curaao', 'America/Curacao', 'UTC -04:24'),
(133, 'CY', 'Cyprus', 'Asia/Famagusta', 'UTC +02:15'),
(134, 'CY', 'Cyprus', 'Asia/Nicosia', 'UTC +02:13'),
(135, 'CZ', 'Czech Republic', 'Europe/Prague', 'UTC +00:57'),
(136, 'CI', 'Cte d\'Ivoire', 'Africa/Abidjan', 'UTC -00:16'),
(137, 'DK', 'Denmark', 'Europe/Copenhagen', 'UTC +00:53'),
(138, 'DJ', 'Djibouti', 'Africa/Djibouti', 'UTC +02:27'),
(139, 'DM', 'Dominica', 'America/Dominica', 'UTC -04:24'),
(140, 'DO', 'Dominican Republic', 'America/Santo_Domingo', 'UTC -04:39'),
(141, 'EC', 'Ecuador', 'America/Guayaquil', 'UTC -05:19'),
(142, 'EC', 'Ecuador', 'Pacific/Galapagos', 'UTC -05:58'),
(143, 'EG', 'Egypt', 'Africa/Cairo', 'UTC +02:05'),
(144, 'SV', 'El Salvador', 'America/El_Salvador', 'UTC -05:56'),
(145, 'GQ', 'Equatorial Guinea', 'Africa/Malabo', 'UTC +00:13'),
(146, 'ER', 'Eritrea', 'Africa/Asmara', 'UTC +02:27'),
(147, 'EE', 'Estonia', 'Europe/Tallinn', 'UTC +01:39'),
(148, 'ET', 'Ethiopia', 'Africa/Addis_Ababa', 'UTC +02:27'),
(149, 'FK', 'Falkland Islands (Malvinas)', 'Atlantic/Stanley', 'UTC -03:51'),
(150, 'FO', 'Faroe Islands', 'Atlantic/Faroe', 'UTC -00:27'),
(151, 'FJ', 'Fiji', 'Pacific/Fiji', 'UTC +11:55'),
(152, 'FI', 'Finland', 'Europe/Helsinki', 'UTC +01:39'),
(153, 'FR', 'France', 'Europe/Paris', 'UTC +00:09'),
(154, 'GF', 'French Guiana', 'America/Cayenne', 'UTC -03:29'),
(155, 'PF', 'French Polynesia', 'Pacific/Gambier', 'UTC -08:59'),
(156, 'PF', 'French Polynesia', 'Pacific/Marquesas', 'UTC -09:18'),
(157, 'PF', 'French Polynesia', 'Pacific/Tahiti', 'UTC -09:58'),
(158, 'TF', 'French Southern Territories', 'Indian/Kerguelen', 'UTC +04:54'),
(159, 'GA', 'Gabon', 'Africa/Libreville', 'UTC +00:13'),
(160, 'GM', 'Gambia', 'Africa/Banjul', 'UTC -00:16'),
(161, 'GE', 'Georgia', 'Asia/Tbilisi', 'UTC +02:59'),
(162, 'DE', 'Germany', 'Europe/Berlin', 'UTC +00:53'),
(163, 'DE', 'Germany', 'Europe/Busingen', 'UTC +00:34'),
(164, 'GH', 'Ghana', 'Africa/Accra', 'UTC -00:16'),
(165, 'GI', 'Gibraltar', 'Europe/Gibraltar', 'UTC -00:21'),
(166, 'GR', 'Greece', 'Europe/Athens', 'UTC +01:34'),
(167, 'GL', 'Greenland', 'America/Danmarkshavn', 'UTC -01:14'),
(168, 'GL', 'Greenland', 'America/Nuuk', 'UTC -03:26'),
(169, 'GL', 'Greenland', 'America/Scoresbysund', 'UTC -01:27'),
(170, 'GL', 'Greenland', 'America/Thule', 'UTC -04:35'),
(171, 'GD', 'Grenada', 'America/Grenada', 'UTC -04:24'),
(172, 'GP', 'Guadeloupe', 'America/Guadeloupe', 'UTC -04:24'),
(173, 'GU', 'Guam', 'Pacific/Guam', 'UTC -14:21'),
(174, 'GT', 'Guatemala', 'America/Guatemala', 'UTC -06:02'),
(175, 'GG', 'Guernsey', 'Europe/Guernsey', 'UTC -00:01'),
(176, 'GN', 'Guinea', 'Africa/Conakry', 'UTC -00:16'),
(177, 'GW', 'Guinea-Bissau', 'Africa/Bissau', 'UTC -01:02'),
(178, 'GY', 'Guyana', 'America/Guyana', 'UTC -03:52'),
(179, 'HT', 'Haiti', 'America/Port-au-Prince', 'UTC -04:49'),
(180, 'VA', 'Holy See (Vatican City State)', 'Europe/Vatican', 'UTC +00:49'),
(181, 'HN', 'Honduras', 'America/Tegucigalpa', 'UTC -05:48'),
(182, 'HK', 'Hong Kong', 'Asia/Hong_Kong', 'UTC +07:36'),
(183, 'HU', 'Hungary', 'Europe/Budapest', 'UTC +01:16'),
(184, 'IS', 'Iceland', 'Atlantic/Reykjavik', 'UTC -00:16'),
(185, 'IN', 'India', 'Asia/Kolkata', 'UTC +05:53'),
(186, 'ID', 'Indonesia', 'Asia/Jakarta', 'UTC +07:07'),
(187, 'ID', 'Indonesia', 'Asia/Jayapura', 'UTC +09:22'),
(188, 'ID', 'Indonesia', 'Asia/Makassar', 'UTC +07:57'),
(189, 'ID', 'Indonesia', 'Asia/Pontianak', 'UTC +07:17'),
(190, 'IR', 'Iran, Islamic Republic of', 'Asia/Tehran', 'UTC +03:25'),
(191, 'IQ', 'Iraq', 'Asia/Baghdad', 'UTC +02:57'),
(192, 'IE', 'Ireland', 'Europe/Dublin', 'UTC -00:25'),
(193, 'IM', 'Isle of Man', 'Europe/Isle_of_Man', 'UTC -00:01'),
(194, 'IL', 'Israel', 'Asia/Jerusalem', 'UTC +02:20'),
(195, 'IT', 'Italy', 'Europe/Rome', 'UTC +00:49'),
(196, 'JM', 'Jamaica', 'America/Jamaica', 'UTC -05:07'),
(197, 'JP', 'Japan', 'Asia/Tokyo', 'UTC +09:18'),
(198, 'JE', 'Jersey', 'Europe/Jersey', 'UTC -00:01'),
(199, 'JO', 'Jordan', 'Asia/Amman', 'UTC +02:23'),
(200, 'KZ', 'Kazakhstan', 'Asia/Almaty', 'UTC +05:07'),
(201, 'KZ', 'Kazakhstan', 'Asia/Aqtau', 'UTC +03:21'),
(202, 'KZ', 'Kazakhstan', 'Asia/Aqtobe', 'UTC +03:48'),
(203, 'KZ', 'Kazakhstan', 'Asia/Atyrau', 'UTC +03:27'),
(204, 'KZ', 'Kazakhstan', 'Asia/Oral', 'UTC +03:25'),
(205, 'KZ', 'Kazakhstan', 'Asia/Qostanay', 'UTC +04:14'),
(206, 'KZ', 'Kazakhstan', 'Asia/Qyzylorda', 'UTC +04:21'),
(207, 'KE', 'Kenya', 'Africa/Nairobi', 'UTC +02:27'),
(208, 'KI', 'Kiribati', 'Pacific/Kanton', 'UTC'),
(209, 'KI', 'Kiribati', 'Pacific/Kiritimati', 'UTC -10:29'),
(210, 'KI', 'Kiribati', 'Pacific/Tarawa', 'UTC +11:32'),
(211, 'KP', 'Korea, Democratic People\'s Republic of', 'Asia/Pyongyang', 'UTC +08:23'),
(212, 'KR', 'Korea, Republic of', 'Asia/Seoul', 'UTC +08:27'),
(213, 'KW', 'Kuwait', 'Asia/Kuwait', 'UTC +03:06'),
(214, 'KG', 'Kyrgyzstan', 'Asia/Bishkek', 'UTC +04:58'),
(215, 'LA', 'Lao People\'s Democratic Republic', 'Asia/Vientiane', 'UTC +06:42'),
(216, 'LV', 'Latvia', 'Europe/Riga', 'UTC +01:36'),
(217, 'LB', 'Lebanon', 'Asia/Beirut', 'UTC +02:22'),
(218, 'LS', 'Lesotho', 'Africa/Maseru', 'UTC +01:52'),
(219, 'LR', 'Liberia', 'Africa/Monrovia', 'UTC -00:43'),
(220, 'LY', 'Libya', 'Africa/Tripoli', 'UTC +00:52'),
(221, 'LI', 'Liechtenstein', 'Europe/Vaduz', 'UTC +00:34'),
(222, 'LT', 'Lithuania', 'Europe/Vilnius', 'UTC +01:41'),
(223, 'LU', 'Luxembourg', 'Europe/Luxembourg', 'UTC +00:17'),
(224, 'MO', 'Macao', 'Asia/Macau', 'UTC +07:34'),
(225, 'MK', 'Macedonia, the Former Yugoslav Republic of', 'Europe/Skopje', 'UTC +01:22'),
(226, 'MG', 'Madagascar', 'Indian/Antananarivo', 'UTC +02:27'),
(227, 'MW', 'Malawi', 'Africa/Blantyre', 'UTC +02:10'),
(228, 'MY', 'Malaysia', 'Asia/Kuala_Lumpur', 'UTC +06:55'),
(229, 'MY', 'Malaysia', 'Asia/Kuching', 'UTC +07:21'),
(230, 'MV', 'Maldives', 'Indian/Maldives', 'UTC +04:54'),
(231, 'ML', 'Mali', 'Africa/Bamako', 'UTC -00:16'),
(232, 'MT', 'Malta', 'Europe/Malta', 'UTC +00:58'),
(233, 'MH', 'Marshall Islands', 'Pacific/Kwajalein', 'UTC +11:09'),
(234, 'MH', 'Marshall Islands', 'Pacific/Majuro', 'UTC +11:32'),
(235, 'MQ', 'Martinique', 'America/Martinique', 'UTC -04:04'),
(236, 'MR', 'Mauritania', 'Africa/Nouakchott', 'UTC -00:16'),
(237, 'MU', 'Mauritius', 'Indian/Mauritius', 'UTC +03:50'),
(238, 'YT', 'Mayotte', 'Indian/Mayotte', 'UTC +02:27'),
(239, 'MX', 'Mexico', 'America/Bahia_Banderas', 'UTC -07:01'),
(240, 'MX', 'Mexico', 'America/Cancun', 'UTC -05:47'),
(241, 'MX', 'Mexico', 'America/Chihuahua', 'UTC -07:04'),
(242, 'MX', 'Mexico', 'America/Hermosillo', 'UTC -07:23'),
(243, 'MX', 'Mexico', 'America/Matamoros', 'UTC -06:40'),
(244, 'MX', 'Mexico', 'America/Mazatlan', 'UTC -07:05'),
(245, 'MX', 'Mexico', 'America/Merida', 'UTC -05:58'),
(246, 'MX', 'Mexico', 'America/Mexico_City', 'UTC -06:36'),
(247, 'MX', 'Mexico', 'America/Monterrey', 'UTC -06:41'),
(248, 'MX', 'Mexico', 'America/Ojinaga', 'UTC -06:57'),
(249, 'MX', 'Mexico', 'America/Tijuana', 'UTC -07:48'),
(250, 'FM', 'Micronesia, Federated States of', 'Pacific/Chuuk', 'UTC +09:48'),
(251, 'FM', 'Micronesia, Federated States of', 'Pacific/Kosrae', 'UTC -13:08'),
(252, 'FM', 'Micronesia, Federated States of', 'Pacific/Pohnpei', 'UTC +10:39'),
(253, 'MD', 'Moldova, Republic of', 'Europe/Chisinau', 'UTC +01:55'),
(254, 'MC', 'Monaco', 'Europe/Monaco', 'UTC +00:09'),
(255, 'MN', 'Mongolia', 'Asia/Choibalsan', 'UTC +07:38'),
(256, 'MN', 'Mongolia', 'Asia/Hovd', 'UTC +06:06'),
(257, 'MN', 'Mongolia', 'Asia/Ulaanbaatar', 'UTC +07:07'),
(258, 'ME', 'Montenegro', 'Europe/Podgorica', 'UTC +01:22'),
(259, 'MS', 'Montserrat', 'America/Montserrat', 'UTC -04:24'),
(260, 'MA', 'Morocco', 'Africa/Casablanca', 'UTC -00:30'),
(261, 'MZ', 'Mozambique', 'Africa/Maputo', 'UTC +02:10'),
(262, 'MM', 'Myanmar', 'Asia/Yangon', 'UTC +06:24'),
(263, 'NA', 'Namibia', 'Africa/Windhoek', 'UTC +01:08'),
(264, 'NR', 'Nauru', 'Pacific/Nauru', 'UTC +11:07'),
(265, 'NP', 'Nepal', 'Asia/Kathmandu', 'UTC +05:41'),
(266, 'NL', 'Netherlands', 'Europe/Amsterdam', 'UTC +00:17'),
(267, 'NC', 'New Caledonia', 'Pacific/Noumea', 'UTC +11:05'),
(268, 'NZ', 'New Zealand', 'Pacific/Auckland', 'UTC +11:39'),
(269, 'NZ', 'New Zealand', 'Pacific/Chatham', 'UTC +12:13'),
(270, 'NI', 'Nicaragua', 'America/Managua', 'UTC -05:45'),
(271, 'NE', 'Niger', 'Africa/Niamey', 'UTC +00:13'),
(272, 'NG', 'Nigeria', 'Africa/Lagos', 'UTC +00:13'),
(273, 'NU', 'Niue', 'Pacific/Niue', 'UTC -11:19'),
(274, 'NF', 'Norfolk Island', 'Pacific/Norfolk', 'UTC +11:11'),
(275, 'MP', 'Northern Mariana Islands', 'Pacific/Saipan', 'UTC -14:21'),
(276, 'NO', 'Norway', 'Europe/Oslo', 'UTC +00:53'),
(277, 'OM', 'Oman', 'Asia/Muscat', 'UTC +03:41'),
(278, 'PK', 'Pakistan', 'Asia/Karachi', 'UTC +04:28'),
(279, 'PW', 'Palau', 'Pacific/Palau', 'UTC -15:02'),
(280, 'PS', 'Palestine, State of', 'Asia/Gaza', 'UTC +02:17'),
(281, 'PS', 'Palestine, State of', 'Asia/Hebron', 'UTC +02:20'),
(282, 'PA', 'Panama', 'America/Panama', 'UTC -05:18'),
(283, 'PG', 'Papua New Guinea', 'Pacific/Bougainville', 'UTC +10:22'),
(284, 'PG', 'Papua New Guinea', 'Pacific/Port_Moresby', 'UTC +09:48'),
(285, 'PY', 'Paraguay', 'America/Asuncion', 'UTC -03:50'),
(286, 'PE', 'Peru', 'America/Lima', 'UTC -05:08'),
(287, 'PH', 'Philippines', 'Asia/Manila', 'UTC -15:56'),
(288, 'PN', 'Pitcairn', 'Pacific/Pitcairn', 'UTC -08:40'),
(289, 'PL', 'Poland', 'Europe/Warsaw', 'UTC +01:24'),
(290, 'PT', 'Portugal', 'Atlantic/Azores', 'UTC -01:42'),
(291, 'PT', 'Portugal', 'Atlantic/Madeira', 'UTC -01:07'),
(292, 'PT', 'Portugal', 'Europe/Lisbon', 'UTC -00:36'),
(293, 'PR', 'Puerto Rico', 'America/Puerto_Rico', 'UTC -04:24'),
(294, 'QA', 'Qatar', 'Asia/Qatar', 'UTC +03:26'),
(295, 'RO', 'Romania', 'Europe/Bucharest', 'UTC +01:44'),
(296, 'RU', 'Russian Federation', 'Asia/Anadyr', 'UTC +11:49'),
(297, 'RU', 'Russian Federation', 'Asia/Barnaul', 'UTC +05:35'),
(298, 'RU', 'Russian Federation', 'Asia/Chita', 'UTC +07:33'),
(299, 'RU', 'Russian Federation', 'Asia/Irkutsk', 'UTC +06:57'),
(300, 'RU', 'Russian Federation', 'Asia/Kamchatka', 'UTC +10:34'),
(301, 'RU', 'Russian Federation', 'Asia/Khandyga', 'UTC +09:02'),
(302, 'RU', 'Russian Federation', 'Asia/Krasnoyarsk', 'UTC +06:11'),
(303, 'RU', 'Russian Federation', 'Asia/Magadan', 'UTC +10:03'),
(304, 'RU', 'Russian Federation', 'Asia/Novokuznetsk', 'UTC +05:48'),
(305, 'RU', 'Russian Federation', 'Asia/Novosibirsk', 'UTC +05:31'),
(306, 'RU', 'Russian Federation', 'Asia/Omsk', 'UTC +04:53'),
(307, 'RU', 'Russian Federation', 'Asia/Sakhalin', 'UTC +09:30'),
(308, 'RU', 'Russian Federation', 'Asia/Srednekolymsk', 'UTC +10:14'),
(309, 'RU', 'Russian Federation', 'Asia/Tomsk', 'UTC +05:39'),
(310, 'RU', 'Russian Federation', 'Asia/Ust-Nera', 'UTC +09:32'),
(311, 'RU', 'Russian Federation', 'Asia/Vladivostok', 'UTC +08:47'),
(312, 'RU', 'Russian Federation', 'Asia/Yakutsk', 'UTC +08:38'),
(313, 'RU', 'Russian Federation', 'Asia/Yekaterinburg', 'UTC +04:02'),
(314, 'RU', 'Russian Federation', 'Europe/Astrakhan', 'UTC +03:12'),
(315, 'RU', 'Russian Federation', 'Europe/Kaliningrad', 'UTC +01:22'),
(316, 'RU', 'Russian Federation', 'Europe/Kirov', 'UTC +03:18'),
(317, 'RU', 'Russian Federation', 'Europe/Moscow', 'UTC +02:30'),
(318, 'RU', 'Russian Federation', 'Europe/Samara', 'UTC +03:20'),
(319, 'RU', 'Russian Federation', 'Europe/Saratov', 'UTC +03:04'),
(320, 'RU', 'Russian Federation', 'Europe/Ulyanovsk', 'UTC +03:13'),
(321, 'RU', 'Russian Federation', 'Europe/Volgograd', 'UTC +02:57'),
(322, 'RW', 'Rwanda', 'Africa/Kigali', 'UTC +02:10'),
(323, 'RE', 'Runion', 'Indian/Reunion', 'UTC +03:41'),
(324, 'BL', 'Saint Barthlemy', 'America/St_Barthelemy', 'UTC -04:24'),
(325, 'SH', 'Saint Helena, Ascension and Tristan da Cunha', 'Atlantic/St_Helena', 'UTC -00:16'),
(326, 'KN', 'Saint Kitts and Nevis', 'America/St_Kitts', 'UTC -04:24'),
(327, 'LC', 'Saint Lucia', 'America/St_Lucia', 'UTC -04:24'),
(328, 'MF', 'Saint Martin (French part)', 'America/Marigot', 'UTC -04:24'),
(329, 'PM', 'Saint Pierre and Miquelon', 'America/Miquelon', 'UTC -03:44'),
(330, 'VC', 'Saint Vincent and the Grenadines', 'America/St_Vincent', 'UTC -04:24'),
(331, 'WS', 'Samoa', 'Pacific/Apia', 'UTC +12:33'),
(332, 'SM', 'San Marino', 'Europe/San_Marino', 'UTC +00:49'),
(333, 'ST', 'Sao Tome and Principe', 'Africa/Sao_Tome', 'UTC +00:26'),
(334, 'SA', 'Saudi Arabia', 'Asia/Riyadh', 'UTC +03:06'),
(335, 'SN', 'Senegal', 'Africa/Dakar', 'UTC -00:16'),
(336, 'RS', 'Serbia', 'Europe/Belgrade', 'UTC +01:22'),
(337, 'SC', 'Seychelles', 'Indian/Mahe', 'UTC +03:41'),
(338, 'SL', 'Sierra Leone', 'Africa/Freetown', 'UTC -00:16'),
(339, 'SG', 'Singapore', 'Asia/Singapore', 'UTC +06:55'),
(340, 'SX', 'Sint Maarten (Dutch part)', 'America/Lower_Princes', 'UTC -04:24'),
(341, 'SK', 'Slovakia', 'Europe/Bratislava', 'UTC +00:57'),
(342, 'SI', 'Slovenia', 'Europe/Ljubljana', 'UTC +01:22'),
(343, 'SB', 'Solomon Islands', 'Pacific/Guadalcanal', 'UTC +10:39'),
(344, 'SO', 'Somalia', 'Africa/Mogadishu', 'UTC +02:27'),
(345, 'ZA', 'South Africa', 'Africa/Johannesburg', 'UTC +01:52'),
(346, 'GS', 'South Georgia and the South Sandwich Islands', 'Atlantic/South_Georgia', 'UTC -02:26'),
(347, 'SS', 'South Sudan', 'Africa/Juba', 'UTC +02:06'),
(348, 'ES', 'Spain', 'Africa/Ceuta', 'UTC -00:21'),
(349, 'ES', 'Spain', 'Atlantic/Canary', 'UTC -01:01'),
(350, 'ES', 'Spain', 'Europe/Madrid', 'UTC -00:14'),
(351, 'LK', 'Sri Lanka', 'Asia/Colombo', 'UTC +05:19'),
(352, 'SD', 'Sudan', 'Africa/Khartoum', 'UTC +02:10'),
(353, 'SR', 'Suriname', 'America/Paramaribo', 'UTC -03:40'),
(354, 'SJ', 'Svalbard and Jan Mayen', 'Arctic/Longyearbyen', 'UTC +00:53'),
(355, 'SZ', 'Swaziland', 'Africa/Mbabane', 'UTC +01:52'),
(356, 'SE', 'Sweden', 'Europe/Stockholm', 'UTC +00:53'),
(357, 'CH', 'Switzerland', 'Europe/Zurich', 'UTC +00:34'),
(358, 'SY', 'Syrian Arab Republic', 'Asia/Damascus', 'UTC +02:25'),
(359, 'TW', 'Taiwan, Province of China', 'Asia/Taipei', 'UTC +08:06'),
(360, 'TJ', 'Tajikistan', 'Asia/Dushanbe', 'UTC +04:35'),
(361, 'TZ', 'Tanzania, United Republic of', 'Africa/Dar_es_Salaam', 'UTC +02:27'),
(362, 'TH', 'Thailand', 'Asia/Bangkok', 'UTC +06:42'),
(363, 'TL', 'Timor-Leste', 'Asia/Dili', 'UTC +08:22'),
(364, 'TG', 'Togo', 'Africa/Lome', 'UTC -00:16'),
(365, 'TK', 'Tokelau', 'Pacific/Fakaofo', 'UTC -11:24'),
(366, 'TO', 'Tonga', 'Pacific/Tongatapu', 'UTC +12:19'),
(367, 'TT', 'Trinidad and Tobago', 'America/Port_of_Spain', 'UTC -04:24'),
(368, 'TN', 'Tunisia', 'Africa/Tunis', 'UTC +00:40'),
(369, 'TR', 'Turkey', 'Europe/Istanbul', 'UTC +01:55'),
(370, 'TM', 'Turkmenistan', 'Asia/Ashgabat', 'UTC +03:53'),
(371, 'TC', 'Turks and Caicos Islands', 'America/Grand_Turk', 'UTC -04:44'),
(372, 'TV', 'Tuvalu', 'Pacific/Funafuti', 'UTC +11:32'),
(373, 'UG', 'Uganda', 'Africa/Kampala', 'UTC +02:27'),
(374, 'UA', 'Ukraine', 'Europe/Kyiv', 'UTC +02:02'),
(375, 'UA', 'Ukraine', 'Europe/Simferopol', 'UTC +02:16'),
(376, 'AE', 'United Arab Emirates', 'Asia/Dubai', 'UTC +03:41'),
(377, 'GB', 'United Kingdom', 'Europe/London', 'UTC -00:01'),
(378, 'US', 'United States', 'America/Adak', 'UTC +12:13'),
(379, 'US', 'United States', 'America/Anchorage', 'UTC +14:00'),
(380, 'US', 'United States', 'America/Boise', 'UTC -07:44'),
(381, 'US', 'United States', 'America/Chicago', 'UTC -05:50'),
(382, 'US', 'United States', 'America/Denver', 'UTC -06:59'),
(383, 'US', 'United States', 'America/Detroit', 'UTC -05:32'),
(384, 'US', 'United States', 'America/Indiana/Indianapolis', 'UTC -05:44'),
(385, 'US', 'United States', 'America/Indiana/Knox', 'UTC -05:46'),
(386, 'US', 'United States', 'America/Indiana/Marengo', 'UTC -05:45'),
(387, 'US', 'United States', 'America/Indiana/Petersburg', 'UTC -05:49'),
(388, 'US', 'United States', 'America/Indiana/Tell_City', 'UTC -05:47'),
(389, 'US', 'United States', 'America/Indiana/Vevay', 'UTC -05:40'),
(390, 'US', 'United States', 'America/Indiana/Vincennes', 'UTC -05:50'),
(391, 'US', 'United States', 'America/Indiana/Winamac', 'UTC -05:46'),
(392, 'US', 'United States', 'America/Juneau', 'UTC +15:02'),
(393, 'US', 'United States', 'America/Kentucky/Louisville', 'UTC -05:43'),
(394, 'US', 'United States', 'America/Kentucky/Monticello', 'UTC -05:39'),
(395, 'US', 'United States', 'America/Los_Angeles', 'UTC -07:52'),
(396, 'US', 'United States', 'America/Menominee', 'UTC -05:50'),
(397, 'US', 'United States', 'America/Metlakatla', 'UTC +15:13'),
(398, 'US', 'United States', 'America/New_York', 'UTC -04:56'),
(399, 'US', 'United States', 'America/Nome', 'UTC +12:58'),
(400, 'US', 'United States', 'America/North_Dakota/Beulah', 'UTC -06:47'),
(401, 'US', 'United States', 'America/North_Dakota/Center', 'UTC -06:45'),
(402, 'US', 'United States', 'America/North_Dakota/New_Salem', 'UTC -06:45'),
(403, 'US', 'United States', 'America/Phoenix', 'UTC -07:28'),
(404, 'US', 'United States', 'America/Sitka', 'UTC +14:58'),
(405, 'US', 'United States', 'America/Yakutat', 'UTC +14:41'),
(406, 'US', 'United States', 'Pacific/Honolulu', 'UTC -10:31'),
(407, 'UM', 'United States Minor Outlying Islands', 'Pacific/Midway', 'UTC +12:37'),
(408, 'UM', 'United States Minor Outlying Islands', 'Pacific/Wake', 'UTC +11:32'),
(409, 'UY', 'Uruguay', 'America/Montevideo', 'UTC -03:44'),
(410, 'UZ', 'Uzbekistan', 'Asia/Samarkand', 'UTC +04:27'),
(411, 'UZ', 'Uzbekistan', 'Asia/Tashkent', 'UTC +04:37'),
(412, 'VU', 'Vanuatu', 'Pacific/Efate', 'UTC +11:13'),
(413, 'VE', 'Venezuela, Bolivarian Republic of', 'America/Caracas', 'UTC -04:27'),
(414, 'VN', 'Viet Nam', 'Asia/Ho_Chi_Minh', 'UTC +07:06'),
(415, 'VG', 'Virgin Islands, British', 'America/Tortola', 'UTC -04:24'),
(416, 'VI', 'Virgin Islands, U.S.', 'America/St_Thomas', 'UTC -04:24'),
(417, 'WF', 'Wallis and Futuna', 'Pacific/Wallis', 'UTC +11:32'),
(418, 'EH', 'Western Sahara', 'Africa/El_Aaiun', 'UTC -00:52'),
(419, 'YE', 'Yemen', 'Asia/Aden', 'UTC +03:06'),
(420, 'ZM', 'Zambia', 'Africa/Lusaka', 'UTC +02:10'),
(421, 'ZW', 'Zimbabwe', 'Africa/Harare', 'UTC +02:10'),
(422, 'AX', 'land Islands', 'Europe/Mariehamn', 'UTC +01:39');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `useremail` text DEFAULT NULL,
  `coach_name` varchar(100) DEFAULT NULL,
  `coach_id` text DEFAULT NULL,
  `price` text DEFAULT NULL,
  `currency` text DEFAULT NULL,
  `paid_amount` text DEFAULT NULL,
  `paid_currency` text DEFAULT NULL,
  `booking_id` text DEFAULT NULL,
  `token_id` text DEFAULT NULL,
  `perchase_status` enum('0','1') DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `email` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `phone` text DEFAULT NULL,
  `user_id` text DEFAULT NULL,
  `country` text DEFAULT NULL,
  `country_code` text DEFAULT NULL,
  `profile_photo` text DEFAULT NULL,
  `price_20` text DEFAULT NULL,
  `price_40` text DEFAULT NULL,
  `price_60` text DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `about_me` text DEFAULT NULL,
  `people_expect` text DEFAULT NULL,
  `available_slots` text DEFAULT NULL,
  `availability_status` enum('0','1') DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `role` enum('user','admin','coach') DEFAULT 'user',
  `slider` varchar(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) DEFAULT NULL,
  `company` text DEFAULT NULL,
  `profile_headline` text DEFAULT NULL,
  `expertise` text DEFAULT NULL,
  `seniority` text DEFAULT NULL,
  `industry` text DEFAULT NULL,
  `business_model` text DEFAULT NULL,
  `account_details` text DEFAULT NULL,
  `biography` text DEFAULT NULL,
  `terms_and_conditions` text DEFAULT NULL,
  `marketing_and_news` text DEFAULT NULL,
  `bank_holder_name` text DEFAULT NULL,
  `ifc_code` text DEFAULT NULL,
  `account_no` text DEFAULT NULL,
  `swift_code` text DEFAULT NULL,
  `why_advisor` longtext DEFAULT NULL,
  `expertise_reg` longtext DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `random_list` text DEFAULT NULL,
  `bank_country` text DEFAULT NULL,
  `iban_number` text DEFAULT NULL,
  `timezone` text DEFAULT NULL,
  `available_slots_tempory` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `last_name`, `email`, `password`, `phone`, `user_id`, `country`, `country_code`, `profile_photo`, `price_20`, `price_40`, `price_60`, `email_verified_at`, `about_me`, `people_expect`, `available_slots`, `availability_status`, `created_at`, `updated_at`, `role`, `slider`, `remember_token`, `company`, `profile_headline`, `expertise`, `seniority`, `industry`, `business_model`, `account_details`, `biography`, `terms_and_conditions`, `marketing_and_news`, `bank_holder_name`, `ifc_code`, `account_no`, `swift_code`, `why_advisor`, `expertise_reg`, `status`, `random_list`, `bank_country`, `iban_number`, `timezone`, `available_slots_tempory`) VALUES
(1, 'Admin', 'Owner', 'admin@gmail.com', '$2y$10$94MERtPCuqyKBghg05sAle6cXUVOG2yIp/jLl0UFYOaVoncRfQJ/C', '121212', 'null', 'null', NULL, 'upload/profile/admin/5244551659177874.download (1).jpg', 'null', 'null', 'null', NULL, 'null', 'null', 'null', '1', '2022-07-13 05:28:08', '2022-07-30 09:44:34', 'admin', '0', '6MKqcIx6XGuXPqAm53OqfyJrvUrfJiQlKo5J76mYx0AjLOTuCazyEVu6OyNZ', 'tretretre', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'Asia/Kolkata', NULL),
(97, 'g', NULL, 'g@gm.in', '$2y$10$aDVCE/uZIom9SsD4ruQsqO1q.qG2UfpMftkB0JpGAEjJ/ubl.52xG', '22', NULL, NULL, '93', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2022-08-02 10:03:36', '2022-08-02 10:03:36', 'user', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'Asia/Kolkata', NULL),
(98, 'bb', NULL, 'bb@gm.in', '$2y$10$HRx6zeTRQj.aiI3PGtq3fu67gkMB0vn6uxx8mvxd89rTAlhkGHsfu', '11', NULL, '1', '93', NULL, NULL, NULL, NULL, NULL, 'ets', NULL, NULL, '1', '2022-08-02 10:05:51', '2022-08-02 10:21:51', 'user', '0', NULL, 'test', NULL, NULL, '24', '35', '44', NULL, 'test', '1', '0', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'Asia/Kolkata', NULL),
(99, 'test', NULL, 'test@gg.in', '$2y$10$91YJ.nMN4v6VXdDNab.ZUeBhnkdGUC7jh0wK3rqVtZHJX3EXWgOCa', '23456', NULL, NULL, '93', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2022-08-02 11:02:29', '2022-08-02 11:02:29', 'user', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'Asia/Kolkata', NULL),
(100, 'Himanshi', NULL, 'test@gmail.com', '$2y$10$NiSuYKZz2g8n8o.f8vtphupi3/LNKWygCmRqpt/YbH6tRo9Z59CD6', '1234567890', NULL, NULL, '93', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2022-08-02 11:05:23', '2022-08-02 11:57:56', 'coach', '0', 'AY3vTX1F5HNvIsVChwf0GExjB0W7fmPPmcCuYNzDDtJ0lAhOau1aqlOKioYk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'Asia/Kolkata', NULL),
(101, 'Himanshi', NULL, 'testqwe@gmail.com', '$2y$10$M/iO3BM/v4pdui71iJQfOOQ/OCUE8N6CZlNeUVrO4ms8xANICl/h2', '1234567890', NULL, NULL, '93', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2022-08-02 11:06:11', '2022-08-02 11:06:11', 'user', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'Asia/Kolkata', NULL),
(102, 'Himanshi', NULL, 'test123@gmail.com', '$2y$10$JoOGGxIOPCq3RwHg0v.zGuah5y67np5ACd9/zZWFkVWTeUyM3Hj36', '1234567890', NULL, NULL, '93', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2022-08-02 11:06:43', '2022-08-22 08:52:49', 'coach', '1', '0l8fpuqN8AKXccjAnuHHbFDrJDUtmyhxLmiB4bpfIBbRC5x6OY6C0FaIqiwl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'Asia/Kolkata', NULL),
(103, 'pragya chouhan', NULL, 'astemotoricar@gmail.com', '$2y$10$PTsgmdQjFL5gwccY2Gp1PutIpi35KaKlC8V/BWq1r.oSaPevhMCLO', '454354353', NULL, '99', '91', 'upload/profile/coach/694591659513712.jpg', '200', '250', '300', NULL, 'Celebrity stylist, fashion designer, CEO and Founder of shoprachelzoe.com curateur.com \r\n\r\nFormer Clients: Anne Hathaway, Jennifer Lawrence, Jennifer Garner, Kate Hudson, Cameron Diaz\r\n\r\nTV: The Rachel Zoe Project, Fashionably Late \r\nBooks: NYT Best Selling author \r\n“Style A to Zoe” “Living In Style” \r\n\r\n“Style is a way to say who you are without having to speak”', NULL, '7-8am,12-1pm,5-6pm', '1', '2022-08-02 13:18:43', '2022-08-26 13:29:21', 'coach', '2', NULL, 'test', NULL, '13,20,19', '24', '37,36,35', '44', NULL, 'Celebrity stylist, fashion designer, CEO and Founder of shoprachelzoe.com curateur.com', '1', '0', 'PR', 'IFSC090', '66123131534564', '58454', NULL, NULL, 2, '1,6,9', NULL, NULL, 'Asia/Kolkata', NULL),
(104, 'Raj', NULL, 'raj@gmail.com', '$2y$10$Sd2GfozBWmMNRjmQ5hJ6DeG4nWV6ilrcCvRuOtBimwgII6j0pG3cS', '334543545', NULL, '198', '0', 'upload/profile/coach/2444761659512918.JPG', '100', '200', '300', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, whenLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, whenLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, whenLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when', NULL, '2-3pm,3-4pm,7-8pm,8-9pm,9-10pm', '1', '2022-08-03 05:47:20', '2022-10-03 15:12:28', 'coach', '1', 'pXxaHbx9g3c8N3u50Qrh6PsWjydMPKnyJkfDybDv0vWAfaZufGkbGPOam1mP', 'Uber', NULL, '19, 20, 21', '24', '35, 36', '47', NULL, 'Lorem Ipsum is simply dummy text of the printing', '1', '0', 'test', 'tests', '23456789', 'test', NULL, NULL, 2, '3,5,8', 'test', 'test', 'Asia/Kolkata', '3-4pm,6-7pm,7-8pm,9-10pm'),
(106, 'maikan', NULL, 'maikan@gmail.com', '$2y$10$XlUBJv.oQfTFSkvVGUGLm.P9vB3PWC3nd2LVOZy4j6SFZNMA9qMSq', '376543456', NULL, '17', '973', 'upload/profile/coach/7664541661163436.webp', '300', '400', '500', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, whenLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, whenLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when', NULL, '7-8am,1-2pm,8-9pm,1-2am', '1', '2022-08-03 05:48:19', '2022-08-22 12:17:16', 'coach', '1', NULL, 'Apple, Uber', NULL, '15', '25, 26', '35', '45', NULL, 'Celebrity stylist, fashion designer, CEO and Founder of shoprachelzoe.com curateur.com', '1', '0', NULL, NULL, NULL, NULL, NULL, NULL, 2, '1,4,8', NULL, NULL, 'Asia/Kolkata', NULL),
(107, 'carmine', NULL, 'carmine@gmail.com', '$2y$10$81HjQQRiqxUsIPSRSK1KyeT89trbp7yAxiInzha867WLosPaN62He', '123486756', NULL, '47', '57', 'upload/profile/coach/8939761659510282.jpg', '300', '400', '500', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, whenLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, whenLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, whenLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, whenLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, whenLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when', NULL, '8-9am,2-3pm,4-5pm,8-9pm,9-10pm,2-3am,3-4am', '1', '2022-08-03 05:48:52', '2022-08-23 08:16:45', 'coach', '1', NULL, 'tcs', NULL, '14', '25, 31', '36', '45', NULL, 'Lorem Ipsum is simply dummy text of the printing ', '1', '0', NULL, NULL, NULL, NULL, NULL, NULL, 2, '3,6,7', NULL, NULL, 'Asia/Kolkata', NULL),
(108, 'dan', NULL, 'dan@gmail.com', '$2y$10$17/EKn61jKBgQ93ptIv5ve1YY4KU74nz/2ekEC6K9H8NC8YRTEg.a', '345678', NULL, '22', '501', 'upload/profile/coach/1224061659510121.jpg', '200', '300', '400', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when', NULL, '6-7am,1-2pm,7-8pm,8-9pm', '1', '2022-08-03 05:49:12', '2022-08-23 08:16:35', 'coach', '3', NULL, 'apple', NULL, '12', '24, 26', '38', '46', NULL, 'Lorem Ipsum is simply dummy text of the printing ', '1', '0', NULL, NULL, NULL, NULL, NULL, NULL, 2, '1,6,9', NULL, NULL, 'Asia/Kolkata', NULL),
(110, 'Pragya kushwah', NULL, 'pragyakushwah2017@gmail.com', '$2y$10$nhawrfM/5XpakVkU4QJDk.WgsqnlV4fcRBEdsCJ6cMDODKg5l7zyq', '3456789', NULL, '99', '91', 'upload/profile/coach/8165921659528849.jpg', '200', '300', '400', NULL, 'Celebrity stylist, fashion designer, CEO and Founder of shoprachelzoe.com curateur.com \r\n\r\nFormer Clients: Anne Hathaway, Jennifer Lawrence, Jennifer Garner, Kate Hudson, Cameron Diaz\r\n\r\nTV: The Rachel Zoe Project, Fashionably Late \r\nBooks: NYT Best Selling author \r\n“Style A to Zoe” “Living In Style” \r\n\r\n“Style is a way to say who you are without having to speak”', NULL, '6-7am,1-2pm,7-8pm,8-9pm,1-2am,2-3am', '1', '2022-08-03 11:07:47', '2022-08-23 08:16:27', 'coach', '3', NULL, 'Apple, Uber', NULL, '14', '25', '35', '46', NULL, 'Celebrity stylist, fashion designer, CEO and Founder of shoprac', '1', '0', 'Pragya kushwah', '32456', '34567', '43434', NULL, NULL, 2, '2,5,8', NULL, NULL, 'Asia/Kolkata', NULL),
(113, 'atul', NULL, 'atul@gmail.com', '$2y$10$UY6/VY9ZOMbjrAglHvaOCOXKmHAN8Wp4QANvGCp2tz2CObNaDyXK6', '345678', NULL, NULL, '1684', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2022-08-04 12:59:12', '2022-08-04 12:59:12', 'user', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'Asia/Kolkata', NULL),
(114, 'pp', NULL, 'pp@gmail.com', '$2y$10$1tSEeC57Vd85npLejdgkfeYoeHPV0.sSEdnwakKcM0sr6qFzVpkEe', '3456789', NULL, '99', '91', 'upload/profile/user/1864071662970308.jpg', NULL, NULL, NULL, NULL, 'test', NULL, NULL, '1', '2022-08-05 05:55:41', '2022-09-29 09:23:50', 'user', '0', 'HzSCkQDxm2QT5l6QShp3Xgp0bVPHQiFDm9mPyt7UHDsLX4CFOwh1qIPYPXil', 'test', NULL, NULL, '27', '38', '46', NULL, 'test', '1', '0', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'Asia/Kolkata', NULL),
(115, 'Ajeet Choubey', NULL, 'srk@gmail.com', '$2y$10$AOtkPyvcXdytsI/42hnFn.tNX83vINbkQd9cbRMuaEy8Kz9DNafR6', '9893515616', NULL, NULL, '93', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2022-08-05 06:10:42', '2022-08-05 06:10:42', 'user', '0', 'CCjyrPMSPZif7FYEds0qgBaCQZAnKEieNoIroANbgfHj3OFy9GoNhzGBMcEV', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'Asia/Kolkata', NULL),
(116, 'ttt', NULL, 'tt@gmail.com', '$2y$10$AWFb2vN3vmbHXhYCvIEA3OfPAqCVy1.SKZLU6ZQUNosvfZGiHviAy', '435678', NULL, NULL, '93', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2022-08-05 07:35:34', '2022-08-05 07:35:34', 'user', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'Asia/Kolkata', NULL),
(117, 'Himanshi', NULL, 'test345@gmail.com', '$2y$10$dUY6uxXj3L/IrkpSAwRXXedYBXJtK0apMviSjl..AXcW/./0Zj2xO', '1234567890', NULL, NULL, '93', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2022-08-05 09:53:40', '2022-08-05 09:53:40', 'user', '0', 'NWjP8FOw4nXUcwnYpCgKrIPUPH8soyKgjSptoLXVFp1KAuYDSe7cT2LYAi2L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'Asia/Kolkata', NULL),
(123, 'Arpit Vaishnav', NULL, 'a@gmail.com', '$2y$10$wMgtqpz0DZdz4HqGdGnp7OIQmOZrQJ4POcsDOIpW0ZbIoDSkoRbMO', '35343434', NULL, NULL, '93', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2022-08-08 11:47:37', '2022-08-08 11:47:37', 'user', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'Asia/Kolkata', NULL),
(126, 'Nakesh', NULL, 'nakesh@gmail.com', '$2y$10$Z.2AiCVXiOjFZ9r3VunXeO108kpouzs8j5LrXMUHzXr5c8ZHnyzJW', '3843784783', NULL, NULL, '93', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2022-08-18 14:51:07', '2022-08-18 14:51:07', 'user', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'Asia/Kolkata', NULL),
(128, 'kk', NULL, 'kk@gm.in', '$2y$10$xfcIyjVLq7rw7bsxRCqlIOjBNhTqeoOe7GTES02R8bMl47gxUBs5m', '324567', NULL, NULL, '93', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2022-08-19 09:36:24', '2022-08-19 09:36:24', 'user', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', NULL, NULL, NULL, NULL, '', '', 1, NULL, NULL, NULL, 'Asia/Kolkata', NULL),
(129, 'tesitng', NULL, 'testing@gmail.com', '$2y$10$zyvISmwL40/2D1uJrdEZPu1n.T4gJthJFcsvMB2.gTP/1P87bitL6', '2345678987', NULL, NULL, '93', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2022-08-19 10:13:11', '2022-08-19 10:13:11', 'user', '0', '748EeJunMpKpBxvHF9SnUFxciGma6BEZzdbFZJAqUYWn6KlnI0a88yAXT24n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '', '', 1, NULL, NULL, NULL, 'Asia/Kolkata', NULL),
(130, 'Ajeet Choubey', NULL, 'dd@gmail.com', '$2y$10$iYUZMn09H/zazzXprEqJNeh/uD.nZJkt3kPLUeRLieP/i8/zgePUm', '9893515616', NULL, NULL, '93', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2022-08-19 12:04:02', '2022-08-19 12:04:02', 'user', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '', '', 1, NULL, NULL, NULL, 'Asia/Kolkata', NULL),
(131, 'Dbsharukh', NULL, 'dbsharukh@gmail.pp', '$2y$10$.df/tCMLBeMVW/4GZZwScetZd8RQQRrs1hGEN/.G/deHdOA08H8ze', '7999611965', NULL, '99', '91', NULL, '100', '200', '300', NULL, 'WEB DEVELOPER', NULL, '10-11am,2-3pm,4-5am', '1', '2022-08-22 09:29:46', '2022-08-22 15:12:58', 'coach', '2', NULL, 'Dbtech', NULL, '13, 16', '23, 24, 25', '36, 38', '47', NULL, 'PHP DEVELOPER', '1', '1', NULL, NULL, NULL, NULL, 'test', 'demo', 1, NULL, NULL, NULL, 'Asia/Kolkata', NULL),
(132, 'himashi', NULL, 'himanshiahir770@gmail.com', '$2y$10$L8rRy63gzIv3Z8VStlDGsuG2l649MKndthkYenoJlMZDtZl2bryJm', '345678', NULL, NULL, '93', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2022-08-26 13:52:05', '2022-08-26 14:18:44', 'coach', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', NULL, NULL, NULL, NULL, 'test', 'test', 1, NULL, NULL, NULL, 'Asia/Kolkata', NULL),
(133, 'test', NULL, 'testtest@gm.in', '$2y$10$wKvhGwVjjcG.G29uVVQY9uhU8zTKe0VWCdGiS7RmVpB/1/WSRo3O.', '234567', NULL, NULL, '93', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2022-08-29 13:50:58', '2022-08-29 13:50:58', 'user', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', NULL, NULL, NULL, NULL, '', '', 1, NULL, NULL, NULL, 'Asia/Kolkata', NULL),
(134, 'pku', NULL, 'pragyachouhan76666@gmail.com', '$2y$10$sWDDP7HtLQrm59WXDK354uDsG8V5FWGdWsIDpgu3nveRNg3ACCveS', '2345678', NULL, NULL, '91', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2022-08-31 12:35:17', '2022-08-31 12:35:17', 'user', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', NULL, NULL, NULL, NULL, '', '', 1, NULL, NULL, NULL, 'Asia/Kolkata', NULL),
(140, 'inventionFunder', NULL, 'inventionfunder12@gmail.in', '$2y$10$n/iD2cmdfbkHfHSLKwh.q.zp6MOPcZTXJSwHg6M59vajBDosXCTCO', '324566', NULL, '1', '93', NULL, '400', '500', '600', NULL, 'tst', NULL, '6-7am,7-8am,8-9am,9-10am', '1', '2022-09-02 08:26:28', '2022-09-05 08:46:23', 'coach', '0', '0lQv2G31Lqm3a28S7Opb4YrSa4D3Yawt5Z4UNi7TXuylpAjz3PXEdPCzKV6W', 'test', NULL, '13', '25', '38', '47', NULL, 'test', '1', '0', NULL, NULL, NULL, NULL, 'test', 'test', 1, '9,8,8', NULL, NULL, 'Asia/Kolkata', NULL),
(141, 'Maiken Paaske', NULL, 'maiken@wire.com', '$2y$10$yjAiWiHxAhUVvkI6gACSdeIPNn427L./BKQ8FKg7fU7ea9GfqWgyq', '432342', NULL, NULL, '93', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2022-09-02 10:05:30', '2022-09-02 10:05:30', 'user', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '', '', 1, NULL, NULL, NULL, 'Asia/Kolkata', NULL),
(142, 'Maiken Paaske', NULL, 'paaskemaiken@gmail.com', '$2y$10$gjo4VxxUIWyGIQ.c1fzhAu6QyeTfctTRGZ17I0bjW5FPTQmrpcMcq', '32452', NULL, '58', '93', NULL, NULL, NULL, NULL, NULL, 'test', NULL, NULL, '1', '2022-09-02 10:12:00', '2022-10-12 08:22:04', 'user', '0', 'efoj3tUXQTRImPZEbOdOFND0H6GYCyKTukNp8J96T2qCfgUqfVirzrzG7piO', 'test', NULL, NULL, '25', '38', '46', NULL, 'test', '1', '0', NULL, NULL, NULL, NULL, '', '', 1, NULL, NULL, NULL, 'Europe/Brussels', NULL),
(143, 'atul', NULL, 'atul@gmail.cin', '$2y$10$9rOOndgz/6E16Bv1mcSaGuv318Zp7jm6MkQi73qIXJlxAhaYOuOGK', '3243243', NULL, NULL, '93', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2022-09-02 12:42:06', '2022-09-02 12:42:06', 'coach', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', NULL, NULL, NULL, NULL, 'test', 'test', 0, NULL, NULL, NULL, 'Europe/Brussels', NULL),
(144, 'Db-sharukh', NULL, 'dbsharukh@gmail.com', '$2y$10$WiiSos6hmgR39NykeuE.L.irLaJSgBPLIqPp0vXEOJrIG1jPHTI9.', '9617282849', NULL, '99', '91', 'upload/profile/coach/4947641662116420.jpg', '50', '100', '150', NULL, 'i m software developer', NULL, '6-7am,7-8am,9-10am', '1', '2022-09-02 12:54:06', '2022-09-05 08:47:07', 'coach', '1', NULL, 'Dbtech', NULL, '13, 16', '24, 25', '36', '45, 47', NULL, 'I m php expert and web developer', '1', '1', 'BOI', 'qi', '2386439746932469', 'y73y', 'demo', 'Test', 2, '7,5,1', NULL, NULL, 'Europe/Brussels', NULL),
(145, 'Pragya', NULL, 'inventionfunder12@gmail.com', '$2y$10$GMXDuqkOU60j3.FonUz6AedpyxyjHLJRqNEd/QvtVB9DuZxnM45Ee', '8678436423', NULL, NULL, '91', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2022-09-02 13:06:52', '2022-09-02 13:06:52', 'user', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '', '', 1, NULL, NULL, NULL, 'Europe/Brussels', NULL),
(146, 'test', NULL, 'dsdeveloperbazaar@gmail.com', '$2y$10$7tDctk01lm01Z3tY6VWyKeek5esGpffiqK2r4zhwIi9rxWaPFfQ..', '456789', NULL, NULL, '93', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2022-09-05 15:20:42', '2022-09-05 15:20:42', 'coach', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', NULL, NULL, NULL, NULL, 'test', 'test', 0, NULL, NULL, NULL, 'Europe/Brussels', NULL),
(147, 'zen', NULL, 'zen@gmail.com', '$2y$10$qO7Rqg8SM7.4eHukze4lPOAEA6b.Oq7b9wQkwqWBIxen.0cTELAeu', '45678', NULL, NULL, '93', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2022-09-05 15:35:19', '2022-09-05 15:35:19', 'user', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', NULL, NULL, NULL, NULL, '', '', 1, NULL, NULL, NULL, 'Europe/Brussels', NULL),
(148, 'tere', NULL, 'trtr@dk', '$2y$10$vLtyhXPY5TKk.zcXnv/RZuupY68UB0L9d91jtDJoVDIVinbZn952S', '453', NULL, NULL, '93', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2022-09-06 16:12:32', '2022-09-06 16:12:32', 'coach', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', NULL, NULL, NULL, NULL, 'gdgf', 'dfgd', 0, NULL, NULL, NULL, 'Europe/Brussels', NULL),
(149, 'gg', NULL, 'gg@gmail.com', '$2y$10$sbn1pzio/h4PCmQTPpD2k.1Z8.8dwM8kVc.VJnbcBnlnUSbI9dxDW', '44354354', NULL, NULL, '91', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2022-09-22 14:38:09', '2022-09-22 14:38:09', 'user', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', NULL, NULL, NULL, NULL, '', '', 1, NULL, NULL, NULL, 'Europe/Brussels', NULL),
(150, 'tt', NULL, 't@gmail.com', '$2y$10$dncG0ZzvMOTK40zmP2LOW.9srvdiE0sVrZNiVfVfQDlnsPdejMZWq', '345675', NULL, NULL, '93', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2022-09-22 14:55:25', '2022-09-22 14:55:25', 'user', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', NULL, NULL, NULL, NULL, '', '', 1, NULL, NULL, NULL, 'Asia/Kolkata', NULL),
(151, 'test1', NULL, 'test1@gmail.com', '$2y$10$WfcKndJs92q9AUUM5UiZg.180iIoc4KNOMxCrrEtOLLYx/jXeilk.', '234567', NULL, NULL, '1684', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2022-09-28 09:08:00', '2022-09-28 09:08:00', 'coach', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', NULL, NULL, NULL, NULL, 'test', 'test', 0, NULL, NULL, NULL, 'Africa/Conakry', NULL),
(152, 'y', NULL, 'y@gmail.com', '$2y$10$4aq1livPi6osBnqItI3EaOBEN2dwBEdXX54W8.S3HQQt0e6RPTwnC', '456554654', NULL, NULL, '93', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2022-09-29 10:23:01', '2022-09-29 10:23:01', 'user', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', NULL, NULL, NULL, NULL, '', '', 1, NULL, NULL, NULL, 'Asia/Kolkata', NULL),
(154, 'dfs', NULL, 'maiken@test.dk', '$2y$10$qrtNbv3.Hof4lCXG/IdC9euW5a5eo6zOhdAcxvMV8Rc5I9dhJDYxW', '61510021', NULL, NULL, '93', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2022-10-03 15:01:43', '2022-10-03 15:01:43', 'user', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', NULL, NULL, NULL, NULL, '', '', 1, NULL, NULL, NULL, 'Europe/Stockholm', NULL),
(155, 'maiken', NULL, 'maiken.paaske@hotmail.com', '$2y$10$Ztn5ZxFeQWCJwSNmptSGt.QmXvRq41Gs5yZM6Xz4kFOp0pocF/Uue', '61510021', NULL, '1', '93', NULL, '1', '1', '1', NULL, '1', NULL, '5-6pm,6-7pm', '1', '2022-10-12 13:56:30', '2023-10-23 06:51:20', 'coach', '1', NULL, '1', NULL, '14', '24', '35', '45', NULL, '1', '1', '0', NULL, NULL, NULL, NULL, '12', '12', 2, '9,8,1', NULL, NULL, 'Asia/Kabul', '5-6pm,6-7pm'),
(156, 'tt', NULL, 'tt1@gmail.com', '$2y$10$H9rfrDziF1422r6ngHjwbepy8.PWsIelInHyad1U/7RKgxxauheaO', '7878787777', NULL, NULL, '91', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2023-08-10 08:49:59', '2023-08-10 08:49:59', 'user', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', NULL, NULL, NULL, NULL, '', '', 1, NULL, NULL, NULL, 'Asia/Kolkata', NULL),
(157, 'tt', NULL, 'tt22@gmail.com', '$2y$10$78.S6bz7V2PZUXRNcdHrBulRVTbIeRbLvuGTvCO9AGukrev4RjN/e', '7878787777', NULL, NULL, '91', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2023-08-10 08:51:35', '2023-08-10 08:51:35', 'user', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', NULL, NULL, NULL, NULL, '', '', 1, NULL, NULL, NULL, 'Asia/Kolkata', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_plan`
--
ALTER TABLE `booking_plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_tempory`
--
ALTER TABLE `booking_tempory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_time_slots`
--
ALTER TABLE `booking_time_slots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_model`
--
ALTER TABLE `business_model`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `charity`
--
ALTER TABLE `charity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coach_category`
--
ALTER TABLE `coach_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expertise`
--
ALTER TABLE `expertise`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `industry`
--
ALTER TABLE `industry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_catdata`
--
ALTER TABLE `master_catdata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_category`
--
ALTER TABLE `master_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seniority`
--
ALTER TABLE `seniority`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `booking_plan`
--
ALTER TABLE `booking_plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booking_tempory`
--
ALTER TABLE `booking_tempory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `booking_time_slots`
--
ALTER TABLE `booking_time_slots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `business_model`
--
ALTER TABLE `business_model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `charity`
--
ALTER TABLE `charity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coach_category`
--
ALTER TABLE `coach_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `expertise`
--
ALTER TABLE `expertise`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `industry`
--
ALTER TABLE `industry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `master_catdata`
--
ALTER TABLE `master_catdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `master_category`
--
ALTER TABLE `master_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `seniority`
--
ALTER TABLE `seniority`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
