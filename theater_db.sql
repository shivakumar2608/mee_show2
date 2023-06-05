-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Jun 05, 2023 at 09:01 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `theater_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `action_movies`
--

CREATE TABLE `action_movies` (
  `id` int(30) NOT NULL,
  `title` text NOT NULL,
  `cover_img` text NOT NULL,
  `description` text NOT NULL,
  `category` text NOT NULL,
  `duration` float NOT NULL,
  `data_showing` date NOT NULL,
  `end_date` date NOT NULL,
  `trailer_yt_link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `action_movies`
--

INSERT INTO `action_movies` (`id`, `title`, `cover_img`, `description`, `category`, `duration`, `data_showing`, `end_date`, `trailer_yt_link`) VALUES
(1, 'John Wick', 'https://insertface.com/fb/105/your-photo-on-john-wick-chapter-movie-poster-105247-fb.jpg', 'An ex-hit-man comes out of retirement to track down the gangsters that killed his dog and took his car.\r\n\r\n', 'Action', 3, '2016-03-03', '2016-09-14', 'https://www.youtube.com/watch?v=yjRHZEUamCc'),
(2, 'Men in Black', 'https://upload.wikimedia.org/wikipedia/en/thumb/f/fb/Men_in_Black_Poster.jpg/220px-Men_in_Black_Poster.jpg', 'A police officer joins a secret organization that polices and monitors extraterrestrial interactions on Earth.\r\n\r\n', 'Action', 3, '2016-03-09', '2016-03-23', 'https://www.youtube.com/watch?v=BV-WEb2oxLk'),
(3, 'Iron Man', 'https://flxt.tmsimg.com/assets/p170620_p_v8_az.jpg', 'After being held captive in an Afghan cave, billionaire engineer Tony Stark creates a unique weaponized suit.\n\n', 'Action', 3, '2013-03-26', '2013-03-30', 'https://www.youtube.com/watch?v=L9IF50778v4'),
(4, 'Thor', 'https://upload.wikimedia.org/wikipedia/en/9/95/Thor_%28film%29_poster.jpg', 'The powerful but arrogant god Thor is cast out of Asgard to live amongst humans in Midgard (Earth).\n\n', 'Action', 3, '2014-03-12', '2014-03-12', 'https://www.youtube.com/watch?v=tgB1wUcmbbw'),
(5, 'Avathar', 'https://m.media-amazon.com/images/I/61O8KP0CYVS._SY741_.jpg', 'Jake Sully lives with his newfound family formed on the extrasolar moon Pandora. Once a familiar threat returns to finish what was previously started.\n', 'Action', 3, '2016-03-23', '2016-03-31', 'https://www.youtube.com/watch?v=6rZWK_KEMAw'),
(6, 'Pathaan ', 'https://upload.wikimedia.org/wikipedia/en/c/c3/Pathaan_film_poster.jpg', 'An Indian spy takes on the leader of a group of mercenaries who have nefarious plans to target his homeland.', 'Action', 3, '2016-02-10', '2016-05-10', 'https://www.youtube.com/watch?v=vqu4z34wENw');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `login_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `username`, `email`, `mobile`, `password`, `login_time`) VALUES
(1, 'shiva', 'shiva', 'shivakumarchanti122@gmail.com', 7093001221, 'shiva', '2022-11-23 03:53:57'),
(2, 'admin', 'admin', 'admin@gmail.com', 1000, 'admin', '2022-11-28 16:13:39');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(30) NOT NULL,
  `movie_id` int(30) NOT NULL,
  `ts_id` int(30) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  `qty` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `movie_id`, `ts_id`, `lastname`, `firstname`, `contact_no`, `qty`, `date`, `time`) VALUES
(1, 7, 1, 'Smith', 'John', '0909505', 1, '2020-09-18', '11:05:00'),
(2, 5, 1, 'Smith', 'John', '546545646', 1, '2020-09-18', '01:10:00'),
(3, 1, 4, 'Smith', 'John', '0909505', 2, '2020-09-16', '09:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `comedy_movies`
--

CREATE TABLE `comedy_movies` (
  `id` int(30) NOT NULL,
  `title` text NOT NULL,
  `cover_img` text NOT NULL,
  `description` text NOT NULL,
  `category` text NOT NULL,
  `duration` float NOT NULL,
  `data_showing` date NOT NULL,
  `end_date` date NOT NULL,
  `trailer_yt_link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comedy_movies`
--

INSERT INTO `comedy_movies` (`id`, `title`, `cover_img`, `description`, `category`, `duration`, `data_showing`, `end_date`, `trailer_yt_link`) VALUES
(10, 'Balagam ', 'https://upload.wikimedia.org/wikipedia/en/thumb/1/17/Balagam_Movie_Poster.jpg/220px-Balagam_Movie_Poster.jpg', '  Balagam (transl. Relatives/Group/Supporters) is a 2023 Indian Telugu-language family drama film written and directed by actor Venu Yeldandi, in his directorial debut.[', 'Comedy', 3, '2023-05-09', '2023-05-18', 'https://www.youtube.com/watch?v=8R3Vcy5CaPc');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(30) NOT NULL,
  `title` text NOT NULL,
  `cover_img` text NOT NULL,
  `description` text NOT NULL,
  `category` text NOT NULL,
  `duration` float NOT NULL,
  `data_showing` date NOT NULL,
  `end_date` date NOT NULL,
  `trailer_yt_link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(30) NOT NULL,
  `title` text NOT NULL,
  `cover_img` text NOT NULL,
  `description` text NOT NULL,
  `category` text NOT NULL,
  `duration` float NOT NULL,
  `date_showing` date NOT NULL,
  `end_date` date NOT NULL,
  `trailer_yt_link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `cover_img`, `description`, `category`, `duration`, `date_showing`, `end_date`, `trailer_yt_link`) VALUES
(1, 'Arya 2', 'https://i.pinimg.com/736x/52/a4/20/52a420a029b40da96c6bc6328f2f2d3a.jpg', 'Sample Movie', '', 2.5, '2020-09-15', '2020-11-30', 'https://www.youtube.com/watch?v=9ix7TUGVYIo'),
(4, 'Robo ', 'https://akamaividz2.zee5.com/image/upload/w_630,h_945,c_scale,f_auto,q_auto/resources/0-0-movie_466418637/portrait/robot_1920x770.jpg', 'Sample 2', '', 3.75, '2020-09-17', '2020-10-29', 'https://www.youtube.com/watch?v=iszwuX1AK6A'),
(14, 'Love Today', 'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:oi-discovery-catalog@@icons@@star-icon-202203010609.png,ox-24,oy-615,ow-29:ote-OS42LzEwICA3MC41SyB2b3Rlcw%3D%3D,ots-29,otc-FFFFFF,oy-612,ox-70:q-80/et00343241-skhugrvemr-portrait.jpg', ' Good romantic movie', '', 3, '2022-11-28', '2022-12-09', 'https://www.youtube.com/watch?v=FaQe8JFGdaM'),
(18, 'Drishyam 2', 'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:oi-discovery-catalog@@icons@@star-icon-202203010609.png,ox-24,oy-615,ow-29:ote-OS8xMCAgNjUuMUsgdm90ZXM%3D,ots-29,otc-FFFFFF,oy-612,ox-70:q-80/et00331997-ptqfdfmgtr-portrait.jpg', '  Thriller movie', 'Thriller', 3, '2022-11-28', '2022-12-10', 'https://www.youtube.com/watch?v=FaQe8JFGdaM'),
(20, 'Hit 2', 'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:oi-discovery-catalog@@icons@@like_202006280402.png,ox-24,oy-617,ow-29:ote-NzEuMUsgbGlrZXM%3D,ots-29,otc-FFFFFF,oy-612,ox-70:q-80/et00327635-whlwjxwcwz-portrait.jpg', '  Crime Thriller', 'Thriller', 3, '2022-12-21', '2022-12-31', 'https://www.youtube.com/watch?v=FaQe8JFGdaM'),
(21, 'Avathar', 'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:oi-discovery-catalog@@icons@@like_202006280402.png,ox-24,oy-617,ow-29:ote-MzY2LjJLIGxpa2Vz,ots-29,otc-FFFFFF,oy-612,ox-70:q-80/et00037264-hsdmmwrnty-portrait.jpg', '  Action', 'Action', 3, '2022-12-02', '2022-12-08', 'https://www.youtube.com/watch?v=6rZWK_KEMAw'),
(22, 'An Action Hero', 'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:oi-discovery-catalog@@icons@@like_202006280402.png,ox-24,oy-617,ow-29:ote-MjAuOEsgbGlrZXM%3D,ots-29,otc-FFFFFF,oy-612,ox-70:q-80/et00327173-yaevebvyah-portrait.jpg', 'Action', 'Action', 3, '0000-00-00', '0000-00-00', 'https://www.youtube.com/watch?v=6rZWK_KEMAw');

-- --------------------------------------------------------

--
-- Table structure for table `payment_accounts`
--

CREATE TABLE `payment_accounts` (
  `order_id` int(100) NOT NULL,
  `id` int(100) NOT NULL,
  `name` varchar(225) NOT NULL,
  `Cardname` varchar(225) NOT NULL,
  `Cardnumber` bigint(100) NOT NULL,
  `movieId` int(100) NOT NULL,
  `theaterId` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_accounts`
--

INSERT INTO `payment_accounts` (`order_id`, `id`, `name`, `Cardname`, `Cardnumber`, `movieId`, `theaterId`) VALUES
(39, 7, 'shiva kumar', 'shiva kumar', 45218247892, 5, 8),
(40, 7, 'shiva kumar', 'sRUJAN', 651452052142, 3, 1),
(41, 7, 'shiva kumar', 'AAAAAAAAAAAA', 11, 2, 6),
(42, 7, 'shiva kumar', 'shiva kumar', 23, 5, 8);

-- --------------------------------------------------------

--
-- Table structure for table `theater`
--

CREATE TABLE `theater` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `theater`
--

INSERT INTO `theater` (`id`, `name`) VALUES
(1, '3D'),
(2, 'Theater 1');

-- --------------------------------------------------------

--
-- Table structure for table `theaters`
--

CREATE TABLE `theaters` (
  `theaters_id` int(11) NOT NULL,
  `theaters_name` varchar(200) NOT NULL,
  `location` varchar(200) NOT NULL,
  `type` varchar(20) NOT NULL,
  `price` int(100) NOT NULL,
  `bookstatus` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `theaters`
--

INSERT INTO `theaters` (`theaters_id`, `theaters_name`, `location`, `type`, `price`, `bookstatus`) VALUES
(1, 'Sudha Cinepolis', 'Laldarwaza, Hyderabad', '3D', 200, 'Available'),
(2, 'AMB Cinemas', 'GachiBowli', '3D', 250, 'Avaiable'),
(5, 'Prasads IMAX', 'Necklace Road', '2D/3D', 250, 'Booked'),
(6, 'Cine Planet', 'Kompally', '3D', 230, 'Available'),
(7, 'GVK-ONE', 'Banjara-Hills\r\n', '3D', 300, 'Booked'),
(8, 'Mirajj', 'kothapet', '3D/2D', 200, 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `theater_settings`
--

CREATE TABLE `theater_settings` (
  `id` int(30) NOT NULL,
  `theater_id` int(30) NOT NULL,
  `seat_group` varchar(250) NOT NULL,
  `seat_count` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `theater_settings`
--

INSERT INTO `theater_settings` (`id`, `theater_id`, `seat_group`, `seat_count`) VALUES
(2, 2, 'Box 1', 20),
(3, 2, 'Box 2', 30),
(4, 1, 'Box 1', 30),
(5, 1, 'Box 2', 30);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `username` varchar(100) NOT NULL,
  `mobile` bigint(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `adharnumber` int(100) NOT NULL,
  `adharcard` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `mobile`, `email`, `adharnumber`, `adharcard`, `password`) VALUES
(7, 'shiva kumar', 'shivaa', 7093001221, 'shivakumarchanti12@gmail.com', 0, '', 'shiva'),
(9, 'Abhishek', 'abhi', 72123165, 'abhi@gmail.com', 0, '', 'abhi'),
(10, 'SHIVA KUMAR', 'shivakumar', 88486, 'qq@gmail.com', 0, '', '1'),
(11, 'shiva kumarr', 'chanti', 7093001222, 'shivakumarchanti123@gmail.com', 2147483647, '', 'chanti');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `action_movies`
--
ALTER TABLE `action_movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comedy_movies`
--
ALTER TABLE `comedy_movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_accounts`
--
ALTER TABLE `payment_accounts`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `theater`
--
ALTER TABLE `theater`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `theaters`
--
ALTER TABLE `theaters`
  ADD PRIMARY KEY (`theaters_id`);

--
-- Indexes for table `theater_settings`
--
ALTER TABLE `theater_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `action_movies`
--
ALTER TABLE `action_movies`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comedy_movies`
--
ALTER TABLE `comedy_movies`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `payment_accounts`
--
ALTER TABLE `payment_accounts`
  MODIFY `order_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `theater`
--
ALTER TABLE `theater`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `theaters`
--
ALTER TABLE `theaters`
  MODIFY `theaters_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `theater_settings`
--
ALTER TABLE `theater_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
