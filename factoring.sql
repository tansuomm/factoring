-- phpMyAdmin SQL Dump
-- version 4.4.15
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-03-08 16:39:45
-- 服务器版本： 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `factoring`
--

-- --------------------------------------------------------

--
-- 表的结构 `hd_admin`
--

CREATE TABLE IF NOT EXISTS `hd_admin` (
  `uid` int(10) unsigned NOT NULL,
  `username` varchar(10) NOT NULL DEFAULT '',
  `passwd` char(32) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hd_article`
--

CREATE TABLE IF NOT EXISTS `hd_article` (
  `aid` int(10) unsigned NOT NULL,
  `title` varchar(155) NOT NULL DEFAULT '',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `thumb` varchar(200) NOT NULL DEFAULT '',
  `content` text,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `info` varchar(155) NOT NULL DEFAULT '',
  `cid` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hd_banner`
--

CREATE TABLE IF NOT EXISTS `hd_banner` (
  `bid` int(11) NOT NULL,
  `src` varchar(100) NOT NULL COMMENT '图片名称',
  `words` varchar(200) NOT NULL COMMENT '图片描述说明'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hd_cases`
--

CREATE TABLE IF NOT EXISTS `hd_cases` (
  `caid` int(11) NOT NULL COMMENT '主键',
  `title` varchar(160) NOT NULL COMMENT '标题',
  `time` int(10) NOT NULL COMMENT '发表时间',
  `thumb` varchar(200) NOT NULL COMMENT '图片',
  `content` text NOT NULL COMMENT '内容',
  `type` tinyint(1) NOT NULL COMMENT '类型0常规1科技'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hd_category`
--

CREATE TABLE IF NOT EXISTS `hd_category` (
  `cid` int(10) unsigned NOT NULL,
  `cname` varchar(15) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hd_company`
--

CREATE TABLE IF NOT EXISTS `hd_company` (
  `coid` int(11) NOT NULL,
  `info` text NOT NULL COMMENT '简介',
  `culture` text NOT NULL COMMENT '文化',
  `preone` varchar(200) NOT NULL COMMENT '预留'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hd_contact`
--

CREATE TABLE IF NOT EXISTS `hd_contact` (
  `usid` int(11) NOT NULL,
  `tel` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `other` varchar(200) NOT NULL COMMENT '其他说明'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hd_partner`
--

CREATE TABLE IF NOT EXISTS `hd_partner` (
  `pid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL COMMENT '合作伙伴名称',
  `url` varchar(100) NOT NULL COMMENT '链接地址',
  `logo` varchar(200) NOT NULL COMMENT 'logo',
  `preone` varchar(50) NOT NULL,
  `pretwo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `hd_user`
--

CREATE TABLE IF NOT EXISTS `hd_user` (
  `uid` int(11) NOT NULL,
  `name` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `company` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(300) NOT NULL COMMENT '信息'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hd_admin`
--
ALTER TABLE `hd_admin`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `hd_article`
--
ALTER TABLE `hd_article`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `hd_banner`
--
ALTER TABLE `hd_banner`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `hd_cases`
--
ALTER TABLE `hd_cases`
  ADD PRIMARY KEY (`caid`);

--
-- Indexes for table `hd_category`
--
ALTER TABLE `hd_category`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `hd_company`
--
ALTER TABLE `hd_company`
  ADD PRIMARY KEY (`coid`);

--
-- Indexes for table `hd_contact`
--
ALTER TABLE `hd_contact`
  ADD PRIMARY KEY (`usid`);

--
-- Indexes for table `hd_partner`
--
ALTER TABLE `hd_partner`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `hd_user`
--
ALTER TABLE `hd_user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hd_admin`
--
ALTER TABLE `hd_admin`
  MODIFY `uid` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hd_article`
--
ALTER TABLE `hd_article`
  MODIFY `aid` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hd_banner`
--
ALTER TABLE `hd_banner`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hd_cases`
--
ALTER TABLE `hd_cases`
  MODIFY `caid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键';
--
-- AUTO_INCREMENT for table `hd_category`
--
ALTER TABLE `hd_category`
  MODIFY `cid` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hd_company`
--
ALTER TABLE `hd_company`
  MODIFY `coid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hd_contact`
--
ALTER TABLE `hd_contact`
  MODIFY `usid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hd_partner`
--
ALTER TABLE `hd_partner`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hd_user`
--
ALTER TABLE `hd_user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
