-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 18, 2012 at 10:23 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cakedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `acos`
--

CREATE TABLE IF NOT EXISTS `acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=105 ;

--
-- Dumping data for table `acos`
--

INSERT INTO `acos` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, NULL, NULL, 'controllers', 1, 208),
(2, 1, NULL, NULL, 'Pages', 2, 17),
(3, 2, NULL, NULL, 'display', 3, 4),
(4, 2, NULL, NULL, 'build_acl', 5, 6),
(5, 2, NULL, NULL, 'add', 7, 8),
(6, 2, NULL, NULL, 'edit', 9, 10),
(7, 2, NULL, NULL, 'index', 11, 12),
(8, 2, NULL, NULL, 'view', 13, 14),
(9, 2, NULL, NULL, 'delete', 15, 16),
(10, 1, NULL, NULL, 'Assistants', 18, 31),
(11, 10, NULL, NULL, 'index', 19, 20),
(12, 10, NULL, NULL, 'view', 21, 22),
(13, 10, NULL, NULL, 'add', 23, 24),
(14, 10, NULL, NULL, 'edit', 25, 26),
(15, 10, NULL, NULL, 'delete', 27, 28),
(16, 10, NULL, NULL, 'build_acl', 29, 30),
(17, 1, NULL, NULL, 'Branches', 32, 45),
(18, 17, NULL, NULL, 'index', 33, 34),
(19, 17, NULL, NULL, 'view', 35, 36),
(20, 17, NULL, NULL, 'add', 37, 38),
(21, 17, NULL, NULL, 'edit', 39, 40),
(22, 17, NULL, NULL, 'delete', 41, 42),
(23, 17, NULL, NULL, 'build_acl', 43, 44),
(24, 1, NULL, NULL, 'Buses', 46, 59),
(25, 24, NULL, NULL, 'index', 47, 48),
(26, 24, NULL, NULL, 'view', 49, 50),
(27, 24, NULL, NULL, 'add', 51, 52),
(28, 24, NULL, NULL, 'edit', 53, 54),
(29, 24, NULL, NULL, 'delete', 55, 56),
(30, 24, NULL, NULL, 'build_acl', 57, 58),
(31, 1, NULL, NULL, 'BusStops', 60, 73),
(32, 31, NULL, NULL, 'index', 61, 62),
(33, 31, NULL, NULL, 'view', 63, 64),
(34, 31, NULL, NULL, 'add', 65, 66),
(35, 31, NULL, NULL, 'edit', 67, 68),
(36, 31, NULL, NULL, 'delete', 69, 70),
(37, 31, NULL, NULL, 'build_acl', 71, 72),
(38, 1, NULL, NULL, 'Cities', 74, 87),
(39, 38, NULL, NULL, 'index', 75, 76),
(40, 38, NULL, NULL, 'view', 77, 78),
(41, 38, NULL, NULL, 'add', 79, 80),
(42, 38, NULL, NULL, 'edit', 81, 82),
(43, 38, NULL, NULL, 'delete', 83, 84),
(44, 38, NULL, NULL, 'build_acl', 85, 86),
(45, 1, NULL, NULL, 'Drivers', 88, 101),
(46, 45, NULL, NULL, 'index', 89, 90),
(47, 45, NULL, NULL, 'view', 91, 92),
(48, 45, NULL, NULL, 'add', 93, 94),
(49, 45, NULL, NULL, 'edit', 95, 96),
(50, 45, NULL, NULL, 'delete', 97, 98),
(51, 45, NULL, NULL, 'build_acl', 99, 100),
(52, 1, NULL, NULL, 'Employees', 102, 115),
(53, 52, NULL, NULL, 'index', 103, 104),
(54, 52, NULL, NULL, 'view', 105, 106),
(55, 52, NULL, NULL, 'add', 107, 108),
(56, 52, NULL, NULL, 'edit', 109, 110),
(57, 52, NULL, NULL, 'delete', 111, 112),
(58, 52, NULL, NULL, 'build_acl', 113, 114),
(59, 1, NULL, NULL, 'Groups', 116, 129),
(60, 59, NULL, NULL, 'index', 117, 118),
(61, 59, NULL, NULL, 'view', 119, 120),
(62, 59, NULL, NULL, 'add', 121, 122),
(63, 59, NULL, NULL, 'edit', 123, 124),
(64, 59, NULL, NULL, 'delete', 125, 126),
(65, 59, NULL, NULL, 'build_acl', 127, 128),
(66, 1, NULL, NULL, 'Logs', 130, 143),
(67, 66, NULL, NULL, 'index', 131, 132),
(68, 66, NULL, NULL, 'view', 133, 134),
(69, 66, NULL, NULL, 'add', 135, 136),
(70, 66, NULL, NULL, 'edit', 137, 138),
(71, 66, NULL, NULL, 'delete', 139, 140),
(72, 66, NULL, NULL, 'build_acl', 141, 142),
(73, 1, NULL, NULL, 'Routes', 144, 157),
(74, 73, NULL, NULL, 'index', 145, 146),
(75, 73, NULL, NULL, 'view', 147, 148),
(76, 73, NULL, NULL, 'add', 149, 150),
(77, 73, NULL, NULL, 'edit', 151, 152),
(78, 73, NULL, NULL, 'delete', 153, 154),
(79, 73, NULL, NULL, 'build_acl', 155, 156),
(80, 1, NULL, NULL, 'Stations', 158, 171),
(81, 80, NULL, NULL, 'index', 159, 160),
(82, 80, NULL, NULL, 'view', 161, 162),
(83, 80, NULL, NULL, 'add', 163, 164),
(84, 80, NULL, NULL, 'edit', 165, 166),
(85, 80, NULL, NULL, 'delete', 167, 168),
(86, 80, NULL, NULL, 'build_acl', 169, 170),
(87, 1, NULL, NULL, 'Trips', 172, 185),
(88, 87, NULL, NULL, 'index', 173, 174),
(89, 87, NULL, NULL, 'view', 175, 176),
(90, 87, NULL, NULL, 'add', 177, 178),
(91, 87, NULL, NULL, 'edit', 179, 180),
(92, 87, NULL, NULL, 'delete', 181, 182),
(93, 87, NULL, NULL, 'build_acl', 183, 184),
(94, 1, NULL, NULL, 'Users', 186, 207),
(95, 94, NULL, NULL, 'search', 187, 188),
(96, 94, NULL, NULL, 'login', 189, 190),
(97, 94, NULL, NULL, 'logout', 191, 192),
(98, 94, NULL, NULL, 'index', 193, 194),
(99, 94, NULL, NULL, 'view', 195, 196),
(100, 94, NULL, NULL, 'add', 197, 198),
(101, 94, NULL, NULL, 'edit', 199, 200),
(102, 94, NULL, NULL, 'delete', 201, 202),
(103, 94, NULL, NULL, 'initDB', 203, 204),
(104, 94, NULL, NULL, 'build_acl', 205, 206);

-- --------------------------------------------------------

--
-- Table structure for table `aros`
--

CREATE TABLE IF NOT EXISTS `aros` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `aros`
--

INSERT INTO `aros` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, 'Group', 1, NULL, 1, 10),
(2, NULL, 'Group', 2, NULL, 11, 14),
(3, NULL, 'Group', 3, NULL, 15, 18),
(4, NULL, 'Group', 4, NULL, 19, 22),
(8, 1, 'User', 5, NULL, 2, 3),
(9, 2, 'User', 6, NULL, 12, 13),
(10, NULL, 'Group', 5, NULL, 23, 32),
(11, 3, 'User', 7, NULL, 16, 17),
(12, 10, 'User', 8, NULL, 24, 25),
(13, 4, 'User', 9, NULL, 20, 21),
(14, 1, 'User', 10, NULL, 4, 5),
(15, 10, 'User', 11, NULL, 26, 27),
(16, 10, 'User', 13, NULL, 28, 29),
(17, 10, 'User', 15, NULL, 30, 31),
(18, 1, 'User', 16, NULL, 6, 7),
(19, 1, 'User', 17, NULL, 8, 9);

-- --------------------------------------------------------

--
-- Table structure for table `aros_acos`
--

CREATE TABLE IF NOT EXISTS `aros_acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `aro_id` int(10) NOT NULL,
  `aco_id` int(10) NOT NULL,
  `_create` varchar(2) NOT NULL DEFAULT '0',
  `_read` varchar(2) NOT NULL DEFAULT '0',
  `_update` varchar(2) NOT NULL DEFAULT '0',
  `_delete` varchar(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ARO_ACO_KEY` (`aro_id`,`aco_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `aros_acos`
--

INSERT INTO `aros_acos` (`id`, `aro_id`, `aco_id`, `_create`, `_read`, `_update`, `_delete`) VALUES
(1, 1, 1, '1', '1', '1', '1'),
(2, 2, 1, '-1', '-1', '-1', '-1'),
(3, 2, 10, '1', '1', '1', '1'),
(4, 2, 45, '1', '1', '1', '1'),
(5, 2, 80, '1', '1', '1', '1'),
(6, 2, 73, '1', '1', '1', '1'),
(7, 2, 17, '1', '1', '1', '1'),
(8, 2, 52, '1', '1', '1', '1'),
(9, 2, 99, '1', '1', '1', '1'),
(10, 2, 98, '1', '1', '1', '1'),
(11, 2, 53, '1', '1', '1', '1'),
(12, 2, 54, '1', '1', '1', '1'),
(13, 3, 1, '-1', '-1', '-1', '-1'),
(14, 3, 47, '1', '1', '1', '1'),
(15, 3, 46, '1', '1', '1', '1'),
(16, 3, 75, '1', '1', '1', '1'),
(17, 3, 74, '1', '1', '1', '1'),
(18, 3, 26, '1', '1', '1', '1'),
(19, 3, 25, '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `assistants`
--

CREATE TABLE IF NOT EXISTS `assistants` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(5) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `assistants`
--

INSERT INTO `assistants` (`id`, `employee_id`) VALUES
(1, '2');

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE IF NOT EXISTS `branches` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `city_id` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `city_id` (`city_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `branches`
--


-- --------------------------------------------------------

--
-- Table structure for table `buses`
--

CREATE TABLE IF NOT EXISTS `buses` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `reg_no` varchar(8) NOT NULL DEFAULT '',
  `seats` decimal(2,0) DEFAULT NULL,
  `route_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `route_id` (`route_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `buses`
--

INSERT INTO `buses` (`id`, `reg_no`, `seats`, `route_id`) VALUES
(1, 'WPJA5123', 20, 1),
(2, 'WPJA1234', 20, 1),
(3, 'WPJA5123', 40, 1),
(4, 'WPJA5187', 34, 2),
(5, 'WPJA5958', 89, 3);

-- --------------------------------------------------------

--
-- Table structure for table `bus_stops`
--

CREATE TABLE IF NOT EXISTS `bus_stops` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `city_id` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `city_id` (`city_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `bus_stops`
--

INSERT INTO `bus_stops` (`id`, `name`, `city_id`) VALUES
(1, 'bus stop 1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bus_stops_routes`
--

CREATE TABLE IF NOT EXISTS `bus_stops_routes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `route_id` int(10) NOT NULL,
  `bus_stop_id` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bus_stop_id` (`bus_stop_id`),
  KEY `route_id` (`route_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `bus_stops_routes`
--

INSERT INTO `bus_stops_routes` (`id`, `route_id`, `bus_stop_id`) VALUES
(1, 3, 1),
(2, 5, 1),
(3, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE IF NOT EXISTS `cities` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`) VALUES
(1, 'Kiribathgoda');

-- --------------------------------------------------------

--
-- Table structure for table `cities_routes`
--

CREATE TABLE IF NOT EXISTS `cities_routes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `route_id` int(10) NOT NULL,
  `city_id` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `route_id` (`route_id`),
  KEY `city_id` (`city_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `cities_routes`
--

INSERT INTO `cities_routes` (`id`, `route_id`, `city_id`) VALUES
(2, 1, 1),
(3, 4, 1),
(4, 5, 1),
(5, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE IF NOT EXISTS `drivers` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `employee_id` int(10) NOT NULL,
  `driver_licence` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `employee_id` (`employee_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`id`, `employee_id`, `driver_licence`) VALUES
(1, 1, '12121');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE IF NOT EXISTS `employees` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `telephone` varchar(10) DEFAULT NULL,
  `salary` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `telephone`, `salary`) VALUES
(1, 'Employee1', '123', 50.00),
(2, 'Employee2', '11', 40.00);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `created`, `modified`) VALUES
(1, 'Administrator', '2011-09-21 16:53:49', '2011-09-21 16:53:49'),
(2, 'Managers', '2011-09-21 16:53:58', '2011-09-21 16:53:58'),
(3, 'Drivers', '2011-09-21 16:54:02', '2011-09-21 16:54:02'),
(4, 'Assistants', '2011-09-21 16:54:15', '2011-09-21 16:54:15'),
(5, 'Users', '2011-09-21 17:01:18', '2011-09-21 17:01:18');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE IF NOT EXISTS `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `controller` varchar(90) COLLATE utf8_persian_ci NOT NULL,
  `action` varchar(90) COLLATE utf8_persian_ci NOT NULL,
  `params` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `url` text COLLATE utf8_persian_ci NOT NULL,
  `description` text COLLATE utf8_persian_ci NOT NULL,
  `type` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci AUTO_INCREMENT=641 ;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `controller`, `action`, `params`, `url`, `description`, `type`, `created`, `modified`, `user_id`) VALUES
(1, 'stations', 'index', '', 'stations', '', 0, '2011-09-21 15:36:33', '2011-09-21 15:36:33', 0),
(2, 'stations', 'index', '', 'stations', '', 0, '2011-09-21 15:40:37', '2011-09-21 15:40:37', 0),
(3, 'users', 'login', '', 'users/login', '', 0, '2011-09-21 15:42:22', '2011-09-21 15:42:22', 0),
(4, 'users', 'login', '', 'users/login', '', 0, '2011-09-21 15:42:40', '2011-09-21 15:42:40', 0),
(5, 'users', 'login', '', 'users/login', '', 0, '2011-09-21 15:42:52', '2011-09-21 15:42:52', 0),
(6, 'users', 'login', '', 'users/login', '', 0, '2011-09-21 15:44:14', '2011-09-21 15:44:14', 0),
(7, 'users', 'index', '', 'users/', '', 0, '2011-09-21 15:44:31', '2011-09-21 15:44:31', 0),
(8, 'users', 'index', '', 'users/', '', 0, '2011-09-21 15:44:55', '2011-09-21 15:44:55', 0),
(9, 'users', 'add', '', 'users/add', '', 0, '2011-09-21 15:45:09', '2011-09-21 15:45:09', 0),
(10, 'users', 'index', '', 'users', '', 0, '2011-09-21 15:45:24', '2011-09-21 15:45:24', 0),
(11, 'users', 'login', '', 'users/login', '', 0, '2011-09-21 15:45:27', '2011-09-21 15:45:27', 0),
(12, 'stations', 'add', '', 'stations/add', '', 0, '2011-09-21 15:45:33', '2011-09-21 15:45:33', 4),
(13, 'stations', 'index', '', 'stations', '', 0, '2011-09-21 15:46:32', '2011-09-21 15:46:32', 4),
(14, 'stations', 'view', '1/', 'stations/view/1', '', 0, '2011-09-21 15:46:34', '2011-09-21 15:46:34', 4),
(15, 'users', 'view', '1/', 'users/view/1', '', 0, '2011-09-21 15:46:45', '2011-09-21 15:46:45', 4),
(16, 'users', 'index', '', 'users', '', 0, '2011-09-21 15:46:48', '2011-09-21 15:46:48', 4),
(17, 'users', 'edit', '3/', 'users/edit/3', '', 0, '2011-09-21 15:47:04', '2011-09-21 15:47:04', 4),
(18, 'users', 'edit', '3/', 'users/edit/3', '', 0, '2011-09-21 15:47:08', '2011-09-21 15:47:08', 4),
(19, 'users', 'edit', '3/', 'users/edit/3', '', 0, '2011-09-21 15:47:55', '2011-09-21 15:47:55', 4),
(20, 'users', 'index', '', 'users', '', 0, '2011-09-21 15:48:10', '2011-09-21 15:48:10', 4),
(21, 'users', 'edit', '2/', 'users/edit/2', '', 0, '2011-09-21 15:48:14', '2011-09-21 15:48:14', 4),
(22, 'users', 'index', '', 'users', '', 0, '2011-09-21 15:48:25', '2011-09-21 15:48:25', 4),
(23, 'users', 'edit', '1/', 'users/edit/1', '', 0, '2011-09-21 15:48:27', '2011-09-21 15:48:27', 4),
(24, 'users', 'index', '', 'users', '', 0, '2011-09-21 15:48:36', '2011-09-21 15:48:36', 4),
(25, 'logs', 'index', '', 'logs', '', 0, '2011-09-21 15:57:16', '2011-09-21 15:57:16', 4),
(26, 'users', 'index', '', 'users', '', 0, '2011-09-21 16:00:43', '2011-09-21 16:00:43', 4),
(27, 'users', 'view', '4/', 'users/view/4', '', 0, '2011-09-21 16:00:46', '2011-09-21 16:00:46', 4),
(28, 'groups', 'index', '', 'groups', '', 0, '2011-09-21 16:50:55', '2011-09-21 16:50:55', 4),
(29, 'groups', 'view', '1/', 'groups/view/1', '', 0, '2011-09-21 16:51:12', '2011-09-21 16:51:12', 4),
(30, 'groups', 'view', '1/', 'groups/view/1', '', 0, '2011-09-21 16:51:18', '2011-09-21 16:51:18', 4),
(31, 'groups', 'view', '2/', 'groups/view/2', '', 0, '2011-09-21 16:51:28', '2011-09-21 16:51:28', 4),
(32, 'groups', 'index', '', 'groups', '', 0, '2011-09-21 16:51:32', '2011-09-21 16:51:32', 4),
(33, 'groups', 'view', '3/', 'groups/view/3', '', 0, '2011-09-21 16:51:34', '2011-09-21 16:51:34', 4),
(34, 'users', 'view', '4/', 'users/view/4', '', 0, '2011-09-21 16:51:40', '2011-09-21 16:51:40', 4),
(35, 'users', 'index', '', 'users', '', 0, '2011-09-21 16:51:48', '2011-09-21 16:51:48', 4),
(36, 'groups', 'index', '', 'groups', '', 0, '2011-09-21 16:52:00', '2011-09-21 16:52:00', 4),
(37, 'groups', 'index', '', 'groups', '', 0, '2011-09-21 16:53:37', '2011-09-21 16:53:37', 4),
(38, 'groups', 'add', '', 'groups/add', '', 0, '2011-09-21 16:53:39', '2011-09-21 16:53:39', 4),
(39, 'groups', 'index', '', 'groups', '', 0, '2011-09-21 16:53:49', '2011-09-21 16:53:49', 4),
(40, 'groups', 'add', '', 'groups/add', '', 0, '2011-09-21 16:53:50', '2011-09-21 16:53:50', 4),
(41, 'groups', 'index', '', 'groups', '', 0, '2011-09-21 16:53:58', '2011-09-21 16:53:58', 4),
(42, 'groups', 'add', '', 'groups/add', '', 0, '2011-09-21 16:53:59', '2011-09-21 16:53:59', 4),
(43, 'groups', 'index', '', 'groups', '', 0, '2011-09-21 16:54:02', '2011-09-21 16:54:02', 4),
(44, 'groups', 'add', '', 'groups/add', '', 0, '2011-09-21 16:54:04', '2011-09-21 16:54:04', 4),
(45, 'groups', 'index', '', 'groups', '', 0, '2011-09-21 16:54:15', '2011-09-21 16:54:15', 4),
(46, 'users', 'add', '', 'users/add', '', 0, '2011-09-21 16:54:22', '2011-09-21 16:54:22', 4),
(47, 'users', 'index', '', 'users', '', 0, '2011-09-21 16:54:42', '2011-09-21 16:54:42', 4),
(48, 'users', 'add', '', 'users/add', '', 0, '2011-09-21 16:54:44', '2011-09-21 16:54:44', 4),
(49, 'users', 'index', '', 'users', '', 0, '2011-09-21 16:54:56', '2011-09-21 16:54:56', 4),
(50, 'users', 'add', '', 'users/add', '', 0, '2011-09-21 16:54:57', '2011-09-21 16:54:57', 4),
(51, 'users', 'index', '', 'users', '', 0, '2011-09-21 16:55:12', '2011-09-21 16:55:12', 4),
(52, 'users', 'add', '', 'users/add', '', 0, '2011-09-21 16:58:41', '2011-09-21 16:58:41', 4),
(53, 'users', 'add', '', 'users/add', '', 0, '2011-09-21 16:59:41', '2011-09-21 16:59:41', 4),
(54, 'users', 'add', '', 'users/add', '', 0, '2011-09-21 16:59:50', '2011-09-21 16:59:50', 4),
(55, 'users', 'index', '', 'users', '', 0, '2011-09-21 17:00:39', '2011-09-21 17:00:39', 4),
(56, 'users', 'add', '', 'users/add', '', 0, '2011-09-21 17:00:40', '2011-09-21 17:00:40', 4),
(57, 'users', 'index', '', 'users', '', 0, '2011-09-21 17:00:51', '2011-09-21 17:00:51', 4),
(58, 'users', 'add', '', 'users/add', '', 0, '2011-09-21 17:00:53', '2011-09-21 17:00:53', 4),
(59, 'groups', 'index', '', 'groups', '', 0, '2011-09-21 17:01:10', '2011-09-21 17:01:10', 4),
(60, 'groups', 'add', '', 'groups/add', '', 0, '2011-09-21 17:01:12', '2011-09-21 17:01:12', 4),
(61, 'groups', 'add', '', 'groups/add', '', 0, '2011-09-21 17:01:15', '2011-09-21 17:01:15', 4),
(62, 'groups', 'index', '', 'groups', '', 0, '2011-09-21 17:01:18', '2011-09-21 17:01:18', 4),
(63, 'users', 'add', '', 'users/add', '', 0, '2011-09-21 17:01:37', '2011-09-21 17:01:37', 4),
(64, 'users', 'index', '', 'users', '', 0, '2011-09-21 17:01:47', '2011-09-21 17:01:47', 4),
(65, 'users', 'add', '', 'users/add', '', 0, '2011-09-21 17:01:48', '2011-09-21 17:01:48', 4),
(66, 'users', 'index', '', 'users', '', 0, '2011-09-21 17:02:05', '2011-09-21 17:02:05', 4),
(67, 'users', 'add', '', 'users/add', '', 0, '2011-09-21 17:02:06', '2011-09-21 17:02:06', 4),
(68, 'users', 'index', '', 'users', '', 0, '2011-09-21 17:02:24', '2011-09-21 17:02:24', 4),
(69, 'groups', 'view', '1/', 'groups/view/1', '', 0, '2011-09-21 17:02:30', '2011-09-21 17:02:30', 4),
(70, 'groups', 'build_acl', '', 'groups/build_acl', '', 0, '2011-09-21 17:05:49', '2011-09-21 17:05:49', 4),
(71, 'groups', 'build_acl', '', 'groups/build_acl', '', 0, '2011-09-21 17:05:53', '2011-09-21 17:05:53', 4),
(72, 'groups', 'index', '', 'groups/', '', 0, '2011-09-21 17:18:59', '2011-09-21 17:18:59', 4),
(73, 'pages', 'display', 'home/', '/', '', 0, '2011-09-21 17:19:00', '2011-09-21 17:19:00', 4),
(74, 'users', 'index', '', 'users/', '', 0, '2011-09-21 17:19:58', '2011-09-21 17:19:58', 4),
(75, 'pages', 'display', 'home/', '/', '', 0, '2011-09-21 17:20:29', '2011-09-21 17:20:29', 4),
(76, 'users', 'index', '', 'users/', '', 0, '2011-09-21 17:20:36', '2011-09-21 17:20:36', 4),
(77, 'users', 'index', '', 'users/', '', 0, '2011-09-21 17:20:37', '2011-09-21 17:20:37', 4),
(78, 'users', 'index', '', 'users/', '', 0, '2011-09-21 17:20:38', '2011-09-21 17:20:38', 4),
(79, 'users', 'index', '', 'users/', '', 0, '2011-09-21 17:20:39', '2011-09-21 17:20:39', 4),
(80, 'users', 'index', '', 'users/', '', 0, '2011-09-21 17:20:39', '2011-09-21 17:20:39', 4),
(81, 'users', 'index', '', 'users/', '', 0, '2011-09-21 17:20:40', '2011-09-21 17:20:40', 4),
(82, 'users', 'index', '', 'users/', '', 0, '2011-09-21 17:20:40', '2011-09-21 17:20:40', 4),
(83, 'users', 'index', '', 'users/', '', 0, '2011-09-21 17:20:41', '2011-09-21 17:20:41', 4),
(84, 'users', 'index', '', 'users/', '', 0, '2011-09-21 17:20:41', '2011-09-21 17:20:41', 4),
(85, 'users', 'index', '', 'users/', '', 0, '2011-09-21 17:20:42', '2011-09-21 17:20:42', 4),
(86, 'pages', 'display', 'home/', '/', '', 0, '2011-09-21 17:22:01', '2011-09-21 17:22:01', 4),
(87, 'pages', 'display', 'home/', '/', '', 0, '2011-09-21 17:22:05', '2011-09-21 17:22:05', 4),
(88, 'pages', 'display', 'home/', '/', '', 0, '2011-09-21 17:22:06', '2011-09-21 17:22:06', 4),
(89, 'pages', 'display', 'home/', '/', '', 0, '2011-09-21 17:22:07', '2011-09-21 17:22:07', 4),
(90, 'users', 'login', '', 'users/login', '', 0, '2011-09-21 17:22:53', '2011-09-21 17:22:53', 0),
(91, 'pages', 'display', 'home/', '/', '', 0, '2011-09-21 17:23:04', '2011-09-21 17:23:04', 8),
(92, 'pages', 'display', 'home/', '/', '', 0, '2011-09-21 17:23:12', '2011-09-21 17:23:12', 8),
(93, 'pages', 'display', 'home/', '/', '', 0, '2011-09-21 17:23:25', '2011-09-21 17:23:25', 8),
(94, 'pages', 'display', 'home/', '/', '', 0, '2011-09-21 17:24:00', '2011-09-21 17:24:00', 8),
(95, 'pages', 'display', 'home/', '/', '', 0, '2011-09-21 17:24:02', '2011-09-21 17:24:02', 8),
(96, 'pages', 'display', 'home/', '/', '', 0, '2011-09-21 17:24:04', '2011-09-21 17:24:04', 8),
(97, 'pages', 'display', 'home/', '/', '', 0, '2011-09-21 17:24:05', '2011-09-21 17:24:05', 8),
(98, 'pages', 'display', 'home/', '/', '', 0, '2011-09-21 17:24:07', '2011-09-21 17:24:07', 8),
(99, 'pages', 'display', 'home/', '/', '', 0, '2011-09-21 17:24:09', '2011-09-21 17:24:09', 8),
(100, 'pages', 'display', 'home/', '/', '', 0, '2011-09-21 17:24:11', '2011-09-21 17:24:11', 8),
(101, 'pages', 'display', 'home/', '/', '', 0, '2011-09-21 17:24:12', '2011-09-21 17:24:12', 8),
(102, 'pages', 'display', 'home/', '/', '', 0, '2011-09-21 17:24:20', '2011-09-21 17:24:20', 8),
(103, 'pages', 'display', 'home/', '/', '', 0, '2011-09-21 17:24:24', '2011-09-21 17:24:24', 8),
(104, 'pages', 'display', 'home/', '/', '', 0, '2011-09-21 17:25:12', '2011-09-21 17:25:12', 0),
(105, 'users', 'login', '', 'users/login', '', 0, '2011-09-21 17:25:14', '2011-09-21 17:25:14', 0),
(106, 'pages', 'display', 'home/', '/', '', 0, '2011-09-21 17:25:22', '2011-09-21 17:25:22', 5),
(107, 'users', 'login', '', 'users/login', '', 0, '2011-09-21 17:25:28', '2011-09-21 17:25:28', 0),
(108, 'drivers', 'index', '', 'drivers', '', 0, '2011-09-21 17:25:37', '2011-09-21 17:25:37', 5),
(109, 'employees', 'index', '', 'employees', '', 0, '2011-09-21 17:25:41', '2011-09-21 17:25:41', 5),
(110, 'assistants', 'index', '', 'assistants', '', 0, '2011-09-21 17:25:43', '2011-09-21 17:25:43', 5),
(111, 'trips', 'index', '', 'trips', '', 0, '2011-09-21 17:25:45', '2011-09-21 17:25:45', 5),
(112, 'buses', 'view', '1/', 'buses/view/1', '', 0, '2011-09-21 17:25:46', '2011-09-21 17:25:46', 5),
(113, 'buses', 'add', '1/', 'buses/add/1', '', 0, '2011-09-21 17:25:54', '2011-09-21 17:25:54', 5),
(114, 'routes', 'add', '', 'routes/add', '', 0, '2011-09-21 17:26:01', '2011-09-21 17:26:01', 5),
(115, 'routes', 'index', '', 'routes', '', 0, '2011-09-21 17:26:10', '2011-09-21 17:26:10', 5),
(116, 'routes', 'view', '1/', 'routes/view/1', '', 0, '2011-09-21 17:26:12', '2011-09-21 17:26:12', 5),
(117, 'stations', 'add', '', 'stations/add', '', 0, '2011-09-21 17:26:27', '2011-09-21 17:26:27', 5),
(118, 'routes', 'edit', '1/', 'routes/edit/1', '', 0, '2011-09-21 17:26:34', '2011-09-21 17:26:34', 5),
(119, 'routes', 'index', '', 'routes', '', 0, '2011-09-21 17:26:49', '2011-09-21 17:26:49', 5),
(120, 'routes', 'view', '1/', 'routes/view/1', '', 0, '2011-09-21 17:26:52', '2011-09-21 17:26:52', 5),
(121, 'pages', 'display', 'home/', '/', '', 0, '2011-09-21 17:42:43', '2011-09-21 17:42:43', 5),
(122, 'pages', 'display', 'home/', '/', '', 0, '2011-09-21 17:42:47', '2011-09-21 17:42:47', 5),
(123, 'pages', 'display', 'home/', '/', '', 0, '2011-09-21 17:42:50', '2011-09-21 17:42:50', 5),
(124, 'pages', 'display', 'home/', '/', '', 0, '2011-09-21 17:42:57', '2011-09-21 17:42:57', 5),
(125, 'pages', 'display', 'home/', '/', '', 0, '2011-09-21 17:43:01', '2011-09-21 17:43:01', 5),
(126, 'pages', 'display', 'home/', '/', '', 0, '2011-09-21 17:43:02', '2011-09-21 17:43:02', 5),
(127, 'pages', 'display', 'home/', '/', '', 0, '2011-09-21 17:43:03', '2011-09-21 17:43:03', 5),
(128, 'pages', 'display', 'home/', '/', '', 0, '2011-09-21 17:45:00', '2011-09-21 17:45:00', 5),
(129, 'users', 'login', '', 'users/login', '', 0, '2011-09-21 17:45:02', '2011-09-21 17:45:02', 0),
(130, 'pages', 'display', 'home/', '/', '', 0, '2011-09-21 17:45:13', '2011-09-21 17:45:13', 8),
(131, 'users', 'login', '', 'users/login', '', 0, '2011-09-21 17:45:55', '2011-09-21 17:45:55', 0),
(132, 'pages', 'display', 'home/', '/', '', 0, '2011-09-21 17:46:12', '2011-09-21 17:46:12', 7),
(133, 'users', 'login', '', 'users/login', '', 0, '2011-09-21 17:46:18', '2011-09-21 17:46:18', 0),
(134, 'drivers', 'index', '', 'drivers', '', 0, '2011-09-21 17:46:39', '2011-09-21 17:46:39', 7),
(135, 'drivers', 'index', '', 'drivers', '', 0, '2011-09-21 17:46:48', '2011-09-21 17:46:48', 7),
(136, 'drivers', 'index', '', 'drivers', '', 0, '2011-09-21 17:46:55', '2011-09-21 17:46:55', 7),
(137, 'pages', 'display', 'home/', '/', '', 0, '2011-09-21 17:49:09', '2011-09-21 17:49:09', 7),
(138, 'pages', 'display', 'home/', '/', '', 0, '2011-09-21 18:16:59', '2011-09-21 18:16:59', 7),
(139, 'pages', 'display', 'home/', '/', '', 0, '2011-09-21 18:17:03', '2011-09-21 18:17:03', 7),
(140, 'users', 'login', '', 'users/login', '', 0, '2011-09-21 18:17:11', '2011-09-21 18:17:11', 0),
(141, 'users', 'login', '', 'users/login', '', 0, '2011-09-21 18:17:14', '2011-09-21 18:17:14', 0),
(142, 'pages', 'display', 'home/', '/', '', 0, '2011-09-21 18:17:17', '2011-09-21 18:17:17', 0),
(143, 'pages', 'display', 'home/', '/', '', 0, '2011-09-21 18:17:19', '2011-09-21 18:17:19', 0),
(144, 'pages', 'display', 'home/', '/', '', 0, '2011-09-21 18:17:21', '2011-09-21 18:17:21', 0),
(145, 'pages', 'display', 'home/', '/', '', 0, '2011-09-21 18:17:23', '2011-09-21 18:17:23', 0),
(146, 'users', 'add', '', 'users/add', '', 0, '2011-09-21 18:17:25', '2011-09-21 18:17:25', 0),
(147, 'groups', 'index', '', 'groups', '', 0, '2011-09-21 18:17:40', '2011-09-21 18:17:40', 5),
(148, 'groups', 'index', '', 'groups', '', 0, '2011-09-21 18:17:45', '2011-09-21 18:17:45', 5),
(149, 'groups', 'view', '1/', 'groups/view/1', '', 0, '2011-09-21 18:18:06', '2011-09-21 18:18:06', 5),
(150, 'pages', 'display', 'home/', '/', '', 0, '2011-09-21 18:18:44', '2011-09-21 18:18:44', 5),
(151, 'pages', 'display', 'home/', '/', '', 0, '2011-09-21 18:18:48', '2011-09-21 18:18:48', 5),
(152, 'drivers', 'index', '', 'drivers', '', 0, '2011-09-21 18:35:17', '2011-09-21 18:35:17', 5),
(153, 'drivers', 'index', '', 'drivers', '', 0, '2011-09-21 18:35:49', '2011-09-21 18:35:49', 5),
(154, 'pages', 'display', 'home/', '/', '', 0, '2011-09-21 18:35:58', '2011-09-21 18:35:58', 5),
(155, 'routes', 'index', '', 'routes', '', 0, '2011-09-21 19:10:07', '2011-09-21 19:10:07', 5),
(156, 'users', 'index', '', 'users', '', 0, '2011-09-21 19:51:23', '2011-09-21 19:51:23', 5),
(157, 'users', 'edit', '5/', 'users/edit/5', '', 0, '2011-09-21 19:51:33', '2011-09-21 19:51:33', 5),
(158, 'users', 'edit', '5/', 'users/edit/5', '', 0, '2011-09-21 19:52:26', '2011-09-21 19:52:26', 5),
(159, 'users', 'edit', '5/', 'users/edit/5', '', 0, '2011-09-21 19:55:17', '2011-09-21 19:55:17', 5),
(160, 'users', 'edit', '5/', 'users/edit/5', '', 0, '2011-09-21 19:56:10', '2011-09-21 19:56:10', 5),
(161, 'users', 'add', '', 'users/add', '', 0, '2011-09-21 20:00:54', '2011-09-21 20:00:54', 5),
(162, 'users', 'add', '', 'users/add', '', 0, '2011-09-21 20:01:35', '2011-09-21 20:01:35', 5),
(163, 'users', 'add', '', 'users/add', '', 0, '2011-09-21 20:01:56', '2011-09-21 20:01:56', 5),
(164, 'pages', 'display', 'home/', '/', '', 0, '2011-09-21 20:01:59', '2011-09-21 20:01:59', 5),
(165, 'users', 'edit', '5/', 'users/edit/5', '', 0, '2011-09-21 20:24:37', '2011-09-21 20:24:37', 5),
(166, 'users', 'edit', '5/', 'users/edit/5', '', 0, '2011-09-21 20:25:14', '2011-09-21 20:25:14', 5),
(167, 'users', 'edit', '5/', 'users/edit/5', '', 0, '2011-09-21 20:28:17', '2011-09-21 20:28:17', 5),
(168, 'users', 'add', '', 'users/add', '', 0, '2011-09-21 20:28:25', '2011-09-21 20:28:25', 5),
(169, 'users', 'add', '', 'users/add', '', 0, '2011-09-21 20:28:32', '2011-09-21 20:28:32', 5),
(170, 'users', 'add', '', 'users/add', '', 0, '2011-09-21 20:29:12', '2011-09-21 20:29:12', 5),
(171, 'users', 'add', '', 'users/add', '', 0, '2011-09-21 20:30:22', '2011-09-21 20:30:22', 5),
(172, 'users', 'add', '', 'users/add', '', 0, '2011-09-21 20:31:06', '2011-09-21 20:31:06', 5),
(173, 'users', 'index', '', 'users', '', 0, '2011-09-21 20:33:05', '2011-09-21 20:33:05', 5),
(174, 'users', 'edit', '16/', 'users/edit/16', '', 0, '2011-09-21 20:35:23', '2011-09-21 20:35:23', 5),
(175, 'users', 'edit', '16/', 'users/edit/16', '', 0, '2011-09-21 20:35:43', '2011-09-21 20:35:43', 5),
(176, 'users', 'edit', '16/', 'users/edit/16', '', 0, '2011-09-21 20:35:51', '2011-09-21 20:35:51', 5),
(177, 'users', 'edit', '', 'users/edit', '', 0, '2011-09-21 20:36:07', '2011-09-21 20:36:07', 5),
(178, 'users', 'index', '', 'users', '', 0, '2011-09-21 20:42:05', '2011-09-21 20:42:05', 5),
(179, 'users', 'edit', '16/', 'users/edit/16', '', 0, '2011-09-21 20:42:12', '2011-09-21 20:42:12', 5),
(180, 'users', 'edit', '', 'users/edit', '', 0, '2011-09-21 20:42:35', '2011-09-21 20:42:35', 5),
(181, 'users', 'login', '', 'users/login', '', 0, '2011-09-22 05:29:38', '2011-09-22 05:29:38', 0),
(182, 'users', 'index', '', 'users', '', 0, '2011-09-22 05:29:50', '2011-09-22 05:29:50', 5),
(183, 'routes', 'index', '', 'routes', '', 0, '2011-09-22 05:29:59', '2011-09-22 05:29:59', 5),
(184, 'users', 'index', '', 'users', '', 0, '2011-09-22 05:30:09', '2011-09-22 05:30:09', 5),
(185, 'users', 'view', '5/', 'users/view/5', '', 0, '2011-09-22 05:30:15', '2011-09-22 05:30:15', 5),
(186, 'users', 'view', '5/', 'users/view/5', '', 0, '2011-09-22 05:32:12', '2011-09-22 05:32:12', 5),
(187, 'users', 'view', '16/', 'users/view/16', '', 0, '2011-09-22 05:32:18', '2011-09-22 05:32:18', 5),
(188, 'users', 'view', '16/', 'users/view/16', '', 0, '2011-09-22 05:36:06', '2011-09-22 05:36:06', 5),
(189, 'users', 'view', '16/', 'users/view/16', '', 0, '2011-09-22 05:47:58', '2011-09-22 05:47:58', 5),
(190, 'users', 'view', '16/', 'users/view/16', '', 0, '2011-09-22 05:48:00', '2011-09-22 05:48:00', 5),
(191, 'users', 'view', '16/', 'users/view/16', '', 0, '2011-09-22 05:48:01', '2011-09-22 05:48:01', 5),
(192, 'users', 'view', '16/', 'users/view/16', '', 0, '2011-09-22 05:48:01', '2011-09-22 05:48:01', 5),
(193, 'users', 'view', '16/', 'users/view/16', '', 0, '2011-09-22 05:48:02', '2011-09-22 05:48:02', 5),
(194, 'users', 'index', '', 'users', '', 0, '2011-09-22 05:48:09', '2011-09-22 05:48:09', 5),
(195, 'users', 'view', '9/', 'users/view/9', '', 0, '2011-09-22 05:48:15', '2011-09-22 05:48:15', 5),
(196, 'users', 'add', '', 'users/add', '', 0, '2011-09-22 05:48:20', '2011-09-22 05:48:20', 5),
(197, 'users', 'add', '', 'users/add', '', 0, '2011-09-22 05:48:36', '2011-09-22 05:48:36', 5),
(198, 'users', 'index', '', 'users', '', 0, '2011-09-22 05:49:04', '2011-09-22 05:49:04', 5),
(199, 'users', 'view', '17/', 'users/view/17', '', 0, '2011-09-22 05:49:15', '2011-09-22 05:49:15', 5),
(200, 'pages', 'display', 'home/', '/', '', 0, '2011-09-22 06:03:58', '2011-09-22 06:03:58', 5),
(201, 'users', 'index', '', 'users/', '', 0, '2011-09-22 06:04:24', '2011-09-22 06:04:24', 5),
(202, 'pages', 'display', 'home/', '/', '', 0, '2011-09-22 06:04:33', '2011-09-22 06:04:33', 5),
(203, 'users', 'login', '', 'users/login', '', 0, '2011-09-22 06:04:43', '2011-09-22 06:04:43', 0),
(204, 'pages', 'display', 'home/', '/', '', 0, '2011-09-22 06:04:53', '2011-09-22 06:04:53', 5),
(205, 'pages', 'display', 'home/', '/', '', 0, '2011-09-22 06:05:03', '2011-09-22 06:05:03', 5),
(206, 'pages', 'display', 'home/', '/', '', 0, '2011-09-22 06:05:16', '2011-09-22 06:05:16', 5),
(207, 'pages', 'display', 'home/', '/', '', 0, '2011-09-22 06:06:06', '2011-09-22 06:06:06', 5),
(208, 'users', 'index', '', 'users/', '', 0, '2011-09-22 06:14:51', '2011-09-22 06:14:51', 5),
(209, 'users', 'view', '16/', 'users/view/16', '', 0, '2011-09-22 06:15:01', '2011-09-22 06:15:01', 5),
(210, 'users', 'login', '', 'users/login', '', 0, '2011-09-22 10:04:41', '2011-09-22 10:04:41', 0),
(211, 'groups', 'index', '', 'groups', '', 0, '2011-09-22 10:08:37', '2011-09-22 10:08:37', 5),
(212, 'logs', 'index', '', 'logs', '', 0, '2011-09-22 10:12:28', '2011-09-22 10:12:28', 5),
(213, 'logs', 'index', '', 'logs/index/page:8', '', 0, '2011-09-22 10:12:52', '2011-09-22 10:12:52', 5),
(214, 'logs', 'index', '', 'logs/index/page:11', '', 0, '2011-09-22 10:13:00', '2011-09-22 10:13:00', 5),
(215, 'users', 'index', '', 'users', '', 0, '2011-09-22 10:13:05', '2011-09-22 10:13:05', 5),
(216, 'routes', 'index', '', 'routes', '', 0, '2011-09-22 10:13:15', '2011-09-22 10:13:15', 5),
(217, 'routes', 'view', '1/', 'routes/view/1', '', 0, '2011-09-22 10:13:18', '2011-09-22 10:13:18', 5),
(218, 'buses', 'index', '', 'buses', '', 0, '2011-09-22 10:19:43', '2011-09-22 10:19:43', 5),
(219, 'routes', 'index', '', 'routes', '', 0, '2011-09-22 10:19:46', '2011-09-22 10:19:46', 5),
(220, 'routes', 'view', '1/', 'routes/view/1', '', 0, '2011-09-22 10:19:50', '2011-09-22 10:19:50', 5),
(221, 'stations', 'view', '2/', 'stations/view/2', '', 0, '2011-09-22 10:23:43', '2011-09-22 10:23:43', 5),
(222, 'groups', 'index', '', 'groups', '', 0, '2011-09-22 10:57:15', '2011-09-22 10:57:15', 5),
(223, 'groups', 'add', '', 'groups/add', '', 0, '2011-09-22 10:59:17', '2011-09-22 10:59:17', 5),
(224, 'groups', 'index', '', 'groups', '', 0, '2011-09-22 10:59:23', '2011-09-22 10:59:23', 5),
(225, 'groups', 'index', '', 'groups', '', 0, '2011-09-22 11:01:04', '2011-09-22 11:01:04', 5),
(226, 'routes', 'index', '', 'routes', '', 0, '2011-09-22 11:01:21', '2011-09-22 11:01:21', 5),
(227, 'routes', 'view', '1/', 'routes/view/1', '', 0, '2011-09-22 11:01:29', '2011-09-22 11:01:29', 5),
(228, 'users', 'index', '', 'users/', '', 0, '2011-09-22 11:02:22', '2011-09-22 11:02:22', 5),
(229, 'logs', 'index', '', 'logs/', '', 0, '2011-09-22 11:03:25', '2011-09-22 11:03:25', 5),
(230, 'logs', 'index', '', 'logs/index/page:9', '', 0, '2011-09-22 11:03:30', '2011-09-22 11:03:30', 5),
(231, 'logs', 'edit', '176/', 'logs/edit/176', '', 0, '2011-09-22 11:03:56', '2011-09-22 11:03:56', 5),
(232, 'pages', 'display', 'home/', '/', '', 0, '2011-09-22 11:24:41', '2011-09-22 11:24:41', 5),
(233, 'users', 'login', '', 'users/login', '', 0, '2011-09-23 09:21:17', '2011-09-23 09:21:17', 0),
(234, 'users', 'login', '', 'users/login', '', 0, '2011-09-23 09:23:25', '2011-09-23 09:23:25', 0),
(235, 'users', 'login', '', 'users/login', '', 0, '2011-09-23 09:23:46', '2011-09-23 09:23:46', 0),
(236, 'users', 'login', '', 'users/login', '', 0, '2011-09-23 09:23:58', '2011-09-23 09:23:58', 0),
(237, 'users', 'login', '', 'users/login', '', 0, '2011-09-23 09:24:11', '2011-09-23 09:24:11', 0),
(238, 'users', 'login', '', 'users/login', '', 0, '2011-09-23 09:24:24', '2011-09-23 09:24:24', 0),
(239, 'routes', 'index', '', 'routes', '', 0, '2011-09-23 09:24:53', '2011-09-23 09:24:53', 5),
(240, 'cities', 'index', '', 'cities', '', 0, '2011-09-23 09:25:24', '2011-09-23 09:25:24', 5),
(241, 'routes', 'index', '', 'routes', '', 0, '2011-09-23 12:09:29', '2011-09-23 12:09:29', 5),
(242, 'routes', 'index', '', 'routes', '', 0, '2011-09-23 12:11:36', '2011-09-23 12:11:36', 5),
(243, 'routes', 'index', '', 'routes', '', 0, '2011-09-23 12:13:43', '2011-09-23 12:13:43', 5),
(244, 'stations', 'index', '', 'stations', '', 0, '2011-09-23 14:23:43', '2011-09-23 14:23:43', 5),
(245, 'stations', 'index', '', 'stations', '', 0, '2011-09-23 15:47:26', '2011-09-23 15:47:26', 5),
(246, 'routes', 'index', '', 'routes', '', 0, '2011-09-23 15:48:06', '2011-09-23 15:48:06', 5),
(247, 'users', 'login', '', 'users/login', '', 0, '2011-09-23 15:48:23', '2011-09-23 15:48:23', 0),
(248, 'pages', 'display', 'home/', '/', '', 0, '2011-09-23 15:48:53', '2011-09-23 15:48:53', 5),
(249, 'Routes', 'index', '', 'Routes', '', 0, '2011-09-23 15:48:57', '2011-09-23 15:48:57', 5),
(250, 'users', 'login', '', 'users/login', '', 0, '2011-09-23 15:49:34', '2011-09-23 15:49:34', 0),
(251, 'users', 'login', '', 'users/login', '', 0, '2011-09-23 15:49:51', '2011-09-23 15:49:51', 0),
(252, 'Routes', 'view', '1/', 'Routes/view/1', '', 0, '2011-09-23 15:49:59', '2011-09-23 15:49:59', 5),
(253, 'Routes', 'edit', '1/', 'Routes/edit/1', '', 0, '2011-09-23 16:08:47', '2011-09-23 16:08:47', 5),
(254, 'Routes', 'edit', '1/', 'Routes/edit/1', '', 0, '2011-09-23 16:31:09', '2011-09-23 16:31:09', 5),
(255, 'Routes', 'index', '', 'Routes', '', 0, '2011-09-23 16:42:43', '2011-09-23 16:42:43', 5),
(256, 'stations', 'add', '', 'stations/add', '', 0, '2011-09-23 16:42:47', '2011-09-23 16:42:47', 5),
(257, 'bus_stops', 'index', '', 'bus_stops', '', 0, '2011-09-23 16:42:53', '2011-09-23 16:42:53', 5),
(258, 'cities', 'add', '', 'cities/add', '', 0, '2011-09-23 16:42:57', '2011-09-23 16:42:57', 5),
(259, 'bus_stops', 'add', '', 'bus_stops/add', '', 0, '2011-09-23 16:44:54', '2011-09-23 16:44:54', 5),
(260, 'stations', 'index', '', 'stations', '', 0, '2011-09-23 16:45:01', '2011-09-23 16:45:01', 5),
(261, 'stations', 'index', '', 'stations', '', 0, '2011-09-23 16:54:28', '2011-09-23 16:54:28', 5),
(262, 'stations', 'index', '', 'stations', '', 0, '2011-09-23 16:55:31', '2011-09-23 16:55:31', 5),
(263, 'stations', 'index', '', 'stations', '', 0, '2011-09-23 17:00:58', '2011-09-23 17:00:58', 5),
(264, 'stations', 'index', '', 'stations', '', 0, '2011-09-23 17:06:13', '2011-09-23 17:06:13', 5),
(265, 'stations', 'index', '', 'stations', '', 0, '2011-09-23 17:07:45', '2011-09-23 17:07:45', 5),
(266, 'stations', 'index', '', 'stations/index/page:1/sort:name/direction:asc', '', 0, '2011-09-23 17:10:08', '2011-09-23 17:10:08', 5),
(267, 'stations', 'index', '', 'stations', '', 0, '2011-09-23 17:11:36', '2011-09-23 17:11:36', 5),
(268, 'stations', 'index', '', 'stations', '', 0, '2011-09-23 17:20:58', '2011-09-23 17:20:58', 5),
(269, 'stations', 'index', '', 'stations', '', 0, '2011-09-23 17:21:05', '2011-09-23 17:21:05', 5),
(270, 'stations', 'index', '', 'stations', '', 0, '2011-09-23 17:21:39', '2011-09-23 17:21:39', 5),
(271, 'stations', 'index', '', 'stations', '', 0, '2011-09-23 17:22:31', '2011-09-23 17:22:31', 5),
(272, 'users', 'index', '', 'users', '', 0, '2011-09-23 17:26:51', '2011-09-23 17:26:51', 5),
(273, 'groups', 'view', '1/', 'groups/view/1', '', 0, '2011-09-23 17:27:59', '2011-09-23 17:27:59', 5),
(274, 'users', 'index', '', 'users', '', 0, '2011-09-23 17:31:04', '2011-09-23 17:31:04', 5),
(275, 'users', 'index', '', 'users', '', 0, '2011-09-23 17:31:34', '2011-09-23 17:31:34', 0),
(276, 'users', 'login', '', 'users/login', '', 0, '2011-09-23 17:32:18', '2011-09-23 17:32:18', 0),
(277, 'users', 'login', '', 'users/login/', '', 0, '2011-09-23 17:32:30', '2011-09-23 17:32:30', 0),
(278, 'pages', 'display', 'home/', '/', '', 0, '2011-09-23 17:32:30', '2011-09-23 17:32:30', 0),
(279, 'users', 'login', '', 'users/login', '', 0, '2011-09-23 17:32:36', '2011-09-23 17:32:36', 0),
(280, 'users', 'login', '', 'users/login/', '', 0, '2011-09-23 17:32:44', '2011-09-23 17:32:44', 0),
(281, 'pages', 'display', 'home/', '/', '', 0, '2011-09-23 17:32:44', '2011-09-23 17:32:44', 0),
(282, 'users', 'login', '', 'users/login', '', 0, '2011-09-23 17:32:50', '2011-09-23 17:32:50', 0),
(283, 'users', 'login', '', 'users/login/', '', 0, '2011-09-23 17:33:00', '2011-09-23 17:33:00', 0),
(284, 'pages', 'display', 'home/', '/', '', 0, '2011-09-23 17:33:00', '2011-09-23 17:33:00', 0),
(285, 'users', 'login', '', 'users/login', '', 0, '2011-09-23 17:36:25', '2011-09-23 17:36:25', 0),
(286, 'Routes', 'index', '', 'Routes', '', 0, '2011-09-23 17:36:32', '2011-09-23 17:36:32', 5),
(287, 'pages', 'display', 'home/', '/', '', 0, '2011-09-23 17:36:32', '2011-09-23 17:36:32', 5),
(288, 'Routes', 'index', '', 'Routes', '', 0, '2011-09-23 17:36:38', '2011-09-23 17:36:38', 5),
(289, 'users', 'index', '', 'users/', '', 0, '2011-09-23 17:42:19', '2011-09-23 17:42:19', 5),
(290, 'users', 'view', '5/', 'users/view/5', '', 0, '2011-09-23 17:42:32', '2011-09-23 17:42:32', 5),
(291, 'users', 'view', '5/', 'users/view/5', '', 0, '2011-09-23 17:47:31', '2011-09-23 17:47:31', 5),
(292, 'users', 'view', '5/', 'users/view/5', '', 0, '2011-09-23 17:48:41', '2011-09-23 17:48:41', 5),
(293, 'stations', 'view', '1/', 'stations/view/1', '', 0, '2011-09-23 17:49:51', '2011-09-23 17:49:51', 5),
(294, 'stations', 'view', '1/', 'stations/view/1', '', 0, '2011-09-23 17:53:38', '2011-09-23 17:53:38', 5),
(295, 'stations', 'view', '1/', 'stations/view/1', '', 0, '2011-09-23 17:58:14', '2011-09-23 17:58:14', 5),
(296, 'stations', 'view', '1/', 'stations/view/1', '', 0, '2011-09-23 17:58:57', '2011-09-23 17:58:57', 5),
(297, 'stations', 'view', '1/', 'stations/view/1', '', 0, '2011-09-23 17:59:28', '2011-09-23 17:59:28', 5),
(298, 'users', 'login', '', 'users/login', '', 0, '2011-09-23 18:05:55', '2011-09-23 18:05:55', 0),
(299, 'pages', 'display', 'home/', '/', '', 0, '2011-09-23 18:06:04', '2011-09-23 18:06:04', 5),
(300, 'pages', 'display', 'home/', '/', '', 0, '2011-09-23 18:06:04', '2011-09-23 18:06:04', 5),
(301, 'pages', 'display', 'home/', '/', '', 0, '2011-09-23 18:06:59', '2011-09-23 18:06:59', 5),
(302, 'pages', 'display', 'home/', '/', '', 0, '2011-09-23 18:07:11', '2011-09-23 18:07:11', 5),
(303, 'pages', 'display', 'home/', '/', '', 0, '2011-09-23 18:09:20', '2011-09-23 18:09:20', 5),
(304, 'groups', 'view', '1/', 'groups/view/1', '', 0, '2011-09-23 18:11:27', '2011-09-23 18:11:27', 5),
(305, 'pages', 'display', 'home/', '/', '', 0, '2011-09-23 18:14:38', '2011-09-23 18:14:38', 5),
(306, 'pages', 'display', 'home/', '/', '', 0, '2011-09-23 18:14:58', '2011-09-23 18:14:58', 5),
(307, 'pages', 'display', 'home/', '/', '', 0, '2011-09-23 18:21:20', '2011-09-23 18:21:20', 5),
(308, 'routes', 'index', '', 'routes', '', 0, '2011-09-23 18:24:26', '2011-09-23 18:24:26', 5),
(309, 'users', 'index', '', 'users', '', 0, '2011-09-23 18:24:53', '2011-09-23 18:24:53', 5),
(310, 'users', 'index', '', 'users', '', 0, '2011-09-23 18:25:00', '2011-09-23 18:25:00', 5),
(311, 'users', 'index', '', 'users', '', 0, '2011-09-23 18:26:10', '2011-09-23 18:26:10', 5),
(312, 'users', 'index', '', 'users', '', 0, '2011-09-23 18:26:38', '2011-09-23 18:26:38', 5),
(313, 'groups', 'view', '1/', 'groups/view/1', '', 0, '2011-09-23 18:26:45', '2011-09-23 18:26:45', 5),
(314, 'groups', 'view', '1/', 'groups/view/1', '', 0, '2011-09-23 18:27:13', '2011-09-23 18:27:13', 5),
(315, 'groups', 'index', '', 'groups', '', 0, '2011-09-23 18:27:29', '2011-09-23 18:27:29', 5),
(316, 'users', 'index', '', 'users', '', 0, '2011-09-23 18:27:43', '2011-09-23 18:27:43', 5),
(317, 'pages', 'display', 'home/', '/', '', 0, '2011-09-23 18:30:12', '2011-09-23 18:30:12', 5),
(318, 'users', 'index', '', 'users', '', 0, '2011-09-23 18:32:33', '2011-09-23 18:32:33', 5),
(319, 'users', 'index', '', 'users', '', 0, '2011-09-23 18:32:57', '2011-09-23 18:32:57', 5),
(320, 'pages', 'display', 'home/', '/', '', 0, '2011-09-23 18:34:05', '2011-09-23 18:34:05', 5),
(321, 'pages', 'display', 'home/', '/', '', 0, '2011-09-23 18:35:20', '2011-09-23 18:35:20', 5),
(322, 'pages', 'display', 'home/', '/', '', 0, '2011-09-23 18:35:28', '2011-09-23 18:35:28', 5),
(323, 'users', 'index', '', 'users/', '', 0, '2011-09-23 18:38:09', '2011-09-23 18:38:09', 5),
(324, 'pages', 'display', 'home/', '/', '', 0, '2011-09-23 18:40:04', '2011-09-23 18:40:04', 5),
(325, 'users', 'index', '', 'users', '', 0, '2011-09-23 18:42:36', '2011-09-23 18:42:36', 5),
(326, 'pages', 'display', 'home/', '/', '', 0, '2011-09-23 18:42:42', '2011-09-23 18:42:42', 5),
(327, 'pages', 'display', 'home/', '/', '', 0, '2011-09-23 18:42:44', '2011-09-23 18:42:44', 5),
(328, 'users', 'index', '', 'users', '', 0, '2011-09-23 18:42:46', '2011-09-23 18:42:46', 5),
(329, 'pages', 'display', 'home/', '/', '', 0, '2011-09-23 18:49:54', '2011-09-23 18:49:54', 5),
(330, 'pages', 'display', 'home/', '/', '', 0, '2011-09-23 18:54:37', '2011-09-23 18:54:37', 5),
(331, 'pages', 'display', 'home/', '/', '', 0, '2011-09-23 18:57:03', '2011-09-23 18:57:03', 5),
(332, 'pages', 'display', 'home/', '/', '', 0, '2011-09-23 18:58:24', '2011-09-23 18:58:24', 5),
(333, 'pages', 'display', 'home/', '/', '', 0, '2011-09-23 18:59:15', '2011-09-23 18:59:15', 5),
(334, 'pages', 'display', 'home/', '/', '', 0, '2011-09-23 19:00:46', '2011-09-23 19:00:46', 5),
(335, 'pages', 'display', 'home/', '/', '', 0, '2011-09-23 19:00:51', '2011-09-23 19:00:51', 5),
(336, 'pages', 'display', 'home/', '/', '', 0, '2011-09-23 19:01:11', '2011-09-23 19:01:11', 5),
(337, 'pages', 'display', 'home/', '/', '', 0, '2011-09-23 19:09:54', '2011-09-23 19:09:54', 5),
(338, 'pages', 'display', 'home/', '/', '', 0, '2011-09-23 19:11:52', '2011-09-23 19:11:52', 5),
(339, 'Users', 'index', '', 'Users', '', 0, '2011-09-23 19:14:23', '2011-09-23 19:14:23', 5),
(340, 'pages', 'display', 'home/', '/', '', 0, '2011-09-23 19:16:13', '2011-09-23 19:16:13', 5),
(341, 'Users', 'index', '', 'Users', '', 0, '2011-09-23 19:21:36', '2011-09-23 19:21:36', 5),
(342, 'Users', 'index', '', 'Users', '', 0, '2011-09-23 19:23:52', '2011-09-23 19:23:52', 5),
(343, 'Users', 'index', '', 'Users', '', 0, '2011-09-23 19:23:55', '2011-09-23 19:23:55', 5),
(344, 'Users', 'index', '', 'Users', '', 0, '2011-09-23 19:24:08', '2011-09-23 19:24:08', 5),
(345, 'pages', 'display', 'home/', '/', '', 0, '2011-09-23 19:24:15', '2011-09-23 19:24:15', 5),
(346, 'Users', 'index', '', 'Users', '', 0, '2011-09-23 19:25:31', '2011-09-23 19:25:31', 5),
(347, 'pages', 'display', 'home/', '/', '', 0, '2011-09-23 19:27:39', '2011-09-23 19:27:39', 5),
(348, 'pages', 'display', 'home/', '/', '', 0, '2011-09-23 19:39:46', '2011-09-23 19:39:46', 5),
(349, 'pages', 'display', 'home/', '/', '', 0, '2011-09-23 19:41:03', '2011-09-23 19:41:03', 5),
(350, 'pages', 'display', 'home/', '/', '', 0, '2011-09-23 19:44:05', '2011-09-23 19:44:05', 5),
(351, 'pages', 'display', 'home/', '/', '', 0, '2011-09-23 19:45:03', '2011-09-23 19:45:03', 5),
(352, 'pages', 'display', 'home/', '/', '', 0, '2011-09-23 19:45:36', '2011-09-23 19:45:36', 5),
(353, 'pages', 'display', 'home/', '/', '', 0, '2011-09-23 19:47:51', '2011-09-23 19:47:51', 5),
(354, 'pages', 'display', 'home/', '/', '', 0, '2011-09-23 19:52:45', '2011-09-23 19:52:45', 5),
(355, 'pages', 'display', 'home/', '/', '', 0, '2011-09-23 19:55:21', '2011-09-23 19:55:21', 5),
(356, 'pages', 'display', 'home/', '/', '', 0, '2011-09-23 19:56:01', '2011-09-23 19:56:01', 5),
(357, 'pages', 'display', 'home/', '/', '', 0, '2011-09-23 19:56:43', '2011-09-23 19:56:43', 5),
(358, 'pages', 'display', 'home/', '/', '', 0, '2011-09-23 19:57:12', '2011-09-23 19:57:12', 5),
(359, 'pages', 'display', 'home/', '/', '', 0, '2011-09-23 19:58:48', '2011-09-23 19:58:48', 5),
(360, 'pages', 'display', 'home/', '/', '', 0, '2011-09-23 19:59:02', '2011-09-23 19:59:02', 5),
(361, 'logs', 'index', '', 'logs', '', 0, '2011-09-23 20:05:30', '2011-09-23 20:05:30', 5),
(362, 'pages', 'display', 'home/', '/', '', 0, '2011-09-23 20:08:02', '2011-09-23 20:08:02', 5),
(363, 'pages', 'display', 'home/', '/', '', 0, '2011-09-23 20:08:35', '2011-09-23 20:08:35', 5),
(364, 'pages', 'display', 'home/', '/', '', 0, '2011-09-23 20:11:08', '2011-09-23 20:11:08', 5),
(365, 'pages', 'display', 'home/', '/', '', 0, '2011-09-23 20:15:30', '2011-09-23 20:15:30', 5),
(366, 'pages', 'display', 'home/', '/', '', 0, '2011-09-23 20:20:43', '2011-09-23 20:20:43', 5),
(367, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 04:40:07', '2011-09-24 04:40:07', 0),
(368, 'users', 'index', '', 'users', '', 0, '2011-09-24 04:40:25', '2011-09-24 04:40:25', 0),
(369, 'users', 'login', '', 'users/login', '', 0, '2011-09-24 04:40:37', '2011-09-24 04:40:37', 0),
(370, 'groups', 'index', '', 'groups', '', 0, '2011-09-24 04:40:50', '2011-09-24 04:40:50', 5),
(371, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 04:40:51', '2011-09-24 04:40:51', 5),
(372, 'Users', 'index', '', 'Users', '', 0, '2011-09-24 04:40:59', '2011-09-24 04:40:59', 5),
(373, 'groups', 'index', '', 'groups', '', 0, '2011-09-24 04:41:04', '2011-09-24 04:41:04', 5),
(374, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 04:54:30', '2011-09-24 04:54:30', 5),
(375, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 04:55:16', '2011-09-24 04:55:16', 5),
(376, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 04:59:17', '2011-09-24 04:59:17', 5),
(377, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 05:01:25', '2011-09-24 05:01:25', 5),
(378, 'users', 'login', '', 'users/login', '', 0, '2011-09-24 05:01:35', '2011-09-24 05:01:35', 0),
(379, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 05:01:47', '2011-09-24 05:01:47', 8),
(380, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 05:01:47', '2011-09-24 05:01:47', 8),
(381, 'users', 'login', '', 'users/login', '', 0, '2011-09-24 05:01:55', '2011-09-24 05:01:55', 0),
(382, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 05:15:34', '2011-09-24 05:15:34', 5),
(383, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 05:15:35', '2011-09-24 05:15:35', 5),
(384, 'Buses', 'index', '', 'Buses', '', 0, '2011-09-24 05:17:17', '2011-09-24 05:17:17', 5),
(385, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 05:17:49', '2011-09-24 05:17:49', 5),
(386, 'Stations', 'index', '', 'Stations', '', 0, '2011-09-24 05:17:56', '2011-09-24 05:17:56', 5),
(387, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 05:21:16', '2011-09-24 05:21:16', 5),
(388, 'routes', 'index', '', 'routes', '', 0, '2011-09-24 05:23:24', '2011-09-24 05:23:24', 5),
(389, 'routes', 'add', '', 'routes/add', '', 0, '2011-09-24 05:23:29', '2011-09-24 05:23:29', 5),
(390, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 05:24:27', '2011-09-24 05:24:27', 5),
(391, 'Routes', 'add', '', 'Routes/add', '', 0, '2011-09-24 05:24:34', '2011-09-24 05:24:34', 5),
(392, 'Routes', 'index', '', 'Routes', '', 0, '2011-09-24 05:24:34', '2011-09-24 05:24:34', 5),
(393, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 05:25:54', '2011-09-24 05:25:54', 5),
(394, 'Stations', 'index', '', 'Stations', '', 0, '2011-09-24 05:25:58', '2011-09-24 05:25:58', 5),
(395, 'Stations', 'index', '', 'Stations', '', 0, '2011-09-24 05:29:23', '2011-09-24 05:29:23', 5),
(396, 'Stations', 'add', '', 'Stations/add', '', 0, '2011-09-24 05:29:26', '2011-09-24 05:29:26', 5),
(397, 'stations', 'index', '', 'stations', '', 0, '2011-09-24 05:29:43', '2011-09-24 05:29:43', 5),
(398, 'stations', 'add', '', 'stations/add', '', 0, '2011-09-24 05:29:46', '2011-09-24 05:29:46', 5),
(399, 'stations', 'index', '', 'stations', '', 0, '2011-09-24 05:29:56', '2011-09-24 05:29:56', 5),
(400, 'stations', 'add', '', 'stations/add', '', 0, '2011-09-24 05:30:00', '2011-09-24 05:30:00', 5),
(401, 'stations', 'index', '', 'stations', '', 0, '2011-09-24 05:30:09', '2011-09-24 05:30:09', 5),
(402, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 05:30:13', '2011-09-24 05:30:13', 5),
(403, 'Trips', 'index', '', 'Trips', '', 0, '2011-09-24 05:30:42', '2011-09-24 05:30:42', 5),
(404, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 05:31:33', '2011-09-24 05:31:33', 5),
(405, 'Buses', 'index', '', 'Buses', '', 0, '2011-09-24 05:32:18', '2011-09-24 05:32:18', 5),
(406, 'Buses', 'index', '', 'Buses', '', 0, '2011-09-24 05:32:30', '2011-09-24 05:32:30', 5),
(407, 'routes', 'add', '', 'routes/add', '', 0, '2011-09-24 05:32:33', '2011-09-24 05:32:33', 5),
(408, 'routes', 'index', '', 'routes', '', 0, '2011-09-24 05:34:04', '2011-09-24 05:34:04', 5),
(409, 'routes', 'add', '', 'routes/add', '', 0, '2011-09-24 05:34:33', '2011-09-24 05:34:33', 5),
(410, 'routes', 'index', '', 'routes', '', 0, '2011-09-24 05:35:11', '2011-09-24 05:35:11', 5),
(411, 'routes', 'add', '', 'routes/add', '', 0, '2011-09-24 05:35:14', '2011-09-24 05:35:14', 5),
(412, 'routes', 'index', '', 'routes', '', 0, '2011-09-24 05:37:27', '2011-09-24 05:37:27', 5),
(413, 'routes', 'add', '', 'routes/add', '', 0, '2011-09-24 05:37:32', '2011-09-24 05:37:32', 5),
(414, 'routes', 'index', '', 'routes', '', 0, '2011-09-24 05:38:39', '2011-09-24 05:38:39', 5),
(415, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 05:38:45', '2011-09-24 05:38:45', 5),
(416, 'Buses', 'index', '', 'Buses', '', 0, '2011-09-24 05:38:49', '2011-09-24 05:38:49', 5),
(417, 'Buses', 'add', '', 'Buses/add', '', 0, '2011-09-24 05:38:51', '2011-09-24 05:38:51', 5),
(418, 'Buses', 'index', '', 'Buses', '', 0, '2011-09-24 05:39:15', '2011-09-24 05:39:15', 5),
(419, 'buses', 'add', '', 'buses/add', '', 0, '2011-09-24 05:39:30', '2011-09-24 05:39:30', 5),
(420, 'buses', 'add', '', 'buses/add', '', 0, '2011-09-24 05:40:15', '2011-09-24 05:40:15', 5),
(421, 'buses', 'add', '', 'buses/add', '', 0, '2011-09-24 05:40:18', '2011-09-24 05:40:18', 5),
(422, 'buses', 'add', '', 'buses/add', '', 0, '2011-09-24 05:40:28', '2011-09-24 05:40:28', 5),
(423, 'buses', 'index', '', 'buses', '', 0, '2011-09-24 05:41:03', '2011-09-24 05:41:03', 5),
(424, 'buses', 'add', '', 'buses/add', '', 0, '2011-09-24 05:41:09', '2011-09-24 05:41:09', 5),
(425, 'buses', 'index', '', 'buses', '', 0, '2011-09-24 05:41:22', '2011-09-24 05:41:22', 5),
(426, 'buses', 'add', '', 'buses/add', '', 0, '2011-09-24 05:41:25', '2011-09-24 05:41:25', 5),
(427, 'buses', 'index', '', 'buses', '', 0, '2011-09-24 05:41:42', '2011-09-24 05:41:42', 5),
(428, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 05:41:48', '2011-09-24 05:41:48', 5),
(429, 'Trips', 'index', '', 'Trips', '', 0, '2011-09-24 05:41:50', '2011-09-24 05:41:50', 5),
(430, 'Trips', 'add', '', 'Trips/add', '', 0, '2011-09-24 05:41:57', '2011-09-24 05:41:57', 5),
(431, 'trips', 'index', '', 'trips', '', 0, '2011-09-24 05:42:03', '2011-09-24 05:42:03', 5),
(432, 'trips', 'add', '', 'trips/add', '', 0, '2011-09-24 05:42:06', '2011-09-24 05:42:06', 5),
(433, 'trips', 'index', '', 'trips', '', 0, '2011-09-24 05:42:10', '2011-09-24 05:42:10', 5),
(434, 'trips', 'add', '', 'trips/add', '', 0, '2011-09-24 05:42:12', '2011-09-24 05:42:12', 5),
(435, 'trips', 'index', '', 'trips', '', 0, '2011-09-24 05:42:22', '2011-09-24 05:42:22', 5),
(436, 'trips', 'add', '', 'trips/add', '', 0, '2011-09-24 05:42:30', '2011-09-24 05:42:30', 5),
(437, 'trips', 'index', '', 'trips', '', 0, '2011-09-24 05:42:34', '2011-09-24 05:42:34', 5),
(438, 'drivers', 'add', '', 'drivers/add', '', 0, '2011-09-24 05:42:42', '2011-09-24 05:42:42', 5),
(439, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 05:43:17', '2011-09-24 05:43:17', 5),
(440, 'Routes', 'index', '', 'Routes', '', 0, '2011-09-24 05:43:21', '2011-09-24 05:43:21', 5),
(441, 'users', 'login', '', 'users/login', '', 0, '2011-09-24 07:59:53', '2011-09-24 07:59:53', 0),
(442, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 07:59:58', '2011-09-24 07:59:58', 5),
(443, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 07:59:58', '2011-09-24 07:59:58', 5),
(444, 'Assistants', 'index', '', 'Assistants', '', 0, '2011-09-24 08:00:05', '2011-09-24 08:00:05', 5),
(445, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 08:00:46', '2011-09-24 08:00:46', 5),
(446, 'Routes', 'index', '', 'Routes', '', 0, '2011-09-24 08:00:51', '2011-09-24 08:00:51', 5),
(447, 'Routes', 'view', '1/', 'Routes/view/1', '', 0, '2011-09-24 08:00:54', '2011-09-24 08:00:54', 5),
(448, 'bus_stops', 'add', '', 'bus_stops/add', '', 0, '2011-09-24 08:01:05', '2011-09-24 08:01:05', 5),
(449, 'bus_stops', 'add', '', 'bus_stops/add', '', 0, '2011-09-24 08:01:15', '2011-09-24 08:01:15', 5),
(450, 'Routes', 'view', '1/', 'Routes/view/1', '', 0, '2011-09-24 08:01:32', '2011-09-24 08:01:32', 5),
(451, 'Routes', 'view', '2/', 'Routes/view/2', '', 0, '2011-09-24 08:01:49', '2011-09-24 08:01:49', 5),
(452, 'Routes', 'view', '3/', 'Routes/view/3', '', 0, '2011-09-24 08:01:55', '2011-09-24 08:01:55', 5),
(453, 'Routes', 'view', '4/', 'Routes/view/4', '', 0, '2011-09-24 08:02:07', '2011-09-24 08:02:07', 5),
(454, 'bus_stops', 'add', '', 'bus_stops/add', '', 0, '2011-09-24 08:02:13', '2011-09-24 08:02:13', 5),
(455, 'users', 'view', '5/', 'users/view/5', '', 0, '2011-09-24 08:02:45', '2011-09-24 08:02:45', 5),
(456, 'bus_stops', 'index', '', 'bus_stops', '', 0, '2011-09-24 08:10:45', '2011-09-24 08:10:45', 5),
(457, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 08:18:05', '2011-09-24 08:18:05', 5),
(458, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 08:18:13', '2011-09-24 08:18:13', 5),
(459, 'Routes', 'index', '', 'Routes', '', 0, '2011-09-24 08:18:21', '2011-09-24 08:18:21', 5),
(460, 'Routes', 'index', '', 'Routes', '', 0, '2011-09-24 08:18:24', '2011-09-24 08:18:24', 5),
(461, 'users', 'login', '', 'users/login', '', 0, '2011-09-24 08:18:35', '2011-09-24 08:18:35', 0),
(462, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 08:18:45', '2011-09-24 08:18:45', 5),
(463, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 08:18:45', '2011-09-24 08:18:45', 5),
(464, 'Bus_Stops', 'index', '', 'Bus_Stops', '', 0, '2011-09-24 08:18:54', '2011-09-24 08:18:54', 5),
(465, 'Bus_Stops', 'index', '', 'Bus_Stops', '', 0, '2011-09-24 08:18:58', '2011-09-24 08:18:58', 5),
(466, 'Bus_Stops', 'index', '', 'Bus_Stops', '', 0, '2011-09-24 08:19:08', '2011-09-24 08:19:08', 5),
(467, 'Bus_Stops', 'index', '', 'Bus_Stops', '', 0, '2011-09-24 08:23:04', '2011-09-24 08:23:04', 5),
(468, 'Bus_Stops', 'index', '', 'Bus_Stops', '', 0, '2011-09-24 08:23:05', '2011-09-24 08:23:05', 5),
(469, 'Bus_Stops', 'index', '', 'Bus_Stops', '', 0, '2011-09-24 08:23:07', '2011-09-24 08:23:07', 5),
(470, 'Bus_Stops', 'index', '', 'Bus_Stops', '', 0, '2011-09-24 08:23:33', '2011-09-24 08:23:33', 5),
(471, 'Bus_Stops', 'index', '', 'Bus_Stops', '', 0, '2011-09-24 08:23:37', '2011-09-24 08:23:37', 5),
(472, 'Bus_Stops', 'index', '', 'Bus_Stops', '', 0, '2011-09-24 08:23:41', '2011-09-24 08:23:41', 5),
(473, 'Bus_Stops', 'index', '', 'Bus_Stops', '', 0, '2011-09-24 08:31:02', '2011-09-24 08:31:02', 5),
(474, 'Bus_Stops', 'index', '', 'Bus_Stops', '', 0, '2011-09-24 08:31:06', '2011-09-24 08:31:06', 5),
(475, 'Bus_Stops', 'index', '', 'Bus_Stops', '', 0, '2011-09-24 08:31:20', '2011-09-24 08:31:20', 5),
(476, 'Bus_Stops', 'index', '', 'Bus_Stops', '', 0, '2011-09-24 08:32:06', '2011-09-24 08:32:06', 5),
(477, 'Bus_Stops', 'index', '', 'Bus_Stops', '', 0, '2011-09-24 08:32:30', '2011-09-24 08:32:30', 5),
(478, 'Bus_Stops', 'index', '', 'Bus_Stops', '', 0, '2011-09-24 08:32:32', '2011-09-24 08:32:32', 5),
(479, 'Bus_Stops', 'index', '', 'Bus_Stops', '', 0, '2011-09-24 08:32:34', '2011-09-24 08:32:34', 5),
(480, 'Bus_Stops', 'index', '', 'Bus_Stops', '', 0, '2011-09-24 08:32:48', '2011-09-24 08:32:48', 5),
(481, 'Bus_Stops', 'index', '', 'Bus_Stops', '', 0, '2011-09-24 08:32:51', '2011-09-24 08:32:51', 5),
(482, 'Bus_Stops', 'index', '', 'Bus_Stops', '', 0, '2011-09-24 08:33:04', '2011-09-24 08:33:04', 5),
(483, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 08:33:15', '2011-09-24 08:33:15', 5),
(484, 'Users', 'index', '', 'Users', '', 0, '2011-09-24 08:33:24', '2011-09-24 08:33:24', 5),
(485, 'stations', 'index', '', 'stations', '', 0, '2011-09-24 08:33:48', '2011-09-24 08:33:48', 5),
(486, 'stations', 'view', '1/', 'stations/view/1', '', 0, '2011-09-24 08:34:05', '2011-09-24 08:34:05', 5),
(487, 'stations', 'view', '1/s/', 'stations/view/1/s', '', 0, '2011-09-24 08:34:34', '2011-09-24 08:34:34', 5),
(488, 'stations', 'view', '1/s/', 'stations/view/1/s', '', 0, '2011-09-24 08:37:32', '2011-09-24 08:37:32', 5),
(489, 'stations', 'view', '1/ta/', 'stations/view/1/ta', '', 0, '2011-09-24 08:37:43', '2011-09-24 08:37:43', 5),
(490, 'stations', 'view', '1/ta/', 'stations/view/1/ta', '', 0, '2011-09-24 08:37:52', '2011-09-24 08:37:52', 5),
(491, 'stations', 'view', '1/ta/', 'stations/view/1/ta', '', 0, '2011-09-24 08:42:17', '2011-09-24 08:42:17', 5),
(492, 'stations', 'view', '1/ta/', 'stations/view/1/ta', '', 0, '2011-09-24 08:42:38', '2011-09-24 08:42:38', 5),
(493, 'stations', 'view', '1/ta/', 'stations/view/1/ta', '', 0, '2011-09-24 08:43:15', '2011-09-24 08:43:15', 5),
(494, 'stations', 'view', '1/ta/', 'stations/view/1/ta', '', 0, '2011-09-24 08:43:23', '2011-09-24 08:43:23', 5),
(495, 'stations', 'view', '1/ta/', 'stations/view/1/ta', '', 0, '2011-09-24 08:46:03', '2011-09-24 08:46:03', 5),
(496, 'stations', 'view', '1/ta/', 'stations/view/1/ta', '', 0, '2011-09-24 08:46:48', '2011-09-24 08:46:48', 5),
(497, 'stations', 'view', '1/ta/', 'stations/view/1/ta', '', 0, '2011-09-24 08:50:32', '2011-09-24 08:50:32', 5),
(498, 'stations', 'view', '1/si/', 'stations/view/1/si', '', 0, '2011-09-24 08:50:35', '2011-09-24 08:50:35', 5),
(499, 'stations', 'view', '1/si/', 'stations/view/1/si', '', 0, '2011-09-24 08:51:54', '2011-09-24 08:51:54', 5),
(500, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 08:52:29', '2011-09-24 08:52:29', 5),
(501, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 08:53:41', '2011-09-24 08:53:41', 5),
(502, 'Trips', 'index', '', 'Trips', '', 0, '2011-09-24 08:53:48', '2011-09-24 08:53:48', 5),
(503, 'Trips', 'index', '', 'Trips', '', 0, '2011-09-24 08:53:51', '2011-09-24 08:53:51', 5),
(504, 'stations', 'view', '1/si/', 'stations/view/1/si', '', 0, '2011-09-24 08:53:55', '2011-09-24 08:53:55', 5),
(505, 'stations', 'view', '1/ta/', 'stations/view/1/ta', '', 0, '2011-09-24 08:53:57', '2011-09-24 08:53:57', 5),
(506, 'stations', 'view', '1/ta/', 'stations/view/1/ta', '', 0, '2011-09-24 08:54:27', '2011-09-24 08:54:27', 5),
(507, 'stations', 'view', '1/ta/', 'stations/view/1/ta', '', 0, '2011-09-24 08:54:50', '2011-09-24 08:54:50', 5),
(508, 'stations', 'view', '1/si/', 'stations/view/1/si', '', 0, '2011-09-24 08:54:51', '2011-09-24 08:54:51', 5),
(509, 'users', 'login', '', 'users/login', '', 0, '2011-09-24 08:56:07', '2011-09-24 08:56:07', 0),
(510, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 09:00:34', '2011-09-24 09:00:34', 5),
(511, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 09:00:34', '2011-09-24 09:00:34', 5),
(512, 'Routes', 'index', '', 'Routes', '', 0, '2011-09-24 09:00:48', '2011-09-24 09:00:48', 5),
(513, 'Routes', 'add', '', 'Routes/add', '', 0, '2011-09-24 09:01:00', '2011-09-24 09:01:00', 5),
(514, 'routes', 'index', '', 'routes', '', 0, '2011-09-24 09:01:19', '2011-09-24 09:01:19', 5),
(515, 'routes', 'view', '1/', 'routes/view/1', '', 0, '2011-09-24 09:01:30', '2011-09-24 09:01:30', 5),
(516, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 09:01:54', '2011-09-24 09:01:54', 5);
INSERT INTO `logs` (`id`, `controller`, `action`, `params`, `url`, `description`, `type`, `created`, `modified`, `user_id`) VALUES
(517, 'Routes', 'index', '', 'Routes', '', 0, '2011-09-24 09:02:01', '2011-09-24 09:02:01', 5),
(518, 'Routes', 'index', '', 'Routes', '', 0, '2011-09-24 09:02:02', '2011-09-24 09:02:02', 5),
(519, 'Routes', 'edit', '2/', 'Routes/edit/2', '', 0, '2011-09-24 09:02:04', '2011-09-24 09:02:04', 5),
(520, 'routes', 'index', '', 'routes', '', 0, '2011-09-24 09:02:17', '2011-09-24 09:02:17', 5),
(521, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 09:03:18', '2011-09-24 09:03:18', 5),
(522, 'Routes', 'index', '', 'Routes', '', 0, '2011-09-24 09:03:46', '2011-09-24 09:03:46', 5),
(523, 'Routes', 'view', '1/', 'Routes/view/1', '', 0, '2011-09-24 09:03:53', '2011-09-24 09:03:53', 5),
(524, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 09:04:02', '2011-09-24 09:04:02', 5),
(525, 'users', 'login', '', 'users/login', '', 0, '2011-09-24 09:05:13', '2011-09-24 09:05:13', 0),
(526, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 09:05:26', '2011-09-24 09:05:26', 5),
(527, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 09:05:26', '2011-09-24 09:05:26', 5),
(528, 'pages', 'display', 'users/add/', 'pages/users/add', '', 0, '2011-09-24 09:05:35', '2011-09-24 09:05:35', 5),
(529, 'Routes', 'index', '', 'Routes', '', 0, '2011-09-24 09:05:45', '2011-09-24 09:05:45', 5),
(530, 'Routes', 'index', '', 'Routes', '', 0, '2011-09-24 09:06:17', '2011-09-24 09:06:17', 5),
(531, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 09:06:18', '2011-09-24 09:06:18', 5),
(532, 'Routes', 'index', '', 'Routes', '', 0, '2011-09-24 09:06:34', '2011-09-24 09:06:34', 5),
(533, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 09:06:40', '2011-09-24 09:06:40', 5),
(534, 'Users', 'index', '', 'Users', '', 0, '2011-09-24 09:06:44', '2011-09-24 09:06:44', 5),
(535, 'groups', 'index', '', 'groups', '', 0, '2011-09-24 09:07:06', '2011-09-24 09:07:06', 5),
(536, 'groups', 'add', '', 'groups/add', '', 0, '2011-09-24 09:08:47', '2011-09-24 09:08:47', 5),
(537, 'groups', 'index', '', 'groups', '', 0, '2011-09-24 09:09:01', '2011-09-24 09:09:01', 5),
(538, 'groups', 'view', '1/', 'groups/view/1', '', 0, '2011-09-24 09:09:03', '2011-09-24 09:09:03', 5),
(539, 'groups', 'edit', '1/', 'groups/edit/1', '', 0, '2011-09-24 09:09:14', '2011-09-24 09:09:14', 5),
(540, 'groups', 'index', '', 'groups', '', 0, '2011-09-24 09:09:17', '2011-09-24 09:09:17', 5),
(541, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 09:09:39', '2011-09-24 09:09:39', 5),
(542, 'Logs', 'index', '', 'Logs', '', 0, '2011-09-24 09:09:49', '2011-09-24 09:09:49', 5),
(543, 'Logs', 'index', '', 'Logs/index/page:6', '', 0, '2011-09-24 09:10:14', '2011-09-24 09:10:14', 5),
(544, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 09:10:29', '2011-09-24 09:10:29', 5),
(545, 'Bus_Stops', 'index', '', 'Bus_Stops', '', 0, '2011-09-24 09:11:16', '2011-09-24 09:11:16', 5),
(546, 'stations', 'view', '1/si/', 'stations/view/1/si', '', 0, '2011-09-24 09:11:22', '2011-09-24 09:11:22', 5),
(547, 'stations', 'view', '1/ta/', 'stations/view/1/ta', '', 0, '2011-09-24 09:11:28', '2011-09-24 09:11:28', 5),
(548, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 09:12:12', '2011-09-24 09:12:12', 5),
(549, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 09:12:21', '2011-09-24 09:12:21', 5),
(550, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 09:13:33', '2011-09-24 09:13:33', 5),
(551, 'routes', 'api', '', 'routes/api', '', 0, '2011-09-24 09:13:40', '2011-09-24 09:13:40', 5),
(552, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 09:18:45', '2011-09-24 09:18:45', 5),
(553, 'users', 'login', '', 'users/login', '', 0, '2011-09-24 09:18:50', '2011-09-24 09:18:50', 0),
(554, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 09:36:37', '2011-09-24 09:36:37', 5),
(555, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 09:36:37', '2011-09-24 09:36:37', 5),
(556, 'Routes', 'index', '', 'Routes', '', 0, '2011-09-24 09:36:53', '2011-09-24 09:36:53', 5),
(557, 'Routes', 'add', '', 'Routes/add', '', 0, '2011-09-24 09:37:03', '2011-09-24 09:37:03', 5),
(558, 'routes', 'index', '', 'routes', '', 0, '2011-09-24 09:37:24', '2011-09-24 09:37:24', 5),
(559, 'routes', 'view', '2/', 'routes/view/2', '', 0, '2011-09-24 09:37:31', '2011-09-24 09:37:31', 5),
(560, 'routes', 'view', '1/', 'routes/view/1', '', 0, '2011-09-24 09:37:38', '2011-09-24 09:37:38', 5),
(561, 'routes', 'edit', '1/', 'routes/edit/1', '', 0, '2011-09-24 09:37:55', '2011-09-24 09:37:55', 5),
(562, 'routes', 'index', '', 'routes', '', 0, '2011-09-24 09:38:05', '2011-09-24 09:38:05', 5),
(563, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 09:38:15', '2011-09-24 09:38:15', 5),
(564, 'Users', 'index', '', 'Users', '', 0, '2011-09-24 09:38:29', '2011-09-24 09:38:29', 5),
(565, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 09:38:56', '2011-09-24 09:38:56', 5),
(566, 'Groups', 'add', '', 'Groups/add', '', 0, '2011-09-24 09:39:07', '2011-09-24 09:39:07', 5),
(567, 'Groups', 'index', '', 'Groups', '', 0, '2011-09-24 09:39:09', '2011-09-24 09:39:09', 5),
(568, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 09:39:21', '2011-09-24 09:39:21', 5),
(569, 'Drivers', 'index', '', 'Drivers', '', 0, '2011-09-24 09:39:28', '2011-09-24 09:39:28', 5),
(570, 'employees', 'index', '', 'employees', '', 0, '2011-09-24 09:39:31', '2011-09-24 09:39:31', 5),
(571, 'drivers', 'index', '', 'drivers', '', 0, '2011-09-24 09:39:33', '2011-09-24 09:39:33', 5),
(572, 'drivers', 'view', '1/', 'drivers/view/1', '', 0, '2011-09-24 09:39:36', '2011-09-24 09:39:36', 5),
(573, 'drivers', 'index', '', 'drivers', '', 0, '2011-09-24 09:39:45', '2011-09-24 09:39:45', 5),
(574, 'employees', 'index', '', 'employees', '', 0, '2011-09-24 09:39:48', '2011-09-24 09:39:48', 5),
(575, 'assistants', 'index', '', 'assistants', '', 0, '2011-09-24 09:39:52', '2011-09-24 09:39:52', 5),
(576, 'assistants', 'edit', '1/', 'assistants/edit/1', '', 0, '2011-09-24 09:39:54', '2011-09-24 09:39:54', 5),
(577, 'assistants', 'index', '', 'assistants', '', 0, '2011-09-24 09:39:56', '2011-09-24 09:39:56', 5),
(578, 'assistants', 'view', '1/', 'assistants/view/1', '', 0, '2011-09-24 09:39:58', '2011-09-24 09:39:58', 5),
(579, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 09:40:07', '2011-09-24 09:40:07', 5),
(580, 'users', 'login', '', 'users/login', '', 0, '2011-09-24 09:40:19', '2011-09-24 09:40:19', 0),
(581, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 09:40:26', '2011-09-24 09:40:26', 8),
(582, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 09:40:27', '2011-09-24 09:40:27', 8),
(583, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 09:40:46', '2011-09-24 09:40:46', 8),
(584, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 09:41:03', '2011-09-24 09:41:03', 8),
(585, 'users', 'login', '', 'users/login', '', 0, '2011-09-24 09:41:13', '2011-09-24 09:41:13', 0),
(586, 'users', 'login', '', 'users/login', '', 0, '2011-09-24 09:41:22', '2011-09-24 09:41:22', 0),
(587, 'users', 'login', '', 'users/login', '', 0, '2011-09-24 09:41:22', '2011-09-24 09:41:22', 0),
(588, 'users', 'login', '', 'users/login', '', 0, '2011-09-24 09:41:28', '2011-09-24 09:41:28', 0),
(589, 'users', 'login', '', 'users/login', '', 0, '2011-09-24 09:41:28', '2011-09-24 09:41:28', 0),
(590, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 09:41:40', '2011-09-24 09:41:40', 5),
(591, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 09:41:41', '2011-09-24 09:41:41', 5),
(592, 'Routes', 'index', '', 'Routes', '', 0, '2011-09-24 09:41:52', '2011-09-24 09:41:52', 5),
(593, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 09:41:55', '2011-09-24 09:41:55', 5),
(594, 'Stations', 'index', '', 'Stations', '', 0, '2011-09-24 09:41:56', '2011-09-24 09:41:56', 5),
(595, 'stations', 'view', '1/si/', 'stations/view/1/si', '', 0, '2011-09-24 09:42:16', '2011-09-24 09:42:16', 5),
(596, 'stations', 'view', '1/ta/', 'stations/view/1/ta', '', 0, '2011-09-24 09:42:22', '2011-09-24 09:42:22', 5),
(597, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 09:42:46', '2011-09-24 09:42:46', 5),
(598, 'Logs', 'index', '', 'Logs', '', 0, '2011-09-24 09:43:04', '2011-09-24 09:43:04', 5),
(599, 'Logs', 'index', '', 'Logs/index/page:9', '', 0, '2011-09-24 09:43:14', '2011-09-24 09:43:14', 5),
(600, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 09:43:36', '2011-09-24 09:43:36', 5),
(601, 'routes', 'api', '', 'routes/api', '', 0, '2011-09-24 09:52:04', '2011-09-24 09:52:04', 5),
(602, 'routes', 'add', '', 'routes/add', '', 0, '2011-09-24 09:52:44', '2011-09-24 09:52:44', 5),
(603, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 10:01:05', '2011-09-24 10:01:05', 5),
(604, 'Users', 'index', '', 'Users', '', 0, '2011-09-24 10:26:43', '2011-09-24 10:26:43', 5),
(605, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 10:26:59', '2011-09-24 10:26:59', 5),
(606, 'Routes', 'add', '', 'Routes/add', '', 0, '2011-09-24 10:27:07', '2011-09-24 10:27:07', 5),
(607, 'Routes', 'index', '', 'Routes', '', 0, '2011-09-24 10:27:18', '2011-09-24 10:27:18', 5),
(608, 'users', 'view', '5/', 'users/view/5', '', 0, '2011-09-24 10:27:21', '2011-09-24 10:27:21', 5),
(609, 'pages', 'display', 'home/', '/', '', 0, '2011-09-24 10:27:25', '2011-09-24 10:27:25', 5),
(610, 'users', 'login', '', 'users/login', '', 0, '2011-09-24 11:09:39', '2011-09-24 11:09:39', 0),
(611, 'routes', 'index', '', 'routes', '', 0, '2011-09-28 09:27:30', '2011-09-28 09:27:30', 0),
(612, 'pages', 'display', 'home/', '/', '', 0, '2011-09-28 09:27:31', '2011-09-28 09:27:31', 0),
(613, 'users', 'login', '', 'users/login', '', 0, '2011-09-28 09:27:35', '2011-09-28 09:27:35', 0),
(614, 'pages', 'display', 'home/', '/', '', 0, '2011-09-28 09:28:01', '2011-09-28 09:28:01', 5),
(615, 'pages', 'display', 'home/', '/', '', 0, '2011-09-28 09:28:01', '2011-09-28 09:28:01', 5),
(616, 'Users', 'index', '', 'Users', '', 0, '2011-09-28 09:28:15', '2011-09-28 09:28:15', 5),
(617, 'Routes', 'index', '', 'Routes', '', 0, '2011-09-28 09:28:29', '2011-09-28 09:28:29', 5),
(618, 'stations', 'view', '1/si/', 'stations/view/1/si', '', 0, '2011-09-28 09:28:37', '2011-09-28 09:28:37', 5),
(619, 'stations', 'view', '1/ta/', 'stations/view/1/ta', '', 0, '2011-09-28 09:28:40', '2011-09-28 09:28:40', 5),
(620, 'stations', 'view', '1/ta/', 'stations/view/1/ta', '', 0, '2011-09-28 09:28:43', '2011-09-28 09:28:43', 5),
(621, 'pages', 'display', 'home/', '/', '', 0, '2011-09-28 09:28:47', '2011-09-28 09:28:47', 5),
(622, 'Groups', 'add', '', 'Groups/add', '', 0, '2011-09-28 09:28:57', '2011-09-28 09:28:57', 5),
(623, 'Groups', 'index', '', 'Groups', '', 0, '2011-09-28 09:29:04', '2011-09-28 09:29:04', 5),
(624, 'Groups', 'index', '', 'Groups', '', 0, '2011-09-28 09:29:04', '2011-09-28 09:29:04', 5),
(625, 'pages', 'display', 'home/', '/', '', 0, '2011-09-28 09:29:33', '2011-09-28 09:29:33', 5),
(626, 'routes', 'index', '', 'routes', '', 0, '2011-09-28 09:30:15', '2011-09-28 09:30:15', 5),
(627, 'routes', 'view', '1/', 'routes/view/1', '', 0, '2011-09-28 09:30:30', '2011-09-28 09:30:30', 5),
(628, 'pages', 'display', 'home/', '/', '', 0, '2011-09-28 09:31:41', '2011-09-28 09:31:41', 5),
(629, 'pages', 'display', 'home/', '/', '', 0, '2012-03-18 22:15:10', '2012-03-18 22:15:10', 0),
(630, 'users', 'login', '', 'users/login', '', 0, '2012-03-18 22:15:31', '2012-03-18 22:15:31', 0),
(631, 'pages', 'display', 'home/', '/', '', 0, '2012-03-18 22:15:38', '2012-03-18 22:15:38', 0),
(632, 'Users', 'add', '', 'Users/add', '', 0, '2012-03-18 22:15:46', '2012-03-18 22:15:46', 0),
(633, 'pages', 'display', 'home/', '/', '', 0, '2012-03-18 22:15:49', '2012-03-18 22:15:49', 0),
(634, 'users', 'login', '', 'users/login', '', 0, '2012-03-18 22:15:54', '2012-03-18 22:15:54', 0),
(635, 'users', 'login', '', 'users/login', '', 0, '2012-03-18 22:16:00', '2012-03-18 22:16:00', 0),
(636, 'users', 'login', '', 'users/login', '', 0, '2012-03-18 22:16:00', '2012-03-18 22:16:00', 0),
(637, 'users', 'login', '', 'users/login', '', 0, '2012-03-18 22:16:06', '2012-03-18 22:16:06', 0),
(638, 'users', 'login', '', 'users/login', '', 0, '2012-03-18 22:16:07', '2012-03-18 22:16:07', 0),
(639, 'users', 'login', '', 'users/login', '', 0, '2012-03-18 22:16:08', '2012-03-18 22:16:08', 0),
(640, 'users', 'login', '', 'users/login', '', 0, '2012-03-18 22:16:09', '2012-03-18 22:16:09', 0);

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE IF NOT EXISTS `routes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) DEFAULT NULL,
  `route_no` varchar(8) DEFAULT NULL,
  `end_station_id` int(10) NOT NULL,
  `start_station_id` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `end_station_id` (`end_station_id`),
  KEY `start_station_id` (`start_station_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `routes`
--

INSERT INTO `routes` (`id`, `name`, `route_no`, `end_station_id`, `start_station_id`) VALUES
(1, 'Colombo to Fort', '138', 1, 2),
(2, 'Negombo to Fort', '240', 2, 5),
(3, 'J''ela to Fort', '123', 6, 1),
(4, 'J''ela to K''goda', '456', 6, 3),
(5, 'New route 1', '122', 1, 6),
(6, 'route 1', '121', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `routes_stations`
--

CREATE TABLE IF NOT EXISTS `routes_stations` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `route_id` int(10) NOT NULL,
  `station_id` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `route_id` (`route_id`),
  KEY `station_id` (`station_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `routes_stations`
--

INSERT INTO `routes_stations` (`id`, `route_id`, `station_id`) VALUES
(1, 1, 3),
(3, 3, 1),
(4, 3, 2),
(5, 3, 3),
(6, 4, 2),
(7, 4, 3),
(8, 4, 4),
(9, 5, 2),
(10, 5, 3),
(11, 2, 2),
(12, 6, 1),
(13, 6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `search_index`
--

CREATE TABLE IF NOT EXISTS `search_index` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `association_key` int(11) NOT NULL,
  `model` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `association_key` (`association_key`,`model`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

--
-- Dumping data for table `search_index`
--

INSERT INTO `search_index` (`id`, `association_key`, `model`, `data`, `created`, `modified`) VALUES
(1, 4, 'User', 'Pasindu. pasindu. 12345', '2011-09-21 15:45:24', '2011-09-21 15:45:24'),
(2, 3, 'User', 'User1. user1. user1', '2011-09-21 15:48:10', '2011-09-21 15:48:10'),
(3, 2, 'User', 'Mangr1. mangr1. mangr1', '2011-09-21 15:48:25', '2011-09-21 15:48:25'),
(4, 1, 'User', 'Admin1. admin1. admin1', '2011-09-21 15:48:36', '2011-09-21 15:48:36'),
(5, 1, 'User', 'user. User1. user1. user1', '2011-09-21 16:54:41', '2011-09-21 16:54:41'),
(6, 2, 'User', 'user. Admin1. admin1. admin1', '2011-09-21 16:54:56', '2011-09-21 16:54:56'),
(7, 3, 'User', 'user. Mangr1. mangr1. mangr1', '2011-09-21 16:55:12', '2011-09-21 16:55:12'),
(8, 5, 'User', 'Admin1. admin1. admin1', '2011-09-21 17:00:39', '2011-09-21 19:56:10'),
(9, 6, 'User', 'user. Mangr1. mangr1. mangr1', '2011-09-21 17:00:51', '2011-09-21 17:00:51'),
(10, 7, 'User', 'user. Driver1. driver1. driver1', '2011-09-21 17:01:47', '2011-09-21 17:01:47'),
(11, 8, 'User', 'user. User1. user1. user1', '2011-09-21 17:02:05', '2011-09-21 17:02:05'),
(12, 9, 'User', 'user. Assist1. assist1. assist1', '2011-09-21 17:02:24', '2011-09-21 17:02:24'),
(13, 10, 'User', 'aa. admin2. admin2', '2011-09-21 20:01:56', '2011-09-21 20:01:56'),
(14, 11, 'User', 'User2. user2. user2', '2011-09-21 20:29:12', '2011-09-21 20:29:12'),
(15, 13, 'User', 'User3. user3. user3', '2011-09-21 20:30:21', '2011-09-21 20:30:21'),
(16, 15, 'User', 'User4. user4. user4', '2011-09-21 20:31:06', '2011-09-21 20:31:06'),
(17, 16, 'User', 'Admin3. admin3. admin3', '2011-09-21 20:33:04', '2011-09-21 20:33:04'),
(18, 17, 'User', 'test. test. test1', '2011-09-22 05:49:04', '2011-09-22 05:49:04');

-- --------------------------------------------------------

--
-- Table structure for table `stations`
--

CREATE TABLE IF NOT EXISTS `stations` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `stations`
--

INSERT INTO `stations` (`id`, `name`) VALUES
(1, 'Colombo'),
(2, 'Kadawath'),
(3, 'Kiribathgoda'),
(4, 'Katunayaka'),
(5, 'Negombo'),
(6, 'J''ela');

-- --------------------------------------------------------

--
-- Table structure for table `trips`
--

CREATE TABLE IF NOT EXISTS `trips` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `bus_id` int(10) NOT NULL,
  `driver_id` int(10) NOT NULL,
  `assistant_id` int(10) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bus_id` (`bus_id`),
  KEY `driver_id` (`driver_id`),
  KEY `assistant_id` (`assistant_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `trips`
--

INSERT INTO `trips` (`id`, `bus_id`, `driver_id`, `assistant_id`, `date`) VALUES
(1, 1, 1, 1, '2011-09-17 19:11:00'),
(2, 2, 1, 1, '2011-09-24 05:41:00'),
(3, 4, 1, 1, '2011-09-24 05:42:00'),
(4, 1, 1, 1, '2011-09-24 05:42:00'),
(5, 5, 1, 1, '2011-09-24 05:42:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` char(40) NOT NULL,
  `group_id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `roles` varchar(10) NOT NULL DEFAULT 'user',
  `img` longblob,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `group_id`, `created`, `modified`, `name`, `roles`, `img`) VALUES
(5, 'admin1', 'c735ec94676344a226b93da203673b96c77bbb20', 1, '2011-09-21 17:00:39', '2011-09-21 19:56:10', 'Admin1', 'user', ''),
(6, 'mangr1', 'a79fc6c64fd1ceb9e438f7919f480a60056fb982', 2, '2011-09-21 17:00:51', '2011-09-21 17:00:51', 'Mangr1', 'user', NULL),
(7, 'driver1', 'ec03ef3df7d049b0fbc48ffbd14d0da0a79ecf82', 3, '2011-09-21 17:01:47', '2011-09-21 17:01:47', 'Driver1', 'user', NULL),
(8, 'user1', '4bd8948008e5603f5f7d3aa1258ed88b0a2022ef', 5, '2011-09-21 17:02:04', '2011-09-21 17:02:04', 'User1', 'user', NULL),
(9, 'assist1', 'd370d0be0f240a1cc4549737c2c4e05f737a463f', 4, '2011-09-21 17:02:24', '2011-09-21 17:02:24', 'Assist1', 'user', NULL),
(10, 'admin2', 'f3187ec1fa36e8c7b02e1233f96e88d48862fda8', 1, '2011-09-21 20:01:56', '2011-09-21 20:01:56', 'aa', 'user', NULL),
(11, 'user2', 'c78fb77f4eefbe3b14bdd2d05660adbcbb74801a', 5, '2011-09-21 20:29:12', '2011-09-21 20:29:12', 'User2', 'user', 0x556e7469746c65642e706e67),
(13, 'user3', 'be9312cecb67420431922cf716760318a12f3615', 5, '2011-09-21 20:30:21', '2011-09-21 20:30:21', 'User3', 'user', 0x4d5635424d5455314d4441314d5459774d4635424d6c3542616e426e586b46745a5463774d4463784d7a41314d6740402e5f56312e5f53593331375f2e6a7067),
(15, 'user4', 'a954eedc68375424125e5c2e67c8e6c96fa89390', 5, '2011-09-21 20:31:06', '2011-09-21 20:31:06', 'User4', 'user', 0x4d5635424d5455314d4441314d5459774d4635424d6c3542616e426e586b46745a5463774d4463784d7a41314d6740402e5f56312e5f53593331375f2e6a7067),
(16, 'admin3', 'eb610e6bf1ae58848eef435a02f9685f96b86d62', 1, '2011-09-21 20:33:04', '2011-09-21 20:33:04', 'Admin3', 'user', 0x313331353131393937325f796f75747562652e706e67),
(17, 'test', '04f2f7b20bbb40888fc5e52b98e26b7d56a1c47d', 1, '2011-09-22 05:49:04', '2011-09-22 05:49:04', 'test', 'user', 0x556e7469746c65642e706e67);
