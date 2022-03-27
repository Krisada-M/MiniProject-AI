-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2022 at 08:56 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `disease`
--

-- --------------------------------------------------------

--
-- Table structure for table `disease`
--

CREATE TABLE `disease` (
  `id` int(11) NOT NULL,
  `Disease` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `disease`
--

INSERT INTO `disease` (`id`, `Disease`) VALUES
(0, 'โรคตะกอนหินปูนในหูชั้นในหลุด'),
(1, 'เอดส์'),
(2, 'สิว'),
(3, 'ตับอักเสบ'),
(4, 'ภูมิแพ้'),
(5, 'ข้ออักเสบ'),
(6, 'หอบหืด'),
(7, 'พังพอนปากมดลูก'),
(8, 'อีสุกอีใส'),
(9, 'เรื้อรัง'),
(10, 'ไข้หวัดใหญ่'),
(11, 'ไข้เลือดออก'),
(12, 'เบาหวาน'),
(13, 'ริดสีดวงทวาร'),
(14, 'แพ้ยา'),
(15, 'การติดเชื้อรา'),
(16, 'กรดไหลย้อน'),
(17, 'กระเพาะและลำไส้อักเสบ'),
(18, 'หัวใจวาย'),
(19, 'ไวรัสตับอักเสบ B'),
(20, 'ไวรัสตับอักเสบ C'),
(21, 'ไวรัสตับอักเสบ D'),
(22, 'ไวรัสตับอักเสบ E'),
(23, 'ความดันโลหิตสูง'),
(24, 'ภาวะน้ำตาลในเลือด'),
(25, 'ไทรอยด์'),
(26, 'พุพอง'),
(27, 'ดีซ่าน'),
(28, 'มาลาเรีย'),
(29, 'ไมเกรน'),
(30, 'ข้อเข่าเสื่อม'),
(31, 'อัมพาต(เลือดออกในสมอง)'),
(32, 'โรคแผลในกระเพาะอาหาร'),
(33, 'ปอดบวม'),
(34, 'สะเก็ดเงิน'),
(35, 'วัณโรค'),
(36, 'ไทฟอยด์'),
(37, 'การติดเชื้อทางเดินปัสสาวะ'),
(38, 'เส้นเลือดขอด'),
(39, 'ไวรัสตับอักเสบ A'),
(40, 'ซะที่ไหนละ !!');

-- --------------------------------------------------------

--
-- Table structure for table `symptom1`
--

CREATE TABLE `symptom1` (
  `id` int(11) NOT NULL,
  `Symptom1` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `symptom1`
--

INSERT INTO `symptom1` (`id`, `Symptom1`) VALUES
(0, 'เป็นกรดในกระเพาะ'),
(1, 'ปวดหลัง'),
(2, 'ปวดแสบปวดร้อนขณะปัสสาวะ'),
(3, 'หนาวสั่น'),
(4, 'ท้องผูก'),
(5, 'จามต่อเนื่อง'),
(6, 'เหนื่อยล้า'),
(7, 'ปวดหัว'),
(8, 'คัน'),
(9, 'เจ็บปวดข้อต่อ'),
(10, 'กล้ามเนื้อเสื่อม'),
(11, 'กล้ามเนื้ออ่อนแรง'),
(12, 'ไม่มีอาการ'),
(13, 'ผื่นที่ผิวหนัง'),
(14, 'ปวดท้อง'),
(15, 'อาเจียน');

-- --------------------------------------------------------

--
-- Table structure for table `symptom2`
--

CREATE TABLE `symptom2` (
  `id` int(11) NOT NULL,
  `Symptom2` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `symptom2`
--

INSERT INTO `symptom2` (`id`, `Symptom2`) VALUES
(0, 'เป็นกรดในกระเพาะ'),
(1, 'กระเพาะปัสสาวะอักเสบ'),
(2, 'เจ็บหน้าอก'),
(3, 'หนาวสั่น'),
(4, 'ไอ'),
(5, 'ตะคริว'),
(6, 'เหนื่อยล้า'),
(7, 'ปวดหัว'),
(8, 'ไข้สูง'),
(9, 'อาหารไม่ย่อย'),
(10, 'เจ็บปวดข้อต่อ'),
(11, 'เจ็บคอ'),
(12, 'ปวดลำไส้เมื่อเคลื่อนไหว'),
(13, 'ไม่มีอาการ'),
(14, 'คออักเสบ'),
(15, 'สิวอุดตัน'),
(16, 'ตัวสั่น'),
(17, 'ผื่นที่ผิวหนัง'),
(18, 'คอแข็ง'),
(19, 'ตาโบ๋'),
(20, 'อาเจียน'),
(21, 'แขนขาอ่อนแรง'),
(22, 'น้ำหนักเพิ่มขึ้น'),
(23, 'น้ำหนักลดลง'),
(24, 'ผิวเหลือง');

-- --------------------------------------------------------

--
-- Table structure for table `symptom3`
--

CREATE TABLE `symptom3` (
  `id` int(11) NOT NULL,
  `Symptom3` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `symptom3`
--

INSERT INTO `symptom3` (`id`, `Symptom3`) VALUES
(0, 'ปวดท้อง'),
(1, 'วิตกกังวล'),
(2, 'สิวหัวดำ'),
(3, 'พุพอง'),
(4, 'ช้ำ'),
(5, 'หนาวสั่น'),
(6, 'มือเท้าเย็น'),
(7, 'ไอ'),
(8, 'การเสียน้ำในร่างกาย'),
(9, 'วิงเวียนศีรษะ'),
(10, 'เหนื่อยล้า'),
(11, 'กลิ่นเหม็นของปัสสาวะ'),
(12, 'ปวดหัว'),
(13, 'ไข้สูง'),
(14, 'เจ็บปวดข้อต่อ'),
(15, 'ปวดเข่า'),
(16, 'ง่วง'),
(17, 'เบื่ออาหาร'),
(18, 'คลื่นไส้'),
(19, 'เจ็บคอ'),
(20, 'ไม่มีอาการ'),
(21, 'ผื่นที่ผิวหนัง'),
(22, 'ปวดบริเวณทวารหนัก'),
(23, 'กระสับกระส่าย'),
(24, 'ผิวลอก'),
(25, 'ปวดท้อง'),
(26, 'เหงื่อออก'),
(27, 'ข้อบวม'),
(28, 'แผลที่ลิ้น'),
(29, 'ร่างกายหมดแรงข้างนึง'),
(30, 'ผิวเหลือง');

-- --------------------------------------------------------

--
-- Table structure for table `symptom4`
--

CREATE TABLE `symptom4` (
  `id` int(11) NOT NULL,
  `Symptom4` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `symptom4`
--

INSERT INTO `symptom4` (`id`, `Symptom4`) VALUES
(0, 'ปวดท้อง'),
(1, 'มีประสาทสัมผัสที่เปลี่ยนไป'),
(2, 'อุจจาระเป็นเลือด'),
(3, 'ตาพร่ามัวและบิดเบี้ยว'),
(4, 'หายใจไม่ออก'),
(5, 'ปวดแสบปวดร้อนขณะปัสสาวะ'),
(6, 'เจ็บหน้าอก'),
(7, 'ปัสสาวะอย่างต่อเนื่อง'),
(8, 'ไอ'),
(9, 'ปัสสาวะสีเข้ม'),
(10, 'ท้องเสีย'),
(11, 'การเปลี่ยนแปลงของสีผิว'),
(12, 'วิงเวียนศีรษะ'),
(13, 'การติดต่อการสมรสพิเศษ'),
(14, 'ไข้สูง'),
(15, 'ปวดข้อสะโพก'),
(16, 'ง่วง'),
(17, 'เบื่ออาหาร'),
(18, 'เสียสมดุล'),
(19, 'อารมณ์เเปรปรวน'),
(20, 'ความฝืดในการเคลื่อนไหว'),
(21, 'คลื่นไส้'),
(22, 'ไม่มีอาการ'),
(23, 'น้ำหนักเพิ่ม'),
(24, 'จมูกรอบๆแสบแดง'),
(25, 'ลนลาน'),
(26, 'แจ่มใส'),
(27, 'เคลื่อนไหวรวดเร็ว'),
(28, 'เหงื่อออก'),
(29, 'ท้องอืด'),
(30, 'อาเจียน'),
(31, 'มีน้ำในตา'),
(32, 'น้ำหนักลดลง');

-- --------------------------------------------------------

--
-- Table structure for table `symptom5`
--

CREATE TABLE `symptom5` (
  `id` int(11) NOT NULL,
  `Symptom5` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `symptom5`
--

INSERT INTO `symptom5` (`id`, `Symptom5`) VALUES
(0, 'หายใจไม่ออก'),
(1, 'ไอ'),
(2, 'ปัสสาวะสีเข้ม'),
(3, 'ท้องอืด'),
(4, 'หิวมากเกินไป'),
(5, 'ครอบครัวมีโรค'),
(6, 'เหนื่อยล้า'),
(7, 'ปวดหัว'),
(8, 'ไข้สูง'),
(9, 'ระดับน้ำตาลไม่ปกติ'),
(10, 'ระคายเคืองในทวารหนัก'),
(11, 'ขาดสมาธิ'),
(12, 'ง่วง'),
(13, 'เบื่ออาหาร'),
(14, 'เสียสมดุล'),
(15, 'คลื่นไส้'),
(16, 'ไม่มีอาการ'),
(17, 'เจ็บปวดเมื่อเดิน'),
(18, 'เรอบ่อย'),
(19, 'เล็บมีรอยบุบเล็กๆ'),
(20, 'ปัสสาวะไม่ออก'),
(21, 'ข้อบวม'),
(22, 'ขาบวม'),
(23, 'การไหลของเหลวสีเหลือง'),
(24, 'ตาเหลือง'),
(25, 'ผิวเหลือง');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `disease`
--
ALTER TABLE `disease`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `symptom1`
--
ALTER TABLE `symptom1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `symptom2`
--
ALTER TABLE `symptom2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `symptom3`
--
ALTER TABLE `symptom3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `symptom4`
--
ALTER TABLE `symptom4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `symptom5`
--
ALTER TABLE `symptom5`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
