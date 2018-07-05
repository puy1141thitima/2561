-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2018 at 10:54 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


-- --------------------------------------------------------

--
-- โครงสร้างตาราง `{prefix}_01work`
--

CREATE TABLE `{prefix}_01work` (
  `id` int(2) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `fname` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- dump ตาราง `{prefix}_01work`
--

INSERT INTO `{prefix}_01work` (`id`, `title`, `description`, `fname`) VALUES
(1, 'การเขียนเว็บไซต์', 'ให้นักเรียนนักศึกษาดูจากตัวอย่างที่อาจารย์สอนให้เป็นแบบอย่างในการทำงานต่อไป', 'อ.คำภี');




--
-- โครงสร้างตาราง `{prefix}_01work`_member
--

CREATE TABLE `{prefix}_member` (
  `id_m` int(2) NOT NULL AUTO_INCREMENT COMMENT 'ลำดับ',
  `lname` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อ',
  `fname` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'นามสกุล',
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'อีเมลล์',
  `tel` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'เบอร์โทร',
  `address` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'ที่อยู่',
  `uname` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อผู้ใช้',
  `password` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'รหัสผ่าน',
  `typeid` int(3) NOT NULL COMMENT 'รหัสประเภท',
  PRIMARY KEY (`id_m`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='ตารางสมาชิก';


--
-- โครงสร้างตาราง `{prefix}_01work`_type
--

CREATE TABLE `{prefix}_type` (
  `id_type` int(3) NOT NULL COMMENT 'รหัสประเภท' AUTO_INCREMENT PRIMARY KEY,
  `typename` varchar(20) NOT NULL COMMENT 'ประเภทสินค้า'
) COMMENT='ตารางประเภท' COLLATE 'utf8_unicode_ci';

--
-- โครงสร้างตาราง `{prefix}_01work`_product
--

CREATE TABLE `{prefix}_product` (
  `proid` int(5) NOT NULL COMMENT 'รหัสสินค้า' AUTO_INCREMENT PRIMARY KEY,
  `proname` varchar(50) NOT NULL COMMENT 'ชื่อสินค้า',
  `detail` text NOT NULL COMMENT 'รายละเอียด',
  `price` float NOT NULL COMMENT 'ราคา',
  `bal` int(10) NOT NULL COMMENT 'จำนวนคงเหลือ',
  `typeid` varchar(3) NOT NULL COMMENT 'รหัสประเภท'
) COMMENT='ตารางสินค้า' COLLATE 'utf8_unicode_ci';


--
-- โครงสร้างตาราง `{prefix}_01work`_basket
--
CREATE TABLE `{prefix}_basket` (
  `orderid` int(10) NOT NULL COMMENT 'เลขที่สั่งซื้อ' AUTO_INCREMENT PRIMARY KEY,
  `basdate` date NOT NULL COMMENT 'วันที่',
  `td_m` varchar(20) NOT NULL COMMENT 'ผู้สั่ง',
  `proid` varchar(5) NOT NULL COMMENT 'รหัสสินค้า',
  `amount` int(10) NOT NULL COMMENT 'จํานวน',
  `status` varchar(1) NOT NULL COMMENT 'สถานะการสั่ง'
) COMMENT='ตารางตระกล้าสินค้า' COLLATE 'utf8_unicode_ci';

--
-- โครงสร้างตาราง `{prefix}_01work`_payment
--
CREATE TABLE `{prefix}_payment` (
  `payid` int(10) NOT NULL COMMENT 'ลําดับ' AUTO_INCREMENT PRIMARY KEY,
  `paydate` date NOT NULL COMMENT 'วันที่',
  `paytime` time NOT NULL COMMENT 'เวลา',
  `channel` varchar(100) NOT NULL COMMENT 'ช่องทางการชําระ',
  `total` float NOT NULL COMMENT 'ยอดชําระ',
  `id_m` varchar(20) NOT NULL COMMENT 'ผู้ชําระ'
) COMMENT='ตารางการชำระเงิน' COLLATE 'utf8_unicode_ci';

--
-- โครงสร้างตาราง `{prefix}_01work`_question
--
CREATE TABLE `{prefix}_question` (
  `qid` int(10) NOT NULL COMMENT 'ลําดับคําถาม' AUTO_INCREMENT PRIMARY KEY,
  `qdate` date NOT NULL COMMENT 'วันที่',
  `q` varchar(200) NOT NULL COMMENT 'คําถาม',
  `id_m` varchar(200) NOT NULL COMMENT 'ผู้ถาม'
) COMMENT='ตารางคำถาม' COLLATE 'utf8_unicode_ci';

--
-- โครงสร้างตาราง `{prefix}_01work`_answer
--
CREATE TABLE `answer` (
  `aid` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ลําดับความคิด',
  `adate` date NOT NULL COMMENT 'วันที่',
  `a` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ความคิดเห็น',
  `id_m` int(20) NOT NULL COMMENT 'ผู้ตอบ',
  `qid` int(10) NOT NULL COMMENT 'ลําดับคําถาม',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='ตารางคำตอบ';



































