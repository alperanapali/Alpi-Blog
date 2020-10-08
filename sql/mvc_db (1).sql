-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 08, 2020 at 04:22 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mvc_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(125) NOT NULL,
  `icon_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `icon_name`) VALUES
(12, 'Food', 'cutlery'),
(13, 'Games', 'gamepad'),
(14, 'Tech', 'laptop'),
(15, 'News', 'newspaper-o'),
(16, 'Funny', 'rocket'),
(17, 'Art', 'paint-brush'),
(18, 'Cards', 'credit-card');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `comment_content` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `post_id` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment_content`, `user_id`, `timestamp`, `post_id`) VALUES
(75, 'Looks delicious', 198, '2020-10-08 07:15:32', 'tacos-mhmm'),
(76, 'so naysuuuuuu', 198, '2020-10-08 11:10:06', 'china-s-beautiful-colors'),
(77, 'Looks like blocks are broken..', 198, '2020-10-08 11:14:08', 'tinymce-features');

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `id` int(11) NOT NULL,
  `name` varchar(70) NOT NULL,
  `image` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `size` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`id`, `name`, `image`, `thumb`, `size`) VALUES
(213, 'monte-cristo-sandwich-6new.jpg', 'uploads/images/2020/10/08/1602141251-9468.jpg', 'uploads/images/2020/10/08/1602141251-9468-thumb.jpg', 63497),
(214, 'Healthy-Tacos-6.jpg', 'uploads/images/2020/10/08/1602141315-9475.jpg', 'uploads/images/2020/10/08/1602141315-9475-thumb.jpg', 212751),
(215, 'neon-heart.jpeg', 'uploads/images/2020/10/08/1602146551-8703.jpeg', 'uploads/images/2020/10/08/1602146551-8703-thumb.jpeg', 209647),
(216, 'neon-lightning.png', 'uploads/images/2020/10/08/1602146876-3707.png', 'uploads/images/2020/10/08/1602146876-3707-thumb.png', 147576),
(217, 'neon-triangle.jpg', 'uploads/images/2020/10/08/1602146992-2225.jpg', 'uploads/images/2020/10/08/1602146992-2225-thumb.jpg', 249545),
(218, 'ghost.jpg', 'uploads/images/2020/10/08/1602147189-9367.jpg', 'uploads/images/2020/10/08/1602147189-9367-thumb.jpg', 214596),
(219, '1602073664-2639.jpg', 'uploads/images/2020/10/08/1602152743-8668.jpg', 'uploads/images/2020/10/08/1602152743-8668-thumb.jpg', 1708651),
(220, '1602073729-8890.jpg', 'uploads/images/2020/10/08/1602152784-6583.jpg', 'uploads/images/2020/10/08/1602152784-6583-thumb.jpg', 1207625),
(221, '1536913366-496.jpg', 'uploads/images/2020/10/08/1602152896-6183.jpg', 'uploads/images/2020/10/08/1602152896-6183-thumb.jpg', 1718469),
(222, '1536914686-1449.jpg', 'uploads/images/2020/10/08/1602153128-3583.jpg', 'uploads/images/2020/10/08/1602153128-3583-thumb.jpg', 1516167),
(223, '1536916346-337.jpg', 'uploads/images/2020/10/08/1602154879-8155.jpg', 'uploads/images/2020/10/08/1602154879-8155-thumb.jpg', 1638013),
(224, '1536916312-385.jpg', 'uploads/images/2020/10/08/1602155461-6041.jpg', 'uploads/images/2020/10/08/1602155461-6041-thumb.jpg', 1073646),
(225, '1536914403-733.jpg', 'uploads/images/2020/10/08/1602155609-6590.jpg', 'uploads/images/2020/10/08/1602155609-6590-thumb.jpg', 1162452);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `header` varchar(180) NOT NULL,
  `content` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `slug` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `header`, `content`, `timestamp`, `user_id`, `file_id`, `category_id`, `slug`) VALUES
(226, 'Wingardium Deliciosa', '<p>Use pan, Eggs, Cool bread, Ham, Cheddar, Mayo.Go mix tem.</p>', '2020-10-08 07:14:11', 198, 213, 12, 'wingardium-deliciosa'),
(227, 'Tacos mhmm', '<p>Eat it on the street or dont. Mhmmmmm</p>', '2020-10-08 07:15:15', 198, 214, 12, 'tacos-mhmm'),
(228, 'Lovely Lamp', '<p>Isnt it?</p>', '2020-10-08 08:42:31', 198, 215, 17, 'lovely-lamp'),
(229, 'Neon Theme Is The Best Apparently', '<p>Authorities say so.</p>', '2020-10-08 08:47:56', 198, 216, 17, 'neon-theme-is-the-best-apparently'),
(230, 'Triangle Time', '<p>180*</p>', '2020-10-08 08:49:52', 198, 217, 15, 'triangle-time'),
(231, 'Best Costume Ideas for Halloween', '<p>Just dont wear a corona mask.</p>', '2020-10-08 08:53:09', 198, 218, 12, 'best-costume-ideas-for-halloween'),
(232, 'China- Is It a Threat', '<p>Well maybe.</p>', '2020-10-08 10:25:43', 198, 219, 12, 'china-is-it-a-threat'),
(233, 'Best Bus Eu', '<p>When u dont add the text part its broken.</p>', '2020-10-08 10:26:24', 198, 220, 18, 'best-bus-eu'),
(234, 'Most Desired Vacay Destinations', '<p>Istanbul? hmm</p>', '2020-10-08 10:28:16', 198, 221, 12, 'most-desired-vacay-destinations'),
(235, 'Nice Lightening Here', '<p>Yeah</p>', '2020-10-08 10:32:08', 198, 222, 15, 'nice-lightening-here'),
(236, 'Who is winning the duel?', '', '2020-10-08 10:38:06', 198, 0, 12, 'who-is-winning-the-duel'),
(237, 's', '', '2020-10-08 10:41:36', 198, 0, 12, 's'),
(238, 'dsfsd', '', '2020-10-08 10:44:08', 198, 0, 12, 'dsfsd'),
(240, 'China\'s Beautiful Colors', '<p>Wooow no polution heh?</p>', '2020-10-08 11:01:19', 198, 223, 15, 'china-s-beautiful-colors'),
(241, 'TinyMCE Features', '<p>TinyMce is shit</p>', '2020-10-08 11:13:29', 198, 225, 14, 'tinymce-features');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `password` varchar(255) NOT NULL,
  `login_attempts` int(11) DEFAULT NULL,
  `permission_id` tinyint(1) NOT NULL DEFAULT 2,
  `file_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `email`, `password`, `login_attempts`, `permission_id`, `file_id`) VALUES
(198, 'alper', 'anapali', 'anapalialper@gmail.com', '$2y$10$sDhVnjj.gYQ76sKVMpd4J.UiS0UbnA4Ile17lJQVqYEbQBues8f8G', 0, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_permission`
--

CREATE TABLE `user_permission` (
  `id` int(11) NOT NULL,
  `permission` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_permission`
--

INSERT INTO `user_permission` (`id`, `permission`) VALUES
(1, 'Admin'),
(2, 'Guest'),
(3, 'Editor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_name` (`category_name`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`(1024));

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `file_id` (`file_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_permission`
--
ALTER TABLE `user_permission`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT for table `user_permission`
--
ALTER TABLE `user_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `post user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
