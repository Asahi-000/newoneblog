-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2024 at 03:14 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `ID` int(11) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`ID`, `title`, `description`) VALUES
(1, 'Wild Life', 'Wild Life'),
(2, 'Food and Beverages', 'This is yummy!'),
(3, 'Science &amp; Technology', 'Science &amp; Technology'),
(4, 'Arts &amp; Crafts', 'Express your artistic side.'),
(5, 'Music and Dances', 'Spread good vibes through music.'),
(6, 'Uncategorized', 'This is general category for all posts.'),
(9, 'Celebrity', 'Latest news regarding famous people.'),
(11, 'Kpop', 'KOREAN ARTISTS');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `ID` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT -1,
  `parent_comment_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `submit_date` datetime NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`ID`, `parent_id`, `parent_comment_id`, `name`, `content`, `submit_date`, `user_id`, `post_id`) VALUES
(1, -1, 0, '', 'OWRKKKKKK', '2024-12-12 18:11:30', 20, 19),
(2, 1, 1, '', 'YESSSS FOINALLYYY HUSHDUHSDAHSD', '2024-12-12 19:00:52', 12, 19),
(3, -1, 0, '', 'Try lang huhuhuhuhuhu', '2024-12-12 19:12:23', 22, 18),
(30, -1, 0, '', 'Try ulit huhuhh', '2024-12-13 13:25:36', 20, 19),
(46, 1, 30, '', 'TRy', '2024-12-13 15:05:33', 20, 19),
(47, 1, 0, '', 'TRy', '2024-12-13 15:06:51', 20, 19),
(48, -1, 0, '', 'Bakit ganyan', '2024-12-13 15:07:06', 20, 19),
(49, 1, 30, '', 'Why ayaw?\r\n', '2024-12-13 15:15:29', 20, 19),
(50, 1, 30, '', 'Last', '2024-12-13 15:18:03', 20, 19),
(51, 1, 30, '', 'bobo ata to eh', '2024-12-13 15:22:21', 20, 19),
(52, 1, 30, '', 'Bakit ayaw?', '2024-12-13 15:24:15', 20, 19),
(53, 1, 48, '', 'Try nga ulit', '2024-12-13 15:39:58', 20, 19),
(54, 1, 47, '', 'helloooowww', '2024-12-13 15:44:15', 20, 19),
(55, 1, 53, '', 'Last nga', '2024-12-13 15:46:26', 20, 19),
(56, 1, 48, '', 'Oh eto?\r\n', '2024-12-13 15:46:36', 20, 19),
(57, 1, 47, '', 'Yayyy gumana na', '2024-12-13 15:46:46', 20, 19),
(58, 1, 3, '', 'Try natin here', '2024-12-13 15:48:07', 20, 18),
(59, 1, 56, '', 'Hala', '2024-12-13 16:21:37', 20, 19),
(60, 1, 3, '', 'Okay', '2024-12-13 16:22:29', 20, 18),
(61, 1, 60, '', 'Hala', '2024-12-13 16:22:33', 20, 18),
(64, 1, 48, '', 'Bakit diyan', '2024-12-13 18:12:51', 20, 19),
(65, 1, 47, '', 'huhuhuhu', '2024-12-13 18:13:06', 20, 19);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `ID` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `category_id` int(11) UNSIGNED DEFAULT NULL,
  `author_id` int(11) UNSIGNED NOT NULL,
  `is_featured` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`ID`, `title`, `body`, `thumbnail`, `date_time`, `category_id`, `author_id`, `is_featured`) VALUES
(1, 'Amazing', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#039;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#039;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#039;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#039;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n', '1730521168Screenshot 2023-07-20 201548.png', '2024-11-02 02:28:13', 2, 12, 0),
(2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '1730514839Screenshot 2023-05-20 211424.png', '2024-11-02 02:33:59', 3, 13, 0),
(3, 'Kentucky Fried Children', 'Kentucky Fried Children Kentucky Fried Children', '1731979799bg5.png', '2024-11-02 03:11:03', 1, 12, 0),
(4, 'Music and Dances', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#039;Content here, content here&#039;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#039;lorem ipsum&#039; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#039;Content here, content here&#039;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#039;lorem ipsum&#039; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '1730521369Screenshot 2023-08-04 211025.png', '2024-11-02 03:18:39', 1, 12, 0),
(12, 'AHAHAAHAHAH', 'AHAHAAHAHAHAHAHAAHAHAHAHAHAAHAHAHAHAHAAHAHAH', '1730525903Screenshot 2023-06-30 191240.png', '2024-11-02 05:38:23', 6, 12, 0),
(13, 'EHEHEHEHEHEHEH', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#039;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#039;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', '1730529627Screenshot 2023-08-07 172119.png', '2024-11-02 05:47:57', 1, 12, 0),
(14, 'MINECRAFT', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#039;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#039;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#039;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#039;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', '1730540925Screenshot 2023-08-05 172202.png', '2024-11-02 06:02:25', 1, 12, 0),
(16, 'AHHASDHjlsjdlajdlajdnasdnasdnas', '1kdshdhkhdfkasdhfksdhf;kalsdhf;kld234j2oudfsldfjs.dhnksdlnfd', '1731977476chocolate-cookie-frappe.png', '2024-11-19 00:51:16', 3, 18, 0),
(17, 'FRIES', 'DHAKJSASHGDJKASGDJASGDASDBVNMXBCMNXBCMZXNSboiujiohadhasdHASdas', '1731979183bur.jpg', '2024-11-19 00:55:09', 1, 18, 0),
(18, 'YUYEUYUEYUYEUYEEE', 'K{P{PKASJDLAJSDLKASJDLKAJSDHASIUE$A(U&amp;*A(R&amp;FSIYFHKJASHD', '1731979109wallp.jpg', '2024-11-19 01:18:04', 1, 19, 0),
(19, 'PARK JEONGWOO', 'I LOVE U', '1731980539pjw.jpg', '2024-11-19 01:40:15', 1, 12, 0);

-- --------------------------------------------------------

--
-- Table structure for table `post_reactions`
--

CREATE TABLE `post_reactions` (
  `id` int(11) NOT NULL,
  `post_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `reaction_type` enum('like','dislike') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post_reactions`
--

INSERT INTO `post_reactions` (`id`, `post_id`, `user_id`, `reaction_type`, `created_at`) VALUES
(1, 19, 20, 'like', '2024-12-13 12:34:54'),
(5, 18, 20, 'dislike', '2024-12-13 12:45:49'),
(6, 19, 12, 'like', '2024-12-13 13:16:07'),
(8, 18, 12, 'like', '2024-12-13 14:07:42'),
(12, 17, 12, 'like', '2024-12-13 14:13:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) UNSIGNED NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `is_admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `firstname`, `lastname`, `username`, `email`, `password`, `avatar`, `is_admin`) VALUES
(10, 'Jackie Marie', 'Bondoc', 'Jackie', 'jackie@gmail.com', '$2y$10$RLlNXH55Oc1UVBjeuNgdkO80m7qioFfqLitT/7LxDBHlvKWDF6PIK', '1730455112Screenshot 2023-08-02 153737.png', 0),
(11, 'Ahiezer', 'Gwen', 'Shryden', 'shryden@gmail.com', '$2y$10$wSZI4HFoj6HrVPk/ZwDnsuh3BUPpO5ShFwSoWSQ/7iEG5TJS8qU/m', '1730455138Screenshot 2023-08-04 221803.png', 1),
(12, 'Thomas', 'Vincent', 'Tewleaps', 'tewleaps@gmail.com', '$2y$10$Ms2jOj66t9ht0TSScpYlcuqtot15.jZl03rA0MyQoSNjZOzxEGJyS', '1730455159Screenshot 2023-08-07 171055.png', 1),
(13, 'Kimberly', 'Feliselda', 'Asahi', 'jinaniKun@gmail.com', '$2y$10$/4Z.2Zups2kQpsRO4HHHCeTMHN3UevQea2a9tdGAm7CCDBefIm3Ea', '1730507770Screenshot 2024-02-12 013725.png', 0),
(18, 'Otep', 'Veyang', 'Veyang', 'otepveyang@gmail.com', '$2y$10$KPxlEuAusdXXy/E36CcI3.J/2dicg2slceycZVqwbj4esHMgFOpE.', '1731977436win.jpg', 0),
(19, 'Aira', 'Nunag', 'Aira', 'aira@gmail.com', '$2y$10$7LwniDErjH/FMKsBDqRrV.3EtcGsdmaqzNhGQs6UKFXP34Drit.5q', '1731979047kari.jpg', 0),
(20, 'Kimberly', 'Feliselda', 'Exusiai', 'exusiai@gmail.com', '$2y$10$w2OxQj4FsfYdDlB35zIuee6Fn/jjYP0V8n2awY4zefoxJu.7v46m6', '1731981016pjw.jpg', 1),
(21, 'kim', 'feliselda', 'meow', 'meow@gmail.com', '$2y$10$6P5mHWKHAzeNDEpWAtEe2eFkjGuXXiWB2VoxClqfblYQwnYOgOfTK', '1733380822estes.jpg', 0),
(22, 'Ronnie', 'Pamintuan', 'Arzhel', 'arzhel@gmail.com', '$2y$10$H3s3li9LqKr/MdjmuIxu7.FZpB3.vxnNy1F9KGjzrL1NWaBSkvKk.', '1733380938granger.jpg', 0),
(23, 'Ferel', 'Peco', 'Pekyang', 'pekyang@gmail.com', '$2y$10$rmRWdKo7a3TWb98.XaSLzuhR2la/sl5i/PHBHQeSZ4zlyHbNtIvAe', '1733381171miyaya.jpg', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_blog_category` (`category_id`),
  ADD KEY `FK_blog_author` (`author_id`),
  ADD KEY `idx_post_id` (`ID`);

--
-- Indexes for table `post_reactions`
--
ALTER TABLE `post_reactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_Post` (`post_id`),
  ADD KEY `FK_User` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idx_user_id` (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `post_reactions`
--
ALTER TABLE `post_reactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `FK_blog_author` FOREIGN KEY (`author_id`) REFERENCES `users` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_blog_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`ID`) ON DELETE SET NULL;

--
-- Constraints for table `post_reactions`
--
ALTER TABLE `post_reactions`
  ADD CONSTRAINT `FK_Post` FOREIGN KEY (`post_id`) REFERENCES `posts` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_User` FOREIGN KEY (`user_id`) REFERENCES `users` (`ID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
