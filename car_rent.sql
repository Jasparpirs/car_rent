-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Loomise aeg: Veebr 17, 2026 kell 12:15 PL
-- Serveri versioon: 10.4.32-MariaDB
-- PHP versioon: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Andmebaas: `#mysql50#marjamaa-splash-guide`
--
CREATE DATABASE IF NOT EXISTS `#mysql50#marjamaa-splash-guide` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `#mysql50#marjamaa-splash-guide`;
--
-- Andmebaas: `car_rent`
--
CREATE DATABASE IF NOT EXISTS `car_rent` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `car_rent`;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `cars`
--

CREATE TABLE `cars` (
  `id` int(4) NOT NULL,
  `mark` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `engine` varchar(255) NOT NULL,
  `fuel` varchar(255) NOT NULL,
  `price` int(4) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Andmete tõmmistamine tabelile `cars`
--

INSERT INTO `cars` (`id`, `mark`, `model`, `engine`, `fuel`, `price`, `image`) VALUES
(1, 'Audi', 'Q8', 'V8', 'bensiin', 100, '/img/audi.jpg'),
(3, 'Mitsubishi', '3000GT', '2.2 HDI', 'methanol', 88, 'http://dummyimage.com/161x100.png/dddddd/000000'),
(4, 'Mitsubishi', 'Raider', '2.5 TDI', 'methanol', 60, 'http://dummyimage.com/236x100.png/ff4444/ffffff'),
(5, 'Saturn', 'Outlook', '2.5 TDI', 'hydrogen', 85, 'http://dummyimage.com/134x100.png/5fa2dd/ffffff'),
(6, 'Dodge', 'Caliber', '1.8 TSI', 'biodiesel', 99, 'http://dummyimage.com/227x100.png/dddddd/000000'),
(7, 'Nissan', 'Maxima', '1.4 TFSI', 'biofuel', 55, 'http://dummyimage.com/117x100.png/cc0000/ffffff'),
(8, 'Ford', 'Freestyle', '1.8 TSI', 'biofuel', 99, 'http://dummyimage.com/210x100.png/ff4444/ffffff'),
(9, 'BMW', '7 Series', '2.5 TDI', 'diesel', 55, 'http://dummyimage.com/234x100.png/ff4444/ffffff'),
(10, 'Chevrolet', '1500', '2.5 TDI', 'hydrogen', 55, 'http://dummyimage.com/151x100.png/5fa2dd/ffffff'),
(11, 'Mazda', '626', '4.0 V8', 'biodiesel', 63, 'http://dummyimage.com/247x100.png/cc0000/ffffff'),
(12, 'Ford', 'E350', '2.3 Turbo', 'diesel', 78, 'http://dummyimage.com/129x100.png/dddddd/000000'),
(13, 'Acura', 'TL', '1.8 TSI', 'gasoline', 55, 'http://dummyimage.com/119x100.png/cc0000/ffffff'),
(14, 'Ford', 'E150', '1.6 TDI', 'diesel', 65, 'http://dummyimage.com/161x100.png/5fa2dd/ffffff'),
(15, 'BMW', '745', '2.0 TSI', 'ethanol', 93, 'http://dummyimage.com/190x100.png/dddddd/000000'),
(16, 'Chevrolet', '2500', '1.8 TSI', 'natural gas', 60, 'http://dummyimage.com/234x100.png/cc0000/ffffff'),
(17, 'Cadillac', 'CTS', '2.5 TDI', 'electric', 57, 'http://dummyimage.com/106x100.png/ff4444/ffffff'),
(18, 'Lexus', 'LS', '1.6 TDI', 'biodiesel', 81, 'http://dummyimage.com/158x100.png/cc0000/ffffff'),
(19, 'Ford', 'Mustang', '2.3 Turbo', 'hydrogen', 60, 'http://dummyimage.com/217x100.png/5fa2dd/ffffff'),
(20, 'Porsche', 'Boxster', '2.0 TSI', 'propane', 82, 'http://dummyimage.com/136x100.png/5fa2dd/ffffff'),
(21, 'Toyota', 'Sienna', '3.0 V6', 'methanol', 85, 'http://dummyimage.com/152x100.png/5fa2dd/ffffff'),
(22, 'Toyota', 'Land Cruiser', '1.5 EcoBoost', 'propane', 96, 'http://dummyimage.com/108x100.png/cc0000/ffffff'),
(23, 'Mitsubishi', 'Truck', '2.0 TSI', 'gasoline', 65, 'http://dummyimage.com/147x100.png/5fa2dd/ffffff'),
(24, 'Chevrolet', '3500', '1.6 TDI', 'propane', 61, 'http://dummyimage.com/208x100.png/5fa2dd/ffffff'),
(25, 'Volkswagen', 'GTI', '2.2 HDI', 'natural gas', 89, 'http://dummyimage.com/196x100.png/dddddd/000000'),
(26, 'Ferrari', '599 GTB Fiorano', '2.5 TDI', 'biodiesel', 77, 'http://dummyimage.com/146x100.png/5fa2dd/ffffff'),
(27, 'Land Rover', 'Range Rover', '1.8 TSI', 'ethanol', 81, 'http://dummyimage.com/167x100.png/cc0000/ffffff'),
(28, 'Dodge', 'Ram 2500 Club', '2.3 Turbo', 'electric', 81, 'http://dummyimage.com/166x100.png/ff4444/ffffff'),
(29, 'Land Rover', 'Range Rover', '1.5 EcoBoost', 'gasoline', 79, 'http://dummyimage.com/111x100.png/5fa2dd/ffffff'),
(30, 'Dodge', 'Ram 3500', '1.6 TDI', 'propane', 68, 'http://dummyimage.com/226x100.png/dddddd/000000'),
(31, 'Cadillac', 'Escalade ESV', '3.0 V6', 'diesel', 97, 'http://dummyimage.com/247x100.png/dddddd/000000'),
(32, 'Mazda', 'Familia', '1.8 TSI', 'hydrogen', 63, 'http://dummyimage.com/237x100.png/cc0000/ffffff'),
(33, 'Ford', 'F-Series', '3.0 V6', 'hydrogen', 81, 'http://dummyimage.com/113x100.png/5fa2dd/ffffff'),
(34, 'Oldsmobile', 'Bravada', '3.0 V6', 'diesel', 64, 'http://dummyimage.com/199x100.png/cc0000/ffffff'),
(35, 'Mercedes-Benz', '500E', '1.6 TDI', 'biofuel', 56, 'http://dummyimage.com/126x100.png/cc0000/ffffff'),
(36, 'Mercedes-Benz', 'C-Class', '2.5 TDI', 'biodiesel', 94, 'http://dummyimage.com/137x100.png/dddddd/000000'),
(37, 'Dodge', 'Durango', '3.0 V6', 'natural gas', 66, 'http://dummyimage.com/176x100.png/dddddd/000000'),
(38, 'Lincoln', 'Navigator', '2.0 TSI', 'methanol', 74, 'http://dummyimage.com/108x100.png/dddddd/000000'),
(39, 'Toyota', 'Highlander', '2.2 HDI', 'methanol', 58, 'http://dummyimage.com/203x100.png/dddddd/000000'),
(40, 'Jeep', 'Wrangler', '1.8 TSI', 'ethanol', 53, 'http://dummyimage.com/137x100.png/5fa2dd/ffffff'),
(41, 'Subaru', 'Legacy', '1.5 EcoBoost', 'propane', 87, 'http://dummyimage.com/135x100.png/ff4444/ffffff'),
(42, 'Chrysler', 'Concorde', '1.4 TFSI', 'methanol', 98, 'http://dummyimage.com/176x100.png/ff4444/ffffff'),
(43, 'Ford', 'Mustang', '1.4 TFSI', 'ethanol', 75, 'http://dummyimage.com/175x100.png/cc0000/ffffff'),
(44, 'BMW', 'M5', '4.0 V8', 'diesel', 63, 'http://dummyimage.com/236x100.png/dddddd/000000'),
(45, 'Hyundai', 'Tiburon', '1.6 TDI', 'propane', 96, 'http://dummyimage.com/223x100.png/ff4444/ffffff'),
(46, 'Audi', 'A4', '2.5 TDI', 'hydrogen', 87, 'http://dummyimage.com/129x100.png/ff4444/ffffff'),
(47, 'Mitsubishi', 'Outlander', '1.8 TSI', 'natural gas', 60, 'http://dummyimage.com/138x100.png/ff4444/ffffff'),
(48, 'Mitsubishi', 'Lancer', '1.6 TDI', 'methanol', 85, 'http://dummyimage.com/212x100.png/dddddd/000000'),
(49, 'Toyota', 'Celica', '3.0 V6', 'gasoline', 92, 'http://dummyimage.com/232x100.png/dddddd/000000'),
(50, 'Chevrolet', 'Prizm', '1.5 EcoBoost', 'biofuel', 73, 'http://dummyimage.com/160x100.png/5fa2dd/ffffff'),
(51, 'Saab', '9-5', '1.4 TFSI', 'natural gas', 80, 'http://dummyimage.com/237x100.png/5fa2dd/ffffff'),
(52, 'Isuzu', 'Hombre Space', '1.6 TDI', 'biofuel', 70, 'http://dummyimage.com/235x100.png/5fa2dd/ffffff'),
(53, 'Chevrolet', 'SSR', '2.2 HDI', 'natural gas', 63, 'http://dummyimage.com/155x100.png/cc0000/ffffff'),
(54, 'Chevrolet', 'Suburban 2500', '2.0 TSI', 'biofuel', 89, 'http://dummyimage.com/224x100.png/5fa2dd/ffffff'),
(55, 'Audi', '90', '2.5 TDI', 'gasoline', 98, 'http://dummyimage.com/206x100.png/cc0000/ffffff'),
(56, 'Ford', 'Taurus', '1.8 TSI', 'diesel', 61, 'http://dummyimage.com/227x100.png/ff4444/ffffff'),
(57, 'Chevrolet', 'Silverado 3500', '2.5 TDI', 'methanol', 100, 'http://dummyimage.com/227x100.png/ff4444/ffffff'),
(58, 'Toyota', 'Xtra', '2.5 TDI', 'natural gas', 74, 'http://dummyimage.com/222x100.png/ff4444/ffffff'),
(59, 'Mazda', 'RX-7', '1.8 TSI', 'diesel', 73, 'http://dummyimage.com/144x100.png/cc0000/ffffff'),
(60, 'Chrysler', 'LHS', '1.8 TSI', 'diesel', 80, 'http://dummyimage.com/244x100.png/5fa2dd/ffffff'),
(61, 'Nissan', 'Maxima', '4.0 V8', 'biodiesel', 75, 'http://dummyimage.com/141x100.png/ff4444/ffffff'),
(62, 'BMW', '525', '1.5 EcoBoost', 'ethanol', 95, 'http://dummyimage.com/141x100.png/5fa2dd/ffffff'),
(63, 'Volkswagen', 'New Beetle', '2.0 TSI', 'methanol', 91, 'http://dummyimage.com/100x100.png/ff4444/ffffff'),
(64, 'Ford', 'Ranger', '1.5 EcoBoost', 'electric', 59, 'http://dummyimage.com/221x100.png/cc0000/ffffff'),
(65, 'Buick', 'Coachbuilder', '2.0 TSI', 'methanol', 86, 'http://dummyimage.com/188x100.png/cc0000/ffffff'),
(66, 'Ford', 'Econoline E350', '1.8 TSI', 'methanol', 99, 'http://dummyimage.com/249x100.png/ff4444/ffffff'),
(67, 'Kia', 'Sephia', '2.0 TSI', 'hydrogen', 61, 'http://dummyimage.com/205x100.png/ff4444/ffffff'),
(68, 'Mercedes-Benz', 'S-Class', '1.4 TFSI', 'biodiesel', 72, 'http://dummyimage.com/186x100.png/5fa2dd/ffffff'),
(69, 'Audi', 'A6', '4.0 V8', 'propane', 82, 'http://dummyimage.com/144x100.png/5fa2dd/ffffff'),
(70, 'Toyota', 'Land Cruiser', '4.0 V8', 'propane', 75, 'http://dummyimage.com/194x100.png/ff4444/ffffff'),
(71, 'GMC', 'Envoy XUV', '2.3 Turbo', 'natural gas', 71, 'http://dummyimage.com/229x100.png/ff4444/ffffff'),
(72, 'Mercedes-Benz', 'Sprinter', '1.5 EcoBoost', 'diesel', 62, 'http://dummyimage.com/236x100.png/ff4444/ffffff'),
(73, 'Infiniti', 'I', '1.6 TDI', 'hydrogen', 97, 'http://dummyimage.com/146x100.png/ff4444/ffffff'),
(74, 'Chevrolet', 'Cavalier', '2.3 Turbo', 'natural gas', 95, 'http://dummyimage.com/205x100.png/5fa2dd/ffffff'),
(75, 'Oldsmobile', '88', '2.2 HDI', 'diesel', 59, 'http://dummyimage.com/235x100.png/cc0000/ffffff'),
(76, 'Mitsubishi', 'Lancer', '1.8 TSI', 'propane', 60, 'http://dummyimage.com/198x100.png/5fa2dd/ffffff'),
(77, 'GMC', 'Sierra 2500', '1.5 EcoBoost', 'gasoline', 58, 'http://dummyimage.com/174x100.png/ff4444/ffffff'),
(78, 'GMC', 'Sierra 2500', '1.6 TDI', 'biodiesel', 70, 'http://dummyimage.com/132x100.png/dddddd/000000'),
(79, 'Porsche', '911', '4.0 V8', 'hydrogen', 74, 'http://dummyimage.com/127x100.png/dddddd/000000'),
(80, 'Chevrolet', 'G-Series G20', '2.5 TDI', 'methanol', 82, 'http://dummyimage.com/218x100.png/cc0000/ffffff'),
(81, 'Ford', 'Mustang', '1.6 TDI', 'biofuel', 74, 'http://dummyimage.com/183x100.png/ff4444/ffffff'),
(82, 'Hyundai', 'Elantra', '1.5 EcoBoost', 'diesel', 98, 'http://dummyimage.com/219x100.png/5fa2dd/ffffff'),
(83, 'Chevrolet', 'Camaro', '1.6 TDI', 'hydrogen', 57, 'http://dummyimage.com/176x100.png/dddddd/000000'),
(84, 'Cadillac', 'Seville', '3.0 V6', 'diesel', 64, 'http://dummyimage.com/198x100.png/dddddd/000000'),
(85, 'Audi', 'RS4', '1.6 TDI', 'natural gas', 61, 'http://dummyimage.com/148x100.png/cc0000/ffffff'),
(86, 'Maserati', 'Quattroporte', '4.0 V8', 'natural gas', 75, 'http://dummyimage.com/225x100.png/cc0000/ffffff'),
(87, 'Lexus', 'SC', '2.5 TDI', 'diesel', 69, 'http://dummyimage.com/112x100.png/5fa2dd/ffffff'),
(88, 'Pontiac', 'LeMans', '4.0 V8', 'methanol', 89, 'http://dummyimage.com/206x100.png/cc0000/ffffff'),
(89, 'Ford', 'F-Series Super Duty', '1.6 TDI', 'biodiesel', 51, 'http://dummyimage.com/161x100.png/5fa2dd/ffffff'),
(90, 'Lamborghini', 'Gallardo', '4.0 V8', 'natural gas', 76, 'http://dummyimage.com/122x100.png/cc0000/ffffff'),
(91, 'Ford', 'Mustang', '1.4 TFSI', 'methanol', 73, 'http://dummyimage.com/221x100.png/5fa2dd/ffffff'),
(92, 'Ford', 'Flex', '1.5 EcoBoost', 'gasoline', 82, 'http://dummyimage.com/172x100.png/dddddd/000000'),
(93, 'Ford', 'Econoline E150', '4.0 V8', 'natural gas', 67, 'http://dummyimage.com/122x100.png/cc0000/ffffff'),
(94, 'Lexus', 'GX', '2.5 TDI', 'gasoline', 90, 'http://dummyimage.com/148x100.png/5fa2dd/ffffff'),
(95, 'Lexus', 'RX', '1.4 TFSI', 'hydrogen', 64, 'http://dummyimage.com/114x100.png/cc0000/ffffff'),
(96, 'BMW', 'M5', '4.0 V8', 'biodiesel', 79, 'http://dummyimage.com/207x100.png/dddddd/000000'),
(97, 'Chevrolet', 'Silverado', '2.5 TDI', 'diesel', 67, 'http://dummyimage.com/106x100.png/5fa2dd/ffffff'),
(98, 'Audi', 'V8', '2.5 TDI', 'biodiesel', 61, 'http://dummyimage.com/100x100.png/5fa2dd/ffffff'),
(99, 'Chevrolet', 'Express 1500', '4.0 V8', 'ethanol', 55, 'http://dummyimage.com/238x100.png/dddddd/000000'),
(100, 'Chevrolet', 'Avalanche 1500', '2.5 TDI', 'ethanol', 78, 'http://dummyimage.com/129x100.png/cc0000/ffffff'),
(101, 'Pontiac', 'Tempest', '2.5 TDI', 'electric', 71, 'http://dummyimage.com/231x100.png/ff4444/ffffff'),
(102, 'Mitsubishi', 'GTO', '2.2 HDI', 'hydrogen', 60, 'http://dummyimage.com/164x100.png/cc0000/ffffff'),
(103, 'Acura', 'NSX', '2.0 TSI', 'diesel', 76, 'http://dummyimage.com/106x100.png/dddddd/000000'),
(104, 'Porsche', '911', '1.8 TSI', 'natural gas', 65, 'http://dummyimage.com/201x100.png/cc0000/ffffff'),
(105, 'Porsche', 'Panamera', '1.8 TSI', 'biofuel', 67, 'http://dummyimage.com/194x100.png/5fa2dd/ffffff'),
(106, 'Chevrolet', 'Suburban 1500', '2.0 TSI', 'ethanol', 80, 'http://dummyimage.com/218x100.png/dddddd/000000'),
(107, 'Lexus', 'GS', '1.5 EcoBoost', 'propane', 100, 'http://dummyimage.com/158x100.png/dddddd/000000'),
(108, 'Mercury', 'Topaz', '2.2 HDI', 'hydrogen', 90, 'http://dummyimage.com/143x100.png/cc0000/ffffff'),
(109, 'Lincoln', 'Zephyr', '4.0 V8', 'ethanol', 75, 'http://dummyimage.com/204x100.png/ff4444/ffffff'),
(110, 'Mercedes-Benz', 'CL-Class', '2.5 TDI', 'propane', 83, 'http://dummyimage.com/234x100.png/5fa2dd/ffffff'),
(111, 'Mitsubishi', 'Montero', '2.0 TSI', 'electric', 75, 'http://dummyimage.com/123x100.png/dddddd/000000'),
(112, 'Honda', 'Odyssey', '4.0 V8', 'hydrogen', 82, 'http://dummyimage.com/138x100.png/dddddd/000000'),
(113, 'GMC', 'Safari', '1.6 TDI', 'methanol', 76, 'http://dummyimage.com/162x100.png/5fa2dd/ffffff'),
(114, 'Chevrolet', 'Avalanche', '2.0 TSI', 'methanol', 64, 'http://dummyimage.com/131x100.png/ff4444/ffffff'),
(115, 'Plymouth', 'Breeze', '4.0 V8', 'natural gas', 100, 'http://dummyimage.com/232x100.png/5fa2dd/ffffff'),
(116, 'Chevrolet', 'Astro', '2.3 Turbo', 'ethanol', 87, 'http://dummyimage.com/228x100.png/5fa2dd/ffffff'),
(117, 'Mercedes-Benz', 'E-Class', '2.3 Turbo', 'propane', 65, 'http://dummyimage.com/199x100.png/dddddd/000000'),
(118, 'Lotus', 'Esprit', '2.3 Turbo', 'hydrogen', 75, 'http://dummyimage.com/172x100.png/cc0000/ffffff'),
(119, 'Mitsubishi', 'Pajero', '1.4 TFSI', 'ethanol', 68, 'http://dummyimage.com/197x100.png/dddddd/000000'),
(120, 'Mazda', 'Familia', '2.5 TDI', 'natural gas', 85, 'http://dummyimage.com/156x100.png/5fa2dd/ffffff'),
(121, 'Oldsmobile', 'Silhouette', '1.6 TDI', 'biodiesel', 89, 'http://dummyimage.com/195x100.png/ff4444/ffffff'),
(122, 'Toyota', 'Corolla', '2.5 TDI', 'gasoline', 64, 'http://dummyimage.com/104x100.png/cc0000/ffffff'),
(123, 'Infiniti', 'EX', '3.0 V6', 'electric', 73, 'http://dummyimage.com/205x100.png/cc0000/ffffff'),
(124, 'Ford', 'LTD', '1.8 TSI', 'ethanol', 94, 'http://dummyimage.com/233x100.png/5fa2dd/ffffff'),
(125, 'Ford', 'F-Series', '2.2 HDI', 'diesel', 99, 'http://dummyimage.com/141x100.png/dddddd/000000'),
(126, 'Pontiac', 'Sunbird', '2.5 TDI', 'electric', 81, 'http://dummyimage.com/221x100.png/5fa2dd/ffffff'),
(127, 'Nissan', '300ZX', '4.0 V8', 'ethanol', 96, 'http://dummyimage.com/170x100.png/dddddd/000000'),
(128, 'Ford', 'Freestyle', '2.5 TDI', 'hydrogen', 93, 'http://dummyimage.com/112x100.png/cc0000/ffffff'),
(129, 'BMW', '6 Series', '4.0 V8', 'natural gas', 70, 'http://dummyimage.com/222x100.png/5fa2dd/ffffff'),
(130, 'Hyundai', 'Sonata', '2.5 TDI', 'biodiesel', 59, 'http://dummyimage.com/205x100.png/cc0000/ffffff'),
(131, 'Bentley', 'Continental GTC', '1.6 TDI', 'ethanol', 74, 'http://dummyimage.com/245x100.png/5fa2dd/ffffff'),
(132, 'Honda', 'Pilot', '4.0 V8', 'propane', 92, 'http://dummyimage.com/185x100.png/dddddd/000000'),
(133, 'Suzuki', 'Forenza', '2.3 Turbo', 'ethanol', 65, 'http://dummyimage.com/196x100.png/dddddd/000000'),
(134, 'Oldsmobile', 'Silhouette', '1.5 EcoBoost', 'electric', 63, 'http://dummyimage.com/195x100.png/cc0000/ffffff'),
(135, 'Chevrolet', 'Tracker', '2.5 TDI', 'gasoline', 95, 'http://dummyimage.com/127x100.png/dddddd/000000'),
(136, 'Toyota', '4Runner', '1.8 TSI', 'hydrogen', 97, 'http://dummyimage.com/119x100.png/5fa2dd/ffffff'),
(137, 'Mercedes-Benz', 'W201', '1.6 TDI', 'biodiesel', 58, 'http://dummyimage.com/125x100.png/dddddd/000000'),
(138, 'Toyota', 'Tercel', '1.6 TDI', 'methanol', 69, 'http://dummyimage.com/195x100.png/5fa2dd/ffffff'),
(139, 'Chrysler', '300M', '2.2 HDI', 'electric', 82, 'http://dummyimage.com/225x100.png/cc0000/ffffff'),
(140, 'Honda', 'Civic', '3.0 V6', 'natural gas', 57, 'http://dummyimage.com/166x100.png/5fa2dd/ffffff'),
(141, 'Mercury', 'Sable', '2.3 Turbo', 'methanol', 75, 'http://dummyimage.com/108x100.png/ff4444/ffffff'),
(142, 'Isuzu', 'Oasis', '2.5 TDI', 'biofuel', 81, 'http://dummyimage.com/168x100.png/ff4444/ffffff'),
(143, 'Chevrolet', 'Astro', '4.0 V8', 'propane', 89, 'http://dummyimage.com/203x100.png/5fa2dd/ffffff'),
(144, 'Volvo', 'XC60', '1.6 TDI', 'methanol', 95, 'http://dummyimage.com/220x100.png/5fa2dd/ffffff'),
(145, 'Ford', 'F450', '2.5 TDI', 'biofuel', 82, 'http://dummyimage.com/175x100.png/cc0000/ffffff'),
(146, 'Nissan', 'GT-R', '3.0 V6', 'propane', 55, 'http://dummyimage.com/146x100.png/5fa2dd/ffffff'),
(147, 'Chevrolet', 'Corvette', '2.0 TSI', 'biofuel', 59, 'http://dummyimage.com/236x100.png/dddddd/000000'),
(148, 'Ford', 'Aerostar', '1.8 TSI', 'ethanol', 80, 'http://dummyimage.com/249x100.png/dddddd/000000'),
(149, 'Mercedes-Benz', 'SL-Class', '2.5 TDI', 'diesel', 98, 'http://dummyimage.com/120x100.png/dddddd/000000'),
(150, 'Chevrolet', 'APV', '1.8 TSI', 'biodiesel', 51, 'http://dummyimage.com/216x100.png/dddddd/000000'),
(151, 'Mazda', 'Familia', '1.6 TDI', 'gasoline', 56, 'http://dummyimage.com/220x100.png/ff4444/ffffff'),
(152, 'Saturn', 'Aura', '1.8 TSI', 'biofuel', 98, 'http://dummyimage.com/164x100.png/dddddd/000000'),
(153, 'Ford', 'Focus', '1.4 TFSI', 'natural gas', 94, 'http://dummyimage.com/110x100.png/dddddd/000000'),
(154, 'Austin', 'Mini', '2.0 TSI', 'electric', 98, 'http://dummyimage.com/172x100.png/dddddd/000000'),
(155, 'Plymouth', 'Colt Vista', '3.0 V6', 'diesel', 55, 'http://dummyimage.com/236x100.png/cc0000/ffffff'),
(156, 'Infiniti', 'IPL G', '3.0 V6', 'gasoline', 65, 'http://dummyimage.com/164x100.png/dddddd/000000'),
(157, 'Chevrolet', 'Cavalier', '1.5 EcoBoost', 'ethanol', 85, 'http://dummyimage.com/166x100.png/5fa2dd/ffffff'),
(158, 'Infiniti', 'I', '1.4 TFSI', 'hydrogen', 93, 'http://dummyimage.com/201x100.png/dddddd/000000'),
(159, 'Dodge', 'Ram Van 2500', '1.6 TDI', 'diesel', 85, 'http://dummyimage.com/144x100.png/dddddd/000000'),
(160, 'Mercedes-Benz', 'S-Class', '2.3 Turbo', 'gasoline', 76, 'http://dummyimage.com/113x100.png/5fa2dd/ffffff'),
(161, 'Acura', 'RL', '1.6 TDI', 'diesel', 56, 'http://dummyimage.com/187x100.png/cc0000/ffffff'),
(162, 'Ferrari', '599 GTB Fiorano', '2.3 Turbo', 'biofuel', 60, 'http://dummyimage.com/158x100.png/ff4444/ffffff'),
(163, 'Dodge', 'Ram Wagon B250', '1.6 TDI', 'hydrogen', 100, 'http://dummyimage.com/186x100.png/5fa2dd/ffffff'),
(164, 'Mazda', '323', '1.4 TFSI', 'hydrogen', 52, 'http://dummyimage.com/190x100.png/dddddd/000000'),
(165, 'Nissan', 'NV3500', '1.4 TFSI', 'propane', 76, 'http://dummyimage.com/215x100.png/cc0000/ffffff'),
(166, 'Volvo', 'S60', '1.4 TFSI', 'ethanol', 78, 'http://dummyimage.com/194x100.png/ff4444/ffffff'),
(167, 'Ford', 'Taurus', '2.0 TSI', 'propane', 84, 'http://dummyimage.com/188x100.png/dddddd/000000'),
(168, 'Lincoln', 'Town Car', '2.0 TSI', 'ethanol', 97, 'http://dummyimage.com/221x100.png/5fa2dd/ffffff'),
(169, 'Suzuki', 'Vitara', '3.0 V6', 'biodiesel', 53, 'http://dummyimage.com/228x100.png/ff4444/ffffff'),
(170, 'Porsche', '928', '2.0 TSI', 'methanol', 58, 'http://dummyimage.com/209x100.png/cc0000/ffffff'),
(171, 'Lincoln', 'Continental', '1.6 TDI', 'biodiesel', 91, 'http://dummyimage.com/198x100.png/cc0000/ffffff'),
(172, 'Nissan', 'Quest', '2.0 TSI', 'diesel', 91, 'http://dummyimage.com/191x100.png/5fa2dd/ffffff'),
(173, 'Oldsmobile', 'Alero', '3.0 V6', 'hydrogen', 98, 'http://dummyimage.com/235x100.png/cc0000/ffffff'),
(174, 'BMW', '525', '4.0 V8', 'diesel', 66, 'http://dummyimage.com/107x100.png/5fa2dd/ffffff'),
(175, 'Oldsmobile', 'Cutlass', '1.8 TSI', 'biodiesel', 98, 'http://dummyimage.com/107x100.png/ff4444/ffffff'),
(176, 'Pontiac', 'Vibe', '1.6 TDI', 'biofuel', 63, 'http://dummyimage.com/169x100.png/5fa2dd/ffffff'),
(177, 'Honda', 'Accord', '1.4 TFSI', 'electric', 82, 'http://dummyimage.com/100x100.png/dddddd/000000'),
(178, 'Ford', 'E150', '2.3 Turbo', 'natural gas', 54, 'http://dummyimage.com/188x100.png/ff4444/ffffff'),
(179, 'Volkswagen', 'Golf', '2.5 TDI', 'methanol', 80, 'http://dummyimage.com/102x100.png/cc0000/ffffff'),
(180, 'Porsche', '911', '2.3 Turbo', 'diesel', 99, 'http://dummyimage.com/192x100.png/cc0000/ffffff'),
(181, 'Ford', 'Econoline E350', '4.0 V8', 'biofuel', 72, 'http://dummyimage.com/126x100.png/5fa2dd/ffffff'),
(182, 'Land Rover', 'Range Rover Sport', '1.8 TSI', 'natural gas', 60, 'http://dummyimage.com/138x100.png/dddddd/000000'),
(183, 'Porsche', 'Cayman', '1.8 TSI', 'electric', 80, 'http://dummyimage.com/107x100.png/5fa2dd/ffffff'),
(184, 'Mercedes-Benz', 'GL-Class', '2.0 TSI', 'electric', 88, 'http://dummyimage.com/148x100.png/5fa2dd/ffffff'),
(185, 'Saab', '9000', '2.0 TSI', 'biofuel', 57, 'http://dummyimage.com/218x100.png/cc0000/ffffff'),
(186, 'Dodge', 'Ram Van B350', '2.3 Turbo', 'electric', 78, 'http://dummyimage.com/167x100.png/5fa2dd/ffffff'),
(187, 'Land Rover', 'Range Rover', '1.6 TDI', 'methanol', 86, 'http://dummyimage.com/142x100.png/5fa2dd/ffffff'),
(188, 'Toyota', 'MR2', '1.6 TDI', 'propane', 83, 'http://dummyimage.com/213x100.png/cc0000/ffffff'),
(189, 'Jeep', 'Wrangler', '4.0 V8', 'electric', 75, 'http://dummyimage.com/211x100.png/cc0000/ffffff'),
(190, 'Cadillac', 'XLR-V', '2.0 TSI', 'methanol', 53, 'http://dummyimage.com/150x100.png/dddddd/000000'),
(191, 'Mazda', 'B-Series', '2.3 Turbo', 'methanol', 64, 'http://dummyimage.com/161x100.png/ff4444/ffffff'),
(192, 'Ford', 'Ranger', '3.0 V6', 'propane', 60, 'http://dummyimage.com/202x100.png/ff4444/ffffff'),
(193, 'Honda', 'Pilot', '1.6 TDI', 'ethanol', 53, 'http://dummyimage.com/177x100.png/ff4444/ffffff'),
(194, 'Honda', 'Ridgeline', '1.6 TDI', 'gasoline', 83, 'http://dummyimage.com/177x100.png/cc0000/ffffff'),
(195, 'Pontiac', 'Trans Sport', '1.6 TDI', 'diesel', 63, 'http://dummyimage.com/150x100.png/5fa2dd/ffffff'),
(196, 'Volvo', 'S40', '2.0 TSI', 'ethanol', 84, 'http://dummyimage.com/189x100.png/ff4444/ffffff'),
(197, 'Kia', 'Sedona', '2.3 Turbo', 'propane', 53, 'http://dummyimage.com/214x100.png/5fa2dd/ffffff'),
(198, 'Ford', 'Club Wagon', '1.4 TFSI', 'methanol', 74, 'http://dummyimage.com/102x100.png/ff4444/ffffff'),
(199, 'Mitsubishi', '3000GT', '2.0 TSI', 'hydrogen', 79, 'http://dummyimage.com/140x100.png/ff4444/ffffff'),
(200, 'Lotus', 'Exige', '2.0 TSI', 'ethanol', 98, 'http://dummyimage.com/155x100.png/ff4444/ffffff'),
(201, 'Nissan', 'GT-R', '2.5 TDI', 'biofuel', 58, 'http://dummyimage.com/230x100.png/dddddd/000000'),
(202, 'Dodge', 'Nitro', '1.5 EcoBoost', 'gasoline', 100, 'http://dummyimage.com/223x100.png/5fa2dd/ffffff'),
(203, 'Subaru', 'Brat', '2.0 TSI', 'biofuel', 78, 'http://dummyimage.com/245x100.png/cc0000/ffffff'),
(204, 'Ford', 'Taurus', '1.5 EcoBoost', 'natural gas', 72, 'http://dummyimage.com/133x100.png/dddddd/000000'),
(205, 'Eagle', 'Summit', '1.5 EcoBoost', 'gasoline', 67, 'http://dummyimage.com/147x100.png/ff4444/ffffff'),
(206, 'Buick', 'LeSabre', '4.0 V8', 'electric', 97, 'http://dummyimage.com/239x100.png/dddddd/000000'),
(207, 'Mitsubishi', 'Mirage', '1.5 EcoBoost', 'methanol', 78, 'http://dummyimage.com/102x100.png/cc0000/ffffff'),
(208, 'Jeep', 'Grand Cherokee', '1.4 TFSI', 'ethanol', 73, 'http://dummyimage.com/219x100.png/5fa2dd/ffffff'),
(209, 'Suzuki', 'SX4', '2.3 Turbo', 'electric', 74, 'http://dummyimage.com/152x100.png/ff4444/ffffff'),
(210, 'GMC', 'Safari', '1.6 TDI', 'natural gas', 51, 'http://dummyimage.com/226x100.png/ff4444/ffffff'),
(211, 'Maybach', '62', '2.5 TDI', 'hydrogen', 55, 'http://dummyimage.com/170x100.png/dddddd/000000'),
(212, 'Mercedes-Benz', 'SLK-Class', '1.6 TDI', 'ethanol', 86, 'http://dummyimage.com/103x100.png/dddddd/000000'),
(213, 'Lincoln', 'LS', '2.5 TDI', 'diesel', 99, 'http://dummyimage.com/124x100.png/5fa2dd/ffffff'),
(214, 'Ford', 'Tempo', '3.0 V6', 'gasoline', 82, 'http://dummyimage.com/172x100.png/dddddd/000000'),
(215, 'Buick', 'Estate', '2.5 TDI', 'methanol', 73, 'http://dummyimage.com/115x100.png/5fa2dd/ffffff'),
(216, 'BMW', 'Z3', '1.4 TFSI', 'ethanol', 63, 'http://dummyimage.com/214x100.png/dddddd/000000'),
(217, 'Cadillac', 'CTS-V', '2.3 Turbo', 'biodiesel', 71, 'http://dummyimage.com/151x100.png/cc0000/ffffff'),
(218, 'Mercury', 'Marauder', '3.0 V6', 'gasoline', 85, 'http://dummyimage.com/191x100.png/ff4444/ffffff'),
(219, 'Mercury', 'Tracer', '1.4 TFSI', 'propane', 77, 'http://dummyimage.com/237x100.png/dddddd/000000'),
(220, 'Chevrolet', 'HHR', '2.2 HDI', 'ethanol', 95, 'http://dummyimage.com/154x100.png/cc0000/ffffff'),
(221, 'BMW', 'X5', '2.3 Turbo', 'natural gas', 85, 'http://dummyimage.com/189x100.png/cc0000/ffffff'),
(222, 'Porsche', '911', '1.6 TDI', 'natural gas', 84, 'http://dummyimage.com/102x100.png/ff4444/ffffff'),
(223, 'BMW', '6 Series', '1.4 TFSI', 'propane', 76, 'http://dummyimage.com/144x100.png/cc0000/ffffff'),
(224, 'GMC', 'Sonoma', '1.4 TFSI', 'gasoline', 61, 'http://dummyimage.com/148x100.png/cc0000/ffffff'),
(225, 'Saturn', 'S-Series', '2.3 Turbo', 'hydrogen', 94, 'http://dummyimage.com/212x100.png/ff4444/ffffff'),
(226, 'Bentley', 'Azure', '2.0 TSI', 'hydrogen', 74, 'http://dummyimage.com/116x100.png/ff4444/ffffff'),
(227, 'Dodge', 'Ram 3500', '2.0 TSI', 'gasoline', 83, 'http://dummyimage.com/200x100.png/5fa2dd/ffffff'),
(228, 'Subaru', 'Legacy', '2.3 Turbo', 'gasoline', 62, 'http://dummyimage.com/107x100.png/ff4444/ffffff'),
(229, 'Lamborghini', 'Gallardo', '2.3 Turbo', 'hydrogen', 55, 'http://dummyimage.com/219x100.png/5fa2dd/ffffff'),
(230, 'Nissan', 'Xterra', '1.6 TDI', 'propane', 67, 'http://dummyimage.com/234x100.png/5fa2dd/ffffff'),
(231, 'Buick', 'Park Avenue', '1.6 TDI', 'ethanol', 66, 'http://dummyimage.com/151x100.png/cc0000/ffffff'),
(232, 'Pontiac', 'Parisienne', '2.0 TSI', 'methanol', 90, 'http://dummyimage.com/192x100.png/cc0000/ffffff'),
(233, 'Buick', 'LaCrosse', '2.0 TSI', 'diesel', 67, 'http://dummyimage.com/107x100.png/dddddd/000000'),
(234, 'Mercedes-Benz', 'R-Class', '3.0 V6', 'electric', 75, 'http://dummyimage.com/193x100.png/dddddd/000000'),
(235, 'Mercedes-Benz', '300SE', '1.5 EcoBoost', 'electric', 60, 'http://dummyimage.com/149x100.png/ff4444/ffffff'),
(236, 'Hummer', 'H2 SUT', '2.2 HDI', 'diesel', 92, 'http://dummyimage.com/190x100.png/cc0000/ffffff'),
(237, 'Isuzu', 'Trooper', '2.5 TDI', 'electric', 93, 'http://dummyimage.com/142x100.png/cc0000/ffffff'),
(238, 'Volkswagen', 'Jetta', '3.0 V6', 'methanol', 54, 'http://dummyimage.com/162x100.png/ff4444/ffffff'),
(239, 'Citroën', 'CX', '2.5 TDI', 'biodiesel', 62, 'http://dummyimage.com/217x100.png/dddddd/000000'),
(240, 'Ford', 'F150', '2.5 TDI', 'gasoline', 72, 'http://dummyimage.com/189x100.png/ff4444/ffffff'),
(241, 'Mitsubishi', 'Galant', '1.6 TDI', 'gasoline', 66, 'http://dummyimage.com/171x100.png/cc0000/ffffff'),
(242, 'MINI', 'Cooper', '1.5 EcoBoost', 'propane', 50, 'http://dummyimage.com/172x100.png/dddddd/000000'),
(243, 'Acura', 'TSX', '2.5 TDI', 'gasoline', 65, 'http://dummyimage.com/214x100.png/dddddd/000000'),
(244, 'Honda', 'Pilot', '4.0 V8', 'hydrogen', 95, 'http://dummyimage.com/113x100.png/dddddd/000000'),
(245, 'Toyota', 'Camry', '1.4 TFSI', 'methanol', 79, 'http://dummyimage.com/160x100.png/cc0000/ffffff'),
(246, 'Scion', 'xB', '1.4 TFSI', 'biofuel', 52, 'http://dummyimage.com/177x100.png/dddddd/000000'),
(247, 'Jeep', 'Compass', '2.3 Turbo', 'methanol', 51, 'http://dummyimage.com/207x100.png/dddddd/000000'),
(248, 'Honda', 'Civic', '3.0 V6', 'ethanol', 52, 'http://dummyimage.com/134x100.png/dddddd/000000'),
(249, 'Ford', 'Bronco', '1.4 TFSI', 'biodiesel', 57, 'http://dummyimage.com/192x100.png/ff4444/ffffff'),
(250, 'Mazda', 'MPV', '2.3 Turbo', 'ethanol', 92, 'http://dummyimage.com/168x100.png/ff4444/ffffff'),
(251, 'Porsche', 'Boxster', '1.6 TDI', 'diesel', 100, 'http://dummyimage.com/170x100.png/dddddd/000000'),
(252, 'Chevrolet', 'Blazer', '1.8 TSI', 'electric', 54, 'http://dummyimage.com/171x100.png/5fa2dd/ffffff'),
(253, 'Honda', 'Fit', '2.5 TDI', 'biofuel', 64, 'http://dummyimage.com/134x100.png/5fa2dd/ffffff'),
(254, 'Ford', 'F150', '2.2 HDI', 'electric', 63, 'http://dummyimage.com/224x100.png/5fa2dd/ffffff'),
(255, 'Mercedes-Benz', 'S-Class', '1.4 TFSI', 'methanol', 60, 'http://dummyimage.com/229x100.png/ff4444/ffffff'),
(256, 'Volkswagen', 'CC', '2.5 TDI', 'hydrogen', 76, 'http://dummyimage.com/113x100.png/5fa2dd/ffffff'),
(257, 'Buick', 'Regal', '1.6 TDI', 'hydrogen', 59, 'http://dummyimage.com/143x100.png/dddddd/000000'),
(258, 'Chevrolet', 'Corvette', '2.2 HDI', 'methanol', 88, 'http://dummyimage.com/116x100.png/cc0000/ffffff'),
(259, 'Toyota', 'RAV4', '1.8 TSI', 'methanol', 87, 'http://dummyimage.com/221x100.png/dddddd/000000'),
(260, 'Ford', 'Tempo', '2.2 HDI', 'hydrogen', 86, 'http://dummyimage.com/198x100.png/ff4444/ffffff'),
(261, 'Isuzu', 'Space', '3.0 V6', 'hydrogen', 73, 'http://dummyimage.com/250x100.png/ff4444/ffffff'),
(262, 'Mercury', 'Marquis', '1.8 TSI', 'natural gas', 55, 'http://dummyimage.com/241x100.png/ff4444/ffffff'),
(263, 'Pontiac', 'Bonneville', '1.8 TSI', 'ethanol', 95, 'http://dummyimage.com/213x100.png/dddddd/000000'),
(264, 'Ford', 'Aerostar', '1.6 TDI', 'gasoline', 61, 'http://dummyimage.com/229x100.png/dddddd/000000'),
(265, 'Toyota', 'Prius v', '1.8 TSI', 'hydrogen', 82, 'http://dummyimage.com/180x100.png/ff4444/ffffff'),
(266, 'Land Rover', 'Range Rover', '1.6 TDI', 'electric', 67, 'http://dummyimage.com/121x100.png/dddddd/000000'),
(267, 'Chevrolet', 'Suburban 2500', '1.4 TFSI', 'natural gas', 78, 'http://dummyimage.com/207x100.png/cc0000/ffffff'),
(268, 'Lincoln', 'Mark VIII', '3.0 V6', 'electric', 83, 'http://dummyimage.com/237x100.png/ff4444/ffffff'),
(269, 'Kia', 'Optima', '1.5 EcoBoost', 'gasoline', 58, 'http://dummyimage.com/102x100.png/dddddd/000000'),
(270, 'Lexus', 'LX', '2.0 TSI', 'electric', 91, 'http://dummyimage.com/133x100.png/5fa2dd/ffffff'),
(271, 'Buick', 'Lucerne', '2.5 TDI', 'propane', 52, 'http://dummyimage.com/101x100.png/5fa2dd/ffffff'),
(272, 'Saturn', 'VUE', '2.3 Turbo', 'gasoline', 63, 'http://dummyimage.com/130x100.png/ff4444/ffffff'),
(273, 'Audi', '90', '2.3 Turbo', 'gasoline', 68, 'http://dummyimage.com/123x100.png/ff4444/ffffff'),
(274, 'Jeep', 'Compass', '1.4 TFSI', 'electric', 52, 'http://dummyimage.com/148x100.png/ff4444/ffffff'),
(275, 'Mitsubishi', 'Galant', '1.5 EcoBoost', 'propane', 84, 'http://dummyimage.com/113x100.png/5fa2dd/ffffff'),
(276, 'Volkswagen', 'GTI', '1.4 TFSI', 'biodiesel', 97, 'http://dummyimage.com/140x100.png/ff4444/ffffff'),
(277, 'Chrysler', 'LHS', '1.8 TSI', 'electric', 82, 'http://dummyimage.com/246x100.png/5fa2dd/ffffff'),
(278, 'Audi', 'Cabriolet', '1.4 TFSI', 'natural gas', 66, 'http://dummyimage.com/228x100.png/cc0000/ffffff'),
(279, 'Chevrolet', 'Avalanche', '1.4 TFSI', 'hydrogen', 82, 'http://dummyimage.com/212x100.png/dddddd/000000'),
(280, 'Isuzu', 'Trooper', '1.5 EcoBoost', 'hydrogen', 66, 'http://dummyimage.com/106x100.png/ff4444/ffffff'),
(281, 'Audi', 'Q5', '1.8 TSI', 'electric', 61, 'http://dummyimage.com/201x100.png/ff4444/ffffff'),
(282, 'Chevrolet', 'Silverado 2500', '2.0 TSI', 'natural gas', 62, 'http://dummyimage.com/202x100.png/5fa2dd/ffffff'),
(283, 'Chevrolet', 'S10', '2.2 HDI', 'propane', 97, 'http://dummyimage.com/234x100.png/5fa2dd/ffffff'),
(284, 'Toyota', 'Camry', '3.0 V6', 'biofuel', 86, 'http://dummyimage.com/203x100.png/dddddd/000000'),
(285, 'Chrysler', 'Town & Country', '1.5 EcoBoost', 'hydrogen', 88, 'http://dummyimage.com/248x100.png/ff4444/ffffff'),
(286, 'Volkswagen', 'Cabriolet', '3.0 V6', 'electric', 78, 'http://dummyimage.com/248x100.png/dddddd/000000'),
(287, 'Saab', '9000', '2.5 TDI', 'ethanol', 64, 'http://dummyimage.com/221x100.png/cc0000/ffffff'),
(288, 'Audi', 'A5', '2.2 HDI', 'methanol', 68, 'http://dummyimage.com/106x100.png/5fa2dd/ffffff'),
(289, 'Toyota', 'Previa', '2.3 Turbo', 'diesel', 50, 'http://dummyimage.com/123x100.png/dddddd/000000'),
(290, 'Chevrolet', 'Monte Carlo', '3.0 V6', 'biodiesel', 66, 'http://dummyimage.com/246x100.png/dddddd/000000'),
(291, 'BMW', '5 Series', '1.5 EcoBoost', 'electric', 99, 'http://dummyimage.com/193x100.png/5fa2dd/ffffff'),
(292, 'Lincoln', 'Town Car', '3.0 V6', 'gasoline', 56, 'http://dummyimage.com/223x100.png/5fa2dd/ffffff'),
(293, 'Mazda', 'Familia', '3.0 V6', 'electric', 51, 'http://dummyimage.com/110x100.png/dddddd/000000'),
(294, 'Lexus', 'RX Hybrid', '2.2 HDI', 'biofuel', 58, 'http://dummyimage.com/143x100.png/ff4444/ffffff'),
(295, 'Honda', 'CR-V', '1.8 TSI', 'diesel', 85, 'http://dummyimage.com/234x100.png/5fa2dd/ffffff'),
(296, 'Acura', 'Integra', '2.2 HDI', 'methanol', 97, 'http://dummyimage.com/232x100.png/ff4444/ffffff'),
(297, 'Mercedes-Benz', 'W201', '3.0 V6', 'diesel', 74, 'http://dummyimage.com/202x100.png/ff4444/ffffff'),
(298, 'Subaru', 'Baja', '1.5 EcoBoost', 'biodiesel', 50, 'http://dummyimage.com/160x100.png/ff4444/ffffff'),
(299, 'Volkswagen', 'Golf', '2.3 Turbo', 'gasoline', 66, 'http://dummyimage.com/217x100.png/cc0000/ffffff'),
(300, 'Dodge', 'Ram 2500 Club', '1.6 TDI', 'methanol', 58, 'http://dummyimage.com/212x100.png/cc0000/ffffff'),
(301, 'Mercedes-Benz', 'M-Class', '1.5 EcoBoost', 'biodiesel', 89, 'http://dummyimage.com/151x100.png/dddddd/000000'),
(302, 'Chevrolet', 'Astro', '1.6 TDI', 'hydrogen', 64, 'http://dummyimage.com/204x100.png/cc0000/ffffff'),
(303, 'Lexus', 'IS-F', '1.8 TSI', 'natural gas', 75, 'http://dummyimage.com/219x100.png/ff4444/ffffff'),
(304, 'Ford', 'Ranger', '4.0 V8', 'electric', 61, 'http://dummyimage.com/189x100.png/5fa2dd/ffffff'),
(305, 'Hyundai', 'Santa Fe', '1.4 TFSI', 'ethanol', 77, 'http://dummyimage.com/218x100.png/cc0000/ffffff'),
(306, 'Mercury', 'Cougar', '1.6 TDI', 'biodiesel', 65, 'http://dummyimage.com/187x100.png/ff4444/ffffff'),
(307, 'Dodge', 'Nitro', '1.6 TDI', 'ethanol', 53, 'http://dummyimage.com/144x100.png/cc0000/ffffff'),
(308, 'Ford', 'Mustang', '2.0 TSI', 'ethanol', 60, 'http://dummyimage.com/159x100.png/ff4444/ffffff'),
(309, 'Nissan', 'Altima', '2.0 TSI', 'biodiesel', 55, 'http://dummyimage.com/235x100.png/5fa2dd/ffffff'),
(310, 'Kia', 'Sportage', '1.6 TDI', 'ethanol', 66, 'http://dummyimage.com/191x100.png/dddddd/000000'),
(311, 'Subaru', 'Legacy', '1.8 TSI', 'natural gas', 64, 'http://dummyimage.com/188x100.png/cc0000/ffffff'),
(312, 'Bentley', 'Continental', '1.5 EcoBoost', 'hydrogen', 74, 'http://dummyimage.com/154x100.png/ff4444/ffffff'),
(313, 'GMC', 'Savana 3500', '2.2 HDI', 'natural gas', 62, 'http://dummyimage.com/136x100.png/5fa2dd/ffffff'),
(314, 'Ford', 'Freestar', '2.2 HDI', 'diesel', 78, 'http://dummyimage.com/153x100.png/dddddd/000000'),
(315, 'Saturn', 'Astra', '2.0 TSI', 'ethanol', 92, 'http://dummyimage.com/235x100.png/cc0000/ffffff'),
(316, 'Ford', 'GT', '1.8 TSI', 'methanol', 72, 'http://dummyimage.com/243x100.png/cc0000/ffffff'),
(317, 'Mitsubishi', 'Mirage', '1.6 TDI', 'hydrogen', 73, 'http://dummyimage.com/109x100.png/dddddd/000000'),
(318, 'Ford', 'Taurus', '4.0 V8', 'hydrogen', 58, 'http://dummyimage.com/223x100.png/dddddd/000000'),
(319, 'Pontiac', 'G8', '3.0 V6', 'ethanol', 60, 'http://dummyimage.com/178x100.png/cc0000/ffffff'),
(320, 'Hyundai', 'Santa Fe', '2.3 Turbo', 'ethanol', 60, 'http://dummyimage.com/144x100.png/ff4444/ffffff'),
(321, 'Volkswagen', 'Eos', '2.5 TDI', 'biodiesel', 66, 'http://dummyimage.com/215x100.png/dddddd/000000'),
(322, 'Pontiac', 'Firebird', '4.0 V8', 'electric', 58, 'http://dummyimage.com/123x100.png/ff4444/ffffff'),
(323, 'Toyota', 'Tundra', '2.0 TSI', 'electric', 52, 'http://dummyimage.com/227x100.png/dddddd/000000'),
(324, 'Acura', 'MDX', '2.2 HDI', 'gasoline', 57, 'http://dummyimage.com/157x100.png/dddddd/000000'),
(325, 'MINI', 'Cooper', '2.3 Turbo', 'electric', 74, 'http://dummyimage.com/127x100.png/5fa2dd/ffffff'),
(326, 'Subaru', 'Legacy', '2.5 TDI', 'biodiesel', 71, 'http://dummyimage.com/249x100.png/dddddd/000000'),
(327, 'Pontiac', 'G6', '1.4 TFSI', 'electric', 91, 'http://dummyimage.com/105x100.png/cc0000/ffffff'),
(328, 'Isuzu', 'Space', '2.3 Turbo', 'gasoline', 55, 'http://dummyimage.com/160x100.png/cc0000/ffffff'),
(329, 'Hummer', 'H1', '2.5 TDI', 'natural gas', 61, 'http://dummyimage.com/227x100.png/dddddd/000000'),
(330, 'Bentley', 'Continental GT', '1.4 TFSI', 'methanol', 51, 'http://dummyimage.com/243x100.png/5fa2dd/ffffff'),
(331, 'Hyundai', 'Elantra', '2.5 TDI', 'natural gas', 94, 'http://dummyimage.com/127x100.png/5fa2dd/ffffff'),
(332, 'GMC', 'Yukon XL 1500', '2.5 TDI', 'hydrogen', 87, 'http://dummyimage.com/249x100.png/cc0000/ffffff'),
(333, 'Mazda', '929', '3.0 V6', 'biofuel', 74, 'http://dummyimage.com/249x100.png/cc0000/ffffff'),
(334, 'Buick', 'Century', '3.0 V6', 'propane', 71, 'http://dummyimage.com/112x100.png/dddddd/000000'),
(335, 'BMW', 'Z4', '2.2 HDI', 'biodiesel', 99, 'http://dummyimage.com/179x100.png/ff4444/ffffff'),
(336, 'Chevrolet', 'Suburban 1500', '1.5 EcoBoost', 'biofuel', 63, 'http://dummyimage.com/196x100.png/5fa2dd/ffffff'),
(337, 'Volkswagen', 'GTI', '3.0 V6', 'hydrogen', 89, 'http://dummyimage.com/236x100.png/dddddd/000000'),
(338, 'Maybach', '57', '2.0 TSI', 'diesel', 78, 'http://dummyimage.com/193x100.png/dddddd/000000'),
(339, 'Ford', 'Courier', '1.4 TFSI', 'natural gas', 74, 'http://dummyimage.com/245x100.png/ff4444/ffffff'),
(340, 'Ford', 'Ranger', '3.0 V6', 'hydrogen', 65, 'http://dummyimage.com/161x100.png/5fa2dd/ffffff'),
(341, 'Ford', 'Ranger', '1.4 TFSI', 'hydrogen', 98, 'http://dummyimage.com/232x100.png/5fa2dd/ffffff'),
(342, 'Subaru', 'Legacy', '2.2 HDI', 'methanol', 66, 'http://dummyimage.com/239x100.png/dddddd/000000'),
(343, 'Audi', 'Q5', '1.6 TDI', 'diesel', 73, 'http://dummyimage.com/149x100.png/cc0000/ffffff'),
(344, 'Porsche', '911', '1.6 TDI', 'hydrogen', 91, 'http://dummyimage.com/194x100.png/ff4444/ffffff'),
(345, 'Maybach', 'Landaulet', '1.5 EcoBoost', 'biodiesel', 77, 'http://dummyimage.com/141x100.png/ff4444/ffffff'),
(346, 'BMW', 'X5', '4.0 V8', 'methanol', 52, 'http://dummyimage.com/102x100.png/dddddd/000000'),
(347, 'Mitsubishi', 'Diamante', '2.5 TDI', 'methanol', 87, 'http://dummyimage.com/103x100.png/5fa2dd/ffffff'),
(348, 'Saturn', 'Aura', '2.2 HDI', 'electric', 72, 'http://dummyimage.com/202x100.png/5fa2dd/ffffff'),
(349, 'Audi', '80/90', '2.3 Turbo', 'propane', 100, 'http://dummyimage.com/111x100.png/dddddd/000000'),
(350, 'Lexus', 'ES', '3.0 V6', 'electric', 83, 'http://dummyimage.com/237x100.png/5fa2dd/ffffff'),
(351, 'Porsche', 'Boxster', '1.6 TDI', 'natural gas', 81, 'http://dummyimage.com/163x100.png/dddddd/000000'),
(352, 'Hyundai', 'Accent', '1.8 TSI', 'methanol', 92, 'http://dummyimage.com/209x100.png/ff4444/ffffff'),
(353, 'GMC', 'Sierra 2500', '2.2 HDI', 'electric', 83, 'http://dummyimage.com/248x100.png/ff4444/ffffff'),
(354, 'Mitsubishi', 'Tundra', '3.0 V6', 'methanol', 94, 'http://dummyimage.com/177x100.png/5fa2dd/ffffff'),
(355, 'Ford', 'Escort ZX2', '1.5 EcoBoost', 'natural gas', 54, 'http://dummyimage.com/148x100.png/dddddd/000000'),
(356, 'Chevrolet', 'S10', '1.5 EcoBoost', 'hydrogen', 73, 'http://dummyimage.com/167x100.png/5fa2dd/ffffff'),
(357, 'Chevrolet', 'Malibu', '2.2 HDI', 'ethanol', 77, 'http://dummyimage.com/237x100.png/dddddd/000000'),
(358, 'Lexus', 'LS', '2.3 Turbo', 'diesel', 51, 'http://dummyimage.com/186x100.png/5fa2dd/ffffff'),
(359, 'Chevrolet', 'Suburban 1500', '1.5 EcoBoost', 'electric', 96, 'http://dummyimage.com/162x100.png/5fa2dd/ffffff'),
(360, 'Pontiac', 'Firebird', '1.8 TSI', 'gasoline', 57, 'http://dummyimage.com/221x100.png/ff4444/ffffff'),
(361, 'GMC', 'Yukon XL 2500', '1.5 EcoBoost', 'biofuel', 74, 'http://dummyimage.com/100x100.png/cc0000/ffffff'),
(362, 'Tesla', 'Roadster', '3.0 V6', 'diesel', 67, 'http://dummyimage.com/207x100.png/ff4444/ffffff'),
(363, 'Dodge', 'Avenger', '1.4 TFSI', 'diesel', 96, 'http://dummyimage.com/155x100.png/cc0000/ffffff'),
(364, 'Audi', 'Q5', '1.5 EcoBoost', 'propane', 73, 'http://dummyimage.com/198x100.png/5fa2dd/ffffff'),
(365, 'Jaguar', 'X-Type', '2.5 TDI', 'propane', 97, 'http://dummyimage.com/182x100.png/dddddd/000000'),
(366, 'Audi', 'Q7', '1.6 TDI', 'methanol', 100, 'http://dummyimage.com/142x100.png/dddddd/000000'),
(367, 'Ford', 'Laser', '1.8 TSI', 'methanol', 85, 'http://dummyimage.com/238x100.png/dddddd/000000'),
(368, 'Volkswagen', 'Golf', '2.0 TSI', 'hydrogen', 84, 'http://dummyimage.com/120x100.png/5fa2dd/ffffff'),
(369, 'Kia', 'Sorento', '1.4 TFSI', 'ethanol', 91, 'http://dummyimage.com/123x100.png/cc0000/ffffff'),
(370, 'MINI', 'Cooper', '4.0 V8', 'propane', 69, 'http://dummyimage.com/221x100.png/cc0000/ffffff'),
(371, 'Ford', 'F-Series', '1.8 TSI', 'methanol', 88, 'http://dummyimage.com/116x100.png/cc0000/ffffff'),
(372, 'Ford', 'Festiva', '4.0 V8', 'propane', 99, 'http://dummyimage.com/189x100.png/dddddd/000000'),
(373, 'Dodge', 'Charger', '1.8 TSI', 'natural gas', 94, 'http://dummyimage.com/223x100.png/dddddd/000000'),
(374, 'Pontiac', 'Grand Am', '2.5 TDI', 'biofuel', 93, 'http://dummyimage.com/166x100.png/dddddd/000000'),
(375, 'Audi', '80', '2.3 Turbo', 'electric', 74, 'http://dummyimage.com/164x100.png/dddddd/000000'),
(376, 'Audi', 'riolet', '2.2 HDI', 'ethanol', 82, 'http://dummyimage.com/240x100.png/dddddd/000000'),
(377, 'Lexus', 'SC', '2.0 TSI', 'methanol', 61, 'http://dummyimage.com/221x100.png/dddddd/000000'),
(378, 'Pontiac', 'Grand Prix', '2.2 HDI', 'propane', 62, 'http://dummyimage.com/154x100.png/dddddd/000000'),
(379, 'Ford', 'Aerostar', '4.0 V8', 'gasoline', 94, 'http://dummyimage.com/162x100.png/cc0000/ffffff'),
(380, 'Holden', 'Monaro', '1.4 TFSI', 'propane', 59, 'http://dummyimage.com/201x100.png/dddddd/000000'),
(381, 'Ford', 'F250', '1.8 TSI', 'electric', 56, 'http://dummyimage.com/120x100.png/dddddd/000000'),
(382, 'Subaru', 'Forester', '1.4 TFSI', 'methanol', 70, 'http://dummyimage.com/216x100.png/ff4444/ffffff'),
(383, 'Kia', 'Soul', '2.2 HDI', 'methanol', 84, 'http://dummyimage.com/103x100.png/dddddd/000000'),
(384, 'Volkswagen', 'Cabriolet', '3.0 V6', 'biofuel', 79, 'http://dummyimage.com/152x100.png/ff4444/ffffff'),
(385, 'Mercury', 'Topaz', '4.0 V8', 'natural gas', 51, 'http://dummyimage.com/192x100.png/5fa2dd/ffffff'),
(386, 'Mercury', 'Capri', '1.6 TDI', 'biodiesel', 61, 'http://dummyimage.com/114x100.png/dddddd/000000'),
(387, 'Ford', 'Taurus', '2.0 TSI', 'propane', 80, 'http://dummyimage.com/157x100.png/ff4444/ffffff'),
(388, 'Land Rover', 'Freelander', '2.5 TDI', 'gasoline', 91, 'http://dummyimage.com/207x100.png/cc0000/ffffff'),
(389, 'Hyundai', 'Sonata', '2.3 Turbo', 'hydrogen', 51, 'http://dummyimage.com/110x100.png/ff4444/ffffff'),
(390, 'Suzuki', 'Sidekick', '4.0 V8', 'electric', 100, 'http://dummyimage.com/225x100.png/ff4444/ffffff'),
(391, 'Suzuki', 'Swift', '1.8 TSI', 'biofuel', 53, 'http://dummyimage.com/102x100.png/ff4444/ffffff'),
(392, 'Mercedes-Benz', 'M-Class', '1.6 TDI', 'ethanol', 76, 'http://dummyimage.com/134x100.png/cc0000/ffffff'),
(393, 'Eagle', 'Summit', '1.4 TFSI', 'diesel', 98, 'http://dummyimage.com/163x100.png/cc0000/ffffff'),
(394, 'Hyundai', 'HED-5', '1.6 TDI', 'hydrogen', 59, 'http://dummyimage.com/131x100.png/dddddd/000000'),
(395, 'Chevrolet', 'Sportvan G10', '2.2 HDI', 'gasoline', 67, 'http://dummyimage.com/199x100.png/dddddd/000000'),
(396, 'Mercedes-Benz', 'SLK-Class', '1.5 EcoBoost', 'hydrogen', 60, 'http://dummyimage.com/102x100.png/ff4444/ffffff'),
(397, 'Pontiac', 'Sunfire', '1.5 EcoBoost', 'biofuel', 77, 'http://dummyimage.com/128x100.png/5fa2dd/ffffff'),
(398, 'Honda', 'Prelude', '1.5 EcoBoost', 'methanol', 50, 'http://dummyimage.com/165x100.png/cc0000/ffffff'),
(399, 'BMW', '530', '3.0 V6', 'biofuel', 50, 'http://dummyimage.com/174x100.png/cc0000/ffffff'),
(400, 'Toyota', 'Tundra', '2.5 TDI', 'diesel', 73, 'http://dummyimage.com/153x100.png/5fa2dd/ffffff'),
(401, 'Acura', 'Integra', '2.0 TSI', 'biofuel', 79, 'http://dummyimage.com/116x100.png/dddddd/000000'),
(402, 'BMW', 'Z4', '2.0 TSI', 'electric', 68, 'http://dummyimage.com/134x100.png/dddddd/000000'),
(403, 'Buick', 'Enclave', '1.6 TDI', 'biofuel', 82, 'http://dummyimage.com/245x100.png/ff4444/ffffff'),
(404, 'Pontiac', 'Firebird', '2.0 TSI', 'diesel', 85, 'http://dummyimage.com/115x100.png/5fa2dd/ffffff'),
(405, 'Toyota', 'Camry', '2.3 Turbo', 'gasoline', 90, 'http://dummyimage.com/113x100.png/5fa2dd/ffffff'),
(406, 'Mazda', 'RX-7', '4.0 V8', 'ethanol', 94, 'http://dummyimage.com/173x100.png/cc0000/ffffff'),
(407, 'Hummer', 'H2', '2.5 TDI', 'diesel', 95, 'http://dummyimage.com/103x100.png/cc0000/ffffff'),
(408, 'Infiniti', 'IPL G', '4.0 V8', 'gasoline', 82, 'http://dummyimage.com/175x100.png/ff4444/ffffff'),
(409, 'Ford', 'Thunderbird', '2.2 HDI', 'ethanol', 80, 'http://dummyimage.com/182x100.png/ff4444/ffffff'),
(410, 'Chevrolet', 'Express', '1.8 TSI', 'electric', 65, 'http://dummyimage.com/126x100.png/cc0000/ffffff'),
(411, 'GMC', '3500', '2.2 HDI', 'biofuel', 58, 'http://dummyimage.com/203x100.png/5fa2dd/ffffff'),
(412, 'GMC', 'EV1', '1.6 TDI', 'natural gas', 65, 'http://dummyimage.com/160x100.png/dddddd/000000'),
(413, 'Ford', 'Econoline E350', '1.4 TFSI', 'methanol', 94, 'http://dummyimage.com/182x100.png/5fa2dd/ffffff'),
(414, 'Mercedes-Benz', 'S-Class', '3.0 V6', 'hydrogen', 96, 'http://dummyimage.com/168x100.png/ff4444/ffffff'),
(415, 'Volkswagen', 'Rabbit', '1.5 EcoBoost', 'propane', 60, 'http://dummyimage.com/162x100.png/dddddd/000000'),
(416, 'Hummer', 'H2', '1.6 TDI', 'natural gas', 88, 'http://dummyimage.com/121x100.png/ff4444/ffffff'),
(417, 'Mitsubishi', 'Lancer Evolution', '2.3 Turbo', 'natural gas', 62, 'http://dummyimage.com/183x100.png/cc0000/ffffff'),
(418, 'Dodge', 'Dakota Club', '1.4 TFSI', 'hydrogen', 73, 'http://dummyimage.com/225x100.png/dddddd/000000'),
(419, 'Ford', 'Mustang', '1.6 TDI', 'biodiesel', 82, 'http://dummyimage.com/115x100.png/dddddd/000000'),
(420, 'Ford', 'E350', '2.0 TSI', 'hydrogen', 59, 'http://dummyimage.com/218x100.png/ff4444/ffffff'),
(421, 'Land Rover', 'Discovery', '2.5 TDI', 'diesel', 64, 'http://dummyimage.com/182x100.png/5fa2dd/ffffff'),
(422, 'Chevrolet', 'Suburban 1500', '2.2 HDI', 'gasoline', 82, 'http://dummyimage.com/149x100.png/5fa2dd/ffffff'),
(423, 'Buick', 'Estate', '1.8 TSI', 'biofuel', 85, 'http://dummyimage.com/149x100.png/cc0000/ffffff'),
(424, 'Plymouth', 'Breeze', '1.6 TDI', 'ethanol', 93, 'http://dummyimage.com/207x100.png/cc0000/ffffff'),
(425, 'Ford', 'F-Series Super Duty', '2.3 Turbo', 'hydrogen', 99, 'http://dummyimage.com/130x100.png/dddddd/000000'),
(426, 'Nissan', 'Murano', '2.2 HDI', 'propane', 84, 'http://dummyimage.com/201x100.png/dddddd/000000'),
(427, 'Toyota', 'Camry', '1.5 EcoBoost', 'natural gas', 90, 'http://dummyimage.com/109x100.png/dddddd/000000'),
(428, 'Nissan', 'Frontier', '3.0 V6', 'ethanol', 96, 'http://dummyimage.com/132x100.png/cc0000/ffffff'),
(429, 'Land Rover', 'LR2', '2.2 HDI', 'biodiesel', 60, 'http://dummyimage.com/107x100.png/cc0000/ffffff'),
(430, 'Buick', 'Riviera', '4.0 V8', 'natural gas', 67, 'http://dummyimage.com/144x100.png/dddddd/000000'),
(431, 'Infiniti', 'G35', '2.2 HDI', 'gasoline', 91, 'http://dummyimage.com/215x100.png/5fa2dd/ffffff'),
(432, 'Mitsubishi', 'Truck', '1.4 TFSI', 'hydrogen', 96, 'http://dummyimage.com/132x100.png/cc0000/ffffff'),
(433, 'Aston Martin', 'V8 Vantage', '1.8 TSI', 'natural gas', 88, 'http://dummyimage.com/111x100.png/cc0000/ffffff'),
(434, 'Pontiac', 'Sunbird', '1.5 EcoBoost', 'diesel', 52, 'http://dummyimage.com/249x100.png/ff4444/ffffff'),
(435, 'Mitsubishi', 'Endeavor', '2.2 HDI', 'propane', 55, 'http://dummyimage.com/168x100.png/dddddd/000000'),
(436, 'Dodge', 'Dynasty', '2.0 TSI', 'natural gas', 67, 'http://dummyimage.com/156x100.png/5fa2dd/ffffff'),
(437, 'Nissan', 'Xterra', '2.2 HDI', 'gasoline', 79, 'http://dummyimage.com/238x100.png/5fa2dd/ffffff'),
(438, 'Toyota', 'T100', '1.6 TDI', 'propane', 78, 'http://dummyimage.com/107x100.png/dddddd/000000'),
(439, 'Lotus', 'Esprit', '1.8 TSI', 'propane', 70, 'http://dummyimage.com/120x100.png/ff4444/ffffff'),
(440, 'Saturn', 'VUE', '1.8 TSI', 'natural gas', 52, 'http://dummyimage.com/145x100.png/5fa2dd/ffffff'),
(441, 'Mitsubishi', 'Pajero', '2.3 Turbo', 'methanol', 64, 'http://dummyimage.com/197x100.png/dddddd/000000'),
(442, 'GMC', 'Savana 2500', '1.5 EcoBoost', 'propane', 72, 'http://dummyimage.com/137x100.png/dddddd/000000'),
(443, 'Ford', 'F-Series', '1.5 EcoBoost', 'ethanol', 76, 'http://dummyimage.com/146x100.png/cc0000/ffffff'),
(444, 'BMW', '3 Series', '2.2 HDI', 'gasoline', 53, 'http://dummyimage.com/205x100.png/5fa2dd/ffffff'),
(445, 'Lexus', 'SC', '1.4 TFSI', 'electric', 66, 'http://dummyimage.com/213x100.png/dddddd/000000'),
(446, 'Pontiac', 'Aztek', '3.0 V6', 'ethanol', 74, 'http://dummyimage.com/166x100.png/dddddd/000000'),
(447, 'Pontiac', '6000', '1.4 TFSI', 'natural gas', 88, 'http://dummyimage.com/117x100.png/dddddd/000000'),
(448, 'Volkswagen', 'Golf', '1.8 TSI', 'biofuel', 86, 'http://dummyimage.com/193x100.png/dddddd/000000'),
(449, 'Kia', 'Sorento', '2.3 Turbo', 'biodiesel', 71, 'http://dummyimage.com/244x100.png/5fa2dd/ffffff'),
(450, 'Volvo', 'C30', '1.6 TDI', 'biodiesel', 98, 'http://dummyimage.com/110x100.png/cc0000/ffffff'),
(451, 'Isuzu', 'Rodeo', '1.5 EcoBoost', 'diesel', 66, 'http://dummyimage.com/108x100.png/ff4444/ffffff'),
(452, 'Toyota', 'Avalon', '1.4 TFSI', 'gasoline', 90, 'http://dummyimage.com/170x100.png/dddddd/000000'),
(453, 'Dodge', 'Ram 1500', '1.8 TSI', 'ethanol', 94, 'http://dummyimage.com/175x100.png/cc0000/ffffff'),
(454, 'Honda', 'Civic', '2.3 Turbo', 'propane', 68, 'http://dummyimage.com/125x100.png/dddddd/000000'),
(455, 'Mercedes-Benz', 'R-Class', '2.5 TDI', 'biodiesel', 60, 'http://dummyimage.com/156x100.png/ff4444/ffffff'),
(456, 'BMW', 'M5', '2.5 TDI', 'gasoline', 90, 'http://dummyimage.com/190x100.png/dddddd/000000'),
(457, 'Mercedes-Benz', 'C-Class', '2.2 HDI', 'methanol', 51, 'http://dummyimage.com/166x100.png/dddddd/000000'),
(458, 'Mitsubishi', 'Eclipse', '3.0 V6', 'biofuel', 61, 'http://dummyimage.com/152x100.png/dddddd/000000'),
(459, 'Hyundai', 'Elantra', '2.0 TSI', 'ethanol', 51, 'http://dummyimage.com/129x100.png/dddddd/000000'),
(460, 'Pontiac', 'G6', '2.5 TDI', 'natural gas', 100, 'http://dummyimage.com/202x100.png/cc0000/ffffff'),
(461, 'Ford', 'E250', '2.0 TSI', 'gasoline', 72, 'http://dummyimage.com/182x100.png/5fa2dd/ffffff'),
(462, 'Ferrari', '458 Italia', '1.8 TSI', 'diesel', 76, 'http://dummyimage.com/110x100.png/cc0000/ffffff'),
(463, 'Mercury', 'Cougar', '4.0 V8', 'propane', 72, 'http://dummyimage.com/183x100.png/cc0000/ffffff'),
(464, 'Volkswagen', 'Touareg', '2.5 TDI', 'hydrogen', 59, 'http://dummyimage.com/130x100.png/cc0000/ffffff'),
(465, 'Ford', 'Bronco', '2.0 TSI', 'gasoline', 98, 'http://dummyimage.com/225x100.png/dddddd/000000'),
(466, 'BMW', 'Z8', '2.5 TDI', 'diesel', 51, 'http://dummyimage.com/165x100.png/cc0000/ffffff'),
(467, 'Lamborghini', 'Murciélago', '3.0 V6', 'ethanol', 79, 'http://dummyimage.com/228x100.png/dddddd/000000'),
(468, 'Volkswagen', 'GTI', '2.2 HDI', 'hydrogen', 81, 'http://dummyimage.com/228x100.png/cc0000/ffffff'),
(469, 'Lexus', 'GS', '1.4 TFSI', 'biodiesel', 79, 'http://dummyimage.com/217x100.png/5fa2dd/ffffff'),
(470, 'Mazda', 'MX-5', '1.6 TDI', 'hydrogen', 68, 'http://dummyimage.com/143x100.png/dddddd/000000'),
(471, 'Cadillac', 'Seville', '1.6 TDI', 'gasoline', 100, 'http://dummyimage.com/115x100.png/5fa2dd/ffffff'),
(472, 'Dodge', 'Caravan', '2.2 HDI', 'electric', 60, 'http://dummyimage.com/192x100.png/dddddd/000000'),
(473, 'GMC', 'Yukon XL 1500', '1.5 EcoBoost', 'ethanol', 56, 'http://dummyimage.com/215x100.png/cc0000/ffffff'),
(474, 'Toyota', 'Prius Plug-in', '2.2 HDI', 'diesel', 62, 'http://dummyimage.com/222x100.png/dddddd/000000'),
(475, 'Toyota', 'Xtra', '1.4 TFSI', 'electric', 100, 'http://dummyimage.com/242x100.png/cc0000/ffffff'),
(476, 'Cadillac', 'SRX', '1.5 EcoBoost', 'hydrogen', 80, 'http://dummyimage.com/124x100.png/cc0000/ffffff'),
(477, 'Volkswagen', 'Golf III', '3.0 V6', 'hydrogen', 54, 'http://dummyimage.com/189x100.png/dddddd/000000'),
(478, 'Chevrolet', 'Suburban 2500', '2.5 TDI', 'biodiesel', 96, 'http://dummyimage.com/180x100.png/ff4444/ffffff'),
(479, 'Chevrolet', 'S10 Blazer', '1.4 TFSI', 'diesel', 61, 'http://dummyimage.com/182x100.png/5fa2dd/ffffff'),
(480, 'Chevrolet', 'Lumina', '2.0 TSI', 'natural gas', 61, 'http://dummyimage.com/211x100.png/5fa2dd/ffffff');
INSERT INTO `cars` (`id`, `mark`, `model`, `engine`, `fuel`, `price`, `image`) VALUES
(481, 'Lexus', 'SC', '2.0 TSI', 'biodiesel', 59, 'http://dummyimage.com/181x100.png/dddddd/000000'),
(482, 'Honda', 'Accord', '1.8 TSI', 'natural gas', 54, 'http://dummyimage.com/248x100.png/dddddd/000000'),
(483, 'Toyota', 'RAV4', '1.4 TFSI', 'gasoline', 52, 'http://dummyimage.com/222x100.png/dddddd/000000'),
(484, 'Dodge', 'Grand Caravan', '2.2 HDI', 'ethanol', 71, 'http://dummyimage.com/160x100.png/5fa2dd/ffffff'),
(485, 'Hyundai', 'Azera', '1.8 TSI', 'ethanol', 65, 'http://dummyimage.com/107x100.png/dddddd/000000'),
(486, 'Chevrolet', 'S10 Blazer', '2.0 TSI', 'ethanol', 97, 'http://dummyimage.com/227x100.png/5fa2dd/ffffff'),
(487, 'Honda', 'Civic', '2.3 Turbo', 'electric', 62, 'http://dummyimage.com/131x100.png/5fa2dd/ffffff'),
(488, 'Chevrolet', 'Tahoe', '1.8 TSI', 'hydrogen', 79, 'http://dummyimage.com/103x100.png/cc0000/ffffff'),
(489, 'Lamborghini', 'Diablo', '4.0 V8', 'electric', 76, 'http://dummyimage.com/163x100.png/dddddd/000000'),
(490, 'Chevrolet', 'Express 3500', '2.0 TSI', 'methanol', 82, 'http://dummyimage.com/153x100.png/5fa2dd/ffffff'),
(491, 'Mercedes-Benz', 'SLR McLaren', '2.2 HDI', 'biodiesel', 69, 'http://dummyimage.com/230x100.png/cc0000/ffffff'),
(492, 'Pontiac', 'Tempest', '1.4 TFSI', 'natural gas', 81, 'http://dummyimage.com/142x100.png/dddddd/000000'),
(493, 'Chevrolet', 'Suburban 1500', '2.0 TSI', 'hydrogen', 95, 'http://dummyimage.com/124x100.png/5fa2dd/ffffff'),
(494, 'Volkswagen', 'Jetta', '1.8 TSI', 'ethanol', 59, 'http://dummyimage.com/102x100.png/ff4444/ffffff'),
(495, 'Acura', 'RDX', '1.6 TDI', 'hydrogen', 77, 'http://dummyimage.com/184x100.png/ff4444/ffffff'),
(496, 'Pontiac', 'GTO', '4.0 V8', 'diesel', 94, 'http://dummyimage.com/238x100.png/cc0000/ffffff'),
(497, 'BMW', '600', '1.5 EcoBoost', 'ethanol', 85, 'http://dummyimage.com/224x100.png/dddddd/000000'),
(498, 'Volvo', '960', '2.5 TDI', 'electric', 69, 'http://dummyimage.com/144x100.png/dddddd/000000'),
(499, 'Volvo', 'V70', '1.6 TDI', 'natural gas', 51, 'http://dummyimage.com/100x100.png/cc0000/ffffff'),
(500, 'Acura', 'RL', '2.5 TDI', 'ethanol', 98, 'http://dummyimage.com/195x100.png/dddddd/000000'),
(501, 'Ford', 'Edge', '2.2 HDI', 'propane', 80, 'http://dummyimage.com/132x100.png/5fa2dd/ffffff'),
(502, 'Honda', 'Accord', '4.0 V8', 'biofuel', 70, 'http://dummyimage.com/137x100.png/ff4444/ffffff'),
(503, 'Volkswagen', 'GTI', '1.6 TDI', 'ethanol', 69, 'http://dummyimage.com/110x100.png/cc0000/ffffff'),
(504, 'Mazda', 'Mazda6', '2.5 TDI', 'methanol', 97, 'http://dummyimage.com/245x100.png/dddddd/000000'),
(505, 'Mercury', 'Mountaineer', '3.0 V6', 'natural gas', 75, 'http://dummyimage.com/113x100.png/cc0000/ffffff'),
(506, 'Dodge', 'Ram Van 3500', '4.0 V8', 'methanol', 63, 'http://dummyimage.com/244x100.png/cc0000/ffffff'),
(507, 'Chevrolet', 'Suburban 2500', '2.5 TDI', 'diesel', 51, 'http://dummyimage.com/182x100.png/ff4444/ffffff'),
(508, 'Toyota', 'Solara', '4.0 V8', 'gasoline', 76, 'http://dummyimage.com/200x100.png/5fa2dd/ffffff'),
(509, 'Acura', 'Integra', '1.4 TFSI', 'natural gas', 83, 'http://dummyimage.com/248x100.png/cc0000/ffffff'),
(510, 'Mitsubishi', 'Eclipse', '1.5 EcoBoost', 'ethanol', 65, 'http://dummyimage.com/225x100.png/5fa2dd/ffffff'),
(511, 'Scion', 'tC', '3.0 V6', 'electric', 70, 'http://dummyimage.com/181x100.png/cc0000/ffffff'),
(512, 'Chevrolet', 'Silverado 3500', '1.5 EcoBoost', 'natural gas', 58, 'http://dummyimage.com/162x100.png/ff4444/ffffff'),
(513, 'Ford', 'Escort', '2.3 Turbo', 'hydrogen', 77, 'http://dummyimage.com/231x100.png/cc0000/ffffff'),
(514, 'Chevrolet', 'Silverado 2500', '2.0 TSI', 'biodiesel', 55, 'http://dummyimage.com/234x100.png/ff4444/ffffff'),
(515, 'Volvo', 'XC90', '2.5 TDI', 'methanol', 67, 'http://dummyimage.com/186x100.png/ff4444/ffffff'),
(516, 'Ford', 'F150', '1.5 EcoBoost', 'gasoline', 67, 'http://dummyimage.com/145x100.png/dddddd/000000'),
(517, 'Toyota', '4Runner', '4.0 V8', 'biofuel', 78, 'http://dummyimage.com/247x100.png/dddddd/000000'),
(518, 'Suzuki', 'Sidekick', '1.5 EcoBoost', 'ethanol', 85, 'http://dummyimage.com/176x100.png/ff4444/ffffff'),
(519, 'Ford', 'F-Series', '3.0 V6', 'biofuel', 91, 'http://dummyimage.com/199x100.png/dddddd/000000'),
(520, 'Dodge', 'Ramcharger', '1.5 EcoBoost', 'hydrogen', 93, 'http://dummyimage.com/146x100.png/dddddd/000000'),
(521, 'Toyota', 'Tundra', '2.5 TDI', 'natural gas', 57, 'http://dummyimage.com/163x100.png/ff4444/ffffff'),
(522, 'Ford', 'EXP', '1.6 TDI', 'methanol', 81, 'http://dummyimage.com/197x100.png/ff4444/ffffff'),
(523, 'Lexus', 'ES', '2.3 Turbo', 'biofuel', 76, 'http://dummyimage.com/140x100.png/dddddd/000000'),
(524, 'Lincoln', 'Mark VII', '1.8 TSI', 'biofuel', 62, 'http://dummyimage.com/246x100.png/dddddd/000000'),
(525, 'Subaru', 'Legacy', '1.4 TFSI', 'gasoline', 73, 'http://dummyimage.com/225x100.png/ff4444/ffffff'),
(526, 'Pontiac', 'Vibe', '3.0 V6', 'hydrogen', 95, 'http://dummyimage.com/147x100.png/dddddd/000000'),
(527, 'Ford', 'Excursion', '2.2 HDI', 'biodiesel', 82, 'http://dummyimage.com/178x100.png/ff4444/ffffff'),
(528, 'Ford', 'Th!nk', '2.2 HDI', 'biodiesel', 87, 'http://dummyimage.com/141x100.png/cc0000/ffffff'),
(529, 'Ford', 'E-Series', '1.5 EcoBoost', 'biofuel', 77, 'http://dummyimage.com/117x100.png/dddddd/000000'),
(530, 'Kia', 'Amanti', '2.5 TDI', 'gasoline', 82, 'http://dummyimage.com/122x100.png/cc0000/ffffff'),
(531, 'Chevrolet', 'Silverado', '3.0 V6', 'biodiesel', 60, 'http://dummyimage.com/202x100.png/cc0000/ffffff'),
(532, 'GMC', 'Sierra 3500', '1.5 EcoBoost', 'ethanol', 52, 'http://dummyimage.com/185x100.png/dddddd/000000'),
(533, 'Mitsubishi', 'Galant', '4.0 V8', 'methanol', 53, 'http://dummyimage.com/133x100.png/dddddd/000000'),
(534, 'GMC', 'Suburban 2500', '1.8 TSI', 'biofuel', 96, 'http://dummyimage.com/199x100.png/cc0000/ffffff'),
(535, 'Acura', 'MDX', '2.0 TSI', 'biodiesel', 53, 'http://dummyimage.com/108x100.png/cc0000/ffffff'),
(536, 'Bentley', 'Azure', '2.3 Turbo', 'natural gas', 79, 'http://dummyimage.com/137x100.png/cc0000/ffffff'),
(537, 'Kia', 'Rio', '1.8 TSI', 'biodiesel', 99, 'http://dummyimage.com/136x100.png/ff4444/ffffff'),
(538, 'Volkswagen', 'Passat', '1.5 EcoBoost', 'propane', 50, 'http://dummyimage.com/138x100.png/cc0000/ffffff'),
(539, 'Isuzu', 'Amigo', '2.0 TSI', 'natural gas', 96, 'http://dummyimage.com/241x100.png/dddddd/000000'),
(540, 'Daewoo', 'Lanos', '2.2 HDI', 'methanol', 77, 'http://dummyimage.com/137x100.png/cc0000/ffffff'),
(541, 'Toyota', 'Tercel', '1.8 TSI', 'propane', 55, 'http://dummyimage.com/225x100.png/dddddd/000000'),
(542, 'Subaru', 'Outback', '2.2 HDI', 'diesel', 98, 'http://dummyimage.com/142x100.png/cc0000/ffffff'),
(543, 'Toyota', 'Corolla', '3.0 V6', 'gasoline', 60, 'http://dummyimage.com/155x100.png/dddddd/000000'),
(544, 'Lexus', 'LS', '2.3 Turbo', 'electric', 55, 'http://dummyimage.com/207x100.png/dddddd/000000'),
(545, 'GMC', 'Sierra 2500', '3.0 V6', 'gasoline', 50, 'http://dummyimage.com/211x100.png/5fa2dd/ffffff'),
(546, 'Toyota', 'Land Cruiser', '2.2 HDI', 'diesel', 86, 'http://dummyimage.com/165x100.png/cc0000/ffffff'),
(547, 'Mitsubishi', 'Diamante', '1.4 TFSI', 'propane', 98, 'http://dummyimage.com/137x100.png/dddddd/000000'),
(548, 'Audi', '4000s Quattro', '1.4 TFSI', 'biodiesel', 88, 'http://dummyimage.com/176x100.png/5fa2dd/ffffff'),
(549, 'Volkswagen', 'Passat', '1.6 TDI', 'electric', 77, 'http://dummyimage.com/215x100.png/5fa2dd/ffffff'),
(550, 'Porsche', 'Panamera', '4.0 V8', 'biofuel', 95, 'http://dummyimage.com/222x100.png/dddddd/000000'),
(551, 'Acura', 'TL', '2.5 TDI', 'hydrogen', 53, 'http://dummyimage.com/155x100.png/ff4444/ffffff'),
(552, 'Toyota', 'Sequoia', '1.8 TSI', 'gasoline', 84, 'http://dummyimage.com/234x100.png/dddddd/000000'),
(553, 'Ford', 'F250', '1.8 TSI', 'natural gas', 64, 'http://dummyimage.com/200x100.png/5fa2dd/ffffff'),
(554, 'Saab', '9000', '2.3 Turbo', 'hydrogen', 64, 'http://dummyimage.com/149x100.png/5fa2dd/ffffff'),
(555, 'Toyota', 'Prius Plug-in', '2.2 HDI', 'natural gas', 56, 'http://dummyimage.com/198x100.png/5fa2dd/ffffff'),
(556, 'Dodge', 'Dakota', '1.6 TDI', 'biodiesel', 73, 'http://dummyimage.com/234x100.png/5fa2dd/ffffff'),
(557, 'Acura', 'RDX', '1.6 TDI', 'ethanol', 80, 'http://dummyimage.com/247x100.png/dddddd/000000'),
(558, 'Lexus', 'RX', '2.3 Turbo', 'diesel', 81, 'http://dummyimage.com/170x100.png/ff4444/ffffff'),
(559, 'Isuzu', 'Ascender', '1.4 TFSI', 'methanol', 58, 'http://dummyimage.com/187x100.png/ff4444/ffffff'),
(560, 'Land Rover', 'LR4', '1.8 TSI', 'methanol', 77, 'http://dummyimage.com/219x100.png/dddddd/000000'),
(561, 'Cadillac', 'Eldorado', '1.6 TDI', 'gasoline', 69, 'http://dummyimage.com/174x100.png/5fa2dd/ffffff'),
(562, 'Hyundai', 'Accent', '2.5 TDI', 'natural gas', 82, 'http://dummyimage.com/141x100.png/ff4444/ffffff'),
(563, 'Ferrari', 'F430', '1.4 TFSI', 'hydrogen', 80, 'http://dummyimage.com/112x100.png/cc0000/ffffff'),
(564, 'Saab', '9000', '1.4 TFSI', 'biofuel', 60, 'http://dummyimage.com/147x100.png/ff4444/ffffff'),
(565, 'Maserati', 'GranTurismo', '4.0 V8', 'ethanol', 58, 'http://dummyimage.com/121x100.png/5fa2dd/ffffff'),
(566, 'Pontiac', 'Grand Prix', '2.2 HDI', 'ethanol', 62, 'http://dummyimage.com/236x100.png/5fa2dd/ffffff'),
(567, 'Kia', 'Sedona', '3.0 V6', 'ethanol', 94, 'http://dummyimage.com/172x100.png/cc0000/ffffff'),
(568, 'Chevrolet', 'Avalanche 2500', '2.2 HDI', 'propane', 76, 'http://dummyimage.com/233x100.png/5fa2dd/ffffff'),
(569, 'Porsche', '944', '2.2 HDI', 'biofuel', 98, 'http://dummyimage.com/159x100.png/cc0000/ffffff'),
(570, 'Chevrolet', '3500', '1.6 TDI', 'gasoline', 62, 'http://dummyimage.com/213x100.png/dddddd/000000'),
(571, 'Volvo', 'XC70', '4.0 V8', 'biofuel', 77, 'http://dummyimage.com/246x100.png/cc0000/ffffff'),
(572, 'Hyundai', 'Sonata', '4.0 V8', 'natural gas', 99, 'http://dummyimage.com/152x100.png/cc0000/ffffff'),
(573, 'Chevrolet', 'Tahoe', '2.5 TDI', 'hydrogen', 76, 'http://dummyimage.com/116x100.png/5fa2dd/ffffff'),
(574, 'Lexus', 'LS', '1.5 EcoBoost', 'biodiesel', 94, 'http://dummyimage.com/143x100.png/cc0000/ffffff'),
(575, 'Buick', 'Roadmaster', '1.4 TFSI', 'biodiesel', 87, 'http://dummyimage.com/136x100.png/cc0000/ffffff'),
(576, 'Chevrolet', 'Sportvan G30', '1.5 EcoBoost', 'ethanol', 57, 'http://dummyimage.com/247x100.png/cc0000/ffffff'),
(577, 'Chevrolet', 'Monte Carlo', '1.5 EcoBoost', 'natural gas', 74, 'http://dummyimage.com/199x100.png/5fa2dd/ffffff'),
(578, 'Nissan', 'Titan', '2.5 TDI', 'gasoline', 54, 'http://dummyimage.com/163x100.png/ff4444/ffffff'),
(579, 'Chevrolet', 'G-Series 2500', '2.0 TSI', 'diesel', 61, 'http://dummyimage.com/185x100.png/dddddd/000000'),
(580, 'Volkswagen', 'Jetta III', '3.0 V6', 'diesel', 59, 'http://dummyimage.com/158x100.png/ff4444/ffffff'),
(581, 'Toyota', 'Tacoma Xtra', '1.8 TSI', 'electric', 50, 'http://dummyimage.com/240x100.png/5fa2dd/ffffff'),
(582, 'Chevrolet', 'Express 2500', '1.5 EcoBoost', 'gasoline', 70, 'http://dummyimage.com/112x100.png/dddddd/000000'),
(583, 'Infiniti', 'Q', '1.8 TSI', 'diesel', 83, 'http://dummyimage.com/161x100.png/dddddd/000000'),
(584, 'Bentley', 'Continental', '2.0 TSI', 'gasoline', 83, 'http://dummyimage.com/222x100.png/5fa2dd/ffffff'),
(585, 'GMC', 'Rally Wagon 2500', '3.0 V6', 'diesel', 74, 'http://dummyimage.com/108x100.png/ff4444/ffffff'),
(586, 'Dodge', 'Ram Van 3500', '4.0 V8', 'hydrogen', 60, 'http://dummyimage.com/129x100.png/dddddd/000000'),
(587, 'Pontiac', 'Vibe', '1.6 TDI', 'gasoline', 63, 'http://dummyimage.com/236x100.png/cc0000/ffffff'),
(588, 'Chrysler', 'Crossfire', '4.0 V8', 'ethanol', 62, 'http://dummyimage.com/103x100.png/5fa2dd/ffffff'),
(589, 'Saturn', 'L-Series', '1.8 TSI', 'biodiesel', 66, 'http://dummyimage.com/128x100.png/cc0000/ffffff'),
(590, 'Plymouth', 'Laser', '2.3 Turbo', 'propane', 51, 'http://dummyimage.com/200x100.png/ff4444/ffffff'),
(591, 'Daewoo', 'Lanos', '1.4 TFSI', 'biodiesel', 81, 'http://dummyimage.com/175x100.png/ff4444/ffffff'),
(592, 'Ford', 'Crown Victoria', '2.3 Turbo', 'gasoline', 59, 'http://dummyimage.com/182x100.png/cc0000/ffffff'),
(593, 'Isuzu', 'Ascender', '2.5 TDI', 'methanol', 94, 'http://dummyimage.com/147x100.png/dddddd/000000'),
(594, 'Audi', 'Allroad', '3.0 V6', 'diesel', 97, 'http://dummyimage.com/107x100.png/cc0000/ffffff'),
(595, 'Oldsmobile', 'Silhouette', '1.4 TFSI', 'biodiesel', 84, 'http://dummyimage.com/243x100.png/dddddd/000000'),
(596, 'BMW', '3 Series', '1.6 TDI', 'propane', 56, 'http://dummyimage.com/125x100.png/5fa2dd/ffffff'),
(597, 'Mercury', 'Mountaineer', '3.0 V6', 'biofuel', 71, 'http://dummyimage.com/155x100.png/ff4444/ffffff'),
(598, 'Porsche', 'Cayenne', '3.0 V6', 'diesel', 97, 'http://dummyimage.com/246x100.png/dddddd/000000'),
(599, 'Dodge', 'Ram Van 1500', '1.8 TSI', 'biofuel', 51, 'http://dummyimage.com/136x100.png/ff4444/ffffff'),
(600, 'Audi', 'A3', '2.5 TDI', 'methanol', 91, 'http://dummyimage.com/223x100.png/cc0000/ffffff'),
(601, 'Dodge', 'Caravan', '1.8 TSI', 'ethanol', 72, 'http://dummyimage.com/116x100.png/dddddd/000000'),
(602, 'Chrysler', 'Imperial', '3.0 V6', 'gasoline', 98, 'http://dummyimage.com/114x100.png/5fa2dd/ffffff'),
(603, 'Chevrolet', '1500', '2.0 TSI', 'electric', 100, 'http://dummyimage.com/228x100.png/cc0000/ffffff'),
(604, 'Lamborghini', 'Diablo', '1.5 EcoBoost', 'natural gas', 89, 'http://dummyimage.com/240x100.png/cc0000/ffffff'),
(605, 'Volkswagen', 'Touareg', '2.0 TSI', 'hydrogen', 98, 'http://dummyimage.com/217x100.png/dddddd/000000'),
(606, 'Subaru', 'XT', '1.8 TSI', 'hydrogen', 96, 'http://dummyimage.com/145x100.png/5fa2dd/ffffff'),
(607, 'Chevrolet', 'Corvette', '2.2 HDI', 'diesel', 96, 'http://dummyimage.com/187x100.png/ff4444/ffffff'),
(608, 'Audi', '80', '1.8 TSI', 'methanol', 63, 'http://dummyimage.com/166x100.png/5fa2dd/ffffff'),
(609, 'Daewoo', 'Leganza', '2.0 TSI', 'biodiesel', 80, 'http://dummyimage.com/174x100.png/dddddd/000000'),
(610, 'Volkswagen', 'Jetta', '1.5 EcoBoost', 'ethanol', 60, 'http://dummyimage.com/114x100.png/5fa2dd/ffffff'),
(611, 'Pontiac', 'LeMans', '2.2 HDI', 'methanol', 61, 'http://dummyimage.com/249x100.png/dddddd/000000'),
(612, 'Jeep', 'Commander', '1.4 TFSI', 'propane', 60, 'http://dummyimage.com/147x100.png/cc0000/ffffff'),
(613, 'Ford', 'Explorer Sport Trac', '1.5 EcoBoost', 'biodiesel', 74, 'http://dummyimage.com/199x100.png/cc0000/ffffff'),
(614, 'Chevrolet', 'Express 2500', '1.5 EcoBoost', 'diesel', 100, 'http://dummyimage.com/161x100.png/cc0000/ffffff'),
(615, 'Chevrolet', 'Suburban 2500', '1.6 TDI', 'biofuel', 75, 'http://dummyimage.com/193x100.png/cc0000/ffffff'),
(616, 'Aptera', 'Type-1h', '2.0 TSI', 'biodiesel', 82, 'http://dummyimage.com/180x100.png/dddddd/000000'),
(617, 'Pontiac', 'Aztek', '4.0 V8', 'propane', 100, 'http://dummyimage.com/161x100.png/dddddd/000000'),
(618, 'Volkswagen', 'Cabriolet', '1.8 TSI', 'gasoline', 59, 'http://dummyimage.com/157x100.png/cc0000/ffffff'),
(619, 'Pontiac', 'Firebird', '2.0 TSI', 'natural gas', 69, 'http://dummyimage.com/218x100.png/cc0000/ffffff'),
(620, 'Cadillac', 'CTS', '2.2 HDI', 'propane', 52, 'http://dummyimage.com/146x100.png/ff4444/ffffff'),
(621, 'Plymouth', 'Laser', '1.5 EcoBoost', 'ethanol', 90, 'http://dummyimage.com/229x100.png/ff4444/ffffff'),
(622, 'Ford', 'Mustang', '1.4 TFSI', 'diesel', 85, 'http://dummyimage.com/224x100.png/ff4444/ffffff'),
(623, 'Dodge', 'Ram 1500', '3.0 V6', 'ethanol', 86, 'http://dummyimage.com/234x100.png/5fa2dd/ffffff'),
(624, 'Scion', 'tC', '1.5 EcoBoost', 'methanol', 69, 'http://dummyimage.com/119x100.png/5fa2dd/ffffff'),
(625, 'Pontiac', 'Trans Sport', '1.8 TSI', 'electric', 71, 'http://dummyimage.com/199x100.png/5fa2dd/ffffff'),
(626, 'Chrysler', 'New Yorker', '2.0 TSI', 'methanol', 94, 'http://dummyimage.com/237x100.png/dddddd/000000'),
(627, 'Acura', 'SLX', '3.0 V6', 'diesel', 90, 'http://dummyimage.com/242x100.png/dddddd/000000'),
(628, 'Lamborghini', 'Diablo', '3.0 V6', 'methanol', 83, 'http://dummyimage.com/224x100.png/ff4444/ffffff'),
(629, 'Buick', 'Roadmaster', '4.0 V8', 'biodiesel', 63, 'http://dummyimage.com/216x100.png/dddddd/000000'),
(630, 'BMW', 'M3', '1.8 TSI', 'diesel', 90, 'http://dummyimage.com/117x100.png/cc0000/ffffff'),
(631, 'Pontiac', 'Grand Prix', '3.0 V6', 'biofuel', 75, 'http://dummyimage.com/202x100.png/cc0000/ffffff'),
(632, 'Volvo', 'S80', '1.8 TSI', 'biofuel', 78, 'http://dummyimage.com/141x100.png/dddddd/000000'),
(633, 'Subaru', 'Legacy', '2.0 TSI', 'ethanol', 95, 'http://dummyimage.com/140x100.png/cc0000/ffffff'),
(634, 'Mitsubishi', 'Galant', '1.5 EcoBoost', 'methanol', 72, 'http://dummyimage.com/102x100.png/ff4444/ffffff'),
(635, 'Volkswagen', 'Cabriolet', '1.8 TSI', 'diesel', 77, 'http://dummyimage.com/168x100.png/dddddd/000000'),
(636, 'Jaguar', 'XK', '1.4 TFSI', 'methanol', 93, 'http://dummyimage.com/102x100.png/ff4444/ffffff'),
(637, 'Infiniti', 'QX56', '1.8 TSI', 'gasoline', 54, 'http://dummyimage.com/191x100.png/cc0000/ffffff'),
(638, 'Subaru', 'Legacy', '4.0 V8', 'methanol', 59, 'http://dummyimage.com/115x100.png/5fa2dd/ffffff'),
(639, 'Isuzu', 'Trooper', '1.8 TSI', 'diesel', 55, 'http://dummyimage.com/121x100.png/cc0000/ffffff'),
(640, 'Kia', 'Optima', '1.5 EcoBoost', 'biodiesel', 59, 'http://dummyimage.com/185x100.png/ff4444/ffffff'),
(641, 'Ford', 'Econoline E350', '2.2 HDI', 'electric', 88, 'http://dummyimage.com/218x100.png/5fa2dd/ffffff'),
(642, 'Toyota', 'Camry', '2.5 TDI', 'hydrogen', 81, 'http://dummyimage.com/169x100.png/cc0000/ffffff'),
(643, 'Oldsmobile', 'Achieva', '2.0 TSI', 'hydrogen', 52, 'http://dummyimage.com/202x100.png/ff4444/ffffff'),
(644, 'Ford', 'Crown Victoria', '2.0 TSI', 'biodiesel', 92, 'http://dummyimage.com/108x100.png/dddddd/000000'),
(645, 'Audi', 'Allroad', '1.4 TFSI', 'methanol', 79, 'http://dummyimage.com/117x100.png/ff4444/ffffff'),
(646, 'Kia', 'Rondo', '1.8 TSI', 'gasoline', 79, 'http://dummyimage.com/228x100.png/cc0000/ffffff'),
(647, 'Mazda', 'Mazdaspeed 3', '1.4 TFSI', 'hydrogen', 85, 'http://dummyimage.com/147x100.png/ff4444/ffffff'),
(648, 'Chevrolet', 'Tracker', '2.0 TSI', 'electric', 93, 'http://dummyimage.com/247x100.png/ff4444/ffffff'),
(649, 'Isuzu', 'i-370', '2.2 HDI', 'gasoline', 84, 'http://dummyimage.com/191x100.png/5fa2dd/ffffff'),
(650, 'Mazda', 'B-Series Plus', '2.5 TDI', 'propane', 82, 'http://dummyimage.com/202x100.png/5fa2dd/ffffff'),
(651, 'Acura', 'Integra', '1.8 TSI', 'gasoline', 74, 'http://dummyimage.com/233x100.png/5fa2dd/ffffff'),
(652, 'Maserati', 'Quattroporte', '2.5 TDI', 'biodiesel', 55, 'http://dummyimage.com/185x100.png/dddddd/000000'),
(653, 'Ford', 'F-250 Super Duty', '2.5 TDI', 'gasoline', 57, 'http://dummyimage.com/201x100.png/cc0000/ffffff'),
(654, 'Mercedes-Benz', 'SL-Class', '2.2 HDI', 'electric', 60, 'http://dummyimage.com/170x100.png/5fa2dd/ffffff'),
(655, 'Pontiac', 'Bonneville', '2.0 TSI', 'electric', 68, 'http://dummyimage.com/170x100.png/5fa2dd/ffffff'),
(656, 'Chevrolet', 'Traverse', '3.0 V6', 'natural gas', 50, 'http://dummyimage.com/248x100.png/dddddd/000000'),
(657, 'Aston Martin', 'Vantage', '1.6 TDI', 'methanol', 77, 'http://dummyimage.com/214x100.png/cc0000/ffffff'),
(658, 'BMW', 'X6 M', '1.6 TDI', 'methanol', 52, 'http://dummyimage.com/214x100.png/5fa2dd/ffffff'),
(659, 'Mercury', 'Grand Marquis', '4.0 V8', 'methanol', 78, 'http://dummyimage.com/204x100.png/cc0000/ffffff'),
(660, 'Mercedes-Benz', 'S-Class', '2.5 TDI', 'gasoline', 84, 'http://dummyimage.com/163x100.png/dddddd/000000'),
(661, 'Dodge', 'Durango', '1.4 TFSI', 'natural gas', 76, 'http://dummyimage.com/117x100.png/5fa2dd/ffffff'),
(662, 'Chevrolet', 'Astro', '2.2 HDI', 'gasoline', 54, 'http://dummyimage.com/217x100.png/ff4444/ffffff'),
(663, 'Mazda', '626', '1.4 TFSI', 'gasoline', 71, 'http://dummyimage.com/101x100.png/ff4444/ffffff'),
(664, 'Lincoln', 'Town Car', '2.5 TDI', 'diesel', 78, 'http://dummyimage.com/230x100.png/cc0000/ffffff'),
(665, 'Mazda', 'Millenia', '3.0 V6', 'biodiesel', 56, 'http://dummyimage.com/114x100.png/cc0000/ffffff'),
(666, 'Mitsubishi', 'Expo', '2.5 TDI', 'gasoline', 53, 'http://dummyimage.com/188x100.png/cc0000/ffffff'),
(667, 'Jaguar', 'XK', '2.2 HDI', 'hydrogen', 82, 'http://dummyimage.com/119x100.png/5fa2dd/ffffff'),
(668, 'Mercedes-Benz', 'SLR McLaren', '1.5 EcoBoost', 'propane', 97, 'http://dummyimage.com/220x100.png/cc0000/ffffff'),
(669, 'Maserati', 'Biturbo', '2.3 Turbo', 'diesel', 85, 'http://dummyimage.com/149x100.png/5fa2dd/ffffff'),
(670, 'Acura', 'Vigor', '1.5 EcoBoost', 'biodiesel', 88, 'http://dummyimage.com/131x100.png/cc0000/ffffff'),
(671, 'Nissan', 'Titan', '1.5 EcoBoost', 'diesel', 73, 'http://dummyimage.com/216x100.png/cc0000/ffffff'),
(672, 'Nissan', 'Stanza', '1.6 TDI', 'biofuel', 89, 'http://dummyimage.com/105x100.png/5fa2dd/ffffff'),
(673, 'Ford', 'F250', '1.4 TFSI', 'methanol', 80, 'http://dummyimage.com/136x100.png/5fa2dd/ffffff'),
(674, 'Chevrolet', 'Express', '1.5 EcoBoost', 'hydrogen', 96, 'http://dummyimage.com/201x100.png/dddddd/000000'),
(675, 'Ford', 'E350', '2.3 Turbo', 'methanol', 87, 'http://dummyimage.com/145x100.png/cc0000/ffffff'),
(676, 'Mazda', 'MX-5', '1.5 EcoBoost', 'diesel', 90, 'http://dummyimage.com/136x100.png/cc0000/ffffff'),
(677, 'Ford', 'Econoline E250', '2.0 TSI', 'gasoline', 58, 'http://dummyimage.com/193x100.png/ff4444/ffffff'),
(678, 'Dodge', 'Avenger', '2.3 Turbo', 'hydrogen', 71, 'http://dummyimage.com/100x100.png/5fa2dd/ffffff'),
(679, 'Nissan', 'Rogue', '3.0 V6', 'ethanol', 94, 'http://dummyimage.com/219x100.png/dddddd/000000'),
(680, 'MINI', 'Countryman', '1.6 TDI', 'biofuel', 73, 'http://dummyimage.com/116x100.png/cc0000/ffffff'),
(681, 'Pontiac', 'Vibe', '2.0 TSI', 'biofuel', 53, 'http://dummyimage.com/153x100.png/ff4444/ffffff'),
(682, 'Acura', 'Integra', '4.0 V8', 'biofuel', 73, 'http://dummyimage.com/225x100.png/cc0000/ffffff'),
(683, 'Subaru', 'XT', '4.0 V8', 'propane', 78, 'http://dummyimage.com/235x100.png/ff4444/ffffff'),
(684, 'GMC', 'Sonoma', '1.8 TSI', 'diesel', 92, 'http://dummyimage.com/137x100.png/dddddd/000000'),
(685, 'Geo', 'Metro', '3.0 V6', 'electric', 74, 'http://dummyimage.com/240x100.png/cc0000/ffffff'),
(686, 'Dodge', 'Neon', '1.5 EcoBoost', 'natural gas', 54, 'http://dummyimage.com/128x100.png/ff4444/ffffff'),
(687, 'Toyota', 'Camry', '1.6 TDI', 'methanol', 75, 'http://dummyimage.com/239x100.png/ff4444/ffffff'),
(688, 'GMC', 'Sierra', '2.5 TDI', 'electric', 57, 'http://dummyimage.com/186x100.png/cc0000/ffffff'),
(689, 'GMC', 'Yukon', '2.3 Turbo', 'natural gas', 81, 'http://dummyimage.com/178x100.png/dddddd/000000'),
(690, 'Pontiac', 'Grand Prix', '2.2 HDI', 'natural gas', 63, 'http://dummyimage.com/125x100.png/5fa2dd/ffffff'),
(691, 'Pontiac', 'Sunfire', '2.5 TDI', 'biodiesel', 72, 'http://dummyimage.com/113x100.png/ff4444/ffffff'),
(692, 'Jaguar', 'X-Type', '2.5 TDI', 'biofuel', 50, 'http://dummyimage.com/117x100.png/dddddd/000000'),
(693, 'Audi', 'TT', '1.4 TFSI', 'electric', 57, 'http://dummyimage.com/118x100.png/ff4444/ffffff'),
(694, 'Toyota', 'Supra', '1.4 TFSI', 'natural gas', 76, 'http://dummyimage.com/194x100.png/ff4444/ffffff'),
(695, 'Suzuki', 'Sidekick', '3.0 V6', 'diesel', 69, 'http://dummyimage.com/146x100.png/ff4444/ffffff'),
(696, 'Ford', 'Econoline E250', '2.3 Turbo', 'electric', 53, 'http://dummyimage.com/148x100.png/dddddd/000000'),
(697, 'Mercury', 'Sable', '2.0 TSI', 'propane', 60, 'http://dummyimage.com/112x100.png/dddddd/000000'),
(698, 'Buick', 'Riviera', '1.8 TSI', 'diesel', 89, 'http://dummyimage.com/114x100.png/5fa2dd/ffffff'),
(699, 'Dodge', 'Caravan', '1.4 TFSI', 'methanol', 85, 'http://dummyimage.com/120x100.png/cc0000/ffffff'),
(700, 'Volkswagen', 'R32', '1.5 EcoBoost', 'natural gas', 52, 'http://dummyimage.com/142x100.png/5fa2dd/ffffff'),
(701, 'GMC', 'Savana', '4.0 V8', 'methanol', 94, 'http://dummyimage.com/144x100.png/dddddd/000000'),
(702, 'Mercury', 'Sable', '1.5 EcoBoost', 'gasoline', 65, 'http://dummyimage.com/162x100.png/ff4444/ffffff'),
(703, 'Saab', '9-3', '3.0 V6', 'diesel', 76, 'http://dummyimage.com/244x100.png/dddddd/000000'),
(704, 'Mitsubishi', 'Outlander Sport', '2.2 HDI', 'methanol', 96, 'http://dummyimage.com/199x100.png/5fa2dd/ffffff'),
(705, 'Ford', 'Expedition EL', '1.4 TFSI', 'hydrogen', 51, 'http://dummyimage.com/185x100.png/5fa2dd/ffffff'),
(706, 'Mazda', 'MX-6', '2.2 HDI', 'natural gas', 91, 'http://dummyimage.com/110x100.png/ff4444/ffffff'),
(707, 'Audi', 'Cabriolet', '4.0 V8', 'ethanol', 76, 'http://dummyimage.com/168x100.png/cc0000/ffffff'),
(708, 'Mitsubishi', 'Precis', '2.0 TSI', 'gasoline', 87, 'http://dummyimage.com/128x100.png/cc0000/ffffff'),
(709, 'Lexus', 'LX', '2.3 Turbo', 'diesel', 97, 'http://dummyimage.com/168x100.png/dddddd/000000'),
(710, 'Maserati', 'GranTurismo', '2.2 HDI', 'gasoline', 61, 'http://dummyimage.com/221x100.png/cc0000/ffffff'),
(711, 'Mercury', 'Grand Marquis', '4.0 V8', 'ethanol', 61, 'http://dummyimage.com/230x100.png/ff4444/ffffff'),
(712, 'Ford', 'Explorer', '4.0 V8', 'propane', 75, 'http://dummyimage.com/197x100.png/ff4444/ffffff'),
(713, 'Mercedes-Benz', 'SL-Class', '1.6 TDI', 'electric', 91, 'http://dummyimage.com/176x100.png/cc0000/ffffff'),
(714, 'Toyota', 'Tacoma', '1.4 TFSI', 'propane', 75, 'http://dummyimage.com/138x100.png/dddddd/000000'),
(715, 'Pontiac', 'Daewoo Kalos', '3.0 V6', 'methanol', 82, 'http://dummyimage.com/213x100.png/ff4444/ffffff'),
(716, 'Porsche', 'Cayenne', '1.6 TDI', 'gasoline', 57, 'http://dummyimage.com/177x100.png/dddddd/000000'),
(717, 'Aptera', 'Typ-1', '2.0 TSI', 'hydrogen', 85, 'http://dummyimage.com/116x100.png/ff4444/ffffff'),
(718, 'Chevrolet', 'Corvette', '3.0 V6', 'natural gas', 94, 'http://dummyimage.com/139x100.png/5fa2dd/ffffff'),
(719, 'Pontiac', 'Vibe', '4.0 V8', 'natural gas', 95, 'http://dummyimage.com/107x100.png/cc0000/ffffff'),
(720, 'Dodge', 'Ram 1500', '4.0 V8', 'biodiesel', 66, 'http://dummyimage.com/160x100.png/ff4444/ffffff'),
(721, 'Infiniti', 'Q', '4.0 V8', 'diesel', 90, 'http://dummyimage.com/213x100.png/cc0000/ffffff'),
(722, 'Ford', 'Taurus', '2.0 TSI', 'electric', 59, 'http://dummyimage.com/213x100.png/cc0000/ffffff'),
(723, 'Chevrolet', 'Express 2500', '2.2 HDI', 'hydrogen', 84, 'http://dummyimage.com/181x100.png/cc0000/ffffff'),
(724, 'Lincoln', 'Continental', '3.0 V6', 'natural gas', 82, 'http://dummyimage.com/145x100.png/cc0000/ffffff'),
(725, 'BMW', '745', '2.5 TDI', 'natural gas', 79, 'http://dummyimage.com/111x100.png/cc0000/ffffff'),
(726, 'GMC', 'Yukon', '2.0 TSI', 'biofuel', 65, 'http://dummyimage.com/228x100.png/ff4444/ffffff'),
(727, 'Chevrolet', 'Beretta', '1.6 TDI', 'hydrogen', 51, 'http://dummyimage.com/236x100.png/5fa2dd/ffffff'),
(728, 'Infiniti', 'Q', '4.0 V8', 'gasoline', 60, 'http://dummyimage.com/199x100.png/5fa2dd/ffffff'),
(729, 'Jaguar', 'XF', '1.4 TFSI', 'biodiesel', 95, 'http://dummyimage.com/125x100.png/ff4444/ffffff'),
(730, 'Lexus', 'LS', '2.0 TSI', 'biofuel', 56, 'http://dummyimage.com/217x100.png/cc0000/ffffff'),
(731, 'Dodge', 'D150', '2.2 HDI', 'methanol', 82, 'http://dummyimage.com/231x100.png/ff4444/ffffff'),
(732, 'Dodge', 'Viper', '2.0 TSI', 'methanol', 78, 'http://dummyimage.com/109x100.png/cc0000/ffffff'),
(733, 'Acura', 'NSX', '2.0 TSI', 'biofuel', 61, 'http://dummyimage.com/106x100.png/dddddd/000000'),
(734, 'Hyundai', 'Accent', '1.6 TDI', 'ethanol', 99, 'http://dummyimage.com/117x100.png/ff4444/ffffff'),
(735, 'Acura', 'TL', '1.5 EcoBoost', 'propane', 91, 'http://dummyimage.com/195x100.png/ff4444/ffffff'),
(736, 'Volvo', 'C70', '2.3 Turbo', 'biofuel', 75, 'http://dummyimage.com/171x100.png/cc0000/ffffff'),
(737, 'Mitsubishi', 'Truck', '1.8 TSI', 'ethanol', 88, 'http://dummyimage.com/120x100.png/cc0000/ffffff'),
(738, 'Oldsmobile', '88', '2.5 TDI', 'electric', 66, 'http://dummyimage.com/161x100.png/5fa2dd/ffffff'),
(739, 'Chevrolet', 'Silverado 1500', '1.4 TFSI', 'natural gas', 64, 'http://dummyimage.com/151x100.png/5fa2dd/ffffff'),
(740, 'Cadillac', 'CTS', '2.3 Turbo', 'hydrogen', 70, 'http://dummyimage.com/213x100.png/cc0000/ffffff'),
(741, 'Kia', 'Rio', '1.8 TSI', 'electric', 91, 'http://dummyimage.com/154x100.png/5fa2dd/ffffff'),
(742, 'Ford', 'Windstar', '2.0 TSI', 'natural gas', 51, 'http://dummyimage.com/239x100.png/5fa2dd/ffffff'),
(743, 'Kia', 'Amanti', '1.5 EcoBoost', 'diesel', 68, 'http://dummyimage.com/160x100.png/5fa2dd/ffffff'),
(744, 'Volvo', '850', '1.5 EcoBoost', 'propane', 89, 'http://dummyimage.com/204x100.png/dddddd/000000'),
(745, 'Pontiac', 'Grand Prix', '2.0 TSI', 'propane', 74, 'http://dummyimage.com/224x100.png/ff4444/ffffff'),
(746, 'Subaru', 'SVX', '2.0 TSI', 'biodiesel', 98, 'http://dummyimage.com/209x100.png/dddddd/000000'),
(747, 'Lamborghini', 'Murciélago', '1.6 TDI', 'electric', 64, 'http://dummyimage.com/138x100.png/ff4444/ffffff'),
(748, 'Mitsubishi', 'Pajero', '3.0 V6', 'propane', 94, 'http://dummyimage.com/215x100.png/dddddd/000000'),
(749, 'Kia', 'Rio', '2.3 Turbo', 'biofuel', 86, 'http://dummyimage.com/226x100.png/ff4444/ffffff'),
(750, 'Honda', 'S2000', '2.3 Turbo', 'biodiesel', 50, 'http://dummyimage.com/117x100.png/dddddd/000000'),
(751, 'Ford', 'Mustang', '1.4 TFSI', 'propane', 76, 'http://dummyimage.com/149x100.png/5fa2dd/ffffff'),
(752, 'Nissan', '240SX', '2.5 TDI', 'gasoline', 98, 'http://dummyimage.com/220x100.png/5fa2dd/ffffff'),
(753, 'Jeep', 'Patriot', '1.5 EcoBoost', 'gasoline', 62, 'http://dummyimage.com/149x100.png/cc0000/ffffff'),
(754, 'Volkswagen', 'Phaeton', '1.4 TFSI', 'methanol', 52, 'http://dummyimage.com/219x100.png/5fa2dd/ffffff'),
(755, 'Subaru', 'Impreza', '2.0 TSI', 'electric', 67, 'http://dummyimage.com/203x100.png/dddddd/000000'),
(756, 'Chevrolet', 'G-Series G10', '1.5 EcoBoost', 'natural gas', 83, 'http://dummyimage.com/203x100.png/ff4444/ffffff'),
(757, 'Mercedes-Benz', 'SLK-Class', '2.5 TDI', 'biodiesel', 56, 'http://dummyimage.com/184x100.png/ff4444/ffffff'),
(758, 'Mercedes-Benz', 'CLS-Class', '3.0 V6', 'methanol', 53, 'http://dummyimage.com/117x100.png/cc0000/ffffff'),
(759, 'BMW', '5 Series', '1.4 TFSI', 'diesel', 82, 'http://dummyimage.com/232x100.png/ff4444/ffffff'),
(760, 'Buick', 'Rendezvous', '4.0 V8', 'biodiesel', 56, 'http://dummyimage.com/116x100.png/5fa2dd/ffffff'),
(761, 'Nissan', 'Sentra', '3.0 V6', 'methanol', 91, 'http://dummyimage.com/188x100.png/dddddd/000000'),
(762, 'Land Rover', 'LR3', '2.3 Turbo', 'diesel', 94, 'http://dummyimage.com/175x100.png/cc0000/ffffff'),
(763, 'Ford', 'ZX2', '3.0 V6', 'diesel', 65, 'http://dummyimage.com/176x100.png/ff4444/ffffff'),
(764, 'Mitsubishi', '3000GT', '1.4 TFSI', 'biodiesel', 81, 'http://dummyimage.com/143x100.png/5fa2dd/ffffff'),
(765, 'Holden', 'VS Commodore', '3.0 V6', 'natural gas', 66, 'http://dummyimage.com/176x100.png/ff4444/ffffff'),
(766, 'Mercedes-Benz', 'SL-Class', '2.5 TDI', 'diesel', 100, 'http://dummyimage.com/126x100.png/dddddd/000000'),
(767, 'Ford', 'Th!nk', '2.0 TSI', 'natural gas', 62, 'http://dummyimage.com/103x100.png/5fa2dd/ffffff'),
(768, 'Cadillac', 'STS', '4.0 V8', 'electric', 74, 'http://dummyimage.com/126x100.png/5fa2dd/ffffff'),
(769, 'Chevrolet', 'Equinox', '2.3 Turbo', 'methanol', 68, 'http://dummyimage.com/191x100.png/dddddd/000000'),
(770, 'BMW', 'X3', '1.8 TSI', 'biodiesel', 51, 'http://dummyimage.com/148x100.png/cc0000/ffffff'),
(771, 'Porsche', '911', '1.6 TDI', 'hydrogen', 55, 'http://dummyimage.com/111x100.png/5fa2dd/ffffff'),
(772, 'Ford', 'F450', '2.3 Turbo', 'gasoline', 77, 'http://dummyimage.com/165x100.png/5fa2dd/ffffff'),
(773, 'Volkswagen', 'Type 2', '2.2 HDI', 'biofuel', 73, 'http://dummyimage.com/114x100.png/cc0000/ffffff'),
(774, 'Volkswagen', 'CC', '2.0 TSI', 'biofuel', 94, 'http://dummyimage.com/125x100.png/cc0000/ffffff'),
(775, 'Chrysler', '300C', '1.6 TDI', 'electric', 54, 'http://dummyimage.com/188x100.png/cc0000/ffffff'),
(776, 'Chevrolet', 'Prizm', '2.3 Turbo', 'gasoline', 86, 'http://dummyimage.com/216x100.png/dddddd/000000'),
(777, 'Mercedes-Benz', 'SLK-Class', '2.5 TDI', 'gasoline', 84, 'http://dummyimage.com/158x100.png/cc0000/ffffff'),
(778, 'Ford', 'Probe', '3.0 V6', 'biodiesel', 93, 'http://dummyimage.com/196x100.png/ff4444/ffffff'),
(779, 'Cadillac', 'DeVille', '1.8 TSI', 'propane', 65, 'http://dummyimage.com/101x100.png/5fa2dd/ffffff'),
(780, 'Ford', 'Transit Connect', '1.5 EcoBoost', 'natural gas', 78, 'http://dummyimage.com/247x100.png/cc0000/ffffff'),
(781, 'Toyota', 'Land Cruiser', '2.5 TDI', 'diesel', 86, 'http://dummyimage.com/229x100.png/dddddd/000000'),
(782, 'Porsche', 'Boxster', '2.0 TSI', 'hydrogen', 67, 'http://dummyimage.com/216x100.png/cc0000/ffffff'),
(783, 'Oldsmobile', 'Regency', '1.6 TDI', 'gasoline', 90, 'http://dummyimage.com/169x100.png/cc0000/ffffff'),
(784, 'Mazda', 'Miata MX-5', '1.8 TSI', 'natural gas', 66, 'http://dummyimage.com/104x100.png/ff4444/ffffff'),
(785, 'Maserati', 'GranTurismo', '2.5 TDI', 'gasoline', 76, 'http://dummyimage.com/155x100.png/cc0000/ffffff'),
(786, 'Ford', 'Explorer', '1.5 EcoBoost', 'methanol', 98, 'http://dummyimage.com/194x100.png/dddddd/000000'),
(787, 'BMW', 'M3', '1.8 TSI', 'biodiesel', 58, 'http://dummyimage.com/178x100.png/ff4444/ffffff'),
(788, 'Pontiac', 'Bonneville', '4.0 V8', 'biofuel', 51, 'http://dummyimage.com/220x100.png/ff4444/ffffff'),
(789, 'Jaguar', 'S-Type', '1.4 TFSI', 'gasoline', 96, 'http://dummyimage.com/228x100.png/dddddd/000000'),
(790, 'Volvo', 'S80', '2.5 TDI', 'propane', 55, 'http://dummyimage.com/110x100.png/5fa2dd/ffffff'),
(791, 'Isuzu', 'i-Series', '1.8 TSI', 'gasoline', 58, 'http://dummyimage.com/114x100.png/dddddd/000000'),
(792, 'Audi', 'S4', '2.3 Turbo', 'hydrogen', 56, 'http://dummyimage.com/116x100.png/ff4444/ffffff'),
(793, 'Volkswagen', 'New Beetle', '1.5 EcoBoost', 'hydrogen', 64, 'http://dummyimage.com/111x100.png/cc0000/ffffff'),
(794, 'Volkswagen', 'Jetta', '1.4 TFSI', 'biodiesel', 89, 'http://dummyimage.com/213x100.png/cc0000/ffffff'),
(795, 'Rolls-Royce', 'Phantom', '2.3 Turbo', 'ethanol', 84, 'http://dummyimage.com/140x100.png/cc0000/ffffff'),
(796, 'Buick', 'Park Avenue', '4.0 V8', 'ethanol', 85, 'http://dummyimage.com/142x100.png/ff4444/ffffff'),
(797, 'Chrysler', 'Voyager', '4.0 V8', 'diesel', 77, 'http://dummyimage.com/210x100.png/dddddd/000000'),
(798, 'Mazda', 'RX-7', '4.0 V8', 'propane', 58, 'http://dummyimage.com/213x100.png/dddddd/000000'),
(799, 'BMW', 'X5', '2.3 Turbo', 'biodiesel', 83, 'http://dummyimage.com/134x100.png/cc0000/ffffff'),
(800, 'Ford', 'Econoline E350', '2.0 TSI', 'biofuel', 67, 'http://dummyimage.com/197x100.png/5fa2dd/ffffff'),
(801, 'Toyota', 'Celica', '2.2 HDI', 'propane', 84, 'http://dummyimage.com/114x100.png/5fa2dd/ffffff'),
(802, 'Mitsubishi', 'Outlander Sport', '1.8 TSI', 'hydrogen', 85, 'http://dummyimage.com/165x100.png/cc0000/ffffff'),
(803, 'Mercedes-Benz', 'G-Class', '2.3 Turbo', 'methanol', 67, 'http://dummyimage.com/105x100.png/cc0000/ffffff'),
(804, 'Lincoln', 'Town Car', '2.3 Turbo', 'gasoline', 67, 'http://dummyimage.com/233x100.png/dddddd/000000'),
(805, 'Volkswagen', 'Jetta', '1.5 EcoBoost', 'methanol', 92, 'http://dummyimage.com/138x100.png/dddddd/000000'),
(806, 'Suzuki', 'Swift', '4.0 V8', 'biodiesel', 79, 'http://dummyimage.com/229x100.png/cc0000/ffffff'),
(807, 'Mercedes-Benz', 'SL-Class', '2.5 TDI', 'diesel', 71, 'http://dummyimage.com/243x100.png/ff4444/ffffff'),
(808, 'Buick', 'Rendezvous', '2.2 HDI', 'methanol', 64, 'http://dummyimage.com/247x100.png/5fa2dd/ffffff'),
(809, 'Buick', 'Regal', '2.2 HDI', 'biodiesel', 98, 'http://dummyimage.com/104x100.png/5fa2dd/ffffff'),
(810, 'Mitsubishi', 'Cordia', '1.5 EcoBoost', 'methanol', 99, 'http://dummyimage.com/217x100.png/ff4444/ffffff'),
(811, 'BMW', '7 Series', '3.0 V6', 'hydrogen', 82, 'http://dummyimage.com/150x100.png/cc0000/ffffff'),
(812, 'Toyota', '4Runner', '2.2 HDI', 'ethanol', 67, 'http://dummyimage.com/212x100.png/dddddd/000000'),
(813, 'Mitsubishi', 'L300', '2.2 HDI', 'biodiesel', 61, 'http://dummyimage.com/193x100.png/5fa2dd/ffffff'),
(814, 'Oldsmobile', 'Cutlass Supreme', '1.6 TDI', 'ethanol', 61, 'http://dummyimage.com/113x100.png/ff4444/ffffff'),
(815, 'Toyota', 'Camry Solara', '2.5 TDI', 'ethanol', 84, 'http://dummyimage.com/244x100.png/5fa2dd/ffffff'),
(816, 'Kia', 'Optima', '1.5 EcoBoost', 'natural gas', 63, 'http://dummyimage.com/175x100.png/cc0000/ffffff'),
(817, 'Cadillac', 'STS', '4.0 V8', 'biofuel', 97, 'http://dummyimage.com/102x100.png/dddddd/000000'),
(818, 'Lincoln', 'Town Car', '1.6 TDI', 'gasoline', 94, 'http://dummyimage.com/196x100.png/cc0000/ffffff'),
(819, 'Audi', '5000S', '1.8 TSI', 'electric', 97, 'http://dummyimage.com/122x100.png/dddddd/000000'),
(820, 'Mitsubishi', 'Galant', '1.4 TFSI', 'propane', 52, 'http://dummyimage.com/218x100.png/dddddd/000000'),
(821, 'Dodge', 'Durango', '4.0 V8', 'methanol', 53, 'http://dummyimage.com/139x100.png/5fa2dd/ffffff'),
(822, 'Volvo', 'S60', '1.5 EcoBoost', 'biofuel', 53, 'http://dummyimage.com/189x100.png/ff4444/ffffff'),
(823, 'Audi', 'Quattro', '4.0 V8', 'propane', 98, 'http://dummyimage.com/226x100.png/5fa2dd/ffffff'),
(824, 'Dodge', 'Ram Wagon B250', '1.8 TSI', 'diesel', 92, 'http://dummyimage.com/243x100.png/dddddd/000000'),
(825, 'Volvo', 'XC90', '2.5 TDI', 'propane', 65, 'http://dummyimage.com/166x100.png/cc0000/ffffff'),
(826, 'GMC', 'Canyon', '2.5 TDI', 'electric', 80, 'http://dummyimage.com/217x100.png/ff4444/ffffff'),
(827, 'BMW', 'M3', '2.2 HDI', 'propane', 50, 'http://dummyimage.com/179x100.png/5fa2dd/ffffff'),
(828, 'Lincoln', 'Navigator', '2.2 HDI', 'electric', 82, 'http://dummyimage.com/150x100.png/cc0000/ffffff'),
(829, 'Nissan', 'Maxima', '1.5 EcoBoost', 'gasoline', 55, 'http://dummyimage.com/242x100.png/5fa2dd/ffffff'),
(830, 'Chevrolet', 'Equinox', '2.3 Turbo', 'propane', 79, 'http://dummyimage.com/206x100.png/ff4444/ffffff'),
(831, 'Lexus', 'ES', '3.0 V6', 'natural gas', 65, 'http://dummyimage.com/226x100.png/dddddd/000000'),
(832, 'Toyota', 'Highlander', '2.2 HDI', 'biodiesel', 78, 'http://dummyimage.com/185x100.png/5fa2dd/ffffff'),
(833, 'Aston Martin', 'V8 Vantage S', '3.0 V6', 'ethanol', 92, 'http://dummyimage.com/131x100.png/cc0000/ffffff'),
(834, 'Toyota', 'Avalon', '1.4 TFSI', 'natural gas', 65, 'http://dummyimage.com/240x100.png/cc0000/ffffff'),
(835, 'Buick', 'Somerset', '2.5 TDI', 'natural gas', 76, 'http://dummyimage.com/170x100.png/5fa2dd/ffffff'),
(836, 'Honda', 'CR-V', '1.8 TSI', 'propane', 67, 'http://dummyimage.com/186x100.png/ff4444/ffffff'),
(837, 'Scion', 'xD', '3.0 V6', 'propane', 73, 'http://dummyimage.com/204x100.png/5fa2dd/ffffff'),
(838, 'Mitsubishi', 'Galant', '2.5 TDI', 'diesel', 60, 'http://dummyimage.com/118x100.png/ff4444/ffffff'),
(839, 'Maserati', 'Biturbo', '4.0 V8', 'biofuel', 60, 'http://dummyimage.com/119x100.png/cc0000/ffffff'),
(840, 'Mercedes-Benz', 'S-Class', '1.5 EcoBoost', 'methanol', 63, 'http://dummyimage.com/126x100.png/5fa2dd/ffffff'),
(841, 'Pontiac', 'Bonneville', '4.0 V8', 'gasoline', 51, 'http://dummyimage.com/236x100.png/ff4444/ffffff'),
(842, 'Oldsmobile', '98', '2.3 Turbo', 'propane', 90, 'http://dummyimage.com/234x100.png/ff4444/ffffff'),
(843, 'Pontiac', 'Grand Prix', '2.5 TDI', 'hydrogen', 75, 'http://dummyimage.com/132x100.png/cc0000/ffffff'),
(844, 'Dodge', 'Viper', '1.6 TDI', 'electric', 80, 'http://dummyimage.com/180x100.png/ff4444/ffffff'),
(845, 'Chevrolet', 'Express 1500', '2.0 TSI', 'ethanol', 71, 'http://dummyimage.com/129x100.png/dddddd/000000'),
(846, 'BMW', '545', '3.0 V6', 'gasoline', 74, 'http://dummyimage.com/240x100.png/dddddd/000000'),
(847, 'Porsche', 'Cayman', '4.0 V8', 'electric', 78, 'http://dummyimage.com/156x100.png/dddddd/000000'),
(848, 'Nissan', 'Maxima', '2.3 Turbo', 'biofuel', 50, 'http://dummyimage.com/236x100.png/cc0000/ffffff'),
(849, 'Jeep', 'Grand Cherokee', '4.0 V8', 'propane', 69, 'http://dummyimage.com/105x100.png/5fa2dd/ffffff'),
(850, 'Subaru', 'Justy', '1.4 TFSI', 'propane', 58, 'http://dummyimage.com/169x100.png/dddddd/000000'),
(851, 'Nissan', 'Pathfinder', '1.5 EcoBoost', 'ethanol', 72, 'http://dummyimage.com/230x100.png/5fa2dd/ffffff'),
(852, 'Nissan', 'Altima', '3.0 V6', 'methanol', 65, 'http://dummyimage.com/173x100.png/cc0000/ffffff'),
(853, 'Bentley', 'Continental Flying Spur', '2.0 TSI', 'electric', 93, 'http://dummyimage.com/155x100.png/cc0000/ffffff'),
(854, 'Honda', 'Accord', '3.0 V6', 'electric', 60, 'http://dummyimage.com/104x100.png/cc0000/ffffff'),
(855, 'BMW', '3 Series', '2.5 TDI', 'hydrogen', 61, 'http://dummyimage.com/227x100.png/dddddd/000000'),
(856, 'Volkswagen', 'Fox', '4.0 V8', 'gasoline', 62, 'http://dummyimage.com/112x100.png/5fa2dd/ffffff'),
(857, 'Audi', 'A8', '2.5 TDI', 'gasoline', 84, 'http://dummyimage.com/116x100.png/5fa2dd/ffffff'),
(858, 'Mazda', '626', '1.8 TSI', 'biodiesel', 65, 'http://dummyimage.com/214x100.png/ff4444/ffffff'),
(859, 'Plymouth', 'Acclaim', '1.6 TDI', 'biofuel', 99, 'http://dummyimage.com/247x100.png/ff4444/ffffff'),
(860, 'Nissan', 'Sentra', '1.8 TSI', 'ethanol', 72, 'http://dummyimage.com/220x100.png/5fa2dd/ffffff'),
(861, 'Volkswagen', 'Golf', '1.5 EcoBoost', 'ethanol', 88, 'http://dummyimage.com/173x100.png/cc0000/ffffff'),
(862, 'BMW', '530', '2.3 Turbo', 'biodiesel', 66, 'http://dummyimage.com/177x100.png/dddddd/000000'),
(863, 'Lexus', 'LS', '1.8 TSI', 'propane', 99, 'http://dummyimage.com/235x100.png/cc0000/ffffff'),
(864, 'Mercury', 'Villager', '1.8 TSI', 'hydrogen', 92, 'http://dummyimage.com/218x100.png/cc0000/ffffff'),
(865, 'Saab', '900', '2.3 Turbo', 'gasoline', 92, 'http://dummyimage.com/210x100.png/5fa2dd/ffffff'),
(866, 'Saab', '9-5', '4.0 V8', 'electric', 95, 'http://dummyimage.com/167x100.png/dddddd/000000'),
(867, 'Mercedes-Benz', 'SL-Class', '2.3 Turbo', 'electric', 63, 'http://dummyimage.com/127x100.png/cc0000/ffffff'),
(868, 'Jeep', 'Liberty', '1.6 TDI', 'methanol', 99, 'http://dummyimage.com/237x100.png/5fa2dd/ffffff'),
(869, 'Subaru', 'Outback', '1.5 EcoBoost', 'biofuel', 65, 'http://dummyimage.com/166x100.png/cc0000/ffffff'),
(870, 'Volkswagen', 'Tiguan', '1.8 TSI', 'gasoline', 87, 'http://dummyimage.com/208x100.png/ff4444/ffffff'),
(871, 'Chevrolet', 'Impala', '2.3 Turbo', 'natural gas', 69, 'http://dummyimage.com/230x100.png/dddddd/000000'),
(872, 'Mitsubishi', 'Truck', '1.6 TDI', 'gasoline', 50, 'http://dummyimage.com/112x100.png/cc0000/ffffff'),
(873, 'Mazda', 'B-Series', '1.8 TSI', 'biofuel', 96, 'http://dummyimage.com/219x100.png/5fa2dd/ffffff'),
(874, 'Toyota', 'T100 Xtra', '2.0 TSI', 'electric', 92, 'http://dummyimage.com/107x100.png/ff4444/ffffff'),
(875, 'Toyota', 'Echo', '1.6 TDI', 'electric', 56, 'http://dummyimage.com/168x100.png/cc0000/ffffff'),
(876, 'Suzuki', 'SJ', '1.4 TFSI', 'natural gas', 75, 'http://dummyimage.com/230x100.png/ff4444/ffffff'),
(877, 'Mitsubishi', 'Montero Sport', '1.5 EcoBoost', 'natural gas', 90, 'http://dummyimage.com/154x100.png/cc0000/ffffff'),
(878, 'Toyota', 'Echo', '1.4 TFSI', 'ethanol', 100, 'http://dummyimage.com/162x100.png/ff4444/ffffff'),
(879, 'Mercedes-Benz', 'SL-Class', '3.0 V6', 'electric', 58, 'http://dummyimage.com/154x100.png/dddddd/000000'),
(880, 'Mercury', 'Sable', '4.0 V8', 'biodiesel', 53, 'http://dummyimage.com/235x100.png/ff4444/ffffff'),
(881, 'BMW', '7 Series', '4.0 V8', 'gasoline', 97, 'http://dummyimage.com/134x100.png/5fa2dd/ffffff'),
(882, 'Chrysler', '300M', '3.0 V6', 'hydrogen', 56, 'http://dummyimage.com/117x100.png/5fa2dd/ffffff'),
(883, 'Mercedes-Benz', 'C-Class', '1.4 TFSI', 'natural gas', 55, 'http://dummyimage.com/159x100.png/5fa2dd/ffffff'),
(884, 'Lincoln', 'Continental Mark VII', '1.8 TSI', 'biofuel', 70, 'http://dummyimage.com/166x100.png/dddddd/000000'),
(885, 'Dodge', 'Dakota', '4.0 V8', 'methanol', 97, 'http://dummyimage.com/150x100.png/5fa2dd/ffffff'),
(886, 'BMW', 'X6', '2.5 TDI', 'biofuel', 62, 'http://dummyimage.com/199x100.png/cc0000/ffffff'),
(887, 'Chevrolet', 'Express 1500', '2.0 TSI', 'hydrogen', 83, 'http://dummyimage.com/189x100.png/dddddd/000000'),
(888, 'Infiniti', 'I', '2.3 Turbo', 'ethanol', 69, 'http://dummyimage.com/243x100.png/ff4444/ffffff'),
(889, 'Mazda', 'B-Series', '2.3 Turbo', 'biofuel', 78, 'http://dummyimage.com/142x100.png/ff4444/ffffff'),
(890, 'Subaru', 'Loyale', '3.0 V6', 'hydrogen', 71, 'http://dummyimage.com/194x100.png/ff4444/ffffff'),
(891, 'Lexus', 'RX', '2.0 TSI', 'ethanol', 91, 'http://dummyimage.com/117x100.png/dddddd/000000'),
(892, 'Ford', 'Aerostar', '1.8 TSI', 'hydrogen', 63, 'http://dummyimage.com/176x100.png/ff4444/ffffff'),
(893, 'Cadillac', 'SRX', '1.4 TFSI', 'biodiesel', 96, 'http://dummyimage.com/153x100.png/dddddd/000000'),
(894, 'Subaru', 'Impreza', '2.2 HDI', 'electric', 95, 'http://dummyimage.com/246x100.png/dddddd/000000'),
(895, 'Chrysler', 'Pacifica', '2.5 TDI', 'natural gas', 55, 'http://dummyimage.com/171x100.png/cc0000/ffffff'),
(896, 'Honda', 'Civic', '1.5 EcoBoost', 'hydrogen', 99, 'http://dummyimage.com/238x100.png/5fa2dd/ffffff'),
(897, 'Rolls-Royce', 'Phantom', '2.0 TSI', 'ethanol', 71, 'http://dummyimage.com/216x100.png/ff4444/ffffff'),
(898, 'Cadillac', 'Seville', '2.2 HDI', 'electric', 98, 'http://dummyimage.com/205x100.png/5fa2dd/ffffff'),
(899, 'Suzuki', 'Aerio', '2.0 TSI', 'diesel', 99, 'http://dummyimage.com/124x100.png/ff4444/ffffff'),
(900, 'GMC', 'Safari', '2.2 HDI', 'natural gas', 60, 'http://dummyimage.com/247x100.png/cc0000/ffffff'),
(901, 'Ford', 'Focus', '2.5 TDI', 'methanol', 92, 'http://dummyimage.com/247x100.png/5fa2dd/ffffff'),
(902, 'Pontiac', 'Chevette', '1.5 EcoBoost', 'natural gas', 72, 'http://dummyimage.com/197x100.png/cc0000/ffffff'),
(903, 'Nissan', 'Altima', '2.5 TDI', 'diesel', 73, 'http://dummyimage.com/232x100.png/cc0000/ffffff'),
(904, 'Audi', '5000S', '2.2 HDI', 'biofuel', 73, 'http://dummyimage.com/228x100.png/dddddd/000000'),
(905, 'Mercedes-Benz', 'E-Class', '1.4 TFSI', 'diesel', 83, 'http://dummyimage.com/239x100.png/dddddd/000000'),
(906, 'Dodge', 'Dakota Club', '2.0 TSI', 'biofuel', 66, 'http://dummyimage.com/149x100.png/5fa2dd/ffffff'),
(907, 'GMC', 'Vandura 3500', '1.8 TSI', 'methanol', 73, 'http://dummyimage.com/208x100.png/dddddd/000000'),
(908, 'Chevrolet', 'Avalanche', '2.3 Turbo', 'gasoline', 50, 'http://dummyimage.com/227x100.png/ff4444/ffffff'),
(909, 'Dodge', 'Ram 2500', '2.5 TDI', 'electric', 94, 'http://dummyimage.com/233x100.png/cc0000/ffffff'),
(910, 'Chevrolet', 'Colorado', '1.5 EcoBoost', 'hydrogen', 97, 'http://dummyimage.com/126x100.png/ff4444/ffffff'),
(911, 'Mercury', 'Milan', '2.2 HDI', 'diesel', 61, 'http://dummyimage.com/106x100.png/dddddd/000000'),
(912, 'Chevrolet', 'Suburban 2500', '3.0 V6', 'propane', 82, 'http://dummyimage.com/235x100.png/ff4444/ffffff'),
(913, 'Infiniti', 'G', '1.8 TSI', 'natural gas', 53, 'http://dummyimage.com/226x100.png/ff4444/ffffff'),
(914, 'Chrysler', 'New Yorker', '3.0 V6', 'ethanol', 58, 'http://dummyimage.com/191x100.png/5fa2dd/ffffff'),
(915, 'GMC', 'Sonoma', '3.0 V6', 'electric', 99, 'http://dummyimage.com/159x100.png/cc0000/ffffff'),
(916, 'Mazda', '626', '2.2 HDI', 'gasoline', 54, 'http://dummyimage.com/183x100.png/dddddd/000000'),
(917, 'Audi', 'A4', '4.0 V8', 'hydrogen', 85, 'http://dummyimage.com/203x100.png/ff4444/ffffff'),
(918, 'Mercedes-Benz', 'W123', '2.2 HDI', 'gasoline', 55, 'http://dummyimage.com/235x100.png/ff4444/ffffff'),
(919, 'Dodge', 'Journey', '1.8 TSI', 'gasoline', 87, 'http://dummyimage.com/185x100.png/dddddd/000000'),
(920, 'Dodge', 'Dakota Club', '4.0 V8', 'biodiesel', 63, 'http://dummyimage.com/123x100.png/5fa2dd/ffffff'),
(921, 'Buick', 'Regal', '3.0 V6', 'biodiesel', 75, 'http://dummyimage.com/130x100.png/ff4444/ffffff'),
(922, 'Toyota', 'Xtra', '2.2 HDI', 'natural gas', 60, 'http://dummyimage.com/132x100.png/5fa2dd/ffffff'),
(923, 'Hyundai', 'Azera', '2.0 TSI', 'ethanol', 79, 'http://dummyimage.com/242x100.png/dddddd/000000'),
(924, 'Bentley', 'Continental', '1.4 TFSI', 'diesel', 77, 'http://dummyimage.com/142x100.png/5fa2dd/ffffff'),
(925, 'Mercedes-Benz', 'S-Class', '2.2 HDI', 'gasoline', 55, 'http://dummyimage.com/201x100.png/cc0000/ffffff'),
(926, 'Acura', 'RL', '1.5 EcoBoost', 'electric', 58, 'http://dummyimage.com/154x100.png/5fa2dd/ffffff'),
(927, 'Chrysler', 'Sebring', '2.2 HDI', 'gasoline', 89, 'http://dummyimage.com/248x100.png/dddddd/000000'),
(928, 'Ford', 'ZX2', '4.0 V8', 'natural gas', 87, 'http://dummyimage.com/142x100.png/dddddd/000000'),
(929, 'Chevrolet', 'Blazer', '1.8 TSI', 'biofuel', 75, 'http://dummyimage.com/185x100.png/5fa2dd/ffffff'),
(930, 'Porsche', '928', '3.0 V6', 'propane', 68, 'http://dummyimage.com/168x100.png/5fa2dd/ffffff'),
(931, 'Volkswagen', 'Jetta', '2.2 HDI', 'natural gas', 100, 'http://dummyimage.com/207x100.png/dddddd/000000'),
(932, 'Saab', '9-7X', '1.6 TDI', 'biofuel', 97, 'http://dummyimage.com/230x100.png/cc0000/ffffff'),
(933, 'GMC', '3500', '2.3 Turbo', 'methanol', 55, 'http://dummyimage.com/232x100.png/dddddd/000000'),
(934, 'Pontiac', 'Sunbird', '3.0 V6', 'natural gas', 65, 'http://dummyimage.com/121x100.png/5fa2dd/ffffff'),
(935, 'Audi', 'A6', '1.5 EcoBoost', 'biodiesel', 55, 'http://dummyimage.com/160x100.png/cc0000/ffffff'),
(936, 'Isuzu', 'Oasis', '2.3 Turbo', 'gasoline', 73, 'http://dummyimage.com/144x100.png/5fa2dd/ffffff'),
(937, 'Mercedes-Benz', 'SL-Class', '1.5 EcoBoost', 'natural gas', 71, 'http://dummyimage.com/119x100.png/5fa2dd/ffffff'),
(938, 'Cadillac', 'DeVille', '2.5 TDI', 'methanol', 62, 'http://dummyimage.com/178x100.png/dddddd/000000'),
(939, 'Mercury', 'Villager', '2.3 Turbo', 'electric', 75, 'http://dummyimage.com/211x100.png/cc0000/ffffff'),
(940, 'Suzuki', 'Verona', '1.8 TSI', 'diesel', 80, 'http://dummyimage.com/199x100.png/ff4444/ffffff'),
(941, 'Mazda', 'MPV', '3.0 V6', 'ethanol', 79, 'http://dummyimage.com/107x100.png/cc0000/ffffff'),
(942, 'Lexus', 'RX Hybrid', '2.5 TDI', 'diesel', 77, 'http://dummyimage.com/129x100.png/5fa2dd/ffffff'),
(943, 'Chevrolet', 'G-Series G10', '2.5 TDI', 'electric', 54, 'http://dummyimage.com/100x100.png/ff4444/ffffff'),
(944, 'Jeep', 'Wrangler', '2.5 TDI', 'biofuel', 71, 'http://dummyimage.com/189x100.png/5fa2dd/ffffff'),
(945, 'Cadillac', 'DeVille', '3.0 V6', 'gasoline', 57, 'http://dummyimage.com/144x100.png/5fa2dd/ffffff'),
(946, 'Jaguar', 'XJ Series', '3.0 V6', 'methanol', 81, 'http://dummyimage.com/213x100.png/5fa2dd/ffffff'),
(947, 'Toyota', 'Corolla', '2.3 Turbo', 'diesel', 54, 'http://dummyimage.com/226x100.png/cc0000/ffffff'),
(948, 'Honda', 'Pilot', '1.8 TSI', 'natural gas', 84, 'http://dummyimage.com/110x100.png/5fa2dd/ffffff'),
(949, 'Chevrolet', 'Suburban 1500', '2.0 TSI', 'natural gas', 93, 'http://dummyimage.com/207x100.png/dddddd/000000'),
(950, 'GMC', 'Envoy', '1.5 EcoBoost', 'methanol', 90, 'http://dummyimage.com/134x100.png/ff4444/ffffff'),
(951, 'Toyota', 'Sienna', '3.0 V6', 'electric', 67, 'http://dummyimage.com/128x100.png/cc0000/ffffff'),
(952, 'Rolls-Royce', 'Phantom', '1.4 TFSI', 'propane', 92, 'http://dummyimage.com/167x100.png/ff4444/ffffff'),
(953, 'Ford', 'LTD Crown Victoria', '1.5 EcoBoost', 'propane', 84, 'http://dummyimage.com/214x100.png/5fa2dd/ffffff'),
(954, 'Suzuki', 'Grand Vitara', '2.0 TSI', 'methanol', 54, 'http://dummyimage.com/181x100.png/5fa2dd/ffffff'),
(955, 'BMW', '5 Series', '3.0 V6', 'biodiesel', 85, 'http://dummyimage.com/153x100.png/dddddd/000000');
INSERT INTO `cars` (`id`, `mark`, `model`, `engine`, `fuel`, `price`, `image`) VALUES
(956, 'Toyota', '4Runner', '2.3 Turbo', 'hydrogen', 94, 'http://dummyimage.com/131x100.png/ff4444/ffffff'),
(957, 'Buick', 'Electra', '1.6 TDI', 'biodiesel', 65, 'http://dummyimage.com/225x100.png/ff4444/ffffff'),
(958, 'Infiniti', 'I', '2.5 TDI', 'propane', 99, 'http://dummyimage.com/151x100.png/ff4444/ffffff'),
(959, 'Pontiac', 'Firebird', '1.4 TFSI', 'methanol', 54, 'http://dummyimage.com/126x100.png/ff4444/ffffff'),
(960, 'Isuzu', 'Trooper', '2.0 TSI', 'ethanol', 67, 'http://dummyimage.com/248x100.png/dddddd/000000'),
(961, 'Isuzu', 'Ascender', '2.3 Turbo', 'propane', 84, 'http://dummyimage.com/138x100.png/cc0000/ffffff'),
(962, 'GMC', 'Savana 2500', '2.5 TDI', 'biofuel', 99, 'http://dummyimage.com/178x100.png/ff4444/ffffff'),
(963, 'Cadillac', 'SRX', '1.5 EcoBoost', 'methanol', 77, 'http://dummyimage.com/206x100.png/cc0000/ffffff'),
(964, 'Volkswagen', 'Jetta', '4.0 V8', 'electric', 64, 'http://dummyimage.com/222x100.png/dddddd/000000'),
(965, 'Kia', 'Rio', '3.0 V6', 'ethanol', 86, 'http://dummyimage.com/234x100.png/ff4444/ffffff'),
(966, 'Pontiac', 'Grand Prix', '1.6 TDI', 'biofuel', 59, 'http://dummyimage.com/200x100.png/cc0000/ffffff'),
(967, 'Dodge', 'Nitro', '1.4 TFSI', 'methanol', 62, 'http://dummyimage.com/179x100.png/5fa2dd/ffffff'),
(968, 'Dodge', 'Ram Van 2500', '3.0 V6', 'natural gas', 99, 'http://dummyimage.com/214x100.png/ff4444/ffffff'),
(969, 'Mercedes-Benz', 'SL-Class', '3.0 V6', 'biofuel', 82, 'http://dummyimage.com/229x100.png/dddddd/000000'),
(970, 'Plymouth', 'Colt Vista', '2.0 TSI', 'biofuel', 71, 'http://dummyimage.com/115x100.png/dddddd/000000'),
(971, 'BMW', 'X5', '2.5 TDI', 'diesel', 69, 'http://dummyimage.com/171x100.png/ff4444/ffffff'),
(972, 'Toyota', 'TundraMax', '2.5 TDI', 'diesel', 58, 'http://dummyimage.com/139x100.png/dddddd/000000'),
(973, 'Dodge', 'Intrepid', '2.0 TSI', 'propane', 55, 'http://dummyimage.com/248x100.png/5fa2dd/ffffff'),
(974, 'Audi', 'R8', '1.4 TFSI', 'methanol', 75, 'http://dummyimage.com/208x100.png/ff4444/ffffff'),
(975, 'Pontiac', 'Grand Am', '1.6 TDI', 'natural gas', 90, 'http://dummyimage.com/115x100.png/5fa2dd/ffffff'),
(976, 'Pontiac', '1000', '1.6 TDI', 'natural gas', 92, 'http://dummyimage.com/231x100.png/5fa2dd/ffffff'),
(977, 'Dodge', 'Caliber', '1.6 TDI', 'methanol', 84, 'http://dummyimage.com/146x100.png/5fa2dd/ffffff'),
(978, 'Lexus', 'LS', '1.4 TFSI', 'natural gas', 90, 'http://dummyimage.com/104x100.png/ff4444/ffffff'),
(979, 'Audi', '100', '1.5 EcoBoost', 'natural gas', 57, 'http://dummyimage.com/189x100.png/cc0000/ffffff'),
(980, 'Lexus', 'SC', '1.6 TDI', 'diesel', 64, 'http://dummyimage.com/209x100.png/ff4444/ffffff'),
(981, 'Cadillac', 'CTS', '2.0 TSI', 'gasoline', 51, 'http://dummyimage.com/228x100.png/cc0000/ffffff'),
(982, 'Volkswagen', 'Jetta', '2.3 Turbo', 'gasoline', 56, 'http://dummyimage.com/152x100.png/ff4444/ffffff'),
(983, 'Porsche', 'Cayman', '4.0 V8', 'biodiesel', 72, 'http://dummyimage.com/159x100.png/cc0000/ffffff'),
(984, 'Toyota', 'Tercel', '1.8 TSI', 'biodiesel', 61, 'http://dummyimage.com/125x100.png/dddddd/000000'),
(985, 'Land Rover', 'Range Rover Sport', '1.8 TSI', 'biodiesel', 59, 'http://dummyimage.com/186x100.png/ff4444/ffffff'),
(986, 'Saturn', 'VUE', '1.8 TSI', 'propane', 62, 'http://dummyimage.com/193x100.png/ff4444/ffffff'),
(987, 'Cadillac', 'SRX', '1.8 TSI', 'propane', 55, 'http://dummyimage.com/232x100.png/5fa2dd/ffffff'),
(988, 'GMC', 'Sierra', '2.0 TSI', 'propane', 68, 'http://dummyimage.com/132x100.png/5fa2dd/ffffff'),
(989, 'Kia', 'Rio', '1.5 EcoBoost', 'hydrogen', 79, 'http://dummyimage.com/176x100.png/cc0000/ffffff'),
(990, 'Pontiac', 'LeMans', '2.3 Turbo', 'diesel', 66, 'http://dummyimage.com/162x100.png/ff4444/ffffff'),
(991, 'Hyundai', 'Santa Fe', '1.4 TFSI', 'biodiesel', 87, 'http://dummyimage.com/104x100.png/ff4444/ffffff'),
(992, 'Land Rover', 'Range Rover', '1.5 EcoBoost', 'propane', 81, 'http://dummyimage.com/177x100.png/dddddd/000000'),
(993, 'Mercedes-Benz', 'CLK-Class', '2.3 Turbo', 'biofuel', 71, 'http://dummyimage.com/127x100.png/cc0000/ffffff'),
(994, 'Mazda', '626', '1.4 TFSI', 'biodiesel', 99, 'http://dummyimage.com/175x100.png/cc0000/ffffff'),
(995, 'Buick', 'Century', '2.5 TDI', 'gasoline', 54, 'http://dummyimage.com/238x100.png/ff4444/ffffff'),
(996, 'Lexus', 'GX', '2.3 Turbo', 'gasoline', 61, 'http://dummyimage.com/225x100.png/ff4444/ffffff'),
(997, 'Volkswagen', 'Golf', '4.0 V8', 'biofuel', 83, 'http://dummyimage.com/237x100.png/5fa2dd/ffffff'),
(998, 'Honda', 'S2000', '1.8 TSI', 'electric', 52, 'http://dummyimage.com/179x100.png/cc0000/ffffff'),
(999, 'Nissan', 'Sentra', '1.6 TDI', 'electric', 81, 'http://dummyimage.com/181x100.png/5fa2dd/ffffff'),
(1000, 'Toyota', 'Prius', '2.2 HDI', 'gasoline', 94, 'http://dummyimage.com/123x100.png/ff4444/ffffff'),
(1001, 'Lexus', 'RX', '2.2 HDI', 'gasoline', 72, 'http://dummyimage.com/127x100.png/5fa2dd/ffffff'),
(1002, 'Pontiac', 'Grand Am', '1.8 TSI', 'propane', 90, 'http://dummyimage.com/246x100.png/cc0000/ffffff');

--
-- Indeksid tõmmistatud tabelitele
--

--
-- Indeksid tabelile `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT tõmmistatud tabelitele
--

--
-- AUTO_INCREMENT tabelile `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1003;
--
-- Andmebaas: `php`
--
CREATE DATABASE IF NOT EXISTS `php` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `php`;
--
-- Andmebaas: `phpkt`
--
CREATE DATABASE IF NOT EXISTS `phpkt` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `phpkt`;
--
-- Andmebaas: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Andmete tõmmistamine tabelile `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2019-10-21 13:37:09', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indeksid tõmmistatud tabelitele
--

--
-- Indeksid tabelile `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indeksid tabelile `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indeksid tabelile `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indeksid tabelile `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indeksid tabelile `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indeksid tabelile `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indeksid tabelile `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indeksid tabelile `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indeksid tabelile `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indeksid tabelile `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indeksid tabelile `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indeksid tabelile `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indeksid tabelile `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indeksid tabelile `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indeksid tabelile `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indeksid tabelile `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indeksid tabelile `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indeksid tabelile `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indeksid tabelile `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT tõmmistatud tabelitele
--

--
-- AUTO_INCREMENT tabelile `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT tabelile `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT tabelile `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT tabelile `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT tabelile `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT tabelile `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Andmebaas: `pildid`
--
CREATE DATABASE IF NOT EXISTS `pildid` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pildid`;
--
-- Andmebaas: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
