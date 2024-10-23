-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2024-07-22 15:25:08
-- 服务器版本： 5.7.28
-- PHP 版本： 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `game1`
--

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `pid` int(11) NOT NULL,
  `user` varchar(30) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `password` varchar(18) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `name` varchar(8) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `sex` char(2) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '男',
  `age` int(3) NOT NULL,
  `tel` char(11) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `email` varchar(40) CHARACTER SET ascii COLLATE ascii_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`pid`, `user`, `password`, `name`, `sex`, `age`, `tel`, `email`) VALUES
(1, 'xietian', 'xie123456', 'xt', '男', 20, '18678095647', '10398975@qq.com'),
(2, 'wanglu', 'wang123456', '王露', '女', 20, '18673827811', 'wanglu@163.com'),
(3, 'xietian1', 'xie123456', '谢天1', '男', 20, '18617098907', 'xietian@163.com'),
(4, 'xietian12', 'xie123123', '谢天', '男', 26, '18617659102', 'xietian@163.com'),
(5, 'zhangsan', 'zhang123456', '路璐', '男', 26, '18617659102', '10398975@qq.com'),
(6, 'wangwu', 'wang123456', '王五', '男', 23, '18617659101', '10398975@qq.com'),
(7, 'wangwu1', 'xie123214123', '王五', '男', 23, '18617659101', '10398975@qq.com'),
(8, 'wangxue', 'wang1234567', '王雪', '女', 21, '18617659101', '10398975@qq.com');

--
-- 转储表的索引
--

--
-- 表的索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`pid`),
  ADD UNIQUE KEY `user` (`user`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
