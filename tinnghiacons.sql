-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 20, 2020 at 03:57 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tinnghiacons`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) NOT NULL,
  `parentId` bigint(20) DEFAULT NULL,
  `title` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metaTitle` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `parentId`, `title`, `metaTitle`, `slug`, `content`) VALUES
(1, NULL, 'Thiet ke nha pho', NULL, 'thiet_ke_nha_pho', NULL),
(2, NULL, 'thiet ke biet thu', NULL, 'thiet_ke_biet_thu', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` bigint(20) NOT NULL,
  `authorId` bigint(20) NOT NULL,
  `parentId` bigint(20) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metaTitle` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `publishedAt` datetime DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `authorId`, `parentId`, `image`, `title`, `metaTitle`, `slug`, `summary`, `published`, `createdAt`, `updatedAt`, `publishedAt`, `content`) VALUES
(1, 2, NULL, 'https://i.pinimg.com/originals/d8/fb/b6/d8fbb62992c9be0e022f028197a9829c.jpg', 'Test 1', NULL, 'test_1', NULL, 1, '2020-08-20 00:00:00', '2020-08-20 00:00:00', '2020-08-20 00:00:00', 'huhusdosdasopdiaspda');

-- --------------------------------------------------------

--
-- Table structure for table `post_category`
--

CREATE TABLE `post_category` (
  `postId` bigint(20) NOT NULL,
  `categoryId` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_category`
--

INSERT INTO `post_category` (`postId`, `categoryId`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `post_comment`
--

CREATE TABLE `post_comment` (
  `id` bigint(20) NOT NULL,
  `postId` bigint(20) NOT NULL,
  `parentId` bigint(20) DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `publishedAt` datetime DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_meta`
--

CREATE TABLE `post_meta` (
  `id` bigint(20) NOT NULL,
  `postId` bigint(20) NOT NULL,
  `key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `postId` bigint(20) NOT NULL,
  `tagId` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product-category`
--

CREATE TABLE `product-category` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product-category`
--

INSERT INTO `product-category` (`id`, `name`, `description`, `image`) VALUES
(1, 'iphone 5S', 'Apple Iphone 5S', 'https://www.google.com/search?q=iphone+5s&sxsrf=ALeKk00yrTNI7rrLNM0G4p9KoB4iPluRfQ:1597497046282&source=lnms&tbm=isch&sa=X&ved=2ahUKEwigt-SfpJ3rAhWOUt4KHROKC98Q_AUoAXoECAwQAw&biw=1280&bih=698#imgrc=gWf_YJARHjzxKM'),
(2, 'Iphone X', 'Apple Iphone X', 'https://www.google.com/search?q=iphone+x&tbm=isch&ved=2ahUKEwjOneqgpJ3rAhUpJaYKHTuTBuwQ2-cCegQIABAA&oq=iphone+x&gs_lcp=CgNpbWcQAzIECCMQJzIFCAAQsQMyBAgAEEMyBQgAELEDMgQIABBDMgUIABCxAzIFCAAQsQMyBQgAELEDMgUIABCxAzIFCAAQsQM6AggAUKDgA1jl5gNglOgDaABwAHgAgAFbiAGqAZIBATKYAQCgAQGqAQtnd3Mtd2l6LWltZ8ABAQ&sclient=img&ei=2N43X87RHKnKmAW7pprgDg&bih=698&biw=1280#imgrc=CpSY7iIVDqi_xM'),
(3, 'iodsfhiodsufo', 'dfsfdsdf', 'df'),
(4, 'sdds', 'eweew', 'ww'),
(5, 'kjkj', 'fgfh', 'hgh'),
(6, 'nokia', 'dsd', 'sds');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'author');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metaTitle` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `fullName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passwordHash` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `registeredAt` datetime NOT NULL,
  `profile` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fullName`, `mobile`, `email`, `passwordHash`, `registeredAt`, `profile`, `role_id`) VALUES
(1, 'Nguyễn Quang Trung', '0376811997', 'kevinnguyen510@gmail.com', '123456', '2020-08-18 16:38:56', 'https://i.pinimg.com/originals/d9/9a/8f/d99a8fe3c574d640b9701b37799fdcbd.jpg', 1),
(2, 'Hoàng Thị Diễm Thi', '0123456789', 'diemthi@gmail.com', '123456', '2020-08-18 16:40:10', 'https://i.pinimg.com/originals/d8/fb/b6/d8fbb62992c9be0e022f028197a9829c.jpg', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_category_parent` (`parentId`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_slug` (`slug`),
  ADD KEY `idx_post_user` (`authorId`),
  ADD KEY `idx_post_parent` (`parentId`);

--
-- Indexes for table `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`postId`,`categoryId`),
  ADD KEY `idx_pc_category` (`categoryId`),
  ADD KEY `idx_pc_post` (`postId`);

--
-- Indexes for table `post_comment`
--
ALTER TABLE `post_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_comment_post` (`postId`),
  ADD KEY `idx_comment_parent` (`parentId`);

--
-- Indexes for table `post_meta`
--
ALTER TABLE `post_meta`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_post_meta` (`postId`,`key`),
  ADD KEY `idx_meta_post` (`postId`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD KEY `fk_post_tag_tag` (`tagId`),
  ADD KEY `fk_post_tag_post` (`postId`);

--
-- Indexes for table `product-category`
--
ALTER TABLE `product-category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_email` (`email`),
  ADD KEY `fk_role_user` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `post_comment`
--
ALTER TABLE `post_comment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_meta`
--
ALTER TABLE `post_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product-category`
--
ALTER TABLE `product-category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `fk_category_parent` FOREIGN KEY (`parentId`) REFERENCES `category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `fk_post_parent` FOREIGN KEY (`parentId`) REFERENCES `post` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_post_user` FOREIGN KEY (`authorId`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `post_category`
--
ALTER TABLE `post_category`
  ADD CONSTRAINT `fk_pc_category` FOREIGN KEY (`categoryId`) REFERENCES `category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pc_post` FOREIGN KEY (`postId`) REFERENCES `post` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `post_comment`
--
ALTER TABLE `post_comment`
  ADD CONSTRAINT `fk_comment_parent` FOREIGN KEY (`parentId`) REFERENCES `post_comment` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_comment_post` FOREIGN KEY (`postId`) REFERENCES `post` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `post_meta`
--
ALTER TABLE `post_meta`
  ADD CONSTRAINT `fk_meta_post` FOREIGN KEY (`postId`) REFERENCES `post` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD CONSTRAINT `fk_post_tag_post` FOREIGN KEY (`postId`) REFERENCES `post` (`id`),
  ADD CONSTRAINT `fk_post_tag_tag` FOREIGN KEY (`tagId`) REFERENCES `tag` (`id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_role_user` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
