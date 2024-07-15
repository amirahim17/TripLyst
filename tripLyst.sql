-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2024 at 12:05 PM
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
-- Database: `smartpackingapp2`
--

-- --------------------------------------------------------

--
-- Table structure for table `trips`
--

CREATE TABLE `trips` (
  `tripID` int(11) NOT NULL,
  `tripName` varchar(255) DEFAULT NULL,
  `tripDate` date DEFAULT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trips`
--

INSERT INTO `trips` (`tripID`, `tripName`, `tripDate`, `destination`, `username`) VALUES
(1, 'YellowTrip', '2024-07-11', 'Bali, Indonesia', 'yellow'),
(2, 'TripsTr', '2024-07-28', '', 'aina'),
(3, 'KakiGajahasdfghj', '2024-08-29', 'Riyaly', 'aina'),
(4, 'Aniyaa1', '2024-07-28', 'Balii', 'aniya'),
(5, 'RunningItBack', '2024-07-28', 'Bukit Singa, Terengganu', 'tydel'),
(6, 'Gegegeg', '2024-07-28', 'Trrr', 'miaomiao'),
(7, 'JAdkas', '2024-07-27', 'Mwlwowo', 'miwo'),
(8, 'zxcvbnm', '2024-07-26', 'Yutub', 'asd'),
(9, 'chekas', '2024-07-12', 'chekass', 'auni'),
(13, 'Justice', '2024-07-29', 'Somnivilley', 'handongi'),
(14, 'Utopia Trip1', '2024-07-27', 'SOKORE', 'qwerty'),
(18, 'Bali Lessgoo', '2024-07-19', 'BALI', 'jaja'),
(19, 'wsrtgzxc', '2024-07-27', 'zxcvbnm', 'zxcvbnm'),
(21, 'Jello', '2024-07-25', '6789', 'Zello');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`) VALUES
('aiaaa', '$2y$10$I9IxhTRM/ia4lck3p6SS2uCkoHYc96GanKwZ07rhkHgZnq95LCWlW'),
('aina', '$2y$10$wt0pWBMIdRrPso3fX3u.o.Eleg7xT3cGT2kRQi4Ba2RhI0Cs2fyTa'),
('aniya', '$2y$10$amQ/1x4h4OksWqiQMdAkqOiRkkIHfcafWqevpgfGmxPlgad8Hocdi'),
('asd', '$2y$10$IoRTnqNrg4hjfDyNX5bPEOfqbT23OVp4WPm6p31d6XuEBHQC7SzxK'),
('asdasd', '$2y$10$EfVGK.tPL0W8p49en5/VHeNV3u/U.7KpOLY3Yhy0HyHeRsAM0BWnq'),
('auni', '$2y$10$b5mVxu/mYAYbKhpiCnI/1OalJwccE.gxVycKutGaj3H0EGp1s9oVi'),
('handongi', '$2y$10$KEwOKGjMlMgzbmHZ.uWy4eyg6D7yufqvuO4vy/H2lZJtxlKkmYocG'),
('jaja', '$2y$10$EuSKGLIXF83cct4dcK/Puexin.UCxdSbWQKtDyYZ6Hr04XycBBHre'),
('miaomiao', '$2y$10$ZsCxpbiRQ0v34BmqMRs2KOGRa34mAlO5fLtgMgK.gcmqVQUTtLuMO'),
('miwo', '$2y$10$zCOPu8JhnRdYSG3u9yEgie.i0paBI36tpaTYMRjJbgQsENX9J11jG'),
('qwerty', '$2y$10$T2nON/SgLyObEM5DQb3PMOckATG6hytKtdCyZHRl0ZmgqOlbvusVC'),
('tiramisucake', '$2y$10$LcG1.c62KDR7GszXviy9y.k0NGBtu.b8w.Aw79iPbwG0w8V.ZY0CW'),
('tydel', '$2y$10$7sEjNZTSP.zEr1NUSdhPneZrbOayN9z0HhXPtaHP1gaYdYMNqRB4u'),
('yellow', '$2y$10$TbRlZkUl0GIRlrGlCG01Je8axdHC7PeQPs9dU3h/oWQeTtdgDv/Ae'),
('Zello', '$2y$10$WefoBz7P0m2V2uP.IjQjMuxsZkDdWVsIY8xFlKi9g47Q/PCGPRfpu'),
('zxcvbnm', '$2y$10$xgzhb7oMPiU2fkgi3i6bMu8g4.jtpFTcmXkkWXRgpN.nsmXwcXmgy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `trips`
--
ALTER TABLE `trips`
  ADD PRIMARY KEY (`tripID`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `trips`
--
ALTER TABLE `trips`
  MODIFY `tripID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `trips`
--
ALTER TABLE `trips`
  ADD CONSTRAINT `trips_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
