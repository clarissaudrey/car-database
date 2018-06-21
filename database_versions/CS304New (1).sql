-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 19, 2018 at 12:02 AM
-- Server version: 5.6.38
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `CS304New`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CustomerID` int(10) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Address` varchar(90) NOT NULL,
  `Occupation` varchar(30) NOT NULL,
  `Sex` varchar(6) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Age` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CustomerID`, `Name`, `Address`, `Occupation`, `Sex`, `Phone`, `Age`) VALUES
(1, 'Miso Miso', '3rd Street, Ottawa', 'Lawyer', 'Male', '(123) 456-7890', 27),
(2, 'Sushy', '1030 Hornby St, Vancouver', 'Doctor', 'Female', '(134) 567-8923', 38),
(3, 'Sir Ramen', '500 Hornby St, Vancouver', 'Surgeon', 'Male', '(145) 678-9233', 43),
(4, 'Unagi', '645 Howe Street, Vancouver', 'Accountant', 'Male', '(345) 678-9120', 30),
(5, 'Chi Men', 'Adderley St, North Vancouver', 'Architect', 'Male', '(456) 789-1233', 40),
(6, 'Tortilla', 'Alden Lane, North Vancouver', 'Lawyer', 'Male', '(567) 891-2344', 46),
(7, 'Enpanada', 'Aberdeen St, Vancouver', 'Doctor', 'Female', '(678) 912-3455', 29),
(8, 'Enchillada', '10th Avenue, Burnaby', 'Engineer', 'Male', '(789) 123-4566', 32),
(9, 'Tapas', '3308 Ash St, Vancouver', 'Pilot', 'Male', '(891) 234-5677', 43),
(10, 'Apple', '104 Avenue, Surrey', 'Doctor', 'Male', '(912) 345-6788', 50),
(11, 'Orange', '900 Fifth St, Nanaimo', 'Engineer', 'Female', '(987) 654-3211', 40),
(12, 'Grapes', '4054 Robson St, Vancouver', 'Secretary', 'Female', '(876) 543-2199', 28),
(13, 'Watermelon', '5800 Mountain Blvd, Delta', 'Doctor', 'Male', '(765) 432-1988', 37),
(14, 'Pinapple', 'Lower Mall, Ottawa', 'Business Analyst', 'Male', '(654) 321-9879', 50),
(15, 'Pancake', '15th St, Burnaby', 'Dentist', 'Female', '(543) 219-8766', 35),
(16, 'Waffle', '5611 Cooney Road, Richmond', 'Software Developer', 'Male', '(432) 198-7655', 30),
(17, 'Chocolate', '86th Avenue, Vancouver', 'Movie Director', 'Male', '(321) 987-6544', 52),
(18, 'Strawberry Shortcake', 'McKay Creek, North Vancouver', 'Engineer', 'Male', '(219) 876-5433', 43),
(19, 'Milk Bun', '99th Boulevard, Maple Ridge', 'Lawyer', 'Female', '(198) 765-4322', 49),
(20, 'Brocolli', 'Balaclava St, Vancouver', 'Lawyer', 'Male', '(153) 785-3644', 51),
(21, 'Maple Syrup', '1240 Iona Street, Abbotsford', 'Psychiatrist', 'Female', '(287) 468-2000', 34),
(22, 'Melon', 'Vincent Avenue, Langley', 'Software Developer', 'Female', '(888) 888-8888', 38),
(23, 'Milo', '120th St, Coquitlam', 'Lawyer', 'Male', '(021) 864-6611', 49),
(24, 'Dim Sum', '714-7040 In, St.', 'Professor', 'Male', '(306) 280-0164', 37),
(25, 'Eggplant', 'P.O. Box 980, 9475 At Avenue', 'Software Developer', 'Male', '(289) 210-2551', 48),
(26, 'Asparagus', '2624 Egestas. Ave', 'Dentist', 'Male', '(514) 402-2828', 35),
(27, 'Sandwich', '7176 Tempor Avenue', 'Doctor', 'Male', '(807) 489-4806', 53),
(28, 'Cheese Burger', 'Ap #521-8148 Natoque Rd.', 'Doctor', 'Male', '(418) 271-0159', 34),
(29, 'Matcha', '9429 Auctor, Street', 'Engineer', 'Female', '(416) 363-9335', 29),
(30, 'Red Bean', '347-9966 Quam Rd.', 'Actor', 'Female', '(867) 297-0499', 46),
(31, 'Tangerine', '379 Eget Av.', 'Doctor', 'Female', '(778) 837-9138', 43),
(32, 'Mandarine', 'P.O. Box 631, 6163 Etiam Avenue', 'Surgeon', 'Male', '(226) 892-0538', 30),
(33, 'Kebab', 'P.O. Box 649, 5602 Fames Rd.', 'Professor', 'Male', '(902) 183-5252', 44),
(34, 'Steamed Rice', 'P.O. Box 851, 8934 Vitae, Street', 'Doctor', 'Female', '(437) 128-3566', 39),
(35, 'Fried Rice', 'Ap #605-8480 Aliquet. Ave', 'Doctor', 'Male', '(514) 134-0302', 29),
(36, 'Happy Lemon', 'P.O. Box 374, 9807 Quis St.', 'Surgeon', 'Male', '(514) 988-9758', 52),
(37, 'Eclair', 'Ap #314-4519 Eget Rd.', 'Professor', 'Male', '(647) 780-7820', 38),
(38, 'Baguette', '402-8506 Natoque St.', 'Lawyer', 'Male', '(705) 923-9270', 40),
(39, 'Whole Wheat', '840-6361 Purus. Ave', 'Engineer', 'Female', '(514) 393-4459', 46),
(40, 'Spaghetti', '172-4161 Volutpat Street', 'Surgeon', 'Male', '(418) 786-1497', 37),
(41, 'Pasta', '719-399 Blandit Street', 'Software Developer', 'Male', '(343) 114-6446', 30),
(42, 'Fettucine', 'Ap #553-5939 Cursus Avenue', 'Lawyer', 'Male', '(519) 477-2024', 40),
(43, 'Mushroom', '4490 Cursus Av.', 'Doctor', 'Female', '(647) 172-3262', 38),
(44, 'Porcini', '7014 Commodo Street', 'Lawyer', 'Male', '(873) 165-0477', 35),
(45, 'Enoki', '350 Feugiat Road', 'Lawyer', 'Male', '(437) 224-1291', 54),
(46, 'Spinach', 'Ap #861-2951 Tincidunt St.', 'Doctor', 'Male', '(905) 346-2107', 40),
(47, 'Jamon', '432-8718 Accumsan Avenue', 'Lawyer', 'Male', '(306) 692-2966', 45),
(48, 'Prosciutto', 'P.O. Box 355, 6459 Tristique St.', 'Dentist', 'Male', '(709) 577-9756', 34),
(49, 'Salami', 'Ap #649-2342 Ut Road', 'Surgeon', 'Male', '(205) 264-1173', 32),
(50, 'Beef Burger', '357-6118 Ante, Road', 'Surgeon', 'Female', '(437) 669-3002', 41),
(51, 'Chicken Finger', '2400 Nunc, Ave', 'Doctor', 'Female', '(289) 273-3896', 37),
(52, 'French Fries', '657-6420 Ullamcorper, Rd.', 'Lawyer', 'Male', '(873) 147-5779', 39),
(53, 'Bean Paste', '135 Tellus Avenue', 'Software Developer', 'Female', '(780) 192-3873', 55),
(54, 'Vanilla Frappucino', 'Ap #298-1840 Nec Av.', 'Professor', 'Female', '(807) 928-0219', 49),
(55, 'Acai ', '740-4601 Imperdiet Road', 'Actor', 'Male', '(603) 289-2072', 33),
(56, 'Tomato', 'Ap #909-167 Sapien Ave', 'Engineer', 'Male', '(506) 893-4939', 48),
(57, 'Blueberry', '176-1015 Quis Road', 'Engineer', 'Female', '(867) 411-2764', 28),
(58, 'Raspberry', 'Ap #648-8294 Maecenas St.', 'Minister', 'Male', '(873) 430-4175', 39),
(59, 'Golden Berry', '152-1742 In Av.', 'Doctor', 'Male', '(506) 290-2641', 54),
(60, 'Black Berry', '3926 Curabitur St.', 'Minister', 'Male', '(581) 412-2953', 45),
(61, 'Wildberries', '257-5245 Arcu. Av.', 'Engineer', 'Male', '(902) 636-9482', 28),
(62, 'Poisonous Berry', '808-9755 Nullam Road', 'Dentist', 'Male', '(226) 591-9707', 30),
(63, 'Squid Tentacle', '690-4021 Auctor Street', 'Minister', 'Female', '(204) 586-8039', 53),
(64, 'Short Rib', 'Ap #805-4735 Cras Ave', 'Minister', 'Female', '(249) 538-8131', 42),
(65, 'Sir Loin', 'Ap #854-3738 Lorem Rd.', 'Software Developer', 'Male', '(613) 772-9992', 47),
(66, 'Tenderloin', 'P.O. Box 274, 5981 Libero. Road', 'Engineer', 'Female', '(780) 454-1840', 47),
(67, 'Baby Back Ribs', 'P.O. Box 537, 5434 Sed St.', 'Doctor', 'Male', '(705) 139-3161', 30),
(68, 'Oxtail Soup', 'Ap #952-8051 Erat Rd.', 'Professor', 'Male', '(873) 554-9689', 55),
(69, 'Porridge', 'Ap #753-7362 Magna. Av.', 'Software Developer', 'Male', '(603) 793-5810', 39),
(70, 'Hot Pot', 'Ap #444-4324 Lobortis St.', 'Professor', 'Male', '(705) 520-4467', 40),
(71, 'Japchae', '362-8548 Pharetra St.', 'Actor', 'Male', '(365) 347-9847', 46),
(72, 'Kimchi', '1391 Penatibus Rd.', 'Lawyer', 'Female', '(603) 864-3369', 34),
(73, 'Cabbage', '7535 Amet St.', 'Engineer', 'Male', '(709) 780-0966', 50),
(74, 'Green Bean', '381-8190 Lectus Rd.', 'Business Analyst', 'Male', '(647) 385-2555', 39),
(75, 'Chili', 'Ap #776-9488 Cursus Rd.', 'Dentist', 'Male', '(249) 918-4175', 38),
(76, 'Raisin', 'Ap #424-3573 Donec Street', 'Lawyer', 'Female', '(365) 223-7832', 54),
(77, 'Peanut Butter', 'Ap #862-8145 Ipsum St.', 'Engineer', 'Male', '(603) 371-3536', 38),
(78, 'Nutella', 'P.O. Box 165, 3896 Eu Rd.', 'Surgeon', 'Female', '(902) 875-0645', 32),
(79, 'Oatmeal', 'Ap #610-3012 Duis St.', 'Actor', 'Male', '(867) 701-3628', 34),
(80, 'Sugarcane', '410-6579 Elit. Road', 'Lawyer', 'Female', '(807) 617-8008', 45),
(81, 'Lollipop', '203-9512 Tristique Rd.', 'Lawyer', 'Male', '(579) 948-0819', 50),
(82, 'Cotton Candy', '6930 Faucibus Avenue', 'Doctor', 'Male', '(365) 757-7157', 46),
(83, 'Ginger Bread', '543-5055 Elit Rd.', 'Doctor', 'Female', '(519) 860-4700', 32),
(84, 'Cookies', 'P.O. Box 534, 4411 Massa Rd.', 'Lawyer', 'Male', '(807) 852-0341', 51),
(85, 'Brie Cheese', '259-6076 Consequat St.', 'Lawyer', 'Male', '(867) 315-7687', 37),
(86, 'Swiss Cheese', 'Ap #465-893 Eu, St.', 'Surgeon', 'Female', '(902) 590-8436', 50),
(87, 'Mozarella', '368-6591 Duis Ave', 'Minister', 'Male', '(873) 773-1461', 48),
(88, 'Goat Cheese', 'P.O. Box 541, 2185 Nec Road', 'Lawyer', 'Male', '(587) 644-9320', 29),
(89, 'Bulgogi Beef', 'Ap #407-472 Ornare St.', 'Software Developer', 'Female', '(249) 206-4215', 42),
(90, 'Sweet Corn', 'P.O. Box 291, 4686 Sed, Rd.', 'Professor', 'Female', '(437) 472-6443', 49),
(91, 'Smoked Salmon', '982-411 Varius St.', 'Lawyer', 'Male', '(778) 198-4810', 41),
(92, 'Marinated Tuna', '158-4907 At, Rd.', 'Business Analyst', 'Male', '(431) 642-1943', 35),
(93, 'Scallop', 'P.O. Box 598, 9787 Ligula Av.', 'Software Developer', 'Male', '(647) 398-5173', 42),
(94, 'Halibut', 'P.O. Box 132, 7712 Integer Av.', 'Engineer', 'Male', '(431) 146-9428', 40),
(95, 'Clams', '2347 Lacus. Road', 'Doctor', 'Female', '(289) 820-7267', 36),
(96, 'Fresh Oyster', '3268 Semper Rd.', 'Lawyer', 'Male', '(581) 391-3438', 52),
(97, 'Hazelnut', '794-4930 Mus. St.', 'Surgeon', 'Male', '(418) 146-2061', 41),
(98, 'Fresh Mint', '7516 Ac St.', 'Doctor', 'Male', '(205) 850-7041', 52),
(99, 'Mojito', 'P.O. Box 288, 3860 Felis St.', 'Actor', 'Male', '(581) 862-1987', 44),
(100, 'Lemonade', 'Ap #951-2250 Nullam Street', 'Dentist', 'Male', '(416) 504-8283', 39),
(101, 'Red Wine', '619-1360 Proin Ave', 'Doctor', 'Male', '(418) 797-7630', 50),
(102, 'White Wine', 'P.O. Box 626, 5782 Magna Rd.', 'Engineer', 'Male', '(450) 144-3782', 39),
(103, 'Coca Cola', 'P.O. Box 552, 7631 Nascetur Road', 'Surgeon', 'Female', '(506) 600-1699', 55),
(104, 'Pepsi', '102-6577 Nec Av.', 'Software Developer', 'Female', '(778) 814-6501', 49),
(105, 'Fanta', 'P.O. Box 664, 5482 Egestas. Ave', 'Actor', 'Male', '(506) 184-5447', 55),
(106, 'Vegetable Oil', '3492 Magna. Ave', 'Lawyer', 'Male', '(819) 533-7562', 45),
(107, 'Flour', '5346 Id Rd.', 'Lawyer', 'Male', '(289) 517-9770', 47),
(108, 'Hunger', '655-2455 Magna. Ave', 'Dentist', 'Female', '(647) 138-8990', 44),
(109, 'Hungry', 'Ap #580-3220 Posuere Avenue', 'Doctor', 'Female', '(365) 714-7665', 41),
(110, 'Blue Cheese', 'P.O. Box 651, 1273 Proin Ave', 'Software Developer', 'Female', '(705) 872-1512', 42),
(111, 'Veggie', '150 Id, Rd.', 'Lawyer', 'Male', '(604) 956-1486', 43),
(112, 'Meatballs', 'P.O. Box 718, 7051 Feugiat. Av.', 'Doctor', 'Female', '(506) 412-4411', 43),
(113, 'Bubble Tea', '2685 Nulla Rd.', 'Business Analyst', 'Female', '(249) 599-9368', 34),
(114, 'Pizza', '5646 Augue St.', 'Doctor', 'Male', '(506) 955-1567', 46),
(115, 'Pepperoni', 'P.O. Box 130, 2904 Ut Street', 'Engineer', 'Male', '(807) 613-0606', 37),
(116, 'Roll Cake', 'P.O. Box 317, 2453 Lacinia St.', 'Professor', 'Female', '(204) 236-0851', 54),
(117, 'Parfait', 'P.O. Box 606, 5667 Fusce Avenue', 'Doctor', 'Female', '(306) 850-5091', 37),
(118, 'Ice Cream', 'P.O. Box 409, 3870 Vitae, Rd.', 'Lawyer', 'Male', '(205) 176-5263', 32),
(119, 'Gelato', 'Ap #662-9874 Placerat, Street', 'Doctor', 'Female', '(226) 669-2897', 52),
(120, 'Marshmallow', 'Ap #703-4560 Eget Avenue', 'Surgeon', 'Female', '(519) 785-5406', 51),
(121, 'Lady Finger', '813-9275 Arcu. St.', 'Dentist', 'Female', '(514) 386-5832', 47),
(122, 'Vodka', 'Ap #279-5024 Lacus Rd.', 'Doctor', 'Male', '(204) 401-0958', 42),
(123, 'Whiskey', '1310 Nec, Street', 'Dentist', 'Male', '(867) 416-7956', 28);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EmployeeID` int(11) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Address` varchar(95) NOT NULL,
  `Role` varchar(20) NOT NULL,
  `Age` int(11) NOT NULL,
  `Sex` varchar(11) NOT NULL,
  `YearsWorking` int(6) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EmployeeID`, `Phone`, `Address`, `Role`, `Age`, `Sex`, `YearsWorking`, `Name`, `Email`) VALUES
(2, '(250) 444-5555', 'Circle Drive, Rockland', 'Sales Associate', 35, 'Male', 6, 'John Smith', 'john.smith@dealership.ca'),
(3, '(601) 510-4256	', 'Square Avenue, Orleans	', 'Business Manager	', 38, 'Male', 8, 'Felilpe Caiado', 'felipe.caiado@dealership.ca'),
(4, '(299) 087-6544', '114 Abbey St, North Vancouver', 'Sales Associate', 29, 'Female', 3, 'Kim K', 'kim.k@dealership.ca'),
(5, '(300) 400-5000', 'Willow St, Abbotsford', 'Sales Associate', 31, 'Male', 6, 'Justin Barber', 'justin.barber@dealership.ca'),
(6, '(465) 090-8000', 'North Hill Avenue, Surrey', 'Sales Associate', 33, 'Female', 4, 'Abigail Hill', 'abi.hill@dealership.ca'),
(7, '(777) 123-9877', 'West Mall, Vancouver', 'Business Manager', 38, 'Male', 8, 'Masahiro Toyomura', 'masa.toyomura@dealership.ca'),
(8, '(544) 333-9655', 'Killian St, Delta', 'Sales Associate', 34, 'Male', 5, 'Thomas Brown', 'thomas.brown@dealership.ca'),
(9, '(500) 606-9011', 'Tibet Avenue, Burnaby', 'Sales Associate', 31, 'Male', 3, 'Leo Yang', 'leo.yang@dealership.ca'),
(10, '(604) 864-3399', 'Lower Mall, Vancouver', 'Business Manager', 36, 'Female', 6, 'Clarissa Audrey', 'clarissa.audrey@dealership.ca'),
(11, '(111) 944-0322', 'Tulip Harbor, Louisville', 'Sales Associate', 36, 'Female', 6, 'Luna Maia', 'luna.maia@dealership.ca'),
(12, '(369) 704-3244', 'Dunhill Creek, North Vancouver', 'Sales Associate', 38, 'Male', 5, 'Bryce Harlow', 'bryce.harlow@dealership.ca'),
(13, '(463) 743-7955', 'Vet Zoo, Vancouver', 'Sales Associate', 38, 'Male', 8, 'Puppy Pupper', 'puppy.pupper@dealership.ca'),
(14, '(443) 298-0588', 'Lion Gate, Kerrisdale', 'Sales Associate', 35, 'Female', 6, 'Mary Jane', 'mary.jane@dealership.ca'),
(15, '(199) 049-7399', 'Yew St, Vancouver', 'Sales Associate', 32, 'Male', 4, 'Rick Ovens', 'rick.ovens@dealership.ca'),
(16, '(765) 933-2222', 'West 4th Ave, Vancouver', 'Business Manager', 37, 'Male', 7, 'Nicolas Gagnon', 'nic.gagnon@dealership.ca'),
(17, '(356) 153-4189', '1810 Quis Avenue', 'Business Manager', 38, 'Male', 9, 'Lionel Crawford', 'metus@quamquis.com'),
(18, '(439) 347-2183', 'P.O. Box 259, 3213 Etiam St.', 'Sales Associate', 31, 'Female', 9, 'Hall Shepard', 'dis.parturient@acorci.com'),
(19, '(799) 244-6043', '7263 Cras Avenue', 'Business Manager', 29, 'Male', 10, 'Abel Cox', 'odio@ametmassaQuisque.edu'),
(20, '(664) 981-9918', 'Ap #599-9486 Donec Rd.', 'Sales Associate', 34, 'Male', 4, 'Gareth Carr', 'nulla@dignissimlacus.net'),
(21, '(549) 587-9011', '409-7908 Massa. Street', 'Sales Associate', 36, 'Male', 6, 'Quinlan Hill', 'eu.ligula@NuncmaurisMorbi.edu'),
(22, '(825) 715-9476', '447-584 Lorem, Av.', 'Sales Associate', 31, 'Male', 4, 'Vaughan Mcgee', 'nec.urna@nascetur.co.uk'),
(23, '(814) 514-4899', '3143 Massa. Rd.', 'Sales Associate', 34, 'Male', 9, 'Nigel Bolton', 'sit@tellus.com'),
(24, '(307) 363-3960', '474 Erat Avenue', 'Sales Associate', 31, 'Male', 6, 'Odysseus Hutchinson', 'lobortis.Class@eu.co.uk'),
(25, '(318) 347-9615', 'P.O. Box 976, 3107 Orci. Av.', 'Sales Associate', 32, 'Male', 5, 'Harrison Bond', 'lacus.Aliquam@sed.com'),
(26, '(500) 771-5038', 'Ap #800-8787 Et Street', 'Sales Associate', 44, 'Male', 6, 'Florence Beck', 'semper@Vestibulumaccumsanneque.edu'),
(27, '(423) 493-0158', 'P.O. Box 562, 4210 Egestas. Avenue', 'Sales Associate', 33, 'Male', 6, 'Shay Sawyer', 'iaculis.aliquet@mi.ca'),
(28, '(629) 735-0707', '7037 Metus. Road', 'Sales Associate', 42, 'Female', 4, 'Oleg Figueroa', 'Cras.eu.tellus@iaculis.edu'),
(29, '(951) 297-6837', '595-9559 Scelerisque, St.', 'Sales Associate', 33, 'Male', 10, 'Amir Kim', 'Duis@non.org'),
(30, '(942) 274-6263', 'Ap #595-3649 Cursus St.', 'Sales Associate', 34, 'Male', 8, 'Emery Watts', 'faucibus.Morbi.vehicula@musProin.net'),
(31, '(337) 529-8322', 'Ap #292-9550 Ante Rd.', 'Sales Associate', 38, 'Male', 6, 'Jakeem Simpson', 'quis.diam@utdolor.co.uk'),
(32, '(632) 653-0261', 'P.O. Box 246, 6355 Mi Avenue', 'Sales Associate', 35, 'Male', 10, 'Amena Good', 'Curabitur.massa@magnaSuspendisse.co.uk'),
(33, '(493) 304-2192', 'P.O. Box 279, 6636 Etiam Road', 'Sales Associate', 31, 'Male', 5, 'Rhonda Howell', 'purus.mauris@et.co.uk'),
(34, '(548) 497-1443', 'Ap #868-2873 Nibh Rd.', 'Sales Associate', 46, 'Female', 4, 'Octavia Barnes', 'Sed@lacus.org'),
(35, '(178) 212-2237', 'Ap #582-4894 Auctor Street', 'Sales Associate', 44, 'Female', 6, 'Ruby Moore', 'metus@Donecnibhenim.edu'),
(36, '(606) 639-9747', '266-7178 Lorem, Av.', 'Sales Associate', 34, 'Male', 10, 'Moses Clark', 'a.malesuada.id@nislMaecenasmalesuada.org'),
(37, '(398) 995-8633', '328-1141 Iaculis Ave', 'Sales Associate', 32, 'Male', 7, 'Emery Chaney', 'eleifend.nec.malesuada@massaQuisqueporttitor.co.uk'),
(38, '(443) 397-1050', 'Ap #708-6408 Nulla. Avenue', 'Sales Associate', 45, 'Male', 5, 'Edan Deleon', 'dis@hendrerit.com'),
(39, '(111) 612-7195', 'Ap #647-1251 Quis St.', 'Sales Associate', 47, 'Male', 7, 'Dustin Blake', 'quis.massa.Mauris@egestasurna.ca'),
(40, '(557) 828-2875', 'P.O. Box 621, 3302 Duis Av.', 'Sales Associate', 28, 'Male', 7, 'Odysseus Wilcox', 'enim.consequat@euismodurna.co.uk'),
(41, '(809) 682-8763', 'P.O. Box 412, 4703 Sodales St.', 'Sales Associate', 40, 'Male', 7, 'Ignatius Merritt', 'quis@leoCras.ca'),
(42, '(127) 136-4690', '6161 Commodo Avenue', 'Sales Associate', 33, 'Male', 6, 'Dominic Talley', 'lectus@magnaSedeu.com'),
(43, '(730) 571-3289', '9784 Egestas Street', 'Sales Associate', 43, 'Female', 4, 'Jonas Sanders', 'Duis.mi@ante.co.uk'),
(44, '(271) 192-1763', 'P.O. Box 433, 966 Euismod Avenue', 'Sales Associate', 42, 'Female', 9, 'Otto Fowler', 'tellus.eu@nisi.com'),
(45, '(302) 594-8781', '800-9067 Pellentesque Ave', 'Sales Associate', 35, 'Female', 5, 'Keith Abbott', 'tellus.Phasellus@magnaSuspendisse.org'),
(46, '(931) 119-1562', 'Ap #458-1738 Nam Road', 'Sales Associate', 35, 'Male', 7, 'Lee Mason', 'aliquet.metus@erat.ca'),
(47, '(139) 186-0125', 'P.O. Box 466, 4476 Hymenaeos. Rd.', 'Business Manager', 43, 'Female', 8, 'Tyler Hanson', 'tellus@Lorem.com'),
(48, '(782) 403-6825', 'Ap #418-3303 Sagittis. Street', 'Sales Associate', 48, 'Male', 6, 'Buckminster Maynard', 'ornare.In@dictum.co.uk'),
(49, '(316) 707-2173', '506-5836 Amet Rd.', 'Sales Associate', 42, 'Male', 9, 'Gary Roth', 'tellus@Suspendissedui.ca'),
(50, '(491) 519-8068', 'Ap #818-481 Lectus, Road', 'Business Manager', 45, 'Male', 10, 'Eagan Bradford', 'lobortis.mauris@idrisus.co.uk'),
(51, '(419) 800-7562', '4166 Vel, Rd.', 'Sales Associate', 37, 'Male', 8, 'Harrison Mitchell', 'et.ultrices.posuere@placerat.co.uk'),
(52, '(329) 947-0901', 'Ap #918-1243 Malesuada Av.', 'Business Manager', 31, 'Female', 5, 'Alec Carroll', 'magna@Loremipsumdolor.co.uk'),
(53, '(440) 155-3491', '268-232 Nullam Av.', 'Sales Associate', 47, 'Male', 8, 'Ezekiel Coleman', 'et.rutrum@Integeraliquam.ca'),
(54, '(485) 148-8833', '925-4120 Aliquam Rd.', 'Sales Associate', 43, 'Male', 7, 'Ferdinand Dickerson', 'ipsum.porta.elit@auctorveliteget.co.uk'),
(55, '(980) 349-0542', '239-4911 Cursus. Av.', 'Sales Associate', 46, 'Male', 8, 'Colt Ware', 'velit.dui@lacus.edu'),
(56, '(731) 134-0765', 'P.O. Box 811, 4935 Elit Street', 'Sales Associate', 32, 'Male', 4, 'Yoko Mooney', 'magna.Ut@interdumSedauctor.net'),
(57, '(538) 491-8543', 'P.O. Box 240, 1682 Convallis Rd.', 'Sales Associate', 34, 'Female', 5, 'Timon Jefferson', 'tellus.faucibus@Mauris.net'),
(58, '(293) 544-9281', 'P.O. Box 969, 3435 Nullam Rd.', 'Business Manager', 34, 'Male', 8, 'Driscoll Mathews', 'libero.est@sollicitudin.edu'),
(59, '(278) 358-3312', 'Ap #509-9638 Neque Rd.', 'Sales Associate', 37, 'Male', 7, 'Gage Powers', 'Vestibulum.ut@adipiscinglobortis.ca'),
(60, '(834) 763-9036', '186-7718 Cursus St.', 'Sales Associate', 39, 'Male', 7, 'Ignatius Brennan', 'sed.dolor.Fusce@urnaetarcu.edu'),
(61, '(876) 322-4861', 'P.O. Box 253, 4747 Aliquet St.', 'Sales Associate', 33, 'Female', 7, 'Flynn Olsen', 'commodo@augueut.co.uk'),
(62, '(431) 661-3298', '793-2947 Integer Rd.', 'Sales Associate', 31, 'Male', 5, 'Hilda Ballard', 'Phasellus.in@Pellentesquetincidunt.co.uk'),
(63, '(775) 466-6946', 'P.O. Box 554, 2442 Elementum Rd.', 'Sales Associate', 36, 'Male', 9, 'Amir Watkins', 'amet.nulla@a.net'),
(64, '(421) 437-5931', 'Ap #321-799 Eu St.', 'Sales Associate', 43, 'Male', 6, 'Clare Gates', 'mattis.ornare.lectus@aauctor.co.uk'),
(65, '(225) 338-5517', '739-6173 Sem Road', 'Sales Associate', 48, 'Male', 9, 'Dante Chen', 'elementum.dui.quis@habitantmorbi.co.uk'),
(66, '(565) 609-4064', 'Ap #878-7371 Vehicula. Avenue', 'Business Manager', 35, 'Male', 4, 'Lance Rasmussen', 'In@Praesent.com'),
(67, '(243) 802-5398', '427-4243 Ante Avenue', 'Sales Associate', 39, 'Male', 9, 'Alana Mays', 'turpis@posuerecubiliaCurae.co.uk'),
(68, '(242) 875-8878', 'Ap #513-6883 Tortor Ave', 'Sales Associate', 29, 'Male', 9, 'Xavier Sanders', 'elit.pellentesque@lectus.net'),
(69, '(471) 906-0888', 'Ap #312-7380 Arcu. Ave', 'Sales Associate', 47, 'Male', 8, 'Jaquelyn Vasquez', 'ante@sitametluctus.net'),
(70, '(130) 162-9796', 'Ap #689-8368 Adipiscing Rd.', 'Business Manager', 38, 'Male', 9, 'Barry Kirkland', 'eros@arcuVestibulum.org'),
(71, '(118) 856-7085', '5674 Aenean St.', 'Sales Associate', 34, 'Male', 5, 'Tucker Stevenson', 'aliquet.vel.vulputate@aptent.edu'),
(72, '(266) 435-6320', 'Ap #822-8863 Mauris Road', 'Sales Associate', 44, 'Male', 5, 'Janna Gardner', 'arcu.vel.quam@vitaevelitegestas.ca'),
(73, '(309) 833-0091', 'P.O. Box 664, 9074 Proin Street', 'Sales Associate', 28, 'Male', 7, 'Dalton Cooper', 'mus.Proin@tempus.ca'),
(74, '(660) 294-4460', '7522 Faucibus Street', 'Sales Associate', 34, 'Female', 6, 'Carolyn Rowland', 'id@accumsanneque.edu'),
(75, '(556) 232-5165', 'P.O. Box 875, 9029 Cum Ave', 'Sales Associate', 35, 'Male', 4, 'Cadman Nieves', 'eu.augue@arcuac.edu'),
(76, '(241) 499-9941', '1410 Fusce Avenue', 'Sales Associate', 30, 'Male', 5, 'Grady Little', 'et.pede.Nunc@Aliquamultrices.org'),
(78, '(953) 722-8281', '6499 Ut Rd.', 'Sales Associate', 30, 'Male', 4, 'Shellie Hartman', 'Duis@ultricesposuerecubilia.com'),
(79, '(148) 699-5906', '7451 Donec St.', 'Sales Associate', 40, 'Female', 8, 'Dustin Waller', 'ut@sempereratin.com'),
(80, '(384) 536-3904', 'P.O. Box 736, 6889 Turpis. Av.', 'Sales Associate', 32, 'Male', 8, 'Keiko Bean', 'Quisque.varius.Nam@aliquet.com'),
(81, '(756) 184-2524', '585-7809 Porttitor Av.', 'Sales Associate', 47, 'Female', 8, 'Valentine Craft', 'turpis.egestas.Aliquam@commodo.org'),
(82, '(250) 681-0530', 'P.O. Box 828, 8688 Malesuada St.', 'Sales Associate', 36, 'Male', 7, 'Ian Powers', 'Etiam.ligula@blanditviverraDonec.com'),
(83, '(525) 977-8422', '760-3751 Aliquam Rd.', 'Sales Associate', 45, 'Female', 4, 'Cedric Goodman', 'nunc.sit.amet@Vivamusnibh.ca'),
(84, '(117) 728-4877', '6193 A, Rd.', 'Sales Associate', 32, 'Male', 9, 'Emerald Head', 'dictum.Phasellus.in@elitfermentum.co.uk'),
(85, '(725) 714-0243', '3342 Metus Rd.', 'Sales Associate', 32, 'Male', 9, 'Lane Guzman', 'cursus.diam@faucibusMorbi.ca'),
(86, '(980) 911-3213', '155 Et Rd.', 'Sales Associate', 47, 'Male', 7, 'Ruth Paul', 'orci.sem.eget@semelit.net'),
(999, '(100) 100-1000', '100 Circle Street', 'Sales Associate', 100, '', 100, 'One hundred Man', '100@100.com');

-- --------------------------------------------------------

--
-- Table structure for table `employee_evaluation`
--

CREATE TABLE `employee_evaluation` (
  `EvaluationID` int(10) NOT NULL,
  `EmployeeID` int(10) NOT NULL,
  `Rating` float NOT NULL,
  `Comment` varchar(80) NOT NULL,
  `DateEvaluated` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_evaluation`
--

INSERT INTO `employee_evaluation` (`EvaluationID`, `EmployeeID`, `Rating`, `Comment`, `DateEvaluated`) VALUES
(1, 2, 5, 'Great Job!', '2018-06-01 07:00:00.000000'),
(3, 4, 3.5, 'Adequate ', '2018-06-06 03:18:00.000000'),
(4, 5, 4, 'Pretty good', '2018-06-06 21:00:00.000000'),
(5, 6, 3, 'Always late to work', '2018-06-08 07:46:31.000000'),
(6, 7, 5, 'Excellent', '2018-06-08 11:00:00.000000'),
(7, 8, 2, 'Poor', '2018-06-09 07:00:00.000000'),
(8, 9, 5, 'Great', '2018-06-11 00:00:26.000000'),
(9, 10, 5, 'Excellent', '2018-06-10 15:00:00.000000'),
(10, 11, 4.5, 'Great', '2018-06-07 13:29:00.000000'),
(11, 12, 3, 'Okay', '2018-06-08 11:00:33.000000'),
(12, 13, 4, 'Good', '2018-06-10 15:24:24.000000'),
(13, 14, 4, 'Good', '2018-06-08 07:00:00.000000'),
(14, 15, 4.5, 'Great', '2018-06-07 20:00:00.000000'),
(15, 16, 5, 'Excellent', '2018-06-10 12:00:00.000000'),
(16, 17, 4.5, 'Great work', '2018-06-04 15:00:00.000000'),
(17, 18, 2, 'Poor', '2018-06-04 22:00:00.000000'),
(18, 19, 4, 'Great work', '2018-06-03 21:00:00.000000'),
(19, 20, 3.5, 'Fair, still need improvement', '2018-06-10 10:09:00.000000'),
(20, 21, 3, 'Fair, still need improvement', '2018-06-08 00:00:00.000000'),
(21, 22, 4, 'Great work', '2018-06-11 05:00:00.000000'),
(22, 23, 4, 'Great work', '0000-00-00 00:00:00.000000'),
(23, 24, 4.5, 'Great', '0000-00-00 00:00:00.000000'),
(24, 25, 4.5, 'Great', '2005-02-18 08:00:00.000000'),
(25, 26, 2, 'Poor', '2007-03-17 07:00:00.000000'),
(26, 27, 5, 'Excellent', '2008-06-17 07:00:00.000000'),
(27, 28, 4, 'Good job', '0000-00-00 00:00:00.000000'),
(28, 29, 4, 'Good job', '2001-01-19 08:00:00.000000'),
(29, 30, 4, 'Great work', '0000-00-00 00:00:00.000000'),
(30, 31, 4, 'Great', '0000-00-00 00:00:00.000000'),
(31, 32, 4, 'Good job', '0000-00-00 00:00:00.000000'),
(32, 33, 4.5, 'Excellent', '0000-00-00 00:00:00.000000'),
(33, 34, 4, 'Great work', '0000-00-00 00:00:00.000000'),
(34, 35, 5, 'Excellent', '2008-05-17 07:00:00.000000'),
(35, 36, 3.5, 'Fair', '2006-08-17 07:00:00.000000'),
(36, 37, 3, 'Fair', '0000-00-00 00:00:00.000000'),
(37, 38, 4, 'Good job', '0000-00-00 00:00:00.000000'),
(38, 39, 4.5, 'Great work', '2012-07-18 07:00:00.000000'),
(39, 40, 3, 'Okay', '2006-09-18 07:00:00.000000'),
(40, 41, 3, 'Fair, still need improvement', '0000-00-00 00:00:00.000000'),
(41, 42, 2, 'Poor', '0000-00-00 00:00:00.000000'),
(42, 43, 4.5, 'Great work', '2003-08-18 07:00:00.000000'),
(43, 44, 4, 'Good job', '2006-10-17 07:00:00.000000'),
(44, 45, 3, 'Okay', '0000-00-00 00:00:00.000000'),
(45, 46, 4, 'Great', '2008-04-17 07:00:00.000000'),
(46, 47, 4, 'Great', '0000-00-00 00:00:00.000000'),
(47, 48, 4, 'Great', '2011-12-17 08:00:00.000000'),
(48, 49, 4, 'Great', '2011-05-18 07:00:00.000000'),
(49, 50, 3, 'Okay', '2006-02-17 08:00:00.000000'),
(50, 51, 4, 'Great work', '2005-02-18 08:00:00.000000'),
(51, 52, 2, 'Poor', '0000-00-00 00:00:00.000000'),
(52, 53, 3.5, 'Okay', '0000-00-00 00:00:00.000000'),
(53, 54, 3.5, 'Okay work', '2005-08-19 07:00:00.000000'),
(54, 55, 3, 'Okay', '2006-12-18 08:00:00.000000'),
(55, 56, 2, 'Poor', '0000-00-00 00:00:00.000000'),
(56, 57, 4, 'Excellent', '2012-02-18 08:00:00.000000'),
(57, 58, 2, 'Poor, really need improvement', '2002-01-18 08:00:00.000000'),
(58, 59, 3, 'Poor', '0000-00-00 00:00:00.000000'),
(59, 60, 4, 'Good job', '2008-05-17 07:00:00.000000'),
(60, 61, 4, 'Excellent', '0000-00-00 00:00:00.000000'),
(61, 62, 4.5, 'Great work', '0000-00-00 00:00:00.000000'),
(62, 63, 3, 'Great work', '0000-00-00 00:00:00.000000'),
(63, 64, 5, 'Great work', '2005-08-19 07:00:00.000000'),
(64, 65, 4, 'Great', '0000-00-00 00:00:00.000000'),
(65, 66, 4.5, 'Excellent', '0000-00-00 00:00:00.000000'),
(66, 67, 4, 'Great', '2012-01-18 08:00:00.000000'),
(67, 68, 3, 'Okay', '0000-00-00 00:00:00.000000'),
(68, 69, 4, 'great', '2011-04-17 07:00:00.000000'),
(69, 70, 4, 'great', '0000-00-00 00:00:00.000000'),
(70, 71, 3, 'Fair, still need improvement', '0000-00-00 00:00:00.000000'),
(71, 72, 2, 'Poor', '2005-11-19 08:00:00.000000'),
(72, 73, 4.5, 'Excellent', '0000-00-00 00:00:00.000000'),
(73, 74, 2, 'Okay', '0000-00-00 00:00:00.000000'),
(74, 75, 4, 'Great', '0000-00-00 00:00:00.000000'),
(75, 76, 5, 'Excellent', '0000-00-00 00:00:00.000000'),
(77, 78, 4, 'Great', '0000-00-00 00:00:00.000000'),
(78, 79, 3, 'Poor', '2004-01-19 08:00:00.000000'),
(79, 80, 4, 'Good job', '2011-09-18 07:00:00.000000'),
(80, 81, 4, 'Good job', '0000-00-00 00:00:00.000000'),
(81, 82, 4, 'Great', '0000-00-00 00:00:00.000000'),
(82, 83, 5, 'Excellent', '0000-00-00 00:00:00.000000'),
(83, 84, 3.5, 'Fair, still need improvement', '0000-00-00 00:00:00.000000'),
(84, 85, 4, 'Great work', '2006-09-17 07:00:00.000000'),
(100, 2, 5, 'Great', '2018-06-11 07:00:00.000000'),
(101, 2, 4.5, 'Amazing', '2018-06-11 07:00:00.000000'),
(107, 7, 4.6, 'Great Stuff', '2018-06-11 07:00:00.000000'),
(108, 7, 4.8, 'Great Stuff', '2018-06-11 07:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `manage`
--

CREATE TABLE `manage` (
  `EmployeeID1` int(11) NOT NULL,
  `EmployeeID2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manage`
--

INSERT INTO `manage` (`EmployeeID1`, `EmployeeID2`) VALUES
(6, 7),
(8, 7),
(9, 7),
(26, 7),
(36, 7),
(45, 7),
(55, 7),
(65, 7),
(80, 7),
(11, 10),
(12, 10),
(13, 10),
(32, 10),
(82, 10),
(14, 16),
(15, 16),
(25, 16),
(61, 16),
(75, 16),
(16, 17),
(43, 17),
(49, 17),
(67, 17),
(37, 19),
(41, 19),
(51, 19),
(56, 19),
(69, 19),
(21, 47),
(40, 47),
(79, 47),
(22, 50),
(38, 50),
(39, 50),
(53, 50),
(59, 50),
(64, 50),
(74, 50),
(20, 52),
(24, 52),
(31, 52),
(33, 52),
(46, 52),
(54, 52),
(60, 52),
(68, 52),
(71, 52),
(73, 52),
(78, 52),
(84, 52),
(34, 58),
(35, 58),
(44, 58),
(63, 58),
(83, 58),
(23, 66),
(85, 66),
(18, 70),
(27, 70),
(28, 70),
(29, 70),
(42, 70),
(48, 70),
(62, 70),
(72, 70),
(81, 70);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `OrderID` int(11) NOT NULL,
  `EmployeeID` int(10) NOT NULL,
  `VehicleID` int(10) NOT NULL,
  `SupplierID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`OrderID`, `EmployeeID`, `VehicleID`, `SupplierID`) VALUES
(1, 3, 9, 197),
(2, 3, 62, 144),
(3, 7, 32, 186),
(4, 7, 60, 12),
(5, 7, 72, 95),
(6, 10, 13, 151),
(7, 10, 28, 185),
(8, 10, 39, 17),
(9, 10, 49, 281),
(10, 10, 51, 10),
(11, 16, 11, 186),
(12, 16, 21, 46),
(13, 16, 25, 75),
(14, 16, 42, 25),
(15, 16, 50, 53),
(16, 16, 66, 270),
(17, 16, 68, 186),
(18, 16, 69, 13),
(19, 16, 74, 57),
(20, 16, 75, 280),
(21, 17, 14, 170),
(22, 17, 23, 199),
(23, 17, 30, 121),
(24, 17, 34, 33),
(25, 17, 40, 281),
(26, 17, 41, 68),
(27, 17, 47, 138),
(28, 17, 54, 117),
(29, 17, 55, 85),
(30, 17, 77, 84),
(31, 19, 1, 36),
(32, 19, 2, 90),
(33, 19, 10, 144),
(34, 19, 22, 121),
(35, 47, 4, 61),
(36, 47, 7, 64),
(37, 47, 18, 67),
(38, 47, 27, 142),
(39, 47, 36, 138),
(40, 47, 37, 58),
(41, 47, 46, 138),
(42, 47, 52, 121),
(43, 47, 53, 105),
(44, 47, 71, 142),
(45, 50, 3, 186),
(46, 50, 5, 186),
(47, 50, 24, 144),
(48, 50, 44, 186),
(49, 50, 48, 218),
(50, 50, 63, 47),
(51, 50, 73, 27),
(52, 52, 6, 25),
(53, 52, 15, 138),
(54, 52, 16, 117),
(55, 52, 19, 105),
(56, 52, 58, 340),
(57, 52, 70, 197),
(58, 58, 8, 121),
(59, 58, 20, 170),
(60, 58, 57, 220),
(61, 58, 59, 49),
(62, 58, 61, 173),
(63, 58, 64, 93),
(64, 58, 65, 117),
(65, 58, 76, 172),
(66, 66, 29, 49),
(67, 66, 31, 340),
(68, 66, 35, 138),
(69, 66, 43, 121),
(70, 66, 45, 142),
(71, 66, 67, 199),
(72, 70, 12, 186),
(73, 70, 17, 117),
(74, 70, 26, 172),
(75, 70, 33, 13),
(76, 70, 38, 53),
(77, 70, 56, 105);

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE `sale` (
  `SaleID` int(5) NOT NULL,
  `VehicleID` int(5) NOT NULL,
  `CustomerID` int(5) NOT NULL,
  `EmployeeID` int(5) NOT NULL,
  `Date` date NOT NULL,
  `PaymentReceived` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`SaleID`, `VehicleID`, `CustomerID`, `EmployeeID`, `Date`, `PaymentReceived`) VALUES
(1, 1, 63, 49, '2018-03-30', 'No'),
(2, 77, 57, 62, '2018-04-01', 'No'),
(3, 56, 62, 2, '2018-05-26', 'No'),
(4, 4, 59, 33, '2018-05-17', 'No'),
(6, 6, 14, 81, '2018-05-09', 'Yes'),
(7, 64, 24, 21, '2018-03-05', 'No'),
(8, 8, 2, 29, '2018-03-27', 'No'),
(9, 9, 22, 59, '2018-04-23', 'Yes'),
(10, 10, 38, 30, '2018-04-18', 'No'),
(11, 11, 92, 17, '2018-06-17', 'No'),
(12, 63, 83, 20, '2018-05-31', 'No'),
(14, 14, 30, 64, '2018-04-05', 'No'),
(15, 15, 102, 13, '2018-04-10', 'No'),
(16, 53, 55, 76, '2018-06-19', 'Yes'),
(17, 17, 26, 65, '2018-03-23', 'No'),
(18, 18, 110, 57, '2018-04-24', 'Yes'),
(19, 19, 18, 81, '2018-04-15', 'Yes'),
(20, 20, 6, 2, '2018-05-27', 'Yes'),
(21, 59, 57, 72, '2018-03-25', 'Yes'),
(22, 22, 7, 64, '2018-04-20', 'No'),
(23, 23, 48, 47, '2018-05-02', 'No'),
(24, 60, 27, 76, '2018-05-21', 'No'),
(25, 25, 40, 23, '2018-04-17', 'No'),
(26, 26, 103, 86, '2018-05-13', 'No'),
(27, 75, 54, 68, '2018-04-25', 'Yes'),
(28, 28, 50, 84, '2018-03-31', 'No'),
(29, 29, 112, 52, '2018-06-02', 'Yes'),
(31, 31, 121, 39, '2018-03-26', 'Yes'),
(32, 32, 44, 40, '2018-03-29', 'Yes'),
(33, 69, 32, 58, '2018-04-17', 'Yes'),
(34, 34, 75, 65, '2018-04-25', 'Yes'),
(35, 35, 96, 51, '2018-05-07', 'Yes'),
(36, 55, 94, 64, '2018-04-24', 'Yes'),
(37, 37, 97, 24, '2018-05-10', 'Yes'),
(38, 38, 30, 45, '2018-05-18', 'No'),
(39, 70, 26, 12, '2018-03-27', 'Yes'),
(40, 40, 48, 44, '2018-05-05', 'Yes'),
(41, 41, 123, 37, '2018-05-19', 'Yes'),
(42, 42, 87, 38, '2018-04-07', 'No'),
(43, 43, 17, 25, '2018-05-06', 'Yes'),
(44, 44, 23, 41, '2018-03-01', 'Yes'),
(45, 45, 105, 16, '2018-04-03', 'Yes'),
(46, 46, 19, 33, '2018-06-14', 'No'),
(47, 47, 64, 67, '2018-03-19', 'Yes'),
(48, 48, 115, 24, '2018-04-19', 'No'),
(49, 49, 9, 66, '2018-04-30', 'Yes'),
(50, 50, 79, 17, '2018-03-20', 'Yes'),
(666, 12, 7, 7, '0000-00-00', 'yes'),
(668, 12, 7, 7, '0000-00-00', 'yes'),
(777, 7, 3, 3, '0000-00-00', 'yes'),
(888, 5, 3, 3, '0000-00-00', 'yes'),
(999, 3, 3, 3, '0000-00-00', 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `SupplierID` int(10) NOT NULL,
  `Address` varchar(90) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Email` varchar(60) NOT NULL,
  `SupplierName` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`SupplierID`, `Address`, `Phone`, `Email`, `SupplierName`) VALUES
(10, 'P.O. Box 230, 5424 Neque St.', '(450) 875-8234', 'et@a.edu', 'Enim Diam Corporation'),
(12, '308-1624 Libero. Av.', '(819) 933-5081', 'ultricies.adipiscing.enim@pedemalesuadavel.co.uk', 'Tristique Ltd'),
(13, 'Ap #999-9606 Pharetra. Ave', '(506) 781-2249', 'ornare@Aliquameratvolutpat.net', 'Egestas Aliquam Nec Consulting'),
(15, 'P.O. Box 650, 6689 Gravida Rd.', '(306) 807-3167', 'nisi@ornaresagittis.org', 'Vel Company'),
(17, '9283 Suspendisse Ave', '(780) 901-6217', 'at.nisi.Cum@netuset.ca', 'Mauris LLC'),
(18, 'Ap #537-8411 Pellentesque St.', '(705) 165-4809', 'Quisque@miac.edu', 'Neque Venenatis Inc.'),
(20, '8198 Orci St.', '(226) 883-7571', 'metus@vitae.org', 'Pellentesque Inc.'),
(21, '570-2793 Non, Ave', '(365) 565-7613', 'a.mi.fringilla@pellentesquemassalobortis.org', 'Nec Ante Foundation'),
(22, 'P.O. Box 916, 7208 Vitae Rd.', '(705) 484-2943', 'Mauris.vestibulum.neque@ipsumportaelit.net', 'Praesent Luctus Associates'),
(24, '537-3826 Convallis Av.', '(647) 221-7961', 'molestie.arcu@pharetrased.edu', 'Aliquam Adipiscing Lacus Limited'),
(25, '678-8187 In Street', '(603) 302-3302', 'id.ante.dictum@ornarelectus.org', 'Purus Sapien Gravida Corp.'),
(27, '4834 Felis Street', '(365) 857-2678', 'et@purusactellus.co.uk', 'Orci Ltd'),
(30, 'P.O. Box 544, 6987 Vulputate St.', '(306) 617-9020', 'pharetra.sed@necluctusfelis.com', 'Amet Risus Foundation'),
(33, '734-719 Fusce Road', '(905) 760-2397', 'eu@necmalesuada.com', 'Metus Vivamus Euismod LLP'),
(36, '5987 Neque Av.', '(249) 175-0248', 'id.enim@tinciduntvehicula.org', 'Aliquam Nisl LLC'),
(37, '856-6914 Aliquam Street', '(450) 151-8427', 'convallis.erat.eget@ridiculus.com', 'Diam Duis PC'),
(38, 'Ap #719-6447 Lacinia Street', '(587) 982-6958', 'amet.lorem.semper@dui.org', 'Accumsan Laoreet Ipsum PC'),
(39, 'Ap #207-702 Tincidunt Rd.', '(867) 568-3742', 'id.nunc.interdum@mollisDuis.com', 'Ligula Eu Incorporated'),
(40, '300-9244 Sed Road', '(249) 296-1814', 'urna.suscipit.nonummy@metus.net', 'Nunc Inc.'),
(41, 'Ap #739-8010 Primis Av.', '(204) 551-3901', 'semper@eu.org', 'Vivamus Euismod Urna Foundation'),
(42, 'P.O. Box 252, 9159 Augue Street', '(902) 676-9494', 'id.ante@Integer.co.uk', 'Ipsum Dolor Sit Institute'),
(44, '8515 Elementum, St.', '(519) 155-9852', 'in.tempus.eu@imperdietnec.com', 'Et Magnis Consulting'),
(46, '9326 Mus. Rd.', '(807) 791-3532', 'Phasellus@egetmetusIn.com', 'Dolor Quisque Tincidunt Foundation'),
(47, '492-1560 Ultrices Road', '(437) 480-6964', 'eleifend@Nullatemporaugue.com', 'Ligula Consectetuer Rhoncus Limited'),
(49, 'P.O. Box 167, 2707 Ipsum St.', '(647) 158-6444', 'eu@ante.org', 'Ligula Corporation'),
(50, 'Ap #972-9718 Integer Street', '(819) 674-4310', 'ullamcorper.magna.Sed@Proinvel.com', 'Mollis Duis Foundation'),
(51, '854-2980 Aliquet Road', '(519) 330-5847', 'mollis@tinciduntpedeac.co.uk', 'Metus Vitae Velit Ltd'),
(53, 'Ap #852-4752 Rutrum. Avenue', '(437) 216-4393', 'Duis.ac@vulputate.com', 'Sit Incorporated'),
(57, '628-3325 Gravida St.', '(416) 540-8987', 'ut@eueuismodac.edu', 'Ligula Incorporated'),
(58, 'Ap #620-387 Velit Av.', '(343) 693-4143', 'Curabitur.massa@Donec.co.uk', 'Risus Institute'),
(60, 'P.O. Box 217, 5313 Erat St.', '(579) 769-9560', 'diam@Donec.ca', 'Lorem Limited'),
(61, '588-9451 Aliquam Street', '(226) 986-0561', 'at@sedhendrerit.edu', 'Pretium Neque Inc.'),
(62, 'P.O. Box 936, 1625 Euismod Street', '(431) 678-0483', 'in@egestasSed.edu', 'Donec Institute'),
(64, 'P.O. Box 358, 9322 Malesuada St.', '(514) 450-2360', 'nulla@Duisatlacus.net', 'Eget Tincidunt Limited'),
(67, 'P.O. Box 550, 1297 Cras St.', '(780) 240-9091', 'risus.quis@dignissimtempor.edu', 'Posuere At Velit Corp.'),
(68, '5882 Euismod St.', '(343) 396-8161', 'sit@nulla.ca', 'Mauris Ltd'),
(70, '414-6808 Nulla St.', '(604) 305-2720', 'eu@sagittis.edu', 'Tempor Associates'),
(72, 'Ap #959-1199 Semper Road', '(705) 962-7487', 'elit.sed@Phaselluselitpede.ca', 'Massa Suspendisse Ltd'),
(73, '9868 Interdum Rd.', '(506) 417-0731', 'sodales.at@FuscemollisDuis.ca', 'Metus Aliquam Limited'),
(74, '3788 Donec Road', '(506) 908-5305', 'a.felis@nibh.net', 'Nam Tempor Ltd'),
(75, 'P.O. Box 800, 9628 Est Avenue', '(204) 196-2462', 'libero.nec.ligula@Utnecurna.com', 'Enim Etiam Imperdiet Limited'),
(80, '213-1393 Ullamcorper St.', '(450) 521-4614', 'at.velit@egestas.edu', 'Sem LLC'),
(81, '649 Sollicitudin St.', '(905) 610-4431', 'tincidunt.neque@etarcu.net', 'Ornare LLC'),
(84, 'Ap #311-3329 Sed St.', '(437) 634-5986', 'Sed.id.risus@vitaesodales.com', 'Dictum Mi Ac Ltd'),
(85, '280-9362 Scelerisque, Av.', '(506) 495-9262', 'libero.Morbi.accumsan@Sed.org', 'Aliquet Odio Industries'),
(86, '850-5271 Egestas, Rd.', '(873) 933-0189', 'eget@mauris.ca', 'Aliquam Enim Institute'),
(89, '9837 Faucibus Avenue', '(581) 913-4124', 'luctus.aliquet@nibh.org', 'Aliquet LLC'),
(90, '375-5199 Id, St.', '(867) 515-0482', 'non@laoreet.net', 'Dolor Sit Amet Institute'),
(92, 'Ap #671-2350 Nec St.', '(709) 996-2172', 'Aliquam.ornare@mauriseuelit.edu', 'Ante Corporation'),
(93, 'Ap #300-3616 Mauris Road', '(438) 512-8967', 'interdum.Nunc.sollicitudin@Donecfelisorci.com', 'Phasellus Vitae Institute'),
(94, '7381 Id Avenue', '(905) 185-9381', 'semper.auctor@arcu.org', 'Libero Nec Consulting'),
(95, 'Ap #458-283 Congue. Road', '(514) 119-8661', 'vestibulum.lorem@hendrerit.net', 'Pede Suspendisse Dui Company'),
(97, 'Ap #519-2260 Facilisis Av.', '(416) 690-6272', 'sem.magna.nec@Mauris.com', 'Enim Diam Vel Industries'),
(99, 'First Street, Vancouver', '111-111-1111', 'one@supplier.ca', 'Number One'),
(105, '756-6825 Suspendisse Ave', '(613) 696-9519', 'auctor.ullamcorper@venenatisamagna.com', 'Egestas Lacinia Sed LLP'),
(117, 'P.O. Box 855, 1968 Nec, Av.', '(365) 525-4913', 'urna.Nullam@nasceturridiculusmus.net', 'Odio Semper Cursus LLC'),
(120, '123-6308 Ultrices, Rd.', '(604) 654-0540', 'Morbi.vehicula.Pellentesque@ametrisus.co.uk', 'Interdum Curabitur Dictum Associates'),
(121, '6813 Taciti Ave', '(365) 872-1340', 'ultrices@felisadipiscing.ca', 'Neque LLP'),
(138, '6233 Dapibus St.', '(873) 962-4941', 'Proin.eget.odio@nonluctus.net', 'In Institute'),
(142, 'Ap #446-4878 Convallis Avenue', '(807) 127-2337', 'nunc.ac.mattis@etcommodo.edu', 'Ornare Associates'),
(144, '5949 Risus. St.', '(431) 214-3532', 'pharetra@tortordictum.co.uk', 'Nonummy LLP'),
(151, '982-8812 Massa. Street', '(289) 791-1946', 'vitae.sodales.nisi@sociisnatoque.ca', 'Augue Sed Associates'),
(161, '680-9649 Duis Av.', '(204) 194-0664', 'ultricies.adipiscing@erat.co.uk', 'Consequat Dolor Vitae Limited'),
(168, 'P.O. Box 701, 6351 Orci Av.', '(205) 633-0316', 'Cum.sociis.natoque@nislQuisquefringilla.ca', 'Ac Associates'),
(170, '6217 Aliquet St.', '(780) 634-1275', 'vel@laoreetlibero.com', 'Enim Commodo Hendrerit Institute'),
(172, 'P.O. Box 577, 2745 Dui. Avenue', '(205) 208-8570', 'ornare.elit.elit@vitaeeratVivamus.net', 'Vel Est Associates'),
(173, 'P.O. Box 532, 1687 Ligula. Rd.', '(514) 965-2809', 'eu.tellus@sodalesat.org', 'Eu Enim Etiam Consulting'),
(185, '570-6736 Libero. St.', '(705) 146-1858', 'laoreet.posuere.enim@sedorcilobortis.net', 'Mollis Vitae Institute'),
(186, '996-3010 Rutrum Rd.', '(647) 637-2762', 'lacus.Nulla.tincidunt@penatibuset.net', 'Etiam Imperdiet Institute'),
(197, '4168 Scelerisque Avenue', '(873) 355-9069', 'lectus@enimEtiam.net', 'Accumsan Institute'),
(199, '415-3763 Aliquet Ave', '(778) 596-5059', 'Morbi.quis.urna@Suspendisseeleifend.co.uk', 'Nunc Institute'),
(218, 'Ap #853-5632 Risus. St.', '(437) 170-0042', 'scelerisque@vitaesemper.edu', 'Lorem Corp.'),
(220, '4347 Turpis Road', '(819) 143-2699', 'egestas@nequetellus.edu', 'Pede Malesuada Vel PC'),
(270, 'P.O. Box 615, 2252 Ligula. Avenue', '(450) 891-8392', 'pellentesque.tellus@liberoProinmi.net', 'Etiam Bibendum Fermentum Corp.'),
(280, '458 Donec Rd.', '(613) 324-6062', 'hendrerit.a@Uttinciduntorci.edu', 'Pharetra Quisque Ac LLC'),
(281, 'P.O. Box 398, 6150 Nunc Avenue', '(603) 525-2753', 'scelerisque.mollis.Phasellus@blanditenim.co.uk', 'Non Enim Industries'),
(340, 'Ap #159-5185 Elit Ave', '(705) 650-0584', 'convallis.erat@enim.ca', 'Amet Associates');

-- --------------------------------------------------------

--
-- Table structure for table `testdrive`
--

CREATE TABLE `testdrive` (
  `CustomerID` int(11) NOT NULL,
  `VehicleID` int(11) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testdrive`
--

INSERT INTO `testdrive` (`CustomerID`, `VehicleID`, `Date`) VALUES
(1, 8, '2018-06-01'),
(1, 72, '2018-06-20'),
(2, 7, '2018-06-01'),
(2, 75, '2018-09-14'),
(4, 3, '2018-11-16'),
(6, 19, '2018-04-27'),
(7, 29, '2018-09-29'),
(9, 31, '2018-05-24'),
(10, 66, '2018-11-06'),
(12, 42, '2018-11-22'),
(12, 46, '2018-02-08'),
(15, 39, '2018-12-23'),
(16, 16, '2018-12-11'),
(17, 59, '2018-10-04'),
(20, 65, '2018-01-22'),
(21, 7, '2018-06-11'),
(23, 48, '2018-04-17'),
(24, 49, '2018-11-30'),
(25, 22, '2018-10-29'),
(25, 37, '2018-12-12'),
(26, 46, '2018-04-14'),
(27, 7, '2018-09-30'),
(28, 4, '2018-10-03'),
(28, 5, '2018-06-22'),
(29, 20, '2018-05-05'),
(30, 74, '2018-05-09'),
(33, 11, '2018-04-20'),
(34, 30, '2018-09-25'),
(44, 23, '2018-11-03'),
(44, 75, '2018-04-05'),
(47, 53, '2018-07-30'),
(48, 6, '2018-11-14'),
(48, 24, '2018-07-23'),
(50, 64, '2018-10-01'),
(57, 27, '2018-04-06'),
(57, 29, '2018-10-27'),
(60, 4, '2018-08-31'),
(72, 37, '2018-11-30'),
(72, 68, '2018-11-14'),
(74, 72, '2018-02-19'),
(75, 48, '2018-08-01'),
(77, 42, '2018-09-22'),
(80, 39, '2018-09-09'),
(88, 66, '2018-05-01'),
(106, 53, '2018-09-13'),
(107, 14, '2018-08-26'),
(110, 69, '2018-10-31'),
(114, 49, '2018-02-18'),
(114, 55, '2018-11-12'),
(114, 63, '2018-01-01'),
(121, 1, '2018-01-16'),
(122, 18, '2018-02-14');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `VehicleID` int(5) NOT NULL,
  `Model` varchar(20) NOT NULL,
  `WheelDrive` varchar(6) NOT NULL,
  `Brakes` varchar(10) NOT NULL,
  `Transmission` varchar(10) NOT NULL,
  `NumberAvailable` int(5) NOT NULL,
  `GasType` varchar(15) NOT NULL,
  `Price` int(11) NOT NULL,
  `EmployeeID` int(11) NOT NULL,
  `SupplierID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`VehicleID`, `Model`, `WheelDrive`, `Brakes`, `Transmission`, `NumberAvailable`, `GasType`, `Price`, `EmployeeID`, `SupplierID`) VALUES
(1, 'Mazda', '2WD', 'Anti-lock', 'Automatic', 6, 'gas', 3000, 3, 10),
(2, 'Mazda', '2WD', 'Disc', 'Automatic', 8, 'diesel', 5000, 3, 12),
(3, 'Mazda', '2WD', 'Anti-lock', 'Automatic', 18, 'diesel', 20000, 3, 13),
(4, 'Mazda', '4WD', 'drum', 'manual', 10, 'gas', 34500, 3, 15),
(5, 'Mazda', '2WD', 'Disc', 'Automatic', 21, 'gas', 8000, 3, 17),
(6, 'Mazda', '2WD', 'Disc', 'Automatic', 19, 'diesel', 5650, 16, 18),
(7, 'Lexus', '2WD', 'Anti-lock', 'Automatic', 16, 'gas', 10000, 8, 20),
(8, 'Lexus', '2WD', 'disc', 'automatic', 24, 'diesel', 12000, 10, 21),
(9, 'Lexus', '2WD', 'Drum', 'Automatic', 11, 'gas', 8000, 10, 22),
(10, 'Lexus', '2WD', 'Drum', 'Automatic', 14, 'gas', 20000, 3, 24),
(11, 'Lexus', '2WD', 'Drum', 'Automatic', 13, 'gas', 15000, 8, 25),
(12, 'Lexus', '2WD', 'Disc', 'Manual', 19, 'electric', 12000, 8, 27),
(13, 'Lexus', '2WD', 'Disc', 'Manual', 12, 'diesel', 16000, 3, 30),
(14, 'Toyota', '4WD', 'Drum', 'Manual', 23, 'gas', 8000, 17, 33),
(15, 'Toyota', '2WD', 'Drum', 'Automatic', 11, 'gas', 10000, 3, 36),
(16, 'Toyota', '2WD', 'Disc', 'Manual', 22, 'electric', 11500, 10, 37),
(17, 'Toyota', '2WD', 'Anti-lock', 'Automatic', 21, 'diesel', 8500, 16, 38),
(18, 'Toyota', '2WD', 'Disc', 'Manual', 7, 'electric', 9000, 8, 39),
(19, 'Toyota', '4WD', 'Anti-lock', 'Manual', 9, 'electric', 8700, 3, 40),
(20, 'Toyota', '4WD', 'Anti-lock', 'Automatic', 5, 'diesel', 6000, 10, 41),
(21, 'Toyota', '2WD', 'Anti-lock', 'Manual', 11, 'diesel', 3500, 8, 42),
(22, 'Toyota', '2WD', 'Disc', 'Automatic', 20, 'gas', 4000, 10, 44),
(23, 'Toyota', '4WD', 'Drum', 'Manual', 20, 'electric', 6000, 42, 46),
(24, 'Toyota', '2WD', 'Anti-lock', 'Automatic', 14, 'electric', 7500, 16, 47),
(25, 'Volvo', '2WD', 'Anti-lock', 'Automatic', 6, 'gas', 12000, 3, 49),
(26, 'Volvo', '4WD', 'Drum', 'Automatic', 14, 'gas', 22000, 7, 50),
(27, 'Volvo', '2WD', 'Disc', 'Manual', 11, 'diesel', 19600, 10, 51),
(28, 'Volvo', '4WD', 'Drum', 'Automatic', 20, 'electric', 13000, 16, 53),
(29, 'Volvo', '2WD', 'Anti-lock', 'Automatic', 15, 'electric', 14600, 17, 57),
(30, 'Pontiac', '4WD', 'Anti-lock', 'Automatic', 5, 'gas', 18900, 19, 58),
(31, 'Volvo', '2WD', 'Anti-lock', 'Automatic', 15, 'gas', 19200, 47, 60),
(32, 'Volvo', '4WD', 'Disc', 'Automatic', 21, 'diesel', 17000, 50, 61),
(33, 'Volvo', '4WD', 'Drum', 'Automatic', 18, 'gas', 16000, 52, 62),
(34, 'Volvo', '4WD', 'Drum', 'Automatic', 12, 'gas', 14650, 58, 64),
(35, 'Volvo', '2WD', 'Disc', 'Automatic', 13, 'gas', 17900, 66, 70),
(36, 'Volvo', '2WD', 'Anti-lock', 'Manual', 6, 'diesel', 18000, 70, 68),
(37, 'Volvo', '4WD', 'Drum', 'Automatic', 22, 'diesel', 22000, 66, 67),
(38, 'Ford', '4WD', 'Disc', 'Automatic', 23, 'gas', 23000, 70, 81),
(39, 'Ford', '2WD', 'Anti-lock', 'Automatic', 16, 'gas', 22000, 7, 84),
(40, 'Ford', '2WD', 'Disc', 'Manual', 25, 'gas', 20000, 10, 86),
(41, 'Ford', '2WD', 'Disc', 'Automatic', 17, 'diesel', 18000, 16, 89),
(42, 'Ford', '2WD', 'Anti-lock', 'Manual', 14, 'diesel', 23000, 17, 85),
(43, 'Ford', '2WD', 'Disc', 'Automatic', 5, 'gas', 14000, 19, 90),
(44, 'Ford', '4WD', 'Disc', 'Manual', 13, 'diesel', 16500, 47, 92),
(45, 'Ford', '4WD', 'Anti-lock', 'Automatic', 17, 'gas', 12000, 50, 93),
(46, 'Ford', '2WD', 'Anti-lock', 'Automatic', 25, 'diesel', 19000, 52, 94),
(47, 'Ford', '4WD', 'Drum', 'Automatic', 8, 'diesel', 15500, 58, 97),
(48, 'Ford', '2WD', 'Disc', 'Automatic', 12, 'diesel', 15500, 66, 99),
(49, 'Ford', '2WD', 'Drum', 'Manual', 21, 'gas', 12350, 70, 95),
(50, 'Porsche', '4WD', 'Anti-lock', 'Automatic', 24, 'electric', 19000, 3, 72),
(51, 'Porsche', '4WD', 'Drum', 'Manual', 8, 'electric', 53000, 7, 75),
(52, 'Porsche', '2WD', 'Anti-lock', 'Automatic', 22, 'electric', 34500, 10, 80),
(53, 'Porsche', '2WD', 'Drum', 'Automatic', 5, 'gas', 42000, 16, 73),
(54, 'Porsche', '2WD', 'Drum', 'Manual', 5, 'electric', 29000, 17, 74),
(55, 'Porsche', '2WD', 'Anti-lock', 'Automatic', 24, 'gas', 37500, 19, 105),
(56, 'Porsche', '2WD', 'Anti-lock', 'Automatic', 17, 'electric', 45000, 47, 117),
(57, 'Porsche', '2WD', 'Anti-lock', 'Automatic', 19, 'gas', 38000, 50, 120),
(58, 'Porsche', '2WD', 'Disc', 'Automatic', 20, 'electric', 35000, 52, 121),
(59, 'Porsche', '4WD', 'Drum', 'Manual', 16, 'electric', 70000, 58, 138),
(60, 'Volkwagen', '4WD', 'Disc', 'Automatic', 21, 'diesel', 15000, 66, 142),
(61, 'Volkwagen', '2WD', 'Disc', 'Manual', 12, 'diesel', 18000, 70, 144),
(62, 'Volkwagen', '2WD', 'Drum', 'Manual', 9, 'gas', 20000, 3, 151),
(63, 'Volkwagen', '2WD', 'Anti-lock', 'Automatic', 6, 'gas', 15000, 10, 168),
(64, 'Volkwagen', '2WD', 'Anti-lock', 'Manual', 11, 'gas', 12000, 7, 170),
(65, 'Volkwagen', '2WD', 'Anti-lock', 'Automatic', 25, 'gas', 3500, 17, 173),
(66, 'Volkwagen', '4WD', 'Anti-lock', 'Automatic', 12, 'diesel', 5500, 16, 185),
(67, 'Volkwagen', '2WD', 'Anti-lock', 'Manual', 5, 'gas', 6000, 19, 186),
(68, 'Volkwagen', '2WD', 'Drum', 'Automatic', 12, 'electric', 7500, 50, 197),
(69, 'Volkwagen', '2WD', 'Disc', 'Manual', 7, 'diesel', 8000, 47, 199),
(70, 'Volkwagen', '2WD', 'Anti-lock', 'Automatic', 14, 'diesel', 8000, 58, 218),
(71, 'Volkwagen', '2WD', 'Drum', 'Automatic', 15, 'gas', 12000, 66, 220),
(72, 'Volkwagen', '2WD', 'Disc', 'Automatic', 7, 'electric', 13000, 52, 270),
(73, 'Volkwagen', '2WD', 'Disc', 'Automatic', 9, 'gas', 11000, 70, 340),
(74, 'Volkwagen', '2WD', 'Drum', 'Automatic', 22, 'electric', 10000, 58, 280),
(75, 'Chevy', '2WD', 'Anti-lock', 'Manual', 15, 'diesel', 7500, 52, 281),
(76, 'Chevy', '2WD', 'Anti-lock', 'Automatic', 20, 'electric', 20000, 66, 172),
(77, 'Chevy', '4WD', 'Drum', 'Manual', 7, 'diesel', 15000, 17, 161);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EmployeeID`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `employee_evaluation`
--
ALTER TABLE `employee_evaluation`
  ADD PRIMARY KEY (`EvaluationID`),
  ADD KEY `Employee Id` (`EmployeeID`);

--
-- Indexes for table `manage`
--
ALTER TABLE `manage`
  ADD PRIMARY KEY (`EmployeeID1`,`EmployeeID2`),
  ADD KEY `EmployeeId1` (`EmployeeID1`,`EmployeeID2`),
  ADD KEY `EmployeeId2` (`EmployeeID2`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `EmployeeID_asf` (`EmployeeID`),
  ADD KEY `SupplierID_ok` (`SupplierID`),
  ADD KEY `VehicleID_ok` (`VehicleID`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`SaleID`),
  ADD UNIQUE KEY `SaleId` (`SaleID`),
  ADD KEY `SaleId_2` (`SaleID`,`VehicleID`,`CustomerID`,`EmployeeID`),
  ADD KEY `CustomerId` (`CustomerID`),
  ADD KEY `EmployeeId` (`EmployeeID`),
  ADD KEY `VehicleId` (`VehicleID`) USING BTREE;

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`SupplierID`);

--
-- Indexes for table `testdrive`
--
ALTER TABLE `testdrive`
  ADD PRIMARY KEY (`CustomerID`,`VehicleID`),
  ADD KEY `CustomerId` (`CustomerID`,`VehicleID`),
  ADD KEY `VehicleId` (`VehicleID`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`VehicleID`),
  ADD KEY `EmployeeID_oke` (`EmployeeID`),
  ADD KEY `SupplierID_oke` (`SupplierID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CustomerID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `EmployeeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `SupplierID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=341;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `VehicleID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee_evaluation`
--
ALTER TABLE `employee_evaluation`
  ADD CONSTRAINT `EmployeeIdFK` FOREIGN KEY (`EmployeeID`) REFERENCES `employee` (`EmployeeID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `manage`
--
ALTER TABLE `manage`
  ADD CONSTRAINT `manage_ibfk_1` FOREIGN KEY (`EmployeeID1`) REFERENCES `employee` (`EmployeeID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `manage_ibfk_2` FOREIGN KEY (`EmployeeID2`) REFERENCES `employee` (`EmployeeID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `EmployeeID_asf` FOREIGN KEY (`EmployeeID`) REFERENCES `employee` (`EmployeeID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `SupplierID_ok` FOREIGN KEY (`SupplierID`) REFERENCES `supplier` (`SupplierID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `VehicleID_ok` FOREIGN KEY (`VehicleID`) REFERENCES `vehicle` (`VehicleID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sale`
--
ALTER TABLE `sale`
  ADD CONSTRAINT `sale_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sale_ibfk_2` FOREIGN KEY (`EmployeeID`) REFERENCES `employee` (`EmployeeID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sale_ibfk_4` FOREIGN KEY (`VehicleID`) REFERENCES `vehicle` (`VehicleID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `testdrive`
--
ALTER TABLE `testdrive`
  ADD CONSTRAINT `testdrive_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `testdrive_ibfk_2` FOREIGN KEY (`VehicleID`) REFERENCES `vehicle` (`VehicleID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD CONSTRAINT `EmployeeID_oke` FOREIGN KEY (`EmployeeID`) REFERENCES `employee` (`EmployeeID`) ON DELETE NO ACTION,
  ADD CONSTRAINT `SupplierID_oke` FOREIGN KEY (`SupplierID`) REFERENCES `supplier` (`SupplierID`) ON DELETE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
