-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2025 at 01:49 PM
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
-- Database: `elevate_ed`
--

-- --------------------------------------------------------

--
-- Table structure for table `selected_skills`
--

CREATE TABLE `selected_skills` (
  `id` int(11) NOT NULL,
  `skill_name` varchar(255) NOT NULL,
  `skill_category` varchar(255) NOT NULL,
  `selected_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `selected_skills`
--

INSERT INTO `selected_skills` (`id`, `skill_name`, `skill_category`, `selected_date`, `user_id`) VALUES
(1, 'Web Development', 'code-2', '2025-01-31 17:38:50', 1),
(2, 'Artificial Intelligence', 'brain', '2025-01-31 17:38:57', 1),
(3, 'React', 'layout-list', '2025-01-31 17:42:17', 1),
(4, 'Machine Learning', 'cpu', '2025-01-31 17:45:40', 1),
(7, 'Web Development', 'code-2', '2025-02-01 09:46:52', 2);

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `skill_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `user_id`, `skill_name`) VALUES
(72, 2, 'AI'),
(73, 2, 'ML'),
(74, 2, 'web'),
(75, 2, 'python');

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `platform` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`id`, `user_id`, `platform`, `url`) VALUES
(25, 2, 'linkedin', 'https://www.linkedin.com/in/golthi-venkatacharyulu/'),
(26, 2, 'github', 'https://github.com/venkatesh1545');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `gender` enum('male','female','other') NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `username`, `gender`, `password_hash`, `created_at`) VALUES
(1, 'Golthi venkatacharyulu', 'venkateshgolthi07@gmail.com', 'venkatesh_1545', 'male', '$2y$10$.1VJH7PoeE0OKZalqbeJPODb70.I7/dv9PVkYD8GX0nws29smWAjW', '2025-01-30 12:31:01'),
(2, 'Golthi venkatacharyulu', 'venkateshgolthi05@gmail.com', 'venkatesh1545', 'male', '$2y$10$4YU6BKxI3OCN2Oz2rgrjgOL7PX4kLyppedb5qlVaB6Vnkibw0fEaS', '2025-01-30 12:51:42'),
(3, 'karthik saladi', 'karthiksaladi5@gmail.com', 'karthik_05', 'male', '$2y$10$tR6bAiyBwwodLHs5r4MKtePXO4E3xUFC6StzG1cl07pOSLP2hd/.O', '2025-01-30 18:08:55');

-- --------------------------------------------------------

--
-- Table structure for table `user_profiles`
--

CREATE TABLE `user_profiles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `college_name` varchar(255) DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_profiles`
--

INSERT INTO `user_profiles` (`id`, `user_id`, `college_name`, `profile_image`) VALUES
(1, 2, 'Aditya College of Engineering and Technology', 'uploads/22P31A0514 (1).png'),
(2, 2, 'Aditya College of Engineering and Technology', 'uploads/22P31A0514 (1).png'),
(3, 2, 'Aditya College of Engineering and Technology', 'uploads/22P31A0514 (1).png'),
(4, 2, 'Aditya College of Engineering and Technology', 'uploads/22P31A0514 (1).png'),
(5, 2, 'Aditya College of Engineering and Technology', 'uploads/22P31A0514 (1).png'),
(6, 2, 'Aditya College of Engineering and Technology', 'uploads/22P31A0514 (1).png'),
(7, 2, 'Aditya College of Engineering and Technology', 'uploads/22P31A0514 (1).png'),
(8, 2, 'Aditya College of Engineering and Technology', 'uploads/22P31A0514 (1).png'),
(9, 2, 'Aditya College of Engineering and Technology', 'uploads/22P31A0514 (1).png'),
(10, 2, 'Aditya College of Engineering and Technology', 'uploads/22P31A0514 (1).png'),
(11, 2, 'Aditya College of Engineering and Technology', 'uploads/22P31A0514 (1).png'),
(12, 2, 'Aditya College of Engineering and Technology', 'uploads/22P31A0514 (1).png'),
(13, 2, 'Aditya College of Engineering and Technology', 'uploads/22P31A0514 (1).png'),
(14, 2, 'Aditya College of Engineering and Technology', 'uploads/22P31A0514 (1).png'),
(15, 2, 'Aditya College of Engineering and Technology', 'uploads/22P31A0514 (1).png'),
(16, 2, 'Aditya College of Engineering and Technology', 'uploads/22P31A0514 (1).png'),
(17, 2, 'Aditya College of Engineering and Technology', 'uploads/22P31A0514 (1).png'),
(18, 2, 'Aditya College of Engineering and Technology', 'uploads/22P31A0514 (1).png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `selected_skills`
--
ALTER TABLE `selected_skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user` (`user_id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `selected_skills`
--
ALTER TABLE `selected_skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `selected_skills`
--
ALTER TABLE `selected_skills`
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `skills`
--
ALTER TABLE `skills`
  ADD CONSTRAINT `skills_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `social_links`
--
ALTER TABLE `social_links`
  ADD CONSTRAINT `social_links_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD CONSTRAINT `user_profiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
