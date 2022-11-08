-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2022 at 10:18 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `course_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookmark`
--

CREATE TABLE `bookmark` (
  `user_id` varchar(20) NOT NULL,
  `playlist_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookmark`
--

INSERT INTO `bookmark` (`user_id`, `playlist_id`) VALUES
('PFERfgn2B3kRsOXDyWFA', 'YjaiyffZVMSf3vZv1dsg'),
('hG1MPGZq3MaObGYsEvyU', 'OqAeyGn7kIIqUakYsDzN');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` varchar(20) NOT NULL,
  `content_id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `content_id`, `user_id`, `tutor_id`, `comment`, `date`) VALUES
('wFbUeL4JjfQ2iJP7x9YI', 'tEGEwvRtLh3OgbEaiZU1', 'hG1MPGZq3MaObGYsEvyU', '80oAMG1BO7v2Blcr0qNG', 'sangat terbaik!', '2022-11-07');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` int(10) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `number`, `message`) VALUES
('bob', 'muhammadaiman231@gmail.com', 1165340881, 'Saya ada soalan');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `playlist_id` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `video` varchar(100) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL DEFAULT 'deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `tutor_id`, `playlist_id`, `title`, `description`, `video`, `thumb`, `date`, `status`) VALUES
('tEGEwvRtLh3OgbEaiZU1', '80oAMG1BO7v2Blcr0qNG', 'YjaiyffZVMSf3vZv1dsg', 'ULANGKAJI SPM (BAB 2 : KEDAULATAN NEGARA)', 'Kelas online Pasak Sejarah membantu calon mengingati fakta dengan mudah melalui penggunaan keyword dan tips menjawab soalan sejarah SPM Kertas 2 Sejarah.\r\n\r\nhttps://youtu.be/YA7htM50o04', 'ylrKy4jVVbVIeaGWMOxQ.mp4', 'tnfXJwkLN3SGPQIMvzgU.jpg', '2022-10-31', 'active'),
('52oUSwpcz6RDVzyZYQ3E', '80oAMG1BO7v2Blcr0qNG', 'YjaiyffZVMSf3vZv1dsg', 'ULANGKAJI SPM (BAB 2 : PERLEMBAGAAN PERSEKUTUAN)', 'Kelas online Pasak Sejarah membantu calon mengingati fakta dengan mudah melalui penggunaan keyword dan tips menjawab soalan sejarah SPM Kertas 2 Sejarah.\r\n\r\nhttps://youtu.be/RYcvuo9l4SI', 'E4suK94AUTC6FJevDuZu.mp4', 'NwPydKMJw3JgzOiHtFpK.jpg', '2022-10-31', 'active'),
('Jex3h0MyUrYYgX61ZbRL', 'ACVQjwKF6185yxm6Gkqb', 'OqAeyGn7kIIqUakYsDzN', 'Electrolysis of Molten Compounds - Molten Lead(II) bromide', 'Theme: Chemical Process\r\n\r\nLearning Area: Redox Equilibrium\r\n\r\nContent Standard: Electrolytic cell\r\n\r\nLearning Standard:\r\n    1. Describe electrolysis\r\n    2. Describe electrolysis of molten compound through activities\r\n\r\nJom Belajar!\r\n\r\nhttps://youtu.be/oetbUlYD05Y', 'zGGYxr3tS064fYMkeJYH.mp4', 'WG4N7vNJdDnCukc9N3E8.jpg', '2022-10-31', 'active'),
('0CxsgN8gixo0loPyIo8E', 'ACVQjwKF6185yxm6Gkqb', 'LhGvHT6NU4M6TXM2t6XG', 'Rate of Reaction: To investigate the effect of concentration of reactants on the rate of reaction.', 'Aim: To investigate the effect of concentration of reactants on the rate of reaction.\r\n\r\nProblems statement: How does the concentration of reactants affect the rate of reaction?\r\n\r\nHypothesis: The higher the concentration of sodium thiosulphate solution, the shorter the time taken for the &#39;X&#39; mark to disappear from view.', 'YZtAXOx5al7y4LMNdLr8.mp4', '2JeYYNho0HpcWnc2jLHr.jpg', '2022-10-31', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `user_id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `content_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`user_id`, `tutor_id`, `content_id`) VALUES
('hG1MPGZq3MaObGYsEvyU', '80oAMG1BO7v2Blcr0qNG', 'tEGEwvRtLh3OgbEaiZU1');

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL DEFAULT 'deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`id`, `tutor_id`, `title`, `description`, `thumb`, `date`, `status`) VALUES
('YjaiyffZVMSf3vZv1dsg', '80oAMG1BO7v2Blcr0qNG', 'Ulangkaji SPM Sejarah', 'Contoh-contoh soalan dan jawapan kertas 2 SPM Sejarah', 'RQQNl2kLVModjRxY7JI0.png', '2022-10-30', 'active'),
('OqAeyGn7kIIqUakYsDzN', 'ACVQjwKF6185yxm6Gkqb', 'Elektrolisis', 'Tajuk berkaitan elektrolisis dalam kimia', 'kLmDK7jHPKr9ocRKpg1e.png', '2022-10-31', 'active'),
('LhGvHT6NU4M6TXM2t6XG', 'ACVQjwKF6185yxm6Gkqb', 'Rate of Reaction', 'Aim: To investigate the effect of concentration of reactants on the rate of reaction.\r\n\r\nProblems statement: How does the concentration of reactants affect the rate of reaction?\r\n\r\nHypothesis: The higher the concentration of sodium thiosulphate solution, the shorter the time taken for the &#39;X&#39; mark to disappear from view.', 'DjccVARifQ47O0kKlBrT.png', '2022-10-31', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `tutors`
--

CREATE TABLE `tutors` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `profession` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tutors`
--

INSERT INTO `tutors` (`id`, `name`, `profession`, `email`, `password`, `image`) VALUES
('80oAMG1BO7v2Blcr0qNG', 'Cg.Hasmahan', 'Sejarah', 'kamilhalim550@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'IPVnJfnyGi3W66oQo869.jpg'),
('ACVQjwKF6185yxm6Gkqb', 'Teacher Nabila', 'Chemistry', 'kamilpuad550@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '5IMVAKMHNkWxRvwcLVZ9.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `image`) VALUES
('PFERfgn2B3kRsOXDyWFA', ' kamil', 'kamilhalim550@gmail.com', '2e8f53c3a1003a227d75c37c3d8296271397ee66', 'y9XOYJL1YRbfydPl8sJS.JPG'),
('hG1MPGZq3MaObGYsEvyU', 'mil', 'kamilpuad550@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'oGQKuhSf1tVDk4Opuz1Y.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
