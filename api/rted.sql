-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- 

Host: 127.0.0.1
-- Generation Time: Jan 12, 2016 at 07:57 AM
-- Server 

version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = 

"NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET 

@OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET 

@OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET 

@OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES 

utf8mb4 */;

--
-- Database: `rted`
--

-- 

--------------------------------------------------------

--
-- Table 

structure for table `building`
--

CREATE TABLE `building` (
  `id` int(10) 

NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` mediumtext NOT NULL
) 

ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table 

`building`
--

INSERT INTO `building` (`id`, `name`, `url`) VALUES
(1, 

'haida', 'http://ion.energy.ubc.ca/ion/Historical/DisplayLogs.aspx?

queryId=831317ed-1695-4a28-a197-9d9bad7e727e&dgm=x-

pml:/diagrams/ud/UBC_SUS/sub_diagrams/sub_diagram_totem

%20park.dgm&node=VIP.BIS-APPIONPME-P&logServerName=QUERYSERVER.BIS-

APPIONPME-P&logServerHandle=327952&isEventLog='),
(2, 'salish', 

'http://ion.energy.ubc.ca/ion/Historical/DisplayLogs.aspx?

queryId=831317ed-1695-4a28-a197-9d9bad7e727e&dgm=x-

pml:/diagrams/ud/UBC_SUS/sub_diagrams/sub_diagram_totem

%20park.dgm&node=VIP.BIS-APPIONPME-P&logServerName=QUERYSERVER.BIS-

APPIONPME-P&logServerHandle=327952&isEventLog='),
(3, 'nootka', 

'http://ion.energy.ubc.ca/ion/Historical/DisplayLogs.aspx?

queryId=831317ed-1695-4a28-a197-9d9bad7e727e&dgm=x-

pml:/diagrams/ud/UBC_SUS/sub_diagrams/sub_diagram_totem

%20park.dgm&node=VIP.BIS-APPIONPME-P&logServerName=QUERYSERVER.BIS-

APPIONPME-P&logServerHandle=327952&isEventLog='),
(4, 'dene', 

'http://ion.energy.ubc.ca/ion/Historical/DisplayLogs.aspx?

queryId=831317ed-1695-4a28-a197-9d9bad7e727e&dgm=x-

pml:/diagrams/ud/UBC_SUS/sub_diagrams/sub_diagram_totem

%20park.dgm&node=VIP.BIS-APPIONPME-P&logServerName=QUERYSERVER.BIS-

APPIONPME-P&logServerHandle=327952&isEventLog='),
(5, 'shuswap', 

'http://ion.energy.ubc.ca/ion/Historical/DisplayLogs.aspx?

queryId=831317ed-1695-4a28-a197-9d9bad7e727e&dgm=x-

pml:/diagrams/ud/UBC_SUS/sub_diagrams/sub_diagram_totem

%20park.dgm&node=VIP.BIS-APPIONPME-P&logServerName=QUERYSERVER.BIS-

APPIONPME-P&logServerHandle=327952&isEventLog='),
(6, 'ritsumeikan', 

'http://ion.energy.ubc.ca/ion/Historical/DisplayLogs.aspx?

queryId=831317ed-1695-4a28-a197-9d9bad7e727e&dgm=x-

pml:/diagrams/ud/UBC_SUS/sub_diagrams/sub_diagram_totem

%20park.dgm&node=VIP.BIS-APPIONPME-P&logServerName=QUERYSERVER.BIS-

APPIONPME-P&logServerHandle=327952&isEventLog='),
(7, 'Brock_Hall', 

'http://ion.energy.ubc.ca/ion/Historical/DisplayLogs.aspx?

queryId=f6b9062f-2973-485f-a21f-ae3f4c411a89&dgm=//bis-appionpme-p/ION-

Ent/config/diagrams/ud/UBC_SUS/sub_diagrams/Brock_Hall_112-

device_template_elec.dgm&node=Buildings.Brock_Hall_112&logServerName=QUERY

SERVER.BIS-APPIONPME-P&logServerHandle=327952&isEventLog='),
(8, 'CIRS', 

'http://ion.energy.ubc.ca/ion/Historical/DisplayLogs.aspx?

queryId=f6b9062f-2973-485f-a21f-ae3f4c411a89&dgm=x-

pml:/diagrams/ud/UBC_SUS/sub_diagrams/CIRS_633-

device_template_elec.dgm&node=Buildings.CIRS_633&logServerName=QUERYSERVER

.BIS-APPIONPME-P&logServerHandle=327952&isEventLog='),
(9, 'Sing_Tao', 

'google.com/jhgsfj'),
(10, 'Kaiser', 

'http://ion.energy.ubc.ca/ion/Historical/DisplayLogs.aspx?

queryId=f6b9062f-2973-485f-a21f-ae3f4c411a89&dgm=//bis-appionpme-p/ION-

Ent/config/diagrams/ud/UBC_SUS/sub_diagrams/Kaiser_313-

device_template_elec.dgm&node=Buildings.Kaiser_313&logServerName=QUERYSERV

ER.BIS-APPIONPME-P&logServerHandle=327952&isEventLog='),
(11, 'Kenny', 

'http://ion.energy.ubc.ca/ion/Historical/DisplayLogs.aspx?

queryId=f6b9062f-2973-485f-a21f-ae3f4c411a89&dgm=x-

pml:/diagrams/ud/UBC_SUS/sub_diagrams/Kenny_732-

device_template_elec.dgm&node=Buildings.Kenny_732&logServerName=QUERYSERVE

R.BIS-APPIONPME-P&logServerHandle=327952&isEventLog='),
(12, 

'Neville_Scarfe', 

'http://ion.energy.ubc.ca/ion/Historical/DisplayLogs.aspx?

queryId=f6b9062f-2973-485f-a21f-ae3f4c411a89&dgm=x-

pml:/diagrams/ud/UBC_SUS/sub_diagrams/Scarfe_232-

device_template_elec.dgm&node=Buildings.Scarfe_232&logServerName=QUERYSERV

ER.BIS-APPIONPME-P&logServerHandle=327952&isEventLog='),
(13, 

'Life_Science', 

'http://ion.energy.ubc.ca/ion/Historical/DisplayLogs.aspx?

queryId=57bc3363-95f1-45aa-8fef-fefb8ad8791b&dgm=//bis-appionpme-p/ION-

Ent/config/diagrams/ud/UBC_SUS/sub_diagrams/Life_Sciences_Tot.dgm&node=&lo

gServerName=QUERYSERVER.BIS-APPIONPME-

P&logServerHandle=327952&isEventLog='),
(14, 'Allard_Hall', 

'http://ion.energy.ubc.ca/ion/Historical/DisplayLogs.aspx?

queryId=f6b9062f-2973-485f-a21f-ae3f4c411a89&dgm=//bis-appionpme-p/ION-

Ent/config/diagrams/ud/UBC_SUS/sub_diagrams/Allard_482-

device_template_elec.dgm&node=Buildings.Allard_482&logServerName=QUERYSERV

ER.BIS-APPIONPME-P&logServerHandle=327952&isEventLog='),
(15, 'Totem', 

'http://ion.energy.ubc.ca/ion/Historical/DisplayLogs.aspx?

queryId=831317ed-1695-4a28-a197-9d9bad7e727e&dgm=x-

pml:/diagrams/ud/UBC_SUS/sub_diagrams/sub_diagram_totem

%20park.dgm&node=VIP.BIS-APPIONPME-P&logServerName=QUERYSERVER.BIS-

APPIONPME-P&logServerHandle=327952&isEventLog=');

-- 

--------------------------------------------------------

--
-- Table 

structure for table `building_neighbour`
--

CREATE TABLE 

`building_neighbour` (
  `id` int(11) NOT NULL,
  `building_id` int(11) NOT 

NULL,
  `neighbour_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT 

CHARSET=latin1;

--
-- Dumping data for table `building_neighbour`
--

INSERT 

INTO `building_neighbour` (`id`, `building_id`, `neighbour_id`) VALUES
(1, 

1, 2),
(2, 1, 3),
(3, 1, 4),
(4, 1, 5),
(5, 1, 6),
(6, 2, 1),
(7, 2, 3),
(8, 2, 

4),
(9, 2, 5),
(10, 2, 6),
(11, 3, 1),
(12, 3, 2),
(13, 3, 4),
(14, 3, 5),
(15, 

3, 6),
(16, 4, 1),
(17, 4, 2),
(18, 4, 3),
(19, 4, 5),
(20, 4, 6),
(21, 5, 1),
(22, 5, 2),
(23, 5, 3),
(24, 5, 4),
(25, 5, 6),
(26, 7, 14),
(27, 7, 9),
(28, 7, 

12),
(29, 8, 11),
(30, 8, 10),
(31, 8, 12),
(32, 9, 14),
(33, 9, 7),
(34, 9, 

12),
(35, 10, 11),
(36, 10, 12),
(37, 10, 8),
(38, 11, 12),
(39, 11, 8),
(40, 

11, 10),
(41, 12, 9),
(42, 12, 11),
(43, 12, 10),
(44, 13, 10),
(45, 13, 16),
(46, 13, 8),
(47, 14, 7),
(48, 14, 12),
(49, 14, 9),
(50, 16, 13),
(51, 16, 

10),
(52, 16, 12),
(53, 6, 1),
(54, 6, 2),
(55, 6, 3),
(56, 6, 4),
(57, 6, 5);

-- 

--------------------------------------------------------

--
-- Table 

structure for table `building_tips`
--

CREATE TABLE `building_tips` (
  `id` 

int(11) NOT NULL,
  `building_id` int(11) NOT NULL,
  `tips_id` int(11) NOT 

NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table 

`building_tips`
--

INSERT INTO `building_tips` (`id`, `building_id`, 

`tips_id`) VALUES
(1, 1, 1),
(2, 1, 3),
(3, 1, 4),
(4, 1, 6),
(5, 1, 7),
(6, 1, 

8),
(7, 7, 1),
(8, 7, 2),
(10, 7, 4),
(11, 7, 5),
(12, 7, 6),
(13, 7, 7),
(14, 7, 

8);

-- --------------------------------------------------------

--
-- Table 

structure for table `energy_consumption`
--

CREATE TABLE 

`energy_consumption` (
  `id` int(3) NOT NULL,
  `building_id` int(11) NOT 

NULL,
  `timestamp` varchar(255) NOT NULL,
  `energy` varchar(255) NOT NULL
) 

ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table 

`energy_consumption`
--

INSERT INTO `energy_consumption` (`id`, 

`building_id`, `timestamp`, `energy`) VALUES
(68, 2, '01/11/2016 13:00:00', 

'389'),
(69, 3, '01/11/2016 13:00:00', '698'),
(70, 4, '01/11/2016 

13:00:00', '605'),
(71, 5, '01/11/2016 13:00:00', '690'),
(72, 6, 

'01/11/2016 13:00:00', '3'),
(74, 2, '01/11/2016 15:00:00', '389'),
(75, 3, 

'01/11/2016 15:00:00', '698'),
(76, 4, '01/11/2016 15:00:00', '605'),
(77, 

5, '01/11/2016 15:00:00', '690'),
(78, 6, '01/11/2016 15:00:00', '3'),
(80, 

2, '01/11/2016 16:00:00', '389'),
(81, 3, '01/11/2016 16:00:00', '698'),
(82, 4, '01/11/2016 16:00:00', '605'),
(83, 5, '01/11/2016 16:00:00', 

'690'),
(84, 6, '01/11/2016 16:00:00', '3'),
(85, 1, '01/11/2016 13:00:00', 

'123456'),
(86, 1, '01/11/2016 13:15:00', '0'),
(87, 1, '01/11/2016 

12:45:00', '54321'),
(88, 1, '01/11/2016 12:00:00', '214234'),
(89, 1, 

'01/11/2016 16:15:00', '380'),
(90, 2, '01/11/2016 16:15:00', '389'),
(91, 

3, '01/11/2016 16:15:00', '698'),
(92, 4, '01/11/2016 16:15:00', '605'),
(93, 5, '01/11/2016 16:15:00', '690'),
(94, 6, '01/11/2016 16:15:00', 

'3'),
(95, 1, '01/11/2016 14:00:00', '0'),
(96, 1, '01/11/2016 16:45:00', 

'380'),
(97, 2, '01/11/2016 16:45:00', '389'),
(98, 3, '01/11/2016 

16:45:00', '698'),
(99, 4, '01/11/2016 16:45:00', '605'),
(100, 5, 

'01/11/2016 16:45:00', '690'),
(101, 6, '01/11/2016 16:45:00', '3'),
(102, 

1, '01/11/2016 00:00:00', '10000'),
(103, 2, '01/11/2016 00:00:00', 

'20000'),
(104, 3, '01/11/2016 00:00:00', '30000'),
(105, 4, '01/11/2016 

00:00:00', '40000'),
(106, 5, '01/11/2016 00:00:00', '50000'),
(107, 6, 

'01/11/2016 00:00:00', '60000'),
(108, 1, '01/04/2016 00:00:00', '1111'),
(109, 2, '01/04/2016 00:00:00', '2222'),
(110, 3, '01/04/2016 00:00:00', 

'3333'),
(111, 4, '01/04/2016 00:00:00', '4444'),
(112, 5, '01/04/2016 

00:00:00', '5555'),
(113, 6, '01/04/2016 00:00:00', '6666'),
(114, 1, 

'01/04/2016 16:45:00', '100000'),
(115, 2, '01/04/2016 16:45:00', 

'200000'),
(116, 3, '01/04/2016 16:45:00', '300000'),
(117, 4, '01/04/2016 

16:45:00', '400000'),
(118, 5, '01/04/2016 16:45:00', '500000'),
(119, 6, 

'01/04/2016 16:45:00', '600000'),
(120, 1, '01/11/2016 17:00:00', '380'),
(121, 2, '01/11/2016 17:00:00', '389'),
(122, 3, '01/11/2016 17:00:00', 

'698'),
(123, 4, '01/11/2016 17:00:00', '605'),
(124, 5, '01/11/2016 

17:00:00', '690'),
(125, 6, '01/11/2016 17:00:00', '3'),
(126, 1, 

'01/11/2016 17:00:00', '380'),
(127, 2, '01/11/2016 17:00:00', '389'),
(128, 

3, '01/11/2016 17:00:00', '698'),
(129, 4, '01/11/2016 17:00:00', '605'),
(130, 5, '01/11/2016 17:00:00', '690'),
(131, 6, '01/11/2016 17:00:00', 

'3'),
(132, 1, '01/11/2016 17:15:00', '380'),
(133, 2, '01/11/2016 

17:15:00', '389'),
(134, 3, '01/11/2016 17:15:00', '698'),
(135, 4, 

'01/11/2016 17:15:00', '605'),
(136, 5, '01/11/2016 17:15:00', '690'),
(137, 

6, '01/11/2016 17:15:00', '3'),
(138, 1, '01/11/2016 17:30:00', 

'380,633.456'),
(139, 2, '01/11/2016 17:30:00', '389,342.510'),
(140, 3, 

'01/11/2016 17:30:00', '698,230.899'),
(141, 4, '01/11/2016 17:30:00', 

'605,277.410'),
(142, 5, '01/11/2016 17:30:00', '690,253.151'),
(143, 6, 

'01/11/2016 17:30:00', '3,101,227.837'),
(144, 1, '01/11/2016 17:45:00', 

'380,638.237'),
(145, 2, '01/11/2016 17:45:00', '389,346.850'),
(146, 3, 

'01/11/2016 17:45:00', '698,236.124'),
(147, 4, '01/11/2016 17:45:00', 

'605,282.149'),
(148, 5, '01/11/2016 17:45:00', '690,261.120'),
(149, 6, 

'01/11/2016 17:45:00', '3,101,262.044'),
(150, 1, '01/04/2016 17:45:00', 

'10000'),
(151, 2, '01/04/2016 17:45:00', '10000'),
(152, 3, '01/04/2016 

17:45:00', '10000'),
(153, 4, '01/04/2016 17:45:00', '10000'),
(154, 5, 

'01/04/2016 17:45:00', '10000'),
(155, 6, '01/04/2016 17:45:00', '10000'),
(156, 1, '01/11/2016 21:15:00', '380,701.053'),
(157, 2, '01/11/2016 

21:15:00', '389,405.425'),
(158, 3, '01/11/2016 21:15:00', '698,313.981'),
(159, 4, '01/11/2016 21:15:00', '605,351.075'),
(160, 5, '01/11/2016 

21:15:00', '690,364.996'),
(161, 6, '01/11/2016 21:15:00', 

'3,101,678.374'),
(162, 1, '01/11/2016 21:30:00', '380,706.013'),
(163, 2, 

'01/11/2016 21:30:00', '389,410.379'),
(164, 3, '01/11/2016 21:30:00', 

'698,320.452'),
(165, 4, '01/11/2016 21:30:00', '605,356.600'),
(166, 5, 

'01/11/2016 21:30:00', '690,372.673'),
(167, 6, '01/11/2016 21:30:00', 

'3,101,708.900'),
(168, 1, '01/11/2016 21:45:00', '-'),
(169, 2, '01/11/2016 

21:45:00', '-'),
(170, 3, '01/11/2016 21:45:00', '698,326.700'),
(171, 4, 

'01/11/2016 21:45:00', '-'),
(172, 5, '01/11/2016 21:45:00', 

'690,381.835'),
(173, 6, '01/11/2016 21:45:00', '3,101,738.344'),
(174, 1, 

'01/11/2016 22:00:00', '380,715.306'),
(175, 2, '01/11/2016 22:00:00', 

'389,419.900'),
(176, 3, '01/11/2016 22:00:00', '698,332.945'),
(177, 4, 

'01/11/2016 22:00:00', '605,367.388'),
(178, 5, '01/11/2016 22:00:00', 

'690,391.153'),
(179, 6, '01/11/2016 22:00:00', '3,101,769.087'),
(180, 1, 

'01/11/2016 22:15:00', '380,719.648'),
(181, 2, '01/11/2016 22:15:00', 

'389,424.107'),
(182, 3, '01/11/2016 22:15:00', '698,339.062'),
(183, 4, 

'01/11/2016 22:15:00', '605,372.591'),
(184, 5, '01/11/2016 22:15:00', 

'690,399.608'),
(185, 6, '01/11/2016 22:15:00', '3,101,800.913'),
(186, 1, 

'01/11/2016 22:30:00', '380,723.505'),
(187, 2, '01/11/2016 22:30:00', 

'389,428.104'),
(188, 3, '01/11/2016 22:30:00', '698,345.447'),
(189, 4, 

'01/11/2016 22:30:00', '605,377.884'),
(190, 5, '01/11/2016 22:30:00', 

'690,408.837'),
(191, 6, '01/11/2016 22:30:00', '3,101,829.707'),
(192, 1, 

'01/11/2016 22:45:00', '380,727.882'),
(193, 2, '01/11/2016 22:45:00', 

'389,432.155'),
(194, 3, '01/11/2016 22:45:00', '698,351.858'),
(195, 4, 

'01/11/2016 22:45:00', '605,383.252'),
(196, 5, '01/11/2016 22:45:00', 

'690,416.261'),
(197, 6, '01/11/2016 22:45:00', '3,101,859.584');

-- 

--------------------------------------------------------

--
-- Table 

structure for table `tips`
--

CREATE TABLE `tips` (
  `id` int(11) NOT NULL,
  

`title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  

`image_url` varchar(2000) NOT NULL,
  `color_title` varchar(255) NOT NULL,
  

`color_subtitle` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT 

CHARSET=latin1;

--
-- Dumping data for table `tips`
--

INSERT INTO `tips` 

(`id`, `title`, `subtitle`, `image_url`, `color_title`, `color_subtitle`) 

VALUES
(1, 'Turn me off', 'Let your devices rest at night, like you', 

'/public_html/imgs/device.png', '#1e6059', '#26988c'),
(2, 'Dial me down', 

'Turn down the heat when you leave', '/public_html/imgs/thermostat.png', 

'#4b4444', '#857d7d'),
(3, 'Unplug me', 'Appliances still use electricity 

when plugged in', '/public_html/imgs/kettle.png', '#7c2b16', '#c95f43'),
(4, 'Turn me off', 'Don''t forget the lights when you leave', 

'/public_html/imgs/light_happy.png', '#665819', '#a28c2d'),
(5, 'Climb me', 

'Don''t wait for the elevator', '/public_html/imgs/stairs.png', '#5c417a', 

'#a571de'),
(6, 'Unplug me', 'Appliances still use electricity when plugged 

in', '/public_html/imgs/toaster.png', '#4c436a', '#7767b3'),
(7, 'Unplug 

me', 'Unused electronics still consume energy', 

'/public_html/imgs/plug.png', '#7c502b', '#f08020'),
(8, 'Close me', 

'Don''t forget the windows on your way out', 

'/public_html/imgs/window.png', '#396362', '#3bafae');

--
-- Indexes for 

dumped tables
--

--
-- Indexes for table `building`
--
ALTER TABLE `building`
  

ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for 

table `building_neighbour`
--
ALTER TABLE `building_neighbour`
  ADD PRIMARY 

KEY (`id`);

--
-- Indexes for table `building_tips`
--
ALTER TABLE 

`building_tips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table 

`energy_consumption`
--
ALTER TABLE `energy_consumption`
  ADD PRIMARY KEY 

(`id`);

--
-- Indexes for table `tips`
--
ALTER TABLE `tips`
  ADD PRIMARY KEY 

(`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for 

table `building`
--
ALTER TABLE `building`
  MODIFY `id` int(10) NOT NULL 

AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table 

`building_neighbour`
--
ALTER TABLE `building_neighbour`
  MODIFY `id` int

(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for 

table `building_tips`
--
ALTER TABLE `building_tips`
  MODIFY `id` int(11) 

NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table 

`energy_consumption`
--
ALTER TABLE `energy_consumption`
  MODIFY `id` int(3) 

NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;
--
-- AUTO_INCREMENT for table 

`tips`
--
ALTER TABLE `tips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, 

AUTO_INCREMENT=9;
/*!40101 SET 

CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET 

CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET 

COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
