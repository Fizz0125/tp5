-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2016 年 11 月 22 日 06:06
-- 服务器版本: 5.6.12-log
-- PHP 版本: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `presso`
--
CREATE DATABASE IF NOT EXISTS `presso` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `presso`;

-- --------------------------------------------------------

--
-- 表的结构 `about`
--

CREATE TABLE IF NOT EXISTS `about` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(12) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `about`
--

INSERT INTO `about` (`id`, `name`, `content`) VALUES
(1, '品牌介绍', '<p class="cur" style="margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; outline: none; text-indent: 2em; text-align: justify; font-size: 14px; font-family: 宋体; line-height: 26px; color: rgb(102, 102, 102); float: right; width: 309px; height: 197px; white-space: normal; background-color: rgb(238, 238, 238);">品牌介绍咖啡即可撒开始 。可是骄傲的快乐撒就开始看似简单。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 10px; outline: none; text-indent: 2em; text-align: justify; font-size: 14px; font-family: 宋体; line-height: 26px; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(238, 238, 238);"><img src="/ueditor/php/upload/image/20161117/1479361597183272.jpg" alt="1479361597183272.jpg"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 10px; outline: none; text-indent: 2em; text-align: justify; font-size: 14px; font-family: 宋体; line-height: 26px; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(238, 238, 238);">中兴通讯是全球领先的综合通信解决方案提供商。公司通过为全球160多个国家和地区的电信运营商和企业网客户个好几节提供创新技术与产品解决方案，让全世界用户享有语音、数据、多媒体、无线宽带等全方位沟通。公司成立于1985年推广个地在香港和深圳两地上市，是中国最大的通信设备上市公司。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 10px; outline: none; text-indent: 2em; text-align: justify; font-size: 14px; font-family: 宋体; line-height: 26px; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(238, 238, 238);">中兴通讯是全球领先的综合通信解决方案提供商。公司通过为全球160多个国家和地区的电信运营商和企业网客户个好几节提供创新技术与产品解决方案，让全世界用户享有语音、数据、多媒体、无线宽带等全方位沟通。公司成立于1985年推广个地在香港和深圳两地上市，是中国最大的通信设备上市公司。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 10px; outline: none; text-indent: 2em; text-align: justify; font-size: 14px; font-family: 宋体; line-height: 26px; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(238, 238, 238);">中兴通讯是全球领先的综合通信解决方案提供商。公司通过为全球160多个国家和地区的电信运营商和企业网客户个好几节提供创新技术与产品解决方案，让全世界用户享有语音、数据、多媒体、无线宽带等全方位沟通。公司成立于1985年推广个地在香港和深圳两地上市，是中国最大的通信设备上市公司。</p><p><br/></p>'),
(2, '品牌形象', '<p class="cur" style="margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; outline: none; text-indent: 2em; text-align: justify; font-size: 14px; font-family: 宋体; line-height: 26px; color: rgb(102, 102, 102); float: right; width: 309px; height: 197px; white-space: normal; background-color: rgb(238, 238, 238);"><span style="color: rgb(51, 51, 51); font-family: " microsoft="" hiragino="" sans="" helvetica="" wenquanyi="" micro="" font-size:="" text-align:="" background-color:="">品牌形象</span>。可是骄傲的快乐撒就开始看似简单。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 10px; outline: none; text-indent: 2em; text-align: justify; font-size: 14px; font-family: 宋体; line-height: 26px; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(238, 238, 238);"><img src="/ueditor/php/upload/image/20161117/1479361597183272.jpg" alt="1479361597183272.jpg"/></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 10px; outline: none; text-indent: 2em; text-align: justify; font-size: 14px; font-family: 宋体; line-height: 26px; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(238, 238, 238);">中兴通讯是全球领先的综合通信解决方案提供商。公司通过为全球160多个国家和地区的电信运营商和企业网客户个好几节提供创新技术与产品解决方案，让全世界用户享有语音、数据、多媒体、无线宽带等全方位沟通。公司成立于1985年推广个地在香港和深圳两地上市，是中国最大的通信设备上市公司。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 10px; outline: none; text-indent: 2em; text-align: justify; font-size: 14px; font-family: 宋体; line-height: 26px; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(238, 238, 238);">中兴通讯是全球领先的综合通信解决方案提供商。公司通过为全球160多个国家和地区的电信运营商和企业网客户个好几节提供创新技术与产品解决方案，让全世界用户享有语音、数据、多媒体、无线宽带等全方位沟通。公司成立于1985年推广个地在香港和深圳两地上市，是中国最大的通信设备上市公司。</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 10px; outline: none; text-indent: 2em; text-align: justify; font-size: 14px; font-family: 宋体; line-height: 26px; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(238, 238, 238);">中兴通讯是全球领先的综合通信解决方案提供商。公司通过为全球160多个国家和地区的电信运营商和企业网客户个好几节提供创新技术与产品解决方案，让全世界用户享有语音、数据、多媒体、无线宽带等全方位沟通。公司成立于1985年推广个地在香港和深圳两地上市，是中国最大的通信设备上市公司。</p><p><br/></p>'),
(3, '品牌历史', '<p class="cur" style="margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 10px 0px; outline: none; text-indent: 2em; text-align: justify; font-size: 14px; font-family: 宋体; line-height: 26px; color: rgb(102, 102, 102); float: right; width: 309px; height: 197px; background-color: rgb(238, 238, 238);">333333333333333333333333333333。可是骄傲的快乐撒就开始看似简单。</p><p style="margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 0px 0px 10px; outline: none; text-indent: 2em; text-align: justify; font-size: 14px; font-family: 宋体; line-height: 26px; color: rgb(102, 102, 102); background-color: rgb(238, 238, 238);"><img src="/ueditor/php/upload/image/20161117/1479361597183272.jpg" alt="1479361597183272.jpg"/>中兴通讯是全球领先的综合通信解决方案提供商。公司通过为全球160多个国家和地区的电信运营商和企业网客户个好几节提供创新技术与产品解决方案，让全世界用户享有语音、数据、多媒体、无线宽带等全方位沟通。公司成立于1985年推广个地在香港和深圳两地上市，是中国最大的通信设备上市公司。</p><p style="margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 0px 0px 10px; outline: none; text-indent: 2em; text-align: justify; font-size: 14px; font-family: 宋体; line-height: 26px; color: rgb(102, 102, 102); background-color: rgb(238, 238, 238);">中兴通讯是全球领先的综合通信解决方案提供商。公司通过为全球160多个国家和地区的电信运营商和企业网客户个好几节提供创新技术与产品解决方案，让全世界用户享有语音、数据、多媒体、无线宽带等全方位沟通。公司成立于1985年推广个地在香港和深圳两地上市，是中国最大的通信设备上市公司。</p><p style="margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 0px 0px 10px; outline: none; text-indent: 2em; text-align: justify; font-size: 14px; font-family: 宋体; line-height: 26px; color: rgb(102, 102, 102); background-color: rgb(238, 238, 238);">中兴通讯是全球领先的综合通信解决方案提供商。公司通过为全球160多个国家和地区的电信运营商和企业网客户个好几节提供创新技术与产品解决方案，让全世界用户享有语音、数据、多媒体、无线宽带等全方位沟通。公司成立于1985年推广个地在香港和深圳两地上市，是中国最大的通信设备上市公司。</p><p><br/></p>'),
(4, '咖啡名人', '<p class="cur" style="margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 10px 0px; outline: none; text-indent: 2em; text-align: justify; font-size: 14px; font-family: 宋体; line-height: 26px; color: rgb(102, 102, 102); float: right; width: 309px; height: 197px; background-color: rgb(238, 238, 238);">444444444444444444444444444444。可是骄傲的快乐撒就开始看似简单。</p><p style="margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 0px 0px 10px; outline: none; text-indent: 2em; text-align: justify; font-size: 14px; font-family: 宋体; line-height: 26px; color: rgb(102, 102, 102); background-color: rgb(238, 238, 238);"><img src="/ueditor/php/upload/image/20161117/1479361597183272.jpg" alt="1479361597183272.jpg"/>中兴通讯是全球领先的综合通信解决方案提供商。公司通过为全球160多个国家和地区的电信运营商和企业网客户个好几节提供创新技术与产品解决方案，让全世界用户享有语音、数据、多媒体、无线宽带等全方位沟通。公司成立于1985年推广个地在香港和深圳两地上市，是中国最大的通信设备上市公司。</p><p style="margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 0px 0px 10px; outline: none; text-indent: 2em; text-align: justify; font-size: 14px; font-family: 宋体; line-height: 26px; color: rgb(102, 102, 102); background-color: rgb(238, 238, 238);">中兴通讯是全球领先的综合通信解决方案提供商。公司通过为全球160多个国家和地区的电信运营商和企业网客户个好几节提供创新技术与产品解决方案，让全世界用户享有语音、数据、多媒体、无线宽带等全方位沟通。公司成立于1985年推广个地在香港和深圳两地上市，是中国最大的通信设备上市公司。</p><p style="margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 0px 0px 10px; outline: none; text-indent: 2em; text-align: justify; font-size: 14px; font-family: 宋体; line-height: 26px; color: rgb(102, 102, 102); background-color: rgb(238, 238, 238);">中兴通讯是全球领先的综合通信解决方案提供商。公司通过为全球160多个国家和地区的电信运营商和企业网客户个好几节提供创新技术与产品解决方案，让全世界用户享有语音、数据、多媒体、无线宽带等全方位沟通。公司成立于1985年推广个地在香港和深圳两地上市，是中国最大的通信设备上市公司。</p><p><br/></p>'),
(5, '公司管理', '<p class="cur" style="margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 10px 0px; outline: none; text-indent: 2em; text-align: justify; font-size: 14px; font-family: 宋体; line-height: 26px; color: rgb(102, 102, 102); float: right; width: 309px; height: 197px; background-color: rgb(238, 238, 238);">55555555555555555555。可是骄傲的快乐撒就开始看似简单。</p><p style="margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 0px 0px 10px; outline: none; text-indent: 2em; text-align: justify; font-size: 14px; font-family: 宋体; line-height: 26px; color: rgb(102, 102, 102); background-color: rgb(238, 238, 238);"><img src="/ueditor/php/upload/image/20161117/1479361597183272.jpg" alt="1479361597183272.jpg"/>中兴通讯是全球领先的综合通信解决方案提供商。公司通过为全球160多个国家和地区的电信运营商和企业网客户个好几节提供创新技术与产品解决方案，让全世界用户享有语音、数据、多媒体、无线宽带等全方位沟通。公司成立于1985年推广个地在香港和深圳两地上市，是中国最大的通信设备上市公司。</p><p style="margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 0px 0px 10px; outline: none; text-indent: 2em; text-align: justify; font-size: 14px; font-family: 宋体; line-height: 26px; color: rgb(102, 102, 102); background-color: rgb(238, 238, 238);">中兴通讯是全球领先的综合通信解决方案提供商。公司通过为全球160多个国家和地区的电信运营商和企业网客户个好几节提供创新技术与产品解决方案，让全世界用户享有语音、数据、多媒体、无线宽带等全方位沟通。公司成立于1985年推广个地在香港和深圳两地上市，是中国最大的通信设备上市公司。</p><p style="margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 0px 0px 10px; outline: none; text-indent: 2em; text-align: justify; font-size: 14px; font-family: 宋体; line-height: 26px; color: rgb(102, 102, 102); background-color: rgb(238, 238, 238);">中兴通讯是全球领先的综合通信解决方案提供商。公司通过为全球160多个国家和地区的电信运营商和企业网客户个好几节提供创新技术与产品解决方案，让全世界用户享有语音、数据、多媒体、无线宽带等全方位沟通。公司成立于1985年推广个地在香港和深圳两地上市，是中国最大的通信设备上市公司。</p><p><br/></p>'),
(6, '公司详情', '<p class="cur" style="margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 10px 0px; outline: none; text-indent: 2em; text-align: justify; font-size: 14px; font-family: 宋体; line-height: 26px; color: rgb(102, 102, 102); float: right; width: 309px; height: 197px; background-color: rgb(238, 238, 238);">6666666666666666666666666666。可是骄傲的快乐撒就开始看似简单。</p><p style="margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 0px 0px 10px; outline: none; text-indent: 2em; text-align: justify; font-size: 14px; font-family: 宋体; line-height: 26px; color: rgb(102, 102, 102); background-color: rgb(238, 238, 238);"><img src="http://www.thinkphp.com/ueditor/php/upload/image/20161105/1478347713124490.jpg" alt="1478347713124490.jpg"/>中兴通讯是全球领先的综合通信解决方案提供商。公司通过为全球160多个国家和地区的电信运营商和企业网客户个好几节提供创新技术与产品解决方案，让全世界用户享有语音、数据、多媒体、无线宽带等全方位沟通。公司成立于1985年推广个地在香港和深圳两地上市，是中国最大的通信设备上市公司。</p><p style="margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 0px 0px 10px; outline: none; text-indent: 2em; text-align: justify; font-size: 14px; font-family: 宋体; line-height: 26px; color: rgb(102, 102, 102); background-color: rgb(238, 238, 238);">中兴通讯是全球领先的综合通信解决方案提供商。公司通过为全球160多个国家和地区的电信运营商和企业网客户个好几节提供创新技术与产品解决方案，让全世界用户享有语音、数据、多媒体、无线宽带等全方位沟通。公司成立于1985年推广个地在香港和深圳两地上市，是中国最大的通信设备上市公司。</p><p style="margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 0px 0px 10px; outline: none; text-indent: 2em; text-align: justify; font-size: 14px; font-family: 宋体; line-height: 26px; color: rgb(102, 102, 102); background-color: rgb(238, 238, 238);">中兴通讯是全球领先的综合通信解决方案提供商。公司通过为全球160多个国家和地区的电信运营商和企业网客户个好几节提供创新技术与产品解决方案，让全世界用户享有语音、数据、多媒体、无线宽带等全方位沟通。公司成立于1985年推广个地在香港和深圳两地上市，是中国最大的通信设备上市公司。</p><p><br/></p>');

-- --------------------------------------------------------

--
-- 表的结构 `access`
--

CREATE TABLE IF NOT EXISTS `access` (
  `role_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `access`
--

INSERT INTO `access` (`role_id`, `node_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9);

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(22) NOT NULL,
  `password` char(32) NOT NULL,
  `age` tinyint(3) unsigned NOT NULL,
  `gander` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `qq` int(10) unsigned NOT NULL DEFAULT '0',
  `phone` int(10) unsigned NOT NULL,
  `email` char(50) NOT NULL,
  `address` char(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `age`, `gander`, `qq`, `phone`, `email`, `address`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 0, 0, 0, 0, '', ''),
(2, 'demo', 'fe01ce2a7fbac8fafaed7c982a04e229', 0, 0, 0, 0, '', '');

-- --------------------------------------------------------

--
-- 表的结构 `admin_role`
--

CREATE TABLE IF NOT EXISTS `admin_role` (
  `admin_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `admin_role`
--

INSERT INTO `admin_role` (`admin_id`, `role_id`) VALUES
(2, 1);

-- --------------------------------------------------------

--
-- 表的结构 `banner`
--

CREATE TABLE IF NOT EXISTS `banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pic` char(150) NOT NULL,
  `name` char(100) NOT NULL,
  `url` char(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `banner`
--

INSERT INTO `banner` (`id`, `pic`, `name`, `url`) VALUES
(8, '/uploads/20161117/b95b2979c6de404cc5aa09d069c4ff4f.jpg', '111111', 'http://www.baidu.com'),
(9, '/uploads/20161117/ff7aa37bc291bb3189101ac9487ad99d.jpg', '22222', 'http://www.baidu.com'),
(10, '/uploads/20161117/5785bce972b32ff17302d0dd45edb06b.jpg', '333333', 'http://www.baidu.com'),
(11, '/uploads/20161117/1f352fbc13716d3239c8d8f6c8a63a75.jpg', '444444', 'http://www.baidu.com'),
(12, '/uploads/20161117/325f17f26b4841070765a72caf461c03.jpg', '5555555555555', 'http://www.baidu.com'),
(13, '/uploads/20161117/131a316edce138d3a773eeb22f97d374.jpg', '6666', 'http://www.baidu.com'),
(14, '/uploads/20161117/a652edc0de553de73b12a9d61d3e7338.jpg', 'hello', 'http://pc.qq.com');

-- --------------------------------------------------------

--
-- 表的结构 `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(10) NOT NULL,
  `phone` bigint(11) unsigned NOT NULL,
  `fax` int(10) unsigned NOT NULL DEFAULT '0',
  `address` char(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `contact`
--

INSERT INTO `contact` (`id`, `name`, `phone`, `fax`, `address`) VALUES
(1, '多迪', 888888, 888888, '广州多迪网络科技有限公司海珠分公司'),
(2, '多迪', 88888811, 888888, '广州多迪网络科技有限公司海珠分公司'),
(3, '123', 15625137028, 123123123, '123'),
(4, 'heqiangchu', 15625137028, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `copyright`
--

CREATE TABLE IF NOT EXISTS `copyright` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `copyright`
--

INSERT INTO `copyright` (`id`, `content`) VALUES
(2, '<p style="text-align: center;"><img src="/ueditor/php/upload/image/20161117/1479360089901300.jpg" title="1479360089901300.jpg" alt="foot-logo.jpg"/>&nbsp;&nbsp;<img src="/ueditor/php/upload/image/20161117/1479360102100943.jpg" title="1479360102100943.jpg" alt="weixin.jpg"/></p><p><br/></p><p style="text-align: center; text-indent: 2em;">电话：0971-8888888888</p><p style="text-align: center; text-indent: 2em;">© 2005－2015 douban.com, all rights reserved &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 地址：南昌市南昌县西湖区八一大道</p><p style="text-align: center; text-indent: 2em;">关于我们 意见反馈 免责声明 Copyright © 2014 Sogou.com. All Rights Reserved. 京ICP证050897号</p>');

-- --------------------------------------------------------

--
-- 表的结构 `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(22) NOT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `email` char(50) NOT NULL,
  `content` char(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `message`
--

INSERT INTO `message` (`id`, `name`, `phone`, `email`, `content`) VALUES
(1, 'a爱爱爱', 15625137028, '11@11.qqq', 'shenme'),
(2, 'a爱爱爱', 15625137028, '11@11.qqq', 'shenme'),
(3, '爱爱爱', 0, '啊啊啊啊', '啊啊啊啊'),
(4, '爱爱爱', 15625137028, '505076355@qq.com', '啊啊啊啊'),
(5, '何强春', 18820629654, '50507655@qq.com', '什么鬼'),
(6, '00', 15625137028, 'heqiangchun0221@foxmail.com', 'hello'),
(7, 'sdsad', 15625137028, '505076355@qq.com', '123123');

-- --------------------------------------------------------

--
-- 表的结构 `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) DEFAULT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `brief` char(50) NOT NULL,
  `pic` char(100) NOT NULL,
  `news_category_id` int(10) unsigned NOT NULL,
  `author` char(12) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_news_news_category1_idx` (`news_category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

--
-- 转存表中的数据 `news`
--

INSERT INTO `news` (`id`, `title`, `addtime`, `brief`, `pic`, `news_category_id`, `author`) VALUES
(1, '品牌新闻品牌新闻品牌新闻品牌新闻品牌新闻品牌新闻品牌新闻品牌冒险”，因为定制的特殊性？', 1478502611, '', '', 1, ''),
(2, '近几年，定制家具逐步从线下走向线上，网购定制家具已成为一种消费潮流？', 1478349189, '', '', 1, ''),
(4, '万达西双版纳国际度假区盛大开业？', 1478349189, '', '', 1, ''),
(5, '结构是指家具所使用的材料和构件之间的一定组合与连接方式？', 1478349189, '', '', 1, ''),
(6, '家具材料的应用也有一定的选择性，其中主要应考虑到下列因素？', 1478349189, '', '', 1, ''),
(7, '强度 :强度方面要考虑其握着力和抗劈性能及弹性模量？', 1478349189, '', '', 1, ''),
(8, '公司新闻冒险”，因为定制的特殊性？', 1478349177, '', '', 2, ''),
(9, '近几年，定制家具逐步从线下走向线上，网购定制家具已成为一种消费潮流？', 1478349189, '', '', 2, ''),
(10, '万达西双版纳国际度假区盛大开业？', 1478349189, '', '', 2, ''),
(11, '结构是指家具所使用的材料和构件之间的一定组合与连接方式？', 1478349189, '', '', 2, ''),
(12, '家具材料的应用也有一定的选择性，其中主要应考虑到下列因素？', 1478349189, '', '', 2, ''),
(13, '强度 :强度方面要考虑其握着力和抗劈性能及弹性模量？', 1478349189, '', '', 2, ''),
(14, '最新动态冒险”，因为定制的特殊性？', 1478349177, '', '', 3, ''),
(15, '近几年，定制家具逐步从线下走向线上，网购定制家具已成为一种消费潮流？', 1478349189, '', '', 3, ''),
(16, '万达西双版纳国际度假区盛大开业？', 1478349189, '', '', 3, ''),
(17, '结构是指家具所使用的材料和构件之间的一定组合与连接方式？', 1478349189, '', '', 3, ''),
(18, '家具材料的应用也有一定的选择性，其中主要应考虑到下列因素？', 1478349189, '', '', 3, ''),
(19, '强度 :强度方面要考虑其握着力和抗劈性能及弹性模量？', 1478349189, '', '', 3, ''),
(20, '重点关注冒险”，因为定制的特殊性？', 1478349177, '', '', 4, ''),
(21, '近几年，定制家具逐步从线下走向线上，网购定制家具已成为一种消费潮流？', 1478349189, '', '', 4, ''),
(22, '万达西双版纳国际度假区盛大开业？', 1478349189, '', '', 4, ''),
(23, '结构是指家具所使用的材料和构件之间的一定组合与连接方式？', 1478349189, '', '', 4, ''),
(24, '家具材料的应用也有一定的选择性，其中主要应考虑到下列因素？', 1478349189, '', '', 4, ''),
(25, '强度 :强度方面要考虑其握着力和抗劈性能及弹性模量？', 1478349189, '', '', 4, ''),
(26, '热点专题热点专题热点专题热点专题冒险”，因为定制的特殊性？', 1478349177, '', '', 5, ''),
(27, '近几年，定制家具逐步从线下走向线上，网购定制家具已成为一种消费潮流？', 1478349189, '', '', 5, ''),
(28, '万达西双版纳国际度假区盛大开业？', 1478349189, '', '', 5, ''),
(29, '结构是指家具所使用的材料和构件之间的一定组合与连接方式？', 1478349189, '', '', 5, ''),
(30, '家具材料的应用也有一定的选择性，其中主要应考虑到下列因素？', 1478349189, '', '', 5, ''),
(31, '强度 :强度方面要考虑其握着力和抗劈性能及弹性模量？', 1478349189, '', '', 5, ''),
(32, '品牌新闻品牌新闻品牌新闻品牌新闻品牌新闻品牌新闻品牌新闻品牌冒险”，因为定制的特殊性？', 1478349177, '', '', 1, ''),
(38, '品牌新闻品牌新闻品牌新闻品牌新闻品牌新闻品牌新闻品牌新闻品牌冒险”，因为定制的特殊性？', 1478349177, '', '', 2, '');

-- --------------------------------------------------------

--
-- 表的结构 `news_category`
--

CREATE TABLE IF NOT EXISTS `news_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(20) NOT NULL,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `news_category`
--

INSERT INTO `news_category` (`id`, `name`, `pid`) VALUES
(1, '品牌新闻', 0),
(2, '公司新闻', 0),
(3, '最新动态', 0),
(4, '重点关注', 0),
(5, '热点专题', 0);

-- --------------------------------------------------------

--
-- 表的结构 `news_content`
--

CREATE TABLE IF NOT EXISTS `news_content` (
  `content` text NOT NULL,
  `news_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `news_content`
--

INSERT INTO `news_content` (`content`, `news_id`) VALUES
('<p>咖啡树是属于阿卡那科常绿科，是热带性植物，不而寒，大多种植在标高为300-400公尺的地区，也有在标高为2000-2500公尺的高地栽培， 但种植在海拔1500公尺以上的山坡者品质较好。咖啡树最适合生长在平均温度为20摄氏度左右，年降水量为1500-2000公厘，土壤透水性强，日 照适宜的环境里。咖啡性惧霜降及寒冬，绝对不能种在降霜的高地。一般野生的咖啡树可长到8公尺左右，家种的，为保咖啡豆的品质，便于管理 以及采收方便，而将高度剪至2公尺，咖啡豆播种后3-5年开始结果，5-20年为采收期，一棵咖啡树每年约可结果3-5公斤咖啡樱桃</p><p><img src="http://www.thinkphp.com/static/web/images/news-details.jpg" style="margin: 0px auto 20px; padding: 0px; outline: none; border: none; display: block; width: 585px; font-family: Simsun; font-size: medium; white-space: normal; background-color: rgb(238, 238, 238);"/></p><p>咖啡树是属于阿卡那科常绿科，是热带性植物，不而寒，大多种植在标高为300-400公尺的地区，也有在标高为2000-2500公尺的高地栽培， 但种植在海拔1500公尺以上的山坡者品质较好。咖啡树最适合生长在平均温度为20摄氏度左右，年降水量为1500-2000公厘，土壤透水性强，日 照适宜的环境里。咖啡性惧霜降及寒冬，绝对不能种在降霜的高地。一般野生的咖啡树可长到8公尺左右，家种的，为保咖啡豆的品质，便于管理 以及采收方便，而将高度剪至2公尺，咖啡豆播种后3-5年开始结果，5-20年为采收期，一棵咖啡树每年约可结果3-5公斤咖啡樱桃</p><p><br/></p>', 1),
('', 2);

-- --------------------------------------------------------

--
-- 表的结构 `node`
--

CREATE TABLE IF NOT EXISTS `node` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `title` varchar(45) NOT NULL,
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `node`
--

INSERT INTO `node` (`id`, `name`, `title`, `level`, `pid`) VALUES
(1, 'news', '新闻中心', 1, 0),
(2, 'index', '新闻列表', 2, 1),
(3, 'delete', '删除新闻', 2, 1),
(4, 'add', '添加新闻', 2, 1),
(5, 'edit', '修改新闻', 2, 1),
(6, 'category', '产品分类', 2, 1),
(7, 'addcate', '添加分类', 2, 1),
(8, 'cateedit', '修改分类', 2, 1),
(9, 'catedelete', '删除分类', 2, 1);

-- --------------------------------------------------------

--
-- 表的结构 `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_sn` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_address` char(254) NOT NULL,
  `stauts` tinyint(4) NOT NULL,
  `price` float NOT NULL,
  `num` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- 转存表中的数据 `order`
--

INSERT INTO `order` (`id`, `order_sn`, `user_id`, `user_address`, `stauts`, `price`, `num`) VALUES
(23, 201611190732471850, 1, '123', 0, 176, 3),
(24, 201611190758599789, 1, '123', 0, 352, 4),
(25, 201611190809516482, 1, '123', 0, 264, 3),
(27, 201611211241581987, 1, '123', 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `order_desc`
--

CREATE TABLE IF NOT EXISTS `order_desc` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` float NOT NULL,
  `num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `order_desc`
--

INSERT INTO `order_desc` (`order_id`, `product_id`, `price`, `num`) VALUES
(23, 18, 88, 1),
(23, 19, 88, 2),
(24, 10, 88, 1),
(29, 1, 88, 1);

-- --------------------------------------------------------

--
-- 表的结构 `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(22) NOT NULL,
  `brief` char(255) NOT NULL,
  `pic` char(100) NOT NULL,
  `shop_price` float unsigned NOT NULL DEFAULT '0',
  `start_time` int(10) unsigned NOT NULL,
  `end_time` int(10) unsigned NOT NULL DEFAULT '0',
  `pro_category_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_product_pro_category1_idx` (`pro_category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

--
-- 转存表中的数据 `product`
--

INSERT INTO `product` (`id`, `name`, `brief`, `pic`, `shop_price`, `start_time`, `end_time`, `pro_category_id`) VALUES
(1, '测试', '介绍介绍', '/uploads/20161120/4413f153e90b7f084f0cb5010c16d559.jpg', 88, 1479571682, 1970, 1),
(2, '咖啡1', '介绍介绍', '/uploads/20161117/754e1e1e63963b9bf790549076a1ca3e.jpg', 88, 1970, 2016, 2),
(3, '咖啡2', '介绍介绍', '/uploads/20161117/8c4826a96eccebcb0c2bf114edf1ce41.png', 88, 1970, 2016, 2),
(4, '咖啡3', '介绍介绍', '/uploads/20161117/25a85600f1e7709398f9a3b034aa8fb1.png', 88, 1970, 2016, 2),
(5, '咖啡4', '介绍介绍', '/uploads/20161117/43dc288d87bf59f93befa0d2dd731cbf.jpg', 88, 1970, 2016, 2),
(6, '咖啡5', '介绍介绍', '/uploads/20161117/cabc23da95c058970433b8bf39d4602b.jpg', 88, 1970, 2016, 2),
(7, '麦斯威尔', '介绍介绍', '/uploads/20161108/19d73a6360790225556bc9b9a6b10c9d.jpg', 88, 1478586019, 1478586019, 3),
(8, '麦斯威尔', '介绍介绍', '/uploads/20161108/1bb4368750e0e9a5a852a0412b2ce3da.jpg', 88, 1478586050, 1478586049, 3),
(9, '麦斯威尔', '介绍介绍', '/uploads/20161108/f522eece9a8fb09485df5be878c4fd2c.jpg', 88, 1478586066, 1478586066, 3),
(10, '麦斯威尔', '介绍介绍', '/uploads/20161108/4b1dc8b8fdb7d9bcb77343267f0c2866.jpg', 88, 1478586085, 1478586085, 3),
(11, '麦斯威尔', '介绍介绍', '/uploads/20161117/93302c8beb42b3b317d3bdb8a9be3687.jpg', 88, 2016, 2016, 3),
(12, '麦斯威尔', '介绍介绍', '/uploads/20161117/7b09be8d2dea86a87385a1b8f615fc01.jpg', 88, 2016, 2016, 3),
(13, '麦斯威尔', '介绍介绍', '/uploads/20161117/d85d339d6f93b26bf40748cbe09f9d25.jpg', 88, 2016, 2016, 3),
(14, '麦斯威尔', '介绍介绍', '/uploads/20161117/1e59413eed1f355c51bd254f3b031557.jpg', 88, 2016, 2016, 3),
(15, '公司治理', '介绍介绍', '/uploads/20161108/19d73a6360790225556bc9b9a6b10c9d.jpg', 88, 1478586019, 1478586019, 4),
(16, '公司治理', '介绍介绍', '/uploads/20161108/1bb4368750e0e9a5a852a0412b2ce3da.jpg', 88, 1478586050, 1478586049, 4),
(17, '公司治理', '介绍介绍', '/uploads/20161108/f522eece9a8fb09485df5be878c4fd2c.jpg', 88, 1478586066, 1478586066, 4),
(18, '公司治理', '介绍介绍', '/uploads/20161108/4b1dc8b8fdb7d9bcb77343267f0c2866.jpg', 88, 1478586085, 1478586085, 4),
(19, '公司治理', '介绍介绍', '/uploads/20161108/fcd7ecac54b162c9bbf2e464aa712cb1.jpg', 88, 1478586106, 1478586106, 4),
(20, '公司治理', '介绍介绍', '/uploads/20161108/91f7962dddc1eb95b1a6ec4eec034f61.jpg', 88, 1478586128, 1478586128, 4),
(21, '公司治理', '介绍介绍', '/uploads/20161108/29c9eeee080c3eb3a4fb8b3ed3f1151d.jpg', 88, 1478586154, 1478586154, 4),
(22, '公司治理', '介绍介绍', '/uploads/20161108/ecdf7cb4d1667b9c9933cd0389beaca1.jpg', 88, 1478586179, 1478586179, 4),
(23, '产品发布', '介绍介绍', '/uploads/20161108/19d73a6360790225556bc9b9a6b10c9d.jpg', 88, 1478586019, 1478586019, 5),
(24, '产品发布', '介绍介绍', '/uploads/20161108/1bb4368750e0e9a5a852a0412b2ce3da.jpg', 88, 1478586050, 1478586049, 5),
(25, '产品发布', '介绍介绍', '/uploads/20161108/f522eece9a8fb09485df5be878c4fd2c.jpg', 88, 1478586066, 1478586066, 5),
(26, '产品发布', '介绍介绍', '/uploads/20161108/4b1dc8b8fdb7d9bcb77343267f0c2866.jpg', 88, 1478586085, 1478586085, 5),
(27, '产品发布', '介绍介绍', '/uploads/20161108/fcd7ecac54b162c9bbf2e464aa712cb1.jpg', 88, 1478586106, 1478586106, 5),
(28, '产品发布', '介绍介绍', '/uploads/20161108/91f7962dddc1eb95b1a6ec4eec034f61.jpg', 88, 1478586128, 1478586128, 5),
(29, '产品发布', '介绍介绍', '/uploads/20161108/29c9eeee080c3eb3a4fb8b3ed3f1151d.jpg', 88, 1478586154, 1478586154, 5),
(30, '产品发布', '介绍介绍', '/uploads/20161108/ecdf7cb4d1667b9c9933cd0389beaca1.jpg', 88, 1478586179, 1478586179, 5),
(31, '品牌中心', '介绍介绍', '/uploads/20161108/19d73a6360790225556bc9b9a6b10c9d.jpg', 88, 1478586019, 1478586019, 6),
(32, '品牌中心', '介绍介绍', '/uploads/20161108/1bb4368750e0e9a5a852a0412b2ce3da.jpg', 88, 1478586050, 1478586049, 6),
(33, '品牌中心', '介绍介绍', '/uploads/20161108/f522eece9a8fb09485df5be878c4fd2c.jpg', 88, 1478586066, 1478586066, 6),
(34, '品牌中心', '介绍介绍', '/uploads/20161108/4b1dc8b8fdb7d9bcb77343267f0c2866.jpg', 88, 1478586085, 1478586085, 6),
(35, '品牌中心', '介绍介绍', '/uploads/20161117/b8ae2b4aa253eb02b475e389e29921bb.jpg', 0.01, 2016, 2016, 6),
(36, '品牌中心', '介绍介绍', '/uploads/20161117/d33802b57c4260ef8416088886409f95.jpg', 88, 2016, 2016, 6),
(37, '品牌中心', '介绍介绍', '/uploads/20161117/4d77f7f54015882e4257a5b03b640a0b.jpg', 88, 2016, 2016, 6),
(38, '品牌中心', '介绍介绍', '/uploads/20161117/d23b2fde8bf4937cd53e2cd5a42ff9ca.jpg', 88, 2016, 2016, 6);

-- --------------------------------------------------------

--
-- 表的结构 `pro_category`
--

CREATE TABLE IF NOT EXISTS `pro_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(20) NOT NULL,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `pro_category`
--

INSERT INTO `pro_category` (`id`, `name`, `pid`) VALUES
(1, '产品中心', 0),
(2, '咖啡', 0),
(3, '最新时尚', 0),
(4, '公司治理', 0),
(5, '产品发布', 0),
(6, '品牌中心', 0);

-- --------------------------------------------------------

--
-- 表的结构 `pro_img`
--

CREATE TABLE IF NOT EXISTS `pro_img` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `path` char(100) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=150 ;

--
-- 转存表中的数据 `pro_img`
--

INSERT INTO `pro_img` (`id`, `path`, `pid`) VALUES
(115, '/uploads/20161108/a02a5d89150b3e989e1825040db412ae.jpg', 7),
(116, '/uploads/20161108/85985c307ee320f8be96261b91baeed6.jpg', 7),
(117, '/uploads/20161108/57f9a5b5c9e4d3b2661d1d0146a3e71e.jpg', 7),
(118, '/uploads/20161108/bb9018d96f8b080d3a77dc964b690e82.jpg', 7),
(119, '/uploads/20161117/3e272d3c5aa27ff722b0ea74b491eb9e.jpg', 2),
(120, '/uploads/20161117/d0d8e5e7c4dfa1596e450e707fc21ac0.jpg', 2),
(121, '/uploads/20161117/2eed139f868fb84507da67ff068076a8.jpg', 2),
(122, '/uploads/20161117/d2623b64582436511eca688f94e5b877.jpg', 2),
(123, '/uploads/20161117/6d85ac0b5aa079e6b3b5af9828149b9b.png', 3),
(124, '/uploads/20161117/ead7be4350326322de0e93f1b5079212.png', 3),
(125, '/uploads/20161117/b517c5db003ae988adf513781ff39223.png', 3),
(126, '/uploads/20161117/d42698b53f9c1557d8efa6ecdad836d3.jpg', 3),
(127, '/uploads/20161117/ff73d0077d94b0c6346d223ab0f41c09.png', 4),
(128, '/uploads/20161117/baaffa0c62a98061f73d898beb771cf9.png', 4),
(129, '/uploads/20161117/ba9b32ace7d7e4acbef4b29b76d5fc8c.png', 4),
(130, '/uploads/20161117/61b89e501b1d458617bcca278a1fa3df.jpg', 4),
(131, '/uploads/20161117/3a5390d2c10f54cc6dd2da8af30502d4.png', 5),
(132, '/uploads/20161117/410f9a515defce89dd35705f85705f7f.png', 5),
(133, '/uploads/20161117/683376545f4df8afe7305f28d9c9a0d4.jpg', 5),
(134, '/uploads/20161117/7c2f9d56af0f29399ba77106c1636c79.png', 6),
(135, '/uploads/20161117/0733de9ae3a80333cd8e14b8cb7b0024.png', 6),
(136, '/uploads/20161117/3723e0316adef2d946170f132958b45d.png', 6),
(137, '/uploads/20161117/440fbfe29260a53b1a177c1b204df770.jpg', 6),
(138, '/uploads/20161117/3474ac5659caf39852bb221b886a645b.png', 11),
(139, '/uploads/20161117/a5b2a4e5086f1625e649808db200277f.png', 11),
(140, '/uploads/20161117/295ef69b04d5bd787cb7434c81c77cfb.jpg', 11),
(147, '/uploads/20161120/193aa091f9871b6547a05708a7b82bd6.png', 1),
(148, '/uploads/20161120/d620218c255599296b5abc6c37c5d54e.jpg', 1),
(149, '/uploads/20161120/f7dabfc7ce1d2e2e25b07ddf4b635881.png', 1);

-- --------------------------------------------------------

--
-- 表的结构 `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `explain` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `role`
--

INSERT INTO `role` (`id`, `name`, `explain`) VALUES
(1, '新闻管理员', '');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(22) NOT NULL,
  `password` char(32) NOT NULL,
  `phone` bigint(11) unsigned NOT NULL,
  `email` char(50) NOT NULL,
  `birthday` char(6) NOT NULL,
  `realname` char(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `phone`, `email`, `birthday`, `realname`) VALUES
(1, 'qiangchun', '202cb962ac59075b964b07152d234b70', 15625137028, '505076355@qq.com', '10.10', '何强春'),
(2, 'qiangchun', '202cb962ac59075b964b07152d234b70', 15625137028, 'heqiangchun0221@foxmail.com', '10.10', '何强春');

-- --------------------------------------------------------

--
-- 表的结构 `user_address`
--

CREATE TABLE IF NOT EXISTS `user_address` (
  `address` char(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user_address`
--

INSERT INTO `user_address` (`address`, `user_id`) VALUES
('aaaa2', 2),
('123', 1);

--
-- 限制导出的表
--

--
-- 限制表 `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `fk_news_news_category1` FOREIGN KEY (`news_category_id`) REFERENCES `news_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- 限制表 `news_content`
--
ALTER TABLE `news_content`
  ADD CONSTRAINT `fk_news_content_news` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- 限制表 `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_product_pro_category1` FOREIGN KEY (`pro_category_id`) REFERENCES `pro_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
