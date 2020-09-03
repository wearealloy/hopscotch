-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 03, 2020 at 01:37 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `dev_hopscotch_craft3`
--

-- --------------------------------------------------------

--
-- Table structure for table `assetindexdata`
--

CREATE TABLE `assetindexdata` (
  `id` int(11) NOT NULL,
  `sessionId` varchar(36) NOT NULL DEFAULT '',
  `volumeId` int(11) NOT NULL,
  `uri` text,
  `size` bigint(20) UNSIGNED DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `recordId` int(11) DEFAULT NULL,
  `inProgress` tinyint(1) DEFAULT '0',
  `completed` tinyint(1) DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` int(11) NOT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `folderId` int(11) NOT NULL,
  `uploaderId` int(11) DEFAULT NULL,
  `filename` varchar(255) NOT NULL,
  `kind` varchar(50) NOT NULL DEFAULT 'unknown',
  `width` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `size` bigint(20) UNSIGNED DEFAULT NULL,
  `focalPoint` varchar(13) DEFAULT NULL,
  `deletedWithVolume` tinyint(1) DEFAULT NULL,
  `keptFile` tinyint(1) DEFAULT NULL,
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`id`, `volumeId`, `folderId`, `uploaderId`, `filename`, `kind`, `width`, `height`, `size`, `focalPoint`, `deletedWithVolume`, `keptFile`, `dateModified`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(15, 3, 3, NULL, 'Exhibitions-Deep-Eddy-Ball-Pit.png', 'image', 1000, 1000, 355486, NULL, NULL, NULL, '2020-08-20 15:45:43', '2020-09-01 14:43:50', '2020-09-01 14:43:50', '78e4bfe6-eff9-443f-9936-72844abcd871'),
(16, 3, 3, NULL, 'Exhibitions-Experiences-Over-Things.png', 'image', 1000, 1000, 274808, NULL, NULL, NULL, '2020-08-20 15:45:43', '2020-09-01 14:43:51', '2020-09-01 14:43:51', '9d441efa-7cc2-4b9a-9ce8-6527df593b23'),
(17, 3, 3, NULL, 'Exhibitions-From-The-Outside-In.png', 'image', 1000, 1000, 382425, NULL, NULL, NULL, '2020-08-20 15:45:43', '2020-09-01 14:43:51', '2020-09-01 14:43:51', '4c684dde-173b-438f-ae45-ae217729b4cf'),
(18, 3, 3, NULL, 'Exhibitions-HOPE-Campaign.png', 'image', 1000, 1000, 616376, NULL, NULL, NULL, '2020-08-20 15:45:43', '2020-09-01 14:43:51', '2020-09-01 14:43:51', 'c59725f1-67a0-4719-8739-743c7b400ebf'),
(19, 3, 3, NULL, 'Exhibitions-Infinity-Boxes.png', 'image', 1000, 1000, 374882, NULL, NULL, NULL, '2020-08-20 15:45:43', '2020-09-01 14:43:51', '2020-09-01 14:43:51', '2d633d73-b247-4554-890f-6408f431ce49'),
(20, 3, 3, NULL, 'Exhibitions-Lightlines.png', 'image', 1000, 1000, 296373, NULL, NULL, NULL, '2020-08-20 15:45:43', '2020-09-01 14:43:51', '2020-09-01 14:43:51', '0239fccf-5dbe-46c1-aeee-3737090cc769'),
(21, 3, 3, NULL, 'Exhibitions-Matrix.png', 'image', 1000, 1000, 376254, NULL, NULL, NULL, '2020-08-20 15:45:43', '2020-09-01 14:43:51', '2020-09-01 14:43:51', '67782261-17db-4d28-9c52-48c167d433e7'),
(22, 3, 3, NULL, 'Exhibitions-Paint-With-RBG-Wall.png', 'image', 1000, 1000, 204750, NULL, NULL, NULL, '2020-08-20 15:45:43', '2020-09-01 14:43:51', '2020-09-01 14:43:51', '40c8331d-6f37-4324-a477-1d3c76e81ec4'),
(23, 3, 3, NULL, 'Exhibitions-Rainbow-Cave.png', 'image', 1000, 1000, 551673, NULL, NULL, NULL, '2020-08-20 15:45:43', '2020-09-01 14:43:52', '2020-09-01 14:43:52', 'b81b7ee2-3170-40f8-b363-b53b61deca7d'),
(24, 3, 3, NULL, 'Exhibitions-Show-It-2-Me.png', 'image', 1000, 1000, 346584, NULL, NULL, NULL, '2020-08-20 15:45:43', '2020-09-01 14:43:52', '2020-09-01 14:43:52', '495a9d9b-8a7a-433f-a1e9-20a90100cf44'),
(25, 3, 3, NULL, 'Exhibitions-Spirits.png', 'image', 1000, 1000, 396653, NULL, NULL, NULL, '2020-08-20 15:45:43', '2020-09-01 14:43:52', '2020-09-01 14:43:52', 'c6062583-2763-46eb-90cb-172e69f0f9e3'),
(26, 3, 3, NULL, 'Exhibitions-Thunder-And-Lightnight.png', 'image', 1000, 1000, 286192, NULL, NULL, NULL, '2020-08-20 15:45:43', '2020-09-01 14:43:52', '2020-09-01 14:43:52', '1b151bde-a6c7-4931-bb6c-ea3459e0c7aa'),
(34, 5, 7, NULL, '1.svg', 'image', 38, 38, 1242, NULL, NULL, NULL, '2020-08-26 14:56:47', '2020-09-01 16:26:56', '2020-09-01 16:26:56', '4b615e1a-352d-4812-b96e-6ea7919f3e55'),
(35, 5, 7, NULL, '2.svg', 'image', 38, 38, 1375, NULL, NULL, NULL, '2020-08-26 14:56:47', '2020-09-01 16:26:56', '2020-09-01 16:26:56', '7d4d2a77-2f6b-447e-ac6e-6fb54d575f33'),
(36, 5, 7, NULL, '3.svg', 'image', 38, 38, 1415, NULL, NULL, NULL, '2020-08-26 14:56:47', '2020-09-01 16:26:56', '2020-09-01 16:26:56', 'cb5a74bb-6b3b-4172-a9a5-eb86264d4291'),
(37, 5, 7, NULL, '4.svg', 'image', 38, 38, 1285, NULL, NULL, NULL, '2020-08-26 14:56:47', '2020-09-01 16:26:56', '2020-09-01 16:26:56', 'c19a00d2-37e3-4610-b308-6652626ba0e4'),
(38, 5, 7, NULL, '5.svg', 'image', 38, 38, 1457, NULL, NULL, NULL, '2020-08-26 14:56:47', '2020-09-01 16:26:56', '2020-09-01 16:26:56', 'c9642cea-9ccc-42d0-b0b5-f20872f5d79b'),
(39, 5, 7, NULL, '6.svg', 'image', 38, 38, 1528, NULL, NULL, NULL, '2020-08-26 14:56:47', '2020-09-01 16:26:56', '2020-09-01 16:26:56', 'ded9322f-3c6a-480d-b841-dbb7ecc14513'),
(40, 5, 7, NULL, '7.svg', 'image', 38, 38, 1244, NULL, NULL, NULL, '2020-08-26 14:56:47', '2020-09-01 16:26:56', '2020-09-01 16:26:56', '96d86b7d-7402-42e1-b4d5-fb964a7f0012'),
(44, 3, 3, 1, 'comming-soon.png', 'image', 1000, 1000, 12129, NULL, NULL, NULL, '2020-09-01 17:17:23', '2020-09-01 17:17:23', '2020-09-01 17:17:23', '8e3f9377-d367-4afb-a5d5-d5b02d1b9127'),
(118, 4, 4, 1, 'Hopscotch-Map-0831.png', 'image', 4500, 2375, 336882, NULL, NULL, NULL, '2020-09-01 18:42:07', '2020-09-01 18:42:07', '2020-09-01 18:42:07', 'a17bce35-7e9c-451e-8331-818eed3b9fe1');

-- --------------------------------------------------------

--
-- Table structure for table `assettransformindex`
--

CREATE TABLE `assettransformindex` (
  `id` int(11) NOT NULL,
  `assetId` int(11) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `format` varchar(255) DEFAULT NULL,
  `location` varchar(255) NOT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `fileExists` tinyint(1) NOT NULL DEFAULT '0',
  `inProgress` tinyint(1) NOT NULL DEFAULT '0',
  `error` tinyint(1) NOT NULL DEFAULT '0',
  `dateIndexed` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `assettransforms`
--

CREATE TABLE `assettransforms` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `mode` enum('stretch','fit','crop') NOT NULL DEFAULT 'crop',
  `position` enum('top-left','top-center','top-right','center-left','center-center','center-right','bottom-left','bottom-center','bottom-right') NOT NULL DEFAULT 'center-center',
  `width` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `format` varchar(255) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `interlace` enum('none','line','plane','partition') NOT NULL DEFAULT 'none',
  `dimensionChangeTime` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `deletedWithGroup` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `categorygroups`
--

CREATE TABLE `categorygroups` (
  `id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `categorygroups_sites`
--

CREATE TABLE `categorygroups_sites` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `uriFormat` text,
  `template` varchar(500) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `changedattributes`
--

CREATE TABLE `changedattributes` (
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `attribute` varchar(255) NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `propagated` tinyint(1) NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `changedattributes`
--

INSERT INTO `changedattributes` (`elementId`, `siteId`, `attribute`, `dateUpdated`, `propagated`, `userId`) VALUES
(2, 1, 'fieldLayoutId', '2020-09-01 16:09:26', 0, 1),
(4, 1, 'fieldLayoutId', '2020-09-01 16:12:46', 0, 1),
(6, 1, 'fieldLayoutId', '2020-09-01 16:19:15', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `changedfields`
--

CREATE TABLE `changedfields` (
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `propagated` tinyint(1) NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `changedfields`
--

INSERT INTO `changedfields` (`elementId`, `siteId`, `fieldId`, `dateUpdated`, `propagated`, `userId`) VALUES
(2, 1, 1, '2020-09-01 16:33:17', 0, 1),
(2, 1, 2, '2020-09-01 16:57:58', 0, 1),
(2, 1, 3, '2020-09-01 16:33:17', 0, 1),
(2, 1, 4, '2020-09-01 16:33:17', 0, 1),
(4, 1, 6, '2020-09-01 17:21:48', 0, 1),
(4, 1, 34, '2020-09-01 17:29:43', 0, 1),
(6, 1, 7, '2020-09-02 23:55:21', 0, 1),
(6, 1, 43, '2020-09-03 00:21:51', 0, 1),
(9, 1, 8, '2020-09-01 18:42:23', 0, 1),
(9, 1, 9, '2020-09-01 18:49:36', 0, 1),
(9, 1, 10, '2020-09-01 18:42:23', 0, 1),
(9, 1, 11, '2020-09-01 18:47:41', 0, 1),
(9, 1, 12, '2020-09-01 18:52:37', 0, 1),
(9, 1, 13, '2020-09-01 18:52:37', 0, 1),
(9, 1, 14, '2020-09-01 18:52:37', 0, 1),
(9, 1, 15, '2020-09-01 18:53:47', 0, 1),
(9, 1, 16, '2020-09-01 18:53:47', 0, 1),
(9, 1, 17, '2020-09-01 18:58:19', 0, 1),
(9, 1, 18, '2020-09-01 18:58:19', 0, 1),
(9, 1, 20, '2020-09-01 18:58:19', 0, 1),
(9, 1, 21, '2020-09-01 18:58:19', 0, 1),
(11, 1, 24, '2020-09-01 19:05:28', 0, 1),
(11, 1, 25, '2020-09-01 19:05:28', 0, 1),
(11, 1, 29, '2020-09-01 19:05:28', 0, 1),
(13, 1, 23, '2020-09-01 20:13:07', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_homeAnimatedHeader` text,
  `field_homeOpeningSoon` text,
  `field_testimonialsHeader` text,
  `field_testimonials` text,
  `field_mainHeader` text,
  `field_aboutDescription` text,
  `field_address` text,
  `field_addressDescription` text,
  `field_parking` text,
  `field_stayAWhile` text,
  `field_moreInfo` text,
  `field_publicTransportation` text,
  `field_hours` text,
  `field_hoursDescription` text,
  `field_covidResponseHeader` text,
  `field_covidResponse` text,
  `field_contactFormHeader` text,
  `field_contactEmails` text,
  `field_accesibility` text,
  `field_contactAnimatedText` text,
  `field_policyContent` text,
  `field_covidIntroPargraph` text,
  `field_covidBottomParagraph` text,
  `field_hopscotchEmail` varchar(255) DEFAULT NULL,
  `field_instgram` varchar(255) DEFAULT NULL,
  `field_facebook` varchar(255) DEFAULT NULL,
  `field_getTicketsLink` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `elementId`, `siteId`, `title`, `dateCreated`, `dateUpdated`, `uid`, `field_homeAnimatedHeader`, `field_homeOpeningSoon`, `field_testimonialsHeader`, `field_testimonials`, `field_mainHeader`, `field_aboutDescription`, `field_address`, `field_addressDescription`, `field_parking`, `field_stayAWhile`, `field_moreInfo`, `field_publicTransportation`, `field_hours`, `field_hoursDescription`, `field_covidResponseHeader`, `field_covidResponse`, `field_contactFormHeader`, `field_contactEmails`, `field_accesibility`, `field_contactAnimatedText`, `field_policyContent`, `field_covidIntroPargraph`, `field_covidBottomParagraph`, `field_hopscotchEmail`, `field_instgram`, `field_facebook`, `field_getTicketsLink`) VALUES
(1, 1, 1, NULL, '2020-07-27 13:15:29', '2020-09-01 16:51:29', '2d386fc3-cb6e-4841-b70d-7696a4b79234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, 1, 'Home', '2020-07-27 14:09:40', '2020-09-01 17:12:39', '09af2ec6-204e-4723-bd8b-a0a534a14bc3', 'Experiences > Things', 'Opening Friday, September 25th in downtown San Antonio, Hopscotch is a uniquely curated immersive and interactive art gallery featuring distinctive installation rooms that showcase works from a variety of artists. We aim to elicit a sense of joy and wonder in the spaces we create, where our guests may explore beyond their day to day reality.', 'What people are saying', '[{\"col1\":\"“I walked in weighed down with the week and walked out weightless, it is surprisingly joyful.”\",\"col2\":\"Amy\"},{\"col1\":\"“This uniquely curated immersive art experience was the highlight of our trip to Austin.”\",\"col2\":\"Culture Trip\"},{\"col1\":\"“An amazing experience – an orgasmic stimulation of visual and audio sensory. Bravo.”\",\"col2\":\"Thep\"},{\"col1\":\"“Hopscotch encourages people to put experiences over objects by showcasing unique, interactive experience throughout the art exhibit.”\",\"col2\":\"The Daily Texan\"},{\"col1\":\"“Seriously one of the coolest places we’ve been to.”\",\"col2\":\"Claire\"},{\"col1\":\"\\\"These exhibits are done by local artists and unlike anything I’ve seen in Austin. Make plans to go as soon as possible.\\\"\",\"col2\":\"365 Things Austin\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 3, 1, 'Home', '2020-07-27 14:09:40', '2020-07-27 14:09:40', '62072998-8bc0-4fbc-bf63-f1d9eba2b20c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 4, 1, 'About', '2020-08-20 15:05:44', '2020-09-01 17:29:42', '2df1bdbf-4eb8-4b0b-bd6c-4d1244f36a37', NULL, NULL, NULL, NULL, NULL, 'Hopscotch was founded in 2018 in Austin, TX with the goal to provide consumers with unique, impactful and distinct immersive experiences. We create spaces for local, national and international artists to showcase their works in sustainable and creative ways, encourage them to be inspired by new mediums and empower them to reach new audiences.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 5, 1, 'About', '2020-08-20 15:05:44', '2020-08-20 15:05:44', '7efd08ab-7c19-4248-b1bc-92ff5f626e00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 6, 1, 'FAQ', '2020-08-20 15:07:13', '2020-09-03 00:21:51', 'a78fd6d5-f183-4ee0-b252-d2a420375f55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 7, 1, 'FAQ', '2020-08-20 15:07:13', '2020-08-20 15:07:13', 'e3a5587a-9b5f-4fc6-808e-7e4081de97fa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 8, 1, 'FAQ', '2020-08-20 15:07:13', '2020-08-20 15:07:13', 'd0f94f0c-0d4d-422b-82cf-98d52f818f5c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 9, 1, 'Contact', '2020-08-25 13:20:10', '2020-09-01 19:00:16', 'fea1bd92-04be-4790-af2c-e33137a8660f', NULL, NULL, NULL, NULL, NULL, NULL, '[{\"col1\":\"711 Navarro, Suite 100\\r\\nSan Antonio, TX 78205\",\"col2\":\"https://www.google.com/maps/place/711+Navarro+St+%23100,+San+Antonio,+TX+78205/@29.4281272,-98.4928058,17z/data=!3m1!4b1!4m5!3m4!1s0x865c5ff7e300eb3d:0xd24083b65785019e!8m2!3d29.4281272!4d-98.4906118\"}]', 'Hopscotch is located in the Travis Park Plaza Building at 711 Navarro – Main entrance is located on the park side at the corner of Navarro and Travis.', 'Three hour validated parking will be provided for all guests who park in the Travis Park Plaza Garage. Enter off of Travis Street between Navarro and St. Mary’s. Bring your parking ticket with you and show it to Hopscotch staff to receive your validation.', 'Make it a full day of unique experiences, grab a drink in our lounge, enjoy bites from our food truck and browse local curiosities in our gift shop. Afterward, explore all that downtown San Antonio has to offer.', 'Minors under 18 are not allowed without a parent or guardian, children must be accompanied by an adult at all times during daytime hours. Hopscotch is adult only after 7:00pm, all guests must be 18+ to enter in the evening. Please visit our FAQ page to further plan your visit.', 'We are conveniently located directly across from the Travis Park bus stop. Plan your trip with VIA Metropolitan Transit.', '[{\"col1\":\"Friday\",\"col2\":\"2:00 pm-11:00 pm\",\"col3\":\"(Last ticket 9:00pm)\"},{\"col1\":\"Saturday\",\"col2\":\"11:00 am-11:00 pm\",\"col3\":\"(Last ticket 9:00pm)\"},{\"col1\":\"Sunday\",\"col2\":\"12:00 pm-9:00 pm\",\"col3\":\"(Last ticket 7:30pm)\"}]', 'All gallery tickets must be purchased in advance. You do not need a ticket for our public spaces which include our lounge, gift shop, patio and food truck.', 'HOW ARE WE RESPONDING TO COVID-19', 'Hopscotch is committed to providing a healthy and clean environment for all. The safety and well-being of our guests, staff and the community is of the utmost importance. Click here to learn more about our COVID-19 guidelines and procedures.', NULL, '[{\"col1\":\"General Public + Ticketing Inquiries\",\"col2\":\"contact@letshopscotch.com\"},{\"col1\":\"Artist, Partnership, Event or Media Inquiries\",\"col2\":\"opportunity@letshopscotch.com\"},{\"col1\":\"Career, Staff, Volunteer or Brand Ambassador Inquiries\",\"col2\":\"join@letshopscotch.com\"}]', 'Hopscotch is for everyone and greatly values diversity. We do not discriminate on the basis of race, religion, color, national origin, gender, sexual orientation, age, marital status, veteran status, disability, or any other protected class.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 10, 1, 'Contact', '2020-08-25 13:20:10', '2020-08-25 13:20:10', '0b5c12f9-43fc-4adf-904c-23fb2b4e8ba4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 11, 1, 'Covid 19', '2020-08-26 14:34:34', '2020-09-01 19:08:53', '26761b09-abc4-4609-a58c-94e7a337090b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hopscotch is committed to providing a healthy and clean environment for all. The safety and well-being of our guests, staff and the community is of the utmost importance.\n\nAs you prepare to visit please know that guidelines from the City of San Antonio, Bexar County, State of Texas and Centers for Disease Control and Prevention (CDC) will be strictly followed. We have taken enhanced health and safety measures to ensure that we are implementing comprehensive and industry-leading procedures. Continue to visit this page for the most up to date information.', 'If are not feeling well, have tested positive for COVID-19 or feel you have been exposed to someone with COVID-19 please email contact@letshopcotch.com and we will help you reschedule your visit.\n\nBy visiting Hospcotch, you voluntarily assume all risks related to exposure of COVID-19.', NULL, NULL, NULL, NULL),
(12, 12, 1, 'Covid 19', '2020-08-26 14:34:34', '2020-08-26 14:34:34', '2fb25416-c73e-4914-b492-75ac38bddd07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 13, 1, 'Policy', '2020-08-27 13:11:27', '2020-09-01 20:13:07', 'c65b53be-c6d2-410e-834c-abd842794374', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<ol><li>\n <h4>Our commitmnt to your privacy</h4>\n <div class=\"policy\">\n <p>Three hour validated parking will be provided for all guests who park in the Travis Park\n Plaza Garage. Enter off of Travis Street between Navarro and St. Mary’s. Bring your parking\n ticket with you and show it to Hopscotch staff to receive your validation. </p>\n </div>\n </li>\n <li>\n <h4>KINDS OF INFORMATION COLLECTED BY US</h4>\n <div>\n <p>Nonpublic personal information means the nonpublic information about you that is obtained by\n us in connection with providing you information on some of our products, events and\n services. We may collect nonpublic personal information from you when you visit the Web\n Site.\n </p>\n <p>In general, you can visit our Web Site without telling us who you are or revealing any\n information about yourself. Our Web servers may collect anonymous, aggregated information\n such as when you visited our site, how long you stayed, where you went while you were here\n and if you linked here from another site. Hopscotch aggregates such information to measure\n the use of our Web Site and to improve its content. We may also collect certain information\n about you, such as your IP (Internet Protocol) addresses, domain name, links you clicked on\n to reach the Web Site, and information regarding your operating system and browser when you\n browse the Web Site.</p>\n <p>We may collect nonpublic personal information from you, only if you provide the information\n to us voluntarily. The Web Site provide several opportunities for users to provide personal\n information about themselves to help us provide our users with better service. For example,\n we collect information about you when you send us a request for more information about the\n products, services, and information listed on the Web Site, or if you have a question or\n comment on our Web Site. We also collect information about you when you send an e-mail to\n our webmaster, so that we may respond to your message. We collect no personally identifying\n information about you except when you specifically and knowingly provide it.</p>\n </div>\n </li>\n <li>\n <h4>HOW WE MAY USE AND DISCLOSE YOUR INFORMATION</h4>\n <div>\n <p>Generally, we do not disclose your nonpublic personal information to third parties. However,\n we may disclose aggregated information without your permission. Further, we may use and\n disclose your information both internally and externally, including without limitation, as\n described herein.</p>\n <p>We will not sell your information to any other company however, you should be aware that\n Hopscotch may use this information that you supply about yourself for promotional or\n marketing purposes.</p>\n <p>We will not disclose any nonpublic personal information about our current or former customers\n or consumers to anyone, except as permitted or required by law, or as described below.</p>\n <p>We may disclose all of the information we collect about you to our affiliates and to\n nonaffiliated third-parties that perform services on our behalf, including, but not limited\n to, marketing services, or other financial institutions with whom we have joint marketing\n agreements.</p>\n <p>If we collect nonpublic personal information from you to provide third-party financial\n products and services requested by you, such third-party’s use of your personal information\n will be subject to their privacy policy as disclosed to you by them.</p>\n <p>We sometimes engage third parties, such as contractors, to provide certain operational\n services to us or on our behalf. We may share your information with those third parties on a\n need to know basis. In addition, we may enter into certain marketing relationships with\n third parties to provide you with better service. We may share some of your nonpublic\n personal information with those parties. However, you are under no obligation to respond to\n any requests from those third parties.</p>\n </div>\n </li>\n <li>\n <h4>HOW YOU CAN OPT-OUT, ACCESS, UPDATE, OR DELETE YOUR INFORMATION</h4>\n <div>\n <p>You can see, review and change your information by sending a request to\n webmaster@hopscotch.com. At any time, you may also request us to delete your information by\n sending us an email at webmaster@hopscotch.com Although, we will make every effort to delete\n your information from our databases, and inform third-parties to whom we have provided a\n link on the Web Site to do the same, we may need to retain your information in our archives\n and records in order to comply with law, resolve disputes, troubleshoot problems, assist\n with investigations, enforce our Web Site Terms of Use, and other policies, and take other\n actions otherwise permitted by law.</p>\n </div>\n </li>\n <li>\n <h4>HOW WE PROTECT YOUR INFORMATION</h4>\n <div>\n <p>We have procedures in place that limit access to nonpublic personal information to those\n employees and other individuals who need to know such information to provide products and\n services to you. We will maintain physical, electronic, and procedural safeguards to protect\n the confidentiality of your nonpublic personal information as required by law. However, such\n precautions do not guarantee the absolute safety of your data, and Hopscotch makes no\n guarantees, warranties or representation that your information is protected from viruses and\n other security attacks. Further, while Hopscotch follows appropriate procedures to ensure\n that third parties will keep your information secure, Hopscotch cannot make any guarantees\n with respect to the actions or policies of such third parties.</p>\n </div>\n </li>\n <li>\n <h4>LINKS ON OUR WEBSITE</h4>\n <div>\n <p>Our privacy policies apply only to your use of the Web site. The Web Site contains links to\n other sites. We are not responsible for the privacy practices of those sites, even if they\n bear our logo and name. Links to other sites do not imply an endorsement of the materials or\n policies on those Web Sites. You should read the privacy policies of each site you visit to\n determine what information that site may be collecting about you.</p>\n </div>\n </li>\n <li>\n <h4>USE OF COOKIES</h4>\n <div>\n <p>When you visit the Web Site, Hopscotch places a cookie in the browser files of your computer.\n A cookie is a file that tracks what you do on the Web Site. Our cookie does not collect any\n personally identifying information about you. We use the information it collects for\n administrative purposes and to understand how visitors use our site. The majority of Web\n browsers accept cookies, but the help menu on your browser should give you options for\n preventing, accepting, or receiving notice of new cookies. However, please be aware that if\n you block cookies, some Web site functionality may be lost. You consent to the placement of\n cookies on your hard drive when you visit the Web Site.</p>\n </div>\n </li>\n <li>\n <h4>GENERAL</h4>\n <div>\n <p>Users should be aware that Hopscotch has no control over any information that users may\n disclose to other users of the Web Site. Please notify Hopscotch immediately if you discover\n that any user of the Web Site is improperly collecting or using personally identifying\n information of users of the Web Site.</p>\n <p>We know that online security is a serious matter. At Hopscotch, we consider your online\n security an important factor of our commitment to overall customer satisfaction. For\n additional information on your privacy rights concerning data collected by Web sites, refer\n to the Federal Trade Commission’s How to Protect Your Privacy pamphlet.</p>\n <p>This Privacy Policy will be updated periodically and posted on the Web Site. It applies to\n the online practices of Hopscotch and its divisions. References to Hopscotch, we, us and our\n are references to Hopscotch and its respective divisions and affiliates. We reserve the\n right to change or update this Privacy Policy at any time, without notice, by posting\n revisions on the Web Site. You agree to review the Privacy Policy each time you use the Web\n Site so that you are aware of any modifications. By accessing or using the Web Site, you\n agree to be bound by all of the terms and conditions of this Privacy Policy as posted at the\n time of your access or use.</p>\n <p>This Privacy Policy is incorporated by reference in and is a part of the Web Site Terms of\n Use agreement. If you have any questions or comments about this Privacy Policy please\n contact Hopscotch at webmaster@hopscotch.com</p>\n <p>This Privacy Policy is effective as of April 2020.</p>\n </div>\n </li>\n </ol>', NULL, NULL, NULL, NULL, NULL, NULL),
(14, 14, 1, 'Policy', '2020-08-27 13:11:27', '2020-08-27 13:11:27', '7aa6971e-3c89-4905-9f1d-d769c51dc821', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 15, 1, 'Exhibitions Deep Eddy Ball Pit', '2020-09-01 14:43:50', '2020-09-01 16:26:54', '7eb91fcc-f870-41ea-b8c2-7b34bceeee73', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 16, 1, 'Exhibitions Experiences Over Things', '2020-09-01 14:43:51', '2020-09-01 16:26:54', '1659393d-476f-410d-87bf-bf4dee11159f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 17, 1, 'Exhibitions From The Outside In', '2020-09-01 14:43:51', '2020-09-01 16:26:54', '69841d13-768c-487b-9357-81ec47c5d5bf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 18, 1, 'Exhibitions HOPE Campaign', '2020-09-01 14:43:51', '2020-09-01 16:26:54', '609022d9-323a-48ac-bea2-7f2d59911344', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 19, 1, 'Exhibitions Infinity Boxes', '2020-09-01 14:43:51', '2020-09-01 16:26:54', '6212e66c-5709-4707-9804-2efe95f6277c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 20, 1, 'Exhibitions Lightlines', '2020-09-01 14:43:51', '2020-09-01 16:26:55', '3459351a-bab4-4bd2-85da-12cbf24a97eb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 21, 1, 'Exhibitions Matrix', '2020-09-01 14:43:51', '2020-09-01 16:26:55', 'b2d6ff9d-b3e4-4ad6-a86b-03872fe73a3f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 22, 1, 'Exhibitions Paint With RBG Wall', '2020-09-01 14:43:51', '2020-09-01 16:26:55', '8bd5f74a-3541-4e28-a1ba-1efca49f5cd0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 23, 1, 'Exhibitions Rainbow Cave', '2020-09-01 14:43:52', '2020-09-01 16:26:55', '3ac44193-a4e3-47e6-acf3-2784f185d46a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 24, 1, 'Exhibitions Show It 2 Me', '2020-09-01 14:43:52', '2020-09-01 16:26:55', 'a3548fde-e4e0-470e-9e3a-cf784ee25ac2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 25, 1, 'Exhibitions Spirits', '2020-09-01 14:43:52', '2020-09-01 16:26:55', '1cdc4489-e2a0-4a8c-87cd-d534f0914c9b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 26, 1, 'Exhibitions Thunder And Lightnight', '2020-09-01 14:43:52', '2020-09-01 16:26:55', '0db94393-eb98-4556-a47f-9874cd2bea97', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 27, 1, 'Home', '2020-09-01 16:09:26', '2020-09-01 16:09:26', '15679538-58c9-4056-81fc-038b4f5738e0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 28, 1, 'About', '2020-09-01 16:12:46', '2020-09-01 16:12:46', 'c7ea1d4f-936c-451e-88eb-2d4509208df2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 29, 1, 'About', '2020-09-01 16:16:42', '2020-09-01 16:16:42', 'bb6ffec1-3712-4bba-9873-5f8913125ca2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 30, 1, 'FAQ', '2020-09-01 16:19:15', '2020-09-01 16:19:15', '31a6f8b8-a291-4850-a4fc-bab580d6d822', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 31, 1, 'Contact', '2020-09-01 16:26:18', '2020-09-01 16:26:18', 'cd1a5ba4-a9bc-4bc2-83e5-a9e4fa40f072', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 32, 1, 'Policy', '2020-09-01 16:26:30', '2020-09-01 16:26:30', '7657dff6-69d7-48fa-9a58-04986e438d56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 33, 1, 'Covid 19', '2020-09-01 16:26:45', '2020-09-01 16:26:45', '0c1426c2-3cdc-4edf-9f43-883905cc9a1e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 34, 1, '1', '2020-09-01 16:26:56', '2020-09-01 16:26:56', 'a8a2be77-202d-4270-b025-5a5b4608bdf5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 35, 1, '2', '2020-09-01 16:26:56', '2020-09-01 16:26:56', 'b524ed0b-3e1b-40db-a3a5-8e4fab2da7ef', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 36, 1, '3', '2020-09-01 16:26:56', '2020-09-01 16:26:56', '1edf9ddb-09ff-4696-9f0f-2bd7a171eec8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 37, 1, '4', '2020-09-01 16:26:56', '2020-09-01 16:26:56', 'fc1e4c24-d192-4022-ae86-357511b8f955', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 38, 1, '5', '2020-09-01 16:26:56', '2020-09-01 16:26:56', '69a2998b-2819-4744-9130-9384b08841d1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 39, 1, '6', '2020-09-01 16:26:56', '2020-09-01 16:26:56', 'b3ce7f1c-7cfb-4ec7-a056-4bc042340c35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 40, 1, '7', '2020-09-01 16:26:56', '2020-09-01 16:26:56', '8dfc5c59-b6a0-4bf8-8133-de24232dd585', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 41, 1, 'Home', '2020-09-01 16:33:17', '2020-09-01 16:33:17', 'e764def3-b451-4b80-a23a-36b97c13d230', 'Experiences > Things', '<p>Opening Friday, September 25th in downtown San Antonio, Hopscotch is a uniquely curated immersive and interactive art gallery featuring distinctive installation rooms that showcase works from a variety of artists. We aim to elicit a sense of joy and wonder in the spaces we create, where our guests may explore beyond their day to day reality.</p>', 'What people are saying', '[{\"col1\":\"“I walked in weighed down with the week and walked out weightless, it is surprisingly joyful.”\",\"col2\":\"Amy\"},{\"col1\":\"“This uniquely curated immersive art experience was the highlight of our trip to Austin.”\",\"col2\":\"Culture Trip\"},{\"col1\":\"“An amazing experience – an orgasmic stimulation of visual and audio sensory. Bravo.”\",\"col2\":\"Thep\"},{\"col1\":\"“Hopscotch encourages people to put experiences over objects by showcasing unique, interactive experience throughout the art exhibit.”\",\"col2\":\"The Daily Texan\"},{\"col1\":\"“Seriously one of the coolest places we’ve been to.”\",\"col2\":\"Claire\"},{\"col1\":\"\\\"These exhibits are done by local artists and unlike anything I’ve seen in Austin. Make plans to go as soon as possible.\\\"\",\"col2\":\"365 Things Austin\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 42, 1, 'Home', '2020-09-01 16:57:58', '2020-09-01 16:57:58', 'b688de08-f6a3-432d-ae36-aac4458780f7', 'Experiences > Things', 'Opening Friday, September 25th in downtown San Antonio, Hopscotch is a uniquely curated immersive and interactive art gallery featuring distinctive installation rooms that showcase works from a variety of artists. We aim to elicit a sense of joy and wonder in the spaces we create, where our guests may explore beyond their day to day reality.', 'What people are saying', '[{\"col1\":\"“I walked in weighed down with the week and walked out weightless, it is surprisingly joyful.”\",\"col2\":\"Amy\"},{\"col1\":\"“This uniquely curated immersive art experience was the highlight of our trip to Austin.”\",\"col2\":\"Culture Trip\"},{\"col1\":\"“An amazing experience – an orgasmic stimulation of visual and audio sensory. Bravo.”\",\"col2\":\"Thep\"},{\"col1\":\"“Hopscotch encourages people to put experiences over objects by showcasing unique, interactive experience throughout the art exhibit.”\",\"col2\":\"The Daily Texan\"},{\"col1\":\"“Seriously one of the coolest places we’ve been to.”\",\"col2\":\"Claire\"},{\"col1\":\"\\\"These exhibits are done by local artists and unlike anything I’ve seen in Austin. Make plans to go as soon as possible.\\\"\",\"col2\":\"365 Things Austin\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 43, 1, 'Home', '2020-09-01 17:12:39', '2020-09-01 17:12:39', 'd898c36d-e4c8-4d9c-a4da-63277172c7dd', 'Experiences > Things', 'Opening Friday, September 25th in downtown San Antonio, Hopscotch is a uniquely curated immersive and interactive art gallery featuring distinctive installation rooms that showcase works from a variety of artists. We aim to elicit a sense of joy and wonder in the spaces we create, where our guests may explore beyond their day to day reality.', 'What people are saying', '[{\"col1\":\"“I walked in weighed down with the week and walked out weightless, it is surprisingly joyful.”\",\"col2\":\"Amy\"},{\"col1\":\"“This uniquely curated immersive art experience was the highlight of our trip to Austin.”\",\"col2\":\"Culture Trip\"},{\"col1\":\"“An amazing experience – an orgasmic stimulation of visual and audio sensory. Bravo.”\",\"col2\":\"Thep\"},{\"col1\":\"“Hopscotch encourages people to put experiences over objects by showcasing unique, interactive experience throughout the art exhibit.”\",\"col2\":\"The Daily Texan\"},{\"col1\":\"“Seriously one of the coolest places we’ve been to.”\",\"col2\":\"Claire\"},{\"col1\":\"\\\"These exhibits are done by local artists and unlike anything I’ve seen in Austin. Make plans to go as soon as possible.\\\"\",\"col2\":\"365 Things Austin\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 44, 1, 'Comming soon', '2020-09-01 17:17:22', '2020-09-01 17:17:22', '6907e666-166b-4506-88b9-13724336d109', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 55, 1, 'About', '2020-09-01 17:21:48', '2020-09-01 17:21:48', 'f8adb40a-6101-4bb5-a160-568bbebca95b', NULL, NULL, NULL, NULL, NULL, 'Hopscotch was founded in 2018 in Austin, TX with the goal to provide consumers with unique, impactful and distinct immersive experiences. We create spaces for local, national and international artists to showcase their works in sustainable and creative ways, encourage them to be inspired by new mediums and empower them to reach new audiences.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 80, 1, 'About', '2020-09-01 17:29:43', '2020-09-01 17:29:43', '6428f7ad-0e20-4728-b28a-ecb4f6781b63', NULL, NULL, NULL, NULL, NULL, 'Hopscotch was founded in 2018 in Austin, TX with the goal to provide consumers with unique, impactful and distinct immersive experiences. We create spaces for local, national and international artists to showcase their works in sustainable and creative ways, encourage them to be inspired by new mediums and empower them to reach new audiences.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 111, 1, 'FAQ', '2020-09-01 18:33:52', '2020-09-01 18:33:52', '830b9586-169c-4398-9d3a-b49d0ff65dbe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 118, 1, 'Hopscotch Map 0831', '2020-09-01 18:41:57', '2020-09-01 18:41:57', '486214bd-a5b1-41f1-a8ab-24ae423fd792', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 119, 1, 'Contact', '2020-09-01 18:42:23', '2020-09-01 18:42:23', 'feb02f3d-f3f3-47e1-9067-4d217e3a9e77', NULL, NULL, NULL, NULL, NULL, NULL, '[{\"col1\":\"711 Navarro, Suite 100\\r\\nSan Antonio, TX 78205\",\"col2\":\"https://www.google.com/maps/place/711+Navarro+St+%23100,+San+Antonio,+TX+78205/@29.4281272,-98.4928058,17z/data=!3m1!4b1!4m5!3m4!1s0x865c5ff7e300eb3d:0xd24083b65785019e!8m2!3d29.4281272!4d-98.4906118\"}]', '<p>Hopscotch is located in the Travis Park Plaza Building at 711 Navarro – Main entrance is located on the park side at the corner of Navarro and Travis.</p>', '<p>Three hour validated parking will be provided for all guests who park in the Travis Park Plaza Garage. Enter off of Travis Street between Navarro and St. Mary’s. Bring your parking ticket with you and show it to Hopscotch staff to receive your validation.</p>', NULL, NULL, NULL, '[{\"col1\":\"\",\"col2\":\"\",\"col3\":\"\"}]', NULL, NULL, NULL, NULL, '[{\"col1\":\"\",\"col2\":\"\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 120, 1, 'Contact', '2020-09-01 18:47:41', '2020-09-01 18:47:41', '43f52ecb-e5fc-4d2b-a9bd-57fb6b3eca55', NULL, NULL, NULL, NULL, NULL, NULL, '[{\"col1\":\"711 Navarro, Suite 100\\r\\nSan Antonio, TX 78205\",\"col2\":\"https://www.google.com/maps/place/711+Navarro+St+%23100,+San+Antonio,+TX+78205/@29.4281272,-98.4928058,17z/data=!3m1!4b1!4m5!3m4!1s0x865c5ff7e300eb3d:0xd24083b65785019e!8m2!3d29.4281272!4d-98.4906118\"}]', '<p>Hopscotch is located in the Travis Park Plaza Building at 711 Navarro – Main entrance is located on the park side at the corner of Navarro and Travis.</p>', 'Three hour validated parking will be provided for all guests who park in the Travis Park Plaza Garage. Enter off of Travis Street between Navarro and St. Mary’s. Bring your parking ticket with you and show it to Hopscotch staff to receive your validation.', NULL, NULL, NULL, '[{\"col1\":\"\",\"col2\":\"\",\"col3\":\"\"}]', NULL, NULL, NULL, NULL, '[{\"col1\":\"\",\"col2\":\"\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 121, 1, 'Contact', '2020-09-01 18:49:36', '2020-09-01 18:49:36', 'e911d558-eb1c-4519-9a90-d065afca0af5', NULL, NULL, NULL, NULL, NULL, NULL, '[{\"col1\":\"711 Navarro, Suite 100\\r\\nSan Antonio, TX 78205\",\"col2\":\"https://www.google.com/maps/place/711+Navarro+St+%23100,+San+Antonio,+TX+78205/@29.4281272,-98.4928058,17z/data=!3m1!4b1!4m5!3m4!1s0x865c5ff7e300eb3d:0xd24083b65785019e!8m2!3d29.4281272!4d-98.4906118\"}]', 'Hopscotch is located in the Travis Park Plaza Building at 711 Navarro – Main entrance is located on the park side at the corner of Navarro and Travis.', 'Three hour validated parking will be provided for all guests who park in the Travis Park Plaza Garage. Enter off of Travis Street between Navarro and St. Mary’s. Bring your parking ticket with you and show it to Hopscotch staff to receive your validation.', NULL, NULL, NULL, '[{\"col1\":\"\",\"col2\":\"\",\"col3\":\"\"}]', NULL, NULL, NULL, NULL, '[{\"col1\":\"\",\"col2\":\"\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 122, 1, 'Contact', '2020-09-01 18:52:37', '2020-09-01 18:52:37', 'd0be326a-1d0f-4f4d-9ddf-c873a8852179', NULL, NULL, NULL, NULL, NULL, NULL, '[{\"col1\":\"711 Navarro, Suite 100\\r\\nSan Antonio, TX 78205\",\"col2\":\"https://www.google.com/maps/place/711+Navarro+St+%23100,+San+Antonio,+TX+78205/@29.4281272,-98.4928058,17z/data=!3m1!4b1!4m5!3m4!1s0x865c5ff7e300eb3d:0xd24083b65785019e!8m2!3d29.4281272!4d-98.4906118\"}]', 'Hopscotch is located in the Travis Park Plaza Building at 711 Navarro – Main entrance is located on the park side at the corner of Navarro and Travis.', 'Three hour validated parking will be provided for all guests who park in the Travis Park Plaza Garage. Enter off of Travis Street between Navarro and St. Mary’s. Bring your parking ticket with you and show it to Hopscotch staff to receive your validation.', 'Make it a full day of unique experiences, grab a drink in our lounge, enjoy bites from our food truck and browse local curiosities in our gift shop. Afterward, explore all that downtown San Antonio has to offer.', 'Minors under 18 are not allowed without a parent or guardian, children must be accompanied by an adult at all times during daytime hours. Hopscotch is adult only after 7:00pm, all guests must be 18+ to enter in the evening. Please visit our FAQ page to further plan your visit.', 'We are conveniently located directly across from the Travis Park bus stop. Plan your trip with VIA Metropolitan Transit.', '[{\"col1\":\"\",\"col2\":\"\",\"col3\":\"\"}]', NULL, NULL, NULL, NULL, '[{\"col1\":\"\",\"col2\":\"\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 123, 1, 'Contact', '2020-09-01 18:52:53', '2020-09-01 18:52:53', 'c7680b9f-4f63-45f9-ae8c-1ee11d93b842', NULL, NULL, NULL, NULL, NULL, NULL, '[{\"col1\":\"711 Navarro, Suite 100\\r\\nSan Antonio, TX 78205\",\"col2\":\"https://www.google.com/maps/place/711+Navarro+St+%23100,+San+Antonio,+TX+78205/@29.4281272,-98.4928058,17z/data=!3m1!4b1!4m5!3m4!1s0x865c5ff7e300eb3d:0xd24083b65785019e!8m2!3d29.4281272!4d-98.4906118\"}]', 'Hopscotch is located in the Travis Park Plaza Building at 711 Navarro – Main entrance is located on the park side at the corner of Navarro and Travis.', 'Three hour validated parking will be provided for all guests who park in the Travis Park Plaza Garage. Enter off of Travis Street between Navarro and St. Mary’s. Bring your parking ticket with you and show it to Hopscotch staff to receive your validation.', 'Make it a full day of unique experiences, grab a drink in our lounge, enjoy bites from our food truck and browse local curiosities in our gift shop. Afterward, explore all that downtown San Antonio has to offer.', 'Minors under 18 are not allowed without a parent or guardian, children must be accompanied by an adult at all times during daytime hours. Hopscotch is adult only after 7:00pm, all guests must be 18+ to enter in the evening. Please visit our FAQ page to further plan your visit.', 'We are conveniently located directly across from the Travis Park bus stop. Plan your trip with VIA Metropolitan Transit.', '[{\"col1\":\"\",\"col2\":\"\",\"col3\":\"\"}]', NULL, NULL, NULL, NULL, '[{\"col1\":\"\",\"col2\":\"\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 124, 1, 'Contact', '2020-09-01 18:53:47', '2020-09-01 18:53:47', '464e154c-f930-4e78-b53f-c4d4e3cbbd00', NULL, NULL, NULL, NULL, NULL, NULL, '[{\"col1\":\"711 Navarro, Suite 100\\r\\nSan Antonio, TX 78205\",\"col2\":\"https://www.google.com/maps/place/711+Navarro+St+%23100,+San+Antonio,+TX+78205/@29.4281272,-98.4928058,17z/data=!3m1!4b1!4m5!3m4!1s0x865c5ff7e300eb3d:0xd24083b65785019e!8m2!3d29.4281272!4d-98.4906118\"}]', 'Hopscotch is located in the Travis Park Plaza Building at 711 Navarro – Main entrance is located on the park side at the corner of Navarro and Travis.', 'Three hour validated parking will be provided for all guests who park in the Travis Park Plaza Garage. Enter off of Travis Street between Navarro and St. Mary’s. Bring your parking ticket with you and show it to Hopscotch staff to receive your validation.', 'Make it a full day of unique experiences, grab a drink in our lounge, enjoy bites from our food truck and browse local curiosities in our gift shop. Afterward, explore all that downtown San Antonio has to offer.', 'Minors under 18 are not allowed without a parent or guardian, children must be accompanied by an adult at all times during daytime hours. Hopscotch is adult only after 7:00pm, all guests must be 18+ to enter in the evening. Please visit our FAQ page to further plan your visit.', 'We are conveniently located directly across from the Travis Park bus stop. Plan your trip with VIA Metropolitan Transit.', '[{\"col1\":\"Friday\",\"col2\":\"2:00 pm-11:00 pm\",\"col3\":\"(Last ticket 9:00pm)\"},{\"col1\":\"Saturday\",\"col2\":\"11:00 am-11:00 pm\",\"col3\":\"(Last ticket 9:00pm)\"},{\"col1\":\"Sunday\",\"col2\":\"12:00 pm-9:00 pm\",\"col3\":\"(Last ticket 7:30pm)\"}]', 'All gallery tickets must be purchased in advance. You do not need a ticket for our public spaces which include our lounge, gift shop, patio and food truck.', NULL, NULL, NULL, '[{\"col1\":\"\",\"col2\":\"\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 125, 1, 'Contact', '2020-09-01 18:58:19', '2020-09-01 18:58:19', '76deb1ce-9ded-41e8-ad76-a2eb4927e63f', NULL, NULL, NULL, NULL, NULL, NULL, '[{\"col1\":\"711 Navarro, Suite 100\\r\\nSan Antonio, TX 78205\",\"col2\":\"https://www.google.com/maps/place/711+Navarro+St+%23100,+San+Antonio,+TX+78205/@29.4281272,-98.4928058,17z/data=!3m1!4b1!4m5!3m4!1s0x865c5ff7e300eb3d:0xd24083b65785019e!8m2!3d29.4281272!4d-98.4906118\"}]', 'Hopscotch is located in the Travis Park Plaza Building at 711 Navarro – Main entrance is located on the park side at the corner of Navarro and Travis.', 'Three hour validated parking will be provided for all guests who park in the Travis Park Plaza Garage. Enter off of Travis Street between Navarro and St. Mary’s. Bring your parking ticket with you and show it to Hopscotch staff to receive your validation.', 'Make it a full day of unique experiences, grab a drink in our lounge, enjoy bites from our food truck and browse local curiosities in our gift shop. Afterward, explore all that downtown San Antonio has to offer.', 'Minors under 18 are not allowed without a parent or guardian, children must be accompanied by an adult at all times during daytime hours. Hopscotch is adult only after 7:00pm, all guests must be 18+ to enter in the evening. Please visit our FAQ page to further plan your visit.', 'We are conveniently located directly across from the Travis Park bus stop. Plan your trip with VIA Metropolitan Transit.', '[{\"col1\":\"Friday\",\"col2\":\"2:00 pm-11:00 pm\",\"col3\":\"(Last ticket 9:00pm)\"},{\"col1\":\"Saturday\",\"col2\":\"11:00 am-11:00 pm\",\"col3\":\"(Last ticket 9:00pm)\"},{\"col1\":\"Sunday\",\"col2\":\"12:00 pm-9:00 pm\",\"col3\":\"(Last ticket 7:30pm)\"}]', 'All gallery tickets must be purchased in advance. You do not need a ticket for our public spaces which include our lounge, gift shop, patio and food truck.', 'HOW ARE WE RESPONDING TO COVID-19', 'Hopscotch is committed to providing a healthy and clean environment for all. The safety and well-being of our guests, staff and the community is of the utmost importance. Click here to learn more about our COVID-19 guidelines and procedures.', NULL, '[{\"col1\":\"General Public + Ticketing Inquiries\",\"col2\":\"contact@letshopscotch.com\"},{\"col1\":\"Artist, Partnership, Event or Media Inquiries\",\"col2\":\"opportunity@letshopscotch.com\"},{\"col1\":\"Career, Staff, Volunteer or Brand Ambassador Inquiries\",\"col2\":\"join@letshopscotch.com\"}]', 'Hopscotch is for everyone and greatly values diversity. We do not discriminate on the basis of race, religion, color, national origin, gender, sexual orientation, age, marital status, veteran status, disability, or any other protected class.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 126, 1, 'Contact', '2020-09-01 19:00:16', '2020-09-01 19:00:16', '44a0638e-fbf5-4c65-9040-ecf1ccb6a07e', NULL, NULL, NULL, NULL, NULL, NULL, '[{\"col1\":\"711 Navarro, Suite 100\\r\\nSan Antonio, TX 78205\",\"col2\":\"https://www.google.com/maps/place/711+Navarro+St+%23100,+San+Antonio,+TX+78205/@29.4281272,-98.4928058,17z/data=!3m1!4b1!4m5!3m4!1s0x865c5ff7e300eb3d:0xd24083b65785019e!8m2!3d29.4281272!4d-98.4906118\"}]', 'Hopscotch is located in the Travis Park Plaza Building at 711 Navarro – Main entrance is located on the park side at the corner of Navarro and Travis.', 'Three hour validated parking will be provided for all guests who park in the Travis Park Plaza Garage. Enter off of Travis Street between Navarro and St. Mary’s. Bring your parking ticket with you and show it to Hopscotch staff to receive your validation.', 'Make it a full day of unique experiences, grab a drink in our lounge, enjoy bites from our food truck and browse local curiosities in our gift shop. Afterward, explore all that downtown San Antonio has to offer.', 'Minors under 18 are not allowed without a parent or guardian, children must be accompanied by an adult at all times during daytime hours. Hopscotch is adult only after 7:00pm, all guests must be 18+ to enter in the evening. Please visit our FAQ page to further plan your visit.', 'We are conveniently located directly across from the Travis Park bus stop. Plan your trip with VIA Metropolitan Transit.', '[{\"col1\":\"Friday\",\"col2\":\"2:00 pm-11:00 pm\",\"col3\":\"(Last ticket 9:00pm)\"},{\"col1\":\"Saturday\",\"col2\":\"11:00 am-11:00 pm\",\"col3\":\"(Last ticket 9:00pm)\"},{\"col1\":\"Sunday\",\"col2\":\"12:00 pm-9:00 pm\",\"col3\":\"(Last ticket 7:30pm)\"}]', 'All gallery tickets must be purchased in advance. You do not need a ticket for our public spaces which include our lounge, gift shop, patio and food truck.', 'HOW ARE WE RESPONDING TO COVID-19', 'Hopscotch is committed to providing a healthy and clean environment for all. The safety and well-being of our guests, staff and the community is of the utmost importance. Click here to learn more about our COVID-19 guidelines and procedures.', NULL, '[{\"col1\":\"General Public + Ticketing Inquiries\",\"col2\":\"contact@letshopscotch.com\"},{\"col1\":\"Artist, Partnership, Event or Media Inquiries\",\"col2\":\"opportunity@letshopscotch.com\"},{\"col1\":\"Career, Staff, Volunteer or Brand Ambassador Inquiries\",\"col2\":\"join@letshopscotch.com\"}]', 'Hopscotch is for everyone and greatly values diversity. We do not discriminate on the basis of race, religion, color, national origin, gender, sexual orientation, age, marital status, veteran status, disability, or any other protected class.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 134, 1, 'Covid 19', '2020-09-01 19:05:28', '2020-09-01 19:05:28', '7b3f6af6-54cc-4e7d-a8bf-42e1adb4996b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hopscotch is committed to providing a healthy and clean environment for all. The safety and well-being of our guests, staff and the community is of the utmost importance.\n\nAs you prepare to visit please know that guidelines from the City of San Antonio, Bexar County, State of Texas and Centers for Disease Control and Prevention (CDC) will be strictly followed. We have taken enhanced health and safety measures to ensure that we are implementing comprehensive and industry-leading procedures. Continue to visit this page for the most up to date information.', 'If are not feeling well, have tested positive for COVID-19 or feel you have been exposed to someone with COVID-19 please email contact@letshopcotch.com and we will help you reschedule your visit.\n\nBy visiting Hospcotch, you voluntarily assume all risks related to exposure of COVID-19.', NULL, NULL, NULL, NULL),
(58, 142, 1, 'Covid 19', '2020-09-01 19:08:53', '2020-09-01 19:08:53', '5a290bc4-b4a7-4288-abd5-029c2f89340f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hopscotch is committed to providing a healthy and clean environment for all. The safety and well-being of our guests, staff and the community is of the utmost importance.\n\nAs you prepare to visit please know that guidelines from the City of San Antonio, Bexar County, State of Texas and Centers for Disease Control and Prevention (CDC) will be strictly followed. We have taken enhanced health and safety measures to ensure that we are implementing comprehensive and industry-leading procedures. Continue to visit this page for the most up to date information.', 'If are not feeling well, have tested positive for COVID-19 or feel you have been exposed to someone with COVID-19 please email contact@letshopcotch.com and we will help you reschedule your visit.\n\nBy visiting Hospcotch, you voluntarily assume all risks related to exposure of COVID-19.', NULL, NULL, NULL, NULL),
(59, 150, 1, NULL, '2020-09-01 19:10:03', '2020-09-01 19:10:39', 'e249d995-7468-402a-9e5e-59e828a359ef', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'contact@letshopscotch.com', '', '', '');
INSERT INTO `content` (`id`, `elementId`, `siteId`, `title`, `dateCreated`, `dateUpdated`, `uid`, `field_homeAnimatedHeader`, `field_homeOpeningSoon`, `field_testimonialsHeader`, `field_testimonials`, `field_mainHeader`, `field_aboutDescription`, `field_address`, `field_addressDescription`, `field_parking`, `field_stayAWhile`, `field_moreInfo`, `field_publicTransportation`, `field_hours`, `field_hoursDescription`, `field_covidResponseHeader`, `field_covidResponse`, `field_contactFormHeader`, `field_contactEmails`, `field_accesibility`, `field_contactAnimatedText`, `field_policyContent`, `field_covidIntroPargraph`, `field_covidBottomParagraph`, `field_hopscotchEmail`, `field_instgram`, `field_facebook`, `field_getTicketsLink`) VALUES
(60, 151, 1, 'Policy', '2020-09-01 20:13:07', '2020-09-01 20:13:07', '6959b08b-5c61-4722-a318-ac1c0477d0c7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<ol><li>\n <h4>Our commitmnt to your privacy</h4>\n <div class=\"policy\">\n <p>Three hour validated parking will be provided for all guests who park in the Travis Park\n Plaza Garage. Enter off of Travis Street between Navarro and St. Mary’s. Bring your parking\n ticket with you and show it to Hopscotch staff to receive your validation. </p>\n </div>\n </li>\n <li>\n <h4>KINDS OF INFORMATION COLLECTED BY US</h4>\n <div>\n <p>Nonpublic personal information means the nonpublic information about you that is obtained by\n us in connection with providing you information on some of our products, events and\n services. We may collect nonpublic personal information from you when you visit the Web\n Site.\n </p>\n <p>In general, you can visit our Web Site without telling us who you are or revealing any\n information about yourself. Our Web servers may collect anonymous, aggregated information\n such as when you visited our site, how long you stayed, where you went while you were here\n and if you linked here from another site. Hopscotch aggregates such information to measure\n the use of our Web Site and to improve its content. We may also collect certain information\n about you, such as your IP (Internet Protocol) addresses, domain name, links you clicked on\n to reach the Web Site, and information regarding your operating system and browser when you\n browse the Web Site.</p>\n <p>We may collect nonpublic personal information from you, only if you provide the information\n to us voluntarily. The Web Site provide several opportunities for users to provide personal\n information about themselves to help us provide our users with better service. For example,\n we collect information about you when you send us a request for more information about the\n products, services, and information listed on the Web Site, or if you have a question or\n comment on our Web Site. We also collect information about you when you send an e-mail to\n our webmaster, so that we may respond to your message. We collect no personally identifying\n information about you except when you specifically and knowingly provide it.</p>\n </div>\n </li>\n <li>\n <h4>HOW WE MAY USE AND DISCLOSE YOUR INFORMATION</h4>\n <div>\n <p>Generally, we do not disclose your nonpublic personal information to third parties. However,\n we may disclose aggregated information without your permission. Further, we may use and\n disclose your information both internally and externally, including without limitation, as\n described herein.</p>\n <p>We will not sell your information to any other company however, you should be aware that\n Hopscotch may use this information that you supply about yourself for promotional or\n marketing purposes.</p>\n <p>We will not disclose any nonpublic personal information about our current or former customers\n or consumers to anyone, except as permitted or required by law, or as described below.</p>\n <p>We may disclose all of the information we collect about you to our affiliates and to\n nonaffiliated third-parties that perform services on our behalf, including, but not limited\n to, marketing services, or other financial institutions with whom we have joint marketing\n agreements.</p>\n <p>If we collect nonpublic personal information from you to provide third-party financial\n products and services requested by you, such third-party’s use of your personal information\n will be subject to their privacy policy as disclosed to you by them.</p>\n <p>We sometimes engage third parties, such as contractors, to provide certain operational\n services to us or on our behalf. We may share your information with those third parties on a\n need to know basis. In addition, we may enter into certain marketing relationships with\n third parties to provide you with better service. We may share some of your nonpublic\n personal information with those parties. However, you are under no obligation to respond to\n any requests from those third parties.</p>\n </div>\n </li>\n <li>\n <h4>HOW YOU CAN OPT-OUT, ACCESS, UPDATE, OR DELETE YOUR INFORMATION</h4>\n <div>\n <p>You can see, review and change your information by sending a request to\n webmaster@hopscotch.com. At any time, you may also request us to delete your information by\n sending us an email at webmaster@hopscotch.com Although, we will make every effort to delete\n your information from our databases, and inform third-parties to whom we have provided a\n link on the Web Site to do the same, we may need to retain your information in our archives\n and records in order to comply with law, resolve disputes, troubleshoot problems, assist\n with investigations, enforce our Web Site Terms of Use, and other policies, and take other\n actions otherwise permitted by law.</p>\n </div>\n </li>\n <li>\n <h4>HOW WE PROTECT YOUR INFORMATION</h4>\n <div>\n <p>We have procedures in place that limit access to nonpublic personal information to those\n employees and other individuals who need to know such information to provide products and\n services to you. We will maintain physical, electronic, and procedural safeguards to protect\n the confidentiality of your nonpublic personal information as required by law. However, such\n precautions do not guarantee the absolute safety of your data, and Hopscotch makes no\n guarantees, warranties or representation that your information is protected from viruses and\n other security attacks. Further, while Hopscotch follows appropriate procedures to ensure\n that third parties will keep your information secure, Hopscotch cannot make any guarantees\n with respect to the actions or policies of such third parties.</p>\n </div>\n </li>\n <li>\n <h4>LINKS ON OUR WEBSITE</h4>\n <div>\n <p>Our privacy policies apply only to your use of the Web site. The Web Site contains links to\n other sites. We are not responsible for the privacy practices of those sites, even if they\n bear our logo and name. Links to other sites do not imply an endorsement of the materials or\n policies on those Web Sites. You should read the privacy policies of each site you visit to\n determine what information that site may be collecting about you.</p>\n </div>\n </li>\n <li>\n <h4>USE OF COOKIES</h4>\n <div>\n <p>When you visit the Web Site, Hopscotch places a cookie in the browser files of your computer.\n A cookie is a file that tracks what you do on the Web Site. Our cookie does not collect any\n personally identifying information about you. We use the information it collects for\n administrative purposes and to understand how visitors use our site. The majority of Web\n browsers accept cookies, but the help menu on your browser should give you options for\n preventing, accepting, or receiving notice of new cookies. However, please be aware that if\n you block cookies, some Web site functionality may be lost. You consent to the placement of\n cookies on your hard drive when you visit the Web Site.</p>\n </div>\n </li>\n <li>\n <h4>GENERAL</h4>\n <div>\n <p>Users should be aware that Hopscotch has no control over any information that users may\n disclose to other users of the Web Site. Please notify Hopscotch immediately if you discover\n that any user of the Web Site is improperly collecting or using personally identifying\n information of users of the Web Site.</p>\n <p>We know that online security is a serious matter. At Hopscotch, we consider your online\n security an important factor of our commitment to overall customer satisfaction. For\n additional information on your privacy rights concerning data collected by Web sites, refer\n to the Federal Trade Commission’s How to Protect Your Privacy pamphlet.</p>\n <p>This Privacy Policy will be updated periodically and posted on the Web Site. It applies to\n the online practices of Hopscotch and its divisions. References to Hopscotch, we, us and our\n are references to Hopscotch and its respective divisions and affiliates. We reserve the\n right to change or update this Privacy Policy at any time, without notice, by posting\n revisions on the Web Site. You agree to review the Privacy Policy each time you use the Web\n Site so that you are aware of any modifications. By accessing or using the Web Site, you\n agree to be bound by all of the terms and conditions of this Privacy Policy as posted at the\n time of your access or use.</p>\n <p>This Privacy Policy is incorporated by reference in and is a part of the Web Site Terms of\n Use agreement. If you have any questions or comments about this Privacy Policy please\n contact Hopscotch at webmaster@hopscotch.com</p>\n <p>This Privacy Policy is effective as of April 2020.</p>\n </div>\n </li>\n </ol>', NULL, NULL, NULL, NULL, NULL, NULL),
(61, 152, 1, 'FAQ', '2020-09-02 23:54:47', '2020-09-02 23:54:47', '0b48ed0a-671c-46bb-bcf3-13ad9bfadea0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 159, 1, 'FAQ', '2020-09-02 23:55:21', '2020-09-02 23:55:21', '16a96618-c3f7-40d8-8ac7-04e1193c35ab', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 166, 1, 'FAQ', '2020-09-03 00:09:26', '2020-09-03 00:09:26', '9288cfe0-d1e8-4547-a87c-45d892f80106', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 176, 1, 'FAQ', '2020-09-03 00:11:44', '2020-09-03 00:11:44', '47059784-b606-4bf5-a755-a570cde68c8f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 187, 1, 'FAQ', '2020-09-03 00:14:05', '2020-09-03 00:14:05', '22701014-e99d-4250-995b-512c46f6b10f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 209, 1, 'FAQ', '2020-09-03 00:21:51', '2020-09-03 00:21:51', '3b4fd317-41e3-4475-875a-568f01cb084a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `craftidtokens`
--

CREATE TABLE `craftidtokens` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `accessToken` text NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `deprecationerrors`
--

CREATE TABLE `deprecationerrors` (
  `id` int(11) NOT NULL,
  `key` varchar(255) NOT NULL,
  `fingerprint` varchar(255) NOT NULL,
  `lastOccurrence` datetime NOT NULL,
  `file` varchar(255) NOT NULL,
  `line` smallint(6) UNSIGNED DEFAULT NULL,
  `message` text,
  `traces` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `drafts`
--

CREATE TABLE `drafts` (
  `id` int(11) NOT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `notes` text,
  `trackChanges` tinyint(1) NOT NULL DEFAULT '0',
  `dateLastMerged` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `elementindexsettings`
--

CREATE TABLE `elementindexsettings` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `settings` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `elementindexsettings`
--

INSERT INTO `elementindexsettings` (`id`, `type`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'craft\\elements\\Entry', '{\"sourceOrder\":[[\"key\",\"*\"],[\"heading\",\"Pages\"],[\"key\",\"single:eadb3e6b-cdf7-457f-9780-97d389f823ee\"],[\"key\",\"single:34475136-40f1-4f7b-a942-4675600cf9b0\"],[\"key\",\"single:067382e8-5a41-48c4-93eb-e1dd8b7abf98\"],[\"key\",\"single:30d5184b-2aff-4beb-bcfa-b55aa3579824\"],[\"key\",\"single:3c305ecc-d28d-4900-a9ab-c6364f3d26c3\"],[\"key\",\"single:4c1f4924-dad4-48b2-82d6-4b12282af8f4\"]],\"sources\":{\"*\":{\"tableAttributes\":{\"1\":\"section\",\"2\":\"postDate\",\"3\":\"expiryDate\",\"4\":\"link\"}}}}', '2020-09-01 16:28:03', '2020-09-01 16:28:03', '6bac29fb-6736-450c-a729-1b2d85c6b03e');

-- --------------------------------------------------------

--
-- Table structure for table `elements`
--

CREATE TABLE `elements` (
  `id` int(11) NOT NULL,
  `draftId` int(11) DEFAULT NULL,
  `revisionId` int(11) DEFAULT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `elements`
--

INSERT INTO `elements` (`id`, `draftId`, `revisionId`, `fieldLayoutId`, `type`, `enabled`, `archived`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, NULL, NULL, NULL, 'craft\\elements\\User', 1, 0, '2020-07-27 13:15:29', '2020-09-01 16:51:29', NULL, 'f78fd3ba-2a28-4aec-8853-14a1ae443c05'),
(2, NULL, NULL, 10, 'craft\\elements\\Entry', 1, 0, '2020-07-27 14:09:40', '2020-09-01 17:12:39', NULL, 'd83f34e0-8c6c-4649-9a18-325e762ff5e0'),
(3, NULL, 1, NULL, 'craft\\elements\\Entry', 1, 0, '2020-07-27 14:09:40', '2020-07-27 14:09:40', NULL, 'd779127c-430d-4dee-a409-cf9c8a24e972'),
(4, NULL, NULL, 11, 'craft\\elements\\Entry', 1, 0, '2020-08-20 15:05:44', '2020-09-01 17:29:42', NULL, '300595ba-7325-435c-a61f-b58fdd334692'),
(5, NULL, 2, NULL, 'craft\\elements\\Entry', 1, 0, '2020-08-20 15:05:44', '2020-08-20 15:05:44', NULL, 'c1107c6e-01aa-4c26-9647-b7d9dc611f17'),
(6, NULL, NULL, 14, 'craft\\elements\\Entry', 1, 0, '2020-08-20 15:07:12', '2020-09-03 00:21:51', NULL, 'f21e9490-1e66-4fe1-b461-1db81087b156'),
(7, NULL, 3, NULL, 'craft\\elements\\Entry', 1, 0, '2020-08-20 15:07:12', '2020-08-20 15:07:12', NULL, 'cedffaf3-5d92-469b-9cd2-b2888048fa78'),
(8, NULL, 4, NULL, 'craft\\elements\\Entry', 1, 0, '2020-08-20 15:07:13', '2020-08-20 15:07:13', NULL, '225360d1-3c05-4d61-84bb-8daafdfdfd28'),
(9, NULL, NULL, 1, 'craft\\elements\\Entry', 1, 0, '2020-08-25 13:20:10', '2020-09-01 19:00:16', NULL, 'ba7910fa-1303-470d-b1f2-3c2f1f54fa25'),
(10, NULL, 5, 1, 'craft\\elements\\Entry', 1, 0, '2020-08-25 13:20:10', '2020-08-25 13:20:10', NULL, 'eebdaf56-d1df-4769-a76b-025e71fabf62'),
(11, NULL, NULL, 2, 'craft\\elements\\Entry', 1, 0, '2020-08-26 14:34:34', '2020-09-01 19:08:53', NULL, '187b79c2-24ad-412b-b9ef-02f55d8aed95'),
(12, NULL, 6, 2, 'craft\\elements\\Entry', 1, 0, '2020-08-26 14:34:34', '2020-08-26 14:34:34', NULL, '25602ef0-0dcd-459e-a420-6c4be513702a'),
(13, NULL, NULL, 3, 'craft\\elements\\Entry', 1, 0, '2020-08-27 13:11:27', '2020-09-01 20:13:07', NULL, '383817c5-f247-444f-8939-f27f6524e2ba'),
(14, NULL, 7, 3, 'craft\\elements\\Entry', 1, 0, '2020-08-27 13:11:27', '2020-08-27 13:11:27', NULL, 'a43ec24e-8654-4260-8596-55d4a656e765'),
(15, NULL, NULL, 6, 'craft\\elements\\Asset', 1, 0, '2020-09-01 14:43:50', '2020-09-01 16:26:54', NULL, '2c874697-02bc-4802-b43c-b20d6df4df17'),
(16, NULL, NULL, 6, 'craft\\elements\\Asset', 1, 0, '2020-09-01 14:43:51', '2020-09-01 16:26:54', NULL, 'fb3239ed-0082-44ef-9667-267a125199e1'),
(17, NULL, NULL, 6, 'craft\\elements\\Asset', 1, 0, '2020-09-01 14:43:51', '2020-09-01 16:26:54', NULL, 'f5efde3b-4899-4fc0-ae3a-928dcee4705c'),
(18, NULL, NULL, 6, 'craft\\elements\\Asset', 1, 0, '2020-09-01 14:43:51', '2020-09-01 16:26:54', NULL, 'fb99f13a-8112-41e2-b0ed-23199b483d9b'),
(19, NULL, NULL, 6, 'craft\\elements\\Asset', 1, 0, '2020-09-01 14:43:51', '2020-09-01 16:26:54', NULL, 'd3070cbe-a6a3-4400-a9bf-c2e0d0fd84ae'),
(20, NULL, NULL, 6, 'craft\\elements\\Asset', 1, 0, '2020-09-01 14:43:51', '2020-09-01 16:26:55', NULL, 'd79eddf4-f89a-43b6-8d76-69801309656a'),
(21, NULL, NULL, 6, 'craft\\elements\\Asset', 1, 0, '2020-09-01 14:43:51', '2020-09-01 16:26:55', NULL, 'f118891a-70b1-4a78-8a67-32b35a8d714f'),
(22, NULL, NULL, 6, 'craft\\elements\\Asset', 1, 0, '2020-09-01 14:43:51', '2020-09-01 16:26:55', NULL, '5dccbb6b-aff4-45cd-95f0-b7c9376ccbe3'),
(23, NULL, NULL, 6, 'craft\\elements\\Asset', 1, 0, '2020-09-01 14:43:52', '2020-09-01 16:26:55', NULL, '7ad840af-52f7-4f59-9839-ec8e28968635'),
(24, NULL, NULL, 6, 'craft\\elements\\Asset', 1, 0, '2020-09-01 14:43:52', '2020-09-01 16:26:55', NULL, '14bcc8bd-c5c8-41d6-9666-7e6abb8fc0b5'),
(25, NULL, NULL, 6, 'craft\\elements\\Asset', 1, 0, '2020-09-01 14:43:52', '2020-09-01 16:26:55', NULL, 'ca9fe9a5-fe9d-442a-a1b0-f82cc10d198a'),
(26, NULL, NULL, 6, 'craft\\elements\\Asset', 1, 0, '2020-09-01 14:43:52', '2020-09-01 16:26:55', NULL, 'fa1166cb-6d85-4d0e-b270-a3d589c336bb'),
(27, NULL, 8, 10, 'craft\\elements\\Entry', 1, 0, '2020-09-01 16:09:26', '2020-09-01 16:09:26', NULL, '00cc6cad-b1c2-4744-957d-595788a65d98'),
(28, NULL, 9, 11, 'craft\\elements\\Entry', 1, 0, '2020-09-01 16:12:46', '2020-09-01 16:12:46', NULL, 'e94ce0a1-3e2a-4e28-b73a-57b69a2d4931'),
(29, NULL, 10, 11, 'craft\\elements\\Entry', 1, 0, '2020-09-01 16:16:42', '2020-09-01 16:16:42', NULL, 'abcee8e4-a45b-413c-8a6d-7f95f02a6315'),
(30, NULL, 11, 14, 'craft\\elements\\Entry', 1, 0, '2020-09-01 16:19:15', '2020-09-01 16:19:15', NULL, '1911c56e-3329-43b3-8c31-a7b35eef51d4'),
(31, NULL, 12, 1, 'craft\\elements\\Entry', 1, 0, '2020-09-01 16:26:18', '2020-09-01 16:26:18', NULL, '3f5b233f-2730-46bb-a1b9-a4df726fbacc'),
(32, NULL, 13, 3, 'craft\\elements\\Entry', 1, 0, '2020-09-01 16:26:30', '2020-09-01 16:26:30', NULL, '18247bbf-e56e-4ea0-a7d3-3ce520a2544e'),
(33, NULL, 14, 2, 'craft\\elements\\Entry', 1, 0, '2020-09-01 16:26:45', '2020-09-01 16:26:45', NULL, 'be51aa1a-ead9-4fd1-ae5e-555f43159556'),
(34, NULL, NULL, 8, 'craft\\elements\\Asset', 1, 0, '2020-09-01 16:26:56', '2020-09-01 16:26:56', NULL, 'a3f01460-2b49-4e40-b82f-c67223a40388'),
(35, NULL, NULL, 8, 'craft\\elements\\Asset', 1, 0, '2020-09-01 16:26:56', '2020-09-01 16:26:56', NULL, '5806d6e0-be99-4c17-ac3b-c58b1e0bad21'),
(36, NULL, NULL, 8, 'craft\\elements\\Asset', 1, 0, '2020-09-01 16:26:56', '2020-09-01 16:26:56', NULL, '689b4d57-4675-4ea2-8bbd-1eb0d379a2e6'),
(37, NULL, NULL, 8, 'craft\\elements\\Asset', 1, 0, '2020-09-01 16:26:56', '2020-09-01 16:26:56', NULL, '8bd3f757-62b8-4b3b-b420-84e70b6bed58'),
(38, NULL, NULL, 8, 'craft\\elements\\Asset', 1, 0, '2020-09-01 16:26:56', '2020-09-01 16:26:56', NULL, '15e15180-8c1b-4f96-8731-0f629b8df5ef'),
(39, NULL, NULL, 8, 'craft\\elements\\Asset', 1, 0, '2020-09-01 16:26:56', '2020-09-01 16:26:56', NULL, 'e5db8284-df51-4f7a-a451-cba56cdf347e'),
(40, NULL, NULL, 8, 'craft\\elements\\Asset', 1, 0, '2020-09-01 16:26:56', '2020-09-01 16:26:56', NULL, '20c486fe-a684-4f47-9ad2-498b4c414cec'),
(41, NULL, 15, 10, 'craft\\elements\\Entry', 1, 0, '2020-09-01 16:33:17', '2020-09-01 16:33:17', NULL, '349710c5-032f-4e0e-b1d5-d1c0c1daed6f'),
(42, NULL, 16, 10, 'craft\\elements\\Entry', 1, 0, '2020-09-01 16:57:58', '2020-09-01 16:57:58', NULL, '6eca0ade-f67f-4791-af53-043f881e4ac1'),
(43, NULL, 17, 10, 'craft\\elements\\Entry', 1, 0, '2020-09-01 17:12:39', '2020-09-01 17:12:39', NULL, '50e7fb67-3349-4a9d-aaa3-94fb8518ca5e'),
(44, NULL, NULL, 6, 'craft\\elements\\Asset', 1, 0, '2020-09-01 17:17:22', '2020-09-01 17:17:22', NULL, 'ed957e97-12db-4fe0-9c75-39632cc500e3'),
(45, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:21:48', '2020-09-01 17:29:42', NULL, '4b8a633a-50f4-451d-a58a-4dd63e507938'),
(46, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:21:48', '2020-09-01 17:29:42', NULL, 'd4fa7d95-4b4f-419e-923d-04595212eecc'),
(47, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:21:48', '2020-09-01 17:29:42', NULL, '5c5cb23b-cd65-4486-90c8-3b969f4c3921'),
(48, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:21:48', '2020-09-01 17:29:42', NULL, '1b202aff-dbc7-46c8-97fa-38a4103c3a12'),
(49, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:21:48', '2020-09-01 17:29:42', NULL, '2e265de3-8c36-4a70-8fd6-afbdfba09191'),
(50, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:21:48', '2020-09-01 17:29:42', NULL, 'bdf3ade2-e925-4705-ba1a-9048de6b397c'),
(51, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:21:48', '2020-09-01 17:29:42', NULL, '7028abe9-957b-4142-b2f1-5a0e9a8844e7'),
(52, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:21:48', '2020-09-01 17:29:42', NULL, '8daf146b-cd8a-47a3-b9fd-eae60e072ccb'),
(53, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:21:48', '2020-09-01 17:29:42', NULL, '488142c4-57ac-4dce-80cf-799aa747d4b3'),
(54, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:21:48', '2020-09-01 17:29:42', NULL, '5e82420d-198b-4a62-85d6-bc5afd04c807'),
(55, NULL, 18, 11, 'craft\\elements\\Entry', 1, 0, '2020-09-01 17:21:48', '2020-09-01 17:21:48', NULL, '3a9e54b6-3011-40ab-af2f-a2b875f72010'),
(56, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:21:48', '2020-09-01 17:21:48', NULL, 'ea3547db-005a-4e1c-a4b9-67a04ba3a512'),
(57, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:21:48', '2020-09-01 17:21:48', NULL, '9c3a0dd7-ac04-43d8-9772-2efd2901b944'),
(58, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:21:48', '2020-09-01 17:21:48', NULL, '0d580f14-ac30-4a52-b01d-a4cf15119963'),
(59, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:21:48', '2020-09-01 17:21:48', NULL, 'f5c3e13b-f8fb-4beb-bd7a-cd13a399a7d9'),
(60, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:21:48', '2020-09-01 17:21:48', NULL, '837029c6-6de4-4828-ac19-e327b835f04f'),
(61, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:21:48', '2020-09-01 17:21:48', NULL, 'ce428486-6532-44c5-87cb-5520e70a8195'),
(62, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:21:48', '2020-09-01 17:21:48', NULL, 'bbe3fbf8-5172-47e4-a0fa-5f1d302507bf'),
(63, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:21:48', '2020-09-01 17:21:48', NULL, '3dc90b1d-71a6-436d-9d6e-27ec17e3e9ed'),
(64, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:21:48', '2020-09-01 17:21:48', NULL, 'c3741db2-2dd9-48d2-a4ee-ebf6cb74091c'),
(65, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:21:48', '2020-09-01 17:21:48', NULL, '18920a74-3ab0-49b8-8c4a-3df6a30d0a0b'),
(66, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:29:42', '2020-09-01 17:29:42', NULL, '84a72705-1798-4dca-b3f8-6fa225884c45'),
(67, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:29:43', '2020-09-01 17:29:43', NULL, '1c88490d-5e76-4101-b15a-34b575cd27c6'),
(68, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:29:43', '2020-09-01 17:29:43', NULL, 'e307ae27-aa52-4a3f-9881-bcd0ad2068d0'),
(69, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:29:43', '2020-09-01 17:29:43', NULL, '0084b8d7-c20d-447d-9e15-b192b2056106'),
(70, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:29:43', '2020-09-01 17:29:43', NULL, 'a87b9474-8323-404b-b644-aa3b29d3816f'),
(71, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:29:43', '2020-09-01 17:29:43', NULL, '352b78e0-77cf-44da-949f-754746defd90'),
(72, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:29:43', '2020-09-01 17:29:43', NULL, '017fcf8c-ffda-4057-ba6c-1fd5ee6b18c0'),
(73, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:29:43', '2020-09-01 17:29:43', NULL, 'c4de5a38-54c3-4484-98fe-d72d0b055220'),
(74, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:29:43', '2020-09-01 17:29:43', NULL, '22c57b45-08a0-4576-a707-d0045331b1bc'),
(75, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:29:43', '2020-09-01 17:29:43', NULL, '06c005c7-3451-4ac0-9272-b9d0d7192b3b'),
(76, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:29:43', '2020-09-01 17:29:43', NULL, 'a87f9c61-ae83-4360-9ffd-af8e541f3ba5'),
(77, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:29:43', '2020-09-01 17:29:43', NULL, '3f7fe16d-9f21-42b3-8c32-4872193d05d1'),
(78, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:29:43', '2020-09-01 17:29:43', NULL, '2c083b75-7db3-48cf-a521-feafe0092e2c'),
(79, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:29:43', '2020-09-01 17:29:43', NULL, 'ea32ac24-cf29-4fa8-a1df-3f23e325bcae'),
(80, NULL, 19, 11, 'craft\\elements\\Entry', 1, 0, '2020-09-01 17:29:42', '2020-09-01 17:29:42', NULL, '72bcd57b-e858-45cc-8756-5ce03d7376f6'),
(81, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:29:43', '2020-09-01 17:29:42', NULL, '40aa3276-8942-4b6e-a236-24e4dd288c82'),
(82, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:29:43', '2020-09-01 17:29:42', NULL, '3c86624d-c2d6-4d4c-8cbe-648a32ad2ebb'),
(83, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:29:43', '2020-09-01 17:29:42', NULL, 'a68fc066-052d-4e3f-a1d5-2292b69ef3a2'),
(84, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:29:43', '2020-09-01 17:29:42', NULL, '5a486c9c-8dd0-4636-893d-3c728f4ee6dd'),
(85, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:29:43', '2020-09-01 17:29:42', NULL, 'd020286b-98f1-4eb8-a682-f61b8daf3b80'),
(86, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:29:43', '2020-09-01 17:29:42', NULL, '781ceb8c-bd55-41ea-8c50-5329cbba8408'),
(87, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:29:43', '2020-09-01 17:29:42', NULL, '5944c474-cd8f-430b-984a-a7b488d562a2'),
(88, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:29:43', '2020-09-01 17:29:42', NULL, 'ad9cea9a-cc8f-460a-acd0-0c42a54564e3'),
(89, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:29:43', '2020-09-01 17:29:42', NULL, '60041326-150e-46ad-afd2-e54911664e6b'),
(90, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:29:43', '2020-09-01 17:29:42', NULL, '27203e25-0bfb-4716-a809-ae0d8f6c7d3c'),
(91, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:29:43', '2020-09-01 17:29:42', NULL, '20d48510-71c4-4ed8-90aa-c64ff6ad06ce'),
(92, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:29:43', '2020-09-01 17:29:43', NULL, '4554d3ea-c2fd-4b95-93e2-128c89c511c5'),
(93, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:29:43', '2020-09-01 17:29:43', NULL, '921fefe6-b989-49df-a696-34047837f851'),
(94, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:29:43', '2020-09-01 17:29:43', NULL, '8e5f9e64-ea46-4cc6-9a6a-d977dd2c6304'),
(95, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:29:43', '2020-09-01 17:29:43', NULL, '2e6e8961-3dd3-4c53-8eaf-1929d4afb49e'),
(96, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:29:43', '2020-09-01 17:29:43', NULL, '874888e6-36ff-4d2e-9e62-2bc8d411397d'),
(97, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:29:43', '2020-09-01 17:29:43', NULL, '08ff2091-2569-4b1d-98ae-7261e51a6b31'),
(98, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:29:43', '2020-09-01 17:29:43', NULL, '50a61b0c-d996-42f8-9268-230b6b722daa'),
(99, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:29:43', '2020-09-01 17:29:43', NULL, '7beafa6a-51f5-4de4-b8ab-9feda3ab5292'),
(100, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:29:43', '2020-09-01 17:29:43', NULL, '1f40d79f-e2a6-4783-a45d-5f9e01897d92'),
(101, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:29:43', '2020-09-01 17:29:43', NULL, '5854fedc-1c31-47ac-b624-d4ad89010e86'),
(102, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:29:43', '2020-09-01 17:29:43', NULL, '513bcb40-bc96-4dd5-bcd1-cf8580d1dd91'),
(103, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:29:43', '2020-09-01 17:29:43', NULL, '3b2da432-ddc1-47b6-82a0-3703708bcde9'),
(104, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 17:29:43', '2020-09-01 17:29:43', NULL, '81e3873f-728a-4f6f-9593-3aa67f79ce74'),
(105, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 18:33:52', '2020-09-01 18:33:52', NULL, '437a6161-5e37-44ab-86ca-020ae499fd0a'),
(106, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 18:33:52', '2020-09-01 18:33:52', NULL, 'e8814bb9-b6d7-49ca-8db3-8bf5f4136e36'),
(107, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 18:33:52', '2020-09-01 18:33:52', NULL, 'a85e0876-f6da-455d-b4da-9768c45fab34'),
(108, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 18:33:52', '2020-09-01 18:33:52', NULL, '8a7dc09e-ea4f-4d91-a70d-5cb2d632130d'),
(109, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 18:33:52', '2020-09-01 18:33:52', NULL, '2aa3e6b5-3869-4a08-bcdb-251bcdaa2a38'),
(110, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 18:33:52', '2020-09-02 23:55:21', NULL, '0aa12633-e74b-454c-a1b4-a8835edd821c'),
(111, NULL, 20, 14, 'craft\\elements\\Entry', 1, 0, '2020-09-01 18:33:52', '2020-09-01 18:33:52', NULL, 'aa28e389-cbf7-4e99-abfa-e6105297db6a'),
(112, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 18:33:52', '2020-09-01 18:33:52', NULL, 'c6848550-7ab5-445e-adfd-145db7ee1299'),
(113, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 18:33:52', '2020-09-01 18:33:52', NULL, '5a29a4e5-9265-4399-904e-5c0204452f3c'),
(114, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 18:33:52', '2020-09-01 18:33:52', NULL, '39244681-e50d-49f5-ab0a-5532f8761244'),
(115, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 18:33:52', '2020-09-01 18:33:52', NULL, '276fa3d9-c639-47d6-b9ac-7201d3ef1404'),
(116, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 18:33:52', '2020-09-01 18:33:52', NULL, '20b79b25-143b-4822-843e-c0b517f565a6'),
(117, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 18:33:52', '2020-09-01 18:33:52', NULL, '34fb5c10-30d5-4519-af96-9c9c11ae5ad7'),
(118, NULL, NULL, 7, 'craft\\elements\\Asset', 1, 0, '2020-09-01 18:41:57', '2020-09-01 18:41:57', NULL, 'fcc62fbb-a010-42d9-b90e-58d7698e6a5c'),
(119, NULL, 21, 1, 'craft\\elements\\Entry', 1, 0, '2020-09-01 18:42:23', '2020-09-01 18:42:23', NULL, '0aa8cfaa-bf87-4109-b289-a455dd6cbce5'),
(120, NULL, 22, 1, 'craft\\elements\\Entry', 1, 0, '2020-09-01 18:47:40', '2020-09-01 18:47:40', NULL, 'ef109ca1-6393-49d5-9f9c-8186910e2fff'),
(121, NULL, 23, 1, 'craft\\elements\\Entry', 1, 0, '2020-09-01 18:49:36', '2020-09-01 18:49:36', NULL, 'b6a2ec01-e3ed-437e-978e-eebdf7af387e'),
(122, NULL, 24, 1, 'craft\\elements\\Entry', 1, 0, '2020-09-01 18:52:37', '2020-09-01 18:52:37', NULL, '08aad209-e026-4a2b-ad0a-98bb16606779'),
(123, NULL, 25, 1, 'craft\\elements\\Entry', 1, 0, '2020-09-01 18:52:53', '2020-09-01 18:52:53', NULL, '65f1a0c4-b1b9-4ced-81de-1228203fef42'),
(124, NULL, 26, 1, 'craft\\elements\\Entry', 1, 0, '2020-09-01 18:53:47', '2020-09-01 18:53:47', NULL, '697a7411-e477-4ec5-afa3-022c55302d57'),
(125, NULL, 27, 1, 'craft\\elements\\Entry', 1, 0, '2020-09-01 18:58:19', '2020-09-01 18:58:19', NULL, 'b5e64003-6fb7-45c4-8d2a-082d2d339ec9'),
(126, NULL, 28, 1, 'craft\\elements\\Entry', 1, 0, '2020-09-01 19:00:16', '2020-09-01 19:00:16', NULL, 'ba62ae8f-70d9-4fb5-ba31-ca15a5a72100'),
(127, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 19:05:28', '2020-09-01 19:05:28', NULL, '5bb10a0b-6285-4a56-a24f-13fe3f485182'),
(128, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 19:05:28', '2020-09-01 19:05:28', NULL, '8fc9a285-df74-4f3d-8202-d4a8535cc97b'),
(129, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 19:05:28', '2020-09-01 19:05:28', NULL, '8835b8b0-017a-4877-afb0-c113e10230b4'),
(130, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 19:05:28', '2020-09-01 19:05:28', NULL, 'e777d53e-5f2f-4ba4-95a1-ea30bc5dc811'),
(131, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 19:05:28', '2020-09-01 19:05:28', NULL, '1c1ae52a-e37b-4bb2-bac6-3bc70cbac3cf'),
(132, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 19:05:28', '2020-09-01 19:05:28', NULL, '334632b1-e4c5-4e62-9be9-2f375000e693'),
(133, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 19:05:28', '2020-09-01 19:05:28', NULL, '84fa9116-b728-45d6-a170-0988d7b850d8'),
(134, NULL, 29, 2, 'craft\\elements\\Entry', 1, 0, '2020-09-01 19:05:28', '2020-09-01 19:05:28', NULL, '59428e5b-6179-42a2-87a9-beb7a6eb9439'),
(135, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 19:05:28', '2020-09-01 19:05:28', NULL, '801339be-3e0c-4e28-b130-41d3d9df20d3'),
(136, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 19:05:28', '2020-09-01 19:05:28', NULL, 'ee105c12-a6ed-49a4-a397-272b242ce941'),
(137, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 19:05:28', '2020-09-01 19:05:28', NULL, '16a0a2f5-3fd8-49d1-9246-04d80d2a07fa'),
(138, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 19:05:28', '2020-09-01 19:05:28', NULL, '9a07bc52-2f0b-4f2e-a45e-6298d24702c2'),
(139, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 19:05:28', '2020-09-01 19:05:28', NULL, '7324586b-68f6-4231-bc51-e74c53502cf5'),
(140, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 19:05:28', '2020-09-01 19:05:28', NULL, '387d36a6-24a2-4a96-a8d9-9b94d7c3f577'),
(141, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 19:05:28', '2020-09-01 19:05:28', NULL, '46d6ca2e-37dd-4a50-950f-a061cb51518f'),
(142, NULL, 30, 2, 'craft\\elements\\Entry', 1, 0, '2020-09-01 19:08:53', '2020-09-01 19:08:53', NULL, '000fc3d4-885b-40e5-99d0-591cf1e4edbf'),
(143, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 19:08:53', '2020-09-01 19:05:28', NULL, '40085b65-63ef-41ec-ae5e-ba195b9a7126'),
(144, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 19:08:53', '2020-09-01 19:05:28', NULL, '7f91934c-7caa-406e-bdc6-ef1ea5f51262'),
(145, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 19:08:53', '2020-09-01 19:05:28', NULL, 'f3dedc4f-fdba-4130-96fb-16aec4bdb273'),
(146, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 19:08:53', '2020-09-01 19:05:28', NULL, '4009ee5c-3e3c-43a9-9eb6-0dfdd2cefd64'),
(147, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 19:08:53', '2020-09-01 19:05:28', NULL, 'c8a93a9c-d918-44a8-aab8-e00109505123'),
(148, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 19:08:53', '2020-09-01 19:05:28', NULL, 'eaf1fbcc-787b-447a-ac4f-5951974e6d60'),
(149, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-01 19:08:53', '2020-09-01 19:05:28', NULL, '30dff4a5-fd4c-45aa-975d-fb63492bbd79'),
(150, NULL, NULL, 15, 'craft\\elements\\GlobalSet', 1, 0, '2020-09-01 19:10:03', '2020-09-01 19:10:39', NULL, '5c9f2bb8-b152-40a4-bc60-ac3ab0c09314'),
(151, NULL, 31, 3, 'craft\\elements\\Entry', 1, 0, '2020-09-01 20:13:07', '2020-09-01 20:13:07', NULL, '11d2916a-eb6d-4f96-bae8-cd020445ea04'),
(152, NULL, 32, 14, 'craft\\elements\\Entry', 1, 0, '2020-09-02 23:54:47', '2020-09-02 23:54:47', NULL, '6befdfef-5348-4814-b543-1697002bbbf8'),
(153, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-02 23:54:47', '2020-09-01 18:33:52', NULL, '2abebfc3-4718-4e2f-a72c-40921a40d252'),
(154, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-02 23:54:47', '2020-09-01 18:33:52', NULL, '3ef8f8af-5595-4c99-a2e2-cdd6da2e6311'),
(155, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-02 23:54:47', '2020-09-01 18:33:52', NULL, '6a471555-3bb3-4b12-a1b5-ce9aba13f508'),
(156, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-02 23:54:47', '2020-09-01 18:33:52', NULL, '97c473d7-2f1f-4106-8e1f-9e4caf69af51'),
(157, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-02 23:54:47', '2020-09-01 18:33:52', NULL, '8cb0a975-86ca-4ba7-a510-8073b351d3ef'),
(158, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-02 23:54:47', '2020-09-02 23:54:47', NULL, 'a4ecc073-2a91-4f36-a41b-4c66af072ced'),
(159, NULL, 33, 14, 'craft\\elements\\Entry', 1, 0, '2020-09-02 23:55:21', '2020-09-02 23:55:21', NULL, '758358ea-2e6d-4847-801e-74382104dd21'),
(160, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-02 23:55:21', '2020-09-01 18:33:52', NULL, 'eec264af-33d3-47e5-8e4d-9cd017c5225f'),
(161, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-02 23:55:21', '2020-09-01 18:33:52', NULL, '485198c7-ba1c-4fac-b783-62781b761550'),
(162, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-02 23:55:21', '2020-09-01 18:33:52', NULL, '1c781ff5-2d2f-455e-b6a0-bfd519a96288'),
(163, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-02 23:55:21', '2020-09-01 18:33:52', NULL, '1b9d4a2b-066c-4b67-a693-b2cdb8039e63'),
(164, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-02 23:55:21', '2020-09-01 18:33:52', NULL, 'd4eb45b0-21b1-47e4-bf56-3580d5ef4537'),
(165, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-02 23:55:21', '2020-09-02 23:55:21', NULL, '28ede30c-ed9b-49ae-ae08-3c23d442857e'),
(166, NULL, 34, 14, 'craft\\elements\\Entry', 1, 0, '2020-09-03 00:09:26', '2020-09-03 00:09:26', NULL, '0671c6ce-0ab2-4fa1-8b89-0846fd34490c'),
(167, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-03 00:09:26', '2020-09-01 18:33:52', NULL, '4035b43b-dbbe-44b1-84a0-f4367be8dba6'),
(168, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-03 00:09:26', '2020-09-01 18:33:52', NULL, '564aa5bb-772f-4c48-9332-d31d1f661da6'),
(169, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-03 00:09:26', '2020-09-01 18:33:52', NULL, 'c2c5b7a2-dc6c-4b38-a745-9a788a754c6e'),
(170, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-03 00:09:26', '2020-09-01 18:33:52', NULL, 'f47f66c8-1bc1-4a1f-8749-ad09268482c7'),
(171, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-03 00:09:26', '2020-09-01 18:33:52', NULL, 'ff3e047d-a30d-4f72-8787-f6e7b320b0d3'),
(172, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-03 00:09:26', '2020-09-02 23:55:21', NULL, 'b30cc30e-0fd2-4f23-bf31-1c49c5263bfd'),
(173, NULL, NULL, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2020-09-03 00:11:44', '2020-09-03 00:14:05', NULL, 'a6b5c161-3dfd-41c1-b9a4-d0dea6326862'),
(174, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-03 00:11:44', '2020-09-03 00:14:05', NULL, '71075435-2c20-4d77-b629-caf3a47c2a51'),
(175, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-03 00:11:44', '2020-09-03 00:14:05', NULL, 'de88ad76-1d5f-4767-9c4e-044eb26b80c7'),
(176, NULL, 35, 14, 'craft\\elements\\Entry', 1, 0, '2020-09-03 00:11:44', '2020-09-03 00:11:44', NULL, '17177063-6125-4c18-b4af-ab5abfd98ee8'),
(177, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-03 00:11:44', '2020-09-01 18:33:52', NULL, '0a0bff76-9018-4c07-b34e-bd5650e72a40'),
(178, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-03 00:11:44', '2020-09-01 18:33:52', NULL, '8f35a03f-f047-4642-a76e-402ca1dfe514'),
(179, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-03 00:11:44', '2020-09-01 18:33:52', NULL, '9b75a3d9-d07f-41d0-886e-69b370b378f9'),
(180, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-03 00:11:44', '2020-09-01 18:33:52', NULL, '0cb3e909-d078-41eb-bdc5-70211f6205d4'),
(181, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-03 00:11:44', '2020-09-01 18:33:52', NULL, '5149c2fb-34c4-4356-9aa3-74897d955c69'),
(182, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-03 00:11:44', '2020-09-02 23:55:21', NULL, '1856b2b6-bfe9-4305-adcf-91d2bbfa6b06'),
(183, NULL, NULL, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2020-09-03 00:11:44', '2020-09-03 00:11:44', NULL, '108dc7b4-772a-48bd-8655-52adebc0043b'),
(184, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-03 00:11:44', '2020-09-03 00:11:44', NULL, 'd0cca092-faeb-422b-8dc0-06b37124f082'),
(185, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-03 00:11:44', '2020-09-03 00:11:44', NULL, 'af4e18e7-ffc9-488f-a3b4-567d58fc2e8f'),
(186, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-03 00:14:05', '2020-09-03 00:14:05', NULL, '79c1ad7e-640c-437f-827f-e712bae02e29'),
(187, NULL, 36, 14, 'craft\\elements\\Entry', 1, 0, '2020-09-03 00:14:05', '2020-09-03 00:14:05', NULL, '9aadc057-d6f4-44a5-9cad-fbd6cae832d2'),
(188, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-03 00:14:05', '2020-09-01 18:33:52', NULL, 'f8bb0474-a768-490f-8d04-9f5b272c6aad'),
(189, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-03 00:14:05', '2020-09-01 18:33:52', NULL, 'dcaf495d-36a6-4106-a62c-9ce596189252'),
(190, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-03 00:14:05', '2020-09-01 18:33:52', NULL, 'cdc5f06a-a696-4bac-8ab3-f35e528351c4'),
(191, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-03 00:14:05', '2020-09-01 18:33:52', NULL, 'da26032d-a8a1-4185-b9c4-8df2190a8eae'),
(192, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-03 00:14:05', '2020-09-01 18:33:52', NULL, '4bc7c6dd-983b-407c-bcca-7381ccb47e7d'),
(193, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-03 00:14:05', '2020-09-02 23:55:21', NULL, 'c9265a41-9e83-4239-9557-5a0c1c2c75c4'),
(194, NULL, NULL, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2020-09-03 00:14:05', '2020-09-03 00:14:05', NULL, 'b38ddff0-24b2-46b2-8cb1-554c086f429a'),
(195, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-03 00:14:05', '2020-09-03 00:14:05', NULL, '97ca7970-c330-4782-95c4-64e5c814f30f'),
(196, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-03 00:14:05', '2020-09-03 00:14:05', NULL, '8b8efc95-6bbc-4c69-a133-7c54091b3b5f'),
(197, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-03 00:14:05', '2020-09-03 00:14:05', NULL, '9a636570-1642-4141-9219-da13641585a7'),
(198, NULL, NULL, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2020-09-03 00:21:51', '2020-09-03 00:21:51', NULL, '25954607-d667-454a-9555-d02b926a2ab4'),
(199, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-03 00:21:51', '2020-09-03 00:21:51', NULL, '2686fd0d-7740-4d02-be95-821449984dc9'),
(200, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-03 00:21:51', '2020-09-03 00:21:51', NULL, '6efc9127-e5f6-426c-a15d-2572e7ce9f79'),
(201, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-03 00:21:51', '2020-09-03 00:21:51', NULL, '5e49c774-9e88-4e6c-882c-9290db25eb35'),
(202, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-03 00:21:51', '2020-09-03 00:21:51', NULL, 'e99a44b0-db94-4c4c-98f4-bc373fc3c8ea'),
(203, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-03 00:21:51', '2020-09-03 00:21:51', NULL, '6d37f205-fee9-43ab-b3fa-f13a0a395f47'),
(204, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-03 00:21:51', '2020-09-03 00:21:51', NULL, '854acb79-1622-4ad5-b375-f9e9bcf62a30'),
(205, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-03 00:21:51', '2020-09-03 00:21:51', NULL, '023eb8bb-2382-4b83-8bf0-4b8332cb8ef4'),
(206, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-03 00:21:51', '2020-09-03 00:21:51', NULL, 'ff16d9a2-e15d-46d1-80f6-95f4dab8e545'),
(207, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-03 00:21:51', '2020-09-03 00:21:51', NULL, '5def3b4f-27bc-4894-b1a9-726563faabf0'),
(208, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-03 00:21:51', '2020-09-03 00:21:51', NULL, '0e73d307-84bc-4a64-9147-a4e07f6f0cf2'),
(209, NULL, 37, 14, 'craft\\elements\\Entry', 1, 0, '2020-09-03 00:21:51', '2020-09-03 00:21:51', NULL, 'b9ac070e-1062-4f88-9cb0-1d19da820e43'),
(210, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-03 00:21:51', '2020-09-01 18:33:52', NULL, '0aed2de7-29d9-49f3-9674-50536497d323'),
(211, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-03 00:21:51', '2020-09-01 18:33:52', NULL, 'a4824175-24a4-45b9-b1d7-ef2187be5a51'),
(212, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-03 00:21:51', '2020-09-01 18:33:52', NULL, '8d4049df-fc07-46bf-ad3d-b5491b1af348'),
(213, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-03 00:21:51', '2020-09-01 18:33:52', NULL, 'b54ac825-f59e-4e0f-9a9f-0e6d147d729c'),
(214, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-03 00:21:51', '2020-09-01 18:33:52', NULL, 'b0893b9a-71d7-4d5c-b4b5-a8cd08cf5c48'),
(215, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-03 00:21:51', '2020-09-02 23:55:21', NULL, 'ee033435-d3fa-4e57-8fda-51943595af29'),
(216, NULL, NULL, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2020-09-03 00:21:51', '2020-09-03 00:14:05', NULL, '28523a68-c560-4048-90b1-05110822da9d'),
(217, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-03 00:21:51', '2020-09-03 00:14:05', NULL, 'ea1e70ff-12e0-4e20-b550-3ce83c5595ce'),
(218, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-03 00:21:51', '2020-09-03 00:14:05', NULL, '1b6e7263-3d90-4014-9e31-995b942ac43d'),
(219, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-03 00:21:51', '2020-09-03 00:14:05', NULL, '216cd5d6-8bb9-47b2-bfb9-31a8e863b76b'),
(220, NULL, NULL, 17, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2020-09-03 00:21:51', '2020-09-03 00:21:51', NULL, '48772ef5-f9ea-4f43-87c0-0630239ab9ea'),
(221, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-03 00:21:51', '2020-09-03 00:21:51', NULL, '1014d1d4-9080-4ad0-a9d7-dc164c9d71a0'),
(222, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-03 00:21:51', '2020-09-03 00:21:51', NULL, '76b4ec26-676f-4861-9683-4f88e122d556'),
(223, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-03 00:21:51', '2020-09-03 00:21:51', NULL, '18656934-0dc5-4b55-a1f2-df0f0731f64a'),
(224, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-03 00:21:51', '2020-09-03 00:21:51', NULL, '222b4813-bc5d-4d3b-a594-4100313ab26e'),
(225, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-03 00:21:51', '2020-09-03 00:21:51', NULL, 'f85298fb-796d-4d39-b46d-55ac6831ea6e'),
(226, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-03 00:21:51', '2020-09-03 00:21:51', NULL, '0c019922-da08-400d-a5a9-7d7c6442b51e'),
(227, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-03 00:21:51', '2020-09-03 00:21:51', NULL, 'ec5824bb-73b5-4415-8652-7b856772542e'),
(228, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-03 00:21:51', '2020-09-03 00:21:51', NULL, 'a771826e-c19c-48e2-a1fe-868edc83405e'),
(229, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-03 00:21:51', '2020-09-03 00:21:51', NULL, 'ec0d23dd-efc4-4b99-ae8d-b08e7281c92e'),
(230, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2020-09-03 00:21:51', '2020-09-03 00:21:51', NULL, '65790791-d806-48a8-9565-826c39a86d55');

-- --------------------------------------------------------

--
-- Table structure for table `elements_sites`
--

CREATE TABLE `elements_sites` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `elements_sites`
--

INSERT INTO `elements_sites` (`id`, `elementId`, `siteId`, `slug`, `uri`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, NULL, NULL, 1, '2020-07-27 13:15:29', '2020-07-27 13:15:29', '4debf42b-2e95-4360-8629-a49fa48eb862'),
(2, 2, 1, 'home', '__home__', 1, '2020-07-27 14:09:40', '2020-07-27 14:09:40', '1ae4928e-5b06-40fc-8885-291a970165f7'),
(3, 3, 1, 'home', '__home__', 1, '2020-07-27 14:09:40', '2020-07-27 14:09:40', '5bf58ce1-e809-48bb-9ad0-ff0669d3871c'),
(4, 4, 1, 'about', 'about', 1, '2020-08-20 15:05:44', '2020-08-20 15:05:44', '78a6f331-3a5f-49d8-a195-7869841f9415'),
(5, 5, 1, 'about', 'about', 1, '2020-08-20 15:05:44', '2020-08-20 15:05:44', '7ee6c77f-18c0-455d-bad0-c54b8dfce2c5'),
(6, 6, 1, 'faq', 'faq', 1, '2020-08-20 15:07:13', '2020-08-20 15:07:13', '5548825d-0e02-4a4f-ad29-cc416805f1ae'),
(7, 7, 1, 'faq', 'faq', 1, '2020-08-20 15:07:13', '2020-08-20 15:07:13', 'd7c309a9-50a0-4e9e-bcb2-503d5e498a2a'),
(8, 8, 1, 'faq', 'faq', 1, '2020-08-20 15:07:13', '2020-08-20 15:07:13', 'e3d1dc2a-02ff-469c-bd3a-7370e64894aa'),
(9, 9, 1, 'contact', 'contact', 1, '2020-08-25 13:20:10', '2020-08-25 13:20:10', '739dc579-da08-41be-9866-d8bbf08312d2'),
(10, 10, 1, 'contact', 'contact', 1, '2020-08-25 13:20:10', '2020-08-25 13:20:10', '965ce04b-1cbf-4081-a71a-8de9639eaebe'),
(11, 11, 1, 'covid-19', 'covid-19', 1, '2020-08-26 14:34:34', '2020-08-26 14:34:34', '554f2655-48fa-4077-b9a7-227087dcb8ae'),
(12, 12, 1, 'covid-19', 'covid-19', 1, '2020-08-26 14:34:34', '2020-08-26 14:34:34', 'da4b51e2-55ae-4a69-a425-d7fbf4971c63'),
(13, 13, 1, 'policy', 'policy', 1, '2020-08-27 13:11:27', '2020-08-27 13:11:27', 'fdf996b6-b89a-4d34-9b6b-3fc4b6943e09'),
(14, 14, 1, 'policy', 'policy', 1, '2020-08-27 13:11:27', '2020-08-27 13:11:27', '8a59b0e7-1adf-461e-9e41-4445a575aa06'),
(15, 15, 1, NULL, NULL, 1, '2020-09-01 14:43:50', '2020-09-01 14:43:50', '4eab4b4b-fa02-4cfe-941f-7334e5c1f9c4'),
(16, 16, 1, NULL, NULL, 1, '2020-09-01 14:43:51', '2020-09-01 14:43:51', '583b1bdd-f9e9-4138-af70-bae46e1b7bd6'),
(17, 17, 1, NULL, NULL, 1, '2020-09-01 14:43:51', '2020-09-01 14:43:51', 'f0780c7f-ba13-4bed-b0ab-89025df93f44'),
(18, 18, 1, NULL, NULL, 1, '2020-09-01 14:43:51', '2020-09-01 14:43:51', '959fcb14-7ef6-4895-b733-2fd1dcdf0003'),
(19, 19, 1, NULL, NULL, 1, '2020-09-01 14:43:51', '2020-09-01 14:43:51', '050d3b60-bae6-407c-8c45-33fd6c1ab1f7'),
(20, 20, 1, NULL, NULL, 1, '2020-09-01 14:43:51', '2020-09-01 14:43:51', '44bc5947-b55c-4932-9b4d-b7d30f301eb4'),
(21, 21, 1, NULL, NULL, 1, '2020-09-01 14:43:51', '2020-09-01 14:43:51', '0b3071ba-f725-4a75-8142-cdd034cb3ddf'),
(22, 22, 1, NULL, NULL, 1, '2020-09-01 14:43:51', '2020-09-01 14:43:51', 'bb5c06b9-1eef-4bfa-82af-7fd63dd39b58'),
(23, 23, 1, NULL, NULL, 1, '2020-09-01 14:43:52', '2020-09-01 14:43:52', '1c60a1a3-b619-4365-9fbc-62590b3e35d5'),
(24, 24, 1, NULL, NULL, 1, '2020-09-01 14:43:52', '2020-09-01 14:43:52', '21e005fe-12f0-4753-ae6e-08c5ae8d2c99'),
(25, 25, 1, NULL, NULL, 1, '2020-09-01 14:43:52', '2020-09-01 14:43:52', '84be22d1-7414-4c3c-b8d7-24f027fc38ab'),
(26, 26, 1, NULL, NULL, 1, '2020-09-01 14:43:52', '2020-09-01 14:43:52', 'b99052fd-a882-4893-a1cb-d6fca303f576'),
(27, 27, 1, 'home', '__home__', 1, '2020-09-01 16:09:26', '2020-09-01 16:09:26', 'ef0781d1-d71f-447e-a4d0-bdc922c4afa6'),
(28, 28, 1, 'about', 'about', 1, '2020-09-01 16:12:46', '2020-09-01 16:12:46', 'c0c80943-223a-4805-a45c-7517d3ac4914'),
(29, 29, 1, 'about', 'about', 1, '2020-09-01 16:16:42', '2020-09-01 16:16:42', '2442b51f-8960-4f95-a266-d9c0225d6da1'),
(30, 30, 1, 'faq', 'faq', 1, '2020-09-01 16:19:15', '2020-09-01 16:19:15', 'e9bd8331-fffe-4a01-9152-cea5cfb6517a'),
(31, 31, 1, 'contact', 'contact', 1, '2020-09-01 16:26:18', '2020-09-01 16:26:18', '07c1b940-79f6-48d3-a8d1-fea35c34adcb'),
(32, 32, 1, 'policy', 'policy', 1, '2020-09-01 16:26:30', '2020-09-01 16:26:30', '0e7423e9-6937-49f1-874d-9d73d3cb582f'),
(33, 33, 1, 'covid-19', 'covid-19', 1, '2020-09-01 16:26:45', '2020-09-01 16:26:45', '69b4ef66-71d5-4103-b946-8c51502b7289'),
(34, 34, 1, NULL, NULL, 1, '2020-09-01 16:26:56', '2020-09-01 16:26:56', '9e95e920-263f-4537-9074-6f282326dd71'),
(35, 35, 1, NULL, NULL, 1, '2020-09-01 16:26:56', '2020-09-01 16:26:56', 'af94c3c3-9050-4d2b-8a9e-0d89c89010ef'),
(36, 36, 1, NULL, NULL, 1, '2020-09-01 16:26:56', '2020-09-01 16:26:56', '857d3462-ac52-4a6f-b689-7f0faced1d9a'),
(37, 37, 1, NULL, NULL, 1, '2020-09-01 16:26:56', '2020-09-01 16:26:56', '851f452c-cf0a-4e02-b053-10c0282b6b5e'),
(38, 38, 1, NULL, NULL, 1, '2020-09-01 16:26:56', '2020-09-01 16:26:56', 'd3de7e8b-21eb-4280-9e90-52791a808678'),
(39, 39, 1, NULL, NULL, 1, '2020-09-01 16:26:56', '2020-09-01 16:26:56', 'f658cc72-2652-40b2-b0ea-90ba0a34a7fb'),
(40, 40, 1, NULL, NULL, 1, '2020-09-01 16:26:56', '2020-09-01 16:26:56', '6d0ee34b-44b1-4a0d-b7ed-d1950f7d6d24'),
(41, 41, 1, 'home', '__home__', 1, '2020-09-01 16:33:17', '2020-09-01 16:33:17', '27d2bfa5-3c26-44f2-af9a-2529ac7f59a0'),
(42, 42, 1, 'home', '__home__', 1, '2020-09-01 16:57:58', '2020-09-01 16:57:58', '47fcc633-ab62-4a74-aa1e-733318c192dc'),
(43, 43, 1, 'home', '__home__', 1, '2020-09-01 17:12:39', '2020-09-01 17:12:39', 'fc39ef2b-0e59-41cb-bd62-7736dca8c581'),
(44, 44, 1, NULL, NULL, 1, '2020-09-01 17:17:22', '2020-09-01 17:17:22', 'd5a577b2-87a5-460a-8a86-72a54fa41197'),
(45, 45, 1, NULL, NULL, 1, '2020-09-01 17:21:48', '2020-09-01 17:21:48', '09382f1e-5009-4f76-a8db-08b72e2f532b'),
(46, 46, 1, NULL, NULL, 1, '2020-09-01 17:21:48', '2020-09-01 17:21:48', '8163f970-44bf-4126-88a6-3c54e282e9fe'),
(47, 47, 1, NULL, NULL, 1, '2020-09-01 17:21:48', '2020-09-01 17:21:48', 'bf7c7419-5e96-4ab8-9e97-0bc2001a1505'),
(48, 48, 1, NULL, NULL, 1, '2020-09-01 17:21:48', '2020-09-01 17:21:48', 'e518b8a4-a87c-407c-9856-c19df1664def'),
(49, 49, 1, NULL, NULL, 1, '2020-09-01 17:21:48', '2020-09-01 17:21:48', 'bf554a69-fd8c-405a-8a32-97c8a6002543'),
(50, 50, 1, NULL, NULL, 1, '2020-09-01 17:21:48', '2020-09-01 17:21:48', '21ee0e33-ce86-445a-b235-4a9bce0bd2fe'),
(51, 51, 1, NULL, NULL, 1, '2020-09-01 17:21:48', '2020-09-01 17:21:48', '485b4879-31c1-474c-ad46-7a05ee24c717'),
(52, 52, 1, NULL, NULL, 1, '2020-09-01 17:21:48', '2020-09-01 17:21:48', '3751b98d-9b2b-4003-ba24-b3ba4debb2b9'),
(53, 53, 1, NULL, NULL, 1, '2020-09-01 17:21:48', '2020-09-01 17:21:48', 'f7152e28-a403-4a45-b9c0-2ed24be27a96'),
(54, 54, 1, NULL, NULL, 1, '2020-09-01 17:21:48', '2020-09-01 17:21:48', '1c515a36-43df-47a3-9777-00213887d485'),
(55, 55, 1, 'about', 'about', 1, '2020-09-01 17:21:48', '2020-09-01 17:21:48', '07374b4b-fdf4-4e8a-a663-5e6eb081b450'),
(56, 56, 1, NULL, NULL, 1, '2020-09-01 17:21:48', '2020-09-01 17:21:48', '5329246c-85d1-44b6-a08c-9460aeedee53'),
(57, 57, 1, NULL, NULL, 1, '2020-09-01 17:21:48', '2020-09-01 17:21:48', '6324783a-94c2-476b-9291-01375579f71e'),
(58, 58, 1, NULL, NULL, 1, '2020-09-01 17:21:48', '2020-09-01 17:21:48', '517b7c47-6dfe-434b-965d-9ecc2b25b96e'),
(59, 59, 1, NULL, NULL, 1, '2020-09-01 17:21:48', '2020-09-01 17:21:48', '81112408-c6bd-415f-8538-a1debd0b8bb7'),
(60, 60, 1, NULL, NULL, 1, '2020-09-01 17:21:48', '2020-09-01 17:21:48', 'a5d7d0bb-74fb-4ca6-ab24-9a979f631484'),
(61, 61, 1, NULL, NULL, 1, '2020-09-01 17:21:48', '2020-09-01 17:21:48', 'e0462b17-5820-4fa8-aa0f-ad4134090e9d'),
(62, 62, 1, NULL, NULL, 1, '2020-09-01 17:21:48', '2020-09-01 17:21:48', '280fb921-c836-456a-8872-c7f0382a17bb'),
(63, 63, 1, NULL, NULL, 1, '2020-09-01 17:21:48', '2020-09-01 17:21:48', '6d424e22-753a-43d1-9ced-92be234b4cde'),
(64, 64, 1, NULL, NULL, 1, '2020-09-01 17:21:48', '2020-09-01 17:21:48', '8c5a45b8-9e5b-4f64-8e83-df4d7cdeece9'),
(65, 65, 1, NULL, NULL, 1, '2020-09-01 17:21:48', '2020-09-01 17:21:48', 'de672ee9-30d3-4d9f-ad67-1e7305e198b6'),
(66, 66, 1, NULL, NULL, 1, '2020-09-01 17:29:42', '2020-09-01 17:29:42', '3c93f279-eece-4acd-9845-5f6a88b69f3b'),
(67, 67, 1, NULL, NULL, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '0522f213-5a70-4284-8685-af5bd0f6ab5e'),
(68, 68, 1, NULL, NULL, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '5f40cb65-ac31-4707-8794-f7323b8f6e01'),
(69, 69, 1, NULL, NULL, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', 'aac52b63-3c59-4408-9d07-3e6787bb075e'),
(70, 70, 1, NULL, NULL, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', 'd8740eb6-9354-4946-a20f-60648ffbd3c8'),
(71, 71, 1, NULL, NULL, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '4fc4fe5c-036c-4bcf-b9b4-2ac6a3a47fb4'),
(72, 72, 1, NULL, NULL, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '51f67999-e3cd-497d-a5cc-8e9a1c9e88e7'),
(73, 73, 1, NULL, NULL, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '05e3b871-cfbf-4284-aa63-8daa957e8c3d'),
(74, 74, 1, NULL, NULL, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '742a7b85-7b20-4e5c-887a-225dd3b0ac9b'),
(75, 75, 1, NULL, NULL, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '9eb2ca64-cf11-4146-aadb-9dd518a4bd54'),
(76, 76, 1, NULL, NULL, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '917713c5-d99e-4126-b6f6-9c28241e4b36'),
(77, 77, 1, NULL, NULL, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '46bed804-20c5-43de-b97d-cf0db2bf9baf'),
(78, 78, 1, NULL, NULL, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', 'f9556f5e-8591-4eed-a107-52084479af3a'),
(79, 79, 1, NULL, NULL, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '87f80f60-12e4-4aac-b29c-5aa33f7db3bf'),
(80, 80, 1, 'about', 'about', 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '00ce5aac-8923-440f-ae0a-62250887d024'),
(81, 81, 1, NULL, NULL, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', 'c0dfcb30-aa68-4548-88fa-7733d957f86d'),
(82, 82, 1, NULL, NULL, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', 'ad4d7261-32bd-4bde-a711-5da4704dd646'),
(83, 83, 1, NULL, NULL, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', 'f5e3de23-13fc-410f-96e5-29b1de800f77'),
(84, 84, 1, NULL, NULL, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', 'ac7c1c00-5330-4948-9c18-7524ea32ad35'),
(85, 85, 1, NULL, NULL, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '9103218d-387a-4b24-a3c0-582fea6f73c5'),
(86, 86, 1, NULL, NULL, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', 'b75a21f5-cc1c-4a08-9230-0733925f7527'),
(87, 87, 1, NULL, NULL, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', 'b0123997-2639-4e03-8f23-bb920f467c26'),
(88, 88, 1, NULL, NULL, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '9795b734-2241-4bae-8e67-7c8add514575'),
(89, 89, 1, NULL, NULL, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '66c01cc4-72b0-4887-9151-028e159c449a'),
(90, 90, 1, NULL, NULL, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '9708503b-9fef-4000-991e-604c01962ab7'),
(91, 91, 1, NULL, NULL, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', 'ff2a6c7a-05f4-423a-91be-b63819b42abd'),
(92, 92, 1, NULL, NULL, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '6de2eec4-0fc0-452b-a7c5-2fc663b2689d'),
(93, 93, 1, NULL, NULL, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', 'e9ce2760-cf2b-41f1-96b5-d9953b19b7a2'),
(94, 94, 1, NULL, NULL, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', 'aa93b7a0-e926-424e-8cc8-587017452c8f'),
(95, 95, 1, NULL, NULL, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', 'aeb087e3-fdf8-4315-887f-cbd90c091143'),
(96, 96, 1, NULL, NULL, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '3b486626-251d-4f70-bd1f-67e392425515'),
(97, 97, 1, NULL, NULL, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', 'dcb18b58-9794-48c6-9543-449d9b75fe2e'),
(98, 98, 1, NULL, NULL, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', 'bff7736b-76e0-4396-97dd-516d529b7700'),
(99, 99, 1, NULL, NULL, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', 'bf2300b7-c55e-4418-b977-b6139931d89a'),
(100, 100, 1, NULL, NULL, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '2d2b71bd-942a-43ef-a1eb-f29378df8382'),
(101, 101, 1, NULL, NULL, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '7998ec4d-78c5-44ca-8b7e-8a91ee8ce6ef'),
(102, 102, 1, NULL, NULL, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '0e41987e-0cbe-439b-9fcd-0d1940a45a3f'),
(103, 103, 1, NULL, NULL, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '5422fac0-52be-4918-9057-df2c3274dc00'),
(104, 104, 1, NULL, NULL, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '727de9af-b910-44ac-80bb-ee6fa4c1baa7'),
(105, 105, 1, NULL, NULL, 1, '2020-09-01 18:33:52', '2020-09-01 18:33:52', '363bf74e-f7d6-42e3-90a5-8871e3ea24a0'),
(106, 106, 1, NULL, NULL, 1, '2020-09-01 18:33:52', '2020-09-01 18:33:52', '401ca5eb-9cea-40ab-899c-01a42e80c094'),
(107, 107, 1, NULL, NULL, 1, '2020-09-01 18:33:52', '2020-09-01 18:33:52', 'f6be17e0-6e87-4182-8d31-bcc5a6d80940'),
(108, 108, 1, NULL, NULL, 1, '2020-09-01 18:33:52', '2020-09-01 18:33:52', '732c34b4-0bbb-4a20-a736-86f0130050cc'),
(109, 109, 1, NULL, NULL, 1, '2020-09-01 18:33:52', '2020-09-01 18:33:52', '08f0d57e-72e4-43ae-bf3f-8d8696af2d2c'),
(110, 110, 1, NULL, NULL, 1, '2020-09-01 18:33:52', '2020-09-01 18:33:52', '1d7f2025-be45-4ddc-ab4c-396d97aed8ff'),
(111, 111, 1, 'faq', 'faq', 1, '2020-09-01 18:33:52', '2020-09-01 18:33:52', '72890826-c48f-4253-89a3-c009443213f3'),
(112, 112, 1, NULL, NULL, 1, '2020-09-01 18:33:52', '2020-09-01 18:33:52', 'e1848594-d3e3-4225-b172-9bf7f7e0ba31'),
(113, 113, 1, NULL, NULL, 1, '2020-09-01 18:33:52', '2020-09-01 18:33:52', '79ca9637-c0b8-4a4d-8e7f-de0fafb56dd8'),
(114, 114, 1, NULL, NULL, 1, '2020-09-01 18:33:52', '2020-09-01 18:33:52', 'd1899861-254d-47c4-aec5-3291e7e328e3'),
(115, 115, 1, NULL, NULL, 1, '2020-09-01 18:33:52', '2020-09-01 18:33:52', '19b4d096-d096-4d9a-9deb-29a34d0a0c8e'),
(116, 116, 1, NULL, NULL, 1, '2020-09-01 18:33:52', '2020-09-01 18:33:52', 'f23b526b-2422-4559-a0b1-2dc60ddd1a78'),
(117, 117, 1, NULL, NULL, 1, '2020-09-01 18:33:52', '2020-09-01 18:33:52', '07a63393-3512-481d-b2bc-30ecd6ed50e2'),
(118, 118, 1, NULL, NULL, 1, '2020-09-01 18:41:57', '2020-09-01 18:41:57', '242f85dc-218b-4aeb-95d0-5683958490ef'),
(119, 119, 1, 'contact', 'contact', 1, '2020-09-01 18:42:23', '2020-09-01 18:42:23', 'e4b178aa-8b55-4354-9519-87a11c7f3be2'),
(120, 120, 1, 'contact', 'contact', 1, '2020-09-01 18:47:41', '2020-09-01 18:47:41', '63c0c235-0bce-40ed-a3e7-493e0eccf6de'),
(121, 121, 1, 'contact', 'contact', 1, '2020-09-01 18:49:36', '2020-09-01 18:49:36', 'f13113df-8ceb-48e5-88ef-08e737d7ff67'),
(122, 122, 1, 'contact', 'contact', 1, '2020-09-01 18:52:37', '2020-09-01 18:52:37', '9e75e02a-d1ad-492f-8579-13e3fde4b59c'),
(123, 123, 1, 'contact', 'contact', 1, '2020-09-01 18:52:53', '2020-09-01 18:52:53', 'fbc27c23-ef23-4a70-8f9c-e3c6b8f39915'),
(124, 124, 1, 'contact', 'contact', 1, '2020-09-01 18:53:47', '2020-09-01 18:53:47', '67ff525a-b516-4092-b0e9-1c00a54127ed'),
(125, 125, 1, 'contact', 'contact', 1, '2020-09-01 18:58:19', '2020-09-01 18:58:19', '7e5ca258-5baf-4dee-89e1-2f0af8bcc9ae'),
(126, 126, 1, 'contact', 'contact', 1, '2020-09-01 19:00:16', '2020-09-01 19:00:16', 'e56dee32-32b4-4d66-969e-ca3b9b2d3837'),
(127, 127, 1, NULL, NULL, 1, '2020-09-01 19:05:28', '2020-09-01 19:05:28', '82a0d1e5-b82e-468b-83ae-873e7cf8788b'),
(128, 128, 1, NULL, NULL, 1, '2020-09-01 19:05:28', '2020-09-01 19:05:28', 'd90e9af9-1ef6-41c0-bf8e-892036554476'),
(129, 129, 1, NULL, NULL, 1, '2020-09-01 19:05:28', '2020-09-01 19:05:28', '92c7b2f0-9624-4119-ba22-0423f8102948'),
(130, 130, 1, NULL, NULL, 1, '2020-09-01 19:05:28', '2020-09-01 19:05:28', '7d37f99b-2689-444b-944f-723578bcec35'),
(131, 131, 1, NULL, NULL, 1, '2020-09-01 19:05:28', '2020-09-01 19:05:28', '6158c635-7566-49e5-8f29-ed1528566ffb'),
(132, 132, 1, NULL, NULL, 1, '2020-09-01 19:05:28', '2020-09-01 19:05:28', 'b6a49fcf-da6c-4fe3-bc9b-6918994ad956'),
(133, 133, 1, NULL, NULL, 1, '2020-09-01 19:05:28', '2020-09-01 19:05:28', 'fbebdb88-e3a2-4731-8cbc-53240dcfed29'),
(134, 134, 1, 'covid-19', 'covid-19', 1, '2020-09-01 19:05:28', '2020-09-01 19:05:28', 'f6c158cd-14a7-4038-8e46-d3250dd79a81'),
(135, 135, 1, NULL, NULL, 1, '2020-09-01 19:05:28', '2020-09-01 19:05:28', '608005af-743e-4900-bd06-445cf82848e1'),
(136, 136, 1, NULL, NULL, 1, '2020-09-01 19:05:28', '2020-09-01 19:05:28', 'a695958d-2ef8-42f4-97fb-b850b0b4748a'),
(137, 137, 1, NULL, NULL, 1, '2020-09-01 19:05:28', '2020-09-01 19:05:28', 'f384acab-3be4-42f0-939c-763da17ec0a0'),
(138, 138, 1, NULL, NULL, 1, '2020-09-01 19:05:28', '2020-09-01 19:05:28', '9b1e0d01-53cd-49b3-a0c8-02fac09c2eca'),
(139, 139, 1, NULL, NULL, 1, '2020-09-01 19:05:28', '2020-09-01 19:05:28', '18ae5b77-f40b-4a6e-af1b-e70f95aa27fc'),
(140, 140, 1, NULL, NULL, 1, '2020-09-01 19:05:28', '2020-09-01 19:05:28', 'ac8405e0-2744-475a-aa32-f2b4c25bb95b'),
(141, 141, 1, NULL, NULL, 1, '2020-09-01 19:05:28', '2020-09-01 19:05:28', '835ab050-d7d5-476c-ae1a-ea4fe3bd52be'),
(142, 142, 1, 'covid-19', 'covid-19', 1, '2020-09-01 19:08:53', '2020-09-01 19:08:53', '9e977576-5007-45b3-82c2-a253698a08e7'),
(143, 143, 1, NULL, NULL, 1, '2020-09-01 19:08:53', '2020-09-01 19:08:53', 'bd134e55-60dd-419f-8cb3-c8a54e6d616d'),
(144, 144, 1, NULL, NULL, 1, '2020-09-01 19:08:53', '2020-09-01 19:08:53', '76929fe3-325c-4377-967a-04608b85361f'),
(145, 145, 1, NULL, NULL, 1, '2020-09-01 19:08:53', '2020-09-01 19:08:53', 'dac2837d-546b-4c36-8d9b-a25a966d7ef0'),
(146, 146, 1, NULL, NULL, 1, '2020-09-01 19:08:53', '2020-09-01 19:08:53', 'a431012b-3ceb-4236-9384-0141064c4a1f'),
(147, 147, 1, NULL, NULL, 1, '2020-09-01 19:08:53', '2020-09-01 19:08:53', '220c6f5a-9dd0-4fb4-ac53-e71ac139cd44'),
(148, 148, 1, NULL, NULL, 1, '2020-09-01 19:08:53', '2020-09-01 19:08:53', 'c74e8cbe-2120-43f9-89d5-2593e8cec140'),
(149, 149, 1, NULL, NULL, 1, '2020-09-01 19:08:53', '2020-09-01 19:08:53', '66a9995a-4c60-4307-a39e-cd34be0c223c'),
(150, 150, 1, NULL, NULL, 1, '2020-09-01 19:10:03', '2020-09-01 19:10:03', '169c8103-cdec-4c6a-b9e1-001b75c3d0ef'),
(151, 151, 1, 'policy', 'policy', 1, '2020-09-01 20:13:07', '2020-09-01 20:13:07', '29476b08-874b-43d1-940f-b873809616ba'),
(152, 152, 1, 'faq', 'faq', 1, '2020-09-02 23:54:47', '2020-09-02 23:54:47', 'c94f41c9-4a94-42a8-9a2e-be01e19d1f33'),
(153, 153, 1, NULL, NULL, 1, '2020-09-02 23:54:47', '2020-09-02 23:54:47', 'ecc9b0ed-0c2d-449e-ad08-81b91e883152'),
(154, 154, 1, NULL, NULL, 1, '2020-09-02 23:54:47', '2020-09-02 23:54:47', 'bd72f988-69d7-4304-abce-7e7e07bb0c51'),
(155, 155, 1, NULL, NULL, 1, '2020-09-02 23:54:47', '2020-09-02 23:54:47', 'd4462226-a5f1-4cee-bea0-3611f096b0ec'),
(156, 156, 1, NULL, NULL, 1, '2020-09-02 23:54:47', '2020-09-02 23:54:47', 'f6c3659c-b64d-4ee6-871f-5b2518c77c92'),
(157, 157, 1, NULL, NULL, 1, '2020-09-02 23:54:47', '2020-09-02 23:54:47', '9796d8ef-e352-48ac-9208-c39695d90ed0'),
(158, 158, 1, NULL, NULL, 1, '2020-09-02 23:54:47', '2020-09-02 23:54:47', 'ffee8c71-1b73-4358-99fa-8b6a6a6a1684'),
(159, 159, 1, 'faq', 'faq', 1, '2020-09-02 23:55:21', '2020-09-02 23:55:21', 'de4bb1a8-37d2-4a09-ac17-a892ffc18629'),
(160, 160, 1, NULL, NULL, 1, '2020-09-02 23:55:21', '2020-09-02 23:55:21', '1a5949f0-44f8-4cd7-a62f-13c2ddedb372'),
(161, 161, 1, NULL, NULL, 1, '2020-09-02 23:55:21', '2020-09-02 23:55:21', '3dcf8f14-5fc4-45d7-925d-d54e1094a175'),
(162, 162, 1, NULL, NULL, 1, '2020-09-02 23:55:21', '2020-09-02 23:55:21', '6e1c9afb-1446-421f-8002-6671425da299'),
(163, 163, 1, NULL, NULL, 1, '2020-09-02 23:55:21', '2020-09-02 23:55:21', '6170410b-a404-4a97-b25d-5b6a19383b57'),
(164, 164, 1, NULL, NULL, 1, '2020-09-02 23:55:21', '2020-09-02 23:55:21', '1bbefa1e-6a78-4c55-971d-3c03cb3b46e3'),
(165, 165, 1, NULL, NULL, 1, '2020-09-02 23:55:21', '2020-09-02 23:55:21', '0f6c7e8e-f121-4ced-a2e8-8ad130f23d54'),
(166, 166, 1, 'faq', 'faq', 1, '2020-09-03 00:09:26', '2020-09-03 00:09:26', '1aa2d38b-f2b0-4fa3-9c0c-4ab04cfb7ff3'),
(167, 167, 1, NULL, NULL, 1, '2020-09-03 00:09:26', '2020-09-03 00:09:26', 'af1b8fe7-18ac-4c80-989b-21d36238eb1a'),
(168, 168, 1, NULL, NULL, 1, '2020-09-03 00:09:26', '2020-09-03 00:09:26', '0a344d66-65d1-49d7-b357-6f44faf91625'),
(169, 169, 1, NULL, NULL, 1, '2020-09-03 00:09:26', '2020-09-03 00:09:26', '9e077e29-5884-426c-b770-34b3656a13fa'),
(170, 170, 1, NULL, NULL, 1, '2020-09-03 00:09:26', '2020-09-03 00:09:26', 'dae907c7-1161-4c2d-b43f-313f7ddba1ea'),
(171, 171, 1, NULL, NULL, 1, '2020-09-03 00:09:26', '2020-09-03 00:09:26', '41b646e6-dfe3-4174-abe4-1505b22828bd'),
(172, 172, 1, NULL, NULL, 1, '2020-09-03 00:09:26', '2020-09-03 00:09:26', 'f34caf91-4208-47a3-b703-d0fadf29e658'),
(173, 173, 1, NULL, NULL, 1, '2020-09-03 00:11:44', '2020-09-03 00:11:44', 'e31496ef-52c3-417c-ad82-5379b3afef7f'),
(174, 174, 1, NULL, NULL, 1, '2020-09-03 00:11:44', '2020-09-03 00:11:44', '5d742214-58bd-40e6-9ef1-39fe50306388'),
(175, 175, 1, NULL, NULL, 1, '2020-09-03 00:11:44', '2020-09-03 00:11:44', 'aa5070e8-ef74-475a-b724-e58000a92f29'),
(176, 176, 1, 'faq', 'faq', 1, '2020-09-03 00:11:44', '2020-09-03 00:11:44', '1a7cd0c0-dad2-42e6-847e-c2df2a5d8590'),
(177, 177, 1, NULL, NULL, 1, '2020-09-03 00:11:44', '2020-09-03 00:11:44', '51db7155-2e35-42cf-9508-3e4defe0e7b4'),
(178, 178, 1, NULL, NULL, 1, '2020-09-03 00:11:44', '2020-09-03 00:11:44', 'a3171b50-63a5-437b-b1f4-40dca275f586'),
(179, 179, 1, NULL, NULL, 1, '2020-09-03 00:11:44', '2020-09-03 00:11:44', 'ae7fb9f2-dd91-4649-9e83-8b725bf88359'),
(180, 180, 1, NULL, NULL, 1, '2020-09-03 00:11:44', '2020-09-03 00:11:44', '9276e9cb-0268-4aaf-9758-405688bcf0c1'),
(181, 181, 1, NULL, NULL, 1, '2020-09-03 00:11:44', '2020-09-03 00:11:44', 'f6d2d029-4e02-4ee6-bed6-2e264720a762'),
(182, 182, 1, NULL, NULL, 1, '2020-09-03 00:11:44', '2020-09-03 00:11:44', 'c40e42e2-ade5-48eb-ab31-352320a261c8'),
(183, 183, 1, NULL, NULL, 1, '2020-09-03 00:11:44', '2020-09-03 00:11:44', 'f80feb38-7fdb-49dd-af76-3d862ae0f09f'),
(184, 184, 1, NULL, NULL, 1, '2020-09-03 00:11:44', '2020-09-03 00:11:44', '1b9c64af-cf0b-47fe-a921-48998feeed7f'),
(185, 185, 1, NULL, NULL, 1, '2020-09-03 00:11:44', '2020-09-03 00:11:44', 'f0222791-e324-4e98-824f-d17814f9cad4'),
(186, 186, 1, NULL, NULL, 1, '2020-09-03 00:14:05', '2020-09-03 00:14:05', '8df53229-ce3c-4dd1-9b40-c36ecd97dff9'),
(187, 187, 1, 'faq', 'faq', 1, '2020-09-03 00:14:05', '2020-09-03 00:14:05', '63e434aa-13ff-411f-b905-0e5534b20403'),
(188, 188, 1, NULL, NULL, 1, '2020-09-03 00:14:05', '2020-09-03 00:14:05', 'a9fc93bf-e9c8-4a34-adf7-8e35684d5f82'),
(189, 189, 1, NULL, NULL, 1, '2020-09-03 00:14:05', '2020-09-03 00:14:05', '653d5523-f6b9-4eb0-827d-5640b1771cd4'),
(190, 190, 1, NULL, NULL, 1, '2020-09-03 00:14:05', '2020-09-03 00:14:05', '7d4db1c7-7ae2-45d7-9976-cc2c657ce2b2'),
(191, 191, 1, NULL, NULL, 1, '2020-09-03 00:14:05', '2020-09-03 00:14:05', '24c7d3ed-8c8f-4e63-a83d-460e92cabfac'),
(192, 192, 1, NULL, NULL, 1, '2020-09-03 00:14:05', '2020-09-03 00:14:05', '25756746-4990-45fd-bdc2-52d2f4a2f5d8'),
(193, 193, 1, NULL, NULL, 1, '2020-09-03 00:14:05', '2020-09-03 00:14:05', 'c0a01c9c-3b5a-4ac4-8817-4b796c42f78d'),
(194, 194, 1, NULL, NULL, 1, '2020-09-03 00:14:05', '2020-09-03 00:14:05', 'ce2dfdff-3c7d-4cd9-9155-770be6b5a7c9'),
(195, 195, 1, NULL, NULL, 1, '2020-09-03 00:14:05', '2020-09-03 00:14:05', 'ec4072df-efb6-40dc-a0fe-9ea69a1e1731'),
(196, 196, 1, NULL, NULL, 1, '2020-09-03 00:14:05', '2020-09-03 00:14:05', 'c192cecc-b2b7-4853-8a64-f74ae350b8d9'),
(197, 197, 1, NULL, NULL, 1, '2020-09-03 00:14:05', '2020-09-03 00:14:05', '3a9c5b22-9c52-414d-8184-955dae2e70a6'),
(198, 198, 1, NULL, NULL, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '68700255-4d49-4eb0-977c-6ffbc0d6663e'),
(199, 199, 1, NULL, NULL, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', 'ffdd34a8-f5f5-45ca-9f08-deaef8bb62f1'),
(200, 200, 1, NULL, NULL, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '0890ff8c-54d0-4cfa-8940-2b1878e793b9'),
(201, 201, 1, NULL, NULL, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', 'a50886ca-724e-411e-91d7-f0c3d62478ea'),
(202, 202, 1, NULL, NULL, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '582c0884-0412-406f-bad1-9010fb2bbb70'),
(203, 203, 1, NULL, NULL, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '16956631-8982-4fbc-bae9-130857fbd45e'),
(204, 204, 1, NULL, NULL, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '9e48ee91-1664-452d-8b30-938a6a94cb6a'),
(205, 205, 1, NULL, NULL, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '9f925b89-afc5-4f02-993f-1091158a9a04'),
(206, 206, 1, NULL, NULL, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '6d6d166c-b7c6-4297-b36d-461ea357446f'),
(207, 207, 1, NULL, NULL, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '64b141a1-4b31-40d6-a5ff-bbad7b5dfc5b'),
(208, 208, 1, NULL, NULL, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', 'ecfa70d5-43d0-4637-abc2-1af045e7b98f'),
(209, 209, 1, 'faq', 'faq', 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', 'd8da3c36-2b70-4b7f-8668-bc6dae0440db'),
(210, 210, 1, NULL, NULL, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', 'a5dc7f29-e8b2-44d4-8ad2-786500bcbcd2'),
(211, 211, 1, NULL, NULL, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '8b75ee04-ef62-42db-ad92-9c6a27c13e44'),
(212, 212, 1, NULL, NULL, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', 'f5946c3d-f8bb-4c8e-971b-36268f30f637'),
(213, 213, 1, NULL, NULL, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', 'a17f4686-c421-4570-99ae-d2941daed3ff'),
(214, 214, 1, NULL, NULL, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '5f508fa2-677c-4530-bbe8-a7bf170cd998'),
(215, 215, 1, NULL, NULL, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '71dde7a0-1fc5-4cb0-96d6-bfccb2fe156c'),
(216, 216, 1, NULL, NULL, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '24cdb5ca-9378-4c7d-aba4-67091c4166d6'),
(217, 217, 1, NULL, NULL, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '500809d6-c288-44e2-a7ce-a1596d194531'),
(218, 218, 1, NULL, NULL, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '5020a8e1-513d-457f-9d6d-a727adb41551'),
(219, 219, 1, NULL, NULL, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '10148e5c-a4bc-4b1a-9c60-cc2f5221d470'),
(220, 220, 1, NULL, NULL, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', 'e37fe00a-28b5-4eb5-9924-269410789772'),
(221, 221, 1, NULL, NULL, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '19db2e69-90b9-4ab9-9f07-b2dc31aa0565'),
(222, 222, 1, NULL, NULL, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '96877192-cea0-47f9-be2c-524695b8cee3'),
(223, 223, 1, NULL, NULL, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '52dde3af-0a15-4ae8-bfee-ad90f9e7dbb8'),
(224, 224, 1, NULL, NULL, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '93ab0d4c-d85a-49a1-a9a8-e7fa57e65a97'),
(225, 225, 1, NULL, NULL, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', 'aafa0c41-1964-45e7-88e7-72b936f01910'),
(226, 226, 1, NULL, NULL, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '97a29c7f-6c52-45ef-ba3e-e1278fb2385f'),
(227, 227, 1, NULL, NULL, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '94af9dd7-dcc3-45dc-90cb-69e1e5fb3eea'),
(228, 228, 1, NULL, NULL, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '30e6e68a-398e-44fd-982d-969a1565c08b'),
(229, 229, 1, NULL, NULL, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '5430bfbb-fcd2-4e86-a01b-32e5ab8a19d6'),
(230, 230, 1, NULL, NULL, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', 'ccfc3b01-476c-4ab5-8191-2d8184dd95ea');

-- --------------------------------------------------------

--
-- Table structure for table `entries`
--

CREATE TABLE `entries` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `typeId` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `postDate` datetime DEFAULT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `deletedWithEntryType` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `entries`
--

INSERT INTO `entries` (`id`, `sectionId`, `parentId`, `typeId`, `authorId`, `postDate`, `expiryDate`, `deletedWithEntryType`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 1, NULL, 1, NULL, '2020-07-27 14:09:00', NULL, NULL, '2020-07-27 14:09:40', '2020-07-27 14:09:40', '2ce00217-5de9-4a99-8577-907607215f26'),
(3, 1, NULL, 1, NULL, '2020-07-27 14:09:00', NULL, NULL, '2020-07-27 14:09:40', '2020-07-27 14:09:40', '2bf8b0ee-e769-47af-aff6-53f94a847606'),
(4, 2, NULL, 2, NULL, '2020-08-20 15:05:00', NULL, NULL, '2020-08-20 15:05:44', '2020-08-20 15:05:44', 'de404dad-8317-4233-a054-d570a1fb54eb'),
(5, 2, NULL, 2, NULL, '2020-08-20 15:05:00', NULL, NULL, '2020-08-20 15:05:44', '2020-08-20 15:05:44', '5bb08365-7e5b-4124-bf46-b1939a15982e'),
(6, 3, NULL, 3, NULL, '2020-08-20 15:07:00', NULL, NULL, '2020-08-20 15:07:13', '2020-08-20 15:07:13', '0cb47e1d-3ef9-4073-b6a3-91557614f4f5'),
(7, 3, NULL, 3, NULL, '2020-08-20 15:07:00', NULL, NULL, '2020-08-20 15:07:13', '2020-08-20 15:07:13', 'e8489961-7a06-4c51-b44b-7eb352822397'),
(8, 3, NULL, 3, NULL, '2020-08-20 15:07:00', NULL, NULL, '2020-08-20 15:07:13', '2020-08-20 15:07:13', 'd7587193-9952-4079-bd5f-dfc3ee4e46a9'),
(9, 4, NULL, 4, NULL, '2020-08-25 13:20:00', NULL, NULL, '2020-08-25 13:20:10', '2020-08-25 13:20:10', '8bb54203-f06b-4611-af04-ce613a49536e'),
(10, 4, NULL, 4, NULL, '2020-08-25 13:20:00', NULL, NULL, '2020-08-25 13:20:10', '2020-08-25 13:20:10', '63b572de-7c4a-44f1-a750-6035602b15ae'),
(11, 5, NULL, 5, NULL, '2020-08-26 14:34:00', NULL, NULL, '2020-08-26 14:34:34', '2020-08-26 14:34:34', '8d654fad-3671-48f8-b1f5-1bd56f578d33'),
(12, 5, NULL, 5, NULL, '2020-08-26 14:34:00', NULL, NULL, '2020-08-26 14:34:34', '2020-08-26 14:34:34', 'e0fa19d6-d9cd-4de5-a28e-3ecffa61a96d'),
(13, 6, NULL, 6, NULL, '2020-08-27 13:11:00', NULL, NULL, '2020-08-27 13:11:27', '2020-08-27 13:11:27', 'b6a73a58-0cd9-418c-9bf1-6c3b869370a3'),
(14, 6, NULL, 6, NULL, '2020-08-27 13:11:00', NULL, NULL, '2020-08-27 13:11:27', '2020-08-27 13:11:27', 'f3c3d397-2f21-474f-9864-274c52a3be88'),
(27, 1, NULL, 1, NULL, '2020-07-27 14:09:00', NULL, NULL, '2020-09-01 16:09:26', '2020-09-01 16:09:26', '03e62398-6a7c-4cc7-b875-f72558a4461c'),
(28, 2, NULL, 2, NULL, '2020-08-20 15:05:00', NULL, NULL, '2020-09-01 16:12:46', '2020-09-01 16:12:46', 'ba9f3aab-6063-4dda-88ff-d39a2f5d2e18'),
(29, 2, NULL, 2, NULL, '2020-08-20 15:05:00', NULL, NULL, '2020-09-01 16:16:42', '2020-09-01 16:16:42', '39eb42ef-90ee-4838-98e0-6fb3748f0e0f'),
(30, 3, NULL, 3, NULL, '2020-08-20 15:07:00', NULL, NULL, '2020-09-01 16:19:15', '2020-09-01 16:19:15', '9dea5c0f-00a8-493b-9cb6-0a1a32562368'),
(31, 4, NULL, 4, NULL, '2020-08-25 13:20:00', NULL, NULL, '2020-09-01 16:26:18', '2020-09-01 16:26:18', '95e04e66-3fdf-4b27-98d5-6c22c411b508'),
(32, 6, NULL, 6, NULL, '2020-08-27 13:11:00', NULL, NULL, '2020-09-01 16:26:30', '2020-09-01 16:26:30', '91a2d6bb-ad8f-4741-a032-dedd3988c27a'),
(33, 5, NULL, 5, NULL, '2020-08-26 14:34:00', NULL, NULL, '2020-09-01 16:26:45', '2020-09-01 16:26:45', '441486bb-b8e0-4c31-8253-f8a8e2ac03d4'),
(41, 1, NULL, 1, NULL, '2020-07-27 14:09:00', NULL, NULL, '2020-09-01 16:33:17', '2020-09-01 16:33:17', '643a0f08-9f87-4761-9a36-5ffc6c282903'),
(42, 1, NULL, 1, NULL, '2020-07-27 14:09:00', NULL, NULL, '2020-09-01 16:57:58', '2020-09-01 16:57:58', 'aad32db2-93c9-4eb8-8164-fe0b2f5c45c3'),
(43, 1, NULL, 1, NULL, '2020-07-27 14:09:00', NULL, NULL, '2020-09-01 17:12:39', '2020-09-01 17:12:39', 'c010c7b0-e867-463d-9627-237617da1622'),
(55, 2, NULL, 2, NULL, '2020-08-20 15:05:00', NULL, NULL, '2020-09-01 17:21:48', '2020-09-01 17:21:48', 'aed8219d-a02f-4526-ad11-10bbdc363257'),
(80, 2, NULL, 2, NULL, '2020-08-20 15:05:00', NULL, NULL, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '0072b390-daee-4fcb-9e13-8d7be2e08923'),
(111, 3, NULL, 3, NULL, '2020-08-20 15:07:00', NULL, NULL, '2020-09-01 18:33:52', '2020-09-01 18:33:52', '9ff6e5ca-ae97-4951-90f4-eec4459b2185'),
(119, 4, NULL, 4, NULL, '2020-08-25 13:20:00', NULL, NULL, '2020-09-01 18:42:23', '2020-09-01 18:42:23', 'c798f962-5165-4559-85be-ea20345fabe6'),
(120, 4, NULL, 4, NULL, '2020-08-25 13:20:00', NULL, NULL, '2020-09-01 18:47:41', '2020-09-01 18:47:41', 'fb16a7f8-fccd-488e-998b-dc24eff53ae8'),
(121, 4, NULL, 4, NULL, '2020-08-25 13:20:00', NULL, NULL, '2020-09-01 18:49:36', '2020-09-01 18:49:36', '13ec1f98-cf3a-43fa-b1d9-8955a423d786'),
(122, 4, NULL, 4, NULL, '2020-08-25 13:20:00', NULL, NULL, '2020-09-01 18:52:37', '2020-09-01 18:52:37', '9378ddf2-995b-4413-bd3a-10e753d1d50d'),
(123, 4, NULL, 4, NULL, '2020-08-25 13:20:00', NULL, NULL, '2020-09-01 18:52:53', '2020-09-01 18:52:53', 'c5b6fcea-196a-4a55-8546-a70313ba6317'),
(124, 4, NULL, 4, NULL, '2020-08-25 13:20:00', NULL, NULL, '2020-09-01 18:53:47', '2020-09-01 18:53:47', 'a59d315e-b12b-4b96-8dbd-1f4f8281d083'),
(125, 4, NULL, 4, NULL, '2020-08-25 13:20:00', NULL, NULL, '2020-09-01 18:58:19', '2020-09-01 18:58:19', '3c32695a-8934-4d48-a63f-ab0746d46b48'),
(126, 4, NULL, 4, NULL, '2020-08-25 13:20:00', NULL, NULL, '2020-09-01 19:00:16', '2020-09-01 19:00:16', '9af61251-6e54-46b2-b771-f2e4493c319d'),
(134, 5, NULL, 5, NULL, '2020-08-26 14:34:00', NULL, NULL, '2020-09-01 19:05:28', '2020-09-01 19:05:28', '6a13e4f3-4281-418d-b5e9-7ae485e368d2'),
(142, 5, NULL, 5, NULL, '2020-08-26 14:34:00', NULL, NULL, '2020-09-01 19:08:53', '2020-09-01 19:08:53', '4631b107-cadc-46cd-9bcc-49158e5a2a35'),
(151, 6, NULL, 6, NULL, '2020-08-27 13:11:00', NULL, NULL, '2020-09-01 20:13:07', '2020-09-01 20:13:07', '4f7d9a34-105d-4385-8a7f-2f04979a8672'),
(152, 3, NULL, 3, NULL, '2020-08-20 15:07:00', NULL, NULL, '2020-09-02 23:54:47', '2020-09-02 23:54:47', '4b12fcf2-30b5-42db-a7a8-f0eb5bd29969'),
(159, 3, NULL, 3, NULL, '2020-08-20 15:07:00', NULL, NULL, '2020-09-02 23:55:21', '2020-09-02 23:55:21', 'e59e4cbe-8a96-4a14-b579-98b10518be0c'),
(166, 3, NULL, 3, NULL, '2020-08-20 15:07:00', NULL, NULL, '2020-09-03 00:09:26', '2020-09-03 00:09:26', 'bccb462a-af20-4dd4-a176-469829df1ad5'),
(176, 3, NULL, 3, NULL, '2020-08-20 15:07:00', NULL, NULL, '2020-09-03 00:11:44', '2020-09-03 00:11:44', '2b3d1798-0f9a-4b8e-9a1c-7d6e6d39e465'),
(187, 3, NULL, 3, NULL, '2020-08-20 15:07:00', NULL, NULL, '2020-09-03 00:14:05', '2020-09-03 00:14:05', '0c140197-32df-4036-9458-4fd3d8e3c025'),
(209, 3, NULL, 3, NULL, '2020-08-20 15:07:00', NULL, NULL, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '0b49ce28-4611-461a-9248-37ce36c6ef9a');

-- --------------------------------------------------------

--
-- Table structure for table `entrytypes`
--

CREATE TABLE `entrytypes` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `hasTitleField` tinyint(1) NOT NULL DEFAULT '1',
  `titleTranslationMethod` varchar(255) NOT NULL DEFAULT 'site',
  `titleTranslationKeyFormat` text,
  `titleFormat` varchar(255) DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `entrytypes`
--

INSERT INTO `entrytypes` (`id`, `sectionId`, `fieldLayoutId`, `name`, `handle`, `hasTitleField`, `titleTranslationMethod`, `titleTranslationKeyFormat`, `titleFormat`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, 10, 'Home', 'home', 0, 'site', NULL, '{section.name|raw}', 1, '2020-07-27 14:09:40', '2020-09-01 16:09:26', NULL, '32984911-51e5-46ce-8b9e-68f185f74723'),
(2, 2, 11, 'About', 'about', 0, 'site', NULL, '{section.name|raw}', 1, '2020-08-20 15:05:44', '2020-09-01 16:12:46', NULL, '676c8dae-d7a4-4211-88ef-cc8c499d7f31'),
(3, 3, 14, 'FAQ', 'faq', 0, 'site', NULL, '{section.name|raw}', 1, '2020-08-20 15:07:12', '2020-09-01 16:19:15', NULL, '7e678287-2507-4dc3-89fc-2896a353088d'),
(4, 4, 1, 'Contact', 'contact', 0, 'site', NULL, '{section.name|raw}', 1, '2020-08-25 13:20:10', '2020-08-25 13:20:10', NULL, 'f2fe851d-aef7-419d-a843-ba0e7ec94a0d'),
(5, 5, 2, 'Covid 19', 'covid19', 0, 'site', NULL, '{section.name|raw}', 1, '2020-08-26 14:34:34', '2020-08-26 14:34:34', NULL, '2ad632e7-d378-4f89-b2c1-c89c25e07816'),
(6, 6, 3, 'Policy', 'policy', 0, 'site', NULL, '{section.name|raw}', 1, '2020-08-27 13:11:27', '2020-08-27 13:11:27', NULL, '2051a8cf-04d7-40da-bd7d-eece02000f6e');

-- --------------------------------------------------------

--
-- Table structure for table `fieldgroups`
--

CREATE TABLE `fieldgroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fieldgroups`
--

INSERT INTO `fieldgroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Common', '2020-07-27 13:15:28', '2020-07-27 13:15:28', '1900278b-fbd9-4840-8e1f-c1eba29aa8aa'),
(2, 'Home', '2020-09-01 14:29:42', '2020-09-01 14:29:42', '72d2a38c-21ab-4519-b91b-65f719ae5cf2'),
(3, 'About', '2020-09-01 14:35:54', '2020-09-01 14:35:54', 'fedbc63c-9c1f-4009-ac80-0ef3a8dd1320'),
(4, 'FAQ', '2020-09-01 14:49:51', '2020-09-01 14:49:51', 'bbaf7dae-e9b7-4249-8438-3e7127eacc3e'),
(5, 'Contact', '2020-09-01 14:51:51', '2020-09-01 14:51:51', '5a732bb2-b780-4b03-8e60-569879bbaa22'),
(6, 'Policy', '2020-09-01 15:10:27', '2020-09-01 15:10:27', '20384be1-3e93-404f-ac44-81cac1b9069a'),
(7, 'Covid', '2020-09-01 15:14:41', '2020-09-01 15:14:41', 'd728ed2f-7f94-45a3-ba4c-04c8f011c931'),
(8, 'Globals', '2020-09-01 15:22:56', '2020-09-01 15:22:56', 'dc84b6d1-777b-4368-ae5b-41cb8bcfbe59');

-- --------------------------------------------------------

--
-- Table structure for table `fieldlayoutfields`
--

CREATE TABLE `fieldlayoutfields` (
  `id` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `tabId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fieldlayoutfields`
--

INSERT INTO `fieldlayoutfields` (`id`, `layoutId`, `tabId`, `fieldId`, `required`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(4, 10, 10, 1, 0, 1, '2020-09-01 16:09:26', '2020-09-01 16:09:26', 'efd9511e-fb59-4c89-acae-4fa720e7f072'),
(5, 10, 10, 2, 0, 2, '2020-09-01 16:09:26', '2020-09-01 16:09:26', '91975afc-4c5a-4feb-bfb8-a80a726d44c9'),
(6, 10, 10, 3, 0, 3, '2020-09-01 16:09:26', '2020-09-01 16:09:26', '95088d2d-0629-45bd-97d1-27af3ed83508'),
(7, 10, 10, 4, 0, 4, '2020-09-01 16:09:26', '2020-09-01 16:09:26', 'ba013769-5183-45a4-b3ec-b77dc1828416'),
(9, 12, 12, 39, 1, 0, '2020-09-01 16:16:19', '2020-09-01 16:16:19', '1088caf7-d179-47ef-b49e-3c13f8a4a30e'),
(10, 12, 12, 36, 1, 1, '2020-09-01 16:16:19', '2020-09-01 16:16:19', 'be31f1d8-7c90-4191-a284-b6c116ce011c'),
(11, 12, 12, 40, 1, 2, '2020-09-01 16:16:19', '2020-09-01 16:16:19', '53e9f0d7-8f48-4666-abd4-b1efca3bc889'),
(12, 12, 12, 35, 0, 3, '2020-09-01 16:16:19', '2020-09-01 16:16:19', 'dd9e2008-6a6b-41de-9838-24aa531dcd69'),
(13, 12, 12, 38, 0, 4, '2020-09-01 16:16:19', '2020-09-01 16:16:19', 'b74ff14d-de24-4664-963a-c3a409d8bf39'),
(14, 12, 12, 37, 0, 5, '2020-09-01 16:16:19', '2020-09-01 16:16:19', '88ca98ff-192e-4aef-952f-dd04ea87ec5f'),
(15, 11, 13, 6, 0, 1, '2020-09-01 16:16:42', '2020-09-01 16:16:42', 'b5ac864f-516d-44b9-9f51-4a6669cf0935'),
(16, 11, 13, 34, 0, 2, '2020-09-01 16:16:42', '2020-09-01 16:16:42', '60a60c0e-f650-49cc-87db-53bf01375bf5'),
(17, 13, 14, 41, 0, 0, '2020-09-01 16:18:38', '2020-09-01 16:18:38', 'ce8603f5-7649-46bc-8af2-5b6def12b18a'),
(18, 13, 14, 42, 0, 1, '2020-09-01 16:18:38', '2020-09-01 16:18:38', 'a92eeb2c-2e48-47da-838b-20c1cbb3435d'),
(33, 3, 17, 23, 0, 1, '2020-09-01 16:26:30', '2020-09-01 16:26:30', 'f66314a4-b042-44f3-adcc-e665032c2b9d'),
(34, 2, 18, 24, 0, 1, '2020-09-01 16:26:44', '2020-09-01 16:26:44', 'fe8cb8e2-8a9a-4a2e-9780-c51fbef027e0'),
(35, 2, 18, 25, 0, 2, '2020-09-01 16:26:44', '2020-09-01 16:26:44', '4367c46a-ae06-43c2-afa6-15f0aaff382b'),
(36, 2, 18, 29, 0, 3, '2020-09-01 16:26:44', '2020-09-01 16:26:44', '8deff5ae-562b-44c5-b33a-1a559f1cfae4'),
(51, 1, 20, 8, 0, 1, '2020-09-01 19:00:16', '2020-09-01 19:00:16', '638fed67-0861-45c3-810d-345571320098'),
(52, 1, 20, 9, 0, 2, '2020-09-01 19:00:16', '2020-09-01 19:00:16', '7fa0ab8d-19d7-4644-8370-9068636cb8fd'),
(53, 1, 20, 10, 0, 3, '2020-09-01 19:00:16', '2020-09-01 19:00:16', 'f2ebf678-1575-4693-a982-4dee554297bd'),
(54, 1, 20, 11, 0, 4, '2020-09-01 19:00:16', '2020-09-01 19:00:16', '0fcf7823-c75e-4b7f-a467-12405196646b'),
(55, 1, 20, 12, 0, 5, '2020-09-01 19:00:16', '2020-09-01 19:00:16', 'a63ddbfa-297d-4d94-9d72-846e8cdd1da2'),
(56, 1, 20, 13, 0, 6, '2020-09-01 19:00:16', '2020-09-01 19:00:16', '9dc751e0-6fc3-41b2-bf96-77c0c865df38'),
(57, 1, 20, 14, 0, 7, '2020-09-01 19:00:16', '2020-09-01 19:00:16', 'aca279bb-3e3a-48db-b479-38dd9e7c0dcb'),
(58, 1, 20, 15, 0, 8, '2020-09-01 19:00:16', '2020-09-01 19:00:16', '3e2c6270-3ad0-446b-9ed1-a4b126dda231'),
(59, 1, 20, 16, 0, 9, '2020-09-01 19:00:16', '2020-09-01 19:00:16', '3b4cfada-01e4-4303-8123-4c403fe29dfd'),
(60, 1, 20, 17, 0, 11, '2020-09-01 19:00:16', '2020-09-01 19:00:16', '562cbd88-4950-4eee-bb9c-465520043377'),
(61, 1, 20, 18, 0, 12, '2020-09-01 19:00:16', '2020-09-01 19:00:16', 'e4dc3151-7dc7-4113-bc4f-8ad272cdffa8'),
(62, 1, 20, 20, 0, 14, '2020-09-01 19:00:16', '2020-09-01 19:00:16', '902722c5-e5fa-4bf5-91e8-4f92a564f2a0'),
(63, 1, 20, 21, 0, 16, '2020-09-01 19:00:16', '2020-09-01 19:00:16', 'e83a6d68-5834-4c84-9d8b-6687eb742cbd'),
(64, 9, 21, 27, 0, 0, '2020-09-01 19:03:06', '2020-09-01 19:03:06', '850a17f4-6729-4007-9659-4b7b03d12bd0'),
(65, 9, 21, 26, 0, 1, '2020-09-01 19:03:06', '2020-09-01 19:03:06', '22f07111-7167-424f-9798-0802183b9aeb'),
(66, 9, 21, 28, 0, 2, '2020-09-01 19:03:06', '2020-09-01 19:03:06', '3526258d-e60e-4c54-b675-4665d45e6e31'),
(67, 15, 22, 30, 0, 0, '2020-09-01 19:10:03', '2020-09-01 19:10:03', 'd7cc6fc6-7369-448b-9dbe-49bf92a3c13b'),
(68, 15, 22, 33, 0, 1, '2020-09-01 19:10:03', '2020-09-01 19:10:03', '6b9be3d8-8240-4d7f-a64b-36e06b6d16bc'),
(69, 15, 22, 32, 0, 2, '2020-09-01 19:10:03', '2020-09-01 19:10:03', '01b0ea42-6328-475e-855f-9bdab75fa14a'),
(70, 15, 22, 31, 0, 3, '2020-09-01 19:10:03', '2020-09-01 19:10:03', 'c4e02dc0-dd80-48d9-a921-6c7c30a94076'),
(75, 14, 25, 7, 0, 1, '2020-09-03 00:09:26', '2020-09-03 00:09:26', 'e7c1294c-8f32-4cad-a513-9b8c8cca123d'),
(76, 14, 25, 43, 0, 2, '2020-09-03 00:09:26', '2020-09-03 00:09:26', '75cfd3fa-e112-48bc-a07f-baa32a11be0e'),
(77, 16, 26, 45, 0, 0, '2020-09-03 00:12:26', '2020-09-03 00:12:26', 'c6a2063d-ce78-47fa-81e4-e76431f6bf60'),
(78, 16, 26, 46, 0, 1, '2020-09-03 00:12:26', '2020-09-03 00:12:26', 'abd2f53a-3e91-479b-9462-65971102c8a6'),
(79, 17, 27, 47, 0, 0, '2020-09-03 00:12:26', '2020-09-03 00:12:26', '35631ede-411b-4632-b349-8c46c8898453'),
(80, 17, 27, 44, 0, 1, '2020-09-03 00:12:26', '2020-09-03 00:12:26', '2b9d59f2-e7b2-4595-ba73-373f56628cbd');

-- --------------------------------------------------------

--
-- Table structure for table `fieldlayouts`
--

CREATE TABLE `fieldlayouts` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fieldlayouts`
--

INSERT INTO `fieldlayouts` (`id`, `type`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'craft\\elements\\Entry', '2020-08-25 13:20:10', '2020-08-25 13:20:10', NULL, '845d3bee-8dc9-4978-983d-57572f5453e0'),
(2, 'craft\\elements\\Entry', '2020-08-26 14:34:34', '2020-08-26 14:34:34', NULL, '3925ee4d-be99-4524-8f69-5f2794b7a05a'),
(3, 'craft\\elements\\Entry', '2020-08-27 13:11:27', '2020-08-27 13:11:27', NULL, 'd2107394-6115-4eeb-80ff-596bf99c1dec'),
(4, 'craft\\elements\\Asset', '2020-09-01 14:40:25', '2020-09-01 14:40:25', NULL, 'a340e503-e7bf-4ec2-8a7d-e161ac6dfe0e'),
(5, 'craft\\elements\\Asset', '2020-09-01 14:41:30', '2020-09-01 14:41:30', NULL, 'cecee39f-2155-4b41-af3c-3d11fca16edf'),
(6, 'craft\\elements\\Asset', '2020-09-01 14:41:58', '2020-09-01 14:41:58', NULL, 'a07a50a1-60dc-4151-828d-f6b2a9ef7f9b'),
(7, 'craft\\elements\\Asset', '2020-09-01 14:42:39', '2020-09-01 14:42:39', NULL, '9f2af6e5-1914-449c-9ff5-c8bafb549534'),
(8, 'craft\\elements\\Asset', '2020-09-01 15:14:18', '2020-09-01 15:14:18', NULL, 'b3abcaa5-0ce5-46a4-83c7-3100f6f048fb'),
(9, 'craft\\elements\\MatrixBlock', '2020-09-01 15:21:34', '2020-09-01 15:21:34', NULL, '40dfecf4-ec01-414b-9bc9-33b6b105f381'),
(10, 'craft\\elements\\Entry', '2020-09-01 16:09:26', '2020-09-01 16:09:26', NULL, '23ac780a-5470-4baf-bf3f-94d29b85bddb'),
(11, 'craft\\elements\\Entry', '2020-09-01 16:12:46', '2020-09-01 16:12:46', NULL, 'bc160561-f09e-488c-b9e8-116c3f969673'),
(12, 'craft\\elements\\MatrixBlock', '2020-09-01 16:16:19', '2020-09-01 16:16:19', NULL, '844c2932-6738-4b65-bd19-19d26d8c12d2'),
(13, 'craft\\elements\\MatrixBlock', '2020-09-01 16:18:38', '2020-09-01 16:18:38', NULL, '141a4b76-7277-4162-87e7-403db8715cf0'),
(14, 'craft\\elements\\Entry', '2020-09-01 16:19:15', '2020-09-01 16:19:15', NULL, '8ed13866-a88a-43d9-8d26-ab38642d8d0b'),
(15, 'craft\\elements\\GlobalSet', '2020-09-01 19:10:03', '2020-09-01 19:10:03', NULL, '4e002902-59ed-4470-be61-917fe2bb0c36'),
(16, 'craft\\elements\\MatrixBlock', '2020-09-03 00:08:20', '2020-09-03 00:08:20', NULL, '91ac2d17-5c73-4f54-a34b-bf21c3b31f56'),
(17, 'verbb\\supertable\\elements\\SuperTableBlockElement', '2020-09-03 00:08:20', '2020-09-03 00:08:20', NULL, '03de152d-0158-460d-82ad-1211eed15411');

-- --------------------------------------------------------

--
-- Table structure for table `fieldlayouttabs`
--

CREATE TABLE `fieldlayouttabs` (
  `id` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `elements` text,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fieldlayouttabs`
--

INSERT INTO `fieldlayouttabs` (`id`, `layoutId`, `name`, `elements`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(4, 4, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\TitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100}]', 1, '2020-09-01 14:40:25', '2020-09-01 14:40:25', 'a1072b7b-8c6d-4b5e-a538-7d51a085cca5'),
(5, 5, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\TitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100}]', 1, '2020-09-01 14:41:30', '2020-09-01 14:41:30', '9643155e-6eec-4bc2-a1e0-d4fc687e41a6'),
(6, 6, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\TitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100}]', 1, '2020-09-01 14:41:58', '2020-09-01 14:41:58', 'c275eeab-4f52-4a6b-ac28-61e11b2de0d9'),
(7, 7, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\TitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100}]', 1, '2020-09-01 14:42:39', '2020-09-01 14:42:39', 'c2ceb9e4-a7e9-429c-abe5-d0f1962e8e1e'),
(8, 8, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\TitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100}]', 1, '2020-09-01 15:14:18', '2020-09-01 15:14:18', 'f575783c-6f52-4c1d-9b69-63a2b95ef6a6'),
(10, 10, 'Home', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"08c4e1f2-f050-4136-9fae-966ecf5d9bc4\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"3801a791-2d73-4675-970d-36a7367e5844\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"72358550-6448-4bdd-9bdb-0bbed08109c8\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"4af71e1d-2a59-47b9-9552-29c24b9877d9\"}]', 1, '2020-09-01 16:09:26', '2020-09-01 16:09:26', '6afb1b07-4555-40ac-8d05-7624556aa03c'),
(12, 12, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"fieldUid\":\"e4236b79-8789-47a6-9e73-d5f4a2195e88\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"fieldUid\":\"44926f00-4033-4eb3-b8a4-5b41d075afdd\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"fieldUid\":\"fce9cf63-9736-43e5-b83a-f1c84f206a33\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"2265add3-f43b-44af-af2f-3db1df65a4ee\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"a27920c8-693f-47e5-ba1f-bcd2d6c45f4c\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"5b9cf9c9-1f1e-4890-bf0b-0e701545e620\"}]', 1, '2020-09-01 16:16:19', '2020-09-01 16:16:19', 'd03547c2-fcdb-4372-aa2c-7b2968a3b480'),
(13, 11, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"ec8da5eb-37d3-4af2-97e9-b34c888e0d16\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"405e9399-5a98-4bbe-b0a0-95343c280b3d\"}]', 1, '2020-09-01 16:16:42', '2020-09-01 16:16:42', '8e3e217d-af2a-47ed-b380-94d2ea3d4a4b'),
(14, 13, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"81db9add-1ad6-416e-a57f-950d6abedb87\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"91450004-2ff4-4d87-852d-fd3e1cf152fc\"}]', 1, '2020-09-01 16:18:38', '2020-09-01 16:18:38', '3c04cea0-3631-4451-a42c-3d3aee3ddf5b'),
(17, 3, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"f24f95af-afae-4ecf-95d0-62fe87b4f56a\"}]', 1, '2020-09-01 16:26:30', '2020-09-01 16:26:30', '530e4942-4c15-42cc-ae11-85e70cf2559b'),
(18, 2, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"1118ceb9-2833-4bd6-b646-c599f6a7685d\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"0fc9f5ae-aaad-4887-95e9-e411421a5beb\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"912b5e71-de7b-47a1-ba51-e4c04653f72b\"}]', 1, '2020-09-01 16:26:44', '2020-09-01 16:26:44', '485c8df5-ee35-40d6-8498-0caac5991cf8'),
(20, 1, 'Contact', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"6cb54dd1-a7cc-43cb-a597-ecd1ae21ccc4\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"5b4bd39d-0a73-47ca-8e2c-1f3e540e1bfc\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"c022db66-4bd4-48d4-ad7a-f55ffa388856\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"7a12b877-11a6-40ad-815f-bcb2d64cc6ba\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"f19a4bcc-3f57-4196-802c-d3b22fc012bc\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"c6a11cb7-6e80-47e9-a318-0a4dc2303c64\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"b9800d6d-96bf-4108-a1a5-23a3ec0c8a72\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"8431433b-c239-4eb3-a6d7-83e5afa49641\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"dfd59d04-80d5-473b-8d55-f1f4eb4adfc3\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\Heading\",\"heading\":\"Covid\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"eb88b426-676d-4298-9392-398a335da778\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"b2b0ec89-eac4-47b0-95cd-cad671cf05d0\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\Heading\",\"heading\":\"Contact Form\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"b9052a0e-92dc-49db-aca1-5a4738de74c2\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\Heading\",\"heading\":\"Accesibility\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"96f68517-1b14-4a85-8670-a763bd4a3da4\"}]', 1, '2020-09-01 19:00:16', '2020-09-01 19:00:16', '4e631d77-f537-49d0-9df1-c7c2420504be'),
(21, 9, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"7c112a51-be84-4da5-a2d8-b31e643054e4\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"55ff5573-459b-4b61-a211-3226dd0a25a9\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"a0d79509-418a-4458-98dd-98c8fafaffa9\"}]', 1, '2020-09-01 19:03:06', '2020-09-01 19:03:06', '83c1b0f0-11b9-4546-bc3a-89c707b83401'),
(22, 15, 'Globals', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"768270aa-bec7-4235-a7d0-589707ca497e\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"6d77f339-131b-40ea-a446-d163ee0d4945\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"c95fe0cd-27df-4250-984c-a1e06f474e61\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"abb156ae-844b-4f1a-a1b4-63ce080a0009\"}]', 1, '2020-09-01 19:10:03', '2020-09-01 19:10:03', 'f9f93c47-d0f8-4532-8867-86af60800752'),
(25, 14, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"e7b3b7f1-8c18-4496-999a-dfe188acd0a3\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"d6fc4c91-3544-41f1-8d98-cbeb84362244\"}]', 1, '2020-09-03 00:09:26', '2020-09-03 00:09:26', 'aa322c3b-f207-4c83-9036-cf431bf8c07a'),
(26, 16, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"15922bef-f693-495e-aa09-939f366df505\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"db579482-b972-4911-b90d-f9a8e61368ae\"}]', 1, '2020-09-03 00:12:26', '2020-09-03 00:12:26', 'c3d90636-bee0-47b2-a27e-0d25cbd9804f'),
(27, 17, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"9054658e-f5b7-45cd-8ec7-ddaad6a16dd0\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"616e1265-a1aa-44c0-a6f0-c7c346270533\"}]', 1, '2020-09-03 00:12:26', '2020-09-03 00:12:26', '33b7651f-f113-4a74-8108-050d728e5abf');

-- --------------------------------------------------------

--
-- Table structure for table `fields`
--

CREATE TABLE `fields` (
  `id` int(11) NOT NULL,
  `groupId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(64) NOT NULL,
  `context` varchar(255) NOT NULL DEFAULT 'global',
  `instructions` text,
  `searchable` tinyint(1) NOT NULL DEFAULT '1',
  `translationMethod` varchar(255) NOT NULL DEFAULT 'none',
  `translationKeyFormat` text,
  `type` varchar(255) NOT NULL,
  `settings` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fields`
--

INSERT INTO `fields` (`id`, `groupId`, `name`, `handle`, `context`, `instructions`, `searchable`, `translationMethod`, `translationKeyFormat`, `type`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 2, 'Animated Header', 'homeAnimatedHeader', 'global', '', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"\",\"placeholder\":\"\",\"uiMode\":\"normal\"}', '2020-09-01 14:30:11', '2020-09-01 14:30:11', '08c4e1f2-f050-4136-9fae-966ecf5d9bc4'),
(2, 2, 'Opening Soon', 'homeOpeningSoon', 'global', '', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"1\",\"placeholder\":\"\",\"uiMode\":\"normal\"}', '2020-09-01 14:33:44', '2020-09-01 16:57:46', '3801a791-2d73-4675-970d-36a7367e5844'),
(3, 2, 'Testimonials Header', 'testimonialsHeader', 'global', '', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"\",\"placeholder\":\"\",\"uiMode\":\"normal\"}', '2020-09-01 14:34:04', '2020-09-01 14:34:04', '72358550-6448-4bdd-9bdb-0bbed08109c8'),
(4, 2, 'Testimonials', 'testimonials', 'global', 'Min rows: 4', 0, 'none', NULL, 'craft\\fields\\Table', '{\"addRowLabel\":\"Add a testimonial\",\"columnType\":\"text\",\"columns\":{\"col1\":{\"heading\":\"Testimonial\",\"handle\":\"testimonial\",\"width\":\"\",\"type\":\"multiline\"},\"col2\":{\"heading\":\"Author\",\"handle\":\"author\",\"width\":\"\",\"type\":\"singleline\"}},\"defaults\":[{\"col1\":\"\",\"col2\":\"\"}],\"maxRows\":\"\",\"minRows\":\"4\"}', '2020-09-01 14:35:18', '2020-09-01 14:35:18', '4af71e1d-2a59-47b9-9552-29c24b9877d9'),
(5, 1, 'Main Header', 'mainHeader', 'global', '', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"\",\"placeholder\":\"\",\"uiMode\":\"normal\"}', '2020-09-01 14:36:24', '2020-09-01 14:36:24', 'adc52f46-1c85-4b8c-843e-c7107cbe1ced'),
(6, 3, 'About Description', 'aboutDescription', 'global', '', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"1\",\"placeholder\":\"\",\"uiMode\":\"enlarged\"}', '2020-09-01 14:37:21', '2020-09-01 17:13:14', 'ec8da5eb-37d3-4af2-97e9-b34c888e0d16'),
(7, 4, 'FAQs', 'faqs', 'global', '', 0, 'site', NULL, 'craft\\fields\\Matrix', '{\"contentTable\":\"{{%matrixcontent_faqs}}\",\"maxBlocks\":\"\",\"minBlocks\":\"1\",\"propagationMethod\":\"all\"}', '2020-09-01 14:50:39', '2020-09-01 16:18:38', 'e7b3b7f1-8c18-4496-999a-dfe188acd0a3'),
(8, 5, 'Address', 'address', 'global', '', 0, 'none', NULL, 'craft\\fields\\Table', '{\"addRowLabel\":\"Add a row\",\"columnType\":\"text\",\"columns\":{\"col1\":{\"heading\":\"Address\",\"handle\":\"address\",\"width\":\"\",\"type\":\"multiline\"},\"col2\":{\"heading\":\"Google Map Link\",\"handle\":\"googleMapLink\",\"width\":\"\",\"type\":\"url\"}},\"defaults\":[{\"col1\":\"\",\"col2\":\"\"}],\"maxRows\":\"1\",\"minRows\":\"1\"}', '2020-09-01 14:53:20', '2020-09-01 14:53:20', '6cb54dd1-a7cc-43cb-a597-ecd1ae21ccc4'),
(9, 5, 'Address Description', 'addressDescription', 'global', '', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"1\",\"placeholder\":\"\",\"uiMode\":\"normal\"}', '2020-09-01 14:53:48', '2020-09-01 18:48:00', '5b4bd39d-0a73-47ca-8e2c-1f3e540e1bfc'),
(10, 5, 'Hopscotch Map', 'hopscotchMap', 'global', '', 0, 'site', NULL, 'craft\\fields\\Assets', '{\"allowSelfRelations\":false,\"allowedKinds\":null,\"defaultUploadLocationSource\":\"volume:22d4c992-dba7-449e-b36d-ac36420f47e5\",\"defaultUploadLocationSubpath\":\"\",\"limit\":\"1\",\"localizeRelations\":false,\"restrictFiles\":\"\",\"selectionLabel\":\"\",\"showSiteMenu\":true,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"singleUploadLocationSource\":\"volume:8d814e64-e1b1-46c3-a3db-506877a68155\",\"singleUploadLocationSubpath\":\"\",\"source\":null,\"sources\":\"*\",\"targetSiteId\":null,\"useSingleFolder\":true,\"validateRelatedElements\":false,\"viewMode\":\"large\"}', '2020-09-01 14:54:38', '2020-09-01 14:54:38', 'c022db66-4bd4-48d4-ad7a-f55ffa388856'),
(11, 5, 'Parking', 'parking', 'global', 'Parking instructions', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"1\",\"placeholder\":\"\",\"uiMode\":\"normal\"}', '2020-09-01 14:55:29', '2020-09-01 18:42:42', '7a12b877-11a6-40ad-815f-bcb2d64cc6ba'),
(12, 5, 'Stay a While', 'stayAWhile', 'global', '', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"1\",\"placeholder\":\"\",\"uiMode\":\"normal\"}', '2020-09-01 14:55:58', '2020-09-01 18:43:09', 'f19a4bcc-3f57-4196-802c-d3b22fc012bc'),
(13, 5, 'More Info', 'moreInfo', 'global', '', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"1\",\"placeholder\":\"\",\"uiMode\":\"normal\"}', '2020-09-01 14:56:16', '2020-09-01 18:42:59', 'c6a11cb7-6e80-47e9-a318-0a4dc2303c64'),
(14, 5, 'Public Transportation', 'publicTransportation', 'global', '', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"1\",\"placeholder\":\"\",\"uiMode\":\"normal\"}', '2020-09-01 14:56:46', '2020-09-01 18:43:17', 'b9800d6d-96bf-4108-a1a5-23a3ec0c8a72'),
(15, 5, 'Hours', 'hours', 'global', '', 0, 'none', NULL, 'craft\\fields\\Table', '{\"addRowLabel\":\"Add an Hour\",\"columnType\":\"text\",\"columns\":{\"col1\":{\"heading\":\"Day\",\"handle\":\"day\",\"width\":\"\",\"type\":\"singleline\"},\"col2\":{\"heading\":\"Hours\",\"handle\":\"hours\",\"width\":\"\",\"type\":\"singleline\"},\"col3\":{\"heading\":\"Last Ticket Time\",\"handle\":\"lastTicketTime\",\"width\":\"\",\"type\":\"singleline\"}},\"defaults\":[{\"col1\":\"\",\"col2\":\"\",\"col3\":\"\"}],\"maxRows\":\"\",\"minRows\":\"1\"}', '2020-09-01 14:58:00', '2020-09-01 14:58:00', '8431433b-c239-4eb3-a6d7-83e5afa49641'),
(16, 5, 'Hours Description', 'hoursDescription', 'global', 'Paragraph inside \'Hours\' box', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"1\",\"placeholder\":\"\",\"uiMode\":\"normal\"}', '2020-09-01 14:58:48', '2020-09-01 18:43:34', 'dfd59d04-80d5-473b-8d55-f1f4eb4adfc3'),
(17, 5, 'Covid Response Header', 'covidResponseHeader', 'global', '', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"\",\"placeholder\":\"\",\"uiMode\":\"normal\"}', '2020-09-01 15:01:58', '2020-09-01 15:01:58', 'eb88b426-676d-4298-9392-398a335da778'),
(18, 5, 'Covid Response', 'covidResponse', 'global', '', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"1\",\"placeholder\":\"\",\"uiMode\":\"normal\"}', '2020-09-01 15:02:25', '2020-09-01 18:43:51', 'b2b0ec89-eac4-47b0-95cd-cad671cf05d0'),
(19, 5, 'Contact Form Header', 'contactFormHeader', 'global', '', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"\",\"placeholder\":\"\",\"uiMode\":\"normal\"}', '2020-09-01 15:03:40', '2020-09-01 15:03:40', '618e937d-b89b-49f9-89eb-3abc0c44d03f'),
(20, 5, 'Contact Emails', 'contactEmails', 'global', '', 0, 'none', NULL, 'craft\\fields\\Table', '{\"addRowLabel\":\"Add a Contact\",\"columnType\":\"text\",\"columns\":{\"col1\":{\"heading\":\"Contact\",\"handle\":\"contact\",\"width\":\"\",\"type\":\"multiline\"},\"col2\":{\"heading\":\"Contact Email\",\"handle\":\"contactEmail\",\"width\":\"\",\"type\":\"email\"}},\"defaults\":[{\"col1\":\"\",\"col2\":\"\"}],\"maxRows\":\"4\",\"minRows\":\"1\"}', '2020-09-01 15:04:28', '2020-09-01 15:23:32', 'b9052a0e-92dc-49db-aca1-5a4738de74c2'),
(21, 5, 'Accesibility', 'accesibility', 'global', '', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"1\",\"placeholder\":\"\",\"uiMode\":\"normal\"}', '2020-09-01 15:06:44', '2020-09-01 18:44:09', '96f68517-1b14-4a85-8670-a763bd4a3da4'),
(22, 5, 'Animated Text', 'contactAnimatedText', 'global', '', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"\",\"placeholder\":\"\",\"uiMode\":\"normal\"}', '2020-09-01 15:10:00', '2020-09-01 15:10:00', 'fa86d8ac-5703-4fbe-84ee-2d3eb30e9da2'),
(23, 6, 'Policy Content', 'policyContent', 'global', '', 0, 'none', NULL, 'craft\\redactor\\Field', '{\"availableTransforms\":\"*\",\"availableVolumes\":\"\",\"cleanupHtml\":true,\"columnType\":\"text\",\"configSelectionMode\":\"choose\",\"defaultTransform\":\"\",\"manualConfig\":\"\",\"purifierConfig\":\"\",\"purifyHtml\":\"1\",\"redactorConfig\":\"\",\"removeEmptyTags\":\"1\",\"removeInlineStyles\":\"1\",\"removeNbsp\":\"1\",\"showHtmlButtonForNonAdmins\":\"\",\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"uiMode\":\"enlarged\"}', '2020-09-01 15:10:47', '2020-09-01 15:10:47', 'f24f95af-afae-4ecf-95d0-62fe87b4f56a'),
(24, 7, 'Covid Intro Pargraph', 'covidIntroPargraph', 'global', '', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"1\",\"placeholder\":\"\",\"uiMode\":\"normal\"}', '2020-09-01 15:15:04', '2020-09-01 19:02:31', '1118ceb9-2833-4bd6-b646-c599f6a7685d'),
(25, 7, 'Covid Guidelines', 'covidGuidelines', 'global', '', 0, 'site', NULL, 'craft\\fields\\Matrix', '{\"contentTable\":\"{{%matrixcontent_covidguidelines}}\",\"maxBlocks\":\"\",\"minBlocks\":\"\",\"propagationMethod\":\"all\"}', '2020-09-01 15:21:34', '2020-09-01 15:21:34', '0fc9f5ae-aaad-4887-95e9-e411421a5beb'),
(26, NULL, 'Header', 'guidelineHeader', 'matrixBlockType:cf62faa0-8991-4720-af52-1d31c7881a49', '', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"\",\"placeholder\":\"\",\"uiMode\":\"normal\"}', '2020-09-01 15:21:34', '2020-09-01 15:21:34', '55ff5573-459b-4b61-a211-3226dd0a25a9'),
(27, NULL, 'Number Grpahic', 'numberGrpahic', 'matrixBlockType:cf62faa0-8991-4720-af52-1d31c7881a49', 'Graphic size: 150 x 150', 0, 'site', NULL, 'craft\\fields\\Assets', '{\"allowSelfRelations\":false,\"allowedKinds\":null,\"defaultUploadLocationSource\":\"volume:28998fcf-08b5-42e2-99bf-32b99d7e71df\",\"defaultUploadLocationSubpath\":\"\",\"limit\":\"1\",\"localizeRelations\":false,\"restrictFiles\":\"\",\"selectionLabel\":\"\",\"showSiteMenu\":true,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"singleUploadLocationSource\":\"volume:22d4c992-dba7-449e-b36d-ac36420f47e5\",\"singleUploadLocationSubpath\":\"\",\"source\":null,\"sources\":[\"volume:97d6d9f3-1a93-443a-bfa5-69cdc7328c00\"],\"targetSiteId\":null,\"useSingleFolder\":false,\"validateRelatedElements\":false,\"viewMode\":\"list\"}', '2020-09-01 15:21:34', '2020-09-01 15:21:34', '7c112a51-be84-4da5-a2d8-b31e643054e4'),
(28, NULL, 'Guideline Content', 'guidelineContent', 'matrixBlockType:cf62faa0-8991-4720-af52-1d31c7881a49', '', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"2\",\"multiline\":\"1\",\"placeholder\":\"\",\"uiMode\":\"normal\"}', '2020-09-01 15:21:34', '2020-09-01 19:03:06', 'a0d79509-418a-4458-98dd-98c8fafaffa9'),
(29, 7, 'Covid Bottom Paragraph', 'covidBottomParagraph', 'global', '', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"1\",\"placeholder\":\"\",\"uiMode\":\"normal\"}', '2020-09-01 15:22:16', '2020-09-01 19:02:03', '912b5e71-de7b-47a1-ba51-e4c04653f72b'),
(30, 8, 'Hopscotch Email', 'hopscotchEmail', 'global', '', 0, 'none', NULL, 'craft\\fields\\Email', '{\"placeholder\":\"\"}', '2020-09-01 15:23:21', '2020-09-01 15:23:21', '768270aa-bec7-4235-a7d0-589707ca497e'),
(31, 8, 'Instgram', 'instgram', 'global', '', 0, 'none', NULL, 'craft\\fields\\Url', '{\"maxLength\":\"255\",\"placeholder\":\"\"}', '2020-09-01 15:25:11', '2020-09-01 15:25:11', 'abb156ae-844b-4f1a-a1b4-63ce080a0009'),
(32, 8, 'Facebook', 'facebook', 'global', '', 0, 'none', NULL, 'craft\\fields\\Url', '{\"maxLength\":\"255\",\"placeholder\":\"\"}', '2020-09-01 15:25:25', '2020-09-01 15:25:25', 'c95fe0cd-27df-4250-984c-a1e06f474e61'),
(33, 8, 'Get Tickets Link', 'getTicketsLink', 'global', '', 0, 'none', NULL, 'craft\\fields\\Url', '{\"maxLength\":\"255\",\"placeholder\":\"\"}', '2020-09-01 15:25:39', '2020-09-01 15:25:39', '6d77f339-131b-40ea-a446-d163ee0d4945'),
(34, 3, 'Exhibitions', 'exhibitions', 'global', '', 0, 'site', NULL, 'craft\\fields\\Matrix', '{\"contentTable\":\"{{%matrixcontent_exhibitions}}\",\"maxBlocks\":\"\",\"minBlocks\":\"\",\"propagationMethod\":\"all\"}', '2020-09-01 16:16:18', '2020-09-01 16:16:18', '405e9399-5a98-4bbe-b0a0-95343c280b3d'),
(35, NULL, 'Author ', 'exhibitAuthor', 'matrixBlockType:b92a23c9-7a94-431d-a6fe-016a729cd8af', '', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"\",\"placeholder\":\"\",\"uiMode\":\"normal\"}', '2020-09-01 16:16:19', '2020-09-01 16:16:19', '2265add3-f43b-44af-af2f-3db1df65a4ee'),
(36, NULL, 'Status', 'exhibitStatus', 'matrixBlockType:b92a23c9-7a94-431d-a6fe-016a729cd8af', 'Default set to \'current\'', 0, 'none', NULL, 'craft\\fields\\Lightswitch', '{\"default\":true,\"offLabel\":\"Past\",\"onLabel\":\"Current\"}', '2020-09-01 16:16:19', '2020-09-01 16:16:19', '44926f00-4033-4eb3-b8a4-5b41d075afdd'),
(37, NULL, 'Author Location', 'authorLocation', 'matrixBlockType:b92a23c9-7a94-431d-a6fe-016a729cd8af', '', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"\",\"placeholder\":\"\",\"uiMode\":\"normal\"}', '2020-09-01 16:16:19', '2020-09-01 16:16:19', '5b9cf9c9-1f1e-4890-bf0b-0e701545e620'),
(38, NULL, 'Author Link', 'authorLink', 'matrixBlockType:b92a23c9-7a94-431d-a6fe-016a729cd8af', '', 0, 'none', NULL, 'craft\\fields\\Url', '{\"maxLength\":\"255\",\"placeholder\":\"\"}', '2020-09-01 16:16:19', '2020-09-01 16:16:19', 'a27920c8-693f-47e5-ba1f-bcd2d6c45f4c'),
(39, NULL, 'Picture', 'picture', 'matrixBlockType:b92a23c9-7a94-431d-a6fe-016a729cd8af', 'Image size: 800 x 800', 0, 'site', NULL, 'craft\\fields\\Assets', '{\"allowSelfRelations\":false,\"allowedKinds\":[\"image\"],\"defaultUploadLocationSource\":\"volume:22d4c992-dba7-449e-b36d-ac36420f47e5\",\"defaultUploadLocationSubpath\":\"\",\"limit\":\"1\",\"localizeRelations\":false,\"restrictFiles\":\"1\",\"selectionLabel\":\"\",\"showSiteMenu\":true,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"singleUploadLocationSource\":\"volume:28998fcf-08b5-42e2-99bf-32b99d7e71df\",\"singleUploadLocationSubpath\":\"\",\"source\":null,\"sources\":\"*\",\"targetSiteId\":null,\"useSingleFolder\":true,\"validateRelatedElements\":false,\"viewMode\":\"large\"}', '2020-09-01 16:16:19', '2020-09-01 16:16:19', 'e4236b79-8789-47a6-9e73-d5f4a2195e88'),
(40, NULL, 'Name', 'exhibitName', 'matrixBlockType:b92a23c9-7a94-431d-a6fe-016a729cd8af', '', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"\",\"placeholder\":\"\",\"uiMode\":\"normal\"}', '2020-09-01 16:16:19', '2020-09-01 16:16:19', 'fce9cf63-9736-43e5-b83a-f1c84f206a33'),
(41, NULL, 'Section Title', 'faqSectionTitle', 'matrixBlockType:4c8ef855-dc53-42a1-a6d1-e987bf0c676e', '', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"\",\"placeholder\":\"\",\"uiMode\":\"normal\"}', '2020-09-01 16:18:38', '2020-09-01 16:18:38', '81db9add-1ad6-416e-a57f-950d6abedb87'),
(42, NULL, 'FAQ', 'faq', 'matrixBlockType:4c8ef855-dc53-42a1-a6d1-e987bf0c676e', '', 0, 'none', NULL, 'craft\\fields\\Table', '{\"addRowLabel\":\"Add a FAQ\",\"columnType\":\"text\",\"columns\":{\"col1\":{\"heading\":\"Question\",\"handle\":\"question\",\"width\":\"\",\"type\":\"singleline\"},\"col2\":{\"heading\":\"Answer\",\"handle\":\"answer\",\"width\":\"\",\"type\":\"multiline\"}},\"defaults\":[{\"col1\":\"\",\"col2\":\"\"}],\"maxRows\":\"\",\"minRows\":\"1\"}', '2020-09-01 16:18:38', '2020-09-01 16:18:38', '91450004-2ff4-4d87-852d-fd3e1cf152fc'),
(43, 4, 'FAQ 2', 'faq2', 'global', '', 0, 'site', NULL, 'verbb\\supertable\\fields\\SuperTableField', '{\"columns\":{\"9054658e-f5b7-45cd-8ec7-ddaad6a16dd0\":{\"width\":\"\"},\"616e1265-a1aa-44c0-a6f0-c7c346270533\":{\"width\":\"\"}},\"contentTable\":\"{{%stc_faq2}}\",\"fieldLayout\":\"row\",\"maxRows\":\"\",\"minRows\":\"\",\"placeholderKey\":null,\"propagationMethod\":\"all\",\"selectionLabel\":\"\",\"staticField\":\"\"}', '2020-09-03 00:08:19', '2020-09-03 00:12:26', 'd6fc4c91-3544-41f1-8d98-cbeb84362244'),
(44, NULL, 'FAQ questions', 'faqQuestions', 'superTableBlockType:82572f10-f1b7-4f90-94f3-f49d3eb37d50', '', 1, 'site', NULL, 'craft\\fields\\Matrix', '{\"contentTable\":\"{{%matrixcontent_faqquestions}}\",\"maxBlocks\":\"\",\"minBlocks\":\"\",\"propagationMethod\":\"all\"}', '2020-09-03 00:08:20', '2020-09-03 00:08:20', '616e1265-a1aa-44c0-a6f0-c7c346270533'),
(45, NULL, 'FAQ question', 'faqQuestion', 'matrixBlockType:780faf71-6de6-440f-98a8-ff7328a12759', '', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"\",\"placeholder\":\"\",\"uiMode\":\"normal\"}', '2020-09-03 00:08:20', '2020-09-03 00:08:20', '15922bef-f693-495e-aa09-939f366df505'),
(46, NULL, 'FAQ answer', 'faqAnswer', 'matrixBlockType:780faf71-6de6-440f-98a8-ff7328a12759', '', 0, 'none', NULL, 'craft\\redactor\\Field', '{\"availableTransforms\":\"*\",\"availableVolumes\":\"\",\"cleanupHtml\":true,\"columnType\":\"text\",\"configSelectionMode\":\"manual\",\"defaultTransform\":\"\",\"manualConfig\":\"{\\r\\n  \\\"buttons\\\": [\\\"link\\\"]\\r\\n}\",\"purifierConfig\":\"\",\"purifyHtml\":\"1\",\"redactorConfig\":\"Simple.json\",\"removeEmptyTags\":\"1\",\"removeInlineStyles\":\"1\",\"removeNbsp\":\"1\",\"showHtmlButtonForNonAdmins\":\"\",\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"uiMode\":\"enlarged\"}', '2020-09-03 00:08:20', '2020-09-03 00:12:26', 'db579482-b972-4911-b90d-f9a8e61368ae'),
(47, NULL, 'FAQ section', 'faqSection', 'superTableBlockType:82572f10-f1b7-4f90-94f3-f49d3eb37d50', '', 1, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"\",\"placeholder\":\"\",\"uiMode\":\"normal\"}', '2020-09-03 00:08:20', '2020-09-03 00:08:20', '9054658e-f5b7-45cd-8ec7-ddaad6a16dd0');

-- --------------------------------------------------------

--
-- Table structure for table `globalsets`
--

CREATE TABLE `globalsets` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `globalsets`
--

INSERT INTO `globalsets` (`id`, `name`, `handle`, `fieldLayoutId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(150, 'Hopscotch', 'hopscotch', 15, '2020-09-01 19:10:03', '2020-09-01 19:10:03', '5c9f2bb8-b152-40a4-bc60-ac3ab0c09314');

-- --------------------------------------------------------

--
-- Table structure for table `gqlschemas`
--

CREATE TABLE `gqlschemas` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `scope` text,
  `isPublic` tinyint(1) NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gqltokens`
--

CREATE TABLE `gqltokens` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `accessToken` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `expiryDate` datetime DEFAULT NULL,
  `lastUsed` datetime DEFAULT NULL,
  `schemaId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gqltokens`
--

INSERT INTO `gqltokens` (`id`, `name`, `accessToken`, `enabled`, `expiryDate`, `lastUsed`, `schemaId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Public Token', '__PUBLIC__', 0, NULL, NULL, NULL, '2020-08-20 17:42:06', '2020-08-20 17:42:06', '95841691-0efb-4366-b2aa-d0858822ab5f');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `version` varchar(50) NOT NULL,
  `schemaVersion` varchar(15) NOT NULL,
  `maintenance` tinyint(1) NOT NULL DEFAULT '0',
  `configVersion` char(12) NOT NULL DEFAULT '000000000000',
  `fieldVersion` char(12) NOT NULL DEFAULT '000000000000',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `version`, `schemaVersion`, `maintenance`, `configVersion`, `fieldVersion`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, '3.5.8', '3.5.13', 0, 'yywxvbompkil', 'iiiykpdtuxqi', '2020-07-27 13:15:28', '2020-09-03 13:34:49', '57f9626e-6903-4d65-a4d3-f2991a121b38');

-- --------------------------------------------------------

--
-- Table structure for table `matrixblocks`
--

CREATE TABLE `matrixblocks` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `typeId` int(11) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `deletedWithOwner` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `matrixblocks`
--

INSERT INTO `matrixblocks` (`id`, `ownerId`, `fieldId`, `typeId`, `sortOrder`, `deletedWithOwner`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(45, 4, 34, 2, 1, NULL, '2020-09-01 17:21:48', '2020-09-01 17:21:48', '1db33c34-5ddf-4a58-833b-9e8d98b47fe6'),
(46, 4, 34, 2, 2, NULL, '2020-09-01 17:21:48', '2020-09-01 17:21:48', '045b4bb4-e9ff-46de-afb9-604fe1217034'),
(47, 4, 34, 2, 3, NULL, '2020-09-01 17:21:48', '2020-09-01 17:21:48', '03ed5091-91a1-4a74-a989-af1697389eac'),
(48, 4, 34, 2, 4, NULL, '2020-09-01 17:21:48', '2020-09-01 17:21:48', 'eb411e91-13ef-4271-a558-2b193c620a81'),
(49, 4, 34, 2, 5, NULL, '2020-09-01 17:21:48', '2020-09-01 17:21:48', '05583965-1c13-4a7f-9ebe-02eda16a2ffd'),
(50, 4, 34, 2, 6, NULL, '2020-09-01 17:21:48', '2020-09-01 17:21:48', '3b305346-cdf2-4c5c-afeb-9da693818c79'),
(51, 4, 34, 2, 7, NULL, '2020-09-01 17:21:48', '2020-09-01 17:21:48', '67709932-8d8f-4d49-b89f-75de686da133'),
(52, 4, 34, 2, 8, NULL, '2020-09-01 17:21:48', '2020-09-01 17:21:48', '4973b93e-753c-421e-847d-e1cb65a211ea'),
(53, 4, 34, 2, 9, NULL, '2020-09-01 17:21:48', '2020-09-01 17:21:48', '832b6920-506f-4c9f-84d5-b0baa300422f'),
(54, 4, 34, 2, 10, NULL, '2020-09-01 17:21:48', '2020-09-01 17:21:48', '79476b95-82a6-45fa-97d4-65e2ba27b416'),
(56, 55, 34, 2, 1, NULL, '2020-09-01 17:21:48', '2020-09-01 17:21:48', '22996fb3-01ed-42e9-919b-cc2fbb552a26'),
(57, 55, 34, 2, 2, NULL, '2020-09-01 17:21:48', '2020-09-01 17:21:48', '20e83b42-db29-4e80-a3c5-78b8067a29e2'),
(58, 55, 34, 2, 3, NULL, '2020-09-01 17:21:48', '2020-09-01 17:21:48', '8377fc47-af52-4fe9-917b-e4a7bc7633da'),
(59, 55, 34, 2, 4, NULL, '2020-09-01 17:21:48', '2020-09-01 17:21:48', '4245fddd-d4ef-4c67-87cb-fd6334f02fca'),
(60, 55, 34, 2, 5, NULL, '2020-09-01 17:21:48', '2020-09-01 17:21:48', '859e3a26-1484-476e-b876-6a9466aebdb4'),
(61, 55, 34, 2, 6, NULL, '2020-09-01 17:21:48', '2020-09-01 17:21:48', 'f5022ec4-9649-4f47-9581-4143ea046939'),
(62, 55, 34, 2, 7, NULL, '2020-09-01 17:21:48', '2020-09-01 17:21:48', 'f3f17f15-afa2-4535-b326-6f138e4aa85f'),
(63, 55, 34, 2, 8, NULL, '2020-09-01 17:21:48', '2020-09-01 17:21:48', '99aa8ec0-e2a0-4c3f-b75e-5d8d7f66a083'),
(64, 55, 34, 2, 9, NULL, '2020-09-01 17:21:48', '2020-09-01 17:21:48', 'a48f039f-49b4-4500-9ecf-f233166b49c7'),
(65, 55, 34, 2, 10, NULL, '2020-09-01 17:21:48', '2020-09-01 17:21:48', '637c2e1d-b275-4138-a7b9-58a730b6b3fe'),
(66, 4, 34, 2, 11, NULL, '2020-09-01 17:29:42', '2020-09-01 17:29:42', '0583ba48-18c9-4740-b336-474ff9a0cb8e'),
(67, 4, 34, 2, 12, NULL, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '6db9af01-c5bd-4215-888a-005c5c0d68dc'),
(68, 4, 34, 2, 13, NULL, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '87c7237b-8243-4e08-bce6-e1a75ca94d78'),
(69, 4, 34, 2, 14, NULL, '2020-09-01 17:29:43', '2020-09-01 17:29:43', 'd8c5a136-d121-400d-b99e-100456f95072'),
(70, 4, 34, 2, 15, NULL, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '94291a15-743a-40a8-b9f4-a7f54b0d1578'),
(71, 4, 34, 2, 16, NULL, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '095c4f45-507a-4e15-9278-67e37cc7b27c'),
(72, 4, 34, 2, 17, NULL, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '5e256999-b4d2-4a9b-aaf2-de37222aeaff'),
(73, 4, 34, 2, 18, NULL, '2020-09-01 17:29:43', '2020-09-01 17:29:43', 'eecb2c9e-0ab2-4740-89dc-fba5d368747d'),
(74, 4, 34, 2, 19, NULL, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '5f7516bf-6bd9-4b27-8272-99c8606154b2'),
(75, 4, 34, 2, 20, NULL, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '0ae033fb-f37b-4ccb-8ba0-998209631af9'),
(76, 4, 34, 2, 21, NULL, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '19829165-660f-4597-b035-f8809ee38b80'),
(77, 4, 34, 2, 22, NULL, '2020-09-01 17:29:43', '2020-09-01 17:29:43', 'a0019dcd-e427-4350-9940-77ffdc2eb607'),
(78, 4, 34, 2, 23, NULL, '2020-09-01 17:29:43', '2020-09-01 17:29:43', 'f2f2e0df-0897-4992-a00b-62c7dcefd5c2'),
(79, 4, 34, 2, 24, NULL, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '24aecf6c-91af-4a07-b73e-0dd8939033c1'),
(81, 80, 34, 2, 1, NULL, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '18116db7-28ab-4bab-9305-f8333dc71e09'),
(82, 80, 34, 2, 2, NULL, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '619bb032-dccf-4046-942d-cc3697b19da9'),
(83, 80, 34, 2, 3, NULL, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '4f02bc0e-d9e4-4eaa-9f50-df3d5bdd0330'),
(84, 80, 34, 2, 4, NULL, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '3b075b0a-66b9-4f88-b5bd-77543b9bf4af'),
(85, 80, 34, 2, 5, NULL, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '8c4c03d0-6873-43b7-a754-979e8620ffa9'),
(86, 80, 34, 2, 6, NULL, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '851e42fd-c09c-4cb9-b7c5-faf2302b6cf6'),
(87, 80, 34, 2, 7, NULL, '2020-09-01 17:29:43', '2020-09-01 17:29:43', 'd826eeb3-695f-4d2f-a337-9d090c347cb1'),
(88, 80, 34, 2, 8, NULL, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '61f48feb-bb2d-41fc-9934-42d9916e85c3'),
(89, 80, 34, 2, 9, NULL, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '34b3c783-6903-4ee1-983d-2601ebd30860'),
(90, 80, 34, 2, 10, NULL, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '464cac31-c519-4574-9614-85534665560b'),
(91, 80, 34, 2, 11, NULL, '2020-09-01 17:29:43', '2020-09-01 17:29:43', 'ae35e564-1ae9-447f-b656-169e010f5ecd'),
(92, 80, 34, 2, 12, NULL, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '04e666b7-5db8-4b28-b9ae-d294c8a97e3f'),
(93, 80, 34, 2, 13, NULL, '2020-09-01 17:29:43', '2020-09-01 17:29:43', 'e13cbc1e-3e70-4f21-ad5d-02200613b994'),
(94, 80, 34, 2, 14, NULL, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '8e59afc0-a52b-42b4-bd67-ae68027a6b56'),
(95, 80, 34, 2, 15, NULL, '2020-09-01 17:29:43', '2020-09-01 17:29:43', 'd4ae59b8-946e-4ec3-a3b5-c53c7bcbf7d2'),
(96, 80, 34, 2, 16, NULL, '2020-09-01 17:29:43', '2020-09-01 17:29:43', 'e61728c3-6b60-49b3-97f3-e96171f41d19'),
(97, 80, 34, 2, 17, NULL, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '024dfc50-90b5-4e4d-ba77-eb7fd85a61d1'),
(98, 80, 34, 2, 18, NULL, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '60a6531f-dd5c-4c22-98d3-8e591647fd71'),
(99, 80, 34, 2, 19, NULL, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '3439d4c7-dcce-42ee-864b-255dc5aba2e0'),
(100, 80, 34, 2, 20, NULL, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '7703198d-97d5-4d7d-b107-add1134a1ffe'),
(101, 80, 34, 2, 21, NULL, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '59a27dc8-1271-4199-b500-340d09aba982'),
(102, 80, 34, 2, 22, NULL, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '0d576a80-134e-444d-9c94-afce37a01d66'),
(103, 80, 34, 2, 23, NULL, '2020-09-01 17:29:43', '2020-09-01 17:29:43', 'a970c671-7b78-43b4-b3ef-a5551973853a'),
(104, 80, 34, 2, 24, NULL, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '08fe34f0-8b2f-4186-91e6-453f9fe9aabf'),
(105, 6, 7, 3, 1, NULL, '2020-09-01 18:33:52', '2020-09-01 18:33:52', '6ac6f2f9-5eda-4f6d-aae4-44999b9f86b0'),
(106, 6, 7, 3, 2, NULL, '2020-09-01 18:33:52', '2020-09-01 18:33:52', '8f63edfb-4007-4eba-97fe-a4b17daf830f'),
(107, 6, 7, 3, 3, NULL, '2020-09-01 18:33:52', '2020-09-01 18:33:52', 'c23a5802-7e76-4e12-abe1-6c984990475a'),
(108, 6, 7, 3, 4, NULL, '2020-09-01 18:33:52', '2020-09-01 18:33:52', 'ca1563ea-c8d5-4551-ae0e-bddca6912407'),
(109, 6, 7, 3, 5, NULL, '2020-09-01 18:33:52', '2020-09-01 18:33:52', 'b09735eb-0010-4ced-94e3-7065d0a79d88'),
(110, 6, 7, 3, 6, NULL, '2020-09-01 18:33:52', '2020-09-01 18:33:52', '853c855f-a40a-415f-925c-ad4db69dd12b'),
(112, 111, 7, 3, 1, NULL, '2020-09-01 18:33:52', '2020-09-01 18:33:52', 'cb729f3d-4aab-4e62-aff9-528b4547d55d'),
(113, 111, 7, 3, 2, NULL, '2020-09-01 18:33:52', '2020-09-01 18:33:52', '186d2562-823c-42e7-bd1c-6658b7764996'),
(114, 111, 7, 3, 3, NULL, '2020-09-01 18:33:52', '2020-09-01 18:33:52', 'be51c10a-f31a-4ad9-b575-88e34ae686c0'),
(115, 111, 7, 3, 4, NULL, '2020-09-01 18:33:52', '2020-09-01 18:33:52', 'f9a3d5b7-b5e9-4932-a45b-6d385bea3287'),
(116, 111, 7, 3, 5, NULL, '2020-09-01 18:33:52', '2020-09-01 18:33:52', '35fb3217-cdb3-4b6c-a00b-6e7c6aeb3dd4'),
(117, 111, 7, 3, 6, NULL, '2020-09-01 18:33:52', '2020-09-01 18:33:52', 'fbb0a24e-b55f-491b-9a86-945fb8318f04'),
(127, 11, 25, 1, 1, NULL, '2020-09-01 19:05:28', '2020-09-01 19:05:28', '864fb7db-6eed-4c88-8be8-9ad0346fb34a'),
(128, 11, 25, 1, 2, NULL, '2020-09-01 19:05:28', '2020-09-01 19:05:28', '96b2a21e-8dfd-47c6-bc1a-0adc2f699133'),
(129, 11, 25, 1, 3, NULL, '2020-09-01 19:05:28', '2020-09-01 19:05:28', '88168fc6-6ac0-4de7-b063-46fc95d942c9'),
(130, 11, 25, 1, 4, NULL, '2020-09-01 19:05:28', '2020-09-01 19:05:28', 'ca604753-b5a5-449e-84d2-22ab2757e431'),
(131, 11, 25, 1, 5, NULL, '2020-09-01 19:05:28', '2020-09-01 19:05:28', 'f260bd57-443e-4889-bc01-fa8690290dd9'),
(132, 11, 25, 1, 6, NULL, '2020-09-01 19:05:28', '2020-09-01 19:05:28', '99054232-e2b7-4f4f-a4dc-df78cef1b683'),
(133, 11, 25, 1, 7, NULL, '2020-09-01 19:05:28', '2020-09-01 19:05:28', '207cc6ee-60ec-41d7-9fee-272456ee978b'),
(135, 134, 25, 1, 1, NULL, '2020-09-01 19:05:28', '2020-09-01 19:05:28', '1a261f01-1b10-4d3a-9bf6-20a98a0aa82f'),
(136, 134, 25, 1, 2, NULL, '2020-09-01 19:05:28', '2020-09-01 19:05:28', '863743a6-81a2-40fa-8f63-b1f33826b724'),
(137, 134, 25, 1, 3, NULL, '2020-09-01 19:05:28', '2020-09-01 19:05:28', 'b69973d7-eb94-49f7-a7d0-3f464e4fcf04'),
(138, 134, 25, 1, 4, NULL, '2020-09-01 19:05:28', '2020-09-01 19:05:28', '1407c2cd-4f83-4331-9c55-cc250e4bfa68'),
(139, 134, 25, 1, 5, NULL, '2020-09-01 19:05:28', '2020-09-01 19:05:28', '4e1062fe-12f7-47e5-a5c1-43238972bfed'),
(140, 134, 25, 1, 6, NULL, '2020-09-01 19:05:28', '2020-09-01 19:05:28', '0ec866b7-6af3-4355-97fb-e08bb610f4cb'),
(141, 134, 25, 1, 7, NULL, '2020-09-01 19:05:28', '2020-09-01 19:05:28', '3025a01b-4682-498f-a476-089b80a767eb'),
(143, 142, 25, 1, 1, NULL, '2020-09-01 19:08:53', '2020-09-01 19:08:53', '343f6796-27ab-4d3f-a5c2-b80eec4f2184'),
(144, 142, 25, 1, 2, NULL, '2020-09-01 19:08:53', '2020-09-01 19:08:53', 'e1ab2639-d32a-4907-895b-36797681a456'),
(145, 142, 25, 1, 3, NULL, '2020-09-01 19:08:53', '2020-09-01 19:08:53', '17e69cdd-7dc2-4cdb-8797-38e4678a2d98'),
(146, 142, 25, 1, 4, NULL, '2020-09-01 19:08:53', '2020-09-01 19:08:53', 'a6d7ba69-950f-4802-b4ea-738fa08753fa'),
(147, 142, 25, 1, 5, NULL, '2020-09-01 19:08:53', '2020-09-01 19:08:53', 'b001ef99-2424-4cd6-8940-033e8fe58b49'),
(148, 142, 25, 1, 6, NULL, '2020-09-01 19:08:53', '2020-09-01 19:08:53', 'c1d6d9be-caa7-4b03-b232-7a26b5432204'),
(149, 142, 25, 1, 7, NULL, '2020-09-01 19:08:53', '2020-09-01 19:08:53', '6ee2b4b8-e6a6-4bf3-8d03-2aebfda02c7b'),
(153, 152, 7, 3, 1, NULL, '2020-09-02 23:54:47', '2020-09-02 23:54:47', '49ca5d84-7ad3-4976-8888-9361fec7108c'),
(154, 152, 7, 3, 2, NULL, '2020-09-02 23:54:47', '2020-09-02 23:54:47', '8e940bc2-5b4c-4eb2-abfd-4add5219fef9'),
(155, 152, 7, 3, 3, NULL, '2020-09-02 23:54:47', '2020-09-02 23:54:47', 'eed5cb9f-7405-42a7-9216-8244f0cbb090'),
(156, 152, 7, 3, 4, NULL, '2020-09-02 23:54:47', '2020-09-02 23:54:47', 'ce624860-f9d0-47f5-b10b-f9f44e9d58c8'),
(157, 152, 7, 3, 5, NULL, '2020-09-02 23:54:47', '2020-09-02 23:54:47', 'a2f875e2-23ce-4136-b9b3-eead230263ae'),
(158, 152, 7, 3, 6, NULL, '2020-09-02 23:54:47', '2020-09-02 23:54:47', 'c4fe89c4-07c9-45de-b4cd-5691aad3bfe0'),
(160, 159, 7, 3, 1, NULL, '2020-09-02 23:55:21', '2020-09-02 23:55:21', '847f7a2c-95c2-4b8d-9ca0-1633d008861d'),
(161, 159, 7, 3, 2, NULL, '2020-09-02 23:55:21', '2020-09-02 23:55:21', 'c14e671f-bc9e-4e6a-8b51-3b1c0c4d91d2'),
(162, 159, 7, 3, 3, NULL, '2020-09-02 23:55:21', '2020-09-02 23:55:21', '09da0f1d-75bb-4085-8601-a2c85f46f95c'),
(163, 159, 7, 3, 4, NULL, '2020-09-02 23:55:21', '2020-09-02 23:55:21', 'df4297c1-2c3b-4ae8-a21d-fe4648cff53d'),
(164, 159, 7, 3, 5, NULL, '2020-09-02 23:55:21', '2020-09-02 23:55:21', 'f746c990-7df6-4b52-a1c5-89d919c42c8d'),
(165, 159, 7, 3, 6, NULL, '2020-09-02 23:55:21', '2020-09-02 23:55:21', '22427dff-5b31-4f21-aafe-c887693ffab1'),
(167, 166, 7, 3, 1, NULL, '2020-09-03 00:09:26', '2020-09-03 00:09:26', 'df96c4a6-ca53-45db-8ce6-a9ef34121389'),
(168, 166, 7, 3, 2, NULL, '2020-09-03 00:09:26', '2020-09-03 00:09:26', 'c515930f-137b-4795-ae56-580f2c2ed11a'),
(169, 166, 7, 3, 3, NULL, '2020-09-03 00:09:26', '2020-09-03 00:09:26', 'f04ee429-e10f-4164-8d1f-f7dc421e9c66'),
(170, 166, 7, 3, 4, NULL, '2020-09-03 00:09:26', '2020-09-03 00:09:26', '43735181-ad41-4fc9-95ea-23b83607781f'),
(171, 166, 7, 3, 5, NULL, '2020-09-03 00:09:26', '2020-09-03 00:09:26', '58d8fc11-57b6-4ede-ae1d-b03d300550e8'),
(172, 166, 7, 3, 6, NULL, '2020-09-03 00:09:26', '2020-09-03 00:09:26', 'f33d7df4-6b8c-40e0-bdf5-6f3054763904'),
(174, 173, 44, 4, 1, NULL, '2020-09-03 00:11:44', '2020-09-03 00:11:44', '9c8bbd18-581d-4d27-b15b-545fb736f733'),
(175, 173, 44, 4, 2, NULL, '2020-09-03 00:11:44', '2020-09-03 00:11:44', '93b98551-528a-4017-a9ac-7d34881112a9'),
(177, 176, 7, 3, 1, NULL, '2020-09-03 00:11:44', '2020-09-03 00:11:44', '9377f928-dde7-4b46-8e3a-999a3bf7ff6f'),
(178, 176, 7, 3, 2, NULL, '2020-09-03 00:11:44', '2020-09-03 00:11:44', 'd96d5e56-5858-41bd-a662-d4f976af8598'),
(179, 176, 7, 3, 3, NULL, '2020-09-03 00:11:44', '2020-09-03 00:11:44', 'a2486fa4-dbc3-4655-9158-d083796f1b6c'),
(180, 176, 7, 3, 4, NULL, '2020-09-03 00:11:44', '2020-09-03 00:11:44', '13c26427-521e-4846-b79a-9f0c0a59c7ac'),
(181, 176, 7, 3, 5, NULL, '2020-09-03 00:11:44', '2020-09-03 00:11:44', '0f4343c3-f415-44ed-abcd-39afaacba955'),
(182, 176, 7, 3, 6, NULL, '2020-09-03 00:11:44', '2020-09-03 00:11:44', '0364de55-24d1-4871-b3ff-24d4464de0d1'),
(184, 183, 44, 4, 1, NULL, '2020-09-03 00:11:44', '2020-09-03 00:11:44', '72289e6d-fda0-4760-87da-07384cacce5c'),
(185, 183, 44, 4, 2, NULL, '2020-09-03 00:11:44', '2020-09-03 00:11:44', '03de16e2-2aa2-4a60-bdab-a321bdddf98c'),
(186, 173, 44, 4, 3, NULL, '2020-09-03 00:14:05', '2020-09-03 00:14:05', '6234fdac-1510-418d-a26e-c03948488e10'),
(188, 187, 7, 3, 1, NULL, '2020-09-03 00:14:05', '2020-09-03 00:14:05', 'f13f7238-e989-47f6-b174-3028bfd90825'),
(189, 187, 7, 3, 2, NULL, '2020-09-03 00:14:05', '2020-09-03 00:14:05', '3956c2c0-213e-4c44-a4fe-b43e6e5b6f8c'),
(190, 187, 7, 3, 3, NULL, '2020-09-03 00:14:05', '2020-09-03 00:14:05', 'bf8b3d42-7177-445a-9130-42629298f3b8'),
(191, 187, 7, 3, 4, NULL, '2020-09-03 00:14:05', '2020-09-03 00:14:05', '1ccfce60-3f40-4408-9c3b-721449e756e2'),
(192, 187, 7, 3, 5, NULL, '2020-09-03 00:14:05', '2020-09-03 00:14:05', 'dfa0af6c-16e9-4eb6-b806-d77a644aad00'),
(193, 187, 7, 3, 6, NULL, '2020-09-03 00:14:05', '2020-09-03 00:14:05', 'bf75a647-f507-4fea-9033-9ffdf81503e1'),
(195, 194, 44, 4, 1, NULL, '2020-09-03 00:14:05', '2020-09-03 00:14:05', 'de13d027-cc2d-4232-9733-856bb9b7c3fd'),
(196, 194, 44, 4, 2, NULL, '2020-09-03 00:14:05', '2020-09-03 00:14:05', '1fc308bf-d9d9-4d4f-a070-a7f287a07702'),
(197, 194, 44, 4, 3, NULL, '2020-09-03 00:14:05', '2020-09-03 00:14:05', '39a225aa-1aff-425c-ac8b-1f5a4b851910'),
(199, 198, 44, 4, 1, NULL, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '3c691cd6-9711-454d-9250-b71d35ab1365'),
(200, 198, 44, 4, 2, NULL, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '27d339ca-9f6c-4d62-8b81-1727f19fdd00'),
(201, 198, 44, 4, 3, NULL, '2020-09-03 00:21:51', '2020-09-03 00:21:51', 'ed73c45b-c785-4d1f-9178-adde9d6e5483'),
(202, 198, 44, 4, 4, NULL, '2020-09-03 00:21:51', '2020-09-03 00:21:51', 'f97f4f16-f557-4dc9-b2a1-3012831ff2d8'),
(203, 198, 44, 4, 5, NULL, '2020-09-03 00:21:51', '2020-09-03 00:21:51', 'b12027e9-511c-4f01-bab9-54ac8c187a0b'),
(204, 198, 44, 4, 6, NULL, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '3d0f2ca3-a49d-4e81-857d-6bd60765471d'),
(205, 198, 44, 4, 7, NULL, '2020-09-03 00:21:51', '2020-09-03 00:21:51', 'c77a3686-342a-43dd-8267-8d2daa990bf3'),
(206, 198, 44, 4, 8, NULL, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '819d69f1-5f8e-4b38-8398-160ee8435f80'),
(207, 198, 44, 4, 9, NULL, '2020-09-03 00:21:51', '2020-09-03 00:21:51', 'f11e21ab-8b1b-4124-84e7-ae055161f8b4'),
(208, 198, 44, 4, 10, NULL, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '665aa034-49d4-4099-af79-80c389f88dbb'),
(210, 209, 7, 3, 1, NULL, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '52e3d47f-0d53-416a-91e4-2a6bd7eef8fd'),
(211, 209, 7, 3, 2, NULL, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '27bdedd3-64b8-4410-83a7-6ff3f9a95ac0'),
(212, 209, 7, 3, 3, NULL, '2020-09-03 00:21:51', '2020-09-03 00:21:51', 'e174981b-9265-44db-b8b7-9bd6db5ac357'),
(213, 209, 7, 3, 4, NULL, '2020-09-03 00:21:51', '2020-09-03 00:21:51', 'fb5dfc8b-7956-40f7-b678-d69cbfcde431'),
(214, 209, 7, 3, 5, NULL, '2020-09-03 00:21:51', '2020-09-03 00:21:51', 'f3035f55-da90-418d-98a5-c1166c2fddf4'),
(215, 209, 7, 3, 6, NULL, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '949abee8-38ee-4825-8a68-f8a1db6fe97c'),
(217, 216, 44, 4, 1, NULL, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '49b87813-b46f-45d0-88fc-95047c86a314'),
(218, 216, 44, 4, 2, NULL, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '1ad7dbc3-c45e-4265-8ead-a4e599632a02'),
(219, 216, 44, 4, 3, NULL, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '72fc6169-cb81-4dfa-ab12-870d9ca117fc'),
(221, 220, 44, 4, 1, NULL, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '2506f8b0-4b47-4d66-bd5b-6130bc3ead8b'),
(222, 220, 44, 4, 2, NULL, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '15006aec-a852-42ad-b8f2-daaf370085bc'),
(223, 220, 44, 4, 3, NULL, '2020-09-03 00:21:51', '2020-09-03 00:21:51', 'f582a492-2333-4298-b713-7c13d790df8a'),
(224, 220, 44, 4, 4, NULL, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '2c36fa66-97ff-4343-bdf5-efe3827b2bb9'),
(225, 220, 44, 4, 5, NULL, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '4c442827-ea77-46b0-ab0c-11a327eb743e'),
(226, 220, 44, 4, 6, NULL, '2020-09-03 00:21:51', '2020-09-03 00:21:51', 'c2e3105f-1bfd-4f6a-bf91-aedb5fac82dc'),
(227, 220, 44, 4, 7, NULL, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '98210778-35b0-48ba-aaf4-b239a2753bcc'),
(228, 220, 44, 4, 8, NULL, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '55984684-99c7-4945-b7d7-0491c17c7daa'),
(229, 220, 44, 4, 9, NULL, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '3d24b846-9bbf-4efc-b90a-2c81b395a827'),
(230, 220, 44, 4, 10, NULL, '2020-09-03 00:21:51', '2020-09-03 00:21:51', 'd54abe06-6578-44c5-aa03-cc76b584ae30');

-- --------------------------------------------------------

--
-- Table structure for table `matrixblocktypes`
--

CREATE TABLE `matrixblocktypes` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `matrixblocktypes`
--

INSERT INTO `matrixblocktypes` (`id`, `fieldId`, `fieldLayoutId`, `name`, `handle`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 25, 9, 'Guideline', 'guideline', 1, '2020-09-01 15:21:34', '2020-09-01 15:21:34', 'cf62faa0-8991-4720-af52-1d31c7881a49'),
(2, 34, 12, 'Exhibit', 'exhibit', 1, '2020-09-01 16:16:19', '2020-09-01 16:16:19', 'b92a23c9-7a94-431d-a6fe-016a729cd8af'),
(3, 7, 13, 'FAQ Section', 'faqSection', 1, '2020-09-01 16:18:38', '2020-09-01 16:18:38', '4c8ef855-dc53-42a1-a6d1-e987bf0c676e'),
(4, 44, 16, 'Faqs', 'faqs', 1, '2020-09-03 00:08:20', '2020-09-03 00:08:20', '780faf71-6de6-440f-98a8-ff7328a12759');

-- --------------------------------------------------------

--
-- Table structure for table `matrixcontent_covidguidelines`
--

CREATE TABLE `matrixcontent_covidguidelines` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_guideline_guidelineHeader` text,
  `field_guideline_guidelineContent` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `matrixcontent_covidguidelines`
--

INSERT INTO `matrixcontent_covidguidelines` (`id`, `elementId`, `siteId`, `dateCreated`, `dateUpdated`, `uid`, `field_guideline_guidelineHeader`, `field_guideline_guidelineContent`) VALUES
(1, 127, 1, '2020-09-01 19:05:28', '2020-09-01 19:05:28', '26307e9d-0ce6-4f1f-91ff-8fc84220ef9d', 'ALL STAFF AND GUESTS MUST WEAR PROPER FACE COVERINGS AND BE TEMPERATURE SCREENED', 'Guests are not allowed entry without proper face covering and must keep them on throughout the experience. Anyone refusing to wear a face covering will be asked to leave the show. Temperatures will be checked at the door and must be below 100.4 degrees to enter.'),
(2, 128, 1, '2020-09-01 19:05:28', '2020-09-01 19:05:28', '8741ca3d-35b5-4872-8bb7-51a89b1becf0', 'SOCIAL DISTANCING WILL BE ENFORCED', 'Guests must adhere to proper social distancing guidelines while at Hopscotch. Signage, ground markings and staff will enforce proper social distancing. Plexiglass barriers are placed in close contact areas. Separate entrance and exits limit guest interaction. We also have a large outdoor patio space available to enjoy food and beverage on while practicing social distancing.'),
(3, 129, 1, '2020-09-01 19:05:28', '2020-09-01 19:05:28', 'b01058c1-e726-4262-b8e5-d54d2436b729', 'LIMITED VENUE HOURS AND 25% CAPACITY STRICTLY ENFORCED', 'We offer dedicated pre-ticketed time slots for a continually safe guest flow. If you are visiting one of our public non-ticketed gallery areas you will be asked to wait if we are at capacity.'),
(4, 130, 1, '2020-09-01 19:05:28', '2020-09-01 19:05:28', 'a10498ff-7fdb-4c8f-862b-ab93d2dd2726', 'LIMITED TOUCH POINTS', 'No cash; all transactions are debit and credit card only. Tap to pay is available. Guests may use their phones to sign the waiver. Self-cleaning film has been added to all high touch spots.'),
(5, 131, 1, '2020-09-01 19:05:28', '2020-09-01 19:05:28', 'b51e42f9-5492-451c-93fd-79dbe6641fe6', 'ALL SURFACES AND TOUCHPOINTS WILL BE SANITIZED REGULARLY', 'Along with professional nightly deep cleans, our staff will be trained in COVID safety and will be frequently cleaning surfaces throughout their shifts.'),
(6, 132, 1, '2020-09-01 19:05:28', '2020-09-01 19:05:28', '3d8bad21-b197-4e7e-8464-05eef0e2baad', 'TEN TOUCHLESS HAND SANITIZING STATIONS THROUGHOUT THE VENUE', 'Please avoid touching your eyes, nose and mouth. Please regularly use our many hand sanitizer stations that are available throughout the experience and avoid touching your eyes, nose and mouth.'),
(7, 133, 1, '2020-09-01 19:05:28', '2020-09-01 19:05:28', 'd50ca710-fbdf-488f-9947-3c92db95aa02', 'FREQUENTLY CIRCULATED AND PURIFIED AIR', 'Our air is continually ventilated throughout the space at all times. We have ultraviolet lights and specialized filters installed inside our HVAC system to provide purified air throughout the entire building. Automated decontaminated systems are also placed throughout the space dispensing safe and reliable antimicrobial vapor.'),
(8, 135, 1, '2020-09-01 19:05:28', '2020-09-01 19:05:28', '9f970774-17b4-48d3-8ec6-aed3e51aa917', 'ALL STAFF AND GUESTS MUST WEAR PROPER FACE COVERINGS AND BE TEMPERATURE SCREENED', 'Guests are not allowed entry without proper face covering and must keep them on throughout the experience. Anyone refusing to wear a face covering will be asked to leave the show. Temperatures will be checked at the door and must be below 100.4 degrees to enter.'),
(9, 136, 1, '2020-09-01 19:05:28', '2020-09-01 19:05:28', '8b60e509-e008-4205-9ac0-ba02b9490040', 'SOCIAL DISTANCING WILL BE ENFORCED', 'Guests must adhere to proper social distancing guidelines while at Hopscotch. Signage, ground markings and staff will enforce proper social distancing. Plexiglass barriers are placed in close contact areas. Separate entrance and exits limit guest interaction. We also have a large outdoor patio space available to enjoy food and beverage on while practicing social distancing.'),
(10, 137, 1, '2020-09-01 19:05:28', '2020-09-01 19:05:28', 'd747da02-1d6f-4e28-8442-a56a27e774e9', 'LIMITED VENUE HOURS AND 25% CAPACITY STRICTLY ENFORCED', 'We offer dedicated pre-ticketed time slots for a continually safe guest flow. If you are visiting one of our public non-ticketed gallery areas you will be asked to wait if we are at capacity.'),
(11, 138, 1, '2020-09-01 19:05:28', '2020-09-01 19:05:28', 'ed17236b-abf1-44b8-af90-b703e29b8467', 'LIMITED TOUCH POINTS', 'No cash; all transactions are debit and credit card only. Tap to pay is available. Guests may use their phones to sign the waiver. Self-cleaning film has been added to all high touch spots.'),
(12, 139, 1, '2020-09-01 19:05:28', '2020-09-01 19:05:28', '1007dae2-a382-42cd-933b-8a2acf7ed88e', 'ALL SURFACES AND TOUCHPOINTS WILL BE SANITIZED REGULARLY', 'Along with professional nightly deep cleans, our staff will be trained in COVID safety and will be frequently cleaning surfaces throughout their shifts.'),
(13, 140, 1, '2020-09-01 19:05:28', '2020-09-01 19:05:28', 'd5df12e4-827e-413b-bb16-66a4a56108d1', 'TEN TOUCHLESS HAND SANITIZING STATIONS THROUGHOUT THE VENUE', 'Please avoid touching your eyes, nose and mouth. Please regularly use our many hand sanitizer stations that are available throughout the experience and avoid touching your eyes, nose and mouth.'),
(14, 141, 1, '2020-09-01 19:05:28', '2020-09-01 19:05:28', '21631e04-9946-4ced-87de-a8b648bad16a', 'FREQUENTLY CIRCULATED AND PURIFIED AIR', 'Our air is continually ventilated throughout the space at all times. We have ultraviolet lights and specialized filters installed inside our HVAC system to provide purified air throughout the entire building. Automated decontaminated systems are also placed throughout the space dispensing safe and reliable antimicrobial vapor.'),
(15, 143, 1, '2020-09-01 19:08:53', '2020-09-01 19:08:53', '4e80bbcb-79c9-4c4a-8531-4e796757d619', 'ALL STAFF AND GUESTS MUST WEAR PROPER FACE COVERINGS AND BE TEMPERATURE SCREENED', 'Guests are not allowed entry without proper face covering and must keep them on throughout the experience. Anyone refusing to wear a face covering will be asked to leave the show. Temperatures will be checked at the door and must be below 100.4 degrees to enter.'),
(16, 144, 1, '2020-09-01 19:08:53', '2020-09-01 19:08:53', 'adda163c-a4cc-4282-b32c-967fb8078169', 'SOCIAL DISTANCING WILL BE ENFORCED', 'Guests must adhere to proper social distancing guidelines while at Hopscotch. Signage, ground markings and staff will enforce proper social distancing. Plexiglass barriers are placed in close contact areas. Separate entrance and exits limit guest interaction. We also have a large outdoor patio space available to enjoy food and beverage on while practicing social distancing.'),
(17, 145, 1, '2020-09-01 19:08:53', '2020-09-01 19:08:53', 'fa1ef413-c974-44c5-8489-12c61e4edcc8', 'LIMITED VENUE HOURS AND 25% CAPACITY STRICTLY ENFORCED', 'We offer dedicated pre-ticketed time slots for a continually safe guest flow. If you are visiting one of our public non-ticketed gallery areas you will be asked to wait if we are at capacity.'),
(18, 146, 1, '2020-09-01 19:08:53', '2020-09-01 19:08:53', '3eee880f-c119-4d3a-99b7-ad8d6fd4c7e7', 'LIMITED TOUCH POINTS', 'No cash; all transactions are debit and credit card only. Tap to pay is available. Guests may use their phones to sign the waiver. Self-cleaning film has been added to all high touch spots.'),
(19, 147, 1, '2020-09-01 19:08:53', '2020-09-01 19:08:53', 'd9e04267-1fbb-4ae4-bfcb-b0dc1098ae89', 'ALL SURFACES AND TOUCHPOINTS WILL BE SANITIZED REGULARLY', 'Along with professional nightly deep cleans, our staff will be trained in COVID safety and will be frequently cleaning surfaces throughout their shifts.'),
(20, 148, 1, '2020-09-01 19:08:53', '2020-09-01 19:08:53', '1880fae9-e189-4fc1-8705-5af0bf1fa8c1', 'TEN TOUCHLESS HAND SANITIZING STATIONS THROUGHOUT THE VENUE', 'Please avoid touching your eyes, nose and mouth. Please regularly use our many hand sanitizer stations that are available throughout the experience and avoid touching your eyes, nose and mouth.'),
(21, 149, 1, '2020-09-01 19:08:53', '2020-09-01 19:08:53', 'cea6ac85-4173-41c9-9ae5-fdacc434632b', 'FREQUENTLY CIRCULATED AND PURIFIED AIR', 'Our air is continually ventilated throughout the space at all times. We have ultraviolet lights and specialized filters installed inside our HVAC system to provide purified air throughout the entire building. Automated decontaminated systems are also placed throughout the space dispensing safe and reliable antimicrobial vapor.');

-- --------------------------------------------------------

--
-- Table structure for table `matrixcontent_exhibitions`
--

CREATE TABLE `matrixcontent_exhibitions` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_exhibit_exhibitAuthor` text,
  `field_exhibit_exhibitStatus` tinyint(1) DEFAULT NULL,
  `field_exhibit_authorLocation` text,
  `field_exhibit_authorLink` varchar(255) DEFAULT NULL,
  `field_exhibit_exhibitName` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `matrixcontent_exhibitions`
--

INSERT INTO `matrixcontent_exhibitions` (`id`, `elementId`, `siteId`, `dateCreated`, `dateUpdated`, `uid`, `field_exhibit_exhibitAuthor`, `field_exhibit_exhibitStatus`, `field_exhibit_authorLocation`, `field_exhibit_authorLink`, `field_exhibit_exhibitName`) VALUES
(1, 45, 1, '2020-09-01 17:21:48', '2020-09-01 17:29:42', '46447e3b-996b-4fdb-8fea-74eca960cb94', 'Titmouse', 1, '(Los Angeles, CA/New York, NY/Vancouver, CA)', '', 'Show it 2 Me'),
(2, 46, 1, '2020-09-01 17:21:48', '2020-09-01 17:29:42', '7691a3df-dae4-4aa6-8f31-200153b427e2', 'Matt Elson', 1, '(Los Angeles, CA)', '', 'Infinity Boxes'),
(3, 47, 1, '2020-09-01 17:21:48', '2020-09-01 17:29:42', '61209255-bb07-40a8-ac85-f41fcccc4fd5', 'Basia Goszczynska', 1, '(Brooklyn, NY)', 'https://www.basiagoszczynska.com/', 'Rainbow Cave'),
(4, 48, 1, '2020-09-01 17:21:48', '2020-09-01 17:29:42', '3ab12d76-9adc-4b5b-8b5d-75efcf53413b', 'Kuflex', 1, '(Moscow, Russia)', 'https://kuflex.com/', 'Quantum Space'),
(5, 49, 1, '2020-09-01 17:21:48', '2020-09-01 17:29:42', 'b3bbef32-8e29-435a-883c-a74a9a43ef09', 'Kuflex', 1, '(Moscow, Russia)', 'https://kuflex.com/', 'Symbiosis'),
(6, 50, 1, '2020-09-01 17:21:48', '2020-09-01 17:29:42', 'b09d50d8-db2b-474a-95ee-f51a2142fc8c', 'Cambell Landscape Architecture', 1, '(Austin, TX/San Francisco, CA)', 'https://campbella.com/', 'Lightlines'),
(7, 51, 1, '2020-09-01 17:21:48', '2020-09-01 17:29:42', '96e9e53d-91e1-41d3-a758-c59ae726c4c0', 'Playmodes', 1, '(Barcelona, Spain)', 'http://www.playmodes.com/', 'VJ Yourself'),
(8, 52, 1, '2020-09-01 17:21:48', '2020-09-01 17:29:42', '11a12a3a-704f-4c3b-a400-9d43a7d9a1fc', 'Gary Sweeney', 1, '(San Antonio, TX)', '', 'Homeroom'),
(9, 53, 1, '2020-09-01 17:21:48', '2020-09-01 17:29:42', '67f08ac5-df42-4821-8f7b-d28489086b82', 'Amada Miller', 1, '(San Antonio, TX)', 'http://www.amadamiller.com/', 'Strange Slant of Light'),
(10, 54, 1, '2020-09-01 17:21:48', '2020-09-01 17:29:42', '3301d67c-9fb7-4ef4-8002-42fcffd56a18', 'Wide Awake Creative + Hopscotch', 1, '(San Antonio, TX)', 'https://www.wideawakecreative.co/', 'Secrets'),
(11, 56, 1, '2020-09-01 17:21:48', '2020-09-01 17:21:48', 'b7157a2d-641a-427e-bf46-051d9a7c6b80', 'Titmouse', 1, '(Los Angeles, CA/New York, NY/Vancouver, CA)', '', 'Show it 2 Me'),
(12, 57, 1, '2020-09-01 17:21:48', '2020-09-01 17:21:48', '47132695-ebca-433d-a52c-11d5daa82617', 'Matt Elson', 1, '(Los Angeles, CA)', '', 'Infinity Boxes'),
(13, 58, 1, '2020-09-01 17:21:48', '2020-09-01 17:21:48', '44590fd9-834b-411b-870e-be36323234a7', 'Basia Goszczynska', 1, '(Brooklyn, NY)', 'https://www.basiagoszczynska.com/', 'Rainbow Cave'),
(14, 59, 1, '2020-09-01 17:21:48', '2020-09-01 17:21:48', '97dd8e0b-64ca-4407-8927-7046e9f6385f', 'Kuflex', 1, '(Moscow, Russia)', 'https://kuflex.com/', 'Quantum Space'),
(15, 60, 1, '2020-09-01 17:21:48', '2020-09-01 17:21:48', 'eb9488ca-6dc0-44fd-9601-5b3ff73505d6', 'Kuflex', 1, '(Moscow, Russia)', 'https://kuflex.com/', 'Symbiosis'),
(16, 61, 1, '2020-09-01 17:21:48', '2020-09-01 17:21:48', '0a49ee0f-1398-423b-9882-c00210bc3867', 'Cambell Landscape Architecture', 1, '(Austin, TX/San Francisco, CA)', 'https://campbella.com/', 'Lightlines'),
(17, 62, 1, '2020-09-01 17:21:48', '2020-09-01 17:21:48', '3c2840fa-313e-4a53-b1f2-8e4f06be0097', 'Playmodes', 1, '(Barcelona, Spain)', 'http://www.playmodes.com/', 'VJ Yourself'),
(18, 63, 1, '2020-09-01 17:21:48', '2020-09-01 17:21:48', '9086a233-a538-4b50-906c-86b030a7cce3', 'Gary Sweeney', 1, '(San Antonio, TX)', '', 'Homeroom'),
(19, 64, 1, '2020-09-01 17:21:48', '2020-09-01 17:21:48', '602b3292-7c49-467c-a488-d00e8efadcad', 'Amada Miller', 1, '(San Antonio, TX)', 'http://www.amadamiller.com/', 'Strange Slant of Light'),
(20, 65, 1, '2020-09-01 17:21:48', '2020-09-01 17:21:48', 'd90260da-18fa-47a0-b80d-1ce6f373aaa9', 'Wide Awake Creative + Hopscotch', 1, '(San Antonio, TX)', 'https://www.wideawakecreative.co/', 'Secrets'),
(21, 66, 1, '2020-09-01 17:29:42', '2020-09-01 17:29:42', '775461af-b48f-4a6b-9ba7-91ec35e1026f', 'San Antonio Street Art Initiative', 1, '(San Antonio, TX)', 'https://sanantoniostreetart.org/', 'From the Outside In'),
(22, 67, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '0f00c393-8e9e-43cd-958d-137c5d24a5c9', 'Polis Interactive + Hopscotch', 1, '(Austin, TX)', 'https://www.instagram.com/polis_interactive/', 'Cloudscape'),
(23, 68, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', 'c97a2f4b-0f6f-4b0c-afa9-04f11c614017', 'Jared Ficklin & Joey Ficklin', 0, '(Austin, Texas)', '', 'Paint with RGB Wall'),
(24, 69, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', 'b33d9d68-0c1f-406f-91de-e08510d0d825', 'The Balloon Collective', 0, '(Austin, Texas)', 'https://www.theballooncollective.com/', 'Thunder & Lightning'),
(25, 70, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '661b2491-6b05-463e-b62d-5b6e625fbafd', 'vürv Collective', 0, '(Austin, Texas)', 'https://vurv.co/', 'mujō'),
(26, 71, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', 'fff1e9c4-ef19-480a-ab82-26a8142357ed', 'Jerome Morrison', 0, '(Austin, Texas)', 'http://jalexmorrison.com/', 'HiFi God'),
(27, 72, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', 'cd98cdd5-c9d2-4bb3-8ba5-06bce5d53d06', 'ANGRY CLOUD+DESCND', 0, '(Austin, Texas)', '', 'Neon Scream'),
(28, 73, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '8ed9a393-08fd-40d2-8b3c-d33b98a77690', 'Mickey Delp', 0, '(Austin, Texas)', 'http://mickeydelp.com/', 'Gemini 6B'),
(29, 74, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '48dfb264-ef40-4e04-923c-d1e453255baa', 'Installation by Cheraya Esters and Malika Boudissa', 0, '(Austin, Texas)', '', 'Freefall'),
(30, 75, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '028561a5-5a31-435a-bd25-99057dbcabba', 'dadageek', 0, '(Austin, Texas)', 'https://dadageek.com/', 'Spirits'),
(31, 76, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', 'a3c16bc5-fb1c-4ee3-b1aa-d3092b6a8c54', 'Hopscotch', 0, '(Austin, Texas)', '', 'Matrix'),
(32, 77, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '3b838279-d75f-4769-9db1-3254b8bb7c6f', 'Hopscotch', 1, '(Austin, Texas)', '', 'Experiences Over Things'),
(33, 78, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '245d2e5a-1b32-4a44-bf33-78acfd579783', 'Hopscotch & Deep Eddy Vodka', 0, '(Austin, Texas)', '', 'Deep Eddy Ball Pit'),
(34, 79, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '9f8f25b6-58fa-4a56-b671-d4124ec68001', NULL, 0, '(Austin, Texas)', '', 'HOPE Campaign'),
(35, 81, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', 'b97938a3-3a71-4d1a-a227-5820c0730d74', 'Titmouse', 1, '(Los Angeles, CA/New York, NY/Vancouver, CA)', '', 'Show it 2 Me'),
(36, 82, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', 'eca47b5a-9014-4150-8df2-a4722b405eff', 'Matt Elson', 1, '(Los Angeles, CA)', '', 'Infinity Boxes'),
(37, 83, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '7c35b3aa-75d8-4425-ae8c-a68694d7f002', 'Basia Goszczynska', 1, '(Brooklyn, NY)', 'https://www.basiagoszczynska.com/', 'Rainbow Cave'),
(38, 84, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', 'f176a214-96d7-498d-a904-0c8e84878565', 'Kuflex', 1, '(Moscow, Russia)', 'https://kuflex.com/', 'Quantum Space'),
(39, 85, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', 'cd461503-4db4-4c68-8e7b-3ff1c85e6f22', 'Kuflex', 1, '(Moscow, Russia)', 'https://kuflex.com/', 'Symbiosis'),
(40, 86, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '55892642-0d94-462f-9435-4272752ff280', 'Cambell Landscape Architecture', 1, '(Austin, TX/San Francisco, CA)', 'https://campbella.com/', 'Lightlines'),
(41, 87, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', 'a0ba05f2-5f50-4307-9f9d-1d55268cfcd5', 'Playmodes', 1, '(Barcelona, Spain)', 'http://www.playmodes.com/', 'VJ Yourself'),
(42, 88, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '95e179f1-1542-4bdd-9811-a2c619111e71', 'Gary Sweeney', 1, '(San Antonio, TX)', '', 'Homeroom'),
(43, 89, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '55a8d8a2-6b56-4bcc-aaaf-656d91ba7e41', 'Amada Miller', 1, '(San Antonio, TX)', 'http://www.amadamiller.com/', 'Strange Slant of Light'),
(44, 90, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '8e873dea-3ab9-40c1-a756-0fceb8bab748', 'Wide Awake Creative + Hopscotch', 1, '(San Antonio, TX)', 'https://www.wideawakecreative.co/', 'Secrets'),
(45, 91, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '20adfd71-549c-4ca5-987a-0703f0004bdd', 'San Antonio Street Art Initiative', 1, '(San Antonio, TX)', 'https://sanantoniostreetart.org/', 'From the Outside In'),
(46, 92, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '7c1dfa35-b7b5-4ef8-a3c5-cfec98db72bf', 'Polis Interactive + Hopscotch', 1, '(Austin, TX)', 'https://www.instagram.com/polis_interactive/', 'Cloudscape'),
(47, 93, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '25ec6f6d-354f-4b78-8c9f-fb6a06c52bc2', 'Jared Ficklin & Joey Ficklin', 0, '(Austin, Texas)', '', 'Paint with RGB Wall'),
(48, 94, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '740235df-8134-4fab-a31c-91421ec07a3c', 'The Balloon Collective', 0, '(Austin, Texas)', 'https://www.theballooncollective.com/', 'Thunder & Lightning'),
(49, 95, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '87c08d0d-fddc-4e00-b7e3-27a9b674a323', 'vürv Collective', 0, '(Austin, Texas)', 'https://vurv.co/', 'mujō'),
(50, 96, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', 'e0f28577-d6ce-4670-ae63-7d9eb575ae43', 'Jerome Morrison', 0, '(Austin, Texas)', 'http://jalexmorrison.com/', 'HiFi God'),
(51, 97, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '0784c527-cd26-4fe1-a7bc-cd5e12fe70af', 'ANGRY CLOUD+DESCND', 0, '(Austin, Texas)', '', 'Neon Scream'),
(52, 98, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '84f2918d-bb24-4fa6-9ad9-e7f2d081cea9', 'Mickey Delp', 0, '(Austin, Texas)', 'http://mickeydelp.com/', 'Gemini 6B'),
(53, 99, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', 'cf6a6ef8-ba1d-47d8-8329-d754e72efe3b', 'Installation by Cheraya Esters and Malika Boudissa', 0, '(Austin, Texas)', '', 'Freefall'),
(54, 100, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '46d7f04f-9625-4eb0-99a4-e41660385fcb', 'dadageek', 0, '(Austin, Texas)', 'https://dadageek.com/', 'Spirits'),
(55, 101, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '72d88e16-60ef-4d69-8b3e-35fd855936aa', 'Hopscotch', 0, '(Austin, Texas)', '', 'Matrix'),
(56, 102, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', 'ebb49309-5b46-4d9c-b3cf-34997dcef956', 'Hopscotch', 1, '(Austin, Texas)', '', 'Experiences Over Things'),
(57, 103, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', 'f0897f06-ff45-427b-88a5-88e8d86feb8f', 'Hopscotch & Deep Eddy Vodka', 0, '(Austin, Texas)', '', 'Deep Eddy Ball Pit'),
(58, 104, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '8be2beda-4988-4619-a0ac-1bb52c8d52a1', NULL, 0, '(Austin, Texas)', '', 'HOPE Campaign');

-- --------------------------------------------------------

--
-- Table structure for table `matrixcontent_faqquestions`
--

CREATE TABLE `matrixcontent_faqquestions` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_faqs_faqQuestion` text,
  `field_faqs_faqAnswer` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `matrixcontent_faqquestions`
--

INSERT INTO `matrixcontent_faqquestions` (`id`, `elementId`, `siteId`, `dateCreated`, `dateUpdated`, `uid`, `field_faqs_faqQuestion`, `field_faqs_faqAnswer`) VALUES
(1, 174, 1, '2020-09-03 00:11:44', '2020-09-03 00:14:05', '802890bb-98df-4a2c-a769-160762000ef5', 'Where are you located?', '<p>We are located in the <a href=\"https://www.google.com/maps/place/711+Navarro+St+%23100,+San+Antonio,+TX+78205/@29.4281272,-98.4928058,17z/data=!3m1!4b1!4m5!3m4!1s0x865c5ff7e300eb3d:0xd24083b65785019e!8m2!3d29.4281272!4d-98.4906118\" target=\"_blank\" rel=\"noreferrer noopener\">Travis Park Plaza Building at 711 Navarro</a>. Please visit our <a href=\"/contact\">Contact</a> page for more information.</p>'),
(2, 175, 1, '2020-09-03 00:11:44', '2020-09-03 00:14:05', '6eb6360c-f84d-450c-95e5-34ffe9ecadeb', 'What are your hours?', '<p>Please visit our <a href=\"/contact\">Contact</a> page to view our hours of operation.</p>'),
(3, 184, 1, '2020-09-03 00:11:44', '2020-09-03 00:11:44', 'a66855d8-52bb-4516-a40f-a976c0571f72', 'Where are you located?', '<p>We are located in the Travis Park Plaza Building at 711 Navarro. Please visit our Contact page for more information.</p>'),
(4, 185, 1, '2020-09-03 00:11:44', '2020-09-03 00:11:44', '70ac5e8f-2805-4a42-b228-7aa91d1664c6', 'What are your hours?', '<p>Please visit our Contact page to view our hours of operation.</p>'),
(5, 186, 1, '2020-09-03 00:14:05', '2020-09-03 00:14:05', 'ca85e6f4-b2ce-49fd-af87-99dbd1fcecad', 'Where do I park? Is it free?', '<p>Three hour validated parking will be provided for all guests who park in the Travis Park Plaza Garage. Enter off of Travis Street between Navarro and St. Mary’s. Bring your parking ticket with you and show it to Hopscotch staff to receive your validation.</p>'),
(6, 195, 1, '2020-09-03 00:14:05', '2020-09-03 00:14:05', '0f1f9696-fa9f-4f0e-9dc3-c18cdf98a764', 'Where are you located?', '<p>We are located in the <a href=\"https://www.google.com/maps/place/711+Navarro+St+%23100,+San+Antonio,+TX+78205/@29.4281272,-98.4928058,17z/data=!3m1!4b1!4m5!3m4!1s0x865c5ff7e300eb3d:0xd24083b65785019e!8m2!3d29.4281272!4d-98.4906118\" target=\"_blank\" rel=\"noreferrer noopener\">Travis Park Plaza Building at 711 Navarro</a>. Please visit our <a href=\"/contact\">Contact</a> page for more information.</p>'),
(7, 196, 1, '2020-09-03 00:14:05', '2020-09-03 00:14:05', '6c0fb933-768d-458c-9b62-c3b9529de1af', 'What are your hours?', '<p>Please visit our <a href=\"/contact\">Contact</a> page to view our hours of operation.</p>'),
(8, 197, 1, '2020-09-03 00:14:05', '2020-09-03 00:14:05', '61725350-0ca9-4e2a-b085-d9678530b82a', 'Where do I park? Is it free?', '<p>Three hour validated parking will be provided for all guests who park in the Travis Park Plaza Garage. Enter off of Travis Street between Navarro and St. Mary’s. Bring your parking ticket with you and show it to Hopscotch staff to receive your validation.</p>'),
(9, 199, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', 'dd30a706-fce2-4e40-9c69-1c225b031c39', 'How much are tickets?', '<p>$24 for Adults (13 - 59) <br />$20 for Seniors, Veterans, Teachers, Healthcare Workers &amp; Students <br />(Must show valid ID)<br />$15 for Children (4-12)<br />$0 for Children (0-3)</p>\n\n\n\n'),
(10, 200, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', 'b5358942-2039-493b-953c-ee187cb06dae', 'Do I have to have a ticket to enter?', '<p>You do not have to have a ticket for our public lounge, gift shop, patio or food truck spaces. You will need a ticket to enter our gallery space. Due to COVID restrictions you may experience wait times to enter the public spaces if we are at capacity.</p>'),
(11, 201, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '739b8a9a-45a9-4447-b1a1-f2dc0e81c794', 'Can I buy tickets at the door?', '<p>We highly recommend purchasing tickets in advance. Limited tickets may be available day-of, but can not be guaranteed. You do not need to print your ticket, please bring your electronic copy that was emailed to you at time of purchase.</p>'),
(12, 202, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '4d89b8ad-541b-4e1c-b941-c28c5fc82acc', 'Can I pay in cash?', '<p>As part of our ongoing safety measures, Hopscotch is now cashless. All guests must pay via credit or debit card for all purchases.</p>'),
(13, 203, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '286f6e0c-e279-4712-9304-25180062f45e', 'Do I have to sign a waiver?', '<p>All guests must sign a waiver online before entering or at our check-in desk upon entering the space.</p>'),
(14, 204, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', 'cd85e37c-2f12-4f97-8f79-cdcd7ed4aafa', 'Can I transfer my ticket?', '<p>Tickets are non-refundable and non-transferrable. One person\'s ID in your party must match the name on one ticket (the rest of the names are interchangeable).</p>'),
(15, 205, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', 'de52a166-a4d6-4f06-a059-f379139ec45e', 'What time do I need to arrive for my timed ticket?', '<p>You are welcome to arrive early to enjoy a beverage from our lobby lounge or purchase bites from our food truck. You may enter the gallery no earlier than 15 minutes prior to your scheduled ticket time. If you arrive 30 minutes after your purchased time slot, you will not be guaranteed access into the gallery.</p>'),
(16, 206, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '52740018-2b7f-40be-b2b5-fff839de8dea', 'What do I need for check in?', '<p>Please bring your photo ID and an electronic copy of your ticket. Tickets are non-refundable and non-transferrable. One person\'s ID in your party must match the name on one ticket (the rest of the names are interchangeable). Once inside you’ll sign a required liability waiver and get a brief orientation on how best to experience Hopscotch!</p>'),
(17, 207, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', 'e7d324a1-3afc-4936-ab1a-c0c6b9cb82ab', 'Can I leave and come back in?', '<p>If you are following our safety guidelines, you may enter as long as we aren’t capacity. You will not be able to re-enter the gallery space once you have exited.</p>'),
(18, 208, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '55673afe-d36b-48b5-85dd-0da112e4b070', 'Can I change my ticket time or get a refund?', '<p>All ticket sales are final. Tickets are non-refundable and non-transferable.</p>'),
(19, 217, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '5c604ae3-8128-42f6-a17c-52bc88397d9f', 'Where are you located?', '<p>We are located in the <a href=\"https://www.google.com/maps/place/711+Navarro+St+%23100,+San+Antonio,+TX+78205/@29.4281272,-98.4928058,17z/data=!3m1!4b1!4m5!3m4!1s0x865c5ff7e300eb3d:0xd24083b65785019e!8m2!3d29.4281272!4d-98.4906118\" target=\"_blank\" rel=\"noreferrer noopener\">Travis Park Plaza Building at 711 Navarro</a>. Please visit our <a href=\"/contact\">Contact</a> page for more information.</p>'),
(20, 218, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '81ab17ac-1e3a-481e-90a9-a76c6a7d5948', 'What are your hours?', '<p>Please visit our <a href=\"/contact\">Contact</a> page to view our hours of operation.</p>'),
(21, 219, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '45285158-92c1-42db-abf8-d001ee12befa', 'Where do I park? Is it free?', '<p>Three hour validated parking will be provided for all guests who park in the Travis Park Plaza Garage. Enter off of Travis Street between Navarro and St. Mary’s. Bring your parking ticket with you and show it to Hopscotch staff to receive your validation.</p>'),
(22, 221, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', 'fbb8b2c8-ddee-4a21-b0d6-8be3c6ec8254', 'How much are tickets?', '<p>$24 for Adults (13 - 59) <br />$20 for Seniors, Veterans, Teachers, Healthcare Workers &amp; Students <br />(Must show valid ID)<br />$15 for Children (4-12)<br />$0 for Children (0-3)</p>\n\n\n\n'),
(23, 222, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '75aa1e05-b459-47e7-99d8-6d83eb92fd67', 'Do I have to have a ticket to enter?', '<p>You do not have to have a ticket for our public lounge, gift shop, patio or food truck spaces. You will need a ticket to enter our gallery space. Due to COVID restrictions you may experience wait times to enter the public spaces if we are at capacity.</p>'),
(24, 223, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '269428ba-ae30-4d26-b4cb-922adeca0d9a', 'Can I buy tickets at the door?', '<p>We highly recommend purchasing tickets in advance. Limited tickets may be available day-of, but can not be guaranteed. You do not need to print your ticket, please bring your electronic copy that was emailed to you at time of purchase.</p>'),
(25, 224, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '4c6527c2-7c5d-45ca-b695-4b3f08665fcd', 'Can I pay in cash?', '<p>As part of our ongoing safety measures, Hopscotch is now cashless. All guests must pay via credit or debit card for all purchases.</p>'),
(26, 225, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', 'a04920a9-e796-4386-b0bc-822d1c80ef99', 'Do I have to sign a waiver?', '<p>All guests must sign a waiver online before entering or at our check-in desk upon entering the space.</p>'),
(27, 226, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '12669820-dea0-426a-9c26-24b77bd00224', 'Can I transfer my ticket?', '<p>Tickets are non-refundable and non-transferrable. One person\'s ID in your party must match the name on one ticket (the rest of the names are interchangeable).</p>'),
(28, 227, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', 'bac1894a-8c83-48f4-87b8-fe0af80f208c', 'What time do I need to arrive for my timed ticket?', '<p>You are welcome to arrive early to enjoy a beverage from our lobby lounge or purchase bites from our food truck. You may enter the gallery no earlier than 15 minutes prior to your scheduled ticket time. If you arrive 30 minutes after your purchased time slot, you will not be guaranteed access into the gallery.</p>'),
(29, 228, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '6f3f9024-13bb-4d2e-9cd1-8384b7aeac90', 'What do I need for check in?', '<p>Please bring your photo ID and an electronic copy of your ticket. Tickets are non-refundable and non-transferrable. One person\'s ID in your party must match the name on one ticket (the rest of the names are interchangeable). Once inside you’ll sign a required liability waiver and get a brief orientation on how best to experience Hopscotch!</p>'),
(30, 229, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', 'f88263fd-50e7-4925-83cf-05d62fe753b1', 'Can I leave and come back in?', '<p>If you are following our safety guidelines, you may enter as long as we aren’t capacity. You will not be able to re-enter the gallery space once you have exited.</p>'),
(31, 230, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '52a64cc5-50bd-4606-9c15-ca165a66a784', 'Can I change my ticket time or get a refund?', '<p>All ticket sales are final. Tickets are non-refundable and non-transferable.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `matrixcontent_faqs`
--

CREATE TABLE `matrixcontent_faqs` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_faqSection_faqSectionTitle` text,
  `field_faqSection_faq` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `matrixcontent_faqs`
--

INSERT INTO `matrixcontent_faqs` (`id`, `elementId`, `siteId`, `dateCreated`, `dateUpdated`, `uid`, `field_faqSection_faqSectionTitle`, `field_faqSection_faq`) VALUES
(1, 105, 1, '2020-09-01 18:33:52', '2020-09-01 18:33:52', '7ced7706-f6ca-457e-a592-b338cb2981d2', 'The Basics', '[{\"col1\":\"Where are you located?\",\"col2\":\"We are located in the Travis Park Plaza Building at 711 Navarro. Please visit our Contact page for more information.\"},{\"col1\":\"What are your hours?\",\"col2\":\"Please visit our Contact page to view our hours of operation.\"},{\"col1\":\"Where do I park? Is it free?\",\"col2\":\"Three hour validated parking will be provided for all guests who park in the Travis Park Plaza Garage. Enter off of Travis Street between Navarro and St. Mary’s. Bring your parking ticket with you and show it to Hopscotch staff to receive your validation.\"}]'),
(2, 106, 1, '2020-09-01 18:33:52', '2020-09-01 18:33:52', '5127f947-edf7-463a-96ba-ee4ae04667d4', 'TICKETING AND ADMISSION', '[{\"col1\":\"How much are tickets?\",\"col2\":\"$24 for Adults (13 - 59)\\r\\n$20 for Seniors, Veterans, Teachers, Healthcare Workers & Students (Must show valid ID)\\r\\n$15 for Children (4-12)\\r\\n$0 for Children (0-3)\"},{\"col1\":\"Do I have to have a ticket to enter?\",\"col2\":\"You do not have to have a ticket for our public lounge, gift shop, patio or food truck spaces. You will need a ticket to enter our gallery space. Due to COVID restrictions you may experience wait times to enter the public spaces if we are at capacity.\"},{\"col1\":\"Can I buy tickets at the door?\",\"col2\":\"We highly recommend purchasing tickets in advance. Limited tickets may be available day-of, but can not be guaranteed. You do not need to print your ticket, please bring your electronic copy that was emailed to you at time of purchase.\"},{\"col1\":\"Can I pay in cash?\",\"col2\":\"As part of our ongoing safety measures, Hopscotch is now cashless. All guests must pay via credit or debit card for all purchases.\"},{\"col1\":\"Do I have to sign a waiver?\",\"col2\":\"All guests must sign a waiver online before entering or at our check-in desk upon entering the space.\"},{\"col1\":\"Can I transfer my ticket?\",\"col2\":\"Tickets are non-refundable and non-transferrable. One person\'s ID in your party must match the name on one ticket (the rest of the names are interchangeable).\"},{\"col1\":\"What time do I need to arrive for my timed ticket?\",\"col2\":\"You are welcome to arrive early to enjoy a beverage from our lobby lounge or purchase bites from our food truck. You may enter the gallery no earlier than 15 minutes prior to your scheduled ticket time. If you arrive 30 minutes after your purchased time slot, you will not be guaranteed access into the gallery.\"},{\"col1\":\"What do I need for check in?\",\"col2\":\"Please bring your photo ID and an electronic copy of your ticket. Tickets are non-refundable and non-transferrable. One person\'s ID in your party must match the name on one ticket (the rest of the names are interchangeable). Once inside you’ll sign a required liability waiver and get a brief orientation on how best to experience Hopscotch!\"},{\"col1\":\"Can I leave and come back in?\",\"col2\":\"If you are following our safety guidelines, you may enter as long as we aren’t capacity. You will not be able to re-enter the gallery space once you have exited.\"},{\"col1\":\"Can I change my ticket time or get a refund?\",\"col2\":\"All ticket sales are final. Tickets are non-refundable and non-transferable.\"}]'),
(3, 107, 1, '2020-09-01 18:33:52', '2020-09-01 18:33:52', '0afdd9ec-d801-4f82-8167-0cdc4a144d68', 'THE EXPERIENCE', '[{\"col1\":\"How long is the gallery experience?\",\"col2\":\"It varies for each guest; we recommend spending at least an hour so that you have time to explore each different installation. Afterward, explore our gift shop and stay to talk about your experience over some great local food and beverage on our patio.\"},{\"col1\":\"Is Hopscotch for all ages?\",\"col2\":\"Hopscotch welcomes all audiences, though some installations may be more adult-focused than others. Children under the age of 18 must be accompanied by an adult at all times. Guests under 18 are not allowed after 7:00pm. Many installations are more about looking or listening than touching, so we ask that adults supervise accordingly. Wall text and our staff are there to guide you through to ensure you experience everything in the best way possible!\"},{\"col1\":\"Can I bring food and beverages into Hopscotch? Do you sell food and beverages at Hopscotch?\",\"col2\":\"Outside food or beverages may not be brought into Hopscotch. There are drinking fountains and a hydration station should you wish to bring a refillable water bottle. We also have bottles available for purchase.\"},{\"col1\":\"Do you sell food and beverages at Hopscotch?\",\"col2\":\"We have a full menu of alcoholic and non-alcoholic beverages available in our lounge that you can purchase to walk with throughout our space or sit down to enjoy after your experience. You can find the Smack’s Chicken Shack food truck on our patio.\"},{\"col1\":\"Can I book a group outing or event?\",\"col2\":\"We are strictly following safety restrictions on group outings. To discuss options, pricing and availability please contact us at curate@letshopscotch.com.\"},{\"col1\":\"Are there any rules about taking photos?\",\"col2\":\"We want you to have fun and enjoy yourself in every moment. Please take as many photos as you like, but also please be considerate of others enjoying the exhibit. We also encourage you to put your phone away at times to fully immerse yourself in the experience. Tripods, excessive props, costume changes, commercial or product shoots, media shoots, press interviews, and all professional video equipment are prohibited without advance approval and accompaniment from a Hopscotch representative. Contact us at opportunity@letshopscotch.com for requests. We are committed to working with and giving back to nonprofit groups in the communities we create in. We strive to support as many local artists and non-profit groups as possible.\"},{\"col1\":\"Do you sell Hopscotch merchandise and other gifts?\",\"col2\":\"Yes! We have a gift shop full of unique curiosities that we encourage you to explore. Our retail area is part of our public space that is open to the public so you don\'t need a ticket to visit. There are no returns or exchanges on gift shop items.\"}]'),
(4, 108, 1, '2020-09-01 18:33:52', '2020-09-01 18:33:52', 'ba6f45b9-9c0e-4e7f-aca0-b5f51b338b42', 'ACCESSIBILITY', '[{\"col1\":\"Is there somewhere to store strollers and other items?\",\"col2\":\"Strollers and large bags will not be allowed into the experience. We will have a small storage area in our lobby that you may check items at if you took public transit. If you drove we kindly ask that you leave large items in your vehicle. In order to fully enjoy the experience we recommend that you be as hands-free as possible.\"},{\"col1\":\"Are there bathrooms?\",\"col2\":\"Yes, we have easily accessible bathrooms available for you to use at any time.\"},{\"col1\":\"Are pets allowed?\",\"col2\":\"No. Pets, unfortunately, are not allowed. We do allow service animals.\"},{\"col1\":\"Is there a lost and found?\",\"col2\":\"Please be extra diligent in holding on to your belongings, particularly cell phones. In order to fully enjoy the experience we recommend that you be as hands free as possible and leave extra items in your vehicle. We can not guarantee that all lost items will be found and are not responsible for missing items. Please email contact@letshopscotch.com to inquire about a missing item.\"},{\"col1\":\"Are you ADA accessible?\",\"col2\":\"Yes, Hopscotch is ADA accessible.\"}]'),
(5, 109, 1, '2020-09-01 18:33:52', '2020-09-01 18:33:52', '042fa4e9-610e-4b53-a982-be42d54b396a', 'SAFETY', '[{\"col1\":\"What are your health and safety procedures?\",\"col2\":\"Please visit our COVID page.\"},{\"col1\":\"Can I wear a costume?\",\"col2\":\"We love uniqueness and creativity more than anyone. What we don’t love are costumes that obscure your face, have accessories or are culturally inappropriate. Our staff will have the right to refuse you entry if we find you to be in violation of this policy.\"},{\"col1\":\"Do you allow weapons?\",\"col2\":\"We absolutely do not allow any firearms, knives, weapons or illegal substances of any kind.\"}]'),
(6, 110, 1, '2020-09-01 18:33:52', '2020-09-02 23:55:21', 'ca2897fd-452c-4b6e-9443-4ee1f51dc6aa', 'GENERAL', '[{\"col1\":\"What is Hopscotch?\",\"col2\":\"Read more about us on our About page.\"},{\"col1\":\"Who curated the experience?\",\"col2\":\"This experience was curated by Hopscotch. We are committed to creating unique, immersive art experiences that are a respite from the outside world and invoke a sense of joy and wonder in our guests. We strive to engage with and support local, national and international artists and give them a platform that allows them to showcase their works.\"},{\"col1\":\"How long is this here for?\",\"col2\":\"Hopscotch is here to stay! This is a permanent location rather than a short term exhibition.\"},{\"col1\":\"I’m visiting from out of town, where should I stay?\",\"col2\":\"Email contact@letshoshopscotch.com and we will send you a list of our favorite hotels in the area!\"},{\"col1\":\"How can I become part of the Hopscotch team?\",\"col2\":\"Please email us at join@letshopscotch.com\"}]'),
(7, 112, 1, '2020-09-01 18:33:52', '2020-09-01 18:33:52', '6aa6d4a5-78ef-4589-960a-9a756a25e6f4', 'The Basics', '[{\"col1\":\"Where are you located?\",\"col2\":\"We are located in the Travis Park Plaza Building at 711 Navarro. Please visit our Contact page for more information.\"},{\"col1\":\"What are your hours?\",\"col2\":\"Please visit our Contact page to view our hours of operation.\"},{\"col1\":\"Where do I park? Is it free?\",\"col2\":\"Three hour validated parking will be provided for all guests who park in the Travis Park Plaza Garage. Enter off of Travis Street between Navarro and St. Mary’s. Bring your parking ticket with you and show it to Hopscotch staff to receive your validation.\"}]'),
(8, 113, 1, '2020-09-01 18:33:52', '2020-09-01 18:33:52', '0ea35130-dbce-45e4-b69e-93b83fa1fcca', 'TICKETING AND ADMISSION', '[{\"col1\":\"How much are tickets?\",\"col2\":\"$24 for Adults (13 - 59)\\r\\n$20 for Seniors, Veterans, Teachers, Healthcare Workers & Students (Must show valid ID)\\r\\n$15 for Children (4-12)\\r\\n$0 for Children (0-3)\"},{\"col1\":\"Do I have to have a ticket to enter?\",\"col2\":\"You do not have to have a ticket for our public lounge, gift shop, patio or food truck spaces. You will need a ticket to enter our gallery space. Due to COVID restrictions you may experience wait times to enter the public spaces if we are at capacity.\"},{\"col1\":\"Can I buy tickets at the door?\",\"col2\":\"We highly recommend purchasing tickets in advance. Limited tickets may be available day-of, but can not be guaranteed. You do not need to print your ticket, please bring your electronic copy that was emailed to you at time of purchase.\"},{\"col1\":\"Can I pay in cash?\",\"col2\":\"As part of our ongoing safety measures, Hopscotch is now cashless. All guests must pay via credit or debit card for all purchases.\"},{\"col1\":\"Do I have to sign a waiver?\",\"col2\":\"All guests must sign a waiver online before entering or at our check-in desk upon entering the space.\"},{\"col1\":\"Can I transfer my ticket?\",\"col2\":\"Tickets are non-refundable and non-transferrable. One person\'s ID in your party must match the name on one ticket (the rest of the names are interchangeable).\"},{\"col1\":\"What time do I need to arrive for my timed ticket?\",\"col2\":\"You are welcome to arrive early to enjoy a beverage from our lobby lounge or purchase bites from our food truck. You may enter the gallery no earlier than 15 minutes prior to your scheduled ticket time. If you arrive 30 minutes after your purchased time slot, you will not be guaranteed access into the gallery.\"},{\"col1\":\"What do I need for check in?\",\"col2\":\"Please bring your photo ID and an electronic copy of your ticket. Tickets are non-refundable and non-transferrable. One person\'s ID in your party must match the name on one ticket (the rest of the names are interchangeable). Once inside you’ll sign a required liability waiver and get a brief orientation on how best to experience Hopscotch!\"},{\"col1\":\"Can I leave and come back in?\",\"col2\":\"If you are following our safety guidelines, you may enter as long as we aren’t capacity. You will not be able to re-enter the gallery space once you have exited.\"},{\"col1\":\"Can I change my ticket time or get a refund?\",\"col2\":\"All ticket sales are final. Tickets are non-refundable and non-transferable.\"}]'),
(9, 114, 1, '2020-09-01 18:33:52', '2020-09-01 18:33:52', '2ebbc6e2-8bea-467f-ac4b-5a08ac8c4164', 'THE EXPERIENCE', '[{\"col1\":\"How long is the gallery experience?\",\"col2\":\"It varies for each guest; we recommend spending at least an hour so that you have time to explore each different installation. Afterward, explore our gift shop and stay to talk about your experience over some great local food and beverage on our patio.\"},{\"col1\":\"Is Hopscotch for all ages?\",\"col2\":\"Hopscotch welcomes all audiences, though some installations may be more adult-focused than others. Children under the age of 18 must be accompanied by an adult at all times. Guests under 18 are not allowed after 7:00pm. Many installations are more about looking or listening than touching, so we ask that adults supervise accordingly. Wall text and our staff are there to guide you through to ensure you experience everything in the best way possible!\"},{\"col1\":\"Can I bring food and beverages into Hopscotch? Do you sell food and beverages at Hopscotch?\",\"col2\":\"Outside food or beverages may not be brought into Hopscotch. There are drinking fountains and a hydration station should you wish to bring a refillable water bottle. We also have bottles available for purchase.\"},{\"col1\":\"Do you sell food and beverages at Hopscotch?\",\"col2\":\"We have a full menu of alcoholic and non-alcoholic beverages available in our lounge that you can purchase to walk with throughout our space or sit down to enjoy after your experience. You can find the Smack’s Chicken Shack food truck on our patio.\"},{\"col1\":\"Can I book a group outing or event?\",\"col2\":\"We are strictly following safety restrictions on group outings. To discuss options, pricing and availability please contact us at curate@letshopscotch.com.\"},{\"col1\":\"Are there any rules about taking photos?\",\"col2\":\"We want you to have fun and enjoy yourself in every moment. Please take as many photos as you like, but also please be considerate of others enjoying the exhibit. We also encourage you to put your phone away at times to fully immerse yourself in the experience. Tripods, excessive props, costume changes, commercial or product shoots, media shoots, press interviews, and all professional video equipment are prohibited without advance approval and accompaniment from a Hopscotch representative. Contact us at opportunity@letshopscotch.com for requests. We are committed to working with and giving back to nonprofit groups in the communities we create in. We strive to support as many local artists and non-profit groups as possible.\"},{\"col1\":\"Do you sell Hopscotch merchandise and other gifts?\",\"col2\":\"Yes! We have a gift shop full of unique curiosities that we encourage you to explore. Our retail area is part of our public space that is open to the public so you don\'t need a ticket to visit. There are no returns or exchanges on gift shop items.\"}]'),
(10, 115, 1, '2020-09-01 18:33:52', '2020-09-01 18:33:52', '4079bfe4-c042-47bf-ad14-69f8e9a314f2', 'ACCESSIBILITY', '[{\"col1\":\"Is there somewhere to store strollers and other items?\",\"col2\":\"Strollers and large bags will not be allowed into the experience. We will have a small storage area in our lobby that you may check items at if you took public transit. If you drove we kindly ask that you leave large items in your vehicle. In order to fully enjoy the experience we recommend that you be as hands-free as possible.\"},{\"col1\":\"Are there bathrooms?\",\"col2\":\"Yes, we have easily accessible bathrooms available for you to use at any time.\"},{\"col1\":\"Are pets allowed?\",\"col2\":\"No. Pets, unfortunately, are not allowed. We do allow service animals.\"},{\"col1\":\"Is there a lost and found?\",\"col2\":\"Please be extra diligent in holding on to your belongings, particularly cell phones. In order to fully enjoy the experience we recommend that you be as hands free as possible and leave extra items in your vehicle. We can not guarantee that all lost items will be found and are not responsible for missing items. Please email contact@letshopscotch.com to inquire about a missing item.\"},{\"col1\":\"Are you ADA accessible?\",\"col2\":\"Yes, Hopscotch is ADA accessible.\"}]'),
(11, 116, 1, '2020-09-01 18:33:52', '2020-09-01 18:33:52', '5565b106-1b6e-40c5-8685-f3c6a993d94e', 'SAFETY', '[{\"col1\":\"What are your health and safety procedures?\",\"col2\":\"Please visit our COVID page.\"},{\"col1\":\"Can I wear a costume?\",\"col2\":\"We love uniqueness and creativity more than anyone. What we don’t love are costumes that obscure your face, have accessories or are culturally inappropriate. Our staff will have the right to refuse you entry if we find you to be in violation of this policy.\"},{\"col1\":\"Do you allow weapons?\",\"col2\":\"We absolutely do not allow any firearms, knives, weapons or illegal substances of any kind.\"}]'),
(12, 117, 1, '2020-09-01 18:33:52', '2020-09-01 18:33:52', '61dd9c33-f1d6-4765-9f25-ab5d60d71228', 'GENERAL', '[{\"col1\":\"What is Hopscotch?\",\"col2\":\"Read more about us on our About page.\"},{\"col1\":\"Who curated the experience?\",\"col2\":\"This experience was curated by Hopscotch. We are committed to creating unique, immersive art experiences that are a respite from the outside world and invoke a sense of joy and wonder in our guests. We strive to engage with and support local, national and international artists and give them a platform that allows them to showcase their works.\"},{\"col1\":\"How long is this here for?\",\"col2\":\"Hopscotch is here to stay! This is a permanent location rather than a short term exhibition.\"},{\"col1\":\"I’m visiting from out of town, where should I stay?\",\"col2\":\"Email contact@letshoshopscotch.com and we will send you a list of our favorite hotels in the area!\"},{\"col1\":\"How can I become part of the Hopscotch team?\",\"col2\":\"Please email us at join@letshopscotch.com\"}]'),
(13, 153, 1, '2020-09-02 23:54:47', '2020-09-02 23:54:47', '1a26a53f-c4ae-49b6-b02d-984adb10f9f7', 'The Basics', '[{\"col1\":\"Where are you located?\",\"col2\":\"We are located in the Travis Park Plaza Building at 711 Navarro. Please visit our Contact page for more information.\"},{\"col1\":\"What are your hours?\",\"col2\":\"Please visit our Contact page to view our hours of operation.\"},{\"col1\":\"Where do I park? Is it free?\",\"col2\":\"Three hour validated parking will be provided for all guests who park in the Travis Park Plaza Garage. Enter off of Travis Street between Navarro and St. Mary’s. Bring your parking ticket with you and show it to Hopscotch staff to receive your validation.\"}]'),
(14, 154, 1, '2020-09-02 23:54:47', '2020-09-02 23:54:47', 'a2847636-aef8-4670-82c7-a09c76ad304e', 'TICKETING AND ADMISSION', '[{\"col1\":\"How much are tickets?\",\"col2\":\"$24 for Adults (13 - 59)\\r\\n$20 for Seniors, Veterans, Teachers, Healthcare Workers & Students (Must show valid ID)\\r\\n$15 for Children (4-12)\\r\\n$0 for Children (0-3)\"},{\"col1\":\"Do I have to have a ticket to enter?\",\"col2\":\"You do not have to have a ticket for our public lounge, gift shop, patio or food truck spaces. You will need a ticket to enter our gallery space. Due to COVID restrictions you may experience wait times to enter the public spaces if we are at capacity.\"},{\"col1\":\"Can I buy tickets at the door?\",\"col2\":\"We highly recommend purchasing tickets in advance. Limited tickets may be available day-of, but can not be guaranteed. You do not need to print your ticket, please bring your electronic copy that was emailed to you at time of purchase.\"},{\"col1\":\"Can I pay in cash?\",\"col2\":\"As part of our ongoing safety measures, Hopscotch is now cashless. All guests must pay via credit or debit card for all purchases.\"},{\"col1\":\"Do I have to sign a waiver?\",\"col2\":\"All guests must sign a waiver online before entering or at our check-in desk upon entering the space.\"},{\"col1\":\"Can I transfer my ticket?\",\"col2\":\"Tickets are non-refundable and non-transferrable. One person\'s ID in your party must match the name on one ticket (the rest of the names are interchangeable).\"},{\"col1\":\"What time do I need to arrive for my timed ticket?\",\"col2\":\"You are welcome to arrive early to enjoy a beverage from our lobby lounge or purchase bites from our food truck. You may enter the gallery no earlier than 15 minutes prior to your scheduled ticket time. If you arrive 30 minutes after your purchased time slot, you will not be guaranteed access into the gallery.\"},{\"col1\":\"What do I need for check in?\",\"col2\":\"Please bring your photo ID and an electronic copy of your ticket. Tickets are non-refundable and non-transferrable. One person\'s ID in your party must match the name on one ticket (the rest of the names are interchangeable). Once inside you’ll sign a required liability waiver and get a brief orientation on how best to experience Hopscotch!\"},{\"col1\":\"Can I leave and come back in?\",\"col2\":\"If you are following our safety guidelines, you may enter as long as we aren’t capacity. You will not be able to re-enter the gallery space once you have exited.\"},{\"col1\":\"Can I change my ticket time or get a refund?\",\"col2\":\"All ticket sales are final. Tickets are non-refundable and non-transferable.\"}]'),
(15, 155, 1, '2020-09-02 23:54:47', '2020-09-02 23:54:47', 'cd8f1502-9bcf-4e99-9728-af06a9674516', 'THE EXPERIENCE', '[{\"col1\":\"How long is the gallery experience?\",\"col2\":\"It varies for each guest; we recommend spending at least an hour so that you have time to explore each different installation. Afterward, explore our gift shop and stay to talk about your experience over some great local food and beverage on our patio.\"},{\"col1\":\"Is Hopscotch for all ages?\",\"col2\":\"Hopscotch welcomes all audiences, though some installations may be more adult-focused than others. Children under the age of 18 must be accompanied by an adult at all times. Guests under 18 are not allowed after 7:00pm. Many installations are more about looking or listening than touching, so we ask that adults supervise accordingly. Wall text and our staff are there to guide you through to ensure you experience everything in the best way possible!\"},{\"col1\":\"Can I bring food and beverages into Hopscotch? Do you sell food and beverages at Hopscotch?\",\"col2\":\"Outside food or beverages may not be brought into Hopscotch. There are drinking fountains and a hydration station should you wish to bring a refillable water bottle. We also have bottles available for purchase.\"},{\"col1\":\"Do you sell food and beverages at Hopscotch?\",\"col2\":\"We have a full menu of alcoholic and non-alcoholic beverages available in our lounge that you can purchase to walk with throughout our space or sit down to enjoy after your experience. You can find the Smack’s Chicken Shack food truck on our patio.\"},{\"col1\":\"Can I book a group outing or event?\",\"col2\":\"We are strictly following safety restrictions on group outings. To discuss options, pricing and availability please contact us at curate@letshopscotch.com.\"},{\"col1\":\"Are there any rules about taking photos?\",\"col2\":\"We want you to have fun and enjoy yourself in every moment. Please take as many photos as you like, but also please be considerate of others enjoying the exhibit. We also encourage you to put your phone away at times to fully immerse yourself in the experience. Tripods, excessive props, costume changes, commercial or product shoots, media shoots, press interviews, and all professional video equipment are prohibited without advance approval and accompaniment from a Hopscotch representative. Contact us at opportunity@letshopscotch.com for requests. We are committed to working with and giving back to nonprofit groups in the communities we create in. We strive to support as many local artists and non-profit groups as possible.\"},{\"col1\":\"Do you sell Hopscotch merchandise and other gifts?\",\"col2\":\"Yes! We have a gift shop full of unique curiosities that we encourage you to explore. Our retail area is part of our public space that is open to the public so you don\'t need a ticket to visit. There are no returns or exchanges on gift shop items.\"}]'),
(16, 156, 1, '2020-09-02 23:54:47', '2020-09-02 23:54:47', 'e271de6c-d3cc-4954-a602-2ec467132260', 'ACCESSIBILITY', '[{\"col1\":\"Is there somewhere to store strollers and other items?\",\"col2\":\"Strollers and large bags will not be allowed into the experience. We will have a small storage area in our lobby that you may check items at if you took public transit. If you drove we kindly ask that you leave large items in your vehicle. In order to fully enjoy the experience we recommend that you be as hands-free as possible.\"},{\"col1\":\"Are there bathrooms?\",\"col2\":\"Yes, we have easily accessible bathrooms available for you to use at any time.\"},{\"col1\":\"Are pets allowed?\",\"col2\":\"No. Pets, unfortunately, are not allowed. We do allow service animals.\"},{\"col1\":\"Is there a lost and found?\",\"col2\":\"Please be extra diligent in holding on to your belongings, particularly cell phones. In order to fully enjoy the experience we recommend that you be as hands free as possible and leave extra items in your vehicle. We can not guarantee that all lost items will be found and are not responsible for missing items. Please email contact@letshopscotch.com to inquire about a missing item.\"},{\"col1\":\"Are you ADA accessible?\",\"col2\":\"Yes, Hopscotch is ADA accessible.\"}]'),
(17, 157, 1, '2020-09-02 23:54:47', '2020-09-02 23:54:47', '97b543c6-c960-4939-9009-5079b6e3d119', 'SAFETY', '[{\"col1\":\"What are your health and safety procedures?\",\"col2\":\"Please visit our COVID page.\"},{\"col1\":\"Can I wear a costume?\",\"col2\":\"We love uniqueness and creativity more than anyone. What we don’t love are costumes that obscure your face, have accessories or are culturally inappropriate. Our staff will have the right to refuse you entry if we find you to be in violation of this policy.\"},{\"col1\":\"Do you allow weapons?\",\"col2\":\"We absolutely do not allow any firearms, knives, weapons or illegal substances of any kind.\"}]'),
(18, 158, 1, '2020-09-02 23:54:47', '2020-09-02 23:54:47', 'dad22478-e34a-43fc-8209-72acd991b90d', 'GENERAL', '[{\"col1\":\"What is Hopscotch?\",\"col2\":\"Read more about us on our About page.\"},{\"col1\":\"Who curated the experience?\",\"col2\":\"This experience was curated by Hopscotch. We are committed to creating unique, immersive art experiences that are a respite from the outside world and invoke a sense of joy and wonder in our guests. We strive to engage with and support local, national and international artists and give them a platform that allows them to showcase their works.\"},{\"col1\":\"How long is this here for?\",\"col2\":\"Hopscotch is here to stay! This is a permanent location rather than a short term exhibition.\"},{\"col1\":\"I’m visiting from out of town, where should I stay?\",\"col2\":\"Email contact@letshoshopscotch.com and we will send you a list of our favorite hotels in the area!\"},{\"col1\":\"How can I become part of the Hopscotch team?\",\"col2\":\"Please email us at <a href=\\\"letshopscotch.com\\\">join@letshopscotch.com</a>\"}]'),
(19, 160, 1, '2020-09-02 23:55:21', '2020-09-02 23:55:21', 'b2f5fd83-aca6-4034-b9b0-1da9d8162079', 'The Basics', '[{\"col1\":\"Where are you located?\",\"col2\":\"We are located in the Travis Park Plaza Building at 711 Navarro. Please visit our Contact page for more information.\"},{\"col1\":\"What are your hours?\",\"col2\":\"Please visit our Contact page to view our hours of operation.\"},{\"col1\":\"Where do I park? Is it free?\",\"col2\":\"Three hour validated parking will be provided for all guests who park in the Travis Park Plaza Garage. Enter off of Travis Street between Navarro and St. Mary’s. Bring your parking ticket with you and show it to Hopscotch staff to receive your validation.\"}]'),
(20, 161, 1, '2020-09-02 23:55:21', '2020-09-02 23:55:21', 'eaecaa5b-f24c-4600-b816-02890ed41f13', 'TICKETING AND ADMISSION', '[{\"col1\":\"How much are tickets?\",\"col2\":\"$24 for Adults (13 - 59)\\r\\n$20 for Seniors, Veterans, Teachers, Healthcare Workers & Students (Must show valid ID)\\r\\n$15 for Children (4-12)\\r\\n$0 for Children (0-3)\"},{\"col1\":\"Do I have to have a ticket to enter?\",\"col2\":\"You do not have to have a ticket for our public lounge, gift shop, patio or food truck spaces. You will need a ticket to enter our gallery space. Due to COVID restrictions you may experience wait times to enter the public spaces if we are at capacity.\"},{\"col1\":\"Can I buy tickets at the door?\",\"col2\":\"We highly recommend purchasing tickets in advance. Limited tickets may be available day-of, but can not be guaranteed. You do not need to print your ticket, please bring your electronic copy that was emailed to you at time of purchase.\"},{\"col1\":\"Can I pay in cash?\",\"col2\":\"As part of our ongoing safety measures, Hopscotch is now cashless. All guests must pay via credit or debit card for all purchases.\"},{\"col1\":\"Do I have to sign a waiver?\",\"col2\":\"All guests must sign a waiver online before entering or at our check-in desk upon entering the space.\"},{\"col1\":\"Can I transfer my ticket?\",\"col2\":\"Tickets are non-refundable and non-transferrable. One person\'s ID in your party must match the name on one ticket (the rest of the names are interchangeable).\"},{\"col1\":\"What time do I need to arrive for my timed ticket?\",\"col2\":\"You are welcome to arrive early to enjoy a beverage from our lobby lounge or purchase bites from our food truck. You may enter the gallery no earlier than 15 minutes prior to your scheduled ticket time. If you arrive 30 minutes after your purchased time slot, you will not be guaranteed access into the gallery.\"},{\"col1\":\"What do I need for check in?\",\"col2\":\"Please bring your photo ID and an electronic copy of your ticket. Tickets are non-refundable and non-transferrable. One person\'s ID in your party must match the name on one ticket (the rest of the names are interchangeable). Once inside you’ll sign a required liability waiver and get a brief orientation on how best to experience Hopscotch!\"},{\"col1\":\"Can I leave and come back in?\",\"col2\":\"If you are following our safety guidelines, you may enter as long as we aren’t capacity. You will not be able to re-enter the gallery space once you have exited.\"},{\"col1\":\"Can I change my ticket time or get a refund?\",\"col2\":\"All ticket sales are final. Tickets are non-refundable and non-transferable.\"}]'),
(21, 162, 1, '2020-09-02 23:55:21', '2020-09-02 23:55:21', '7957ec48-8ff4-4236-9770-1e5bc4841a36', 'THE EXPERIENCE', '[{\"col1\":\"How long is the gallery experience?\",\"col2\":\"It varies for each guest; we recommend spending at least an hour so that you have time to explore each different installation. Afterward, explore our gift shop and stay to talk about your experience over some great local food and beverage on our patio.\"},{\"col1\":\"Is Hopscotch for all ages?\",\"col2\":\"Hopscotch welcomes all audiences, though some installations may be more adult-focused than others. Children under the age of 18 must be accompanied by an adult at all times. Guests under 18 are not allowed after 7:00pm. Many installations are more about looking or listening than touching, so we ask that adults supervise accordingly. Wall text and our staff are there to guide you through to ensure you experience everything in the best way possible!\"},{\"col1\":\"Can I bring food and beverages into Hopscotch? Do you sell food and beverages at Hopscotch?\",\"col2\":\"Outside food or beverages may not be brought into Hopscotch. There are drinking fountains and a hydration station should you wish to bring a refillable water bottle. We also have bottles available for purchase.\"},{\"col1\":\"Do you sell food and beverages at Hopscotch?\",\"col2\":\"We have a full menu of alcoholic and non-alcoholic beverages available in our lounge that you can purchase to walk with throughout our space or sit down to enjoy after your experience. You can find the Smack’s Chicken Shack food truck on our patio.\"},{\"col1\":\"Can I book a group outing or event?\",\"col2\":\"We are strictly following safety restrictions on group outings. To discuss options, pricing and availability please contact us at curate@letshopscotch.com.\"},{\"col1\":\"Are there any rules about taking photos?\",\"col2\":\"We want you to have fun and enjoy yourself in every moment. Please take as many photos as you like, but also please be considerate of others enjoying the exhibit. We also encourage you to put your phone away at times to fully immerse yourself in the experience. Tripods, excessive props, costume changes, commercial or product shoots, media shoots, press interviews, and all professional video equipment are prohibited without advance approval and accompaniment from a Hopscotch representative. Contact us at opportunity@letshopscotch.com for requests. We are committed to working with and giving back to nonprofit groups in the communities we create in. We strive to support as many local artists and non-profit groups as possible.\"},{\"col1\":\"Do you sell Hopscotch merchandise and other gifts?\",\"col2\":\"Yes! We have a gift shop full of unique curiosities that we encourage you to explore. Our retail area is part of our public space that is open to the public so you don\'t need a ticket to visit. There are no returns or exchanges on gift shop items.\"}]'),
(22, 163, 1, '2020-09-02 23:55:21', '2020-09-02 23:55:21', '245dff4e-6360-48c4-8f16-7b6d03a4e221', 'ACCESSIBILITY', '[{\"col1\":\"Is there somewhere to store strollers and other items?\",\"col2\":\"Strollers and large bags will not be allowed into the experience. We will have a small storage area in our lobby that you may check items at if you took public transit. If you drove we kindly ask that you leave large items in your vehicle. In order to fully enjoy the experience we recommend that you be as hands-free as possible.\"},{\"col1\":\"Are there bathrooms?\",\"col2\":\"Yes, we have easily accessible bathrooms available for you to use at any time.\"},{\"col1\":\"Are pets allowed?\",\"col2\":\"No. Pets, unfortunately, are not allowed. We do allow service animals.\"},{\"col1\":\"Is there a lost and found?\",\"col2\":\"Please be extra diligent in holding on to your belongings, particularly cell phones. In order to fully enjoy the experience we recommend that you be as hands free as possible and leave extra items in your vehicle. We can not guarantee that all lost items will be found and are not responsible for missing items. Please email contact@letshopscotch.com to inquire about a missing item.\"},{\"col1\":\"Are you ADA accessible?\",\"col2\":\"Yes, Hopscotch is ADA accessible.\"}]'),
(23, 164, 1, '2020-09-02 23:55:21', '2020-09-02 23:55:21', 'c1954822-1bd5-49f3-aebb-65aae524c173', 'SAFETY', '[{\"col1\":\"What are your health and safety procedures?\",\"col2\":\"Please visit our COVID page.\"},{\"col1\":\"Can I wear a costume?\",\"col2\":\"We love uniqueness and creativity more than anyone. What we don’t love are costumes that obscure your face, have accessories or are culturally inappropriate. Our staff will have the right to refuse you entry if we find you to be in violation of this policy.\"},{\"col1\":\"Do you allow weapons?\",\"col2\":\"We absolutely do not allow any firearms, knives, weapons or illegal substances of any kind.\"}]'),
(24, 165, 1, '2020-09-02 23:55:21', '2020-09-02 23:55:21', '933d6b40-9cdb-439e-8607-cfcd44808567', 'GENERAL', '[{\"col1\":\"What is Hopscotch?\",\"col2\":\"Read more about us on our About page.\"},{\"col1\":\"Who curated the experience?\",\"col2\":\"This experience was curated by Hopscotch. We are committed to creating unique, immersive art experiences that are a respite from the outside world and invoke a sense of joy and wonder in our guests. We strive to engage with and support local, national and international artists and give them a platform that allows them to showcase their works.\"},{\"col1\":\"How long is this here for?\",\"col2\":\"Hopscotch is here to stay! This is a permanent location rather than a short term exhibition.\"},{\"col1\":\"I’m visiting from out of town, where should I stay?\",\"col2\":\"Email contact@letshoshopscotch.com and we will send you a list of our favorite hotels in the area!\"},{\"col1\":\"How can I become part of the Hopscotch team?\",\"col2\":\"Please email us at join@letshopscotch.com\"}]'),
(25, 167, 1, '2020-09-03 00:09:26', '2020-09-03 00:09:26', '359bb1b4-a3d0-4b44-af4e-fccd20fdce34', 'The Basics', '[{\"col1\":\"Where are you located?\",\"col2\":\"We are located in the Travis Park Plaza Building at 711 Navarro. Please visit our Contact page for more information.\"},{\"col1\":\"What are your hours?\",\"col2\":\"Please visit our Contact page to view our hours of operation.\"},{\"col1\":\"Where do I park? Is it free?\",\"col2\":\"Three hour validated parking will be provided for all guests who park in the Travis Park Plaza Garage. Enter off of Travis Street between Navarro and St. Mary’s. Bring your parking ticket with you and show it to Hopscotch staff to receive your validation.\"}]'),
(26, 168, 1, '2020-09-03 00:09:26', '2020-09-03 00:09:26', 'e5d7535d-b4ea-43ef-82e4-a7d043887917', 'TICKETING AND ADMISSION', '[{\"col1\":\"How much are tickets?\",\"col2\":\"$24 for Adults (13 - 59)\\r\\n$20 for Seniors, Veterans, Teachers, Healthcare Workers & Students (Must show valid ID)\\r\\n$15 for Children (4-12)\\r\\n$0 for Children (0-3)\"},{\"col1\":\"Do I have to have a ticket to enter?\",\"col2\":\"You do not have to have a ticket for our public lounge, gift shop, patio or food truck spaces. You will need a ticket to enter our gallery space. Due to COVID restrictions you may experience wait times to enter the public spaces if we are at capacity.\"},{\"col1\":\"Can I buy tickets at the door?\",\"col2\":\"We highly recommend purchasing tickets in advance. Limited tickets may be available day-of, but can not be guaranteed. You do not need to print your ticket, please bring your electronic copy that was emailed to you at time of purchase.\"},{\"col1\":\"Can I pay in cash?\",\"col2\":\"As part of our ongoing safety measures, Hopscotch is now cashless. All guests must pay via credit or debit card for all purchases.\"},{\"col1\":\"Do I have to sign a waiver?\",\"col2\":\"All guests must sign a waiver online before entering or at our check-in desk upon entering the space.\"},{\"col1\":\"Can I transfer my ticket?\",\"col2\":\"Tickets are non-refundable and non-transferrable. One person\'s ID in your party must match the name on one ticket (the rest of the names are interchangeable).\"},{\"col1\":\"What time do I need to arrive for my timed ticket?\",\"col2\":\"You are welcome to arrive early to enjoy a beverage from our lobby lounge or purchase bites from our food truck. You may enter the gallery no earlier than 15 minutes prior to your scheduled ticket time. If you arrive 30 minutes after your purchased time slot, you will not be guaranteed access into the gallery.\"},{\"col1\":\"What do I need for check in?\",\"col2\":\"Please bring your photo ID and an electronic copy of your ticket. Tickets are non-refundable and non-transferrable. One person\'s ID in your party must match the name on one ticket (the rest of the names are interchangeable). Once inside you’ll sign a required liability waiver and get a brief orientation on how best to experience Hopscotch!\"},{\"col1\":\"Can I leave and come back in?\",\"col2\":\"If you are following our safety guidelines, you may enter as long as we aren’t capacity. You will not be able to re-enter the gallery space once you have exited.\"},{\"col1\":\"Can I change my ticket time or get a refund?\",\"col2\":\"All ticket sales are final. Tickets are non-refundable and non-transferable.\"}]'),
(27, 169, 1, '2020-09-03 00:09:26', '2020-09-03 00:09:26', 'ed568fc7-d6e5-4bc1-968f-01827abc4907', 'THE EXPERIENCE', '[{\"col1\":\"How long is the gallery experience?\",\"col2\":\"It varies for each guest; we recommend spending at least an hour so that you have time to explore each different installation. Afterward, explore our gift shop and stay to talk about your experience over some great local food and beverage on our patio.\"},{\"col1\":\"Is Hopscotch for all ages?\",\"col2\":\"Hopscotch welcomes all audiences, though some installations may be more adult-focused than others. Children under the age of 18 must be accompanied by an adult at all times. Guests under 18 are not allowed after 7:00pm. Many installations are more about looking or listening than touching, so we ask that adults supervise accordingly. Wall text and our staff are there to guide you through to ensure you experience everything in the best way possible!\"},{\"col1\":\"Can I bring food and beverages into Hopscotch? Do you sell food and beverages at Hopscotch?\",\"col2\":\"Outside food or beverages may not be brought into Hopscotch. There are drinking fountains and a hydration station should you wish to bring a refillable water bottle. We also have bottles available for purchase.\"},{\"col1\":\"Do you sell food and beverages at Hopscotch?\",\"col2\":\"We have a full menu of alcoholic and non-alcoholic beverages available in our lounge that you can purchase to walk with throughout our space or sit down to enjoy after your experience. You can find the Smack’s Chicken Shack food truck on our patio.\"},{\"col1\":\"Can I book a group outing or event?\",\"col2\":\"We are strictly following safety restrictions on group outings. To discuss options, pricing and availability please contact us at curate@letshopscotch.com.\"},{\"col1\":\"Are there any rules about taking photos?\",\"col2\":\"We want you to have fun and enjoy yourself in every moment. Please take as many photos as you like, but also please be considerate of others enjoying the exhibit. We also encourage you to put your phone away at times to fully immerse yourself in the experience. Tripods, excessive props, costume changes, commercial or product shoots, media shoots, press interviews, and all professional video equipment are prohibited without advance approval and accompaniment from a Hopscotch representative. Contact us at opportunity@letshopscotch.com for requests. We are committed to working with and giving back to nonprofit groups in the communities we create in. We strive to support as many local artists and non-profit groups as possible.\"},{\"col1\":\"Do you sell Hopscotch merchandise and other gifts?\",\"col2\":\"Yes! We have a gift shop full of unique curiosities that we encourage you to explore. Our retail area is part of our public space that is open to the public so you don\'t need a ticket to visit. There are no returns or exchanges on gift shop items.\"}]'),
(28, 170, 1, '2020-09-03 00:09:26', '2020-09-03 00:09:26', '16cf819b-b296-4726-bbf3-02f6d99bf7df', 'ACCESSIBILITY', '[{\"col1\":\"Is there somewhere to store strollers and other items?\",\"col2\":\"Strollers and large bags will not be allowed into the experience. We will have a small storage area in our lobby that you may check items at if you took public transit. If you drove we kindly ask that you leave large items in your vehicle. In order to fully enjoy the experience we recommend that you be as hands-free as possible.\"},{\"col1\":\"Are there bathrooms?\",\"col2\":\"Yes, we have easily accessible bathrooms available for you to use at any time.\"},{\"col1\":\"Are pets allowed?\",\"col2\":\"No. Pets, unfortunately, are not allowed. We do allow service animals.\"},{\"col1\":\"Is there a lost and found?\",\"col2\":\"Please be extra diligent in holding on to your belongings, particularly cell phones. In order to fully enjoy the experience we recommend that you be as hands free as possible and leave extra items in your vehicle. We can not guarantee that all lost items will be found and are not responsible for missing items. Please email contact@letshopscotch.com to inquire about a missing item.\"},{\"col1\":\"Are you ADA accessible?\",\"col2\":\"Yes, Hopscotch is ADA accessible.\"}]'),
(29, 171, 1, '2020-09-03 00:09:26', '2020-09-03 00:09:26', '7e681c74-a793-4818-bc8d-8f8a29810d08', 'SAFETY', '[{\"col1\":\"What are your health and safety procedures?\",\"col2\":\"Please visit our COVID page.\"},{\"col1\":\"Can I wear a costume?\",\"col2\":\"We love uniqueness and creativity more than anyone. What we don’t love are costumes that obscure your face, have accessories or are culturally inappropriate. Our staff will have the right to refuse you entry if we find you to be in violation of this policy.\"},{\"col1\":\"Do you allow weapons?\",\"col2\":\"We absolutely do not allow any firearms, knives, weapons or illegal substances of any kind.\"}]'),
(30, 172, 1, '2020-09-03 00:09:26', '2020-09-03 00:09:26', '6a21a182-08f8-4d44-933a-809d894738fa', 'GENERAL', '[{\"col1\":\"What is Hopscotch?\",\"col2\":\"Read more about us on our About page.\"},{\"col1\":\"Who curated the experience?\",\"col2\":\"This experience was curated by Hopscotch. We are committed to creating unique, immersive art experiences that are a respite from the outside world and invoke a sense of joy and wonder in our guests. We strive to engage with and support local, national and international artists and give them a platform that allows them to showcase their works.\"},{\"col1\":\"How long is this here for?\",\"col2\":\"Hopscotch is here to stay! This is a permanent location rather than a short term exhibition.\"},{\"col1\":\"I’m visiting from out of town, where should I stay?\",\"col2\":\"Email contact@letshoshopscotch.com and we will send you a list of our favorite hotels in the area!\"},{\"col1\":\"How can I become part of the Hopscotch team?\",\"col2\":\"Please email us at join@letshopscotch.com\"}]'),
(31, 177, 1, '2020-09-03 00:11:44', '2020-09-03 00:11:44', '57b0ea46-fb44-47e5-b182-7ac17f596ff6', 'The Basics', '[{\"col1\":\"Where are you located?\",\"col2\":\"We are located in the Travis Park Plaza Building at 711 Navarro. Please visit our Contact page for more information.\"},{\"col1\":\"What are your hours?\",\"col2\":\"Please visit our Contact page to view our hours of operation.\"},{\"col1\":\"Where do I park? Is it free?\",\"col2\":\"Three hour validated parking will be provided for all guests who park in the Travis Park Plaza Garage. Enter off of Travis Street between Navarro and St. Mary’s. Bring your parking ticket with you and show it to Hopscotch staff to receive your validation.\"}]');
INSERT INTO `matrixcontent_faqs` (`id`, `elementId`, `siteId`, `dateCreated`, `dateUpdated`, `uid`, `field_faqSection_faqSectionTitle`, `field_faqSection_faq`) VALUES
(32, 178, 1, '2020-09-03 00:11:44', '2020-09-03 00:11:44', '2a28e845-18c9-4f1b-a322-5f61e0a01437', 'TICKETING AND ADMISSION', '[{\"col1\":\"How much are tickets?\",\"col2\":\"$24 for Adults (13 - 59)\\r\\n$20 for Seniors, Veterans, Teachers, Healthcare Workers & Students (Must show valid ID)\\r\\n$15 for Children (4-12)\\r\\n$0 for Children (0-3)\"},{\"col1\":\"Do I have to have a ticket to enter?\",\"col2\":\"You do not have to have a ticket for our public lounge, gift shop, patio or food truck spaces. You will need a ticket to enter our gallery space. Due to COVID restrictions you may experience wait times to enter the public spaces if we are at capacity.\"},{\"col1\":\"Can I buy tickets at the door?\",\"col2\":\"We highly recommend purchasing tickets in advance. Limited tickets may be available day-of, but can not be guaranteed. You do not need to print your ticket, please bring your electronic copy that was emailed to you at time of purchase.\"},{\"col1\":\"Can I pay in cash?\",\"col2\":\"As part of our ongoing safety measures, Hopscotch is now cashless. All guests must pay via credit or debit card for all purchases.\"},{\"col1\":\"Do I have to sign a waiver?\",\"col2\":\"All guests must sign a waiver online before entering or at our check-in desk upon entering the space.\"},{\"col1\":\"Can I transfer my ticket?\",\"col2\":\"Tickets are non-refundable and non-transferrable. One person\'s ID in your party must match the name on one ticket (the rest of the names are interchangeable).\"},{\"col1\":\"What time do I need to arrive for my timed ticket?\",\"col2\":\"You are welcome to arrive early to enjoy a beverage from our lobby lounge or purchase bites from our food truck. You may enter the gallery no earlier than 15 minutes prior to your scheduled ticket time. If you arrive 30 minutes after your purchased time slot, you will not be guaranteed access into the gallery.\"},{\"col1\":\"What do I need for check in?\",\"col2\":\"Please bring your photo ID and an electronic copy of your ticket. Tickets are non-refundable and non-transferrable. One person\'s ID in your party must match the name on one ticket (the rest of the names are interchangeable). Once inside you’ll sign a required liability waiver and get a brief orientation on how best to experience Hopscotch!\"},{\"col1\":\"Can I leave and come back in?\",\"col2\":\"If you are following our safety guidelines, you may enter as long as we aren’t capacity. You will not be able to re-enter the gallery space once you have exited.\"},{\"col1\":\"Can I change my ticket time or get a refund?\",\"col2\":\"All ticket sales are final. Tickets are non-refundable and non-transferable.\"}]'),
(33, 179, 1, '2020-09-03 00:11:44', '2020-09-03 00:11:44', '12c29d21-e2a9-47d6-9829-420f96e9cd33', 'THE EXPERIENCE', '[{\"col1\":\"How long is the gallery experience?\",\"col2\":\"It varies for each guest; we recommend spending at least an hour so that you have time to explore each different installation. Afterward, explore our gift shop and stay to talk about your experience over some great local food and beverage on our patio.\"},{\"col1\":\"Is Hopscotch for all ages?\",\"col2\":\"Hopscotch welcomes all audiences, though some installations may be more adult-focused than others. Children under the age of 18 must be accompanied by an adult at all times. Guests under 18 are not allowed after 7:00pm. Many installations are more about looking or listening than touching, so we ask that adults supervise accordingly. Wall text and our staff are there to guide you through to ensure you experience everything in the best way possible!\"},{\"col1\":\"Can I bring food and beverages into Hopscotch? Do you sell food and beverages at Hopscotch?\",\"col2\":\"Outside food or beverages may not be brought into Hopscotch. There are drinking fountains and a hydration station should you wish to bring a refillable water bottle. We also have bottles available for purchase.\"},{\"col1\":\"Do you sell food and beverages at Hopscotch?\",\"col2\":\"We have a full menu of alcoholic and non-alcoholic beverages available in our lounge that you can purchase to walk with throughout our space or sit down to enjoy after your experience. You can find the Smack’s Chicken Shack food truck on our patio.\"},{\"col1\":\"Can I book a group outing or event?\",\"col2\":\"We are strictly following safety restrictions on group outings. To discuss options, pricing and availability please contact us at curate@letshopscotch.com.\"},{\"col1\":\"Are there any rules about taking photos?\",\"col2\":\"We want you to have fun and enjoy yourself in every moment. Please take as many photos as you like, but also please be considerate of others enjoying the exhibit. We also encourage you to put your phone away at times to fully immerse yourself in the experience. Tripods, excessive props, costume changes, commercial or product shoots, media shoots, press interviews, and all professional video equipment are prohibited without advance approval and accompaniment from a Hopscotch representative. Contact us at opportunity@letshopscotch.com for requests. We are committed to working with and giving back to nonprofit groups in the communities we create in. We strive to support as many local artists and non-profit groups as possible.\"},{\"col1\":\"Do you sell Hopscotch merchandise and other gifts?\",\"col2\":\"Yes! We have a gift shop full of unique curiosities that we encourage you to explore. Our retail area is part of our public space that is open to the public so you don\'t need a ticket to visit. There are no returns or exchanges on gift shop items.\"}]'),
(34, 180, 1, '2020-09-03 00:11:44', '2020-09-03 00:11:44', 'a61ce90a-5f1f-49e4-8c24-5127f68b640a', 'ACCESSIBILITY', '[{\"col1\":\"Is there somewhere to store strollers and other items?\",\"col2\":\"Strollers and large bags will not be allowed into the experience. We will have a small storage area in our lobby that you may check items at if you took public transit. If you drove we kindly ask that you leave large items in your vehicle. In order to fully enjoy the experience we recommend that you be as hands-free as possible.\"},{\"col1\":\"Are there bathrooms?\",\"col2\":\"Yes, we have easily accessible bathrooms available for you to use at any time.\"},{\"col1\":\"Are pets allowed?\",\"col2\":\"No. Pets, unfortunately, are not allowed. We do allow service animals.\"},{\"col1\":\"Is there a lost and found?\",\"col2\":\"Please be extra diligent in holding on to your belongings, particularly cell phones. In order to fully enjoy the experience we recommend that you be as hands free as possible and leave extra items in your vehicle. We can not guarantee that all lost items will be found and are not responsible for missing items. Please email contact@letshopscotch.com to inquire about a missing item.\"},{\"col1\":\"Are you ADA accessible?\",\"col2\":\"Yes, Hopscotch is ADA accessible.\"}]'),
(35, 181, 1, '2020-09-03 00:11:44', '2020-09-03 00:11:44', 'bb7ca04d-d53b-426d-b63d-3f6de370d593', 'SAFETY', '[{\"col1\":\"What are your health and safety procedures?\",\"col2\":\"Please visit our COVID page.\"},{\"col1\":\"Can I wear a costume?\",\"col2\":\"We love uniqueness and creativity more than anyone. What we don’t love are costumes that obscure your face, have accessories or are culturally inappropriate. Our staff will have the right to refuse you entry if we find you to be in violation of this policy.\"},{\"col1\":\"Do you allow weapons?\",\"col2\":\"We absolutely do not allow any firearms, knives, weapons or illegal substances of any kind.\"}]'),
(36, 182, 1, '2020-09-03 00:11:44', '2020-09-03 00:11:44', '9263a3f0-f22e-4d0e-bd74-9ca3c73120c4', 'GENERAL', '[{\"col1\":\"What is Hopscotch?\",\"col2\":\"Read more about us on our About page.\"},{\"col1\":\"Who curated the experience?\",\"col2\":\"This experience was curated by Hopscotch. We are committed to creating unique, immersive art experiences that are a respite from the outside world and invoke a sense of joy and wonder in our guests. We strive to engage with and support local, national and international artists and give them a platform that allows them to showcase their works.\"},{\"col1\":\"How long is this here for?\",\"col2\":\"Hopscotch is here to stay! This is a permanent location rather than a short term exhibition.\"},{\"col1\":\"I’m visiting from out of town, where should I stay?\",\"col2\":\"Email contact@letshoshopscotch.com and we will send you a list of our favorite hotels in the area!\"},{\"col1\":\"How can I become part of the Hopscotch team?\",\"col2\":\"Please email us at join@letshopscotch.com\"}]'),
(37, 188, 1, '2020-09-03 00:14:05', '2020-09-03 00:14:05', '4daea6df-df12-4c7f-a042-b0393c794a7c', 'The Basics', '[{\"col1\":\"Where are you located?\",\"col2\":\"We are located in the Travis Park Plaza Building at 711 Navarro. Please visit our Contact page for more information.\"},{\"col1\":\"What are your hours?\",\"col2\":\"Please visit our Contact page to view our hours of operation.\"},{\"col1\":\"Where do I park? Is it free?\",\"col2\":\"Three hour validated parking will be provided for all guests who park in the Travis Park Plaza Garage. Enter off of Travis Street between Navarro and St. Mary’s. Bring your parking ticket with you and show it to Hopscotch staff to receive your validation.\"}]'),
(38, 189, 1, '2020-09-03 00:14:05', '2020-09-03 00:14:05', '2a5e064b-c82b-4636-8295-97c575bae379', 'TICKETING AND ADMISSION', '[{\"col1\":\"How much are tickets?\",\"col2\":\"$24 for Adults (13 - 59)\\r\\n$20 for Seniors, Veterans, Teachers, Healthcare Workers & Students (Must show valid ID)\\r\\n$15 for Children (4-12)\\r\\n$0 for Children (0-3)\"},{\"col1\":\"Do I have to have a ticket to enter?\",\"col2\":\"You do not have to have a ticket for our public lounge, gift shop, patio or food truck spaces. You will need a ticket to enter our gallery space. Due to COVID restrictions you may experience wait times to enter the public spaces if we are at capacity.\"},{\"col1\":\"Can I buy tickets at the door?\",\"col2\":\"We highly recommend purchasing tickets in advance. Limited tickets may be available day-of, but can not be guaranteed. You do not need to print your ticket, please bring your electronic copy that was emailed to you at time of purchase.\"},{\"col1\":\"Can I pay in cash?\",\"col2\":\"As part of our ongoing safety measures, Hopscotch is now cashless. All guests must pay via credit or debit card for all purchases.\"},{\"col1\":\"Do I have to sign a waiver?\",\"col2\":\"All guests must sign a waiver online before entering or at our check-in desk upon entering the space.\"},{\"col1\":\"Can I transfer my ticket?\",\"col2\":\"Tickets are non-refundable and non-transferrable. One person\'s ID in your party must match the name on one ticket (the rest of the names are interchangeable).\"},{\"col1\":\"What time do I need to arrive for my timed ticket?\",\"col2\":\"You are welcome to arrive early to enjoy a beverage from our lobby lounge or purchase bites from our food truck. You may enter the gallery no earlier than 15 minutes prior to your scheduled ticket time. If you arrive 30 minutes after your purchased time slot, you will not be guaranteed access into the gallery.\"},{\"col1\":\"What do I need for check in?\",\"col2\":\"Please bring your photo ID and an electronic copy of your ticket. Tickets are non-refundable and non-transferrable. One person\'s ID in your party must match the name on one ticket (the rest of the names are interchangeable). Once inside you’ll sign a required liability waiver and get a brief orientation on how best to experience Hopscotch!\"},{\"col1\":\"Can I leave and come back in?\",\"col2\":\"If you are following our safety guidelines, you may enter as long as we aren’t capacity. You will not be able to re-enter the gallery space once you have exited.\"},{\"col1\":\"Can I change my ticket time or get a refund?\",\"col2\":\"All ticket sales are final. Tickets are non-refundable and non-transferable.\"}]'),
(39, 190, 1, '2020-09-03 00:14:05', '2020-09-03 00:14:05', 'd8c58919-e9b6-4391-a1a0-c3fabca1164d', 'THE EXPERIENCE', '[{\"col1\":\"How long is the gallery experience?\",\"col2\":\"It varies for each guest; we recommend spending at least an hour so that you have time to explore each different installation. Afterward, explore our gift shop and stay to talk about your experience over some great local food and beverage on our patio.\"},{\"col1\":\"Is Hopscotch for all ages?\",\"col2\":\"Hopscotch welcomes all audiences, though some installations may be more adult-focused than others. Children under the age of 18 must be accompanied by an adult at all times. Guests under 18 are not allowed after 7:00pm. Many installations are more about looking or listening than touching, so we ask that adults supervise accordingly. Wall text and our staff are there to guide you through to ensure you experience everything in the best way possible!\"},{\"col1\":\"Can I bring food and beverages into Hopscotch? Do you sell food and beverages at Hopscotch?\",\"col2\":\"Outside food or beverages may not be brought into Hopscotch. There are drinking fountains and a hydration station should you wish to bring a refillable water bottle. We also have bottles available for purchase.\"},{\"col1\":\"Do you sell food and beverages at Hopscotch?\",\"col2\":\"We have a full menu of alcoholic and non-alcoholic beverages available in our lounge that you can purchase to walk with throughout our space or sit down to enjoy after your experience. You can find the Smack’s Chicken Shack food truck on our patio.\"},{\"col1\":\"Can I book a group outing or event?\",\"col2\":\"We are strictly following safety restrictions on group outings. To discuss options, pricing and availability please contact us at curate@letshopscotch.com.\"},{\"col1\":\"Are there any rules about taking photos?\",\"col2\":\"We want you to have fun and enjoy yourself in every moment. Please take as many photos as you like, but also please be considerate of others enjoying the exhibit. We also encourage you to put your phone away at times to fully immerse yourself in the experience. Tripods, excessive props, costume changes, commercial or product shoots, media shoots, press interviews, and all professional video equipment are prohibited without advance approval and accompaniment from a Hopscotch representative. Contact us at opportunity@letshopscotch.com for requests. We are committed to working with and giving back to nonprofit groups in the communities we create in. We strive to support as many local artists and non-profit groups as possible.\"},{\"col1\":\"Do you sell Hopscotch merchandise and other gifts?\",\"col2\":\"Yes! We have a gift shop full of unique curiosities that we encourage you to explore. Our retail area is part of our public space that is open to the public so you don\'t need a ticket to visit. There are no returns or exchanges on gift shop items.\"}]'),
(40, 191, 1, '2020-09-03 00:14:05', '2020-09-03 00:14:05', '0483e781-643b-4e47-b02e-c7dc36b3fae0', 'ACCESSIBILITY', '[{\"col1\":\"Is there somewhere to store strollers and other items?\",\"col2\":\"Strollers and large bags will not be allowed into the experience. We will have a small storage area in our lobby that you may check items at if you took public transit. If you drove we kindly ask that you leave large items in your vehicle. In order to fully enjoy the experience we recommend that you be as hands-free as possible.\"},{\"col1\":\"Are there bathrooms?\",\"col2\":\"Yes, we have easily accessible bathrooms available for you to use at any time.\"},{\"col1\":\"Are pets allowed?\",\"col2\":\"No. Pets, unfortunately, are not allowed. We do allow service animals.\"},{\"col1\":\"Is there a lost and found?\",\"col2\":\"Please be extra diligent in holding on to your belongings, particularly cell phones. In order to fully enjoy the experience we recommend that you be as hands free as possible and leave extra items in your vehicle. We can not guarantee that all lost items will be found and are not responsible for missing items. Please email contact@letshopscotch.com to inquire about a missing item.\"},{\"col1\":\"Are you ADA accessible?\",\"col2\":\"Yes, Hopscotch is ADA accessible.\"}]'),
(41, 192, 1, '2020-09-03 00:14:05', '2020-09-03 00:14:05', '2f5b178d-078e-40a3-9807-ece5c08c9b77', 'SAFETY', '[{\"col1\":\"What are your health and safety procedures?\",\"col2\":\"Please visit our COVID page.\"},{\"col1\":\"Can I wear a costume?\",\"col2\":\"We love uniqueness and creativity more than anyone. What we don’t love are costumes that obscure your face, have accessories or are culturally inappropriate. Our staff will have the right to refuse you entry if we find you to be in violation of this policy.\"},{\"col1\":\"Do you allow weapons?\",\"col2\":\"We absolutely do not allow any firearms, knives, weapons or illegal substances of any kind.\"}]'),
(42, 193, 1, '2020-09-03 00:14:05', '2020-09-03 00:14:05', 'c23db10f-a502-4b38-ba59-1dda24e90d4d', 'GENERAL', '[{\"col1\":\"What is Hopscotch?\",\"col2\":\"Read more about us on our About page.\"},{\"col1\":\"Who curated the experience?\",\"col2\":\"This experience was curated by Hopscotch. We are committed to creating unique, immersive art experiences that are a respite from the outside world and invoke a sense of joy and wonder in our guests. We strive to engage with and support local, national and international artists and give them a platform that allows them to showcase their works.\"},{\"col1\":\"How long is this here for?\",\"col2\":\"Hopscotch is here to stay! This is a permanent location rather than a short term exhibition.\"},{\"col1\":\"I’m visiting from out of town, where should I stay?\",\"col2\":\"Email contact@letshoshopscotch.com and we will send you a list of our favorite hotels in the area!\"},{\"col1\":\"How can I become part of the Hopscotch team?\",\"col2\":\"Please email us at join@letshopscotch.com\"}]'),
(43, 210, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '9e635b3e-b78b-4eb0-873b-623ac55abb0d', 'The Basics', '[{\"col1\":\"Where are you located?\",\"col2\":\"We are located in the Travis Park Plaza Building at 711 Navarro. Please visit our Contact page for more information.\"},{\"col1\":\"What are your hours?\",\"col2\":\"Please visit our Contact page to view our hours of operation.\"},{\"col1\":\"Where do I park? Is it free?\",\"col2\":\"Three hour validated parking will be provided for all guests who park in the Travis Park Plaza Garage. Enter off of Travis Street between Navarro and St. Mary’s. Bring your parking ticket with you and show it to Hopscotch staff to receive your validation.\"}]'),
(44, 211, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '659f653c-7e2f-4d6d-b4ab-780b86c62ba3', 'TICKETING AND ADMISSION', '[{\"col1\":\"How much are tickets?\",\"col2\":\"$24 for Adults (13 - 59)\\r\\n$20 for Seniors, Veterans, Teachers, Healthcare Workers & Students (Must show valid ID)\\r\\n$15 for Children (4-12)\\r\\n$0 for Children (0-3)\"},{\"col1\":\"Do I have to have a ticket to enter?\",\"col2\":\"You do not have to have a ticket for our public lounge, gift shop, patio or food truck spaces. You will need a ticket to enter our gallery space. Due to COVID restrictions you may experience wait times to enter the public spaces if we are at capacity.\"},{\"col1\":\"Can I buy tickets at the door?\",\"col2\":\"We highly recommend purchasing tickets in advance. Limited tickets may be available day-of, but can not be guaranteed. You do not need to print your ticket, please bring your electronic copy that was emailed to you at time of purchase.\"},{\"col1\":\"Can I pay in cash?\",\"col2\":\"As part of our ongoing safety measures, Hopscotch is now cashless. All guests must pay via credit or debit card for all purchases.\"},{\"col1\":\"Do I have to sign a waiver?\",\"col2\":\"All guests must sign a waiver online before entering or at our check-in desk upon entering the space.\"},{\"col1\":\"Can I transfer my ticket?\",\"col2\":\"Tickets are non-refundable and non-transferrable. One person\'s ID in your party must match the name on one ticket (the rest of the names are interchangeable).\"},{\"col1\":\"What time do I need to arrive for my timed ticket?\",\"col2\":\"You are welcome to arrive early to enjoy a beverage from our lobby lounge or purchase bites from our food truck. You may enter the gallery no earlier than 15 minutes prior to your scheduled ticket time. If you arrive 30 minutes after your purchased time slot, you will not be guaranteed access into the gallery.\"},{\"col1\":\"What do I need for check in?\",\"col2\":\"Please bring your photo ID and an electronic copy of your ticket. Tickets are non-refundable and non-transferrable. One person\'s ID in your party must match the name on one ticket (the rest of the names are interchangeable). Once inside you’ll sign a required liability waiver and get a brief orientation on how best to experience Hopscotch!\"},{\"col1\":\"Can I leave and come back in?\",\"col2\":\"If you are following our safety guidelines, you may enter as long as we aren’t capacity. You will not be able to re-enter the gallery space once you have exited.\"},{\"col1\":\"Can I change my ticket time or get a refund?\",\"col2\":\"All ticket sales are final. Tickets are non-refundable and non-transferable.\"}]'),
(45, 212, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '2257dd28-d104-4e55-90dd-e5b146a8f7a8', 'THE EXPERIENCE', '[{\"col1\":\"How long is the gallery experience?\",\"col2\":\"It varies for each guest; we recommend spending at least an hour so that you have time to explore each different installation. Afterward, explore our gift shop and stay to talk about your experience over some great local food and beverage on our patio.\"},{\"col1\":\"Is Hopscotch for all ages?\",\"col2\":\"Hopscotch welcomes all audiences, though some installations may be more adult-focused than others. Children under the age of 18 must be accompanied by an adult at all times. Guests under 18 are not allowed after 7:00pm. Many installations are more about looking or listening than touching, so we ask that adults supervise accordingly. Wall text and our staff are there to guide you through to ensure you experience everything in the best way possible!\"},{\"col1\":\"Can I bring food and beverages into Hopscotch? Do you sell food and beverages at Hopscotch?\",\"col2\":\"Outside food or beverages may not be brought into Hopscotch. There are drinking fountains and a hydration station should you wish to bring a refillable water bottle. We also have bottles available for purchase.\"},{\"col1\":\"Do you sell food and beverages at Hopscotch?\",\"col2\":\"We have a full menu of alcoholic and non-alcoholic beverages available in our lounge that you can purchase to walk with throughout our space or sit down to enjoy after your experience. You can find the Smack’s Chicken Shack food truck on our patio.\"},{\"col1\":\"Can I book a group outing or event?\",\"col2\":\"We are strictly following safety restrictions on group outings. To discuss options, pricing and availability please contact us at curate@letshopscotch.com.\"},{\"col1\":\"Are there any rules about taking photos?\",\"col2\":\"We want you to have fun and enjoy yourself in every moment. Please take as many photos as you like, but also please be considerate of others enjoying the exhibit. We also encourage you to put your phone away at times to fully immerse yourself in the experience. Tripods, excessive props, costume changes, commercial or product shoots, media shoots, press interviews, and all professional video equipment are prohibited without advance approval and accompaniment from a Hopscotch representative. Contact us at opportunity@letshopscotch.com for requests. We are committed to working with and giving back to nonprofit groups in the communities we create in. We strive to support as many local artists and non-profit groups as possible.\"},{\"col1\":\"Do you sell Hopscotch merchandise and other gifts?\",\"col2\":\"Yes! We have a gift shop full of unique curiosities that we encourage you to explore. Our retail area is part of our public space that is open to the public so you don\'t need a ticket to visit. There are no returns or exchanges on gift shop items.\"}]'),
(46, 213, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', 'f70ed318-d944-4b41-bcb5-5b68a35291ce', 'ACCESSIBILITY', '[{\"col1\":\"Is there somewhere to store strollers and other items?\",\"col2\":\"Strollers and large bags will not be allowed into the experience. We will have a small storage area in our lobby that you may check items at if you took public transit. If you drove we kindly ask that you leave large items in your vehicle. In order to fully enjoy the experience we recommend that you be as hands-free as possible.\"},{\"col1\":\"Are there bathrooms?\",\"col2\":\"Yes, we have easily accessible bathrooms available for you to use at any time.\"},{\"col1\":\"Are pets allowed?\",\"col2\":\"No. Pets, unfortunately, are not allowed. We do allow service animals.\"},{\"col1\":\"Is there a lost and found?\",\"col2\":\"Please be extra diligent in holding on to your belongings, particularly cell phones. In order to fully enjoy the experience we recommend that you be as hands free as possible and leave extra items in your vehicle. We can not guarantee that all lost items will be found and are not responsible for missing items. Please email contact@letshopscotch.com to inquire about a missing item.\"},{\"col1\":\"Are you ADA accessible?\",\"col2\":\"Yes, Hopscotch is ADA accessible.\"}]'),
(47, 214, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '4da2fd6c-8706-4a63-b538-3015dfe3b21e', 'SAFETY', '[{\"col1\":\"What are your health and safety procedures?\",\"col2\":\"Please visit our COVID page.\"},{\"col1\":\"Can I wear a costume?\",\"col2\":\"We love uniqueness and creativity more than anyone. What we don’t love are costumes that obscure your face, have accessories or are culturally inappropriate. Our staff will have the right to refuse you entry if we find you to be in violation of this policy.\"},{\"col1\":\"Do you allow weapons?\",\"col2\":\"We absolutely do not allow any firearms, knives, weapons or illegal substances of any kind.\"}]'),
(48, 215, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '2fec69c7-0610-4fc6-a6c5-149ae34d1b11', 'GENERAL', '[{\"col1\":\"What is Hopscotch?\",\"col2\":\"Read more about us on our About page.\"},{\"col1\":\"Who curated the experience?\",\"col2\":\"This experience was curated by Hopscotch. We are committed to creating unique, immersive art experiences that are a respite from the outside world and invoke a sense of joy and wonder in our guests. We strive to engage with and support local, national and international artists and give them a platform that allows them to showcase their works.\"},{\"col1\":\"How long is this here for?\",\"col2\":\"Hopscotch is here to stay! This is a permanent location rather than a short term exhibition.\"},{\"col1\":\"I’m visiting from out of town, where should I stay?\",\"col2\":\"Email contact@letshoshopscotch.com and we will send you a list of our favorite hotels in the area!\"},{\"col1\":\"How can I become part of the Hopscotch team?\",\"col2\":\"Please email us at join@letshopscotch.com\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(11) NOT NULL,
  `track` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applyTime` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `track`, `name`, `applyTime`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'craft', 'Install', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '0df561c4-4d99-42e5-b007-87e4f94c5ba6'),
(2, 'craft', 'm150403_183908_migrations_table_changes', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'a42080ef-9976-47b6-8ab2-a95081b9fde1'),
(3, 'craft', 'm150403_184247_plugins_table_changes', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '18d7a97d-1067-48bb-aa3f-fc2fa37eaed9'),
(4, 'craft', 'm150403_184533_field_version', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '316f7558-9ee9-47e6-b613-812036127e47'),
(5, 'craft', 'm150403_184729_type_columns', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '30efd9dd-209e-4bf2-9cb1-dd6a3d1d29a8'),
(6, 'craft', 'm150403_185142_volumes', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '679cb220-e359-44ab-8d11-9a862f36cf43'),
(7, 'craft', 'm150428_231346_userpreferences', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2c5999bf-d9fb-4d2d-a511-b0d3c10d3c2c'),
(8, 'craft', 'm150519_150900_fieldversion_conversion', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '8a828f1b-4a54-4e9c-80a2-6ba51ad6f9df'),
(9, 'craft', 'm150617_213829_update_email_settings', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '7a5a5d27-ad62-4af8-a587-7e421814f304'),
(10, 'craft', 'm150721_124739_templatecachequeries', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '00a8f177-1b26-485c-a211-4ffc6059c21d'),
(11, 'craft', 'm150724_140822_adjust_quality_settings', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'fb38aa19-e7ac-498c-8cb8-2a4278fb21aa'),
(12, 'craft', 'm150815_133521_last_login_attempt_ip', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'acf816da-850f-423f-b0e2-6e138ff65e5f'),
(13, 'craft', 'm151002_095935_volume_cache_settings', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'b38f3730-9d71-4d7e-bc8e-e1efbd9549fc'),
(14, 'craft', 'm151005_142750_volume_s3_storage_settings', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '86804bc8-e013-4eac-97e5-6b08aa5b596b'),
(15, 'craft', 'm151016_133600_delete_asset_thumbnails', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '3c30e280-26ca-4da2-b649-0d16f2fd11ed'),
(16, 'craft', 'm151209_000000_move_logo', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '275fcb46-1c0d-44d4-ad08-db437b385d68'),
(17, 'craft', 'm151211_000000_rename_fileId_to_assetId', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '57c0be79-88f9-47f5-a29e-f42651602140'),
(18, 'craft', 'm151215_000000_rename_asset_permissions', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '8b611f54-2eb1-4a8a-a020-5ad9b9e5fe6a'),
(19, 'craft', 'm160707_000001_rename_richtext_assetsource_setting', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'a4321523-3702-4c69-9279-d3468026c97e'),
(20, 'craft', 'm160708_185142_volume_hasUrls_setting', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '012917d0-b968-4c6e-a459-895a1f81cdd5'),
(21, 'craft', 'm160714_000000_increase_max_asset_filesize', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '70ffec8e-07bc-4175-a73e-905aaa5a07e5'),
(22, 'craft', 'm160727_194637_column_cleanup', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '4b0eb9ca-2dcf-4b45-a5be-6ad3127bdd04'),
(23, 'craft', 'm160804_110002_userphotos_to_assets', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'fe76bf51-f894-4655-a6ce-296c9a445422'),
(24, 'craft', 'm160807_144858_sites', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'c17dc187-27a9-4894-9cac-b71ada58e202'),
(25, 'craft', 'm160829_000000_pending_user_content_cleanup', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'fb0cf90a-3c7f-42fe-ad44-365a4d5e2ffe'),
(26, 'craft', 'm160830_000000_asset_index_uri_increase', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '006856ae-6864-4752-8db7-27a9b024e96a'),
(27, 'craft', 'm160912_230520_require_entry_type_id', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '730522a4-d6da-4de3-b384-6422e0d318a7'),
(28, 'craft', 'm160913_134730_require_matrix_block_type_id', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'eb8654d1-4f62-4073-8185-80371558ef0d'),
(29, 'craft', 'm160920_174553_matrixblocks_owner_site_id_nullable', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2e6fb8cd-5649-4dc3-9c1e-eaaffa370251'),
(30, 'craft', 'm160920_231045_usergroup_handle_title_unique', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '26fc1a30-1d73-4b9f-953c-7a4ef6fd2571'),
(31, 'craft', 'm160925_113941_route_uri_parts', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'a21e41e6-41aa-4993-b798-22d0245bd2b4'),
(32, 'craft', 'm161006_205918_schemaVersion_not_null', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '02b2f16e-6b64-4fda-a573-0a1b8db2360c'),
(33, 'craft', 'm161007_130653_update_email_settings', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '82a17537-1e22-4b52-a9d3-7e31168b87cc'),
(34, 'craft', 'm161013_175052_newParentId', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '1e4227cc-942d-4635-a556-8474179454f0'),
(35, 'craft', 'm161021_102916_fix_recent_entries_widgets', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'df6dc8b1-6a21-48ff-a393-1cda23e6205a'),
(36, 'craft', 'm161021_182140_rename_get_help_widget', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '83c952ac-a06c-44c6-9cbd-ce2c0766df78'),
(37, 'craft', 'm161025_000000_fix_char_columns', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'f53e9381-2ca7-42b3-b1f2-c22cb4ed47e3'),
(38, 'craft', 'm161029_124145_email_message_languages', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'f9ee31dd-033e-4421-8fa7-dc4d5ef436f6'),
(39, 'craft', 'm161108_000000_new_version_format', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'f4b34bb8-bdf4-4a77-b971-a6da263ec4d5'),
(40, 'craft', 'm161109_000000_index_shuffle', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'c9e5fa0c-c761-4025-b7cd-ded51fef2b72'),
(41, 'craft', 'm161122_185500_no_craft_app', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'a7656b7a-9573-4d1b-b10c-aef985aed588'),
(42, 'craft', 'm161125_150752_clear_urlmanager_cache', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '97ba82d9-8a40-4307-a6dc-d02092e64327'),
(43, 'craft', 'm161220_000000_volumes_hasurl_notnull', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '0984f099-7ae0-4a8b-ad37-b06696b12a78'),
(44, 'craft', 'm170114_161144_udates_permission', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '45c9ee49-7dd4-4e4f-8a98-6233544b1326'),
(45, 'craft', 'm170120_000000_schema_cleanup', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '6dab5ca7-5942-4a88-81c4-72ff07779d80'),
(46, 'craft', 'm170126_000000_assets_focal_point', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '6684644e-8c8e-4d0a-83e3-b2d9668bb2cc'),
(47, 'craft', 'm170206_142126_system_name', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '4a7ff914-2cbb-4947-a8f3-368a3b23b2d2'),
(48, 'craft', 'm170217_044740_category_branch_limits', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2b319b03-b96f-4591-85ed-c85ef57e20cc'),
(49, 'craft', 'm170217_120224_asset_indexing_columns', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '748bbb53-0129-49d9-abbf-c086f37d9987'),
(50, 'craft', 'm170223_224012_plain_text_settings', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '49aad02e-e45e-4095-8b4f-4967ca0404bf'),
(51, 'craft', 'm170227_120814_focal_point_percentage', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'a89ccc5f-9914-4d0e-801a-04a84cc45df4'),
(52, 'craft', 'm170228_171113_system_messages', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'f9cc3932-169c-4b5c-b126-aadc408a9927'),
(53, 'craft', 'm170303_140500_asset_field_source_settings', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'b285f94f-ca41-4b4e-a2b8-2f5095b0cbfe'),
(54, 'craft', 'm170306_150500_asset_temporary_uploads', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '92034f39-10c9-48eb-b4e1-2bdc7d6494ba'),
(55, 'craft', 'm170523_190652_element_field_layout_ids', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '7445cdc1-ce9b-4db2-8be6-ebc8324431f4'),
(56, 'craft', 'm170612_000000_route_index_shuffle', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '4d54ea55-b423-4ee6-a8ea-1e7aaf936623'),
(57, 'craft', 'm170621_195237_format_plugin_handles', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2701cc2e-0e16-43d7-88ad-90537b28c9e7'),
(58, 'craft', 'm170630_161027_deprecation_line_nullable', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '12d0cdf2-8ffd-4eac-841f-1cfdda4282cc'),
(59, 'craft', 'm170630_161028_deprecation_changes', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '82a39e22-f821-4f31-be4c-ddcca0073307'),
(60, 'craft', 'm170703_181539_plugins_table_tweaks', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '87f1eac9-3223-4172-a054-a7973ce46afc'),
(61, 'craft', 'm170704_134916_sites_tables', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '5d0dd34d-2964-4a61-bb6c-cfcc3466c006'),
(62, 'craft', 'm170706_183216_rename_sequences', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'f649c4a4-919a-4582-be2c-fa0efcc92c67'),
(63, 'craft', 'm170707_094758_delete_compiled_traits', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'b43bed58-c5b1-4979-830d-67bac24eed06'),
(64, 'craft', 'm170731_190138_drop_asset_packagist', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '1935e299-a9f8-424e-8658-db29c0d1f028'),
(65, 'craft', 'm170810_201318_create_queue_table', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'cb82f422-bb66-4720-8055-395c198c1eef'),
(66, 'craft', 'm170903_192801_longblob_for_queue_jobs', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '881dc51f-8a64-442a-84d1-5050655304e1'),
(67, 'craft', 'm170914_204621_asset_cache_shuffle', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '0e6b4f96-2d79-4a95-b6ed-a1e8bc213085'),
(68, 'craft', 'm171011_214115_site_groups', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'cb24fc6d-6c34-443e-8ffa-e988c21b4f4c'),
(69, 'craft', 'm171012_151440_primary_site', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'a6b1387d-e40c-4862-8d1e-50bc6424f84c'),
(70, 'craft', 'm171013_142500_transform_interlace', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '7592a4ec-116e-4d5a-b330-c847e5364b4a'),
(71, 'craft', 'm171016_092553_drop_position_select', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '457110f8-505d-4d3d-8cd8-131430acad3a'),
(72, 'craft', 'm171016_221244_less_strict_translation_method', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'b2fc6fd1-67c7-4f47-a2c0-14c87eb28124'),
(73, 'craft', 'm171107_000000_assign_group_permissions', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'bfbbc171-4271-4225-b905-ee41af1b0cfa'),
(74, 'craft', 'm171117_000001_templatecache_index_tune', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '988d8f86-6a56-43a6-a3e7-ea3a734dc441'),
(75, 'craft', 'm171126_105927_disabled_plugins', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'f7436c1f-9dc6-497c-b516-96d21583c52c'),
(76, 'craft', 'm171130_214407_craftidtokens_table', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '613c0970-e712-4943-ac0f-621828d0527f'),
(77, 'craft', 'm171202_004225_update_email_settings', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '3d89b8c9-106c-42ae-9a97-6a9a9f1881a3'),
(78, 'craft', 'm171204_000001_templatecache_index_tune_deux', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '3e41f522-8e21-44ce-808e-5903aa1490f3'),
(79, 'craft', 'm171205_130908_remove_craftidtokens_refreshtoken_column', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '9e8011fb-f137-48ae-8231-cad491f22f6b'),
(80, 'craft', 'm171218_143135_longtext_query_column', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'a96f3adf-55ee-4be2-93ed-3416534ebe97'),
(81, 'craft', 'm171231_055546_environment_variables_to_aliases', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '9c064356-24a5-4c3e-8e8a-cec4d2a2010b'),
(82, 'craft', 'm180113_153740_drop_users_archived_column', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'cafeb10b-20e8-442c-8fe1-842e9e436b42'),
(83, 'craft', 'm180122_213433_propagate_entries_setting', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'b2a0f773-c1e6-4961-910e-b30306f51a20'),
(84, 'craft', 'm180124_230459_fix_propagate_entries_values', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '009159e5-eb4a-4207-9d79-2cb0243935ee'),
(85, 'craft', 'm180128_235202_set_tag_slugs', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'c4d57657-0f79-4a0b-a7f7-55219e0c2abc'),
(86, 'craft', 'm180202_185551_fix_focal_points', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'baf2a308-d29a-4030-971a-f1f67a0009c3'),
(87, 'craft', 'm180217_172123_tiny_ints', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '84349d12-26db-4f79-a415-ed29eadd9ac6'),
(88, 'craft', 'm180321_233505_small_ints', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'e51d9ce9-641d-4d42-a126-6dfde8b5a900'),
(89, 'craft', 'm180328_115523_new_license_key_statuses', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '0490c08b-d8f0-403a-9022-54029b17a6d1'),
(90, 'craft', 'm180404_182320_edition_changes', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'e12bcc5e-b478-4ca6-b5f9-64822d6d36b2'),
(91, 'craft', 'm180411_102218_fix_db_routes', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'b66bcae0-bc9c-4ba1-8a23-253e5c1e49e0'),
(92, 'craft', 'm180416_205628_resourcepaths_table', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '0c7944ea-55dc-4be7-b917-7d6bdedf2dd5'),
(93, 'craft', 'm180418_205713_widget_cleanup', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '8486bbd2-42f9-4377-a359-a5b6d7842f85'),
(94, 'craft', 'm180425_203349_searchable_fields', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '047c6acd-9f16-40e1-bd04-c584beeeddec'),
(95, 'craft', 'm180516_153000_uids_in_field_settings', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '9b375539-3734-4345-9cc0-7a575241c963'),
(96, 'craft', 'm180517_173000_user_photo_volume_to_uid', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '1c922b1a-e290-4cfc-b19f-adb9c8509e20'),
(97, 'craft', 'm180518_173000_permissions_to_uid', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '089803e5-5387-4c65-b55d-1b8b776e4607'),
(98, 'craft', 'm180520_173000_matrix_context_to_uids', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '0ea8be8e-271c-4ae4-ba5f-16ebbbf0e932'),
(99, 'craft', 'm180521_172900_project_config_table', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '06201202-d0f3-40a1-a47c-cdde602c8bf2'),
(100, 'craft', 'm180521_173000_initial_yml_and_snapshot', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '61bb4e0a-3bc7-4674-b8b7-f33107cc6b03'),
(101, 'craft', 'm180731_162030_soft_delete_sites', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '21d78d76-3944-412d-b04e-d1986b7518b8'),
(102, 'craft', 'm180810_214427_soft_delete_field_layouts', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '0f14be75-245c-4552-91ce-e709263b5ba0'),
(103, 'craft', 'm180810_214439_soft_delete_elements', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '3846023b-a95b-402c-b67f-a3a4c7f4537c'),
(104, 'craft', 'm180824_193422_case_sensitivity_fixes', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '11dd3ef6-e9a3-4524-a0ac-63846134df7c'),
(105, 'craft', 'm180901_151639_fix_matrixcontent_tables', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '608edcb5-df84-4ba6-8bee-e1e2d9b20558'),
(106, 'craft', 'm180904_112109_permission_changes', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '24e9b0c9-bdd4-40ea-a040-f24e7e8ce892'),
(107, 'craft', 'm180910_142030_soft_delete_sitegroups', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'ca6e2bb9-8f3e-4415-ae1f-0781cd7a32a5'),
(108, 'craft', 'm181011_160000_soft_delete_asset_support', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '95469cbe-4e1e-4598-b93a-649fef82e3d1'),
(109, 'craft', 'm181016_183648_set_default_user_settings', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'b98b9fc2-30db-4069-bc38-3b5b294c09b5'),
(110, 'craft', 'm181017_225222_system_config_settings', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '39efcc0a-4118-4c69-9aa1-6a462b340b1d'),
(111, 'craft', 'm181018_222343_drop_userpermissions_from_config', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'a79b3b56-e8eb-4c53-b62f-faedb1c42889'),
(112, 'craft', 'm181029_130000_add_transforms_routes_to_config', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'babab12c-a964-4a9a-8874-e111cf5960f0'),
(113, 'craft', 'm181112_203955_sequences_table', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '415c62d7-d157-478c-8f9d-976e0ec8a81d'),
(114, 'craft', 'm181121_001712_cleanup_field_configs', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '09f97520-f74c-49e2-a919-58916aaade65'),
(115, 'craft', 'm181128_193942_fix_project_config', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '1a1006ff-3f48-4614-a974-76b3f9730ace'),
(116, 'craft', 'm181130_143040_fix_schema_version', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '414fecdf-8fa4-4544-bebb-da35b172b0db'),
(117, 'craft', 'm181211_143040_fix_entry_type_uids', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'ef605d34-07c1-422d-a94e-ddc65c2e71fd'),
(118, 'craft', 'm181213_102500_config_map_aliases', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '1352eecd-3f8b-4b64-9263-ce4654dd164e'),
(119, 'craft', 'm181217_153000_fix_structure_uids', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'c7e07bc3-0d22-48c5-828d-d47a1a1a05a2'),
(120, 'craft', 'm190104_152725_store_licensed_plugin_editions', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'b955bc37-e179-4e10-9137-5451c5b61942'),
(121, 'craft', 'm190108_110000_cleanup_project_config', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'c49bcf55-bdfc-4064-acea-039a7b4b6500'),
(122, 'craft', 'm190108_113000_asset_field_setting_change', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '767dc898-9761-4623-8195-076d2d64df66'),
(123, 'craft', 'm190109_172845_fix_colspan', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '75e18eb4-9482-47e7-afa4-2c1870610541'),
(124, 'craft', 'm190110_150000_prune_nonexisting_sites', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'faf00574-c42c-4db7-925d-62058e6305a7'),
(125, 'craft', 'm190110_214819_soft_delete_volumes', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'a92a8ec7-3f6d-4b05-9c33-82faf5cc32a7'),
(126, 'craft', 'm190112_124737_fix_user_settings', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'a791680b-1edd-45ef-90da-fecfffcf8d57'),
(127, 'craft', 'm190112_131225_fix_field_layouts', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '4fcc328d-a9af-4069-b2c6-25d44bfd899a'),
(128, 'craft', 'm190112_201010_more_soft_deletes', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '94862de1-5ed7-4d47-9956-48bb905c89bb'),
(129, 'craft', 'm190114_143000_more_asset_field_setting_changes', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'e220da72-3aa8-40f8-9708-d6289179e708'),
(130, 'craft', 'm190121_120000_rich_text_config_setting', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '32bc1d71-f7e6-43ee-af77-aa32927eb24a'),
(131, 'craft', 'm190125_191628_fix_email_transport_password', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'cf2b5647-4251-42bb-b085-96a3546bfdde'),
(132, 'craft', 'm190128_181422_cleanup_volume_folders', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '36640801-5665-4f29-a03f-10034633ccc3'),
(133, 'craft', 'm190205_140000_fix_asset_soft_delete_index', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '3d6f7c04-f3f4-411f-8320-df4d85f0ad33'),
(134, 'craft', 'm190208_140000_reset_project_config_mapping', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'dc246500-333b-4b87-a8d7-55eda822f491'),
(135, 'craft', 'm190218_143000_element_index_settings_uid', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '1722ee75-9781-4f1b-88f7-bb4ebfe3448e'),
(136, 'craft', 'm190312_152740_element_revisions', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'e2ba153d-12b3-4770-873b-8fba2ed64a58'),
(137, 'craft', 'm190327_235137_propagation_method', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'da9ead0d-ff83-4d7a-a840-5a38a64296cd'),
(138, 'craft', 'm190401_223843_drop_old_indexes', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '1165ad95-269b-4fd3-8b0d-93847244097f'),
(139, 'craft', 'm190416_014525_drop_unique_global_indexes', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2a91f298-0c65-4a31-9488-fad31bd219f4'),
(140, 'craft', 'm190417_085010_add_image_editor_permissions', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '908bbb98-a2b9-43b9-ba3e-171b40dbf562'),
(141, 'craft', 'm190502_122019_store_default_user_group_uid', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '791f1db6-036e-41e7-894f-3884be8bb6d0'),
(142, 'craft', 'm190504_150349_preview_targets', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '5206bfdb-fd32-4aa0-ba1d-8194f3f0aa65'),
(143, 'craft', 'm190516_184711_job_progress_label', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '78a2ab49-9062-4ed2-9ed5-31ef47575427'),
(144, 'craft', 'm190523_190303_optional_revision_creators', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'd20f4418-64b2-49a3-b6bb-1ed44d82711c'),
(145, 'craft', 'm190529_204501_fix_duplicate_uids', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '1641d93a-7e5f-475e-b42a-6a7bf0f4b704'),
(146, 'craft', 'm190605_223807_unsaved_drafts', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'a01dcea3-9255-4e6f-83c5-874c1c3d078e'),
(147, 'craft', 'm190607_230042_entry_revision_error_tables', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'a80fef29-2851-472a-b2de-d58256ce8e43'),
(148, 'craft', 'm190608_033429_drop_elements_uid_idx', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '5537347d-fdea-43aa-9593-35e8a516d4a3'),
(149, 'craft', 'm190617_164400_add_gqlschemas_table', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '4f70793d-8845-44aa-b0c3-557aa04552b0'),
(150, 'craft', 'm190624_234204_matrix_propagation_method', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '3234ae0c-2898-4fe3-8c60-98a67fa6d00a'),
(151, 'craft', 'm190711_153020_drop_snapshots', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '9f5120df-3288-4b59-9fe6-8f85cdf4f272'),
(152, 'craft', 'm190712_195914_no_draft_revisions', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '9db3d1f5-182c-4bc3-af96-5e7d6d8a9828'),
(153, 'craft', 'm190723_140314_fix_preview_targets_column', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '8cd6994a-2064-4d8a-8eb0-f964903ea890'),
(154, 'craft', 'm190820_003519_flush_compiled_templates', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'f885144b-8a9a-48ed-9ff6-f085312cb99b'),
(155, 'craft', 'm190823_020339_optional_draft_creators', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '24d4c7f9-f39a-484b-9853-c800a9f30e38'),
(156, 'craft', 'm190913_152146_update_preview_targets', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '828c2a2e-c9cd-4872-af02-9b71485698c7'),
(157, 'craft', 'm191107_122000_add_gql_project_config_support', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '85410351-bb4b-47ac-84cf-b2bd99d66ec3'),
(158, 'craft', 'm191204_085100_pack_savable_component_settings', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '26de0f1d-667b-4709-83bd-5c9f61e8bb1d'),
(159, 'craft', 'm191206_001148_change_tracking', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '21d7b00f-63c5-4627-adb2-5fe3f7f25246'),
(160, 'craft', 'm191216_191635_asset_upload_tracking', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '830860ae-e8cc-403a-a787-73163aa8be5c'),
(161, 'craft', 'm191222_002848_peer_asset_permissions', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '4cf0f083-6349-4347-bd53-8e6f7a66e167'),
(162, 'craft', 'm200127_172522_queue_channels', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '6e3fabf4-da1b-4106-acfc-3f61f3d28d24'),
(163, 'craft', 'm200211_175048_truncate_element_query_cache', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '0ade4014-93ee-4c88-98d0-3b42052e0865'),
(164, 'craft', 'm200213_172522_new_elements_index', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '8f345a84-8ce2-43e9-b41e-559d9d21323a'),
(165, 'craft', 'm200228_195211_long_deprecation_messages', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '593ee154-caed-4d5d-80c6-5c40bcfbba38'),
(166, 'craft', 'm200715_113400_transform_index_error_flag', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '26d42215-302e-4d67-99b2-5ac2e8290ddc'),
(167, 'craft', 'm200306_054652_disabled_sites', '2020-08-20 17:42:06', '2020-08-20 17:42:06', '2020-08-20 17:42:06', 'b8a51ffc-4b38-48bc-b9cb-37ca2f780e31'),
(168, 'craft', 'm200522_191453_clear_template_caches', '2020-08-20 17:42:06', '2020-08-20 17:42:06', '2020-08-20 17:42:06', 'e630aac2-346f-4e6e-8034-72ce4e1bd736'),
(169, 'craft', 'm200606_231117_migration_tracks', '2020-08-20 17:42:06', '2020-08-20 17:42:06', '2020-08-20 17:42:06', '8ceddc71-9bfe-44ce-80d7-ebe2a3dee304'),
(170, 'craft', 'm200619_215137_title_translation_method', '2020-08-20 17:42:06', '2020-08-20 17:42:06', '2020-08-20 17:42:06', '65952e68-d836-4aba-b7b9-b1be4c8d4e01'),
(171, 'craft', 'm200620_005028_user_group_descriptions', '2020-08-20 17:42:06', '2020-08-20 17:42:06', '2020-08-20 17:42:06', 'aacd2b11-02a4-4b25-8b46-0fad4a4313ce'),
(172, 'craft', 'm200620_230205_field_layout_changes', '2020-08-20 17:42:06', '2020-08-20 17:42:06', '2020-08-20 17:42:06', '4cdb11e9-360c-4013-9dde-5496f6aa8cf4'),
(173, 'craft', 'm200625_131100_move_entrytypes_to_top_project_config', '2020-08-20 17:42:06', '2020-08-20 17:42:06', '2020-08-20 17:42:06', '4f139845-f0df-4892-80f2-3623ca5ce5ff'),
(174, 'craft', 'm200629_112700_remove_project_config_legacy_files', '2020-08-20 17:42:06', '2020-08-20 17:42:06', '2020-08-20 17:42:06', '111b9f1b-7da6-4aea-8683-4f39b096f531'),
(175, 'craft', 'm200630_183000_drop_configmap', '2020-08-20 17:42:06', '2020-08-20 17:42:06', '2020-08-20 17:42:06', '94ceb8b4-d8f8-4111-91a7-67bf95c6b072'),
(176, 'craft', 'm200716_110900_replace_file_asset_permissions', '2020-08-20 17:42:06', '2020-08-20 17:42:06', '2020-08-20 17:42:06', '4c29f993-f6d8-46d6-bc0d-5c52c2d5f3ff'),
(177, 'craft', 'm200716_153800_public_token_settings_in_project_config', '2020-08-20 17:42:06', '2020-08-20 17:42:06', '2020-08-20 17:42:06', '45391dfa-477a-483b-a655-fb44fd196ecb'),
(178, 'craft', 'm200720_175543_drop_unique_constraints', '2020-08-20 17:42:07', '2020-08-20 17:42:07', '2020-08-20 17:42:07', '0c207d2b-99a7-49a3-84dd-f6f1879af470'),
(179, 'craft', 'm200825_051217_project_config_version', '2020-09-01 14:26:58', '2020-09-01 14:26:58', '2020-09-01 14:26:58', '3a8f3017-0004-4da3-aa7c-38ad024bd0a1'),
(180, 'plugin:redactor', 'm180430_204710_remove_old_plugins', '2020-09-01 14:31:46', '2020-09-01 14:31:46', '2020-09-01 14:31:46', '30fa5ca6-9dab-484e-94d9-09cd3e0d0dc7'),
(181, 'plugin:redactor', 'Install', '2020-09-01 14:31:46', '2020-09-01 14:31:46', '2020-09-01 14:31:46', 'befcb055-0526-472d-912c-81d2e0328297'),
(182, 'plugin:redactor', 'm190225_003922_split_cleanup_html_settings', '2020-09-01 14:31:46', '2020-09-01 14:31:46', '2020-09-01 14:31:46', 'f1a79691-18e9-4106-ae64-e240019a4a3d'),
(183, 'plugin:super-table', 'Install', '2020-09-03 00:04:15', '2020-09-03 00:04:15', '2020-09-03 00:04:15', 'b5f23bc3-90f2-40de-a170-d97fe99d2894'),
(184, 'plugin:super-table', 'm180210_000000_migrate_content_tables', '2020-09-03 00:04:15', '2020-09-03 00:04:15', '2020-09-03 00:04:15', 'a3afd99a-4591-4753-9bcc-72e4e0344159'),
(185, 'plugin:super-table', 'm180211_000000_type_columns', '2020-09-03 00:04:15', '2020-09-03 00:04:15', '2020-09-03 00:04:15', '65144f23-a7d8-4c91-93ae-024875d0fddc'),
(186, 'plugin:super-table', 'm180219_000000_sites', '2020-09-03 00:04:15', '2020-09-03 00:04:15', '2020-09-03 00:04:15', 'fbbbae17-5dd7-4bfa-b8ca-2fffe87cd543'),
(187, 'plugin:super-table', 'm180220_000000_fix_context', '2020-09-03 00:04:15', '2020-09-03 00:04:15', '2020-09-03 00:04:15', '44b978e7-741d-420b-94ff-670eb879b63c'),
(188, 'plugin:super-table', 'm190117_000000_soft_deletes', '2020-09-03 00:04:15', '2020-09-03 00:04:15', '2020-09-03 00:04:15', '7482c6c4-17bc-464b-9749-54e7e7bc0920'),
(189, 'plugin:super-table', 'm190117_000001_context_to_uids', '2020-09-03 00:04:15', '2020-09-03 00:04:15', '2020-09-03 00:04:15', 'c35501cf-0e75-424d-92bd-1d7969b2d9ef'),
(190, 'plugin:super-table', 'm190120_000000_fix_supertablecontent_tables', '2020-09-03 00:04:15', '2020-09-03 00:04:15', '2020-09-03 00:04:15', '100750e3-a744-4274-b4e3-cab5926d9618'),
(191, 'plugin:super-table', 'm190131_000000_fix_supertable_missing_fields', '2020-09-03 00:04:15', '2020-09-03 00:04:15', '2020-09-03 00:04:15', 'b10de844-db46-4ee2-a778-b38a5f5ba22b'),
(192, 'plugin:super-table', 'm190227_100000_fix_project_config', '2020-09-03 00:04:15', '2020-09-03 00:04:15', '2020-09-03 00:04:15', '92956549-57c1-4011-8c20-62bcae027a31'),
(193, 'plugin:super-table', 'm190511_100000_fix_project_config', '2020-09-03 00:04:15', '2020-09-03 00:04:15', '2020-09-03 00:04:15', '6f3cba51-ec85-4c10-9c19-c19a1e4a67ca'),
(194, 'plugin:super-table', 'm190520_000000_fix_project_config', '2020-09-03 00:04:15', '2020-09-03 00:04:15', '2020-09-03 00:04:15', '80582c6c-3a51-4192-9570-bdb309154719'),
(195, 'plugin:super-table', 'm190714_000000_propagation_method', '2020-09-03 00:04:15', '2020-09-03 00:04:15', '2020-09-03 00:04:15', 'fb24df9e-e898-43d3-be97-31ab913422b7'),
(196, 'plugin:super-table', 'm191127_000000_fix_width', '2020-09-03 00:04:15', '2020-09-03 00:04:15', '2020-09-03 00:04:15', '5054dc30-668c-4f61-a564-5809a39da9f5');

-- --------------------------------------------------------

--
-- Table structure for table `plugins`
--

CREATE TABLE `plugins` (
  `id` int(11) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `schemaVersion` varchar(255) NOT NULL,
  `licenseKeyStatus` enum('valid','invalid','mismatched','astray','unknown') NOT NULL DEFAULT 'unknown',
  `licensedEdition` varchar(255) DEFAULT NULL,
  `installDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `plugins`
--

INSERT INTO `plugins` (`id`, `handle`, `version`, `schemaVersion`, `licenseKeyStatus`, `licensedEdition`, `installDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'instagrammedia', '1.0.0', '1.0.0', 'unknown', NULL, '2020-08-31 14:04:40', '2020-08-31 14:04:40', '2020-09-03 13:34:52', '47f75acb-8c0c-4cf2-bf85-80c099497ba3'),
(2, 'redactor', '2.7.4', '2.3.0', 'unknown', NULL, '2020-09-01 14:31:46', '2020-09-01 14:31:46', '2020-09-03 13:34:52', '1202a24c-bb45-4a41-a643-cd6569a8ecb3'),
(3, 'expanded-singles', '1.1.3', '1.0.0', 'unknown', NULL, '2020-09-01 16:27:25', '2020-09-01 16:27:25', '2020-09-03 13:34:52', '07072355-4772-441b-b2c8-18ffa6665311'),
(4, 'super-table', '2.6.2', '2.2.1', 'unknown', NULL, '2020-09-03 00:04:14', '2020-09-03 00:04:14', '2020-09-03 13:34:52', '5479a676-938d-4b5a-ae9d-4d20584476f3');

-- --------------------------------------------------------

--
-- Table structure for table `projectconfig`
--

CREATE TABLE `projectconfig` (
  `path` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projectconfig`
--

INSERT INTO `projectconfig` (`path`, `value`) VALUES
('dateModified', '1599091946'),
('email.fromEmail', '\"jsosa@heyblackmagic.com\"'),
('email.fromName', '\"Hopscotch\"'),
('email.transportType', '\"craft\\\\mail\\\\transportadapters\\\\Sendmail\"'),
('entryTypes.2051a8cf-04d7-40da-bd7d-eece02000f6e.fieldLayouts.d2107394-6115-4eeb-80ff-596bf99c1dec.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.2051a8cf-04d7-40da-bd7d-eece02000f6e.fieldLayouts.d2107394-6115-4eeb-80ff-596bf99c1dec.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.2051a8cf-04d7-40da-bd7d-eece02000f6e.fieldLayouts.d2107394-6115-4eeb-80ff-596bf99c1dec.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.2051a8cf-04d7-40da-bd7d-eece02000f6e.fieldLayouts.d2107394-6115-4eeb-80ff-596bf99c1dec.tabs.0.elements.0.class', 'null'),
('entryTypes.2051a8cf-04d7-40da-bd7d-eece02000f6e.fieldLayouts.d2107394-6115-4eeb-80ff-596bf99c1dec.tabs.0.elements.0.disabled', 'false'),
('entryTypes.2051a8cf-04d7-40da-bd7d-eece02000f6e.fieldLayouts.d2107394-6115-4eeb-80ff-596bf99c1dec.tabs.0.elements.0.id', 'null'),
('entryTypes.2051a8cf-04d7-40da-bd7d-eece02000f6e.fieldLayouts.d2107394-6115-4eeb-80ff-596bf99c1dec.tabs.0.elements.0.instructions', 'null'),
('entryTypes.2051a8cf-04d7-40da-bd7d-eece02000f6e.fieldLayouts.d2107394-6115-4eeb-80ff-596bf99c1dec.tabs.0.elements.0.label', 'null'),
('entryTypes.2051a8cf-04d7-40da-bd7d-eece02000f6e.fieldLayouts.d2107394-6115-4eeb-80ff-596bf99c1dec.tabs.0.elements.0.max', 'null'),
('entryTypes.2051a8cf-04d7-40da-bd7d-eece02000f6e.fieldLayouts.d2107394-6115-4eeb-80ff-596bf99c1dec.tabs.0.elements.0.min', 'null'),
('entryTypes.2051a8cf-04d7-40da-bd7d-eece02000f6e.fieldLayouts.d2107394-6115-4eeb-80ff-596bf99c1dec.tabs.0.elements.0.name', 'null'),
('entryTypes.2051a8cf-04d7-40da-bd7d-eece02000f6e.fieldLayouts.d2107394-6115-4eeb-80ff-596bf99c1dec.tabs.0.elements.0.orientation', 'null'),
('entryTypes.2051a8cf-04d7-40da-bd7d-eece02000f6e.fieldLayouts.d2107394-6115-4eeb-80ff-596bf99c1dec.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.2051a8cf-04d7-40da-bd7d-eece02000f6e.fieldLayouts.d2107394-6115-4eeb-80ff-596bf99c1dec.tabs.0.elements.0.readonly', 'false'),
('entryTypes.2051a8cf-04d7-40da-bd7d-eece02000f6e.fieldLayouts.d2107394-6115-4eeb-80ff-596bf99c1dec.tabs.0.elements.0.requirable', 'false'),
('entryTypes.2051a8cf-04d7-40da-bd7d-eece02000f6e.fieldLayouts.d2107394-6115-4eeb-80ff-596bf99c1dec.tabs.0.elements.0.required', 'false'),
('entryTypes.2051a8cf-04d7-40da-bd7d-eece02000f6e.fieldLayouts.d2107394-6115-4eeb-80ff-596bf99c1dec.tabs.0.elements.0.size', 'null'),
('entryTypes.2051a8cf-04d7-40da-bd7d-eece02000f6e.fieldLayouts.d2107394-6115-4eeb-80ff-596bf99c1dec.tabs.0.elements.0.step', 'null'),
('entryTypes.2051a8cf-04d7-40da-bd7d-eece02000f6e.fieldLayouts.d2107394-6115-4eeb-80ff-596bf99c1dec.tabs.0.elements.0.tip', 'null'),
('entryTypes.2051a8cf-04d7-40da-bd7d-eece02000f6e.fieldLayouts.d2107394-6115-4eeb-80ff-596bf99c1dec.tabs.0.elements.0.title', 'null'),
('entryTypes.2051a8cf-04d7-40da-bd7d-eece02000f6e.fieldLayouts.d2107394-6115-4eeb-80ff-596bf99c1dec.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\EntryTitleField\"'),
('entryTypes.2051a8cf-04d7-40da-bd7d-eece02000f6e.fieldLayouts.d2107394-6115-4eeb-80ff-596bf99c1dec.tabs.0.elements.0.warning', 'null'),
('entryTypes.2051a8cf-04d7-40da-bd7d-eece02000f6e.fieldLayouts.d2107394-6115-4eeb-80ff-596bf99c1dec.tabs.0.elements.0.width', '100'),
('entryTypes.2051a8cf-04d7-40da-bd7d-eece02000f6e.fieldLayouts.d2107394-6115-4eeb-80ff-596bf99c1dec.tabs.0.elements.1.fieldUid', '\"f24f95af-afae-4ecf-95d0-62fe87b4f56a\"'),
('entryTypes.2051a8cf-04d7-40da-bd7d-eece02000f6e.fieldLayouts.d2107394-6115-4eeb-80ff-596bf99c1dec.tabs.0.elements.1.instructions', 'null'),
('entryTypes.2051a8cf-04d7-40da-bd7d-eece02000f6e.fieldLayouts.d2107394-6115-4eeb-80ff-596bf99c1dec.tabs.0.elements.1.label', 'null'),
('entryTypes.2051a8cf-04d7-40da-bd7d-eece02000f6e.fieldLayouts.d2107394-6115-4eeb-80ff-596bf99c1dec.tabs.0.elements.1.required', 'false'),
('entryTypes.2051a8cf-04d7-40da-bd7d-eece02000f6e.fieldLayouts.d2107394-6115-4eeb-80ff-596bf99c1dec.tabs.0.elements.1.tip', 'null'),
('entryTypes.2051a8cf-04d7-40da-bd7d-eece02000f6e.fieldLayouts.d2107394-6115-4eeb-80ff-596bf99c1dec.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.2051a8cf-04d7-40da-bd7d-eece02000f6e.fieldLayouts.d2107394-6115-4eeb-80ff-596bf99c1dec.tabs.0.elements.1.warning', 'null'),
('entryTypes.2051a8cf-04d7-40da-bd7d-eece02000f6e.fieldLayouts.d2107394-6115-4eeb-80ff-596bf99c1dec.tabs.0.elements.1.width', '100'),
('entryTypes.2051a8cf-04d7-40da-bd7d-eece02000f6e.fieldLayouts.d2107394-6115-4eeb-80ff-596bf99c1dec.tabs.0.name', '\"Content\"'),
('entryTypes.2051a8cf-04d7-40da-bd7d-eece02000f6e.fieldLayouts.d2107394-6115-4eeb-80ff-596bf99c1dec.tabs.0.sortOrder', '1'),
('entryTypes.2051a8cf-04d7-40da-bd7d-eece02000f6e.handle', '\"policy\"'),
('entryTypes.2051a8cf-04d7-40da-bd7d-eece02000f6e.hasTitleField', 'false'),
('entryTypes.2051a8cf-04d7-40da-bd7d-eece02000f6e.name', '\"Policy\"'),
('entryTypes.2051a8cf-04d7-40da-bd7d-eece02000f6e.section', '\"4c1f4924-dad4-48b2-82d6-4b12282af8f4\"'),
('entryTypes.2051a8cf-04d7-40da-bd7d-eece02000f6e.sortOrder', '1'),
('entryTypes.2051a8cf-04d7-40da-bd7d-eece02000f6e.titleFormat', '\"{section.name|raw}\"'),
('entryTypes.2051a8cf-04d7-40da-bd7d-eece02000f6e.titleTranslationKeyFormat', 'null'),
('entryTypes.2051a8cf-04d7-40da-bd7d-eece02000f6e.titleTranslationMethod', '\"site\"'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.fieldLayouts.3925ee4d-be99-4524-8f69-5f2794b7a05a.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.fieldLayouts.3925ee4d-be99-4524-8f69-5f2794b7a05a.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.fieldLayouts.3925ee4d-be99-4524-8f69-5f2794b7a05a.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.fieldLayouts.3925ee4d-be99-4524-8f69-5f2794b7a05a.tabs.0.elements.0.class', 'null'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.fieldLayouts.3925ee4d-be99-4524-8f69-5f2794b7a05a.tabs.0.elements.0.disabled', 'false'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.fieldLayouts.3925ee4d-be99-4524-8f69-5f2794b7a05a.tabs.0.elements.0.id', 'null'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.fieldLayouts.3925ee4d-be99-4524-8f69-5f2794b7a05a.tabs.0.elements.0.instructions', 'null'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.fieldLayouts.3925ee4d-be99-4524-8f69-5f2794b7a05a.tabs.0.elements.0.label', 'null'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.fieldLayouts.3925ee4d-be99-4524-8f69-5f2794b7a05a.tabs.0.elements.0.max', 'null'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.fieldLayouts.3925ee4d-be99-4524-8f69-5f2794b7a05a.tabs.0.elements.0.min', 'null'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.fieldLayouts.3925ee4d-be99-4524-8f69-5f2794b7a05a.tabs.0.elements.0.name', 'null'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.fieldLayouts.3925ee4d-be99-4524-8f69-5f2794b7a05a.tabs.0.elements.0.orientation', 'null'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.fieldLayouts.3925ee4d-be99-4524-8f69-5f2794b7a05a.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.fieldLayouts.3925ee4d-be99-4524-8f69-5f2794b7a05a.tabs.0.elements.0.readonly', 'false'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.fieldLayouts.3925ee4d-be99-4524-8f69-5f2794b7a05a.tabs.0.elements.0.requirable', 'false'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.fieldLayouts.3925ee4d-be99-4524-8f69-5f2794b7a05a.tabs.0.elements.0.required', 'false'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.fieldLayouts.3925ee4d-be99-4524-8f69-5f2794b7a05a.tabs.0.elements.0.size', 'null'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.fieldLayouts.3925ee4d-be99-4524-8f69-5f2794b7a05a.tabs.0.elements.0.step', 'null'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.fieldLayouts.3925ee4d-be99-4524-8f69-5f2794b7a05a.tabs.0.elements.0.tip', 'null'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.fieldLayouts.3925ee4d-be99-4524-8f69-5f2794b7a05a.tabs.0.elements.0.title', 'null'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.fieldLayouts.3925ee4d-be99-4524-8f69-5f2794b7a05a.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\EntryTitleField\"'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.fieldLayouts.3925ee4d-be99-4524-8f69-5f2794b7a05a.tabs.0.elements.0.warning', 'null'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.fieldLayouts.3925ee4d-be99-4524-8f69-5f2794b7a05a.tabs.0.elements.0.width', '100'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.fieldLayouts.3925ee4d-be99-4524-8f69-5f2794b7a05a.tabs.0.elements.1.fieldUid', '\"1118ceb9-2833-4bd6-b646-c599f6a7685d\"'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.fieldLayouts.3925ee4d-be99-4524-8f69-5f2794b7a05a.tabs.0.elements.1.instructions', 'null'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.fieldLayouts.3925ee4d-be99-4524-8f69-5f2794b7a05a.tabs.0.elements.1.label', 'null'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.fieldLayouts.3925ee4d-be99-4524-8f69-5f2794b7a05a.tabs.0.elements.1.required', 'false'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.fieldLayouts.3925ee4d-be99-4524-8f69-5f2794b7a05a.tabs.0.elements.1.tip', 'null'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.fieldLayouts.3925ee4d-be99-4524-8f69-5f2794b7a05a.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.fieldLayouts.3925ee4d-be99-4524-8f69-5f2794b7a05a.tabs.0.elements.1.warning', 'null'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.fieldLayouts.3925ee4d-be99-4524-8f69-5f2794b7a05a.tabs.0.elements.1.width', '100'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.fieldLayouts.3925ee4d-be99-4524-8f69-5f2794b7a05a.tabs.0.elements.2.fieldUid', '\"0fc9f5ae-aaad-4887-95e9-e411421a5beb\"'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.fieldLayouts.3925ee4d-be99-4524-8f69-5f2794b7a05a.tabs.0.elements.2.instructions', 'null'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.fieldLayouts.3925ee4d-be99-4524-8f69-5f2794b7a05a.tabs.0.elements.2.label', 'null'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.fieldLayouts.3925ee4d-be99-4524-8f69-5f2794b7a05a.tabs.0.elements.2.required', 'false'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.fieldLayouts.3925ee4d-be99-4524-8f69-5f2794b7a05a.tabs.0.elements.2.tip', 'null'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.fieldLayouts.3925ee4d-be99-4524-8f69-5f2794b7a05a.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.fieldLayouts.3925ee4d-be99-4524-8f69-5f2794b7a05a.tabs.0.elements.2.warning', 'null'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.fieldLayouts.3925ee4d-be99-4524-8f69-5f2794b7a05a.tabs.0.elements.2.width', '100'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.fieldLayouts.3925ee4d-be99-4524-8f69-5f2794b7a05a.tabs.0.elements.3.fieldUid', '\"912b5e71-de7b-47a1-ba51-e4c04653f72b\"'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.fieldLayouts.3925ee4d-be99-4524-8f69-5f2794b7a05a.tabs.0.elements.3.instructions', 'null'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.fieldLayouts.3925ee4d-be99-4524-8f69-5f2794b7a05a.tabs.0.elements.3.label', 'null'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.fieldLayouts.3925ee4d-be99-4524-8f69-5f2794b7a05a.tabs.0.elements.3.required', 'false'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.fieldLayouts.3925ee4d-be99-4524-8f69-5f2794b7a05a.tabs.0.elements.3.tip', 'null'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.fieldLayouts.3925ee4d-be99-4524-8f69-5f2794b7a05a.tabs.0.elements.3.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.fieldLayouts.3925ee4d-be99-4524-8f69-5f2794b7a05a.tabs.0.elements.3.warning', 'null'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.fieldLayouts.3925ee4d-be99-4524-8f69-5f2794b7a05a.tabs.0.elements.3.width', '100'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.fieldLayouts.3925ee4d-be99-4524-8f69-5f2794b7a05a.tabs.0.name', '\"Content\"'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.fieldLayouts.3925ee4d-be99-4524-8f69-5f2794b7a05a.tabs.0.sortOrder', '1'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.handle', '\"covid19\"'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.hasTitleField', 'false'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.name', '\"Covid 19\"'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.section', '\"3c305ecc-d28d-4900-a9ab-c6364f3d26c3\"'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.sortOrder', '1'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.titleFormat', '\"{section.name|raw}\"'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.titleTranslationKeyFormat', 'null'),
('entryTypes.2ad632e7-d378-4f89-b2c1-c89c25e07816.titleTranslationMethod', '\"site\"'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.elements.0.class', 'null'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.elements.0.disabled', 'false'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.elements.0.id', 'null'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.elements.0.instructions', 'null'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.elements.0.label', 'null'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.elements.0.max', 'null'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.elements.0.min', 'null'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.elements.0.name', 'null'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.elements.0.orientation', 'null'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.elements.0.readonly', 'false'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.elements.0.requirable', 'false'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.elements.0.required', 'false'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.elements.0.size', 'null'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.elements.0.step', 'null'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.elements.0.tip', 'null'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.elements.0.title', 'null'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\EntryTitleField\"'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.elements.0.warning', 'null'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.elements.0.width', '100'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.elements.1.fieldUid', '\"08c4e1f2-f050-4136-9fae-966ecf5d9bc4\"'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.elements.1.instructions', 'null'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.elements.1.label', 'null'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.elements.1.required', 'false'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.elements.1.tip', 'null'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.elements.1.warning', 'null'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.elements.1.width', '100'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.elements.2.fieldUid', '\"3801a791-2d73-4675-970d-36a7367e5844\"'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.elements.2.instructions', 'null'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.elements.2.label', 'null'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.elements.2.required', 'false'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.elements.2.tip', 'null'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.elements.2.warning', 'null'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.elements.2.width', '100'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.elements.3.fieldUid', '\"72358550-6448-4bdd-9bdb-0bbed08109c8\"'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.elements.3.instructions', 'null'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.elements.3.label', 'null'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.elements.3.required', 'false'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.elements.3.tip', 'null'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.elements.3.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.elements.3.warning', 'null'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.elements.3.width', '100'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.elements.4.fieldUid', '\"4af71e1d-2a59-47b9-9552-29c24b9877d9\"'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.elements.4.instructions', 'null'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.elements.4.label', 'null'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.elements.4.required', 'false'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.elements.4.tip', 'null'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.elements.4.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.elements.4.warning', 'null'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.elements.4.width', '100'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.name', '\"Home\"'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.fieldLayouts.23ac780a-5470-4baf-bf3f-94d29b85bddb.tabs.0.sortOrder', '1'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.handle', '\"home\"'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.hasTitleField', 'false'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.name', '\"Home\"'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.section', '\"eadb3e6b-cdf7-457f-9780-97d389f823ee\"'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.sortOrder', '1'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.titleFormat', '\"{section.name|raw}\"'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.titleTranslationKeyFormat', 'null'),
('entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.titleTranslationMethod', '\"site\"'),
('entryTypes.676c8dae-d7a4-4211-88ef-cc8c499d7f31.fieldLayouts.bc160561-f09e-488c-b9e8-116c3f969673.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.676c8dae-d7a4-4211-88ef-cc8c499d7f31.fieldLayouts.bc160561-f09e-488c-b9e8-116c3f969673.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.676c8dae-d7a4-4211-88ef-cc8c499d7f31.fieldLayouts.bc160561-f09e-488c-b9e8-116c3f969673.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.676c8dae-d7a4-4211-88ef-cc8c499d7f31.fieldLayouts.bc160561-f09e-488c-b9e8-116c3f969673.tabs.0.elements.0.class', 'null'),
('entryTypes.676c8dae-d7a4-4211-88ef-cc8c499d7f31.fieldLayouts.bc160561-f09e-488c-b9e8-116c3f969673.tabs.0.elements.0.disabled', 'false'),
('entryTypes.676c8dae-d7a4-4211-88ef-cc8c499d7f31.fieldLayouts.bc160561-f09e-488c-b9e8-116c3f969673.tabs.0.elements.0.id', 'null'),
('entryTypes.676c8dae-d7a4-4211-88ef-cc8c499d7f31.fieldLayouts.bc160561-f09e-488c-b9e8-116c3f969673.tabs.0.elements.0.instructions', 'null'),
('entryTypes.676c8dae-d7a4-4211-88ef-cc8c499d7f31.fieldLayouts.bc160561-f09e-488c-b9e8-116c3f969673.tabs.0.elements.0.label', 'null'),
('entryTypes.676c8dae-d7a4-4211-88ef-cc8c499d7f31.fieldLayouts.bc160561-f09e-488c-b9e8-116c3f969673.tabs.0.elements.0.max', 'null'),
('entryTypes.676c8dae-d7a4-4211-88ef-cc8c499d7f31.fieldLayouts.bc160561-f09e-488c-b9e8-116c3f969673.tabs.0.elements.0.min', 'null'),
('entryTypes.676c8dae-d7a4-4211-88ef-cc8c499d7f31.fieldLayouts.bc160561-f09e-488c-b9e8-116c3f969673.tabs.0.elements.0.name', 'null'),
('entryTypes.676c8dae-d7a4-4211-88ef-cc8c499d7f31.fieldLayouts.bc160561-f09e-488c-b9e8-116c3f969673.tabs.0.elements.0.orientation', 'null'),
('entryTypes.676c8dae-d7a4-4211-88ef-cc8c499d7f31.fieldLayouts.bc160561-f09e-488c-b9e8-116c3f969673.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.676c8dae-d7a4-4211-88ef-cc8c499d7f31.fieldLayouts.bc160561-f09e-488c-b9e8-116c3f969673.tabs.0.elements.0.readonly', 'false'),
('entryTypes.676c8dae-d7a4-4211-88ef-cc8c499d7f31.fieldLayouts.bc160561-f09e-488c-b9e8-116c3f969673.tabs.0.elements.0.requirable', 'false'),
('entryTypes.676c8dae-d7a4-4211-88ef-cc8c499d7f31.fieldLayouts.bc160561-f09e-488c-b9e8-116c3f969673.tabs.0.elements.0.required', 'false'),
('entryTypes.676c8dae-d7a4-4211-88ef-cc8c499d7f31.fieldLayouts.bc160561-f09e-488c-b9e8-116c3f969673.tabs.0.elements.0.size', 'null'),
('entryTypes.676c8dae-d7a4-4211-88ef-cc8c499d7f31.fieldLayouts.bc160561-f09e-488c-b9e8-116c3f969673.tabs.0.elements.0.step', 'null'),
('entryTypes.676c8dae-d7a4-4211-88ef-cc8c499d7f31.fieldLayouts.bc160561-f09e-488c-b9e8-116c3f969673.tabs.0.elements.0.tip', 'null'),
('entryTypes.676c8dae-d7a4-4211-88ef-cc8c499d7f31.fieldLayouts.bc160561-f09e-488c-b9e8-116c3f969673.tabs.0.elements.0.title', 'null'),
('entryTypes.676c8dae-d7a4-4211-88ef-cc8c499d7f31.fieldLayouts.bc160561-f09e-488c-b9e8-116c3f969673.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\EntryTitleField\"'),
('entryTypes.676c8dae-d7a4-4211-88ef-cc8c499d7f31.fieldLayouts.bc160561-f09e-488c-b9e8-116c3f969673.tabs.0.elements.0.warning', 'null'),
('entryTypes.676c8dae-d7a4-4211-88ef-cc8c499d7f31.fieldLayouts.bc160561-f09e-488c-b9e8-116c3f969673.tabs.0.elements.0.width', '100'),
('entryTypes.676c8dae-d7a4-4211-88ef-cc8c499d7f31.fieldLayouts.bc160561-f09e-488c-b9e8-116c3f969673.tabs.0.elements.1.fieldUid', '\"ec8da5eb-37d3-4af2-97e9-b34c888e0d16\"'),
('entryTypes.676c8dae-d7a4-4211-88ef-cc8c499d7f31.fieldLayouts.bc160561-f09e-488c-b9e8-116c3f969673.tabs.0.elements.1.instructions', 'null'),
('entryTypes.676c8dae-d7a4-4211-88ef-cc8c499d7f31.fieldLayouts.bc160561-f09e-488c-b9e8-116c3f969673.tabs.0.elements.1.label', 'null'),
('entryTypes.676c8dae-d7a4-4211-88ef-cc8c499d7f31.fieldLayouts.bc160561-f09e-488c-b9e8-116c3f969673.tabs.0.elements.1.required', 'false'),
('entryTypes.676c8dae-d7a4-4211-88ef-cc8c499d7f31.fieldLayouts.bc160561-f09e-488c-b9e8-116c3f969673.tabs.0.elements.1.tip', 'null'),
('entryTypes.676c8dae-d7a4-4211-88ef-cc8c499d7f31.fieldLayouts.bc160561-f09e-488c-b9e8-116c3f969673.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.676c8dae-d7a4-4211-88ef-cc8c499d7f31.fieldLayouts.bc160561-f09e-488c-b9e8-116c3f969673.tabs.0.elements.1.warning', 'null'),
('entryTypes.676c8dae-d7a4-4211-88ef-cc8c499d7f31.fieldLayouts.bc160561-f09e-488c-b9e8-116c3f969673.tabs.0.elements.1.width', '100'),
('entryTypes.676c8dae-d7a4-4211-88ef-cc8c499d7f31.fieldLayouts.bc160561-f09e-488c-b9e8-116c3f969673.tabs.0.elements.2.fieldUid', '\"405e9399-5a98-4bbe-b0a0-95343c280b3d\"'),
('entryTypes.676c8dae-d7a4-4211-88ef-cc8c499d7f31.fieldLayouts.bc160561-f09e-488c-b9e8-116c3f969673.tabs.0.elements.2.instructions', 'null'),
('entryTypes.676c8dae-d7a4-4211-88ef-cc8c499d7f31.fieldLayouts.bc160561-f09e-488c-b9e8-116c3f969673.tabs.0.elements.2.label', 'null'),
('entryTypes.676c8dae-d7a4-4211-88ef-cc8c499d7f31.fieldLayouts.bc160561-f09e-488c-b9e8-116c3f969673.tabs.0.elements.2.required', 'false'),
('entryTypes.676c8dae-d7a4-4211-88ef-cc8c499d7f31.fieldLayouts.bc160561-f09e-488c-b9e8-116c3f969673.tabs.0.elements.2.tip', 'null'),
('entryTypes.676c8dae-d7a4-4211-88ef-cc8c499d7f31.fieldLayouts.bc160561-f09e-488c-b9e8-116c3f969673.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.676c8dae-d7a4-4211-88ef-cc8c499d7f31.fieldLayouts.bc160561-f09e-488c-b9e8-116c3f969673.tabs.0.elements.2.warning', 'null'),
('entryTypes.676c8dae-d7a4-4211-88ef-cc8c499d7f31.fieldLayouts.bc160561-f09e-488c-b9e8-116c3f969673.tabs.0.elements.2.width', '100'),
('entryTypes.676c8dae-d7a4-4211-88ef-cc8c499d7f31.fieldLayouts.bc160561-f09e-488c-b9e8-116c3f969673.tabs.0.name', '\"Content\"'),
('entryTypes.676c8dae-d7a4-4211-88ef-cc8c499d7f31.fieldLayouts.bc160561-f09e-488c-b9e8-116c3f969673.tabs.0.sortOrder', '1'),
('entryTypes.676c8dae-d7a4-4211-88ef-cc8c499d7f31.handle', '\"about\"'),
('entryTypes.676c8dae-d7a4-4211-88ef-cc8c499d7f31.hasTitleField', 'false'),
('entryTypes.676c8dae-d7a4-4211-88ef-cc8c499d7f31.name', '\"About\"'),
('entryTypes.676c8dae-d7a4-4211-88ef-cc8c499d7f31.section', '\"34475136-40f1-4f7b-a942-4675600cf9b0\"'),
('entryTypes.676c8dae-d7a4-4211-88ef-cc8c499d7f31.sortOrder', '1'),
('entryTypes.676c8dae-d7a4-4211-88ef-cc8c499d7f31.titleFormat', '\"{section.name|raw}\"'),
('entryTypes.676c8dae-d7a4-4211-88ef-cc8c499d7f31.titleTranslationKeyFormat', 'null'),
('entryTypes.676c8dae-d7a4-4211-88ef-cc8c499d7f31.titleTranslationMethod', '\"site\"'),
('entryTypes.7e678287-2507-4dc3-89fc-2896a353088d.fieldLayouts.8ed13866-a88a-43d9-8d26-ab38642d8d0b.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.7e678287-2507-4dc3-89fc-2896a353088d.fieldLayouts.8ed13866-a88a-43d9-8d26-ab38642d8d0b.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.7e678287-2507-4dc3-89fc-2896a353088d.fieldLayouts.8ed13866-a88a-43d9-8d26-ab38642d8d0b.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.7e678287-2507-4dc3-89fc-2896a353088d.fieldLayouts.8ed13866-a88a-43d9-8d26-ab38642d8d0b.tabs.0.elements.0.class', 'null'),
('entryTypes.7e678287-2507-4dc3-89fc-2896a353088d.fieldLayouts.8ed13866-a88a-43d9-8d26-ab38642d8d0b.tabs.0.elements.0.disabled', 'false'),
('entryTypes.7e678287-2507-4dc3-89fc-2896a353088d.fieldLayouts.8ed13866-a88a-43d9-8d26-ab38642d8d0b.tabs.0.elements.0.id', 'null'),
('entryTypes.7e678287-2507-4dc3-89fc-2896a353088d.fieldLayouts.8ed13866-a88a-43d9-8d26-ab38642d8d0b.tabs.0.elements.0.instructions', 'null'),
('entryTypes.7e678287-2507-4dc3-89fc-2896a353088d.fieldLayouts.8ed13866-a88a-43d9-8d26-ab38642d8d0b.tabs.0.elements.0.label', 'null'),
('entryTypes.7e678287-2507-4dc3-89fc-2896a353088d.fieldLayouts.8ed13866-a88a-43d9-8d26-ab38642d8d0b.tabs.0.elements.0.max', 'null'),
('entryTypes.7e678287-2507-4dc3-89fc-2896a353088d.fieldLayouts.8ed13866-a88a-43d9-8d26-ab38642d8d0b.tabs.0.elements.0.min', 'null'),
('entryTypes.7e678287-2507-4dc3-89fc-2896a353088d.fieldLayouts.8ed13866-a88a-43d9-8d26-ab38642d8d0b.tabs.0.elements.0.name', 'null'),
('entryTypes.7e678287-2507-4dc3-89fc-2896a353088d.fieldLayouts.8ed13866-a88a-43d9-8d26-ab38642d8d0b.tabs.0.elements.0.orientation', 'null'),
('entryTypes.7e678287-2507-4dc3-89fc-2896a353088d.fieldLayouts.8ed13866-a88a-43d9-8d26-ab38642d8d0b.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.7e678287-2507-4dc3-89fc-2896a353088d.fieldLayouts.8ed13866-a88a-43d9-8d26-ab38642d8d0b.tabs.0.elements.0.readonly', 'false'),
('entryTypes.7e678287-2507-4dc3-89fc-2896a353088d.fieldLayouts.8ed13866-a88a-43d9-8d26-ab38642d8d0b.tabs.0.elements.0.requirable', 'false'),
('entryTypes.7e678287-2507-4dc3-89fc-2896a353088d.fieldLayouts.8ed13866-a88a-43d9-8d26-ab38642d8d0b.tabs.0.elements.0.required', 'false'),
('entryTypes.7e678287-2507-4dc3-89fc-2896a353088d.fieldLayouts.8ed13866-a88a-43d9-8d26-ab38642d8d0b.tabs.0.elements.0.size', 'null'),
('entryTypes.7e678287-2507-4dc3-89fc-2896a353088d.fieldLayouts.8ed13866-a88a-43d9-8d26-ab38642d8d0b.tabs.0.elements.0.step', 'null'),
('entryTypes.7e678287-2507-4dc3-89fc-2896a353088d.fieldLayouts.8ed13866-a88a-43d9-8d26-ab38642d8d0b.tabs.0.elements.0.tip', 'null'),
('entryTypes.7e678287-2507-4dc3-89fc-2896a353088d.fieldLayouts.8ed13866-a88a-43d9-8d26-ab38642d8d0b.tabs.0.elements.0.title', 'null'),
('entryTypes.7e678287-2507-4dc3-89fc-2896a353088d.fieldLayouts.8ed13866-a88a-43d9-8d26-ab38642d8d0b.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\EntryTitleField\"'),
('entryTypes.7e678287-2507-4dc3-89fc-2896a353088d.fieldLayouts.8ed13866-a88a-43d9-8d26-ab38642d8d0b.tabs.0.elements.0.warning', 'null'),
('entryTypes.7e678287-2507-4dc3-89fc-2896a353088d.fieldLayouts.8ed13866-a88a-43d9-8d26-ab38642d8d0b.tabs.0.elements.0.width', '100'),
('entryTypes.7e678287-2507-4dc3-89fc-2896a353088d.fieldLayouts.8ed13866-a88a-43d9-8d26-ab38642d8d0b.tabs.0.elements.1.fieldUid', '\"e7b3b7f1-8c18-4496-999a-dfe188acd0a3\"'),
('entryTypes.7e678287-2507-4dc3-89fc-2896a353088d.fieldLayouts.8ed13866-a88a-43d9-8d26-ab38642d8d0b.tabs.0.elements.1.instructions', 'null'),
('entryTypes.7e678287-2507-4dc3-89fc-2896a353088d.fieldLayouts.8ed13866-a88a-43d9-8d26-ab38642d8d0b.tabs.0.elements.1.label', 'null'),
('entryTypes.7e678287-2507-4dc3-89fc-2896a353088d.fieldLayouts.8ed13866-a88a-43d9-8d26-ab38642d8d0b.tabs.0.elements.1.required', 'false'),
('entryTypes.7e678287-2507-4dc3-89fc-2896a353088d.fieldLayouts.8ed13866-a88a-43d9-8d26-ab38642d8d0b.tabs.0.elements.1.tip', 'null'),
('entryTypes.7e678287-2507-4dc3-89fc-2896a353088d.fieldLayouts.8ed13866-a88a-43d9-8d26-ab38642d8d0b.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.7e678287-2507-4dc3-89fc-2896a353088d.fieldLayouts.8ed13866-a88a-43d9-8d26-ab38642d8d0b.tabs.0.elements.1.warning', 'null'),
('entryTypes.7e678287-2507-4dc3-89fc-2896a353088d.fieldLayouts.8ed13866-a88a-43d9-8d26-ab38642d8d0b.tabs.0.elements.1.width', '100'),
('entryTypes.7e678287-2507-4dc3-89fc-2896a353088d.fieldLayouts.8ed13866-a88a-43d9-8d26-ab38642d8d0b.tabs.0.elements.2.fieldUid', '\"d6fc4c91-3544-41f1-8d98-cbeb84362244\"'),
('entryTypes.7e678287-2507-4dc3-89fc-2896a353088d.fieldLayouts.8ed13866-a88a-43d9-8d26-ab38642d8d0b.tabs.0.elements.2.instructions', 'null'),
('entryTypes.7e678287-2507-4dc3-89fc-2896a353088d.fieldLayouts.8ed13866-a88a-43d9-8d26-ab38642d8d0b.tabs.0.elements.2.label', 'null'),
('entryTypes.7e678287-2507-4dc3-89fc-2896a353088d.fieldLayouts.8ed13866-a88a-43d9-8d26-ab38642d8d0b.tabs.0.elements.2.required', 'false'),
('entryTypes.7e678287-2507-4dc3-89fc-2896a353088d.fieldLayouts.8ed13866-a88a-43d9-8d26-ab38642d8d0b.tabs.0.elements.2.tip', 'null'),
('entryTypes.7e678287-2507-4dc3-89fc-2896a353088d.fieldLayouts.8ed13866-a88a-43d9-8d26-ab38642d8d0b.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.7e678287-2507-4dc3-89fc-2896a353088d.fieldLayouts.8ed13866-a88a-43d9-8d26-ab38642d8d0b.tabs.0.elements.2.warning', 'null'),
('entryTypes.7e678287-2507-4dc3-89fc-2896a353088d.fieldLayouts.8ed13866-a88a-43d9-8d26-ab38642d8d0b.tabs.0.elements.2.width', '100'),
('entryTypes.7e678287-2507-4dc3-89fc-2896a353088d.fieldLayouts.8ed13866-a88a-43d9-8d26-ab38642d8d0b.tabs.0.name', '\"Content\"'),
('entryTypes.7e678287-2507-4dc3-89fc-2896a353088d.fieldLayouts.8ed13866-a88a-43d9-8d26-ab38642d8d0b.tabs.0.sortOrder', '1'),
('entryTypes.7e678287-2507-4dc3-89fc-2896a353088d.handle', '\"faq\"'),
('entryTypes.7e678287-2507-4dc3-89fc-2896a353088d.hasTitleField', 'false'),
('entryTypes.7e678287-2507-4dc3-89fc-2896a353088d.name', '\"FAQ\"'),
('entryTypes.7e678287-2507-4dc3-89fc-2896a353088d.section', '\"067382e8-5a41-48c4-93eb-e1dd8b7abf98\"'),
('entryTypes.7e678287-2507-4dc3-89fc-2896a353088d.sortOrder', '1'),
('entryTypes.7e678287-2507-4dc3-89fc-2896a353088d.titleFormat', '\"{section.name|raw}\"'),
('entryTypes.7e678287-2507-4dc3-89fc-2896a353088d.titleTranslationKeyFormat', 'null'),
('entryTypes.7e678287-2507-4dc3-89fc-2896a353088d.titleTranslationMethod', '\"site\"'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.0.class', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.0.disabled', 'false'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.0.id', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.0.instructions', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.0.label', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.0.max', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.0.min', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.0.name', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.0.orientation', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.0.readonly', 'false'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.0.requirable', 'false'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.0.required', 'false'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.0.size', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.0.step', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.0.tip', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.0.title', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\EntryTitleField\"'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.0.warning', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.0.width', '100'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.1.fieldUid', '\"6cb54dd1-a7cc-43cb-a597-ecd1ae21ccc4\"'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.1.instructions', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.1.label', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.1.required', 'false'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.1.tip', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.1.warning', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.1.width', '100'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.10.heading', '\"Covid\"'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.10.type', '\"craft\\\\fieldlayoutelements\\\\Heading\"'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.11.fieldUid', '\"eb88b426-676d-4298-9392-398a335da778\"'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.11.instructions', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.11.label', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.11.required', 'false'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.11.tip', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.11.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.11.warning', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.11.width', '100'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.12.fieldUid', '\"b2b0ec89-eac4-47b0-95cd-cad671cf05d0\"'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.12.instructions', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.12.label', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.12.required', 'false'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.12.tip', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.12.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.12.warning', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.12.width', '100'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.13.heading', '\"Contact Form\"'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.13.type', '\"craft\\\\fieldlayoutelements\\\\Heading\"'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.14.fieldUid', '\"b9052a0e-92dc-49db-aca1-5a4738de74c2\"'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.14.instructions', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.14.label', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.14.required', 'false'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.14.tip', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.14.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.14.warning', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.14.width', '100'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.15.heading', '\"Accesibility\"'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.15.type', '\"craft\\\\fieldlayoutelements\\\\Heading\"'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.16.fieldUid', '\"96f68517-1b14-4a85-8670-a763bd4a3da4\"'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.16.instructions', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.16.label', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.16.required', 'false'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.16.tip', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.16.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.16.warning', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.16.width', '100'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.2.fieldUid', '\"5b4bd39d-0a73-47ca-8e2c-1f3e540e1bfc\"'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.2.instructions', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.2.label', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.2.required', 'false'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.2.tip', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.2.warning', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.2.width', '100'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.3.fieldUid', '\"c022db66-4bd4-48d4-ad7a-f55ffa388856\"'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.3.instructions', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.3.label', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.3.required', 'false'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.3.tip', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.3.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.3.warning', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.3.width', '100'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.4.fieldUid', '\"7a12b877-11a6-40ad-815f-bcb2d64cc6ba\"'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.4.instructions', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.4.label', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.4.required', 'false'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.4.tip', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.4.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.4.warning', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.4.width', '100'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.5.fieldUid', '\"f19a4bcc-3f57-4196-802c-d3b22fc012bc\"'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.5.instructions', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.5.label', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.5.required', 'false'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.5.tip', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.5.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.5.warning', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.5.width', '100'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.6.fieldUid', '\"c6a11cb7-6e80-47e9-a318-0a4dc2303c64\"'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.6.instructions', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.6.label', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.6.required', 'false'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.6.tip', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.6.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.6.warning', 'null');
INSERT INTO `projectconfig` (`path`, `value`) VALUES
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.6.width', '100'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.7.fieldUid', '\"b9800d6d-96bf-4108-a1a5-23a3ec0c8a72\"'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.7.instructions', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.7.label', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.7.required', 'false'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.7.tip', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.7.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.7.warning', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.7.width', '100'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.8.fieldUid', '\"8431433b-c239-4eb3-a6d7-83e5afa49641\"'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.8.instructions', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.8.label', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.8.required', 'false'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.8.tip', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.8.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.8.warning', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.8.width', '100'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.9.fieldUid', '\"dfd59d04-80d5-473b-8d55-f1f4eb4adfc3\"'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.9.instructions', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.9.label', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.9.required', 'false'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.9.tip', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.9.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.9.warning', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.elements.9.width', '100'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.name', '\"Contact\"'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.fieldLayouts.845d3bee-8dc9-4978-983d-57572f5453e0.tabs.0.sortOrder', '1'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.handle', '\"contact\"'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.hasTitleField', 'false'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.name', '\"Contact\"'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.section', '\"30d5184b-2aff-4beb-bcfa-b55aa3579824\"'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.sortOrder', '1'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.titleFormat', '\"{section.name|raw}\"'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.titleTranslationKeyFormat', 'null'),
('entryTypes.f2fe851d-aef7-419d-a843-ba0e7ec94a0d.titleTranslationMethod', '\"site\"'),
('fieldGroups.1900278b-fbd9-4840-8e1f-c1eba29aa8aa.name', '\"Common\"'),
('fieldGroups.20384be1-3e93-404f-ac44-81cac1b9069a.name', '\"Policy\"'),
('fieldGroups.5a732bb2-b780-4b03-8e60-569879bbaa22.name', '\"Contact\"'),
('fieldGroups.72d2a38c-21ab-4519-b91b-65f719ae5cf2.name', '\"Home\"'),
('fieldGroups.bbaf7dae-e9b7-4249-8438-3e7127eacc3e.name', '\"FAQ\"'),
('fieldGroups.d728ed2f-7f94-45a3-ba4c-04c8f011c931.name', '\"Covid\"'),
('fieldGroups.dc84b6d1-777b-4368-ae5b-41cb8bcfbe59.name', '\"Globals\"'),
('fieldGroups.fedbc63c-9c1f-4009-ac80-0ef3a8dd1320.name', '\"About\"'),
('fields.08c4e1f2-f050-4136-9fae-966ecf5d9bc4.contentColumnType', '\"text\"'),
('fields.08c4e1f2-f050-4136-9fae-966ecf5d9bc4.fieldGroup', '\"72d2a38c-21ab-4519-b91b-65f719ae5cf2\"'),
('fields.08c4e1f2-f050-4136-9fae-966ecf5d9bc4.handle', '\"homeAnimatedHeader\"'),
('fields.08c4e1f2-f050-4136-9fae-966ecf5d9bc4.instructions', '\"\"'),
('fields.08c4e1f2-f050-4136-9fae-966ecf5d9bc4.name', '\"Animated Header\"'),
('fields.08c4e1f2-f050-4136-9fae-966ecf5d9bc4.searchable', 'false'),
('fields.08c4e1f2-f050-4136-9fae-966ecf5d9bc4.settings.byteLimit', 'null'),
('fields.08c4e1f2-f050-4136-9fae-966ecf5d9bc4.settings.charLimit', 'null'),
('fields.08c4e1f2-f050-4136-9fae-966ecf5d9bc4.settings.code', '\"\"'),
('fields.08c4e1f2-f050-4136-9fae-966ecf5d9bc4.settings.columnType', 'null'),
('fields.08c4e1f2-f050-4136-9fae-966ecf5d9bc4.settings.initialRows', '\"4\"'),
('fields.08c4e1f2-f050-4136-9fae-966ecf5d9bc4.settings.multiline', '\"\"'),
('fields.08c4e1f2-f050-4136-9fae-966ecf5d9bc4.settings.placeholder', '\"\"'),
('fields.08c4e1f2-f050-4136-9fae-966ecf5d9bc4.settings.uiMode', '\"normal\"'),
('fields.08c4e1f2-f050-4136-9fae-966ecf5d9bc4.translationKeyFormat', 'null'),
('fields.08c4e1f2-f050-4136-9fae-966ecf5d9bc4.translationMethod', '\"none\"'),
('fields.08c4e1f2-f050-4136-9fae-966ecf5d9bc4.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.0fc9f5ae-aaad-4887-95e9-e411421a5beb.contentColumnType', '\"string\"'),
('fields.0fc9f5ae-aaad-4887-95e9-e411421a5beb.fieldGroup', '\"d728ed2f-7f94-45a3-ba4c-04c8f011c931\"'),
('fields.0fc9f5ae-aaad-4887-95e9-e411421a5beb.handle', '\"covidGuidelines\"'),
('fields.0fc9f5ae-aaad-4887-95e9-e411421a5beb.instructions', '\"\"'),
('fields.0fc9f5ae-aaad-4887-95e9-e411421a5beb.name', '\"Covid Guidelines\"'),
('fields.0fc9f5ae-aaad-4887-95e9-e411421a5beb.searchable', 'false'),
('fields.0fc9f5ae-aaad-4887-95e9-e411421a5beb.settings.contentTable', '\"{{%matrixcontent_covidguidelines}}\"'),
('fields.0fc9f5ae-aaad-4887-95e9-e411421a5beb.settings.maxBlocks', '\"\"'),
('fields.0fc9f5ae-aaad-4887-95e9-e411421a5beb.settings.minBlocks', '\"\"'),
('fields.0fc9f5ae-aaad-4887-95e9-e411421a5beb.settings.propagationMethod', '\"all\"'),
('fields.0fc9f5ae-aaad-4887-95e9-e411421a5beb.translationKeyFormat', 'null'),
('fields.0fc9f5ae-aaad-4887-95e9-e411421a5beb.translationMethod', '\"site\"'),
('fields.0fc9f5ae-aaad-4887-95e9-e411421a5beb.type', '\"craft\\\\fields\\\\Matrix\"'),
('fields.1118ceb9-2833-4bd6-b646-c599f6a7685d.contentColumnType', '\"text\"'),
('fields.1118ceb9-2833-4bd6-b646-c599f6a7685d.fieldGroup', '\"d728ed2f-7f94-45a3-ba4c-04c8f011c931\"'),
('fields.1118ceb9-2833-4bd6-b646-c599f6a7685d.handle', '\"covidIntroPargraph\"'),
('fields.1118ceb9-2833-4bd6-b646-c599f6a7685d.instructions', '\"\"'),
('fields.1118ceb9-2833-4bd6-b646-c599f6a7685d.name', '\"Covid Intro Pargraph\"'),
('fields.1118ceb9-2833-4bd6-b646-c599f6a7685d.searchable', 'false'),
('fields.1118ceb9-2833-4bd6-b646-c599f6a7685d.settings.byteLimit', 'null'),
('fields.1118ceb9-2833-4bd6-b646-c599f6a7685d.settings.charLimit', 'null'),
('fields.1118ceb9-2833-4bd6-b646-c599f6a7685d.settings.code', '\"\"'),
('fields.1118ceb9-2833-4bd6-b646-c599f6a7685d.settings.columnType', 'null'),
('fields.1118ceb9-2833-4bd6-b646-c599f6a7685d.settings.initialRows', '\"4\"'),
('fields.1118ceb9-2833-4bd6-b646-c599f6a7685d.settings.multiline', '\"1\"'),
('fields.1118ceb9-2833-4bd6-b646-c599f6a7685d.settings.placeholder', '\"\"'),
('fields.1118ceb9-2833-4bd6-b646-c599f6a7685d.settings.uiMode', '\"normal\"'),
('fields.1118ceb9-2833-4bd6-b646-c599f6a7685d.translationKeyFormat', 'null'),
('fields.1118ceb9-2833-4bd6-b646-c599f6a7685d.translationMethod', '\"none\"'),
('fields.1118ceb9-2833-4bd6-b646-c599f6a7685d.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.3801a791-2d73-4675-970d-36a7367e5844.contentColumnType', '\"text\"'),
('fields.3801a791-2d73-4675-970d-36a7367e5844.fieldGroup', '\"72d2a38c-21ab-4519-b91b-65f719ae5cf2\"'),
('fields.3801a791-2d73-4675-970d-36a7367e5844.handle', '\"homeOpeningSoon\"'),
('fields.3801a791-2d73-4675-970d-36a7367e5844.instructions', '\"\"'),
('fields.3801a791-2d73-4675-970d-36a7367e5844.name', '\"Opening Soon\"'),
('fields.3801a791-2d73-4675-970d-36a7367e5844.searchable', 'false'),
('fields.3801a791-2d73-4675-970d-36a7367e5844.settings.byteLimit', 'null'),
('fields.3801a791-2d73-4675-970d-36a7367e5844.settings.charLimit', 'null'),
('fields.3801a791-2d73-4675-970d-36a7367e5844.settings.code', '\"\"'),
('fields.3801a791-2d73-4675-970d-36a7367e5844.settings.columnType', 'null'),
('fields.3801a791-2d73-4675-970d-36a7367e5844.settings.initialRows', '\"4\"'),
('fields.3801a791-2d73-4675-970d-36a7367e5844.settings.multiline', '\"1\"'),
('fields.3801a791-2d73-4675-970d-36a7367e5844.settings.placeholder', '\"\"'),
('fields.3801a791-2d73-4675-970d-36a7367e5844.settings.uiMode', '\"normal\"'),
('fields.3801a791-2d73-4675-970d-36a7367e5844.translationKeyFormat', 'null'),
('fields.3801a791-2d73-4675-970d-36a7367e5844.translationMethod', '\"none\"'),
('fields.3801a791-2d73-4675-970d-36a7367e5844.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.405e9399-5a98-4bbe-b0a0-95343c280b3d.contentColumnType', '\"string\"'),
('fields.405e9399-5a98-4bbe-b0a0-95343c280b3d.fieldGroup', '\"fedbc63c-9c1f-4009-ac80-0ef3a8dd1320\"'),
('fields.405e9399-5a98-4bbe-b0a0-95343c280b3d.handle', '\"exhibitions\"'),
('fields.405e9399-5a98-4bbe-b0a0-95343c280b3d.instructions', '\"\"'),
('fields.405e9399-5a98-4bbe-b0a0-95343c280b3d.name', '\"Exhibitions\"'),
('fields.405e9399-5a98-4bbe-b0a0-95343c280b3d.searchable', 'false'),
('fields.405e9399-5a98-4bbe-b0a0-95343c280b3d.settings.contentTable', '\"{{%matrixcontent_exhibitions}}\"'),
('fields.405e9399-5a98-4bbe-b0a0-95343c280b3d.settings.maxBlocks', '\"\"'),
('fields.405e9399-5a98-4bbe-b0a0-95343c280b3d.settings.minBlocks', '\"\"'),
('fields.405e9399-5a98-4bbe-b0a0-95343c280b3d.settings.propagationMethod', '\"all\"'),
('fields.405e9399-5a98-4bbe-b0a0-95343c280b3d.translationKeyFormat', 'null'),
('fields.405e9399-5a98-4bbe-b0a0-95343c280b3d.translationMethod', '\"site\"'),
('fields.405e9399-5a98-4bbe-b0a0-95343c280b3d.type', '\"craft\\\\fields\\\\Matrix\"'),
('fields.4af71e1d-2a59-47b9-9552-29c24b9877d9.contentColumnType', '\"text\"'),
('fields.4af71e1d-2a59-47b9-9552-29c24b9877d9.fieldGroup', '\"72d2a38c-21ab-4519-b91b-65f719ae5cf2\"'),
('fields.4af71e1d-2a59-47b9-9552-29c24b9877d9.handle', '\"testimonials\"'),
('fields.4af71e1d-2a59-47b9-9552-29c24b9877d9.instructions', '\"Min rows: 4\"'),
('fields.4af71e1d-2a59-47b9-9552-29c24b9877d9.name', '\"Testimonials\"'),
('fields.4af71e1d-2a59-47b9-9552-29c24b9877d9.searchable', 'false'),
('fields.4af71e1d-2a59-47b9-9552-29c24b9877d9.settings.addRowLabel', '\"Add a testimonial\"'),
('fields.4af71e1d-2a59-47b9-9552-29c24b9877d9.settings.columns.__assoc__.0.0', '\"col1\"'),
('fields.4af71e1d-2a59-47b9-9552-29c24b9877d9.settings.columns.__assoc__.0.1.__assoc__.0.0', '\"heading\"'),
('fields.4af71e1d-2a59-47b9-9552-29c24b9877d9.settings.columns.__assoc__.0.1.__assoc__.0.1', '\"Testimonial\"'),
('fields.4af71e1d-2a59-47b9-9552-29c24b9877d9.settings.columns.__assoc__.0.1.__assoc__.1.0', '\"handle\"'),
('fields.4af71e1d-2a59-47b9-9552-29c24b9877d9.settings.columns.__assoc__.0.1.__assoc__.1.1', '\"testimonial\"'),
('fields.4af71e1d-2a59-47b9-9552-29c24b9877d9.settings.columns.__assoc__.0.1.__assoc__.2.0', '\"width\"'),
('fields.4af71e1d-2a59-47b9-9552-29c24b9877d9.settings.columns.__assoc__.0.1.__assoc__.2.1', '\"\"'),
('fields.4af71e1d-2a59-47b9-9552-29c24b9877d9.settings.columns.__assoc__.0.1.__assoc__.3.0', '\"type\"'),
('fields.4af71e1d-2a59-47b9-9552-29c24b9877d9.settings.columns.__assoc__.0.1.__assoc__.3.1', '\"multiline\"'),
('fields.4af71e1d-2a59-47b9-9552-29c24b9877d9.settings.columns.__assoc__.1.0', '\"col2\"'),
('fields.4af71e1d-2a59-47b9-9552-29c24b9877d9.settings.columns.__assoc__.1.1.__assoc__.0.0', '\"heading\"'),
('fields.4af71e1d-2a59-47b9-9552-29c24b9877d9.settings.columns.__assoc__.1.1.__assoc__.0.1', '\"Author\"'),
('fields.4af71e1d-2a59-47b9-9552-29c24b9877d9.settings.columns.__assoc__.1.1.__assoc__.1.0', '\"handle\"'),
('fields.4af71e1d-2a59-47b9-9552-29c24b9877d9.settings.columns.__assoc__.1.1.__assoc__.1.1', '\"author\"'),
('fields.4af71e1d-2a59-47b9-9552-29c24b9877d9.settings.columns.__assoc__.1.1.__assoc__.2.0', '\"width\"'),
('fields.4af71e1d-2a59-47b9-9552-29c24b9877d9.settings.columns.__assoc__.1.1.__assoc__.2.1', '\"\"'),
('fields.4af71e1d-2a59-47b9-9552-29c24b9877d9.settings.columns.__assoc__.1.1.__assoc__.3.0', '\"type\"'),
('fields.4af71e1d-2a59-47b9-9552-29c24b9877d9.settings.columns.__assoc__.1.1.__assoc__.3.1', '\"singleline\"'),
('fields.4af71e1d-2a59-47b9-9552-29c24b9877d9.settings.columnType', '\"text\"'),
('fields.4af71e1d-2a59-47b9-9552-29c24b9877d9.settings.defaults.0.__assoc__.0.0', '\"col1\"'),
('fields.4af71e1d-2a59-47b9-9552-29c24b9877d9.settings.defaults.0.__assoc__.0.1', '\"\"'),
('fields.4af71e1d-2a59-47b9-9552-29c24b9877d9.settings.defaults.0.__assoc__.1.0', '\"col2\"'),
('fields.4af71e1d-2a59-47b9-9552-29c24b9877d9.settings.defaults.0.__assoc__.1.1', '\"\"'),
('fields.4af71e1d-2a59-47b9-9552-29c24b9877d9.settings.maxRows', '\"\"'),
('fields.4af71e1d-2a59-47b9-9552-29c24b9877d9.settings.minRows', '\"4\"'),
('fields.4af71e1d-2a59-47b9-9552-29c24b9877d9.translationKeyFormat', 'null'),
('fields.4af71e1d-2a59-47b9-9552-29c24b9877d9.translationMethod', '\"none\"'),
('fields.4af71e1d-2a59-47b9-9552-29c24b9877d9.type', '\"craft\\\\fields\\\\Table\"'),
('fields.5b4bd39d-0a73-47ca-8e2c-1f3e540e1bfc.contentColumnType', '\"text\"'),
('fields.5b4bd39d-0a73-47ca-8e2c-1f3e540e1bfc.fieldGroup', '\"5a732bb2-b780-4b03-8e60-569879bbaa22\"'),
('fields.5b4bd39d-0a73-47ca-8e2c-1f3e540e1bfc.handle', '\"addressDescription\"'),
('fields.5b4bd39d-0a73-47ca-8e2c-1f3e540e1bfc.instructions', '\"\"'),
('fields.5b4bd39d-0a73-47ca-8e2c-1f3e540e1bfc.name', '\"Address Description\"'),
('fields.5b4bd39d-0a73-47ca-8e2c-1f3e540e1bfc.searchable', 'false'),
('fields.5b4bd39d-0a73-47ca-8e2c-1f3e540e1bfc.settings.byteLimit', 'null'),
('fields.5b4bd39d-0a73-47ca-8e2c-1f3e540e1bfc.settings.charLimit', 'null'),
('fields.5b4bd39d-0a73-47ca-8e2c-1f3e540e1bfc.settings.code', '\"\"'),
('fields.5b4bd39d-0a73-47ca-8e2c-1f3e540e1bfc.settings.columnType', 'null'),
('fields.5b4bd39d-0a73-47ca-8e2c-1f3e540e1bfc.settings.initialRows', '\"4\"'),
('fields.5b4bd39d-0a73-47ca-8e2c-1f3e540e1bfc.settings.multiline', '\"1\"'),
('fields.5b4bd39d-0a73-47ca-8e2c-1f3e540e1bfc.settings.placeholder', '\"\"'),
('fields.5b4bd39d-0a73-47ca-8e2c-1f3e540e1bfc.settings.uiMode', '\"normal\"'),
('fields.5b4bd39d-0a73-47ca-8e2c-1f3e540e1bfc.translationKeyFormat', 'null'),
('fields.5b4bd39d-0a73-47ca-8e2c-1f3e540e1bfc.translationMethod', '\"none\"'),
('fields.5b4bd39d-0a73-47ca-8e2c-1f3e540e1bfc.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.618e937d-b89b-49f9-89eb-3abc0c44d03f.contentColumnType', '\"text\"'),
('fields.618e937d-b89b-49f9-89eb-3abc0c44d03f.fieldGroup', '\"5a732bb2-b780-4b03-8e60-569879bbaa22\"'),
('fields.618e937d-b89b-49f9-89eb-3abc0c44d03f.handle', '\"contactFormHeader\"'),
('fields.618e937d-b89b-49f9-89eb-3abc0c44d03f.instructions', '\"\"'),
('fields.618e937d-b89b-49f9-89eb-3abc0c44d03f.name', '\"Contact Form Header\"'),
('fields.618e937d-b89b-49f9-89eb-3abc0c44d03f.searchable', 'false'),
('fields.618e937d-b89b-49f9-89eb-3abc0c44d03f.settings.byteLimit', 'null'),
('fields.618e937d-b89b-49f9-89eb-3abc0c44d03f.settings.charLimit', 'null'),
('fields.618e937d-b89b-49f9-89eb-3abc0c44d03f.settings.code', '\"\"'),
('fields.618e937d-b89b-49f9-89eb-3abc0c44d03f.settings.columnType', 'null'),
('fields.618e937d-b89b-49f9-89eb-3abc0c44d03f.settings.initialRows', '\"4\"'),
('fields.618e937d-b89b-49f9-89eb-3abc0c44d03f.settings.multiline', '\"\"'),
('fields.618e937d-b89b-49f9-89eb-3abc0c44d03f.settings.placeholder', '\"\"'),
('fields.618e937d-b89b-49f9-89eb-3abc0c44d03f.settings.uiMode', '\"normal\"'),
('fields.618e937d-b89b-49f9-89eb-3abc0c44d03f.translationKeyFormat', 'null'),
('fields.618e937d-b89b-49f9-89eb-3abc0c44d03f.translationMethod', '\"none\"'),
('fields.618e937d-b89b-49f9-89eb-3abc0c44d03f.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.6cb54dd1-a7cc-43cb-a597-ecd1ae21ccc4.contentColumnType', '\"text\"'),
('fields.6cb54dd1-a7cc-43cb-a597-ecd1ae21ccc4.fieldGroup', '\"5a732bb2-b780-4b03-8e60-569879bbaa22\"'),
('fields.6cb54dd1-a7cc-43cb-a597-ecd1ae21ccc4.handle', '\"address\"'),
('fields.6cb54dd1-a7cc-43cb-a597-ecd1ae21ccc4.instructions', '\"\"'),
('fields.6cb54dd1-a7cc-43cb-a597-ecd1ae21ccc4.name', '\"Address\"'),
('fields.6cb54dd1-a7cc-43cb-a597-ecd1ae21ccc4.searchable', 'false'),
('fields.6cb54dd1-a7cc-43cb-a597-ecd1ae21ccc4.settings.addRowLabel', '\"Add a row\"'),
('fields.6cb54dd1-a7cc-43cb-a597-ecd1ae21ccc4.settings.columns.__assoc__.0.0', '\"col1\"'),
('fields.6cb54dd1-a7cc-43cb-a597-ecd1ae21ccc4.settings.columns.__assoc__.0.1.__assoc__.0.0', '\"heading\"'),
('fields.6cb54dd1-a7cc-43cb-a597-ecd1ae21ccc4.settings.columns.__assoc__.0.1.__assoc__.0.1', '\"Address\"'),
('fields.6cb54dd1-a7cc-43cb-a597-ecd1ae21ccc4.settings.columns.__assoc__.0.1.__assoc__.1.0', '\"handle\"'),
('fields.6cb54dd1-a7cc-43cb-a597-ecd1ae21ccc4.settings.columns.__assoc__.0.1.__assoc__.1.1', '\"address\"'),
('fields.6cb54dd1-a7cc-43cb-a597-ecd1ae21ccc4.settings.columns.__assoc__.0.1.__assoc__.2.0', '\"width\"'),
('fields.6cb54dd1-a7cc-43cb-a597-ecd1ae21ccc4.settings.columns.__assoc__.0.1.__assoc__.2.1', '\"\"'),
('fields.6cb54dd1-a7cc-43cb-a597-ecd1ae21ccc4.settings.columns.__assoc__.0.1.__assoc__.3.0', '\"type\"'),
('fields.6cb54dd1-a7cc-43cb-a597-ecd1ae21ccc4.settings.columns.__assoc__.0.1.__assoc__.3.1', '\"multiline\"'),
('fields.6cb54dd1-a7cc-43cb-a597-ecd1ae21ccc4.settings.columns.__assoc__.1.0', '\"col2\"'),
('fields.6cb54dd1-a7cc-43cb-a597-ecd1ae21ccc4.settings.columns.__assoc__.1.1.__assoc__.0.0', '\"heading\"'),
('fields.6cb54dd1-a7cc-43cb-a597-ecd1ae21ccc4.settings.columns.__assoc__.1.1.__assoc__.0.1', '\"Google Map Link\"'),
('fields.6cb54dd1-a7cc-43cb-a597-ecd1ae21ccc4.settings.columns.__assoc__.1.1.__assoc__.1.0', '\"handle\"'),
('fields.6cb54dd1-a7cc-43cb-a597-ecd1ae21ccc4.settings.columns.__assoc__.1.1.__assoc__.1.1', '\"googleMapLink\"'),
('fields.6cb54dd1-a7cc-43cb-a597-ecd1ae21ccc4.settings.columns.__assoc__.1.1.__assoc__.2.0', '\"width\"'),
('fields.6cb54dd1-a7cc-43cb-a597-ecd1ae21ccc4.settings.columns.__assoc__.1.1.__assoc__.2.1', '\"\"'),
('fields.6cb54dd1-a7cc-43cb-a597-ecd1ae21ccc4.settings.columns.__assoc__.1.1.__assoc__.3.0', '\"type\"'),
('fields.6cb54dd1-a7cc-43cb-a597-ecd1ae21ccc4.settings.columns.__assoc__.1.1.__assoc__.3.1', '\"url\"'),
('fields.6cb54dd1-a7cc-43cb-a597-ecd1ae21ccc4.settings.columnType', '\"text\"'),
('fields.6cb54dd1-a7cc-43cb-a597-ecd1ae21ccc4.settings.defaults.0.__assoc__.0.0', '\"col1\"'),
('fields.6cb54dd1-a7cc-43cb-a597-ecd1ae21ccc4.settings.defaults.0.__assoc__.0.1', '\"\"'),
('fields.6cb54dd1-a7cc-43cb-a597-ecd1ae21ccc4.settings.defaults.0.__assoc__.1.0', '\"col2\"'),
('fields.6cb54dd1-a7cc-43cb-a597-ecd1ae21ccc4.settings.defaults.0.__assoc__.1.1', '\"\"'),
('fields.6cb54dd1-a7cc-43cb-a597-ecd1ae21ccc4.settings.maxRows', '\"1\"'),
('fields.6cb54dd1-a7cc-43cb-a597-ecd1ae21ccc4.settings.minRows', '\"1\"'),
('fields.6cb54dd1-a7cc-43cb-a597-ecd1ae21ccc4.translationKeyFormat', 'null'),
('fields.6cb54dd1-a7cc-43cb-a597-ecd1ae21ccc4.translationMethod', '\"none\"'),
('fields.6cb54dd1-a7cc-43cb-a597-ecd1ae21ccc4.type', '\"craft\\\\fields\\\\Table\"'),
('fields.6d77f339-131b-40ea-a446-d163ee0d4945.contentColumnType', '\"string(255)\"'),
('fields.6d77f339-131b-40ea-a446-d163ee0d4945.fieldGroup', '\"dc84b6d1-777b-4368-ae5b-41cb8bcfbe59\"'),
('fields.6d77f339-131b-40ea-a446-d163ee0d4945.handle', '\"getTicketsLink\"'),
('fields.6d77f339-131b-40ea-a446-d163ee0d4945.instructions', '\"\"'),
('fields.6d77f339-131b-40ea-a446-d163ee0d4945.name', '\"Get Tickets Link\"'),
('fields.6d77f339-131b-40ea-a446-d163ee0d4945.searchable', 'false'),
('fields.6d77f339-131b-40ea-a446-d163ee0d4945.settings.maxLength', '\"255\"'),
('fields.6d77f339-131b-40ea-a446-d163ee0d4945.settings.placeholder', '\"\"'),
('fields.6d77f339-131b-40ea-a446-d163ee0d4945.translationKeyFormat', 'null'),
('fields.6d77f339-131b-40ea-a446-d163ee0d4945.translationMethod', '\"none\"'),
('fields.6d77f339-131b-40ea-a446-d163ee0d4945.type', '\"craft\\\\fields\\\\Url\"'),
('fields.72358550-6448-4bdd-9bdb-0bbed08109c8.contentColumnType', '\"text\"'),
('fields.72358550-6448-4bdd-9bdb-0bbed08109c8.fieldGroup', '\"72d2a38c-21ab-4519-b91b-65f719ae5cf2\"'),
('fields.72358550-6448-4bdd-9bdb-0bbed08109c8.handle', '\"testimonialsHeader\"'),
('fields.72358550-6448-4bdd-9bdb-0bbed08109c8.instructions', '\"\"'),
('fields.72358550-6448-4bdd-9bdb-0bbed08109c8.name', '\"Testimonials Header\"'),
('fields.72358550-6448-4bdd-9bdb-0bbed08109c8.searchable', 'false'),
('fields.72358550-6448-4bdd-9bdb-0bbed08109c8.settings.byteLimit', 'null'),
('fields.72358550-6448-4bdd-9bdb-0bbed08109c8.settings.charLimit', 'null'),
('fields.72358550-6448-4bdd-9bdb-0bbed08109c8.settings.code', '\"\"'),
('fields.72358550-6448-4bdd-9bdb-0bbed08109c8.settings.columnType', 'null'),
('fields.72358550-6448-4bdd-9bdb-0bbed08109c8.settings.initialRows', '\"4\"'),
('fields.72358550-6448-4bdd-9bdb-0bbed08109c8.settings.multiline', '\"\"'),
('fields.72358550-6448-4bdd-9bdb-0bbed08109c8.settings.placeholder', '\"\"'),
('fields.72358550-6448-4bdd-9bdb-0bbed08109c8.settings.uiMode', '\"normal\"'),
('fields.72358550-6448-4bdd-9bdb-0bbed08109c8.translationKeyFormat', 'null'),
('fields.72358550-6448-4bdd-9bdb-0bbed08109c8.translationMethod', '\"none\"'),
('fields.72358550-6448-4bdd-9bdb-0bbed08109c8.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.768270aa-bec7-4235-a7d0-589707ca497e.contentColumnType', '\"string\"'),
('fields.768270aa-bec7-4235-a7d0-589707ca497e.fieldGroup', '\"dc84b6d1-777b-4368-ae5b-41cb8bcfbe59\"'),
('fields.768270aa-bec7-4235-a7d0-589707ca497e.handle', '\"hopscotchEmail\"'),
('fields.768270aa-bec7-4235-a7d0-589707ca497e.instructions', '\"\"'),
('fields.768270aa-bec7-4235-a7d0-589707ca497e.name', '\"Hopscotch Email\"'),
('fields.768270aa-bec7-4235-a7d0-589707ca497e.searchable', 'false'),
('fields.768270aa-bec7-4235-a7d0-589707ca497e.settings.placeholder', '\"\"'),
('fields.768270aa-bec7-4235-a7d0-589707ca497e.translationKeyFormat', 'null'),
('fields.768270aa-bec7-4235-a7d0-589707ca497e.translationMethod', '\"none\"'),
('fields.768270aa-bec7-4235-a7d0-589707ca497e.type', '\"craft\\\\fields\\\\Email\"'),
('fields.7a12b877-11a6-40ad-815f-bcb2d64cc6ba.contentColumnType', '\"text\"'),
('fields.7a12b877-11a6-40ad-815f-bcb2d64cc6ba.fieldGroup', '\"5a732bb2-b780-4b03-8e60-569879bbaa22\"'),
('fields.7a12b877-11a6-40ad-815f-bcb2d64cc6ba.handle', '\"parking\"'),
('fields.7a12b877-11a6-40ad-815f-bcb2d64cc6ba.instructions', '\"Parking instructions\"'),
('fields.7a12b877-11a6-40ad-815f-bcb2d64cc6ba.name', '\"Parking\"'),
('fields.7a12b877-11a6-40ad-815f-bcb2d64cc6ba.searchable', 'false'),
('fields.7a12b877-11a6-40ad-815f-bcb2d64cc6ba.settings.byteLimit', 'null'),
('fields.7a12b877-11a6-40ad-815f-bcb2d64cc6ba.settings.charLimit', 'null'),
('fields.7a12b877-11a6-40ad-815f-bcb2d64cc6ba.settings.code', '\"\"'),
('fields.7a12b877-11a6-40ad-815f-bcb2d64cc6ba.settings.columnType', 'null'),
('fields.7a12b877-11a6-40ad-815f-bcb2d64cc6ba.settings.initialRows', '\"4\"'),
('fields.7a12b877-11a6-40ad-815f-bcb2d64cc6ba.settings.multiline', '\"1\"'),
('fields.7a12b877-11a6-40ad-815f-bcb2d64cc6ba.settings.placeholder', '\"\"'),
('fields.7a12b877-11a6-40ad-815f-bcb2d64cc6ba.settings.uiMode', '\"normal\"'),
('fields.7a12b877-11a6-40ad-815f-bcb2d64cc6ba.translationKeyFormat', 'null'),
('fields.7a12b877-11a6-40ad-815f-bcb2d64cc6ba.translationMethod', '\"none\"'),
('fields.7a12b877-11a6-40ad-815f-bcb2d64cc6ba.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.8431433b-c239-4eb3-a6d7-83e5afa49641.contentColumnType', '\"text\"'),
('fields.8431433b-c239-4eb3-a6d7-83e5afa49641.fieldGroup', '\"5a732bb2-b780-4b03-8e60-569879bbaa22\"'),
('fields.8431433b-c239-4eb3-a6d7-83e5afa49641.handle', '\"hours\"'),
('fields.8431433b-c239-4eb3-a6d7-83e5afa49641.instructions', '\"\"'),
('fields.8431433b-c239-4eb3-a6d7-83e5afa49641.name', '\"Hours\"'),
('fields.8431433b-c239-4eb3-a6d7-83e5afa49641.searchable', 'false'),
('fields.8431433b-c239-4eb3-a6d7-83e5afa49641.settings.addRowLabel', '\"Add an Hour\"'),
('fields.8431433b-c239-4eb3-a6d7-83e5afa49641.settings.columns.__assoc__.0.0', '\"col1\"'),
('fields.8431433b-c239-4eb3-a6d7-83e5afa49641.settings.columns.__assoc__.0.1.__assoc__.0.0', '\"heading\"'),
('fields.8431433b-c239-4eb3-a6d7-83e5afa49641.settings.columns.__assoc__.0.1.__assoc__.0.1', '\"Day\"'),
('fields.8431433b-c239-4eb3-a6d7-83e5afa49641.settings.columns.__assoc__.0.1.__assoc__.1.0', '\"handle\"'),
('fields.8431433b-c239-4eb3-a6d7-83e5afa49641.settings.columns.__assoc__.0.1.__assoc__.1.1', '\"day\"'),
('fields.8431433b-c239-4eb3-a6d7-83e5afa49641.settings.columns.__assoc__.0.1.__assoc__.2.0', '\"width\"'),
('fields.8431433b-c239-4eb3-a6d7-83e5afa49641.settings.columns.__assoc__.0.1.__assoc__.2.1', '\"\"'),
('fields.8431433b-c239-4eb3-a6d7-83e5afa49641.settings.columns.__assoc__.0.1.__assoc__.3.0', '\"type\"'),
('fields.8431433b-c239-4eb3-a6d7-83e5afa49641.settings.columns.__assoc__.0.1.__assoc__.3.1', '\"singleline\"'),
('fields.8431433b-c239-4eb3-a6d7-83e5afa49641.settings.columns.__assoc__.1.0', '\"col2\"'),
('fields.8431433b-c239-4eb3-a6d7-83e5afa49641.settings.columns.__assoc__.1.1.__assoc__.0.0', '\"heading\"'),
('fields.8431433b-c239-4eb3-a6d7-83e5afa49641.settings.columns.__assoc__.1.1.__assoc__.0.1', '\"Hours\"'),
('fields.8431433b-c239-4eb3-a6d7-83e5afa49641.settings.columns.__assoc__.1.1.__assoc__.1.0', '\"handle\"'),
('fields.8431433b-c239-4eb3-a6d7-83e5afa49641.settings.columns.__assoc__.1.1.__assoc__.1.1', '\"hours\"'),
('fields.8431433b-c239-4eb3-a6d7-83e5afa49641.settings.columns.__assoc__.1.1.__assoc__.2.0', '\"width\"'),
('fields.8431433b-c239-4eb3-a6d7-83e5afa49641.settings.columns.__assoc__.1.1.__assoc__.2.1', '\"\"'),
('fields.8431433b-c239-4eb3-a6d7-83e5afa49641.settings.columns.__assoc__.1.1.__assoc__.3.0', '\"type\"'),
('fields.8431433b-c239-4eb3-a6d7-83e5afa49641.settings.columns.__assoc__.1.1.__assoc__.3.1', '\"singleline\"'),
('fields.8431433b-c239-4eb3-a6d7-83e5afa49641.settings.columns.__assoc__.2.0', '\"col3\"'),
('fields.8431433b-c239-4eb3-a6d7-83e5afa49641.settings.columns.__assoc__.2.1.__assoc__.0.0', '\"heading\"'),
('fields.8431433b-c239-4eb3-a6d7-83e5afa49641.settings.columns.__assoc__.2.1.__assoc__.0.1', '\"Last Ticket Time\"'),
('fields.8431433b-c239-4eb3-a6d7-83e5afa49641.settings.columns.__assoc__.2.1.__assoc__.1.0', '\"handle\"'),
('fields.8431433b-c239-4eb3-a6d7-83e5afa49641.settings.columns.__assoc__.2.1.__assoc__.1.1', '\"lastTicketTime\"'),
('fields.8431433b-c239-4eb3-a6d7-83e5afa49641.settings.columns.__assoc__.2.1.__assoc__.2.0', '\"width\"'),
('fields.8431433b-c239-4eb3-a6d7-83e5afa49641.settings.columns.__assoc__.2.1.__assoc__.2.1', '\"\"'),
('fields.8431433b-c239-4eb3-a6d7-83e5afa49641.settings.columns.__assoc__.2.1.__assoc__.3.0', '\"type\"'),
('fields.8431433b-c239-4eb3-a6d7-83e5afa49641.settings.columns.__assoc__.2.1.__assoc__.3.1', '\"singleline\"'),
('fields.8431433b-c239-4eb3-a6d7-83e5afa49641.settings.columnType', '\"text\"'),
('fields.8431433b-c239-4eb3-a6d7-83e5afa49641.settings.defaults.0.__assoc__.0.0', '\"col1\"'),
('fields.8431433b-c239-4eb3-a6d7-83e5afa49641.settings.defaults.0.__assoc__.0.1', '\"\"'),
('fields.8431433b-c239-4eb3-a6d7-83e5afa49641.settings.defaults.0.__assoc__.1.0', '\"col2\"'),
('fields.8431433b-c239-4eb3-a6d7-83e5afa49641.settings.defaults.0.__assoc__.1.1', '\"\"'),
('fields.8431433b-c239-4eb3-a6d7-83e5afa49641.settings.defaults.0.__assoc__.2.0', '\"col3\"'),
('fields.8431433b-c239-4eb3-a6d7-83e5afa49641.settings.defaults.0.__assoc__.2.1', '\"\"'),
('fields.8431433b-c239-4eb3-a6d7-83e5afa49641.settings.maxRows', '\"\"'),
('fields.8431433b-c239-4eb3-a6d7-83e5afa49641.settings.minRows', '\"1\"'),
('fields.8431433b-c239-4eb3-a6d7-83e5afa49641.translationKeyFormat', 'null'),
('fields.8431433b-c239-4eb3-a6d7-83e5afa49641.translationMethod', '\"none\"'),
('fields.8431433b-c239-4eb3-a6d7-83e5afa49641.type', '\"craft\\\\fields\\\\Table\"'),
('fields.912b5e71-de7b-47a1-ba51-e4c04653f72b.contentColumnType', '\"text\"'),
('fields.912b5e71-de7b-47a1-ba51-e4c04653f72b.fieldGroup', '\"d728ed2f-7f94-45a3-ba4c-04c8f011c931\"'),
('fields.912b5e71-de7b-47a1-ba51-e4c04653f72b.handle', '\"covidBottomParagraph\"'),
('fields.912b5e71-de7b-47a1-ba51-e4c04653f72b.instructions', '\"\"'),
('fields.912b5e71-de7b-47a1-ba51-e4c04653f72b.name', '\"Covid Bottom Paragraph\"'),
('fields.912b5e71-de7b-47a1-ba51-e4c04653f72b.searchable', 'false'),
('fields.912b5e71-de7b-47a1-ba51-e4c04653f72b.settings.byteLimit', 'null'),
('fields.912b5e71-de7b-47a1-ba51-e4c04653f72b.settings.charLimit', 'null'),
('fields.912b5e71-de7b-47a1-ba51-e4c04653f72b.settings.code', '\"\"'),
('fields.912b5e71-de7b-47a1-ba51-e4c04653f72b.settings.columnType', 'null'),
('fields.912b5e71-de7b-47a1-ba51-e4c04653f72b.settings.initialRows', '\"4\"'),
('fields.912b5e71-de7b-47a1-ba51-e4c04653f72b.settings.multiline', '\"1\"'),
('fields.912b5e71-de7b-47a1-ba51-e4c04653f72b.settings.placeholder', '\"\"'),
('fields.912b5e71-de7b-47a1-ba51-e4c04653f72b.settings.uiMode', '\"normal\"'),
('fields.912b5e71-de7b-47a1-ba51-e4c04653f72b.translationKeyFormat', 'null'),
('fields.912b5e71-de7b-47a1-ba51-e4c04653f72b.translationMethod', '\"none\"'),
('fields.912b5e71-de7b-47a1-ba51-e4c04653f72b.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.96f68517-1b14-4a85-8670-a763bd4a3da4.contentColumnType', '\"text\"'),
('fields.96f68517-1b14-4a85-8670-a763bd4a3da4.fieldGroup', '\"5a732bb2-b780-4b03-8e60-569879bbaa22\"'),
('fields.96f68517-1b14-4a85-8670-a763bd4a3da4.handle', '\"accesibility\"'),
('fields.96f68517-1b14-4a85-8670-a763bd4a3da4.instructions', '\"\"'),
('fields.96f68517-1b14-4a85-8670-a763bd4a3da4.name', '\"Accesibility\"'),
('fields.96f68517-1b14-4a85-8670-a763bd4a3da4.searchable', 'false'),
('fields.96f68517-1b14-4a85-8670-a763bd4a3da4.settings.byteLimit', 'null'),
('fields.96f68517-1b14-4a85-8670-a763bd4a3da4.settings.charLimit', 'null'),
('fields.96f68517-1b14-4a85-8670-a763bd4a3da4.settings.code', '\"\"'),
('fields.96f68517-1b14-4a85-8670-a763bd4a3da4.settings.columnType', 'null'),
('fields.96f68517-1b14-4a85-8670-a763bd4a3da4.settings.initialRows', '\"4\"'),
('fields.96f68517-1b14-4a85-8670-a763bd4a3da4.settings.multiline', '\"1\"'),
('fields.96f68517-1b14-4a85-8670-a763bd4a3da4.settings.placeholder', '\"\"'),
('fields.96f68517-1b14-4a85-8670-a763bd4a3da4.settings.uiMode', '\"normal\"'),
('fields.96f68517-1b14-4a85-8670-a763bd4a3da4.translationKeyFormat', 'null'),
('fields.96f68517-1b14-4a85-8670-a763bd4a3da4.translationMethod', '\"none\"'),
('fields.96f68517-1b14-4a85-8670-a763bd4a3da4.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.abb156ae-844b-4f1a-a1b4-63ce080a0009.contentColumnType', '\"string(255)\"'),
('fields.abb156ae-844b-4f1a-a1b4-63ce080a0009.fieldGroup', '\"dc84b6d1-777b-4368-ae5b-41cb8bcfbe59\"'),
('fields.abb156ae-844b-4f1a-a1b4-63ce080a0009.handle', '\"instgram\"'),
('fields.abb156ae-844b-4f1a-a1b4-63ce080a0009.instructions', '\"\"'),
('fields.abb156ae-844b-4f1a-a1b4-63ce080a0009.name', '\"Instgram\"'),
('fields.abb156ae-844b-4f1a-a1b4-63ce080a0009.searchable', 'false'),
('fields.abb156ae-844b-4f1a-a1b4-63ce080a0009.settings.maxLength', '\"255\"'),
('fields.abb156ae-844b-4f1a-a1b4-63ce080a0009.settings.placeholder', '\"\"'),
('fields.abb156ae-844b-4f1a-a1b4-63ce080a0009.translationKeyFormat', 'null'),
('fields.abb156ae-844b-4f1a-a1b4-63ce080a0009.translationMethod', '\"none\"'),
('fields.abb156ae-844b-4f1a-a1b4-63ce080a0009.type', '\"craft\\\\fields\\\\Url\"'),
('fields.adc52f46-1c85-4b8c-843e-c7107cbe1ced.contentColumnType', '\"text\"'),
('fields.adc52f46-1c85-4b8c-843e-c7107cbe1ced.fieldGroup', '\"1900278b-fbd9-4840-8e1f-c1eba29aa8aa\"'),
('fields.adc52f46-1c85-4b8c-843e-c7107cbe1ced.handle', '\"mainHeader\"'),
('fields.adc52f46-1c85-4b8c-843e-c7107cbe1ced.instructions', '\"\"'),
('fields.adc52f46-1c85-4b8c-843e-c7107cbe1ced.name', '\"Main Header\"'),
('fields.adc52f46-1c85-4b8c-843e-c7107cbe1ced.searchable', 'false'),
('fields.adc52f46-1c85-4b8c-843e-c7107cbe1ced.settings.byteLimit', 'null'),
('fields.adc52f46-1c85-4b8c-843e-c7107cbe1ced.settings.charLimit', 'null'),
('fields.adc52f46-1c85-4b8c-843e-c7107cbe1ced.settings.code', '\"\"'),
('fields.adc52f46-1c85-4b8c-843e-c7107cbe1ced.settings.columnType', 'null'),
('fields.adc52f46-1c85-4b8c-843e-c7107cbe1ced.settings.initialRows', '\"4\"'),
('fields.adc52f46-1c85-4b8c-843e-c7107cbe1ced.settings.multiline', '\"\"'),
('fields.adc52f46-1c85-4b8c-843e-c7107cbe1ced.settings.placeholder', '\"\"'),
('fields.adc52f46-1c85-4b8c-843e-c7107cbe1ced.settings.uiMode', '\"normal\"'),
('fields.adc52f46-1c85-4b8c-843e-c7107cbe1ced.translationKeyFormat', 'null'),
('fields.adc52f46-1c85-4b8c-843e-c7107cbe1ced.translationMethod', '\"none\"'),
('fields.adc52f46-1c85-4b8c-843e-c7107cbe1ced.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.b2b0ec89-eac4-47b0-95cd-cad671cf05d0.contentColumnType', '\"text\"'),
('fields.b2b0ec89-eac4-47b0-95cd-cad671cf05d0.fieldGroup', '\"5a732bb2-b780-4b03-8e60-569879bbaa22\"'),
('fields.b2b0ec89-eac4-47b0-95cd-cad671cf05d0.handle', '\"covidResponse\"'),
('fields.b2b0ec89-eac4-47b0-95cd-cad671cf05d0.instructions', '\"\"'),
('fields.b2b0ec89-eac4-47b0-95cd-cad671cf05d0.name', '\"Covid Response\"'),
('fields.b2b0ec89-eac4-47b0-95cd-cad671cf05d0.searchable', 'false'),
('fields.b2b0ec89-eac4-47b0-95cd-cad671cf05d0.settings.byteLimit', 'null'),
('fields.b2b0ec89-eac4-47b0-95cd-cad671cf05d0.settings.charLimit', 'null'),
('fields.b2b0ec89-eac4-47b0-95cd-cad671cf05d0.settings.code', '\"\"'),
('fields.b2b0ec89-eac4-47b0-95cd-cad671cf05d0.settings.columnType', 'null'),
('fields.b2b0ec89-eac4-47b0-95cd-cad671cf05d0.settings.initialRows', '\"4\"'),
('fields.b2b0ec89-eac4-47b0-95cd-cad671cf05d0.settings.multiline', '\"1\"'),
('fields.b2b0ec89-eac4-47b0-95cd-cad671cf05d0.settings.placeholder', '\"\"'),
('fields.b2b0ec89-eac4-47b0-95cd-cad671cf05d0.settings.uiMode', '\"normal\"'),
('fields.b2b0ec89-eac4-47b0-95cd-cad671cf05d0.translationKeyFormat', 'null'),
('fields.b2b0ec89-eac4-47b0-95cd-cad671cf05d0.translationMethod', '\"none\"'),
('fields.b2b0ec89-eac4-47b0-95cd-cad671cf05d0.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.b9052a0e-92dc-49db-aca1-5a4738de74c2.contentColumnType', '\"text\"'),
('fields.b9052a0e-92dc-49db-aca1-5a4738de74c2.fieldGroup', '\"5a732bb2-b780-4b03-8e60-569879bbaa22\"'),
('fields.b9052a0e-92dc-49db-aca1-5a4738de74c2.handle', '\"contactEmails\"'),
('fields.b9052a0e-92dc-49db-aca1-5a4738de74c2.instructions', '\"\"'),
('fields.b9052a0e-92dc-49db-aca1-5a4738de74c2.name', '\"Contact Emails\"'),
('fields.b9052a0e-92dc-49db-aca1-5a4738de74c2.searchable', 'false'),
('fields.b9052a0e-92dc-49db-aca1-5a4738de74c2.settings.addRowLabel', '\"Add a Contact\"'),
('fields.b9052a0e-92dc-49db-aca1-5a4738de74c2.settings.columns.__assoc__.0.0', '\"col1\"'),
('fields.b9052a0e-92dc-49db-aca1-5a4738de74c2.settings.columns.__assoc__.0.1.__assoc__.0.0', '\"heading\"'),
('fields.b9052a0e-92dc-49db-aca1-5a4738de74c2.settings.columns.__assoc__.0.1.__assoc__.0.1', '\"Contact\"'),
('fields.b9052a0e-92dc-49db-aca1-5a4738de74c2.settings.columns.__assoc__.0.1.__assoc__.1.0', '\"handle\"'),
('fields.b9052a0e-92dc-49db-aca1-5a4738de74c2.settings.columns.__assoc__.0.1.__assoc__.1.1', '\"contact\"'),
('fields.b9052a0e-92dc-49db-aca1-5a4738de74c2.settings.columns.__assoc__.0.1.__assoc__.2.0', '\"width\"'),
('fields.b9052a0e-92dc-49db-aca1-5a4738de74c2.settings.columns.__assoc__.0.1.__assoc__.2.1', '\"\"'),
('fields.b9052a0e-92dc-49db-aca1-5a4738de74c2.settings.columns.__assoc__.0.1.__assoc__.3.0', '\"type\"'),
('fields.b9052a0e-92dc-49db-aca1-5a4738de74c2.settings.columns.__assoc__.0.1.__assoc__.3.1', '\"multiline\"'),
('fields.b9052a0e-92dc-49db-aca1-5a4738de74c2.settings.columns.__assoc__.1.0', '\"col2\"'),
('fields.b9052a0e-92dc-49db-aca1-5a4738de74c2.settings.columns.__assoc__.1.1.__assoc__.0.0', '\"heading\"'),
('fields.b9052a0e-92dc-49db-aca1-5a4738de74c2.settings.columns.__assoc__.1.1.__assoc__.0.1', '\"Contact Email\"'),
('fields.b9052a0e-92dc-49db-aca1-5a4738de74c2.settings.columns.__assoc__.1.1.__assoc__.1.0', '\"handle\"'),
('fields.b9052a0e-92dc-49db-aca1-5a4738de74c2.settings.columns.__assoc__.1.1.__assoc__.1.1', '\"contactEmail\"'),
('fields.b9052a0e-92dc-49db-aca1-5a4738de74c2.settings.columns.__assoc__.1.1.__assoc__.2.0', '\"width\"'),
('fields.b9052a0e-92dc-49db-aca1-5a4738de74c2.settings.columns.__assoc__.1.1.__assoc__.2.1', '\"\"'),
('fields.b9052a0e-92dc-49db-aca1-5a4738de74c2.settings.columns.__assoc__.1.1.__assoc__.3.0', '\"type\"'),
('fields.b9052a0e-92dc-49db-aca1-5a4738de74c2.settings.columns.__assoc__.1.1.__assoc__.3.1', '\"email\"'),
('fields.b9052a0e-92dc-49db-aca1-5a4738de74c2.settings.columnType', '\"text\"'),
('fields.b9052a0e-92dc-49db-aca1-5a4738de74c2.settings.defaults.0.__assoc__.0.0', '\"col1\"'),
('fields.b9052a0e-92dc-49db-aca1-5a4738de74c2.settings.defaults.0.__assoc__.0.1', '\"\"'),
('fields.b9052a0e-92dc-49db-aca1-5a4738de74c2.settings.defaults.0.__assoc__.1.0', '\"col2\"'),
('fields.b9052a0e-92dc-49db-aca1-5a4738de74c2.settings.defaults.0.__assoc__.1.1', '\"\"'),
('fields.b9052a0e-92dc-49db-aca1-5a4738de74c2.settings.maxRows', '\"4\"'),
('fields.b9052a0e-92dc-49db-aca1-5a4738de74c2.settings.minRows', '\"1\"'),
('fields.b9052a0e-92dc-49db-aca1-5a4738de74c2.translationKeyFormat', 'null'),
('fields.b9052a0e-92dc-49db-aca1-5a4738de74c2.translationMethod', '\"none\"'),
('fields.b9052a0e-92dc-49db-aca1-5a4738de74c2.type', '\"craft\\\\fields\\\\Table\"'),
('fields.b9800d6d-96bf-4108-a1a5-23a3ec0c8a72.contentColumnType', '\"text\"'),
('fields.b9800d6d-96bf-4108-a1a5-23a3ec0c8a72.fieldGroup', '\"5a732bb2-b780-4b03-8e60-569879bbaa22\"'),
('fields.b9800d6d-96bf-4108-a1a5-23a3ec0c8a72.handle', '\"publicTransportation\"'),
('fields.b9800d6d-96bf-4108-a1a5-23a3ec0c8a72.instructions', '\"\"'),
('fields.b9800d6d-96bf-4108-a1a5-23a3ec0c8a72.name', '\"Public Transportation\"'),
('fields.b9800d6d-96bf-4108-a1a5-23a3ec0c8a72.searchable', 'false'),
('fields.b9800d6d-96bf-4108-a1a5-23a3ec0c8a72.settings.byteLimit', 'null'),
('fields.b9800d6d-96bf-4108-a1a5-23a3ec0c8a72.settings.charLimit', 'null'),
('fields.b9800d6d-96bf-4108-a1a5-23a3ec0c8a72.settings.code', '\"\"'),
('fields.b9800d6d-96bf-4108-a1a5-23a3ec0c8a72.settings.columnType', 'null'),
('fields.b9800d6d-96bf-4108-a1a5-23a3ec0c8a72.settings.initialRows', '\"4\"'),
('fields.b9800d6d-96bf-4108-a1a5-23a3ec0c8a72.settings.multiline', '\"1\"'),
('fields.b9800d6d-96bf-4108-a1a5-23a3ec0c8a72.settings.placeholder', '\"\"'),
('fields.b9800d6d-96bf-4108-a1a5-23a3ec0c8a72.settings.uiMode', '\"normal\"'),
('fields.b9800d6d-96bf-4108-a1a5-23a3ec0c8a72.translationKeyFormat', 'null'),
('fields.b9800d6d-96bf-4108-a1a5-23a3ec0c8a72.translationMethod', '\"none\"'),
('fields.b9800d6d-96bf-4108-a1a5-23a3ec0c8a72.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.c022db66-4bd4-48d4-ad7a-f55ffa388856.contentColumnType', '\"string\"'),
('fields.c022db66-4bd4-48d4-ad7a-f55ffa388856.fieldGroup', '\"5a732bb2-b780-4b03-8e60-569879bbaa22\"'),
('fields.c022db66-4bd4-48d4-ad7a-f55ffa388856.handle', '\"hopscotchMap\"'),
('fields.c022db66-4bd4-48d4-ad7a-f55ffa388856.instructions', '\"\"'),
('fields.c022db66-4bd4-48d4-ad7a-f55ffa388856.name', '\"Hopscotch Map\"'),
('fields.c022db66-4bd4-48d4-ad7a-f55ffa388856.searchable', 'false'),
('fields.c022db66-4bd4-48d4-ad7a-f55ffa388856.settings.allowedKinds', 'null'),
('fields.c022db66-4bd4-48d4-ad7a-f55ffa388856.settings.allowSelfRelations', 'false'),
('fields.c022db66-4bd4-48d4-ad7a-f55ffa388856.settings.defaultUploadLocationSource', '\"volume:22d4c992-dba7-449e-b36d-ac36420f47e5\"'),
('fields.c022db66-4bd4-48d4-ad7a-f55ffa388856.settings.defaultUploadLocationSubpath', '\"\"'),
('fields.c022db66-4bd4-48d4-ad7a-f55ffa388856.settings.limit', '\"1\"'),
('fields.c022db66-4bd4-48d4-ad7a-f55ffa388856.settings.localizeRelations', 'false'),
('fields.c022db66-4bd4-48d4-ad7a-f55ffa388856.settings.restrictFiles', '\"\"'),
('fields.c022db66-4bd4-48d4-ad7a-f55ffa388856.settings.selectionLabel', '\"\"'),
('fields.c022db66-4bd4-48d4-ad7a-f55ffa388856.settings.showSiteMenu', 'true'),
('fields.c022db66-4bd4-48d4-ad7a-f55ffa388856.settings.showUnpermittedFiles', 'false'),
('fields.c022db66-4bd4-48d4-ad7a-f55ffa388856.settings.showUnpermittedVolumes', 'false'),
('fields.c022db66-4bd4-48d4-ad7a-f55ffa388856.settings.singleUploadLocationSource', '\"volume:8d814e64-e1b1-46c3-a3db-506877a68155\"'),
('fields.c022db66-4bd4-48d4-ad7a-f55ffa388856.settings.singleUploadLocationSubpath', '\"\"'),
('fields.c022db66-4bd4-48d4-ad7a-f55ffa388856.settings.source', 'null'),
('fields.c022db66-4bd4-48d4-ad7a-f55ffa388856.settings.sources', '\"*\"'),
('fields.c022db66-4bd4-48d4-ad7a-f55ffa388856.settings.targetSiteId', 'null'),
('fields.c022db66-4bd4-48d4-ad7a-f55ffa388856.settings.useSingleFolder', 'true'),
('fields.c022db66-4bd4-48d4-ad7a-f55ffa388856.settings.validateRelatedElements', 'false'),
('fields.c022db66-4bd4-48d4-ad7a-f55ffa388856.settings.viewMode', '\"large\"'),
('fields.c022db66-4bd4-48d4-ad7a-f55ffa388856.translationKeyFormat', 'null'),
('fields.c022db66-4bd4-48d4-ad7a-f55ffa388856.translationMethod', '\"site\"'),
('fields.c022db66-4bd4-48d4-ad7a-f55ffa388856.type', '\"craft\\\\fields\\\\Assets\"'),
('fields.c6a11cb7-6e80-47e9-a318-0a4dc2303c64.contentColumnType', '\"text\"'),
('fields.c6a11cb7-6e80-47e9-a318-0a4dc2303c64.fieldGroup', '\"5a732bb2-b780-4b03-8e60-569879bbaa22\"'),
('fields.c6a11cb7-6e80-47e9-a318-0a4dc2303c64.handle', '\"moreInfo\"'),
('fields.c6a11cb7-6e80-47e9-a318-0a4dc2303c64.instructions', '\"\"'),
('fields.c6a11cb7-6e80-47e9-a318-0a4dc2303c64.name', '\"More Info\"'),
('fields.c6a11cb7-6e80-47e9-a318-0a4dc2303c64.searchable', 'false'),
('fields.c6a11cb7-6e80-47e9-a318-0a4dc2303c64.settings.byteLimit', 'null'),
('fields.c6a11cb7-6e80-47e9-a318-0a4dc2303c64.settings.charLimit', 'null'),
('fields.c6a11cb7-6e80-47e9-a318-0a4dc2303c64.settings.code', '\"\"'),
('fields.c6a11cb7-6e80-47e9-a318-0a4dc2303c64.settings.columnType', 'null'),
('fields.c6a11cb7-6e80-47e9-a318-0a4dc2303c64.settings.initialRows', '\"4\"'),
('fields.c6a11cb7-6e80-47e9-a318-0a4dc2303c64.settings.multiline', '\"1\"'),
('fields.c6a11cb7-6e80-47e9-a318-0a4dc2303c64.settings.placeholder', '\"\"'),
('fields.c6a11cb7-6e80-47e9-a318-0a4dc2303c64.settings.uiMode', '\"normal\"'),
('fields.c6a11cb7-6e80-47e9-a318-0a4dc2303c64.translationKeyFormat', 'null'),
('fields.c6a11cb7-6e80-47e9-a318-0a4dc2303c64.translationMethod', '\"none\"'),
('fields.c6a11cb7-6e80-47e9-a318-0a4dc2303c64.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.c95fe0cd-27df-4250-984c-a1e06f474e61.contentColumnType', '\"string(255)\"'),
('fields.c95fe0cd-27df-4250-984c-a1e06f474e61.fieldGroup', '\"dc84b6d1-777b-4368-ae5b-41cb8bcfbe59\"'),
('fields.c95fe0cd-27df-4250-984c-a1e06f474e61.handle', '\"facebook\"'),
('fields.c95fe0cd-27df-4250-984c-a1e06f474e61.instructions', '\"\"'),
('fields.c95fe0cd-27df-4250-984c-a1e06f474e61.name', '\"Facebook\"'),
('fields.c95fe0cd-27df-4250-984c-a1e06f474e61.searchable', 'false'),
('fields.c95fe0cd-27df-4250-984c-a1e06f474e61.settings.maxLength', '\"255\"'),
('fields.c95fe0cd-27df-4250-984c-a1e06f474e61.settings.placeholder', '\"\"'),
('fields.c95fe0cd-27df-4250-984c-a1e06f474e61.translationKeyFormat', 'null'),
('fields.c95fe0cd-27df-4250-984c-a1e06f474e61.translationMethod', '\"none\"'),
('fields.c95fe0cd-27df-4250-984c-a1e06f474e61.type', '\"craft\\\\fields\\\\Url\"'),
('fields.d6fc4c91-3544-41f1-8d98-cbeb84362244.contentColumnType', '\"string\"'),
('fields.d6fc4c91-3544-41f1-8d98-cbeb84362244.fieldGroup', '\"bbaf7dae-e9b7-4249-8438-3e7127eacc3e\"'),
('fields.d6fc4c91-3544-41f1-8d98-cbeb84362244.handle', '\"faq2\"'),
('fields.d6fc4c91-3544-41f1-8d98-cbeb84362244.instructions', '\"\"'),
('fields.d6fc4c91-3544-41f1-8d98-cbeb84362244.name', '\"FAQ 2\"'),
('fields.d6fc4c91-3544-41f1-8d98-cbeb84362244.searchable', 'false'),
('fields.d6fc4c91-3544-41f1-8d98-cbeb84362244.settings.columns.__assoc__.0.0', '\"9054658e-f5b7-45cd-8ec7-ddaad6a16dd0\"'),
('fields.d6fc4c91-3544-41f1-8d98-cbeb84362244.settings.columns.__assoc__.0.1.__assoc__.0.0', '\"width\"'),
('fields.d6fc4c91-3544-41f1-8d98-cbeb84362244.settings.columns.__assoc__.0.1.__assoc__.0.1', '\"\"'),
('fields.d6fc4c91-3544-41f1-8d98-cbeb84362244.settings.columns.__assoc__.1.0', '\"616e1265-a1aa-44c0-a6f0-c7c346270533\"'),
('fields.d6fc4c91-3544-41f1-8d98-cbeb84362244.settings.columns.__assoc__.1.1.__assoc__.0.0', '\"width\"'),
('fields.d6fc4c91-3544-41f1-8d98-cbeb84362244.settings.columns.__assoc__.1.1.__assoc__.0.1', '\"\"'),
('fields.d6fc4c91-3544-41f1-8d98-cbeb84362244.settings.contentTable', '\"{{%stc_faq2}}\"'),
('fields.d6fc4c91-3544-41f1-8d98-cbeb84362244.settings.fieldLayout', '\"row\"'),
('fields.d6fc4c91-3544-41f1-8d98-cbeb84362244.settings.maxRows', '\"\"'),
('fields.d6fc4c91-3544-41f1-8d98-cbeb84362244.settings.minRows', '\"\"'),
('fields.d6fc4c91-3544-41f1-8d98-cbeb84362244.settings.placeholderKey', 'null'),
('fields.d6fc4c91-3544-41f1-8d98-cbeb84362244.settings.propagationMethod', '\"all\"'),
('fields.d6fc4c91-3544-41f1-8d98-cbeb84362244.settings.selectionLabel', '\"\"'),
('fields.d6fc4c91-3544-41f1-8d98-cbeb84362244.settings.staticField', '\"\"'),
('fields.d6fc4c91-3544-41f1-8d98-cbeb84362244.translationKeyFormat', 'null'),
('fields.d6fc4c91-3544-41f1-8d98-cbeb84362244.translationMethod', '\"site\"'),
('fields.d6fc4c91-3544-41f1-8d98-cbeb84362244.type', '\"verbb\\\\supertable\\\\fields\\\\SuperTableField\"'),
('fields.dfd59d04-80d5-473b-8d55-f1f4eb4adfc3.contentColumnType', '\"text\"'),
('fields.dfd59d04-80d5-473b-8d55-f1f4eb4adfc3.fieldGroup', '\"5a732bb2-b780-4b03-8e60-569879bbaa22\"'),
('fields.dfd59d04-80d5-473b-8d55-f1f4eb4adfc3.handle', '\"hoursDescription\"'),
('fields.dfd59d04-80d5-473b-8d55-f1f4eb4adfc3.instructions', '\"Paragraph inside \'Hours\' box\"'),
('fields.dfd59d04-80d5-473b-8d55-f1f4eb4adfc3.name', '\"Hours Description\"'),
('fields.dfd59d04-80d5-473b-8d55-f1f4eb4adfc3.searchable', 'false'),
('fields.dfd59d04-80d5-473b-8d55-f1f4eb4adfc3.settings.byteLimit', 'null'),
('fields.dfd59d04-80d5-473b-8d55-f1f4eb4adfc3.settings.charLimit', 'null'),
('fields.dfd59d04-80d5-473b-8d55-f1f4eb4adfc3.settings.code', '\"\"'),
('fields.dfd59d04-80d5-473b-8d55-f1f4eb4adfc3.settings.columnType', 'null'),
('fields.dfd59d04-80d5-473b-8d55-f1f4eb4adfc3.settings.initialRows', '\"4\"'),
('fields.dfd59d04-80d5-473b-8d55-f1f4eb4adfc3.settings.multiline', '\"1\"'),
('fields.dfd59d04-80d5-473b-8d55-f1f4eb4adfc3.settings.placeholder', '\"\"'),
('fields.dfd59d04-80d5-473b-8d55-f1f4eb4adfc3.settings.uiMode', '\"normal\"'),
('fields.dfd59d04-80d5-473b-8d55-f1f4eb4adfc3.translationKeyFormat', 'null'),
('fields.dfd59d04-80d5-473b-8d55-f1f4eb4adfc3.translationMethod', '\"none\"'),
('fields.dfd59d04-80d5-473b-8d55-f1f4eb4adfc3.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.e7b3b7f1-8c18-4496-999a-dfe188acd0a3.contentColumnType', '\"string\"'),
('fields.e7b3b7f1-8c18-4496-999a-dfe188acd0a3.fieldGroup', '\"bbaf7dae-e9b7-4249-8438-3e7127eacc3e\"'),
('fields.e7b3b7f1-8c18-4496-999a-dfe188acd0a3.handle', '\"faqs\"'),
('fields.e7b3b7f1-8c18-4496-999a-dfe188acd0a3.instructions', '\"\"'),
('fields.e7b3b7f1-8c18-4496-999a-dfe188acd0a3.name', '\"FAQs\"'),
('fields.e7b3b7f1-8c18-4496-999a-dfe188acd0a3.searchable', 'false'),
('fields.e7b3b7f1-8c18-4496-999a-dfe188acd0a3.settings.contentTable', '\"{{%matrixcontent_faqs}}\"'),
('fields.e7b3b7f1-8c18-4496-999a-dfe188acd0a3.settings.maxBlocks', '\"\"'),
('fields.e7b3b7f1-8c18-4496-999a-dfe188acd0a3.settings.minBlocks', '\"1\"'),
('fields.e7b3b7f1-8c18-4496-999a-dfe188acd0a3.settings.propagationMethod', '\"all\"'),
('fields.e7b3b7f1-8c18-4496-999a-dfe188acd0a3.translationKeyFormat', 'null'),
('fields.e7b3b7f1-8c18-4496-999a-dfe188acd0a3.translationMethod', '\"site\"'),
('fields.e7b3b7f1-8c18-4496-999a-dfe188acd0a3.type', '\"craft\\\\fields\\\\Matrix\"'),
('fields.eb88b426-676d-4298-9392-398a335da778.contentColumnType', '\"text\"'),
('fields.eb88b426-676d-4298-9392-398a335da778.fieldGroup', '\"5a732bb2-b780-4b03-8e60-569879bbaa22\"'),
('fields.eb88b426-676d-4298-9392-398a335da778.handle', '\"covidResponseHeader\"'),
('fields.eb88b426-676d-4298-9392-398a335da778.instructions', '\"\"'),
('fields.eb88b426-676d-4298-9392-398a335da778.name', '\"Covid Response Header\"'),
('fields.eb88b426-676d-4298-9392-398a335da778.searchable', 'false'),
('fields.eb88b426-676d-4298-9392-398a335da778.settings.byteLimit', 'null'),
('fields.eb88b426-676d-4298-9392-398a335da778.settings.charLimit', 'null'),
('fields.eb88b426-676d-4298-9392-398a335da778.settings.code', '\"\"'),
('fields.eb88b426-676d-4298-9392-398a335da778.settings.columnType', 'null'),
('fields.eb88b426-676d-4298-9392-398a335da778.settings.initialRows', '\"4\"'),
('fields.eb88b426-676d-4298-9392-398a335da778.settings.multiline', '\"\"'),
('fields.eb88b426-676d-4298-9392-398a335da778.settings.placeholder', '\"\"'),
('fields.eb88b426-676d-4298-9392-398a335da778.settings.uiMode', '\"normal\"'),
('fields.eb88b426-676d-4298-9392-398a335da778.translationKeyFormat', 'null'),
('fields.eb88b426-676d-4298-9392-398a335da778.translationMethod', '\"none\"'),
('fields.eb88b426-676d-4298-9392-398a335da778.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.ec8da5eb-37d3-4af2-97e9-b34c888e0d16.contentColumnType', '\"text\"'),
('fields.ec8da5eb-37d3-4af2-97e9-b34c888e0d16.fieldGroup', '\"fedbc63c-9c1f-4009-ac80-0ef3a8dd1320\"'),
('fields.ec8da5eb-37d3-4af2-97e9-b34c888e0d16.handle', '\"aboutDescription\"'),
('fields.ec8da5eb-37d3-4af2-97e9-b34c888e0d16.instructions', '\"\"');
INSERT INTO `projectconfig` (`path`, `value`) VALUES
('fields.ec8da5eb-37d3-4af2-97e9-b34c888e0d16.name', '\"About Description\"'),
('fields.ec8da5eb-37d3-4af2-97e9-b34c888e0d16.searchable', 'false'),
('fields.ec8da5eb-37d3-4af2-97e9-b34c888e0d16.settings.byteLimit', 'null'),
('fields.ec8da5eb-37d3-4af2-97e9-b34c888e0d16.settings.charLimit', 'null'),
('fields.ec8da5eb-37d3-4af2-97e9-b34c888e0d16.settings.code', '\"\"'),
('fields.ec8da5eb-37d3-4af2-97e9-b34c888e0d16.settings.columnType', 'null'),
('fields.ec8da5eb-37d3-4af2-97e9-b34c888e0d16.settings.initialRows', '\"4\"'),
('fields.ec8da5eb-37d3-4af2-97e9-b34c888e0d16.settings.multiline', '\"1\"'),
('fields.ec8da5eb-37d3-4af2-97e9-b34c888e0d16.settings.placeholder', '\"\"'),
('fields.ec8da5eb-37d3-4af2-97e9-b34c888e0d16.settings.uiMode', '\"enlarged\"'),
('fields.ec8da5eb-37d3-4af2-97e9-b34c888e0d16.translationKeyFormat', 'null'),
('fields.ec8da5eb-37d3-4af2-97e9-b34c888e0d16.translationMethod', '\"none\"'),
('fields.ec8da5eb-37d3-4af2-97e9-b34c888e0d16.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.f19a4bcc-3f57-4196-802c-d3b22fc012bc.contentColumnType', '\"text\"'),
('fields.f19a4bcc-3f57-4196-802c-d3b22fc012bc.fieldGroup', '\"5a732bb2-b780-4b03-8e60-569879bbaa22\"'),
('fields.f19a4bcc-3f57-4196-802c-d3b22fc012bc.handle', '\"stayAWhile\"'),
('fields.f19a4bcc-3f57-4196-802c-d3b22fc012bc.instructions', '\"\"'),
('fields.f19a4bcc-3f57-4196-802c-d3b22fc012bc.name', '\"Stay a While\"'),
('fields.f19a4bcc-3f57-4196-802c-d3b22fc012bc.searchable', 'false'),
('fields.f19a4bcc-3f57-4196-802c-d3b22fc012bc.settings.byteLimit', 'null'),
('fields.f19a4bcc-3f57-4196-802c-d3b22fc012bc.settings.charLimit', 'null'),
('fields.f19a4bcc-3f57-4196-802c-d3b22fc012bc.settings.code', '\"\"'),
('fields.f19a4bcc-3f57-4196-802c-d3b22fc012bc.settings.columnType', 'null'),
('fields.f19a4bcc-3f57-4196-802c-d3b22fc012bc.settings.initialRows', '\"4\"'),
('fields.f19a4bcc-3f57-4196-802c-d3b22fc012bc.settings.multiline', '\"1\"'),
('fields.f19a4bcc-3f57-4196-802c-d3b22fc012bc.settings.placeholder', '\"\"'),
('fields.f19a4bcc-3f57-4196-802c-d3b22fc012bc.settings.uiMode', '\"normal\"'),
('fields.f19a4bcc-3f57-4196-802c-d3b22fc012bc.translationKeyFormat', 'null'),
('fields.f19a4bcc-3f57-4196-802c-d3b22fc012bc.translationMethod', '\"none\"'),
('fields.f19a4bcc-3f57-4196-802c-d3b22fc012bc.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.f24f95af-afae-4ecf-95d0-62fe87b4f56a.contentColumnType', '\"text\"'),
('fields.f24f95af-afae-4ecf-95d0-62fe87b4f56a.fieldGroup', '\"20384be1-3e93-404f-ac44-81cac1b9069a\"'),
('fields.f24f95af-afae-4ecf-95d0-62fe87b4f56a.handle', '\"policyContent\"'),
('fields.f24f95af-afae-4ecf-95d0-62fe87b4f56a.instructions', '\"\"'),
('fields.f24f95af-afae-4ecf-95d0-62fe87b4f56a.name', '\"Policy Content\"'),
('fields.f24f95af-afae-4ecf-95d0-62fe87b4f56a.searchable', 'false'),
('fields.f24f95af-afae-4ecf-95d0-62fe87b4f56a.settings.availableTransforms', '\"*\"'),
('fields.f24f95af-afae-4ecf-95d0-62fe87b4f56a.settings.availableVolumes', '\"\"'),
('fields.f24f95af-afae-4ecf-95d0-62fe87b4f56a.settings.cleanupHtml', 'true'),
('fields.f24f95af-afae-4ecf-95d0-62fe87b4f56a.settings.columnType', '\"text\"'),
('fields.f24f95af-afae-4ecf-95d0-62fe87b4f56a.settings.configSelectionMode', '\"choose\"'),
('fields.f24f95af-afae-4ecf-95d0-62fe87b4f56a.settings.defaultTransform', '\"\"'),
('fields.f24f95af-afae-4ecf-95d0-62fe87b4f56a.settings.manualConfig', '\"\"'),
('fields.f24f95af-afae-4ecf-95d0-62fe87b4f56a.settings.purifierConfig', '\"\"'),
('fields.f24f95af-afae-4ecf-95d0-62fe87b4f56a.settings.purifyHtml', '\"1\"'),
('fields.f24f95af-afae-4ecf-95d0-62fe87b4f56a.settings.redactorConfig', '\"\"'),
('fields.f24f95af-afae-4ecf-95d0-62fe87b4f56a.settings.removeEmptyTags', '\"1\"'),
('fields.f24f95af-afae-4ecf-95d0-62fe87b4f56a.settings.removeInlineStyles', '\"1\"'),
('fields.f24f95af-afae-4ecf-95d0-62fe87b4f56a.settings.removeNbsp', '\"1\"'),
('fields.f24f95af-afae-4ecf-95d0-62fe87b4f56a.settings.showHtmlButtonForNonAdmins', '\"\"'),
('fields.f24f95af-afae-4ecf-95d0-62fe87b4f56a.settings.showUnpermittedFiles', 'false'),
('fields.f24f95af-afae-4ecf-95d0-62fe87b4f56a.settings.showUnpermittedVolumes', 'false'),
('fields.f24f95af-afae-4ecf-95d0-62fe87b4f56a.settings.uiMode', '\"enlarged\"'),
('fields.f24f95af-afae-4ecf-95d0-62fe87b4f56a.translationKeyFormat', 'null'),
('fields.f24f95af-afae-4ecf-95d0-62fe87b4f56a.translationMethod', '\"none\"'),
('fields.f24f95af-afae-4ecf-95d0-62fe87b4f56a.type', '\"craft\\\\redactor\\\\Field\"'),
('fields.fa86d8ac-5703-4fbe-84ee-2d3eb30e9da2.contentColumnType', '\"text\"'),
('fields.fa86d8ac-5703-4fbe-84ee-2d3eb30e9da2.fieldGroup', '\"5a732bb2-b780-4b03-8e60-569879bbaa22\"'),
('fields.fa86d8ac-5703-4fbe-84ee-2d3eb30e9da2.handle', '\"contactAnimatedText\"'),
('fields.fa86d8ac-5703-4fbe-84ee-2d3eb30e9da2.instructions', '\"\"'),
('fields.fa86d8ac-5703-4fbe-84ee-2d3eb30e9da2.name', '\"Animated Text\"'),
('fields.fa86d8ac-5703-4fbe-84ee-2d3eb30e9da2.searchable', 'false'),
('fields.fa86d8ac-5703-4fbe-84ee-2d3eb30e9da2.settings.byteLimit', 'null'),
('fields.fa86d8ac-5703-4fbe-84ee-2d3eb30e9da2.settings.charLimit', 'null'),
('fields.fa86d8ac-5703-4fbe-84ee-2d3eb30e9da2.settings.code', '\"\"'),
('fields.fa86d8ac-5703-4fbe-84ee-2d3eb30e9da2.settings.columnType', 'null'),
('fields.fa86d8ac-5703-4fbe-84ee-2d3eb30e9da2.settings.initialRows', '\"4\"'),
('fields.fa86d8ac-5703-4fbe-84ee-2d3eb30e9da2.settings.multiline', '\"\"'),
('fields.fa86d8ac-5703-4fbe-84ee-2d3eb30e9da2.settings.placeholder', '\"\"'),
('fields.fa86d8ac-5703-4fbe-84ee-2d3eb30e9da2.settings.uiMode', '\"normal\"'),
('fields.fa86d8ac-5703-4fbe-84ee-2d3eb30e9da2.translationKeyFormat', 'null'),
('fields.fa86d8ac-5703-4fbe-84ee-2d3eb30e9da2.translationMethod', '\"none\"'),
('fields.fa86d8ac-5703-4fbe-84ee-2d3eb30e9da2.type', '\"craft\\\\fields\\\\PlainText\"'),
('globalSets.5c9f2bb8-b152-40a4-bc60-ac3ab0c09314.fieldLayouts.4e002902-59ed-4470-be61-917fe2bb0c36.tabs.0.elements.0.fieldUid', '\"768270aa-bec7-4235-a7d0-589707ca497e\"'),
('globalSets.5c9f2bb8-b152-40a4-bc60-ac3ab0c09314.fieldLayouts.4e002902-59ed-4470-be61-917fe2bb0c36.tabs.0.elements.0.instructions', 'null'),
('globalSets.5c9f2bb8-b152-40a4-bc60-ac3ab0c09314.fieldLayouts.4e002902-59ed-4470-be61-917fe2bb0c36.tabs.0.elements.0.label', 'null'),
('globalSets.5c9f2bb8-b152-40a4-bc60-ac3ab0c09314.fieldLayouts.4e002902-59ed-4470-be61-917fe2bb0c36.tabs.0.elements.0.required', 'false'),
('globalSets.5c9f2bb8-b152-40a4-bc60-ac3ab0c09314.fieldLayouts.4e002902-59ed-4470-be61-917fe2bb0c36.tabs.0.elements.0.tip', 'null'),
('globalSets.5c9f2bb8-b152-40a4-bc60-ac3ab0c09314.fieldLayouts.4e002902-59ed-4470-be61-917fe2bb0c36.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('globalSets.5c9f2bb8-b152-40a4-bc60-ac3ab0c09314.fieldLayouts.4e002902-59ed-4470-be61-917fe2bb0c36.tabs.0.elements.0.warning', 'null'),
('globalSets.5c9f2bb8-b152-40a4-bc60-ac3ab0c09314.fieldLayouts.4e002902-59ed-4470-be61-917fe2bb0c36.tabs.0.elements.0.width', '100'),
('globalSets.5c9f2bb8-b152-40a4-bc60-ac3ab0c09314.fieldLayouts.4e002902-59ed-4470-be61-917fe2bb0c36.tabs.0.elements.1.fieldUid', '\"6d77f339-131b-40ea-a446-d163ee0d4945\"'),
('globalSets.5c9f2bb8-b152-40a4-bc60-ac3ab0c09314.fieldLayouts.4e002902-59ed-4470-be61-917fe2bb0c36.tabs.0.elements.1.instructions', 'null'),
('globalSets.5c9f2bb8-b152-40a4-bc60-ac3ab0c09314.fieldLayouts.4e002902-59ed-4470-be61-917fe2bb0c36.tabs.0.elements.1.label', 'null'),
('globalSets.5c9f2bb8-b152-40a4-bc60-ac3ab0c09314.fieldLayouts.4e002902-59ed-4470-be61-917fe2bb0c36.tabs.0.elements.1.required', 'false'),
('globalSets.5c9f2bb8-b152-40a4-bc60-ac3ab0c09314.fieldLayouts.4e002902-59ed-4470-be61-917fe2bb0c36.tabs.0.elements.1.tip', 'null'),
('globalSets.5c9f2bb8-b152-40a4-bc60-ac3ab0c09314.fieldLayouts.4e002902-59ed-4470-be61-917fe2bb0c36.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('globalSets.5c9f2bb8-b152-40a4-bc60-ac3ab0c09314.fieldLayouts.4e002902-59ed-4470-be61-917fe2bb0c36.tabs.0.elements.1.warning', 'null'),
('globalSets.5c9f2bb8-b152-40a4-bc60-ac3ab0c09314.fieldLayouts.4e002902-59ed-4470-be61-917fe2bb0c36.tabs.0.elements.1.width', '100'),
('globalSets.5c9f2bb8-b152-40a4-bc60-ac3ab0c09314.fieldLayouts.4e002902-59ed-4470-be61-917fe2bb0c36.tabs.0.elements.2.fieldUid', '\"c95fe0cd-27df-4250-984c-a1e06f474e61\"'),
('globalSets.5c9f2bb8-b152-40a4-bc60-ac3ab0c09314.fieldLayouts.4e002902-59ed-4470-be61-917fe2bb0c36.tabs.0.elements.2.instructions', 'null'),
('globalSets.5c9f2bb8-b152-40a4-bc60-ac3ab0c09314.fieldLayouts.4e002902-59ed-4470-be61-917fe2bb0c36.tabs.0.elements.2.label', 'null'),
('globalSets.5c9f2bb8-b152-40a4-bc60-ac3ab0c09314.fieldLayouts.4e002902-59ed-4470-be61-917fe2bb0c36.tabs.0.elements.2.required', 'false'),
('globalSets.5c9f2bb8-b152-40a4-bc60-ac3ab0c09314.fieldLayouts.4e002902-59ed-4470-be61-917fe2bb0c36.tabs.0.elements.2.tip', 'null'),
('globalSets.5c9f2bb8-b152-40a4-bc60-ac3ab0c09314.fieldLayouts.4e002902-59ed-4470-be61-917fe2bb0c36.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('globalSets.5c9f2bb8-b152-40a4-bc60-ac3ab0c09314.fieldLayouts.4e002902-59ed-4470-be61-917fe2bb0c36.tabs.0.elements.2.warning', 'null'),
('globalSets.5c9f2bb8-b152-40a4-bc60-ac3ab0c09314.fieldLayouts.4e002902-59ed-4470-be61-917fe2bb0c36.tabs.0.elements.2.width', '100'),
('globalSets.5c9f2bb8-b152-40a4-bc60-ac3ab0c09314.fieldLayouts.4e002902-59ed-4470-be61-917fe2bb0c36.tabs.0.elements.3.fieldUid', '\"abb156ae-844b-4f1a-a1b4-63ce080a0009\"'),
('globalSets.5c9f2bb8-b152-40a4-bc60-ac3ab0c09314.fieldLayouts.4e002902-59ed-4470-be61-917fe2bb0c36.tabs.0.elements.3.instructions', 'null'),
('globalSets.5c9f2bb8-b152-40a4-bc60-ac3ab0c09314.fieldLayouts.4e002902-59ed-4470-be61-917fe2bb0c36.tabs.0.elements.3.label', 'null'),
('globalSets.5c9f2bb8-b152-40a4-bc60-ac3ab0c09314.fieldLayouts.4e002902-59ed-4470-be61-917fe2bb0c36.tabs.0.elements.3.required', 'false'),
('globalSets.5c9f2bb8-b152-40a4-bc60-ac3ab0c09314.fieldLayouts.4e002902-59ed-4470-be61-917fe2bb0c36.tabs.0.elements.3.tip', 'null'),
('globalSets.5c9f2bb8-b152-40a4-bc60-ac3ab0c09314.fieldLayouts.4e002902-59ed-4470-be61-917fe2bb0c36.tabs.0.elements.3.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('globalSets.5c9f2bb8-b152-40a4-bc60-ac3ab0c09314.fieldLayouts.4e002902-59ed-4470-be61-917fe2bb0c36.tabs.0.elements.3.warning', 'null'),
('globalSets.5c9f2bb8-b152-40a4-bc60-ac3ab0c09314.fieldLayouts.4e002902-59ed-4470-be61-917fe2bb0c36.tabs.0.elements.3.width', '100'),
('globalSets.5c9f2bb8-b152-40a4-bc60-ac3ab0c09314.fieldLayouts.4e002902-59ed-4470-be61-917fe2bb0c36.tabs.0.name', '\"Globals\"'),
('globalSets.5c9f2bb8-b152-40a4-bc60-ac3ab0c09314.fieldLayouts.4e002902-59ed-4470-be61-917fe2bb0c36.tabs.0.sortOrder', '1'),
('globalSets.5c9f2bb8-b152-40a4-bc60-ac3ab0c09314.handle', '\"hopscotch\"'),
('globalSets.5c9f2bb8-b152-40a4-bc60-ac3ab0c09314.name', '\"Hopscotch\"'),
('graphql.publicToken.enabled', 'false'),
('graphql.publicToken.expiryDate', 'null'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.field', '\"e7b3b7f1-8c18-4496-999a-dfe188acd0a3\"'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fieldLayouts.141a4b76-7277-4162-87e7-403db8715cf0.tabs.0.elements.0.fieldUid', '\"81db9add-1ad6-416e-a57f-950d6abedb87\"'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fieldLayouts.141a4b76-7277-4162-87e7-403db8715cf0.tabs.0.elements.0.instructions', 'null'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fieldLayouts.141a4b76-7277-4162-87e7-403db8715cf0.tabs.0.elements.0.label', 'null'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fieldLayouts.141a4b76-7277-4162-87e7-403db8715cf0.tabs.0.elements.0.required', 'false'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fieldLayouts.141a4b76-7277-4162-87e7-403db8715cf0.tabs.0.elements.0.tip', 'null'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fieldLayouts.141a4b76-7277-4162-87e7-403db8715cf0.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fieldLayouts.141a4b76-7277-4162-87e7-403db8715cf0.tabs.0.elements.0.warning', 'null'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fieldLayouts.141a4b76-7277-4162-87e7-403db8715cf0.tabs.0.elements.0.width', '100'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fieldLayouts.141a4b76-7277-4162-87e7-403db8715cf0.tabs.0.elements.1.fieldUid', '\"91450004-2ff4-4d87-852d-fd3e1cf152fc\"'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fieldLayouts.141a4b76-7277-4162-87e7-403db8715cf0.tabs.0.elements.1.instructions', 'null'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fieldLayouts.141a4b76-7277-4162-87e7-403db8715cf0.tabs.0.elements.1.label', 'null'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fieldLayouts.141a4b76-7277-4162-87e7-403db8715cf0.tabs.0.elements.1.required', 'false'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fieldLayouts.141a4b76-7277-4162-87e7-403db8715cf0.tabs.0.elements.1.tip', 'null'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fieldLayouts.141a4b76-7277-4162-87e7-403db8715cf0.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fieldLayouts.141a4b76-7277-4162-87e7-403db8715cf0.tabs.0.elements.1.warning', 'null'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fieldLayouts.141a4b76-7277-4162-87e7-403db8715cf0.tabs.0.elements.1.width', '100'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fieldLayouts.141a4b76-7277-4162-87e7-403db8715cf0.tabs.0.name', '\"Content\"'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fieldLayouts.141a4b76-7277-4162-87e7-403db8715cf0.tabs.0.sortOrder', '1'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fields.81db9add-1ad6-416e-a57f-950d6abedb87.contentColumnType', '\"text\"'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fields.81db9add-1ad6-416e-a57f-950d6abedb87.fieldGroup', 'null'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fields.81db9add-1ad6-416e-a57f-950d6abedb87.handle', '\"faqSectionTitle\"'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fields.81db9add-1ad6-416e-a57f-950d6abedb87.instructions', '\"\"'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fields.81db9add-1ad6-416e-a57f-950d6abedb87.name', '\"Section Title\"'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fields.81db9add-1ad6-416e-a57f-950d6abedb87.searchable', 'false'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fields.81db9add-1ad6-416e-a57f-950d6abedb87.settings.byteLimit', 'null'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fields.81db9add-1ad6-416e-a57f-950d6abedb87.settings.charLimit', 'null'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fields.81db9add-1ad6-416e-a57f-950d6abedb87.settings.code', '\"\"'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fields.81db9add-1ad6-416e-a57f-950d6abedb87.settings.columnType', 'null'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fields.81db9add-1ad6-416e-a57f-950d6abedb87.settings.initialRows', '\"4\"'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fields.81db9add-1ad6-416e-a57f-950d6abedb87.settings.multiline', '\"\"'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fields.81db9add-1ad6-416e-a57f-950d6abedb87.settings.placeholder', '\"\"'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fields.81db9add-1ad6-416e-a57f-950d6abedb87.settings.uiMode', '\"normal\"'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fields.81db9add-1ad6-416e-a57f-950d6abedb87.translationKeyFormat', 'null'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fields.81db9add-1ad6-416e-a57f-950d6abedb87.translationMethod', '\"none\"'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fields.81db9add-1ad6-416e-a57f-950d6abedb87.type', '\"craft\\\\fields\\\\PlainText\"'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fields.91450004-2ff4-4d87-852d-fd3e1cf152fc.contentColumnType', '\"text\"'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fields.91450004-2ff4-4d87-852d-fd3e1cf152fc.fieldGroup', 'null'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fields.91450004-2ff4-4d87-852d-fd3e1cf152fc.handle', '\"faq\"'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fields.91450004-2ff4-4d87-852d-fd3e1cf152fc.instructions', '\"\"'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fields.91450004-2ff4-4d87-852d-fd3e1cf152fc.name', '\"FAQ\"'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fields.91450004-2ff4-4d87-852d-fd3e1cf152fc.searchable', 'false'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fields.91450004-2ff4-4d87-852d-fd3e1cf152fc.settings.addRowLabel', '\"Add a FAQ\"'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fields.91450004-2ff4-4d87-852d-fd3e1cf152fc.settings.columns.__assoc__.0.0', '\"col1\"'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fields.91450004-2ff4-4d87-852d-fd3e1cf152fc.settings.columns.__assoc__.0.1.__assoc__.0.0', '\"heading\"'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fields.91450004-2ff4-4d87-852d-fd3e1cf152fc.settings.columns.__assoc__.0.1.__assoc__.0.1', '\"Question\"'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fields.91450004-2ff4-4d87-852d-fd3e1cf152fc.settings.columns.__assoc__.0.1.__assoc__.1.0', '\"handle\"'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fields.91450004-2ff4-4d87-852d-fd3e1cf152fc.settings.columns.__assoc__.0.1.__assoc__.1.1', '\"question\"'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fields.91450004-2ff4-4d87-852d-fd3e1cf152fc.settings.columns.__assoc__.0.1.__assoc__.2.0', '\"width\"'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fields.91450004-2ff4-4d87-852d-fd3e1cf152fc.settings.columns.__assoc__.0.1.__assoc__.2.1', '\"\"'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fields.91450004-2ff4-4d87-852d-fd3e1cf152fc.settings.columns.__assoc__.0.1.__assoc__.3.0', '\"type\"'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fields.91450004-2ff4-4d87-852d-fd3e1cf152fc.settings.columns.__assoc__.0.1.__assoc__.3.1', '\"singleline\"'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fields.91450004-2ff4-4d87-852d-fd3e1cf152fc.settings.columns.__assoc__.1.0', '\"col2\"'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fields.91450004-2ff4-4d87-852d-fd3e1cf152fc.settings.columns.__assoc__.1.1.__assoc__.0.0', '\"heading\"'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fields.91450004-2ff4-4d87-852d-fd3e1cf152fc.settings.columns.__assoc__.1.1.__assoc__.0.1', '\"Answer\"'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fields.91450004-2ff4-4d87-852d-fd3e1cf152fc.settings.columns.__assoc__.1.1.__assoc__.1.0', '\"handle\"'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fields.91450004-2ff4-4d87-852d-fd3e1cf152fc.settings.columns.__assoc__.1.1.__assoc__.1.1', '\"answer\"'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fields.91450004-2ff4-4d87-852d-fd3e1cf152fc.settings.columns.__assoc__.1.1.__assoc__.2.0', '\"width\"'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fields.91450004-2ff4-4d87-852d-fd3e1cf152fc.settings.columns.__assoc__.1.1.__assoc__.2.1', '\"\"'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fields.91450004-2ff4-4d87-852d-fd3e1cf152fc.settings.columns.__assoc__.1.1.__assoc__.3.0', '\"type\"'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fields.91450004-2ff4-4d87-852d-fd3e1cf152fc.settings.columns.__assoc__.1.1.__assoc__.3.1', '\"multiline\"'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fields.91450004-2ff4-4d87-852d-fd3e1cf152fc.settings.columnType', '\"text\"'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fields.91450004-2ff4-4d87-852d-fd3e1cf152fc.settings.defaults.0.__assoc__.0.0', '\"col1\"'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fields.91450004-2ff4-4d87-852d-fd3e1cf152fc.settings.defaults.0.__assoc__.0.1', '\"\"'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fields.91450004-2ff4-4d87-852d-fd3e1cf152fc.settings.defaults.0.__assoc__.1.0', '\"col2\"'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fields.91450004-2ff4-4d87-852d-fd3e1cf152fc.settings.defaults.0.__assoc__.1.1', '\"\"'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fields.91450004-2ff4-4d87-852d-fd3e1cf152fc.settings.maxRows', '\"\"'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fields.91450004-2ff4-4d87-852d-fd3e1cf152fc.settings.minRows', '\"1\"'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fields.91450004-2ff4-4d87-852d-fd3e1cf152fc.translationKeyFormat', 'null'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fields.91450004-2ff4-4d87-852d-fd3e1cf152fc.translationMethod', '\"none\"'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.fields.91450004-2ff4-4d87-852d-fd3e1cf152fc.type', '\"craft\\\\fields\\\\Table\"'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.handle', '\"faqSection\"'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.name', '\"FAQ Section\"'),
('matrixBlockTypes.4c8ef855-dc53-42a1-a6d1-e987bf0c676e.sortOrder', '1'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.field', '\"616e1265-a1aa-44c0-a6f0-c7c346270533\"'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fieldLayouts.91ac2d17-5c73-4f54-a34b-bf21c3b31f56.tabs.0.elements.0.fieldUid', '\"15922bef-f693-495e-aa09-939f366df505\"'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fieldLayouts.91ac2d17-5c73-4f54-a34b-bf21c3b31f56.tabs.0.elements.0.instructions', 'null'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fieldLayouts.91ac2d17-5c73-4f54-a34b-bf21c3b31f56.tabs.0.elements.0.label', 'null'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fieldLayouts.91ac2d17-5c73-4f54-a34b-bf21c3b31f56.tabs.0.elements.0.required', 'false'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fieldLayouts.91ac2d17-5c73-4f54-a34b-bf21c3b31f56.tabs.0.elements.0.tip', 'null'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fieldLayouts.91ac2d17-5c73-4f54-a34b-bf21c3b31f56.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fieldLayouts.91ac2d17-5c73-4f54-a34b-bf21c3b31f56.tabs.0.elements.0.warning', 'null'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fieldLayouts.91ac2d17-5c73-4f54-a34b-bf21c3b31f56.tabs.0.elements.0.width', '100'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fieldLayouts.91ac2d17-5c73-4f54-a34b-bf21c3b31f56.tabs.0.elements.1.fieldUid', '\"db579482-b972-4911-b90d-f9a8e61368ae\"'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fieldLayouts.91ac2d17-5c73-4f54-a34b-bf21c3b31f56.tabs.0.elements.1.instructions', 'null'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fieldLayouts.91ac2d17-5c73-4f54-a34b-bf21c3b31f56.tabs.0.elements.1.label', 'null'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fieldLayouts.91ac2d17-5c73-4f54-a34b-bf21c3b31f56.tabs.0.elements.1.required', 'false'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fieldLayouts.91ac2d17-5c73-4f54-a34b-bf21c3b31f56.tabs.0.elements.1.tip', 'null'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fieldLayouts.91ac2d17-5c73-4f54-a34b-bf21c3b31f56.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fieldLayouts.91ac2d17-5c73-4f54-a34b-bf21c3b31f56.tabs.0.elements.1.warning', 'null'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fieldLayouts.91ac2d17-5c73-4f54-a34b-bf21c3b31f56.tabs.0.elements.1.width', '100'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fieldLayouts.91ac2d17-5c73-4f54-a34b-bf21c3b31f56.tabs.0.name', '\"Content\"'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fieldLayouts.91ac2d17-5c73-4f54-a34b-bf21c3b31f56.tabs.0.sortOrder', '1'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fields.15922bef-f693-495e-aa09-939f366df505.contentColumnType', '\"text\"'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fields.15922bef-f693-495e-aa09-939f366df505.fieldGroup', 'null'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fields.15922bef-f693-495e-aa09-939f366df505.handle', '\"faqQuestion\"'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fields.15922bef-f693-495e-aa09-939f366df505.instructions', '\"\"'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fields.15922bef-f693-495e-aa09-939f366df505.name', '\"FAQ question\"'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fields.15922bef-f693-495e-aa09-939f366df505.searchable', 'false'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fields.15922bef-f693-495e-aa09-939f366df505.settings.byteLimit', 'null'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fields.15922bef-f693-495e-aa09-939f366df505.settings.charLimit', 'null'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fields.15922bef-f693-495e-aa09-939f366df505.settings.code', '\"\"'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fields.15922bef-f693-495e-aa09-939f366df505.settings.columnType', 'null'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fields.15922bef-f693-495e-aa09-939f366df505.settings.initialRows', '\"4\"'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fields.15922bef-f693-495e-aa09-939f366df505.settings.multiline', '\"\"'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fields.15922bef-f693-495e-aa09-939f366df505.settings.placeholder', '\"\"'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fields.15922bef-f693-495e-aa09-939f366df505.settings.uiMode', '\"normal\"'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fields.15922bef-f693-495e-aa09-939f366df505.translationKeyFormat', 'null'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fields.15922bef-f693-495e-aa09-939f366df505.translationMethod', '\"none\"'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fields.15922bef-f693-495e-aa09-939f366df505.type', '\"craft\\\\fields\\\\PlainText\"'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fields.db579482-b972-4911-b90d-f9a8e61368ae.contentColumnType', '\"text\"'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fields.db579482-b972-4911-b90d-f9a8e61368ae.fieldGroup', 'null'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fields.db579482-b972-4911-b90d-f9a8e61368ae.handle', '\"faqAnswer\"'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fields.db579482-b972-4911-b90d-f9a8e61368ae.instructions', '\"\"'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fields.db579482-b972-4911-b90d-f9a8e61368ae.name', '\"FAQ answer\"'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fields.db579482-b972-4911-b90d-f9a8e61368ae.searchable', 'false'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fields.db579482-b972-4911-b90d-f9a8e61368ae.settings.availableTransforms', '\"*\"'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fields.db579482-b972-4911-b90d-f9a8e61368ae.settings.availableVolumes', '\"\"'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fields.db579482-b972-4911-b90d-f9a8e61368ae.settings.cleanupHtml', 'true'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fields.db579482-b972-4911-b90d-f9a8e61368ae.settings.columnType', '\"text\"'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fields.db579482-b972-4911-b90d-f9a8e61368ae.settings.configSelectionMode', '\"manual\"'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fields.db579482-b972-4911-b90d-f9a8e61368ae.settings.defaultTransform', '\"\"'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fields.db579482-b972-4911-b90d-f9a8e61368ae.settings.manualConfig', '\"{\\r\\n  \\\"buttons\\\": [\\\"link\\\"]\\r\\n}\"'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fields.db579482-b972-4911-b90d-f9a8e61368ae.settings.purifierConfig', '\"\"'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fields.db579482-b972-4911-b90d-f9a8e61368ae.settings.purifyHtml', '\"1\"'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fields.db579482-b972-4911-b90d-f9a8e61368ae.settings.redactorConfig', '\"Simple.json\"'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fields.db579482-b972-4911-b90d-f9a8e61368ae.settings.removeEmptyTags', '\"1\"'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fields.db579482-b972-4911-b90d-f9a8e61368ae.settings.removeInlineStyles', '\"1\"'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fields.db579482-b972-4911-b90d-f9a8e61368ae.settings.removeNbsp', '\"1\"'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fields.db579482-b972-4911-b90d-f9a8e61368ae.settings.showHtmlButtonForNonAdmins', '\"\"'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fields.db579482-b972-4911-b90d-f9a8e61368ae.settings.showUnpermittedFiles', 'false'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fields.db579482-b972-4911-b90d-f9a8e61368ae.settings.showUnpermittedVolumes', 'false'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fields.db579482-b972-4911-b90d-f9a8e61368ae.settings.uiMode', '\"enlarged\"'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fields.db579482-b972-4911-b90d-f9a8e61368ae.translationKeyFormat', 'null'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fields.db579482-b972-4911-b90d-f9a8e61368ae.translationMethod', '\"none\"'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.fields.db579482-b972-4911-b90d-f9a8e61368ae.type', '\"craft\\\\redactor\\\\Field\"'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.handle', '\"faqs\"'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.name', '\"Faqs\"'),
('matrixBlockTypes.780faf71-6de6-440f-98a8-ff7328a12759.sortOrder', '1'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.field', '\"405e9399-5a98-4bbe-b0a0-95343c280b3d\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fieldLayouts.844c2932-6738-4b65-bd19-19d26d8c12d2.tabs.0.elements.0.fieldUid', '\"e4236b79-8789-47a6-9e73-d5f4a2195e88\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fieldLayouts.844c2932-6738-4b65-bd19-19d26d8c12d2.tabs.0.elements.0.instructions', 'null'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fieldLayouts.844c2932-6738-4b65-bd19-19d26d8c12d2.tabs.0.elements.0.label', 'null'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fieldLayouts.844c2932-6738-4b65-bd19-19d26d8c12d2.tabs.0.elements.0.required', 'true'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fieldLayouts.844c2932-6738-4b65-bd19-19d26d8c12d2.tabs.0.elements.0.tip', 'null'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fieldLayouts.844c2932-6738-4b65-bd19-19d26d8c12d2.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fieldLayouts.844c2932-6738-4b65-bd19-19d26d8c12d2.tabs.0.elements.0.warning', 'null'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fieldLayouts.844c2932-6738-4b65-bd19-19d26d8c12d2.tabs.0.elements.0.width', '100'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fieldLayouts.844c2932-6738-4b65-bd19-19d26d8c12d2.tabs.0.elements.1.fieldUid', '\"44926f00-4033-4eb3-b8a4-5b41d075afdd\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fieldLayouts.844c2932-6738-4b65-bd19-19d26d8c12d2.tabs.0.elements.1.instructions', 'null'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fieldLayouts.844c2932-6738-4b65-bd19-19d26d8c12d2.tabs.0.elements.1.label', 'null'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fieldLayouts.844c2932-6738-4b65-bd19-19d26d8c12d2.tabs.0.elements.1.required', 'true'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fieldLayouts.844c2932-6738-4b65-bd19-19d26d8c12d2.tabs.0.elements.1.tip', 'null'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fieldLayouts.844c2932-6738-4b65-bd19-19d26d8c12d2.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fieldLayouts.844c2932-6738-4b65-bd19-19d26d8c12d2.tabs.0.elements.1.warning', 'null'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fieldLayouts.844c2932-6738-4b65-bd19-19d26d8c12d2.tabs.0.elements.1.width', '100'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fieldLayouts.844c2932-6738-4b65-bd19-19d26d8c12d2.tabs.0.elements.2.fieldUid', '\"fce9cf63-9736-43e5-b83a-f1c84f206a33\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fieldLayouts.844c2932-6738-4b65-bd19-19d26d8c12d2.tabs.0.elements.2.instructions', 'null'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fieldLayouts.844c2932-6738-4b65-bd19-19d26d8c12d2.tabs.0.elements.2.label', 'null'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fieldLayouts.844c2932-6738-4b65-bd19-19d26d8c12d2.tabs.0.elements.2.required', 'true'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fieldLayouts.844c2932-6738-4b65-bd19-19d26d8c12d2.tabs.0.elements.2.tip', 'null'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fieldLayouts.844c2932-6738-4b65-bd19-19d26d8c12d2.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fieldLayouts.844c2932-6738-4b65-bd19-19d26d8c12d2.tabs.0.elements.2.warning', 'null'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fieldLayouts.844c2932-6738-4b65-bd19-19d26d8c12d2.tabs.0.elements.2.width', '100'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fieldLayouts.844c2932-6738-4b65-bd19-19d26d8c12d2.tabs.0.elements.3.fieldUid', '\"2265add3-f43b-44af-af2f-3db1df65a4ee\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fieldLayouts.844c2932-6738-4b65-bd19-19d26d8c12d2.tabs.0.elements.3.instructions', 'null'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fieldLayouts.844c2932-6738-4b65-bd19-19d26d8c12d2.tabs.0.elements.3.label', 'null'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fieldLayouts.844c2932-6738-4b65-bd19-19d26d8c12d2.tabs.0.elements.3.required', 'false'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fieldLayouts.844c2932-6738-4b65-bd19-19d26d8c12d2.tabs.0.elements.3.tip', 'null'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fieldLayouts.844c2932-6738-4b65-bd19-19d26d8c12d2.tabs.0.elements.3.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fieldLayouts.844c2932-6738-4b65-bd19-19d26d8c12d2.tabs.0.elements.3.warning', 'null'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fieldLayouts.844c2932-6738-4b65-bd19-19d26d8c12d2.tabs.0.elements.3.width', '100'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fieldLayouts.844c2932-6738-4b65-bd19-19d26d8c12d2.tabs.0.elements.4.fieldUid', '\"a27920c8-693f-47e5-ba1f-bcd2d6c45f4c\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fieldLayouts.844c2932-6738-4b65-bd19-19d26d8c12d2.tabs.0.elements.4.instructions', 'null'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fieldLayouts.844c2932-6738-4b65-bd19-19d26d8c12d2.tabs.0.elements.4.label', 'null'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fieldLayouts.844c2932-6738-4b65-bd19-19d26d8c12d2.tabs.0.elements.4.required', 'false'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fieldLayouts.844c2932-6738-4b65-bd19-19d26d8c12d2.tabs.0.elements.4.tip', 'null'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fieldLayouts.844c2932-6738-4b65-bd19-19d26d8c12d2.tabs.0.elements.4.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fieldLayouts.844c2932-6738-4b65-bd19-19d26d8c12d2.tabs.0.elements.4.warning', 'null'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fieldLayouts.844c2932-6738-4b65-bd19-19d26d8c12d2.tabs.0.elements.4.width', '100'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fieldLayouts.844c2932-6738-4b65-bd19-19d26d8c12d2.tabs.0.elements.5.fieldUid', '\"5b9cf9c9-1f1e-4890-bf0b-0e701545e620\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fieldLayouts.844c2932-6738-4b65-bd19-19d26d8c12d2.tabs.0.elements.5.instructions', 'null'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fieldLayouts.844c2932-6738-4b65-bd19-19d26d8c12d2.tabs.0.elements.5.label', 'null'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fieldLayouts.844c2932-6738-4b65-bd19-19d26d8c12d2.tabs.0.elements.5.required', 'false'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fieldLayouts.844c2932-6738-4b65-bd19-19d26d8c12d2.tabs.0.elements.5.tip', 'null'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fieldLayouts.844c2932-6738-4b65-bd19-19d26d8c12d2.tabs.0.elements.5.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fieldLayouts.844c2932-6738-4b65-bd19-19d26d8c12d2.tabs.0.elements.5.warning', 'null'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fieldLayouts.844c2932-6738-4b65-bd19-19d26d8c12d2.tabs.0.elements.5.width', '100'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fieldLayouts.844c2932-6738-4b65-bd19-19d26d8c12d2.tabs.0.name', '\"Content\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fieldLayouts.844c2932-6738-4b65-bd19-19d26d8c12d2.tabs.0.sortOrder', '1'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.2265add3-f43b-44af-af2f-3db1df65a4ee.contentColumnType', '\"text\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.2265add3-f43b-44af-af2f-3db1df65a4ee.fieldGroup', 'null'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.2265add3-f43b-44af-af2f-3db1df65a4ee.handle', '\"exhibitAuthor\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.2265add3-f43b-44af-af2f-3db1df65a4ee.instructions', '\"\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.2265add3-f43b-44af-af2f-3db1df65a4ee.name', '\"Author \"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.2265add3-f43b-44af-af2f-3db1df65a4ee.searchable', 'false'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.2265add3-f43b-44af-af2f-3db1df65a4ee.settings.byteLimit', 'null'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.2265add3-f43b-44af-af2f-3db1df65a4ee.settings.charLimit', 'null'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.2265add3-f43b-44af-af2f-3db1df65a4ee.settings.code', '\"\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.2265add3-f43b-44af-af2f-3db1df65a4ee.settings.columnType', 'null'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.2265add3-f43b-44af-af2f-3db1df65a4ee.settings.initialRows', '\"4\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.2265add3-f43b-44af-af2f-3db1df65a4ee.settings.multiline', '\"\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.2265add3-f43b-44af-af2f-3db1df65a4ee.settings.placeholder', '\"\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.2265add3-f43b-44af-af2f-3db1df65a4ee.settings.uiMode', '\"normal\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.2265add3-f43b-44af-af2f-3db1df65a4ee.translationKeyFormat', 'null'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.2265add3-f43b-44af-af2f-3db1df65a4ee.translationMethod', '\"none\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.2265add3-f43b-44af-af2f-3db1df65a4ee.type', '\"craft\\\\fields\\\\PlainText\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.44926f00-4033-4eb3-b8a4-5b41d075afdd.contentColumnType', '\"boolean\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.44926f00-4033-4eb3-b8a4-5b41d075afdd.fieldGroup', 'null'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.44926f00-4033-4eb3-b8a4-5b41d075afdd.handle', '\"exhibitStatus\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.44926f00-4033-4eb3-b8a4-5b41d075afdd.instructions', '\"Default set to \'current\'\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.44926f00-4033-4eb3-b8a4-5b41d075afdd.name', '\"Status\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.44926f00-4033-4eb3-b8a4-5b41d075afdd.searchable', 'false'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.44926f00-4033-4eb3-b8a4-5b41d075afdd.settings.default', 'true'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.44926f00-4033-4eb3-b8a4-5b41d075afdd.settings.offLabel', '\"Past\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.44926f00-4033-4eb3-b8a4-5b41d075afdd.settings.onLabel', '\"Current\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.44926f00-4033-4eb3-b8a4-5b41d075afdd.translationKeyFormat', 'null'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.44926f00-4033-4eb3-b8a4-5b41d075afdd.translationMethod', '\"none\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.44926f00-4033-4eb3-b8a4-5b41d075afdd.type', '\"craft\\\\fields\\\\Lightswitch\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.5b9cf9c9-1f1e-4890-bf0b-0e701545e620.contentColumnType', '\"text\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.5b9cf9c9-1f1e-4890-bf0b-0e701545e620.fieldGroup', 'null'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.5b9cf9c9-1f1e-4890-bf0b-0e701545e620.handle', '\"authorLocation\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.5b9cf9c9-1f1e-4890-bf0b-0e701545e620.instructions', '\"\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.5b9cf9c9-1f1e-4890-bf0b-0e701545e620.name', '\"Author Location\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.5b9cf9c9-1f1e-4890-bf0b-0e701545e620.searchable', 'false'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.5b9cf9c9-1f1e-4890-bf0b-0e701545e620.settings.byteLimit', 'null'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.5b9cf9c9-1f1e-4890-bf0b-0e701545e620.settings.charLimit', 'null'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.5b9cf9c9-1f1e-4890-bf0b-0e701545e620.settings.code', '\"\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.5b9cf9c9-1f1e-4890-bf0b-0e701545e620.settings.columnType', 'null'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.5b9cf9c9-1f1e-4890-bf0b-0e701545e620.settings.initialRows', '\"4\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.5b9cf9c9-1f1e-4890-bf0b-0e701545e620.settings.multiline', '\"\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.5b9cf9c9-1f1e-4890-bf0b-0e701545e620.settings.placeholder', '\"\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.5b9cf9c9-1f1e-4890-bf0b-0e701545e620.settings.uiMode', '\"normal\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.5b9cf9c9-1f1e-4890-bf0b-0e701545e620.translationKeyFormat', 'null'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.5b9cf9c9-1f1e-4890-bf0b-0e701545e620.translationMethod', '\"none\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.5b9cf9c9-1f1e-4890-bf0b-0e701545e620.type', '\"craft\\\\fields\\\\PlainText\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.a27920c8-693f-47e5-ba1f-bcd2d6c45f4c.contentColumnType', '\"string(255)\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.a27920c8-693f-47e5-ba1f-bcd2d6c45f4c.fieldGroup', 'null'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.a27920c8-693f-47e5-ba1f-bcd2d6c45f4c.handle', '\"authorLink\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.a27920c8-693f-47e5-ba1f-bcd2d6c45f4c.instructions', '\"\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.a27920c8-693f-47e5-ba1f-bcd2d6c45f4c.name', '\"Author Link\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.a27920c8-693f-47e5-ba1f-bcd2d6c45f4c.searchable', 'false'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.a27920c8-693f-47e5-ba1f-bcd2d6c45f4c.settings.maxLength', '\"255\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.a27920c8-693f-47e5-ba1f-bcd2d6c45f4c.settings.placeholder', '\"\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.a27920c8-693f-47e5-ba1f-bcd2d6c45f4c.translationKeyFormat', 'null'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.a27920c8-693f-47e5-ba1f-bcd2d6c45f4c.translationMethod', '\"none\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.a27920c8-693f-47e5-ba1f-bcd2d6c45f4c.type', '\"craft\\\\fields\\\\Url\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.e4236b79-8789-47a6-9e73-d5f4a2195e88.contentColumnType', '\"string\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.e4236b79-8789-47a6-9e73-d5f4a2195e88.fieldGroup', 'null'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.e4236b79-8789-47a6-9e73-d5f4a2195e88.handle', '\"picture\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.e4236b79-8789-47a6-9e73-d5f4a2195e88.instructions', '\"Image size: 800 x 800\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.e4236b79-8789-47a6-9e73-d5f4a2195e88.name', '\"Picture\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.e4236b79-8789-47a6-9e73-d5f4a2195e88.searchable', 'false'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.e4236b79-8789-47a6-9e73-d5f4a2195e88.settings.allowedKinds.0', '\"image\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.e4236b79-8789-47a6-9e73-d5f4a2195e88.settings.allowSelfRelations', 'false'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.e4236b79-8789-47a6-9e73-d5f4a2195e88.settings.defaultUploadLocationSource', '\"volume:22d4c992-dba7-449e-b36d-ac36420f47e5\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.e4236b79-8789-47a6-9e73-d5f4a2195e88.settings.defaultUploadLocationSubpath', '\"\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.e4236b79-8789-47a6-9e73-d5f4a2195e88.settings.limit', '\"1\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.e4236b79-8789-47a6-9e73-d5f4a2195e88.settings.localizeRelations', 'false'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.e4236b79-8789-47a6-9e73-d5f4a2195e88.settings.restrictFiles', '\"1\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.e4236b79-8789-47a6-9e73-d5f4a2195e88.settings.selectionLabel', '\"\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.e4236b79-8789-47a6-9e73-d5f4a2195e88.settings.showSiteMenu', 'true'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.e4236b79-8789-47a6-9e73-d5f4a2195e88.settings.showUnpermittedFiles', 'false'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.e4236b79-8789-47a6-9e73-d5f4a2195e88.settings.showUnpermittedVolumes', 'false'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.e4236b79-8789-47a6-9e73-d5f4a2195e88.settings.singleUploadLocationSource', '\"volume:28998fcf-08b5-42e2-99bf-32b99d7e71df\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.e4236b79-8789-47a6-9e73-d5f4a2195e88.settings.singleUploadLocationSubpath', '\"\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.e4236b79-8789-47a6-9e73-d5f4a2195e88.settings.source', 'null'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.e4236b79-8789-47a6-9e73-d5f4a2195e88.settings.sources', '\"*\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.e4236b79-8789-47a6-9e73-d5f4a2195e88.settings.targetSiteId', 'null'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.e4236b79-8789-47a6-9e73-d5f4a2195e88.settings.useSingleFolder', 'true'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.e4236b79-8789-47a6-9e73-d5f4a2195e88.settings.validateRelatedElements', 'false'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.e4236b79-8789-47a6-9e73-d5f4a2195e88.settings.viewMode', '\"large\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.e4236b79-8789-47a6-9e73-d5f4a2195e88.translationKeyFormat', 'null'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.e4236b79-8789-47a6-9e73-d5f4a2195e88.translationMethod', '\"site\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.e4236b79-8789-47a6-9e73-d5f4a2195e88.type', '\"craft\\\\fields\\\\Assets\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.fce9cf63-9736-43e5-b83a-f1c84f206a33.contentColumnType', '\"text\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.fce9cf63-9736-43e5-b83a-f1c84f206a33.fieldGroup', 'null'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.fce9cf63-9736-43e5-b83a-f1c84f206a33.handle', '\"exhibitName\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.fce9cf63-9736-43e5-b83a-f1c84f206a33.instructions', '\"\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.fce9cf63-9736-43e5-b83a-f1c84f206a33.name', '\"Name\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.fce9cf63-9736-43e5-b83a-f1c84f206a33.searchable', 'false'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.fce9cf63-9736-43e5-b83a-f1c84f206a33.settings.byteLimit', 'null'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.fce9cf63-9736-43e5-b83a-f1c84f206a33.settings.charLimit', 'null'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.fce9cf63-9736-43e5-b83a-f1c84f206a33.settings.code', '\"\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.fce9cf63-9736-43e5-b83a-f1c84f206a33.settings.columnType', 'null'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.fce9cf63-9736-43e5-b83a-f1c84f206a33.settings.initialRows', '\"4\"');
INSERT INTO `projectconfig` (`path`, `value`) VALUES
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.fce9cf63-9736-43e5-b83a-f1c84f206a33.settings.multiline', '\"\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.fce9cf63-9736-43e5-b83a-f1c84f206a33.settings.placeholder', '\"\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.fce9cf63-9736-43e5-b83a-f1c84f206a33.settings.uiMode', '\"normal\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.fce9cf63-9736-43e5-b83a-f1c84f206a33.translationKeyFormat', 'null'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.fce9cf63-9736-43e5-b83a-f1c84f206a33.translationMethod', '\"none\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.fields.fce9cf63-9736-43e5-b83a-f1c84f206a33.type', '\"craft\\\\fields\\\\PlainText\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.handle', '\"exhibit\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.name', '\"Exhibit\"'),
('matrixBlockTypes.b92a23c9-7a94-431d-a6fe-016a729cd8af.sortOrder', '1'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.field', '\"0fc9f5ae-aaad-4887-95e9-e411421a5beb\"'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fieldLayouts.40dfecf4-ec01-414b-9bc9-33b6b105f381.tabs.0.elements.0.fieldUid', '\"7c112a51-be84-4da5-a2d8-b31e643054e4\"'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fieldLayouts.40dfecf4-ec01-414b-9bc9-33b6b105f381.tabs.0.elements.0.instructions', 'null'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fieldLayouts.40dfecf4-ec01-414b-9bc9-33b6b105f381.tabs.0.elements.0.label', 'null'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fieldLayouts.40dfecf4-ec01-414b-9bc9-33b6b105f381.tabs.0.elements.0.required', 'false'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fieldLayouts.40dfecf4-ec01-414b-9bc9-33b6b105f381.tabs.0.elements.0.tip', 'null'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fieldLayouts.40dfecf4-ec01-414b-9bc9-33b6b105f381.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fieldLayouts.40dfecf4-ec01-414b-9bc9-33b6b105f381.tabs.0.elements.0.warning', 'null'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fieldLayouts.40dfecf4-ec01-414b-9bc9-33b6b105f381.tabs.0.elements.0.width', '100'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fieldLayouts.40dfecf4-ec01-414b-9bc9-33b6b105f381.tabs.0.elements.1.fieldUid', '\"55ff5573-459b-4b61-a211-3226dd0a25a9\"'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fieldLayouts.40dfecf4-ec01-414b-9bc9-33b6b105f381.tabs.0.elements.1.instructions', 'null'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fieldLayouts.40dfecf4-ec01-414b-9bc9-33b6b105f381.tabs.0.elements.1.label', 'null'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fieldLayouts.40dfecf4-ec01-414b-9bc9-33b6b105f381.tabs.0.elements.1.required', 'false'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fieldLayouts.40dfecf4-ec01-414b-9bc9-33b6b105f381.tabs.0.elements.1.tip', 'null'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fieldLayouts.40dfecf4-ec01-414b-9bc9-33b6b105f381.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fieldLayouts.40dfecf4-ec01-414b-9bc9-33b6b105f381.tabs.0.elements.1.warning', 'null'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fieldLayouts.40dfecf4-ec01-414b-9bc9-33b6b105f381.tabs.0.elements.1.width', '100'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fieldLayouts.40dfecf4-ec01-414b-9bc9-33b6b105f381.tabs.0.elements.2.fieldUid', '\"a0d79509-418a-4458-98dd-98c8fafaffa9\"'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fieldLayouts.40dfecf4-ec01-414b-9bc9-33b6b105f381.tabs.0.elements.2.instructions', 'null'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fieldLayouts.40dfecf4-ec01-414b-9bc9-33b6b105f381.tabs.0.elements.2.label', 'null'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fieldLayouts.40dfecf4-ec01-414b-9bc9-33b6b105f381.tabs.0.elements.2.required', 'false'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fieldLayouts.40dfecf4-ec01-414b-9bc9-33b6b105f381.tabs.0.elements.2.tip', 'null'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fieldLayouts.40dfecf4-ec01-414b-9bc9-33b6b105f381.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fieldLayouts.40dfecf4-ec01-414b-9bc9-33b6b105f381.tabs.0.elements.2.warning', 'null'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fieldLayouts.40dfecf4-ec01-414b-9bc9-33b6b105f381.tabs.0.elements.2.width', '100'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fieldLayouts.40dfecf4-ec01-414b-9bc9-33b6b105f381.tabs.0.name', '\"Content\"'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fieldLayouts.40dfecf4-ec01-414b-9bc9-33b6b105f381.tabs.0.sortOrder', '1'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.55ff5573-459b-4b61-a211-3226dd0a25a9.contentColumnType', '\"text\"'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.55ff5573-459b-4b61-a211-3226dd0a25a9.fieldGroup', 'null'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.55ff5573-459b-4b61-a211-3226dd0a25a9.handle', '\"guidelineHeader\"'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.55ff5573-459b-4b61-a211-3226dd0a25a9.instructions', '\"\"'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.55ff5573-459b-4b61-a211-3226dd0a25a9.name', '\"Header\"'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.55ff5573-459b-4b61-a211-3226dd0a25a9.searchable', 'false'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.55ff5573-459b-4b61-a211-3226dd0a25a9.settings.byteLimit', 'null'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.55ff5573-459b-4b61-a211-3226dd0a25a9.settings.charLimit', 'null'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.55ff5573-459b-4b61-a211-3226dd0a25a9.settings.code', '\"\"'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.55ff5573-459b-4b61-a211-3226dd0a25a9.settings.columnType', 'null'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.55ff5573-459b-4b61-a211-3226dd0a25a9.settings.initialRows', '\"4\"'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.55ff5573-459b-4b61-a211-3226dd0a25a9.settings.multiline', '\"\"'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.55ff5573-459b-4b61-a211-3226dd0a25a9.settings.placeholder', '\"\"'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.55ff5573-459b-4b61-a211-3226dd0a25a9.settings.uiMode', '\"normal\"'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.55ff5573-459b-4b61-a211-3226dd0a25a9.translationKeyFormat', 'null'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.55ff5573-459b-4b61-a211-3226dd0a25a9.translationMethod', '\"none\"'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.55ff5573-459b-4b61-a211-3226dd0a25a9.type', '\"craft\\\\fields\\\\PlainText\"'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.7c112a51-be84-4da5-a2d8-b31e643054e4.contentColumnType', '\"string\"'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.7c112a51-be84-4da5-a2d8-b31e643054e4.fieldGroup', 'null'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.7c112a51-be84-4da5-a2d8-b31e643054e4.handle', '\"numberGrpahic\"'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.7c112a51-be84-4da5-a2d8-b31e643054e4.instructions', '\"Graphic size: 150 x 150\"'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.7c112a51-be84-4da5-a2d8-b31e643054e4.name', '\"Number Grpahic\"'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.7c112a51-be84-4da5-a2d8-b31e643054e4.searchable', 'false'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.7c112a51-be84-4da5-a2d8-b31e643054e4.settings.allowedKinds', 'null'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.7c112a51-be84-4da5-a2d8-b31e643054e4.settings.allowSelfRelations', 'false'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.7c112a51-be84-4da5-a2d8-b31e643054e4.settings.defaultUploadLocationSource', '\"volume:28998fcf-08b5-42e2-99bf-32b99d7e71df\"'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.7c112a51-be84-4da5-a2d8-b31e643054e4.settings.defaultUploadLocationSubpath', '\"\"'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.7c112a51-be84-4da5-a2d8-b31e643054e4.settings.limit', '\"1\"'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.7c112a51-be84-4da5-a2d8-b31e643054e4.settings.localizeRelations', 'false'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.7c112a51-be84-4da5-a2d8-b31e643054e4.settings.restrictFiles', '\"\"'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.7c112a51-be84-4da5-a2d8-b31e643054e4.settings.selectionLabel', '\"\"'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.7c112a51-be84-4da5-a2d8-b31e643054e4.settings.showSiteMenu', 'true'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.7c112a51-be84-4da5-a2d8-b31e643054e4.settings.showUnpermittedFiles', 'false'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.7c112a51-be84-4da5-a2d8-b31e643054e4.settings.showUnpermittedVolumes', 'false'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.7c112a51-be84-4da5-a2d8-b31e643054e4.settings.singleUploadLocationSource', '\"volume:22d4c992-dba7-449e-b36d-ac36420f47e5\"'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.7c112a51-be84-4da5-a2d8-b31e643054e4.settings.singleUploadLocationSubpath', '\"\"'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.7c112a51-be84-4da5-a2d8-b31e643054e4.settings.source', 'null'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.7c112a51-be84-4da5-a2d8-b31e643054e4.settings.sources.0', '\"volume:97d6d9f3-1a93-443a-bfa5-69cdc7328c00\"'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.7c112a51-be84-4da5-a2d8-b31e643054e4.settings.targetSiteId', 'null'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.7c112a51-be84-4da5-a2d8-b31e643054e4.settings.useSingleFolder', 'false'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.7c112a51-be84-4da5-a2d8-b31e643054e4.settings.validateRelatedElements', 'false'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.7c112a51-be84-4da5-a2d8-b31e643054e4.settings.viewMode', '\"list\"'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.7c112a51-be84-4da5-a2d8-b31e643054e4.translationKeyFormat', 'null'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.7c112a51-be84-4da5-a2d8-b31e643054e4.translationMethod', '\"site\"'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.7c112a51-be84-4da5-a2d8-b31e643054e4.type', '\"craft\\\\fields\\\\Assets\"'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.a0d79509-418a-4458-98dd-98c8fafaffa9.contentColumnType', '\"text\"'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.a0d79509-418a-4458-98dd-98c8fafaffa9.fieldGroup', 'null'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.a0d79509-418a-4458-98dd-98c8fafaffa9.handle', '\"guidelineContent\"'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.a0d79509-418a-4458-98dd-98c8fafaffa9.instructions', '\"\"'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.a0d79509-418a-4458-98dd-98c8fafaffa9.name', '\"Guideline Content\"'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.a0d79509-418a-4458-98dd-98c8fafaffa9.searchable', 'false'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.a0d79509-418a-4458-98dd-98c8fafaffa9.settings.byteLimit', 'null'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.a0d79509-418a-4458-98dd-98c8fafaffa9.settings.charLimit', 'null'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.a0d79509-418a-4458-98dd-98c8fafaffa9.settings.code', '\"\"'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.a0d79509-418a-4458-98dd-98c8fafaffa9.settings.columnType', 'null'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.a0d79509-418a-4458-98dd-98c8fafaffa9.settings.initialRows', '\"2\"'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.a0d79509-418a-4458-98dd-98c8fafaffa9.settings.multiline', '\"1\"'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.a0d79509-418a-4458-98dd-98c8fafaffa9.settings.placeholder', '\"\"'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.a0d79509-418a-4458-98dd-98c8fafaffa9.settings.uiMode', '\"normal\"'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.a0d79509-418a-4458-98dd-98c8fafaffa9.translationKeyFormat', 'null'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.a0d79509-418a-4458-98dd-98c8fafaffa9.translationMethod', '\"none\"'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.fields.a0d79509-418a-4458-98dd-98c8fafaffa9.type', '\"craft\\\\fields\\\\PlainText\"'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.handle', '\"guideline\"'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.name', '\"Guideline\"'),
('matrixBlockTypes.cf62faa0-8991-4720-af52-1d31c7881a49.sortOrder', '1'),
('plugins.expanded-singles.edition', '\"standard\"'),
('plugins.expanded-singles.enabled', 'true'),
('plugins.expanded-singles.schemaVersion', '\"1.0.0\"'),
('plugins.expanded-singles.settings.expandSingles', '\"1\"'),
('plugins.expanded-singles.settings.redirectToEntry', '\"1\"'),
('plugins.instagrammedia.edition', '\"standard\"'),
('plugins.instagrammedia.enabled', 'true'),
('plugins.instagrammedia.schemaVersion', '\"1.0.0\"'),
('plugins.instagrammedia.settings.accesToken', '\"\"'),
('plugins.instagrammedia.settings.apiToken', '\"\"'),
('plugins.instagrammedia.settings.appId', '\"2657811631200291\"'),
('plugins.instagrammedia.settings.appSecret', '\"685a6bbb5b8b0ce05c364a9ffa98d76e\"'),
('plugins.instagrammedia.settings.authLink', '\"\"'),
('plugins.instagrammedia.settings.creationTime', '0'),
('plugins.instagrammedia.settings.expirationTime', '-18446.0'),
('plugins.instagrammedia.settings.longAccesToken', '\"\"'),
('plugins.instagrammedia.settings.redirectUri', '\"https://heyblackmagic.com/\"'),
('plugins.redactor.edition', '\"standard\"'),
('plugins.redactor.enabled', 'true'),
('plugins.redactor.schemaVersion', '\"2.3.0\"'),
('plugins.super-table.edition', '\"standard\"'),
('plugins.super-table.enabled', 'true'),
('plugins.super-table.schemaVersion', '\"2.2.1\"'),
('sections.067382e8-5a41-48c4-93eb-e1dd8b7abf98.enableVersioning', 'true'),
('sections.067382e8-5a41-48c4-93eb-e1dd8b7abf98.handle', '\"faq\"'),
('sections.067382e8-5a41-48c4-93eb-e1dd8b7abf98.name', '\"FAQ\"'),
('sections.067382e8-5a41-48c4-93eb-e1dd8b7abf98.propagationMethod', '\"all\"'),
('sections.067382e8-5a41-48c4-93eb-e1dd8b7abf98.siteSettings.fb7efba8-b557-46fd-82c6-4e761b57c79b.enabledByDefault', 'true'),
('sections.067382e8-5a41-48c4-93eb-e1dd8b7abf98.siteSettings.fb7efba8-b557-46fd-82c6-4e761b57c79b.hasUrls', 'true'),
('sections.067382e8-5a41-48c4-93eb-e1dd8b7abf98.siteSettings.fb7efba8-b557-46fd-82c6-4e761b57c79b.template', '\"templates/faq\"'),
('sections.067382e8-5a41-48c4-93eb-e1dd8b7abf98.siteSettings.fb7efba8-b557-46fd-82c6-4e761b57c79b.uriFormat', '\"faq\"'),
('sections.067382e8-5a41-48c4-93eb-e1dd8b7abf98.type', '\"single\"'),
('sections.30d5184b-2aff-4beb-bcfa-b55aa3579824.enableVersioning', 'true'),
('sections.30d5184b-2aff-4beb-bcfa-b55aa3579824.handle', '\"contact\"'),
('sections.30d5184b-2aff-4beb-bcfa-b55aa3579824.name', '\"Contact\"'),
('sections.30d5184b-2aff-4beb-bcfa-b55aa3579824.propagationMethod', '\"all\"'),
('sections.30d5184b-2aff-4beb-bcfa-b55aa3579824.siteSettings.fb7efba8-b557-46fd-82c6-4e761b57c79b.enabledByDefault', 'true'),
('sections.30d5184b-2aff-4beb-bcfa-b55aa3579824.siteSettings.fb7efba8-b557-46fd-82c6-4e761b57c79b.hasUrls', 'true'),
('sections.30d5184b-2aff-4beb-bcfa-b55aa3579824.siteSettings.fb7efba8-b557-46fd-82c6-4e761b57c79b.template', '\"templates/contact\"'),
('sections.30d5184b-2aff-4beb-bcfa-b55aa3579824.siteSettings.fb7efba8-b557-46fd-82c6-4e761b57c79b.uriFormat', '\"contact\"'),
('sections.30d5184b-2aff-4beb-bcfa-b55aa3579824.type', '\"single\"'),
('sections.34475136-40f1-4f7b-a942-4675600cf9b0.enableVersioning', 'true'),
('sections.34475136-40f1-4f7b-a942-4675600cf9b0.handle', '\"about\"'),
('sections.34475136-40f1-4f7b-a942-4675600cf9b0.name', '\"About\"'),
('sections.34475136-40f1-4f7b-a942-4675600cf9b0.propagationMethod', '\"all\"'),
('sections.34475136-40f1-4f7b-a942-4675600cf9b0.siteSettings.fb7efba8-b557-46fd-82c6-4e761b57c79b.enabledByDefault', 'true'),
('sections.34475136-40f1-4f7b-a942-4675600cf9b0.siteSettings.fb7efba8-b557-46fd-82c6-4e761b57c79b.hasUrls', 'true'),
('sections.34475136-40f1-4f7b-a942-4675600cf9b0.siteSettings.fb7efba8-b557-46fd-82c6-4e761b57c79b.template', '\"templates/about\"'),
('sections.34475136-40f1-4f7b-a942-4675600cf9b0.siteSettings.fb7efba8-b557-46fd-82c6-4e761b57c79b.uriFormat', '\"about\"'),
('sections.34475136-40f1-4f7b-a942-4675600cf9b0.type', '\"single\"'),
('sections.3c305ecc-d28d-4900-a9ab-c6364f3d26c3.enableVersioning', 'true'),
('sections.3c305ecc-d28d-4900-a9ab-c6364f3d26c3.handle', '\"covid19\"'),
('sections.3c305ecc-d28d-4900-a9ab-c6364f3d26c3.name', '\"Covid 19\"'),
('sections.3c305ecc-d28d-4900-a9ab-c6364f3d26c3.propagationMethod', '\"all\"'),
('sections.3c305ecc-d28d-4900-a9ab-c6364f3d26c3.siteSettings.fb7efba8-b557-46fd-82c6-4e761b57c79b.enabledByDefault', 'true'),
('sections.3c305ecc-d28d-4900-a9ab-c6364f3d26c3.siteSettings.fb7efba8-b557-46fd-82c6-4e761b57c79b.hasUrls', 'true'),
('sections.3c305ecc-d28d-4900-a9ab-c6364f3d26c3.siteSettings.fb7efba8-b557-46fd-82c6-4e761b57c79b.template', '\"templates/covid\"'),
('sections.3c305ecc-d28d-4900-a9ab-c6364f3d26c3.siteSettings.fb7efba8-b557-46fd-82c6-4e761b57c79b.uriFormat', '\"covid-19\"'),
('sections.3c305ecc-d28d-4900-a9ab-c6364f3d26c3.type', '\"single\"'),
('sections.4c1f4924-dad4-48b2-82d6-4b12282af8f4.enableVersioning', 'true'),
('sections.4c1f4924-dad4-48b2-82d6-4b12282af8f4.handle', '\"policy\"'),
('sections.4c1f4924-dad4-48b2-82d6-4b12282af8f4.name', '\"Policy\"'),
('sections.4c1f4924-dad4-48b2-82d6-4b12282af8f4.propagationMethod', '\"all\"'),
('sections.4c1f4924-dad4-48b2-82d6-4b12282af8f4.siteSettings.fb7efba8-b557-46fd-82c6-4e761b57c79b.enabledByDefault', 'true'),
('sections.4c1f4924-dad4-48b2-82d6-4b12282af8f4.siteSettings.fb7efba8-b557-46fd-82c6-4e761b57c79b.hasUrls', 'true'),
('sections.4c1f4924-dad4-48b2-82d6-4b12282af8f4.siteSettings.fb7efba8-b557-46fd-82c6-4e761b57c79b.template', '\"templates/policy\"'),
('sections.4c1f4924-dad4-48b2-82d6-4b12282af8f4.siteSettings.fb7efba8-b557-46fd-82c6-4e761b57c79b.uriFormat', '\"policy\"'),
('sections.4c1f4924-dad4-48b2-82d6-4b12282af8f4.type', '\"single\"'),
('sections.eadb3e6b-cdf7-457f-9780-97d389f823ee.enableVersioning', 'true'),
('sections.eadb3e6b-cdf7-457f-9780-97d389f823ee.handle', '\"home\"'),
('sections.eadb3e6b-cdf7-457f-9780-97d389f823ee.name', '\"Home\"'),
('sections.eadb3e6b-cdf7-457f-9780-97d389f823ee.propagationMethod', '\"all\"'),
('sections.eadb3e6b-cdf7-457f-9780-97d389f823ee.siteSettings.fb7efba8-b557-46fd-82c6-4e761b57c79b.enabledByDefault', 'true'),
('sections.eadb3e6b-cdf7-457f-9780-97d389f823ee.siteSettings.fb7efba8-b557-46fd-82c6-4e761b57c79b.hasUrls', 'true'),
('sections.eadb3e6b-cdf7-457f-9780-97d389f823ee.siteSettings.fb7efba8-b557-46fd-82c6-4e761b57c79b.template', '\"templates/home\"'),
('sections.eadb3e6b-cdf7-457f-9780-97d389f823ee.siteSettings.fb7efba8-b557-46fd-82c6-4e761b57c79b.uriFormat', '\"__home__\"'),
('sections.eadb3e6b-cdf7-457f-9780-97d389f823ee.type', '\"single\"'),
('siteGroups.de729615-7833-486a-a810-fe5e2fb23da9.name', '\"Hopscotch\"'),
('sites.fb7efba8-b557-46fd-82c6-4e761b57c79b.baseUrl', '\"$DEFAULT_SITE_URL\"'),
('sites.fb7efba8-b557-46fd-82c6-4e761b57c79b.handle', '\"default\"'),
('sites.fb7efba8-b557-46fd-82c6-4e761b57c79b.hasUrls', 'true'),
('sites.fb7efba8-b557-46fd-82c6-4e761b57c79b.language', '\"en-US\"'),
('sites.fb7efba8-b557-46fd-82c6-4e761b57c79b.name', '\"Hopscotch\"'),
('sites.fb7efba8-b557-46fd-82c6-4e761b57c79b.primary', 'true'),
('sites.fb7efba8-b557-46fd-82c6-4e761b57c79b.siteGroup', '\"de729615-7833-486a-a810-fe5e2fb23da9\"'),
('sites.fb7efba8-b557-46fd-82c6-4e761b57c79b.sortOrder', '1'),
('superTableBlockTypes.82572f10-f1b7-4f90-94f3-f49d3eb37d50.field', '\"d6fc4c91-3544-41f1-8d98-cbeb84362244\"'),
('superTableBlockTypes.82572f10-f1b7-4f90-94f3-f49d3eb37d50.fieldLayouts.03de152d-0158-460d-82ad-1211eed15411.tabs.0.elements.0.fieldUid', '\"9054658e-f5b7-45cd-8ec7-ddaad6a16dd0\"'),
('superTableBlockTypes.82572f10-f1b7-4f90-94f3-f49d3eb37d50.fieldLayouts.03de152d-0158-460d-82ad-1211eed15411.tabs.0.elements.0.instructions', 'null'),
('superTableBlockTypes.82572f10-f1b7-4f90-94f3-f49d3eb37d50.fieldLayouts.03de152d-0158-460d-82ad-1211eed15411.tabs.0.elements.0.label', 'null'),
('superTableBlockTypes.82572f10-f1b7-4f90-94f3-f49d3eb37d50.fieldLayouts.03de152d-0158-460d-82ad-1211eed15411.tabs.0.elements.0.required', 'false'),
('superTableBlockTypes.82572f10-f1b7-4f90-94f3-f49d3eb37d50.fieldLayouts.03de152d-0158-460d-82ad-1211eed15411.tabs.0.elements.0.tip', 'null'),
('superTableBlockTypes.82572f10-f1b7-4f90-94f3-f49d3eb37d50.fieldLayouts.03de152d-0158-460d-82ad-1211eed15411.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('superTableBlockTypes.82572f10-f1b7-4f90-94f3-f49d3eb37d50.fieldLayouts.03de152d-0158-460d-82ad-1211eed15411.tabs.0.elements.0.warning', 'null'),
('superTableBlockTypes.82572f10-f1b7-4f90-94f3-f49d3eb37d50.fieldLayouts.03de152d-0158-460d-82ad-1211eed15411.tabs.0.elements.0.width', '100'),
('superTableBlockTypes.82572f10-f1b7-4f90-94f3-f49d3eb37d50.fieldLayouts.03de152d-0158-460d-82ad-1211eed15411.tabs.0.elements.1.fieldUid', '\"616e1265-a1aa-44c0-a6f0-c7c346270533\"'),
('superTableBlockTypes.82572f10-f1b7-4f90-94f3-f49d3eb37d50.fieldLayouts.03de152d-0158-460d-82ad-1211eed15411.tabs.0.elements.1.instructions', 'null'),
('superTableBlockTypes.82572f10-f1b7-4f90-94f3-f49d3eb37d50.fieldLayouts.03de152d-0158-460d-82ad-1211eed15411.tabs.0.elements.1.label', 'null'),
('superTableBlockTypes.82572f10-f1b7-4f90-94f3-f49d3eb37d50.fieldLayouts.03de152d-0158-460d-82ad-1211eed15411.tabs.0.elements.1.required', 'false'),
('superTableBlockTypes.82572f10-f1b7-4f90-94f3-f49d3eb37d50.fieldLayouts.03de152d-0158-460d-82ad-1211eed15411.tabs.0.elements.1.tip', 'null'),
('superTableBlockTypes.82572f10-f1b7-4f90-94f3-f49d3eb37d50.fieldLayouts.03de152d-0158-460d-82ad-1211eed15411.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('superTableBlockTypes.82572f10-f1b7-4f90-94f3-f49d3eb37d50.fieldLayouts.03de152d-0158-460d-82ad-1211eed15411.tabs.0.elements.1.warning', 'null'),
('superTableBlockTypes.82572f10-f1b7-4f90-94f3-f49d3eb37d50.fieldLayouts.03de152d-0158-460d-82ad-1211eed15411.tabs.0.elements.1.width', '100'),
('superTableBlockTypes.82572f10-f1b7-4f90-94f3-f49d3eb37d50.fieldLayouts.03de152d-0158-460d-82ad-1211eed15411.tabs.0.name', '\"Content\"'),
('superTableBlockTypes.82572f10-f1b7-4f90-94f3-f49d3eb37d50.fieldLayouts.03de152d-0158-460d-82ad-1211eed15411.tabs.0.sortOrder', '1'),
('superTableBlockTypes.82572f10-f1b7-4f90-94f3-f49d3eb37d50.fields.616e1265-a1aa-44c0-a6f0-c7c346270533.contentColumnType', '\"string\"'),
('superTableBlockTypes.82572f10-f1b7-4f90-94f3-f49d3eb37d50.fields.616e1265-a1aa-44c0-a6f0-c7c346270533.fieldGroup', 'null'),
('superTableBlockTypes.82572f10-f1b7-4f90-94f3-f49d3eb37d50.fields.616e1265-a1aa-44c0-a6f0-c7c346270533.handle', '\"faqQuestions\"'),
('superTableBlockTypes.82572f10-f1b7-4f90-94f3-f49d3eb37d50.fields.616e1265-a1aa-44c0-a6f0-c7c346270533.instructions', '\"\"'),
('superTableBlockTypes.82572f10-f1b7-4f90-94f3-f49d3eb37d50.fields.616e1265-a1aa-44c0-a6f0-c7c346270533.name', '\"FAQ questions\"'),
('superTableBlockTypes.82572f10-f1b7-4f90-94f3-f49d3eb37d50.fields.616e1265-a1aa-44c0-a6f0-c7c346270533.searchable', 'true'),
('superTableBlockTypes.82572f10-f1b7-4f90-94f3-f49d3eb37d50.fields.616e1265-a1aa-44c0-a6f0-c7c346270533.settings.contentTable', '\"{{%matrixcontent_faqquestions}}\"'),
('superTableBlockTypes.82572f10-f1b7-4f90-94f3-f49d3eb37d50.fields.616e1265-a1aa-44c0-a6f0-c7c346270533.settings.maxBlocks', '\"\"'),
('superTableBlockTypes.82572f10-f1b7-4f90-94f3-f49d3eb37d50.fields.616e1265-a1aa-44c0-a6f0-c7c346270533.settings.minBlocks', '\"\"'),
('superTableBlockTypes.82572f10-f1b7-4f90-94f3-f49d3eb37d50.fields.616e1265-a1aa-44c0-a6f0-c7c346270533.settings.propagationMethod', '\"all\"'),
('superTableBlockTypes.82572f10-f1b7-4f90-94f3-f49d3eb37d50.fields.616e1265-a1aa-44c0-a6f0-c7c346270533.translationKeyFormat', 'null'),
('superTableBlockTypes.82572f10-f1b7-4f90-94f3-f49d3eb37d50.fields.616e1265-a1aa-44c0-a6f0-c7c346270533.translationMethod', '\"site\"'),
('superTableBlockTypes.82572f10-f1b7-4f90-94f3-f49d3eb37d50.fields.616e1265-a1aa-44c0-a6f0-c7c346270533.type', '\"craft\\\\fields\\\\Matrix\"'),
('superTableBlockTypes.82572f10-f1b7-4f90-94f3-f49d3eb37d50.fields.9054658e-f5b7-45cd-8ec7-ddaad6a16dd0.contentColumnType', '\"text\"'),
('superTableBlockTypes.82572f10-f1b7-4f90-94f3-f49d3eb37d50.fields.9054658e-f5b7-45cd-8ec7-ddaad6a16dd0.fieldGroup', 'null'),
('superTableBlockTypes.82572f10-f1b7-4f90-94f3-f49d3eb37d50.fields.9054658e-f5b7-45cd-8ec7-ddaad6a16dd0.handle', '\"faqSection\"'),
('superTableBlockTypes.82572f10-f1b7-4f90-94f3-f49d3eb37d50.fields.9054658e-f5b7-45cd-8ec7-ddaad6a16dd0.instructions', '\"\"'),
('superTableBlockTypes.82572f10-f1b7-4f90-94f3-f49d3eb37d50.fields.9054658e-f5b7-45cd-8ec7-ddaad6a16dd0.name', '\"FAQ section\"'),
('superTableBlockTypes.82572f10-f1b7-4f90-94f3-f49d3eb37d50.fields.9054658e-f5b7-45cd-8ec7-ddaad6a16dd0.searchable', 'true'),
('superTableBlockTypes.82572f10-f1b7-4f90-94f3-f49d3eb37d50.fields.9054658e-f5b7-45cd-8ec7-ddaad6a16dd0.settings.byteLimit', 'null'),
('superTableBlockTypes.82572f10-f1b7-4f90-94f3-f49d3eb37d50.fields.9054658e-f5b7-45cd-8ec7-ddaad6a16dd0.settings.charLimit', 'null'),
('superTableBlockTypes.82572f10-f1b7-4f90-94f3-f49d3eb37d50.fields.9054658e-f5b7-45cd-8ec7-ddaad6a16dd0.settings.code', '\"\"'),
('superTableBlockTypes.82572f10-f1b7-4f90-94f3-f49d3eb37d50.fields.9054658e-f5b7-45cd-8ec7-ddaad6a16dd0.settings.columnType', 'null'),
('superTableBlockTypes.82572f10-f1b7-4f90-94f3-f49d3eb37d50.fields.9054658e-f5b7-45cd-8ec7-ddaad6a16dd0.settings.initialRows', '\"4\"'),
('superTableBlockTypes.82572f10-f1b7-4f90-94f3-f49d3eb37d50.fields.9054658e-f5b7-45cd-8ec7-ddaad6a16dd0.settings.multiline', '\"\"'),
('superTableBlockTypes.82572f10-f1b7-4f90-94f3-f49d3eb37d50.fields.9054658e-f5b7-45cd-8ec7-ddaad6a16dd0.settings.placeholder', '\"\"'),
('superTableBlockTypes.82572f10-f1b7-4f90-94f3-f49d3eb37d50.fields.9054658e-f5b7-45cd-8ec7-ddaad6a16dd0.settings.uiMode', '\"normal\"'),
('superTableBlockTypes.82572f10-f1b7-4f90-94f3-f49d3eb37d50.fields.9054658e-f5b7-45cd-8ec7-ddaad6a16dd0.translationKeyFormat', 'null'),
('superTableBlockTypes.82572f10-f1b7-4f90-94f3-f49d3eb37d50.fields.9054658e-f5b7-45cd-8ec7-ddaad6a16dd0.translationMethod', '\"none\"'),
('superTableBlockTypes.82572f10-f1b7-4f90-94f3-f49d3eb37d50.fields.9054658e-f5b7-45cd-8ec7-ddaad6a16dd0.type', '\"craft\\\\fields\\\\PlainText\"'),
('system.edition', '\"solo\"'),
('system.live', 'true'),
('system.name', '\"Hopscotch\"'),
('system.schemaVersion', '\"3.5.13\"'),
('system.timeZone', '\"America/Los_Angeles\"'),
('users.allowPublicRegistration', 'false'),
('users.defaultGroup', 'null'),
('users.photoSubpath', '\"\"'),
('users.photoVolumeUid', 'null'),
('users.requireEmailVerification', 'true'),
('volumes.22d4c992-dba7-449e-b36d-ac36420f47e5.fieldLayouts.a340e503-e7bf-4ec2-8a7d-e161ac6dfe0e.tabs.0.elements.0.autocapitalize', 'true'),
('volumes.22d4c992-dba7-449e-b36d-ac36420f47e5.fieldLayouts.a340e503-e7bf-4ec2-8a7d-e161ac6dfe0e.tabs.0.elements.0.autocomplete', 'false'),
('volumes.22d4c992-dba7-449e-b36d-ac36420f47e5.fieldLayouts.a340e503-e7bf-4ec2-8a7d-e161ac6dfe0e.tabs.0.elements.0.autocorrect', 'true'),
('volumes.22d4c992-dba7-449e-b36d-ac36420f47e5.fieldLayouts.a340e503-e7bf-4ec2-8a7d-e161ac6dfe0e.tabs.0.elements.0.class', 'null'),
('volumes.22d4c992-dba7-449e-b36d-ac36420f47e5.fieldLayouts.a340e503-e7bf-4ec2-8a7d-e161ac6dfe0e.tabs.0.elements.0.disabled', 'false'),
('volumes.22d4c992-dba7-449e-b36d-ac36420f47e5.fieldLayouts.a340e503-e7bf-4ec2-8a7d-e161ac6dfe0e.tabs.0.elements.0.id', 'null'),
('volumes.22d4c992-dba7-449e-b36d-ac36420f47e5.fieldLayouts.a340e503-e7bf-4ec2-8a7d-e161ac6dfe0e.tabs.0.elements.0.instructions', 'null'),
('volumes.22d4c992-dba7-449e-b36d-ac36420f47e5.fieldLayouts.a340e503-e7bf-4ec2-8a7d-e161ac6dfe0e.tabs.0.elements.0.label', 'null'),
('volumes.22d4c992-dba7-449e-b36d-ac36420f47e5.fieldLayouts.a340e503-e7bf-4ec2-8a7d-e161ac6dfe0e.tabs.0.elements.0.max', 'null'),
('volumes.22d4c992-dba7-449e-b36d-ac36420f47e5.fieldLayouts.a340e503-e7bf-4ec2-8a7d-e161ac6dfe0e.tabs.0.elements.0.min', 'null'),
('volumes.22d4c992-dba7-449e-b36d-ac36420f47e5.fieldLayouts.a340e503-e7bf-4ec2-8a7d-e161ac6dfe0e.tabs.0.elements.0.name', 'null'),
('volumes.22d4c992-dba7-449e-b36d-ac36420f47e5.fieldLayouts.a340e503-e7bf-4ec2-8a7d-e161ac6dfe0e.tabs.0.elements.0.orientation', 'null'),
('volumes.22d4c992-dba7-449e-b36d-ac36420f47e5.fieldLayouts.a340e503-e7bf-4ec2-8a7d-e161ac6dfe0e.tabs.0.elements.0.placeholder', 'null'),
('volumes.22d4c992-dba7-449e-b36d-ac36420f47e5.fieldLayouts.a340e503-e7bf-4ec2-8a7d-e161ac6dfe0e.tabs.0.elements.0.readonly', 'false'),
('volumes.22d4c992-dba7-449e-b36d-ac36420f47e5.fieldLayouts.a340e503-e7bf-4ec2-8a7d-e161ac6dfe0e.tabs.0.elements.0.requirable', 'false'),
('volumes.22d4c992-dba7-449e-b36d-ac36420f47e5.fieldLayouts.a340e503-e7bf-4ec2-8a7d-e161ac6dfe0e.tabs.0.elements.0.required', 'false'),
('volumes.22d4c992-dba7-449e-b36d-ac36420f47e5.fieldLayouts.a340e503-e7bf-4ec2-8a7d-e161ac6dfe0e.tabs.0.elements.0.size', 'null'),
('volumes.22d4c992-dba7-449e-b36d-ac36420f47e5.fieldLayouts.a340e503-e7bf-4ec2-8a7d-e161ac6dfe0e.tabs.0.elements.0.step', 'null'),
('volumes.22d4c992-dba7-449e-b36d-ac36420f47e5.fieldLayouts.a340e503-e7bf-4ec2-8a7d-e161ac6dfe0e.tabs.0.elements.0.tip', 'null'),
('volumes.22d4c992-dba7-449e-b36d-ac36420f47e5.fieldLayouts.a340e503-e7bf-4ec2-8a7d-e161ac6dfe0e.tabs.0.elements.0.title', 'null'),
('volumes.22d4c992-dba7-449e-b36d-ac36420f47e5.fieldLayouts.a340e503-e7bf-4ec2-8a7d-e161ac6dfe0e.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\TitleField\"'),
('volumes.22d4c992-dba7-449e-b36d-ac36420f47e5.fieldLayouts.a340e503-e7bf-4ec2-8a7d-e161ac6dfe0e.tabs.0.elements.0.warning', 'null'),
('volumes.22d4c992-dba7-449e-b36d-ac36420f47e5.fieldLayouts.a340e503-e7bf-4ec2-8a7d-e161ac6dfe0e.tabs.0.elements.0.width', '100'),
('volumes.22d4c992-dba7-449e-b36d-ac36420f47e5.fieldLayouts.a340e503-e7bf-4ec2-8a7d-e161ac6dfe0e.tabs.0.name', '\"Content\"'),
('volumes.22d4c992-dba7-449e-b36d-ac36420f47e5.fieldLayouts.a340e503-e7bf-4ec2-8a7d-e161ac6dfe0e.tabs.0.sortOrder', '1'),
('volumes.22d4c992-dba7-449e-b36d-ac36420f47e5.handle', '\"homeBanner\"'),
('volumes.22d4c992-dba7-449e-b36d-ac36420f47e5.hasUrls', 'true'),
('volumes.22d4c992-dba7-449e-b36d-ac36420f47e5.name', '\"Home Banner\"'),
('volumes.22d4c992-dba7-449e-b36d-ac36420f47e5.settings.path', '\"@mediaBasePath/home/banner\"'),
('volumes.22d4c992-dba7-449e-b36d-ac36420f47e5.sortOrder', '1'),
('volumes.22d4c992-dba7-449e-b36d-ac36420f47e5.type', '\"craft\\\\volumes\\\\Local\"'),
('volumes.22d4c992-dba7-449e-b36d-ac36420f47e5.url', '\"@mediaBaseUrl/home/banner\"'),
('volumes.28998fcf-08b5-42e2-99bf-32b99d7e71df.fieldLayouts.a07a50a1-60dc-4151-828d-f6b2a9ef7f9b.tabs.0.elements.0.autocapitalize', 'true'),
('volumes.28998fcf-08b5-42e2-99bf-32b99d7e71df.fieldLayouts.a07a50a1-60dc-4151-828d-f6b2a9ef7f9b.tabs.0.elements.0.autocomplete', 'false'),
('volumes.28998fcf-08b5-42e2-99bf-32b99d7e71df.fieldLayouts.a07a50a1-60dc-4151-828d-f6b2a9ef7f9b.tabs.0.elements.0.autocorrect', 'true'),
('volumes.28998fcf-08b5-42e2-99bf-32b99d7e71df.fieldLayouts.a07a50a1-60dc-4151-828d-f6b2a9ef7f9b.tabs.0.elements.0.class', 'null'),
('volumes.28998fcf-08b5-42e2-99bf-32b99d7e71df.fieldLayouts.a07a50a1-60dc-4151-828d-f6b2a9ef7f9b.tabs.0.elements.0.disabled', 'false'),
('volumes.28998fcf-08b5-42e2-99bf-32b99d7e71df.fieldLayouts.a07a50a1-60dc-4151-828d-f6b2a9ef7f9b.tabs.0.elements.0.id', 'null'),
('volumes.28998fcf-08b5-42e2-99bf-32b99d7e71df.fieldLayouts.a07a50a1-60dc-4151-828d-f6b2a9ef7f9b.tabs.0.elements.0.instructions', 'null'),
('volumes.28998fcf-08b5-42e2-99bf-32b99d7e71df.fieldLayouts.a07a50a1-60dc-4151-828d-f6b2a9ef7f9b.tabs.0.elements.0.label', 'null'),
('volumes.28998fcf-08b5-42e2-99bf-32b99d7e71df.fieldLayouts.a07a50a1-60dc-4151-828d-f6b2a9ef7f9b.tabs.0.elements.0.max', 'null'),
('volumes.28998fcf-08b5-42e2-99bf-32b99d7e71df.fieldLayouts.a07a50a1-60dc-4151-828d-f6b2a9ef7f9b.tabs.0.elements.0.min', 'null'),
('volumes.28998fcf-08b5-42e2-99bf-32b99d7e71df.fieldLayouts.a07a50a1-60dc-4151-828d-f6b2a9ef7f9b.tabs.0.elements.0.name', 'null'),
('volumes.28998fcf-08b5-42e2-99bf-32b99d7e71df.fieldLayouts.a07a50a1-60dc-4151-828d-f6b2a9ef7f9b.tabs.0.elements.0.orientation', 'null'),
('volumes.28998fcf-08b5-42e2-99bf-32b99d7e71df.fieldLayouts.a07a50a1-60dc-4151-828d-f6b2a9ef7f9b.tabs.0.elements.0.placeholder', 'null'),
('volumes.28998fcf-08b5-42e2-99bf-32b99d7e71df.fieldLayouts.a07a50a1-60dc-4151-828d-f6b2a9ef7f9b.tabs.0.elements.0.readonly', 'false'),
('volumes.28998fcf-08b5-42e2-99bf-32b99d7e71df.fieldLayouts.a07a50a1-60dc-4151-828d-f6b2a9ef7f9b.tabs.0.elements.0.requirable', 'false'),
('volumes.28998fcf-08b5-42e2-99bf-32b99d7e71df.fieldLayouts.a07a50a1-60dc-4151-828d-f6b2a9ef7f9b.tabs.0.elements.0.required', 'false'),
('volumes.28998fcf-08b5-42e2-99bf-32b99d7e71df.fieldLayouts.a07a50a1-60dc-4151-828d-f6b2a9ef7f9b.tabs.0.elements.0.size', 'null'),
('volumes.28998fcf-08b5-42e2-99bf-32b99d7e71df.fieldLayouts.a07a50a1-60dc-4151-828d-f6b2a9ef7f9b.tabs.0.elements.0.step', 'null'),
('volumes.28998fcf-08b5-42e2-99bf-32b99d7e71df.fieldLayouts.a07a50a1-60dc-4151-828d-f6b2a9ef7f9b.tabs.0.elements.0.tip', 'null'),
('volumes.28998fcf-08b5-42e2-99bf-32b99d7e71df.fieldLayouts.a07a50a1-60dc-4151-828d-f6b2a9ef7f9b.tabs.0.elements.0.title', 'null'),
('volumes.28998fcf-08b5-42e2-99bf-32b99d7e71df.fieldLayouts.a07a50a1-60dc-4151-828d-f6b2a9ef7f9b.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\TitleField\"'),
('volumes.28998fcf-08b5-42e2-99bf-32b99d7e71df.fieldLayouts.a07a50a1-60dc-4151-828d-f6b2a9ef7f9b.tabs.0.elements.0.warning', 'null'),
('volumes.28998fcf-08b5-42e2-99bf-32b99d7e71df.fieldLayouts.a07a50a1-60dc-4151-828d-f6b2a9ef7f9b.tabs.0.elements.0.width', '100'),
('volumes.28998fcf-08b5-42e2-99bf-32b99d7e71df.fieldLayouts.a07a50a1-60dc-4151-828d-f6b2a9ef7f9b.tabs.0.name', '\"Content\"'),
('volumes.28998fcf-08b5-42e2-99bf-32b99d7e71df.fieldLayouts.a07a50a1-60dc-4151-828d-f6b2a9ef7f9b.tabs.0.sortOrder', '1'),
('volumes.28998fcf-08b5-42e2-99bf-32b99d7e71df.handle', '\"exhibits\"'),
('volumes.28998fcf-08b5-42e2-99bf-32b99d7e71df.hasUrls', 'true'),
('volumes.28998fcf-08b5-42e2-99bf-32b99d7e71df.name', '\"Exhibits\"'),
('volumes.28998fcf-08b5-42e2-99bf-32b99d7e71df.settings.path', '\"@mediaBasePath/about/exhibits\"'),
('volumes.28998fcf-08b5-42e2-99bf-32b99d7e71df.sortOrder', '3'),
('volumes.28998fcf-08b5-42e2-99bf-32b99d7e71df.type', '\"craft\\\\volumes\\\\Local\"'),
('volumes.28998fcf-08b5-42e2-99bf-32b99d7e71df.url', '\"@mediaBaseUrl/about/exhibits\"'),
('volumes.8d814e64-e1b1-46c3-a3db-506877a68155.fieldLayouts.9f2af6e5-1914-449c-9ff5-c8bafb549534.tabs.0.elements.0.autocapitalize', 'true'),
('volumes.8d814e64-e1b1-46c3-a3db-506877a68155.fieldLayouts.9f2af6e5-1914-449c-9ff5-c8bafb549534.tabs.0.elements.0.autocomplete', 'false'),
('volumes.8d814e64-e1b1-46c3-a3db-506877a68155.fieldLayouts.9f2af6e5-1914-449c-9ff5-c8bafb549534.tabs.0.elements.0.autocorrect', 'true'),
('volumes.8d814e64-e1b1-46c3-a3db-506877a68155.fieldLayouts.9f2af6e5-1914-449c-9ff5-c8bafb549534.tabs.0.elements.0.class', 'null'),
('volumes.8d814e64-e1b1-46c3-a3db-506877a68155.fieldLayouts.9f2af6e5-1914-449c-9ff5-c8bafb549534.tabs.0.elements.0.disabled', 'false'),
('volumes.8d814e64-e1b1-46c3-a3db-506877a68155.fieldLayouts.9f2af6e5-1914-449c-9ff5-c8bafb549534.tabs.0.elements.0.id', 'null'),
('volumes.8d814e64-e1b1-46c3-a3db-506877a68155.fieldLayouts.9f2af6e5-1914-449c-9ff5-c8bafb549534.tabs.0.elements.0.instructions', 'null'),
('volumes.8d814e64-e1b1-46c3-a3db-506877a68155.fieldLayouts.9f2af6e5-1914-449c-9ff5-c8bafb549534.tabs.0.elements.0.label', 'null'),
('volumes.8d814e64-e1b1-46c3-a3db-506877a68155.fieldLayouts.9f2af6e5-1914-449c-9ff5-c8bafb549534.tabs.0.elements.0.max', 'null'),
('volumes.8d814e64-e1b1-46c3-a3db-506877a68155.fieldLayouts.9f2af6e5-1914-449c-9ff5-c8bafb549534.tabs.0.elements.0.min', 'null'),
('volumes.8d814e64-e1b1-46c3-a3db-506877a68155.fieldLayouts.9f2af6e5-1914-449c-9ff5-c8bafb549534.tabs.0.elements.0.name', 'null'),
('volumes.8d814e64-e1b1-46c3-a3db-506877a68155.fieldLayouts.9f2af6e5-1914-449c-9ff5-c8bafb549534.tabs.0.elements.0.orientation', 'null'),
('volumes.8d814e64-e1b1-46c3-a3db-506877a68155.fieldLayouts.9f2af6e5-1914-449c-9ff5-c8bafb549534.tabs.0.elements.0.placeholder', 'null'),
('volumes.8d814e64-e1b1-46c3-a3db-506877a68155.fieldLayouts.9f2af6e5-1914-449c-9ff5-c8bafb549534.tabs.0.elements.0.readonly', 'false'),
('volumes.8d814e64-e1b1-46c3-a3db-506877a68155.fieldLayouts.9f2af6e5-1914-449c-9ff5-c8bafb549534.tabs.0.elements.0.requirable', 'false'),
('volumes.8d814e64-e1b1-46c3-a3db-506877a68155.fieldLayouts.9f2af6e5-1914-449c-9ff5-c8bafb549534.tabs.0.elements.0.required', 'false'),
('volumes.8d814e64-e1b1-46c3-a3db-506877a68155.fieldLayouts.9f2af6e5-1914-449c-9ff5-c8bafb549534.tabs.0.elements.0.size', 'null'),
('volumes.8d814e64-e1b1-46c3-a3db-506877a68155.fieldLayouts.9f2af6e5-1914-449c-9ff5-c8bafb549534.tabs.0.elements.0.step', 'null'),
('volumes.8d814e64-e1b1-46c3-a3db-506877a68155.fieldLayouts.9f2af6e5-1914-449c-9ff5-c8bafb549534.tabs.0.elements.0.tip', 'null'),
('volumes.8d814e64-e1b1-46c3-a3db-506877a68155.fieldLayouts.9f2af6e5-1914-449c-9ff5-c8bafb549534.tabs.0.elements.0.title', 'null'),
('volumes.8d814e64-e1b1-46c3-a3db-506877a68155.fieldLayouts.9f2af6e5-1914-449c-9ff5-c8bafb549534.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\TitleField\"'),
('volumes.8d814e64-e1b1-46c3-a3db-506877a68155.fieldLayouts.9f2af6e5-1914-449c-9ff5-c8bafb549534.tabs.0.elements.0.warning', 'null'),
('volumes.8d814e64-e1b1-46c3-a3db-506877a68155.fieldLayouts.9f2af6e5-1914-449c-9ff5-c8bafb549534.tabs.0.elements.0.width', '100'),
('volumes.8d814e64-e1b1-46c3-a3db-506877a68155.fieldLayouts.9f2af6e5-1914-449c-9ff5-c8bafb549534.tabs.0.name', '\"Content\"'),
('volumes.8d814e64-e1b1-46c3-a3db-506877a68155.fieldLayouts.9f2af6e5-1914-449c-9ff5-c8bafb549534.tabs.0.sortOrder', '1'),
('volumes.8d814e64-e1b1-46c3-a3db-506877a68155.handle', '\"contact\"'),
('volumes.8d814e64-e1b1-46c3-a3db-506877a68155.hasUrls', 'true'),
('volumes.8d814e64-e1b1-46c3-a3db-506877a68155.name', '\"Contact\"'),
('volumes.8d814e64-e1b1-46c3-a3db-506877a68155.settings.path', '\"@mediaBasePath/contact/map\"'),
('volumes.8d814e64-e1b1-46c3-a3db-506877a68155.sortOrder', '4'),
('volumes.8d814e64-e1b1-46c3-a3db-506877a68155.type', '\"craft\\\\volumes\\\\Local\"'),
('volumes.8d814e64-e1b1-46c3-a3db-506877a68155.url', '\"@mediaBaseUrl/contact/map\"'),
('volumes.97d6d9f3-1a93-443a-bfa5-69cdc7328c00.fieldLayouts.b3abcaa5-0ce5-46a4-83c7-3100f6f048fb.tabs.0.elements.0.autocapitalize', 'true'),
('volumes.97d6d9f3-1a93-443a-bfa5-69cdc7328c00.fieldLayouts.b3abcaa5-0ce5-46a4-83c7-3100f6f048fb.tabs.0.elements.0.autocomplete', 'false'),
('volumes.97d6d9f3-1a93-443a-bfa5-69cdc7328c00.fieldLayouts.b3abcaa5-0ce5-46a4-83c7-3100f6f048fb.tabs.0.elements.0.autocorrect', 'true'),
('volumes.97d6d9f3-1a93-443a-bfa5-69cdc7328c00.fieldLayouts.b3abcaa5-0ce5-46a4-83c7-3100f6f048fb.tabs.0.elements.0.class', 'null'),
('volumes.97d6d9f3-1a93-443a-bfa5-69cdc7328c00.fieldLayouts.b3abcaa5-0ce5-46a4-83c7-3100f6f048fb.tabs.0.elements.0.disabled', 'false'),
('volumes.97d6d9f3-1a93-443a-bfa5-69cdc7328c00.fieldLayouts.b3abcaa5-0ce5-46a4-83c7-3100f6f048fb.tabs.0.elements.0.id', 'null'),
('volumes.97d6d9f3-1a93-443a-bfa5-69cdc7328c00.fieldLayouts.b3abcaa5-0ce5-46a4-83c7-3100f6f048fb.tabs.0.elements.0.instructions', 'null'),
('volumes.97d6d9f3-1a93-443a-bfa5-69cdc7328c00.fieldLayouts.b3abcaa5-0ce5-46a4-83c7-3100f6f048fb.tabs.0.elements.0.label', 'null'),
('volumes.97d6d9f3-1a93-443a-bfa5-69cdc7328c00.fieldLayouts.b3abcaa5-0ce5-46a4-83c7-3100f6f048fb.tabs.0.elements.0.max', 'null'),
('volumes.97d6d9f3-1a93-443a-bfa5-69cdc7328c00.fieldLayouts.b3abcaa5-0ce5-46a4-83c7-3100f6f048fb.tabs.0.elements.0.min', 'null'),
('volumes.97d6d9f3-1a93-443a-bfa5-69cdc7328c00.fieldLayouts.b3abcaa5-0ce5-46a4-83c7-3100f6f048fb.tabs.0.elements.0.name', 'null'),
('volumes.97d6d9f3-1a93-443a-bfa5-69cdc7328c00.fieldLayouts.b3abcaa5-0ce5-46a4-83c7-3100f6f048fb.tabs.0.elements.0.orientation', 'null'),
('volumes.97d6d9f3-1a93-443a-bfa5-69cdc7328c00.fieldLayouts.b3abcaa5-0ce5-46a4-83c7-3100f6f048fb.tabs.0.elements.0.placeholder', 'null'),
('volumes.97d6d9f3-1a93-443a-bfa5-69cdc7328c00.fieldLayouts.b3abcaa5-0ce5-46a4-83c7-3100f6f048fb.tabs.0.elements.0.readonly', 'false'),
('volumes.97d6d9f3-1a93-443a-bfa5-69cdc7328c00.fieldLayouts.b3abcaa5-0ce5-46a4-83c7-3100f6f048fb.tabs.0.elements.0.requirable', 'false'),
('volumes.97d6d9f3-1a93-443a-bfa5-69cdc7328c00.fieldLayouts.b3abcaa5-0ce5-46a4-83c7-3100f6f048fb.tabs.0.elements.0.required', 'false'),
('volumes.97d6d9f3-1a93-443a-bfa5-69cdc7328c00.fieldLayouts.b3abcaa5-0ce5-46a4-83c7-3100f6f048fb.tabs.0.elements.0.size', 'null'),
('volumes.97d6d9f3-1a93-443a-bfa5-69cdc7328c00.fieldLayouts.b3abcaa5-0ce5-46a4-83c7-3100f6f048fb.tabs.0.elements.0.step', 'null'),
('volumes.97d6d9f3-1a93-443a-bfa5-69cdc7328c00.fieldLayouts.b3abcaa5-0ce5-46a4-83c7-3100f6f048fb.tabs.0.elements.0.tip', 'null'),
('volumes.97d6d9f3-1a93-443a-bfa5-69cdc7328c00.fieldLayouts.b3abcaa5-0ce5-46a4-83c7-3100f6f048fb.tabs.0.elements.0.title', 'null'),
('volumes.97d6d9f3-1a93-443a-bfa5-69cdc7328c00.fieldLayouts.b3abcaa5-0ce5-46a4-83c7-3100f6f048fb.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\TitleField\"'),
('volumes.97d6d9f3-1a93-443a-bfa5-69cdc7328c00.fieldLayouts.b3abcaa5-0ce5-46a4-83c7-3100f6f048fb.tabs.0.elements.0.warning', 'null'),
('volumes.97d6d9f3-1a93-443a-bfa5-69cdc7328c00.fieldLayouts.b3abcaa5-0ce5-46a4-83c7-3100f6f048fb.tabs.0.elements.0.width', '100'),
('volumes.97d6d9f3-1a93-443a-bfa5-69cdc7328c00.fieldLayouts.b3abcaa5-0ce5-46a4-83c7-3100f6f048fb.tabs.0.name', '\"Content\"'),
('volumes.97d6d9f3-1a93-443a-bfa5-69cdc7328c00.fieldLayouts.b3abcaa5-0ce5-46a4-83c7-3100f6f048fb.tabs.0.sortOrder', '1'),
('volumes.97d6d9f3-1a93-443a-bfa5-69cdc7328c00.handle', '\"covid\"'),
('volumes.97d6d9f3-1a93-443a-bfa5-69cdc7328c00.hasUrls', 'true'),
('volumes.97d6d9f3-1a93-443a-bfa5-69cdc7328c00.name', '\"Covid\"'),
('volumes.97d6d9f3-1a93-443a-bfa5-69cdc7328c00.settings.path', '\"@mediaBasePath/covid\"'),
('volumes.97d6d9f3-1a93-443a-bfa5-69cdc7328c00.sortOrder', '5'),
('volumes.97d6d9f3-1a93-443a-bfa5-69cdc7328c00.type', '\"craft\\\\volumes\\\\Local\"'),
('volumes.97d6d9f3-1a93-443a-bfa5-69cdc7328c00.url', '\"@mediaBaseUrl/covid\"'),
('volumes.d3b7c6d6-9fb2-42dd-9d23-c94ba8e9e97e.fieldLayouts.cecee39f-2155-4b41-af3c-3d11fca16edf.tabs.0.elements.0.autocapitalize', 'true'),
('volumes.d3b7c6d6-9fb2-42dd-9d23-c94ba8e9e97e.fieldLayouts.cecee39f-2155-4b41-af3c-3d11fca16edf.tabs.0.elements.0.autocomplete', 'false'),
('volumes.d3b7c6d6-9fb2-42dd-9d23-c94ba8e9e97e.fieldLayouts.cecee39f-2155-4b41-af3c-3d11fca16edf.tabs.0.elements.0.autocorrect', 'true'),
('volumes.d3b7c6d6-9fb2-42dd-9d23-c94ba8e9e97e.fieldLayouts.cecee39f-2155-4b41-af3c-3d11fca16edf.tabs.0.elements.0.class', 'null'),
('volumes.d3b7c6d6-9fb2-42dd-9d23-c94ba8e9e97e.fieldLayouts.cecee39f-2155-4b41-af3c-3d11fca16edf.tabs.0.elements.0.disabled', 'false'),
('volumes.d3b7c6d6-9fb2-42dd-9d23-c94ba8e9e97e.fieldLayouts.cecee39f-2155-4b41-af3c-3d11fca16edf.tabs.0.elements.0.id', 'null'),
('volumes.d3b7c6d6-9fb2-42dd-9d23-c94ba8e9e97e.fieldLayouts.cecee39f-2155-4b41-af3c-3d11fca16edf.tabs.0.elements.0.instructions', 'null'),
('volumes.d3b7c6d6-9fb2-42dd-9d23-c94ba8e9e97e.fieldLayouts.cecee39f-2155-4b41-af3c-3d11fca16edf.tabs.0.elements.0.label', 'null'),
('volumes.d3b7c6d6-9fb2-42dd-9d23-c94ba8e9e97e.fieldLayouts.cecee39f-2155-4b41-af3c-3d11fca16edf.tabs.0.elements.0.max', 'null'),
('volumes.d3b7c6d6-9fb2-42dd-9d23-c94ba8e9e97e.fieldLayouts.cecee39f-2155-4b41-af3c-3d11fca16edf.tabs.0.elements.0.min', 'null'),
('volumes.d3b7c6d6-9fb2-42dd-9d23-c94ba8e9e97e.fieldLayouts.cecee39f-2155-4b41-af3c-3d11fca16edf.tabs.0.elements.0.name', 'null'),
('volumes.d3b7c6d6-9fb2-42dd-9d23-c94ba8e9e97e.fieldLayouts.cecee39f-2155-4b41-af3c-3d11fca16edf.tabs.0.elements.0.orientation', 'null'),
('volumes.d3b7c6d6-9fb2-42dd-9d23-c94ba8e9e97e.fieldLayouts.cecee39f-2155-4b41-af3c-3d11fca16edf.tabs.0.elements.0.placeholder', 'null'),
('volumes.d3b7c6d6-9fb2-42dd-9d23-c94ba8e9e97e.fieldLayouts.cecee39f-2155-4b41-af3c-3d11fca16edf.tabs.0.elements.0.readonly', 'false'),
('volumes.d3b7c6d6-9fb2-42dd-9d23-c94ba8e9e97e.fieldLayouts.cecee39f-2155-4b41-af3c-3d11fca16edf.tabs.0.elements.0.requirable', 'false'),
('volumes.d3b7c6d6-9fb2-42dd-9d23-c94ba8e9e97e.fieldLayouts.cecee39f-2155-4b41-af3c-3d11fca16edf.tabs.0.elements.0.required', 'false'),
('volumes.d3b7c6d6-9fb2-42dd-9d23-c94ba8e9e97e.fieldLayouts.cecee39f-2155-4b41-af3c-3d11fca16edf.tabs.0.elements.0.size', 'null'),
('volumes.d3b7c6d6-9fb2-42dd-9d23-c94ba8e9e97e.fieldLayouts.cecee39f-2155-4b41-af3c-3d11fca16edf.tabs.0.elements.0.step', 'null'),
('volumes.d3b7c6d6-9fb2-42dd-9d23-c94ba8e9e97e.fieldLayouts.cecee39f-2155-4b41-af3c-3d11fca16edf.tabs.0.elements.0.tip', 'null'),
('volumes.d3b7c6d6-9fb2-42dd-9d23-c94ba8e9e97e.fieldLayouts.cecee39f-2155-4b41-af3c-3d11fca16edf.tabs.0.elements.0.title', 'null'),
('volumes.d3b7c6d6-9fb2-42dd-9d23-c94ba8e9e97e.fieldLayouts.cecee39f-2155-4b41-af3c-3d11fca16edf.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\TitleField\"'),
('volumes.d3b7c6d6-9fb2-42dd-9d23-c94ba8e9e97e.fieldLayouts.cecee39f-2155-4b41-af3c-3d11fca16edf.tabs.0.elements.0.warning', 'null'),
('volumes.d3b7c6d6-9fb2-42dd-9d23-c94ba8e9e97e.fieldLayouts.cecee39f-2155-4b41-af3c-3d11fca16edf.tabs.0.elements.0.width', '100'),
('volumes.d3b7c6d6-9fb2-42dd-9d23-c94ba8e9e97e.fieldLayouts.cecee39f-2155-4b41-af3c-3d11fca16edf.tabs.0.name', '\"Content\"'),
('volumes.d3b7c6d6-9fb2-42dd-9d23-c94ba8e9e97e.fieldLayouts.cecee39f-2155-4b41-af3c-3d11fca16edf.tabs.0.sortOrder', '1'),
('volumes.d3b7c6d6-9fb2-42dd-9d23-c94ba8e9e97e.handle', '\"aboutBanner\"'),
('volumes.d3b7c6d6-9fb2-42dd-9d23-c94ba8e9e97e.hasUrls', 'true'),
('volumes.d3b7c6d6-9fb2-42dd-9d23-c94ba8e9e97e.name', '\"About Banner\"'),
('volumes.d3b7c6d6-9fb2-42dd-9d23-c94ba8e9e97e.settings.path', '\"@mediaBasePath/about/banner\"'),
('volumes.d3b7c6d6-9fb2-42dd-9d23-c94ba8e9e97e.sortOrder', '2'),
('volumes.d3b7c6d6-9fb2-42dd-9d23-c94ba8e9e97e.type', '\"craft\\\\volumes\\\\Local\"'),
('volumes.d3b7c6d6-9fb2-42dd-9d23-c94ba8e9e97e.url', '\"@mediaBaseUrl/about/banner\"');

-- --------------------------------------------------------

--
-- Table structure for table `queue`
--

CREATE TABLE `queue` (
  `id` int(11) NOT NULL,
  `channel` varchar(255) NOT NULL DEFAULT 'queue',
  `job` longblob NOT NULL,
  `description` text,
  `timePushed` int(11) NOT NULL,
  `ttr` int(11) NOT NULL,
  `delay` int(11) NOT NULL DEFAULT '0',
  `priority` int(11) UNSIGNED NOT NULL DEFAULT '1024',
  `dateReserved` datetime DEFAULT NULL,
  `timeUpdated` int(11) DEFAULT NULL,
  `progress` smallint(6) NOT NULL DEFAULT '0',
  `progressLabel` varchar(255) DEFAULT NULL,
  `attempt` int(11) DEFAULT NULL,
  `fail` tinyint(1) DEFAULT '0',
  `dateFailed` datetime DEFAULT NULL,
  `error` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `relations`
--

CREATE TABLE `relations` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `sourceSiteId` int(11) DEFAULT NULL,
  `targetId` int(11) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `relations`
--

INSERT INTO `relations` (`id`, `fieldId`, `sourceId`, `sourceSiteId`, `targetId`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 39, 45, NULL, 24, 1, '2020-09-01 17:21:48', '2020-09-01 17:21:48', 'e99a310f-8335-4339-920d-3b700f872650'),
(2, 39, 46, NULL, 19, 1, '2020-09-01 17:21:48', '2020-09-01 17:21:48', '93571a40-046b-4739-aba4-91b5d597eab3'),
(3, 39, 47, NULL, 23, 1, '2020-09-01 17:21:48', '2020-09-01 17:21:48', '34f12312-d310-4dd9-a722-657251b298bc'),
(4, 39, 48, NULL, 44, 1, '2020-09-01 17:21:48', '2020-09-01 17:21:48', '8b4cb429-fed0-4d5c-b8c8-ba51972cb309'),
(5, 39, 49, NULL, 44, 1, '2020-09-01 17:21:48', '2020-09-01 17:21:48', '022a08ef-b4ee-4202-bc60-92a9317fb7a6'),
(6, 39, 50, NULL, 20, 1, '2020-09-01 17:21:48', '2020-09-01 17:21:48', '697ba01b-927a-4e2b-afe5-97846fc2bdf8'),
(7, 39, 51, NULL, 44, 1, '2020-09-01 17:21:48', '2020-09-01 17:21:48', '92884a7d-4eb6-45d7-b901-12abf8f8670b'),
(8, 39, 52, NULL, 44, 1, '2020-09-01 17:21:48', '2020-09-01 17:21:48', 'cc9ea8df-d426-445d-8036-06403d69b046'),
(9, 39, 53, NULL, 44, 1, '2020-09-01 17:21:48', '2020-09-01 17:21:48', 'c27da0f6-2de2-4da7-8cbd-86300f5bba36'),
(10, 39, 54, NULL, 44, 1, '2020-09-01 17:21:48', '2020-09-01 17:21:48', '113d3d92-4e5b-4079-97aa-2ce01bb8552b'),
(11, 39, 56, NULL, 24, 1, '2020-09-01 17:21:48', '2020-09-01 17:21:48', 'a5b02b78-955e-4d97-adee-5f665b40518e'),
(12, 39, 57, NULL, 19, 1, '2020-09-01 17:21:48', '2020-09-01 17:21:48', '9cb50dd6-d5ef-4008-924b-49de62578bb7'),
(13, 39, 58, NULL, 23, 1, '2020-09-01 17:21:48', '2020-09-01 17:21:48', '6a2f05bd-38de-4d2f-a859-9825e82bbae8'),
(14, 39, 59, NULL, 44, 1, '2020-09-01 17:21:48', '2020-09-01 17:21:48', '29b46ce7-3fa5-4c18-83f7-5a3321ac2e26'),
(15, 39, 60, NULL, 44, 1, '2020-09-01 17:21:48', '2020-09-01 17:21:48', 'e1f86464-dae6-4611-b7d1-e547a7199b93'),
(16, 39, 61, NULL, 20, 1, '2020-09-01 17:21:48', '2020-09-01 17:21:48', '110ca24a-2f7f-4be8-a6ae-28bdb217f8dc'),
(17, 39, 62, NULL, 44, 1, '2020-09-01 17:21:48', '2020-09-01 17:21:48', 'd3ccb28b-c3f4-4b20-a35f-eeb46d1d7617'),
(18, 39, 63, NULL, 44, 1, '2020-09-01 17:21:48', '2020-09-01 17:21:48', '46dcc7c2-eb78-4feb-a3cb-27eb9aded2a3'),
(19, 39, 64, NULL, 44, 1, '2020-09-01 17:21:48', '2020-09-01 17:21:48', '314f553a-2bba-450e-95c1-beae2fb99fae'),
(20, 39, 65, NULL, 44, 1, '2020-09-01 17:21:48', '2020-09-01 17:21:48', 'a8362a88-963e-4f20-8c22-5c458e1ed653'),
(21, 39, 66, NULL, 44, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '7f4c00ed-a7cf-4b51-a1e9-45231e88d6a9'),
(22, 39, 67, NULL, 44, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '1ea4bc84-ddaf-43ec-848d-b7a74fcace03'),
(23, 39, 68, NULL, 22, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '8889b0f2-84e8-4cbf-8b58-ed1321276c71'),
(24, 39, 69, NULL, 26, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '5f3e8362-9934-4bb7-82a8-92662e39d0ff'),
(25, 39, 70, NULL, 44, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '3f2630df-b562-4a14-84df-0e8a842e5aba'),
(26, 39, 71, NULL, 44, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', 'df0b77cf-30ec-415d-a16c-6d40212fc89d'),
(27, 39, 72, NULL, 44, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '89d19d32-d610-47ee-9ea9-3af449120f6e'),
(28, 39, 73, NULL, 44, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '2fd80d5b-0b45-4077-865f-56b3b401c3b0'),
(29, 39, 74, NULL, 44, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '01fe8065-d346-41b3-bf73-2e33c992ab11'),
(30, 39, 75, NULL, 25, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', 'df0d55cf-3034-485f-aaf5-1d688aacec11'),
(31, 39, 76, NULL, 21, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '737841fd-f1b1-4b21-979d-bc72b884902b'),
(32, 39, 77, NULL, 16, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', 'f613a3ab-c0a6-4032-afc9-2cd4011b4a76'),
(33, 39, 78, NULL, 15, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '1325b308-074d-4cb4-a4c1-f360e2c688ec'),
(34, 39, 79, NULL, 18, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', 'cde37914-37c5-42d4-9289-bf4060a0a92b'),
(35, 39, 81, NULL, 24, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', 'c004854b-959f-4f3c-bd4c-5cd336034a2b'),
(36, 39, 82, NULL, 19, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', 'f64b5867-cdd4-481f-bdd3-3096544d36c4'),
(37, 39, 83, NULL, 23, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '4132e213-7b19-4eb3-97b2-4ae95afaa263'),
(38, 39, 84, NULL, 44, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', 'e68220e8-12f5-4ada-b115-f0512413ba72'),
(39, 39, 85, NULL, 44, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', 'bb229ae8-b78e-42b8-9bfe-a0c75be5b948'),
(40, 39, 86, NULL, 20, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '3a5b0320-8582-4ffe-af8a-338834d74b97'),
(41, 39, 87, NULL, 44, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', 'ca10daef-9c45-4078-a916-9a586580bad3'),
(42, 39, 88, NULL, 44, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', 'b9626bfd-3103-4af3-8531-43ae07b24761'),
(43, 39, 89, NULL, 44, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '8fa0a595-6b47-48c3-93ee-66dd001de398'),
(44, 39, 90, NULL, 44, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '69fc47ed-c916-4cac-a9be-41f0aa29eb81'),
(45, 39, 91, NULL, 44, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '7d2ef5af-b5da-4184-a3e3-c06bfb9b7e5b'),
(46, 39, 92, NULL, 44, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '8b1917d9-6262-48bf-8d1a-1de8b1d0ef2a'),
(47, 39, 93, NULL, 22, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '9f357919-3808-4aec-9464-6a30168fda2c'),
(48, 39, 94, NULL, 26, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', 'fea5bb08-9a5e-46d1-9c34-5ec95b6c22bb'),
(49, 39, 95, NULL, 44, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '50da2821-cfc5-485b-95bd-0521f84981a4'),
(50, 39, 96, NULL, 44, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '10eedf4c-3186-48de-bea5-c189796a6beb'),
(51, 39, 97, NULL, 44, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', 'c6188d42-fe92-4d87-a64a-9335fdebeeae'),
(52, 39, 98, NULL, 44, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '3d15ba98-7542-44ea-8370-c790a57f36a9'),
(53, 39, 99, NULL, 44, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', 'b2400869-ae40-481d-be73-bf4f1fe3dac6'),
(54, 39, 100, NULL, 25, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '4c909539-7934-42e8-a7e5-3902c09effa4'),
(55, 39, 101, NULL, 21, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', 'b225ad92-ad6c-4f3a-ae33-8c0afa429eea'),
(56, 39, 102, NULL, 16, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', 'b35cba02-0359-4db0-bed9-e4259f81c30c'),
(57, 39, 103, NULL, 15, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '3e02ea99-9547-4425-bc08-20c0d486d319'),
(58, 39, 104, NULL, 18, 1, '2020-09-01 17:29:43', '2020-09-01 17:29:43', '9c729578-8d3f-4073-b267-0dcb8afd5cfa'),
(59, 10, 9, NULL, 118, 1, '2020-09-01 18:42:23', '2020-09-01 18:42:23', '3d5ee549-9dbf-4dbf-92a5-108a41f18e80'),
(60, 10, 119, NULL, 118, 1, '2020-09-01 18:42:23', '2020-09-01 18:42:23', 'bc3fdf11-3ece-4814-8ec1-dc2892c9b7ad'),
(61, 10, 120, NULL, 118, 1, '2020-09-01 18:47:41', '2020-09-01 18:47:41', 'b6d44989-4089-4fd0-bde0-af30f39b354f'),
(62, 10, 121, NULL, 118, 1, '2020-09-01 18:49:36', '2020-09-01 18:49:36', '83b6adad-294c-4047-8e05-0d3202458c7c'),
(63, 10, 122, NULL, 118, 1, '2020-09-01 18:52:37', '2020-09-01 18:52:37', '5c28d71b-4aaf-4047-9be2-046234e4c0a6'),
(64, 10, 123, NULL, 118, 1, '2020-09-01 18:52:53', '2020-09-01 18:52:53', '6a897654-1d84-45ef-84e5-cba62ac785d8'),
(65, 10, 124, NULL, 118, 1, '2020-09-01 18:53:47', '2020-09-01 18:53:47', 'd2cc6239-a8aa-4bfd-b748-709fd93b5ed0'),
(66, 10, 125, NULL, 118, 1, '2020-09-01 18:58:19', '2020-09-01 18:58:19', '3781f62a-e8b9-4244-98f0-cbf193272d0e'),
(67, 10, 126, NULL, 118, 1, '2020-09-01 19:00:16', '2020-09-01 19:00:16', 'd3f5bcf6-3e57-4b38-a2a1-7816be052dc5'),
(68, 27, 127, NULL, 34, 1, '2020-09-01 19:05:28', '2020-09-01 19:05:28', '3d02b82f-9d7a-4951-bd64-b9a0e6168858'),
(69, 27, 128, NULL, 35, 1, '2020-09-01 19:05:28', '2020-09-01 19:05:28', 'c990cd82-9419-47a2-a07f-7f1e0a0c37a2'),
(70, 27, 129, NULL, 36, 1, '2020-09-01 19:05:28', '2020-09-01 19:05:28', '127d5a79-7be1-4e68-bfac-b8ea219ecd6b'),
(71, 27, 130, NULL, 37, 1, '2020-09-01 19:05:28', '2020-09-01 19:05:28', 'fefd5e60-1c63-46c8-b034-4886b62b214b'),
(72, 27, 131, NULL, 38, 1, '2020-09-01 19:05:28', '2020-09-01 19:05:28', 'db9878a7-455d-40a7-9b21-e8337c8d4da4'),
(73, 27, 132, NULL, 39, 1, '2020-09-01 19:05:28', '2020-09-01 19:05:28', 'f9424c60-dd9c-4fb0-be2d-b4d671ce3171'),
(74, 27, 133, NULL, 40, 1, '2020-09-01 19:05:28', '2020-09-01 19:05:28', '0273f7fb-e424-45fa-b86d-f1d443d9c7d0'),
(75, 27, 135, NULL, 34, 1, '2020-09-01 19:05:28', '2020-09-01 19:05:28', '19a81971-4f2f-4c53-8673-b2aa2d63471f'),
(76, 27, 136, NULL, 35, 1, '2020-09-01 19:05:28', '2020-09-01 19:05:28', '3fedec35-9633-4134-bda6-b4b71b2557f2'),
(77, 27, 137, NULL, 36, 1, '2020-09-01 19:05:28', '2020-09-01 19:05:28', 'c801d868-ee02-4330-86b2-4e894ec21acd'),
(78, 27, 138, NULL, 37, 1, '2020-09-01 19:05:28', '2020-09-01 19:05:28', '3566c5e8-593f-46c9-865a-5552a9d077da'),
(79, 27, 139, NULL, 38, 1, '2020-09-01 19:05:28', '2020-09-01 19:05:28', 'ff888a10-48db-4f3e-8e91-093941e00e8a'),
(80, 27, 140, NULL, 39, 1, '2020-09-01 19:05:28', '2020-09-01 19:05:28', '75975137-1626-4add-8cee-1061851b33cf'),
(81, 27, 141, NULL, 40, 1, '2020-09-01 19:05:28', '2020-09-01 19:05:28', '087b7277-69a8-4bd3-8a6f-baeea3831e2b'),
(82, 27, 143, NULL, 34, 1, '2020-09-01 19:08:53', '2020-09-01 19:08:53', 'ae6a7f32-967d-41ac-a7b0-ae1a748e82cc'),
(83, 27, 144, NULL, 35, 1, '2020-09-01 19:08:53', '2020-09-01 19:08:53', '1b3cc590-aea2-4695-8e75-9a6f4e33614d'),
(84, 27, 145, NULL, 36, 1, '2020-09-01 19:08:53', '2020-09-01 19:08:53', 'ed10b14e-87d4-4448-a09f-52d08653ad01'),
(85, 27, 146, NULL, 37, 1, '2020-09-01 19:08:53', '2020-09-01 19:08:53', 'ba41387f-d175-40b2-ab44-37a28a24ebf8'),
(86, 27, 147, NULL, 38, 1, '2020-09-01 19:08:53', '2020-09-01 19:08:53', 'a2003ce9-2ef5-49eb-9500-49ce7e6c2697'),
(87, 27, 148, NULL, 39, 1, '2020-09-01 19:08:53', '2020-09-01 19:08:53', 'e3ada574-a1a1-4feb-ad70-50610639be4c'),
(88, 27, 149, NULL, 40, 1, '2020-09-01 19:08:53', '2020-09-01 19:08:53', 'dfbb37e3-4c69-4370-a8c0-cb77a0dda68e');

-- --------------------------------------------------------

--
-- Table structure for table `resourcepaths`
--

CREATE TABLE `resourcepaths` (
  `hash` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resourcepaths`
--

INSERT INTO `resourcepaths` (`hash`, `path`) VALUES
('131dc252', '@craft/web/assets/fieldsettings/dist'),
('15d338a8', '@app/web/assets/edituser/dist'),
('16967515', '@lib/iframe-resizer'),
('1a354a02', '@lib/fileupload'),
('1b759c35', '@verbb/expandedsingles/resources/dist'),
('1d2a698', '@lib/xregexp'),
('20f1dd3', '@lib/selectize'),
('23984c2b', '@app/web/assets/admintable/dist'),
('2787bffd', '@verbb/supertable/resources/dist'),
('2927e53a', '@craft/web/assets/updater/dist'),
('29f1f3d0', '@app/web/assets/dashboard/dist'),
('2a1ac3b3', '@lib/vue'),
('2a29b3ea', '@app/web/assets/admintable/dist'),
('2a83a815', '@lib/fabric'),
('2dd4bfc', '@lib/picturefill'),
('2ecd69c5', '@app/web/assets/clearcaches/dist'),
('356cd725', '@craft/redactor/assets/redactor/dist'),
('35a90e50', '@app/web/assets/editsection/dist'),
('360c3ca1', '@app/web/assets/updates/dist'),
('368b86b0', '@app/web/assets/cp/dist'),
('379c012c', '@lib/timepicker'),
('3c18f191', '@app/web/assets/editsection/dist'),
('3f96c568', '@app/web/assets/plugins/dist'),
('3fc57c2b', '@lib/garnishjs'),
('420389a', '@craft/web/assets/cp/dist'),
('42150758', '@app/web/assets/dbbackup/dist'),
('423a0ebe', '@lib/iframe-resizer'),
('438fbb2a', '@lib/velocity'),
('4728ce68', '@lib/fileupload'),
('4b90e1f5', '@app/web/assets/sites/dist'),
('4e9931a9', '@lib/fileupload'),
('5165efc7', '@lib/d3'),
('51d50c95', '@lib/jquery-touch-events'),
('52004c57', '@bower/jquery/dist'),
('52d9684f', '@app/web/assets/matrix/dist'),
('5353061c', '@lib/prismjs'),
('54f0c421', '@app/web/assets/utilities/dist'),
('56713057', '@lib/picturefill'),
('56a36678', '@lib/selectize'),
('56f8a826', '@craft/web/assets/tablesettings/dist'),
('579773e', '@lib/jquery-touch-events'),
('5864f354', '@lib/jquery-touch-events'),
('58d41006', '@lib/d3'),
('5ccf22f2', '@lib/xregexp'),
('5dfb4a7b', '@app/web/assets/editentry/dist'),
('5ed20050', '@craft/web/assets/utilities/dist'),
('5fa814c2', '@lib/jquery.payment'),
('5fc0cf96', '@lib/picturefill'),
('604a0d0b', '@verbb/base/resources/dist'),
('610575fb', '@app/web/assets/editsection/dist'),
('62a0470a', '@app/web/assets/updates/dist'),
('62d8f841', '@lib/garnishjs'),
('6b11b8cb', '@app/web/assets/updates/dist'),
('6b690780', '@lib/garnishjs'),
('738b59f4', '@app/web/assets/fields/dist'),
('74ec77ba', '@app/web/assets/dashboard/dist'),
('77343780', '@app/web/assets/admintable/dist'),
('779e2c7f', '@lib/fabric'),
('77c4e286', '@craft/web/assets/admintable/dist'),
('7a3aa635', '@app/web/assets/fields/dist'),
('7cc19a7e', '@app/web/assets/deprecationerrors/dist'),
('7d5d887b', '@app/web/assets/dashboard/dist'),
('7d90e7a2', '@lib/element-resize-detector'),
('7e2fd3be', '@lib/fabric'),
('7eea1a53', '@craft/web/assets/fields/dist'),
('7f160c6', '@lib/axios'),
('80b819de', '@lib/xregexp'),
('83df2fee', '@lib/jquery.payment'),
('84430e2a', '@app/web/assets/updater/dist'),
('8595dfb6', '@app/web/assets/findreplace/dist'),
('85fd6008', '@lib/jquery-ui'),
('8635959', '@lib/xregexp'),
('8641a0b8', '@craft/web/assets/assetindexes/dist'),
('869bdf80', '@lib/axios'),
('8887ff0d', '@app/web/assets/utilities/dist'),
('8903cfc5', '@app/web/assets/generalsettings/dist'),
('8ad45d54', '@lib/selectize'),
('8c4c9fc9', '@lib/jquery-ui'),
('8df2f1eb', '@app/web/assets/updater/dist'),
('8e77777b', '@bower/jquery/dist'),
('8f2a2041', '@lib/axios'),
('90e4808d', '@app/web/assets/fieldsettings/dist'),
('93350f15', '@app/web/assets/craftsupport/dist'),
('93e7f622', '@app/web/assets/feed/dist'),
('94165c15', '@app/web/assets/updateswidget/dist'),
('9a84f0d4', '@app/web/assets/craftsupport/dist'),
('9da7a3d4', '@app/web/assets/updateswidget/dist'),
('9ff88006', '@lib/velocity'),
('a060fcbc', '@craft/redactor/assets/field/dist'),
('a1e7dc8e', '@lib/element-resize-detector'),
('a2c18334', '@lib/vue'),
('a31de1ba', '@app/web/assets/recententries/dist'),
('a5688b1c', '@app/web/assets/pluginstore/dist'),
('aaac1e7b', '@app/web/assets/recententries/dist'),
('ab430cac', '@app/web/assets/admintable/dist'),
('ab707cf5', '@lib/vue'),
('ac86b8af', '@app/web/assets/assetindexes/dist'),
('b3df2c88', '@app/web/assets/login/dist'),
('b7e139f6', '@app/web/assets/cp/dist'),
('ba6ed349', '@app/web/assets/login/dist'),
('bbee212', '@lib/selectize'),
('be50c637', '@app/web/assets/cp/dist'),
('c2e5046c', '@lib/velocity'),
('c642712e', '@lib/fileupload'),
('c74b8d89', '@app/web/assets/feed/dist'),
('c786bad', '@lib/d3'),
('c79974be', '@app/web/assets/craftsupport/dist'),
('c90bd87f', '@app/web/assets/updateswidget/dist'),
('cae14e39', '@lib/iframe-resizer'),
('cb54fbad', '@lib/velocity'),
('cefa7248', '@app/web/assets/feed/dist'),
('d00f5081', '@lib/d3'),
('d1511ba3', '@lib/jquery-ui'),
('d26208f', '@lib/jquery-ui'),
('d36af311', '@bower/jquery/dist'),
('d501eaf9', '@app/web/assets/tablesettings/dist'),
('d59a7b67', '@app/web/assets/utilities/dist'),
('d5b08e7', '@craft/web/assets/pluginstore/dist'),
('d7735445', '@lib/jquery.payment'),
('d90e4c12', '@lib/jquery-touch-events'),
('d95e8a40', '@app/web/assets/updater/dist'),
('dadb0cd0', '@bower/jquery/dist'),
('db865bea', '@lib/axios'),
('dc2b84a6', '@app/web/assets/utilities/dist'),
('deaa70d0', '@lib/picturefill'),
('dec2ab84', '@lib/jquery.payment'),
('e06eefe1', '@craft/web/assets/matrixsettings/dist'),
('e3b24707', '@lib/garnishjs'),
('ea7b078d', '@app/web/assets/updates/dist'),
('eafcbd9c', '@app/web/assets/cp/dist'),
('eec2a8e2', '@app/web/assets/login/dist'),
('f1c4f0b7', '@app/web/assets/pluginstore/dist'),
('f2e1e6b2', '@app/web/assets/fields/dist'),
('f54ba725', '@lib/element-resize-detector'),
('f66df89f', '@lib/vue'),
('f681d9e6', '@app/web/assets/matrixsettings/dist'),
('f6f49339', '@lib/fabric'),
('f7b19a11', '@app/web/assets/recententries/dist'),
('fcfa58e4', '@lib/element-resize-detector');

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

CREATE TABLE `revisions` (
  `id` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `num` int(11) NOT NULL,
  `notes` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `revisions`
--

INSERT INTO `revisions` (`id`, `sourceId`, `creatorId`, `num`, `notes`) VALUES
(1, 2, 1, 1, NULL),
(2, 4, 1, 1, NULL),
(3, 6, 1, 1, NULL),
(4, 6, 1, 2, NULL),
(5, 9, 1, 1, NULL),
(6, 11, 1, 1, NULL),
(7, 13, 1, 1, NULL),
(8, 2, 1, 2, NULL),
(9, 4, 1, 2, NULL),
(10, 4, 1, 3, NULL),
(11, 6, 1, 3, NULL),
(12, 9, 1, 2, NULL),
(13, 13, 1, 2, NULL),
(14, 11, 1, 2, NULL),
(15, 2, 1, 3, NULL),
(16, 2, 1, 4, NULL),
(17, 2, 1, 5, NULL),
(18, 4, 1, 4, NULL),
(19, 4, 1, 5, NULL),
(20, 6, 1, 4, NULL),
(21, 9, 1, 3, NULL),
(22, 9, 1, 4, NULL),
(23, 9, 1, 5, NULL),
(24, 9, 1, 6, NULL),
(25, 9, 1, 7, NULL),
(26, 9, 1, 8, NULL),
(27, 9, 1, 9, NULL),
(28, 9, 1, 10, NULL),
(29, 11, 1, 3, NULL),
(30, 11, 1, 4, NULL),
(31, 13, 1, 3, NULL),
(32, 6, 1, 5, NULL),
(33, 6, 1, 6, NULL),
(34, 6, 1, 7, NULL),
(35, 6, 1, 8, NULL),
(36, 6, 1, 9, NULL),
(37, 6, 1, 10, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `searchindex`
--

CREATE TABLE `searchindex` (
  `elementId` int(11) NOT NULL,
  `attribute` varchar(25) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `keywords` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `searchindex`
--

INSERT INTO `searchindex` (`elementId`, `attribute`, `fieldId`, `siteId`, `keywords`) VALUES
(1, 'username', 0, 1, ' admin hops '),
(1, 'lastname', 0, 1, ''),
(1, 'firstname', 0, 1, ''),
(2, 'title', 0, 1, ' home '),
(4, 'title', 0, 1, ' about '),
(6, 'title', 0, 1, ' faq '),
(118, 'filename', 0, 1, ' hopscotch map 0831 png '),
(9, 'slug', 0, 1, ' contact '),
(9, 'title', 0, 1, ' contact '),
(11, 'slug', 0, 1, ' covid 19 '),
(13, 'title', 0, 1, ' policy '),
(15, 'kind', 0, 1, ' image '),
(15, 'extension', 0, 1, ' png '),
(15, 'filename', 0, 1, ' exhibitions deep eddy ball pit png '),
(16, 'kind', 0, 1, ' image '),
(16, 'extension', 0, 1, ' png '),
(16, 'filename', 0, 1, ' exhibitions experiences over things png '),
(17, 'kind', 0, 1, ' image '),
(17, 'extension', 0, 1, ' png '),
(17, 'filename', 0, 1, ' exhibitions from the outside in png '),
(18, 'kind', 0, 1, ' image '),
(18, 'extension', 0, 1, ' png '),
(18, 'filename', 0, 1, ' exhibitions hope campaign png '),
(19, 'kind', 0, 1, ' image '),
(19, 'extension', 0, 1, ' png '),
(19, 'filename', 0, 1, ' exhibitions infinity boxes png '),
(20, 'kind', 0, 1, ' image '),
(20, 'extension', 0, 1, ' png '),
(20, 'filename', 0, 1, ' exhibitions lightlines png '),
(21, 'kind', 0, 1, ' image '),
(21, 'extension', 0, 1, ' png '),
(21, 'filename', 0, 1, ' exhibitions matrix png '),
(22, 'kind', 0, 1, ' image '),
(22, 'extension', 0, 1, ' png '),
(22, 'filename', 0, 1, ' exhibitions paint with rbg wall png '),
(23, 'kind', 0, 1, ' image '),
(23, 'extension', 0, 1, ' png '),
(23, 'filename', 0, 1, ' exhibitions rainbow cave png '),
(24, 'kind', 0, 1, ' image '),
(24, 'extension', 0, 1, ' png '),
(24, 'filename', 0, 1, ' exhibitions show it 2 me png '),
(25, 'kind', 0, 1, ' image '),
(25, 'extension', 0, 1, ' png '),
(25, 'filename', 0, 1, ' exhibitions spirits png '),
(26, 'kind', 0, 1, ' image '),
(26, 'extension', 0, 1, ' png '),
(26, 'filename', 0, 1, ' exhibitions thunder and lightnight png '),
(2, 'slug', 0, 1, ' home '),
(4, 'slug', 0, 1, ' about '),
(6, 'slug', 0, 1, ' faq '),
(127, 'slug', 0, 1, ''),
(13, 'slug', 0, 1, ' policy '),
(11, 'title', 0, 1, ' covid 19 '),
(15, 'slug', 0, 1, ''),
(15, 'title', 0, 1, ' exhibitions deep eddy ball pit '),
(16, 'slug', 0, 1, ''),
(16, 'title', 0, 1, ' exhibitions experiences over things '),
(17, 'slug', 0, 1, ''),
(17, 'title', 0, 1, ' exhibitions from the outside in '),
(18, 'slug', 0, 1, ''),
(18, 'title', 0, 1, ' exhibitions hope campaign '),
(19, 'slug', 0, 1, ''),
(19, 'title', 0, 1, ' exhibitions infinity boxes '),
(20, 'slug', 0, 1, ''),
(20, 'title', 0, 1, ' exhibitions lightlines '),
(21, 'slug', 0, 1, ''),
(21, 'title', 0, 1, ' exhibitions matrix '),
(22, 'slug', 0, 1, ''),
(22, 'title', 0, 1, ' exhibitions paint with rbg wall '),
(23, 'slug', 0, 1, ''),
(23, 'title', 0, 1, ' exhibitions rainbow cave '),
(24, 'slug', 0, 1, ''),
(24, 'title', 0, 1, ' exhibitions show it 2 me '),
(25, 'slug', 0, 1, ''),
(25, 'title', 0, 1, ' exhibitions spirits '),
(26, 'slug', 0, 1, ''),
(26, 'title', 0, 1, ' exhibitions thunder and lightnight '),
(34, 'filename', 0, 1, ' 1 svg '),
(34, 'extension', 0, 1, ' svg '),
(34, 'kind', 0, 1, ' image '),
(34, 'slug', 0, 1, ''),
(34, 'title', 0, 1, ' 1 '),
(35, 'filename', 0, 1, ' 2 svg '),
(35, 'extension', 0, 1, ' svg '),
(35, 'kind', 0, 1, ' image '),
(35, 'slug', 0, 1, ''),
(35, 'title', 0, 1, ' 2 '),
(36, 'filename', 0, 1, ' 3 svg '),
(36, 'extension', 0, 1, ' svg '),
(36, 'kind', 0, 1, ' image '),
(36, 'slug', 0, 1, ''),
(36, 'title', 0, 1, ' 3 '),
(37, 'filename', 0, 1, ' 4 svg '),
(37, 'extension', 0, 1, ' svg '),
(37, 'kind', 0, 1, ' image '),
(37, 'slug', 0, 1, ''),
(37, 'title', 0, 1, ' 4 '),
(38, 'filename', 0, 1, ' 5 svg '),
(38, 'extension', 0, 1, ' svg '),
(38, 'kind', 0, 1, ' image '),
(38, 'slug', 0, 1, ''),
(38, 'title', 0, 1, ' 5 '),
(39, 'filename', 0, 1, ' 6 svg '),
(39, 'extension', 0, 1, ' svg '),
(39, 'kind', 0, 1, ' image '),
(39, 'slug', 0, 1, ''),
(39, 'title', 0, 1, ' 6 '),
(40, 'filename', 0, 1, ' 7 svg '),
(40, 'extension', 0, 1, ' svg '),
(40, 'kind', 0, 1, ' image '),
(40, 'slug', 0, 1, ''),
(40, 'title', 0, 1, ' 7 '),
(1, 'fullname', 0, 1, ''),
(1, 'email', 0, 1, ' jsosa heyblackmagic com '),
(1, 'slug', 0, 1, ''),
(44, 'filename', 0, 1, ' comming soon png '),
(44, 'extension', 0, 1, ' png '),
(44, 'kind', 0, 1, ' image '),
(44, 'slug', 0, 1, ''),
(44, 'title', 0, 1, ' comming soon '),
(45, 'slug', 0, 1, ''),
(46, 'slug', 0, 1, ''),
(47, 'slug', 0, 1, ''),
(48, 'slug', 0, 1, ''),
(49, 'slug', 0, 1, ''),
(50, 'slug', 0, 1, ''),
(51, 'slug', 0, 1, ''),
(52, 'slug', 0, 1, ''),
(53, 'slug', 0, 1, ''),
(54, 'slug', 0, 1, ''),
(66, 'slug', 0, 1, ''),
(67, 'slug', 0, 1, ''),
(68, 'slug', 0, 1, ''),
(69, 'slug', 0, 1, ''),
(70, 'slug', 0, 1, ''),
(71, 'slug', 0, 1, ''),
(72, 'slug', 0, 1, ''),
(73, 'slug', 0, 1, ''),
(74, 'slug', 0, 1, ''),
(75, 'slug', 0, 1, ''),
(76, 'slug', 0, 1, ''),
(77, 'slug', 0, 1, ''),
(78, 'slug', 0, 1, ''),
(79, 'slug', 0, 1, ''),
(105, 'slug', 0, 1, ''),
(106, 'slug', 0, 1, ''),
(107, 'slug', 0, 1, ''),
(108, 'slug', 0, 1, ''),
(109, 'slug', 0, 1, ''),
(110, 'slug', 0, 1, ''),
(118, 'extension', 0, 1, ' png '),
(118, 'kind', 0, 1, ' image '),
(118, 'slug', 0, 1, ''),
(118, 'title', 0, 1, ' hopscotch map 0831 '),
(128, 'slug', 0, 1, ''),
(129, 'slug', 0, 1, ''),
(130, 'slug', 0, 1, ''),
(131, 'slug', 0, 1, ''),
(132, 'slug', 0, 1, ''),
(133, 'slug', 0, 1, ''),
(150, 'slug', 0, 1, ''),
(174, 'slug', 0, 1, ''),
(175, 'slug', 0, 1, ''),
(173, 'slug', 0, 1, ''),
(173, 'field', 47, 1, ' the basics '),
(173, 'field', 44, 1, ''),
(186, 'slug', 0, 1, ''),
(199, 'slug', 0, 1, ''),
(200, 'slug', 0, 1, ''),
(201, 'slug', 0, 1, ''),
(202, 'slug', 0, 1, ''),
(203, 'slug', 0, 1, ''),
(204, 'slug', 0, 1, ''),
(205, 'slug', 0, 1, ''),
(206, 'slug', 0, 1, ''),
(207, 'slug', 0, 1, ''),
(208, 'slug', 0, 1, ''),
(198, 'slug', 0, 1, ''),
(198, 'field', 47, 1, ' ticketing and admission '),
(198, 'field', 44, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `structureId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `type` enum('single','channel','structure') NOT NULL DEFAULT 'channel',
  `enableVersioning` tinyint(1) NOT NULL DEFAULT '0',
  `propagationMethod` varchar(255) NOT NULL DEFAULT 'all',
  `previewTargets` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `structureId`, `name`, `handle`, `type`, `enableVersioning`, `propagationMethod`, `previewTargets`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, NULL, 'Home', 'home', 'single', 1, 'all', NULL, '2020-07-27 14:09:40', '2020-07-27 14:09:40', NULL, 'eadb3e6b-cdf7-457f-9780-97d389f823ee'),
(2, NULL, 'About', 'about', 'single', 1, 'all', NULL, '2020-08-20 15:05:44', '2020-08-20 15:05:44', NULL, '34475136-40f1-4f7b-a942-4675600cf9b0'),
(3, NULL, 'FAQ', 'faq', 'single', 1, 'all', NULL, '2020-08-20 15:07:12', '2020-08-20 15:07:12', NULL, '067382e8-5a41-48c4-93eb-e1dd8b7abf98'),
(4, NULL, 'Contact', 'contact', 'single', 1, 'all', NULL, '2020-08-25 13:20:09', '2020-08-25 13:20:09', NULL, '30d5184b-2aff-4beb-bcfa-b55aa3579824'),
(5, NULL, 'Covid 19', 'covid19', 'single', 1, 'all', NULL, '2020-08-26 14:34:34', '2020-08-26 14:34:34', NULL, '3c305ecc-d28d-4900-a9ab-c6364f3d26c3'),
(6, NULL, 'Policy', 'policy', 'single', 1, 'all', NULL, '2020-08-27 13:11:27', '2020-08-27 13:11:27', NULL, '4c1f4924-dad4-48b2-82d6-4b12282af8f4');

-- --------------------------------------------------------

--
-- Table structure for table `sections_sites`
--

CREATE TABLE `sections_sites` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `uriFormat` text,
  `template` varchar(500) DEFAULT NULL,
  `enabledByDefault` tinyint(1) NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sections_sites`
--

INSERT INTO `sections_sites` (`id`, `sectionId`, `siteId`, `hasUrls`, `uriFormat`, `template`, `enabledByDefault`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, 1, '__home__', 'templates/home', 1, '2020-07-27 14:09:40', '2020-07-27 14:09:40', '46a37baa-cafe-430a-b2a7-cbb8d11d4bbe'),
(2, 2, 1, 1, 'about', 'templates/about', 1, '2020-08-20 15:05:44', '2020-08-20 15:05:44', '17a46d6d-9ad4-4a95-9e03-c3a4fb1e6dad'),
(3, 3, 1, 1, 'faq', 'templates/faq', 1, '2020-08-20 15:07:12', '2020-08-20 15:07:12', 'fe79fffc-9967-4a26-959e-1cda13d1c50e'),
(4, 4, 1, 1, 'contact', 'templates/contact', 1, '2020-08-25 13:20:09', '2020-08-25 13:20:09', 'dcbfef06-f9cd-49cb-bfaa-0c732c73e450'),
(5, 5, 1, 1, 'covid-19', 'templates/covid', 1, '2020-08-26 14:34:34', '2020-08-26 14:34:34', 'a34f4210-969b-426b-ae02-797db9c54dd5'),
(6, 6, 1, 1, 'policy', 'templates/policy', 1, '2020-08-27 13:11:27', '2020-08-27 13:11:27', '829defdf-1fe3-4335-86cd-caabbe5438e1');

-- --------------------------------------------------------

--
-- Table structure for table `sequences`
--

CREATE TABLE `sequences` (
  `name` varchar(255) NOT NULL,
  `next` int(11) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `token` char(100) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `userId`, `token`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'z9H7GrD3DBmiFUu8Oybij1QrxQ9-UIJdofCUTWpmdC-WsmTwsTM4wXMkhP2HuaI7JNpJkcu-mNNw2Ux7Bx_iyKtbQ2N9L7tVpNzd', '2020-07-27 13:15:30', '2020-07-27 13:15:34', '6f272801-7475-41e0-9e78-a8ac50eed0f9'),
(2, 1, 'yCOJC_fI9uDkk9sNLy2A-Jf-jdCNKi8swzundxfkFX_Kg2Yl2Wvxkf7Ng_-gpNs-ZkH0J30Es6hvlwe644mZHBzc9nssoMVNCS7V', '2020-07-27 14:09:19', '2020-07-27 14:09:41', 'e7e29d77-14f0-420c-bfc6-2880dd80e8d2'),
(4, 1, 't4xMuQQHjHNE7-bK4Q-rLEDp9HOzIFksE8wxn4tFljLDw21bcD8Jq9RHhvpixVOuIa1N3AeZ7tXZMbI5q2DrT_Z3tvMdcfOmVhtZ', '2020-08-20 14:55:54', '2020-08-20 15:05:45', 'aea76748-5625-4daa-a7a0-ead0e5495cfd'),
(5, 1, 'HZbTxKQRhD4gltxd7RkFdepVn8u8R7OCsyUL3d-Z18n_ByXX8fq_jwlPUxbQ8kW6fyNWNzuWVRmBWdPUplWXfewj6C3Zx9kh45NI', '2020-08-20 17:40:57', '2020-08-20 17:42:10', '31875367-9fdf-4082-ab6f-75a97c2417e4'),
(6, 1, 'LdcGeRR5ge6UAzILB9bV6nLXFYBJR91CZgj_z-A0k9ONMmF-g8vDXdC2a5-QUhvvI9dHPVR2o80dZXfp11rszlENtm_bYNzAxXVc', '2020-08-24 13:09:50', '2020-08-24 15:10:48', 'aa63f260-d27b-46ee-97a7-7c9a86dd277b'),
(7, 1, 'SfhBRoqgnJI7wGh0Rruy7HbI-BOyUIYm-VQZUXYamWGoDboOIsGv1Nn4B4CaLZ7npfjbqL_eRcB6auqeLcj097C9iMkaVziLuwca', '2020-08-24 13:09:55', '2020-08-24 13:10:03', '11fae4f6-cf72-409d-b416-cfddde5991f7'),
(9, 1, '-fXflMxyURazeLpYvRRY7a4w1K_Nf_RRL1zui7M2SjQxKe3Yq-QS-eKrhhKybbObEQi57BEQx5wx2M37eG_OuDG8GAoJwe_TdP_D', '2020-08-25 13:19:35', '2020-08-25 13:20:10', '954333b2-ea5e-4062-87e5-d710bfa205a2'),
(11, 1, 'o51XeAOHkBLmg8Nz_IYEiz-QSmZMJzsXNMvj8iyDZ4dQpAdnxxlfWncuN2I7fnSH0dpZGh1QEgwE7_F5iKbSWCa5siNtSriCgQ4u', '2020-08-26 14:33:44', '2020-08-26 15:33:19', 'b0daf7d7-f5a5-40eb-821e-8d2ab32463ab'),
(12, 1, 'cxB6FxDDRdMhvjvoLYFsUAdHQMec7tr21CmD05Aqfoc7x7eQbrQFd1hYl4TgQdpW47WxjD_SXJNgu_Q8kVFOT_Y1DoE0f_d0IZqX', '2020-08-27 13:10:10', '2020-08-27 14:43:55', 'e2ae99d4-9432-460c-85b8-591024459173'),
(14, 1, 'n7lFq_ty9Xl0Nk1Qeq5ItBYzRW4YFrvP_AUjic2nkGvfmIq1VNCwzzik74c0k6ehP_UK0iZVhTyh8fbYrzh8hBkSxPwNBFh28yyh', '2020-08-27 14:27:12', '2020-08-27 15:16:33', '494a6871-85c7-482b-bedd-2561ff822446'),
(15, 1, '5DY9DmZPigJR217jbrqmup2AbfaKzjM_l8rqjTDKah4vc1GNLsrqwx20rc2GMGKPa3WmhuJt3aGz-pSHrZaQFjJKQh5zw9M4pURP', '2020-08-31 14:04:09', '2020-08-31 14:38:54', 'c51e000f-e7f5-434a-b468-ec119363b564'),
(21, 1, 'UjSPbzbze_4O_ezu3wf2w1_rugeD242VDxAgYB8fFM5iHTSaADffN_UTr3Cp2NMuIg6EDe4s3gWyYNNuvujGawnog3lfe1DPGpMZ', '2020-09-03 13:04:58', '2020-09-03 13:04:58', '0a5582bd-1dc3-425d-8bbc-aa0b45b59b3b'),
(22, 1, 'GeLjjf3xcKtJ9022NUrDO4NKYhKQGYvhThNdg0pTfZTvp78xg2pLg53hbHIgYOjL1ZGFtX0b_P5KQzVnpk3Apso6Ha9VPR6wKw1f', '2020-09-03 13:05:02', '2020-09-03 13:35:20', 'a1f248bd-c9ad-4c9e-a995-424ab8d8b46a');

-- --------------------------------------------------------

--
-- Table structure for table `shunnedmessages`
--

CREATE TABLE `shunnedmessages` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sitegroups`
--

CREATE TABLE `sitegroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sitegroups`
--

INSERT INTO `sitegroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'Hopscotch', '2020-07-27 13:15:28', '2020-07-27 13:15:28', NULL, 'de729615-7833-486a-a810-fe5e2fb23da9');

-- --------------------------------------------------------

--
-- Table structure for table `sites`
--

CREATE TABLE `sites` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `language` varchar(12) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '0',
  `baseUrl` varchar(255) DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sites`
--

INSERT INTO `sites` (`id`, `groupId`, `primary`, `enabled`, `name`, `handle`, `language`, `hasUrls`, `baseUrl`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, 1, 1, 'Hopscotch', 'default', 'en-US', 1, '$DEFAULT_SITE_URL', 1, '2020-07-27 13:15:29', '2020-07-27 13:15:29', NULL, 'fb7efba8-b557-46fd-82c6-4e761b57c79b');

-- --------------------------------------------------------

--
-- Table structure for table `stc_faq2`
--

CREATE TABLE `stc_faq2` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_faqSection` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stc_faq2`
--

INSERT INTO `stc_faq2` (`id`, `elementId`, `siteId`, `dateCreated`, `dateUpdated`, `uid`, `field_faqSection`) VALUES
(1, 173, 1, '2020-09-03 00:11:44', '2020-09-03 00:14:05', 'b5aa13be-93cf-4fbf-8d33-ce4fd4b9e180', 'The Basics'),
(2, 183, 1, '2020-09-03 00:11:44', '2020-09-03 00:11:44', '6fcf9235-568d-4a87-935a-e9ce2d9d5f4c', 'The Basics'),
(3, 194, 1, '2020-09-03 00:14:05', '2020-09-03 00:14:05', '29d96b0e-f337-4479-b605-ee5b5eeb2c45', 'The Basics'),
(4, 198, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '1b780127-bb7e-4845-b7bc-b49e68198998', 'TICKETING AND ADMISSION'),
(5, 216, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', 'b87f5b46-8cf2-4470-a355-a3c1f032d1df', 'The Basics'),
(6, 220, 1, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '6a5b4a81-b5bc-4912-82c0-bdfcb3121a2b', 'TICKETING AND ADMISSION');

-- --------------------------------------------------------

--
-- Table structure for table `structureelements`
--

CREATE TABLE `structureelements` (
  `id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `elementId` int(11) DEFAULT NULL,
  `root` int(11) UNSIGNED DEFAULT NULL,
  `lft` int(11) UNSIGNED NOT NULL,
  `rgt` int(11) UNSIGNED NOT NULL,
  `level` smallint(6) UNSIGNED NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `structures`
--

CREATE TABLE `structures` (
  `id` int(11) NOT NULL,
  `maxLevels` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `supertableblocks`
--

CREATE TABLE `supertableblocks` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `typeId` int(11) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `deletedWithOwner` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supertableblocks`
--

INSERT INTO `supertableblocks` (`id`, `ownerId`, `fieldId`, `typeId`, `sortOrder`, `deletedWithOwner`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(173, 6, 43, 1, 1, NULL, '2020-09-03 00:11:44', '2020-09-03 00:11:44', '81d43186-3b9a-4029-8451-f92012b94e2c'),
(183, 176, 43, 1, 1, NULL, '2020-09-03 00:11:44', '2020-09-03 00:11:44', '8da6b1da-b4df-4548-b9c8-4fbc5505f3f1'),
(194, 187, 43, 1, 1, NULL, '2020-09-03 00:14:05', '2020-09-03 00:14:05', 'f6d04d39-c223-492c-bf98-2661e8205f8a'),
(198, 6, 43, 1, 2, NULL, '2020-09-03 00:21:51', '2020-09-03 00:21:51', 'd0f6513d-4fb4-4a13-9a84-f8b626ed343e'),
(216, 209, 43, 1, 1, NULL, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '0d1d821e-64cc-4397-be07-fe7782fad57e'),
(220, 209, 43, 1, 2, NULL, '2020-09-03 00:21:51', '2020-09-03 00:21:51', '096e4b07-6fbc-43dd-9d4f-cacea0939251');

-- --------------------------------------------------------

--
-- Table structure for table `supertableblocktypes`
--

CREATE TABLE `supertableblocktypes` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supertableblocktypes`
--

INSERT INTO `supertableblocktypes` (`id`, `fieldId`, `fieldLayoutId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 43, 17, '2020-09-03 00:08:20', '2020-09-03 00:08:20', '82572f10-f1b7-4f90-94f3-f49d3eb37d50');

-- --------------------------------------------------------

--
-- Table structure for table `systemmessages`
--

CREATE TABLE `systemmessages` (
  `id` int(11) NOT NULL,
  `language` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `body` text NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `taggroups`
--

CREATE TABLE `taggroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `deletedWithGroup` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `templatecacheelements`
--

CREATE TABLE `templatecacheelements` (
  `id` int(11) NOT NULL,
  `cacheId` int(11) NOT NULL,
  `elementId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `templatecachequeries`
--

CREATE TABLE `templatecachequeries` (
  `id` int(11) NOT NULL,
  `cacheId` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `query` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `templatecaches`
--

CREATE TABLE `templatecaches` (
  `id` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `cacheKey` varchar(255) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `body` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` int(11) NOT NULL,
  `token` char(32) NOT NULL,
  `route` text,
  `usageLimit` tinyint(3) UNSIGNED DEFAULT NULL,
  `usageCount` tinyint(3) UNSIGNED DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `usergroups`
--

CREATE TABLE `usergroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `description` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `usergroups_users`
--

CREATE TABLE `usergroups_users` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `userpermissions`
--

CREATE TABLE `userpermissions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `userpermissions_usergroups`
--

CREATE TABLE `userpermissions_usergroups` (
  `id` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `userpermissions_users`
--

CREATE TABLE `userpermissions_users` (
  `id` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `userpreferences`
--

CREATE TABLE `userpreferences` (
  `userId` int(11) NOT NULL,
  `preferences` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userpreferences`
--

INSERT INTO `userpreferences` (`userId`, `preferences`) VALUES
(1, '{\"language\":\"en-US\",\"locale\":null,\"weekStartDay\":\"0\",\"useShapes\":false,\"underlineLinks\":false,\"showFieldHandles\":true,\"enableDebugToolbarForSite\":false,\"enableDebugToolbarForCp\":false,\"showExceptionView\":false,\"profileTemplates\":false}');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `photoId` int(11) DEFAULT NULL,
  `firstName` varchar(100) DEFAULT NULL,
  `lastName` varchar(100) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `suspended` tinyint(1) NOT NULL DEFAULT '0',
  `pending` tinyint(1) NOT NULL DEFAULT '0',
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginAttemptIp` varchar(45) DEFAULT NULL,
  `invalidLoginWindowStart` datetime DEFAULT NULL,
  `invalidLoginCount` tinyint(3) UNSIGNED DEFAULT NULL,
  `lastInvalidLoginDate` datetime DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `hasDashboard` tinyint(1) NOT NULL DEFAULT '0',
  `verificationCode` varchar(255) DEFAULT NULL,
  `verificationCodeIssuedDate` datetime DEFAULT NULL,
  `unverifiedEmail` varchar(255) DEFAULT NULL,
  `passwordResetRequired` tinyint(1) NOT NULL DEFAULT '0',
  `lastPasswordChangeDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `photoId`, `firstName`, `lastName`, `email`, `password`, `admin`, `locked`, `suspended`, `pending`, `lastLoginDate`, `lastLoginAttemptIp`, `invalidLoginWindowStart`, `invalidLoginCount`, `lastInvalidLoginDate`, `lockoutDate`, `hasDashboard`, `verificationCode`, `verificationCodeIssuedDate`, `unverifiedEmail`, `passwordResetRequired`, `lastPasswordChangeDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'admin_hops', NULL, '', '', 'jsosa@heyblackmagic.com', '$2y$13$h1Jt/cWyc.hrceVw2wWBGeTARu1tBjpniJ2OF42cIhWrI6NGk/KHa', 1, 0, 0, 0, '2020-09-03 13:05:02', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 0, '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-09-03 13:05:02', 'c28c69b6-7ff9-48fd-a544-5662ab8d4e0d');

-- --------------------------------------------------------

--
-- Table structure for table `volumefolders`
--

CREATE TABLE `volumefolders` (
  `id` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `volumefolders`
--

INSERT INTO `volumefolders` (`id`, `parentId`, `volumeId`, `name`, `path`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 1, 'Home Banner', '', '2020-09-01 14:40:25', '2020-09-01 14:40:25', '1b924d9c-95d3-45c6-942c-cc6177dd5b5c'),
(2, NULL, 2, 'About Banner', '', '2020-09-01 14:41:30', '2020-09-01 14:41:30', '0b741fe9-5316-4476-ac43-3ee9262937ca'),
(3, NULL, 3, 'Exhibits', '', '2020-09-01 14:41:58', '2020-09-01 14:41:58', 'ff179db2-b356-48fb-856c-6202b448756e'),
(4, NULL, 4, 'Contact', '', '2020-09-01 14:42:39', '2020-09-01 14:42:39', 'd75eab30-bdc1-4aa6-9d8d-b94194060a2c'),
(5, NULL, NULL, 'Temporary source', NULL, '2020-09-01 15:13:45', '2020-09-01 15:13:45', 'bdcef6e5-88d7-44b8-8f4f-88c37c407630'),
(6, 5, NULL, 'user_1', 'user_1/', '2020-09-01 15:13:45', '2020-09-01 15:13:45', '611da224-02db-443b-81d6-9ec5f42f1c8d'),
(7, NULL, 5, 'Covid', '', '2020-09-01 15:14:18', '2020-09-01 15:14:18', '3e3177ad-a824-458a-b608-98267dbdc91d');

-- --------------------------------------------------------

--
-- Table structure for table `volumes`
--

CREATE TABLE `volumes` (
  `id` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `url` varchar(255) DEFAULT NULL,
  `settings` text,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `volumes`
--

INSERT INTO `volumes` (`id`, `fieldLayoutId`, `name`, `handle`, `type`, `hasUrls`, `url`, `settings`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 4, 'Home Banner', 'homeBanner', 'craft\\volumes\\Local', 1, '@mediaBaseUrl/home/banner', '{\"path\":\"@mediaBasePath/home/banner\"}', 1, '2020-09-01 14:40:25', '2020-09-01 14:40:25', NULL, '22d4c992-dba7-449e-b36d-ac36420f47e5'),
(2, 5, 'About Banner', 'aboutBanner', 'craft\\volumes\\Local', 1, '@mediaBaseUrl/about/banner', '{\"path\":\"@mediaBasePath/about/banner\"}', 2, '2020-09-01 14:41:30', '2020-09-01 14:41:30', NULL, 'd3b7c6d6-9fb2-42dd-9d23-c94ba8e9e97e'),
(3, 6, 'Exhibits', 'exhibits', 'craft\\volumes\\Local', 1, '@mediaBaseUrl/about/exhibits', '{\"path\":\"@mediaBasePath/about/exhibits\"}', 3, '2020-09-01 14:41:58', '2020-09-01 14:41:58', NULL, '28998fcf-08b5-42e2-99bf-32b99d7e71df'),
(4, 7, 'Contact', 'contact', 'craft\\volumes\\Local', 1, '@mediaBaseUrl/contact/map', '{\"path\":\"@mediaBasePath/contact/map\"}', 4, '2020-09-01 14:42:39', '2020-09-01 14:42:39', NULL, '8d814e64-e1b1-46c3-a3db-506877a68155'),
(5, 8, 'Covid', 'covid', 'craft\\volumes\\Local', 1, '@mediaBaseUrl/covid', '{\"path\":\"@mediaBasePath/covid\"}', 5, '2020-09-01 15:14:18', '2020-09-01 15:14:18', NULL, '97d6d9f3-1a93-443a-bfa5-69cdc7328c00');

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `colspan` tinyint(3) DEFAULT NULL,
  `settings` text,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `userId`, `type`, `sortOrder`, `colspan`, `settings`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'craft\\widgets\\RecentEntries', 1, NULL, '{\"section\":\"*\",\"siteId\":\"1\",\"limit\":10}', 1, '2020-07-27 13:15:31', '2020-07-27 13:15:31', 'b88842b9-9f74-44c3-ae24-787f606075c8'),
(2, 1, 'craft\\widgets\\CraftSupport', 2, NULL, '[]', 1, '2020-07-27 13:15:31', '2020-07-27 13:15:31', 'c69ead8e-1915-4cb5-9167-f3daf2f12a05'),
(3, 1, 'craft\\widgets\\Updates', 3, NULL, '[]', 1, '2020-07-27 13:15:31', '2020-07-27 13:15:31', '2c9b8906-d347-4f71-be69-932adc628497'),
(4, 1, 'craft\\widgets\\Feed', 4, NULL, '{\"url\":\"https://craftcms.com/news.rss\",\"title\":\"Craft News\",\"limit\":5}', 1, '2020-07-27 13:15:31', '2020-07-27 13:15:31', '2fbd479d-8980-473f-9d81-b4a31a4c2e92');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assetindexdata`
--
ALTER TABLE `assetindexdata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assetindexdata_sessionId_volumeId_idx` (`sessionId`,`volumeId`),
  ADD KEY `assetindexdata_volumeId_idx` (`volumeId`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assets_filename_folderId_idx` (`filename`,`folderId`),
  ADD KEY `assets_folderId_idx` (`folderId`),
  ADD KEY `assets_volumeId_idx` (`volumeId`),
  ADD KEY `assets_uploaderId_fk` (`uploaderId`);

--
-- Indexes for table `assettransformindex`
--
ALTER TABLE `assettransformindex`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assettransformindex_volumeId_assetId_location_idx` (`volumeId`,`assetId`,`location`);

--
-- Indexes for table `assettransforms`
--
ALTER TABLE `assettransforms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assettransforms_name_idx` (`name`),
  ADD KEY `assettransforms_handle_idx` (`handle`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_groupId_idx` (`groupId`),
  ADD KEY `categories_parentId_fk` (`parentId`);

--
-- Indexes for table `categorygroups`
--
ALTER TABLE `categorygroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categorygroups_name_idx` (`name`),
  ADD KEY `categorygroups_handle_idx` (`handle`),
  ADD KEY `categorygroups_structureId_idx` (`structureId`),
  ADD KEY `categorygroups_fieldLayoutId_idx` (`fieldLayoutId`),
  ADD KEY `categorygroups_dateDeleted_idx` (`dateDeleted`);

--
-- Indexes for table `categorygroups_sites`
--
ALTER TABLE `categorygroups_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categorygroups_sites_groupId_siteId_unq_idx` (`groupId`,`siteId`),
  ADD KEY `categorygroups_sites_siteId_idx` (`siteId`);

--
-- Indexes for table `changedattributes`
--
ALTER TABLE `changedattributes`
  ADD PRIMARY KEY (`elementId`,`siteId`,`attribute`),
  ADD KEY `changedattributes_elementId_siteId_dateUpdated_idx` (`elementId`,`siteId`,`dateUpdated`),
  ADD KEY `changedattributes_siteId_fk` (`siteId`),
  ADD KEY `changedattributes_userId_fk` (`userId`);

--
-- Indexes for table `changedfields`
--
ALTER TABLE `changedfields`
  ADD PRIMARY KEY (`elementId`,`siteId`,`fieldId`),
  ADD KEY `changedfields_elementId_siteId_dateUpdated_idx` (`elementId`,`siteId`,`dateUpdated`),
  ADD KEY `changedfields_siteId_fk` (`siteId`),
  ADD KEY `changedfields_fieldId_fk` (`fieldId`),
  ADD KEY `changedfields_userId_fk` (`userId`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `content_elementId_siteId_unq_idx` (`elementId`,`siteId`),
  ADD KEY `content_siteId_idx` (`siteId`),
  ADD KEY `content_title_idx` (`title`);

--
-- Indexes for table `craftidtokens`
--
ALTER TABLE `craftidtokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craftidtokens_userId_fk` (`userId`);

--
-- Indexes for table `deprecationerrors`
--
ALTER TABLE `deprecationerrors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `deprecationerrors_key_fingerprint_unq_idx` (`key`,`fingerprint`);

--
-- Indexes for table `drafts`
--
ALTER TABLE `drafts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `drafts_creatorId_fk` (`creatorId`),
  ADD KEY `drafts_sourceId_fk` (`sourceId`);

--
-- Indexes for table `elementindexsettings`
--
ALTER TABLE `elementindexsettings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `elementindexsettings_type_unq_idx` (`type`);

--
-- Indexes for table `elements`
--
ALTER TABLE `elements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `elements_dateDeleted_idx` (`dateDeleted`),
  ADD KEY `elements_fieldLayoutId_idx` (`fieldLayoutId`),
  ADD KEY `elements_type_idx` (`type`),
  ADD KEY `elements_enabled_idx` (`enabled`),
  ADD KEY `elements_archived_dateCreated_idx` (`archived`,`dateCreated`),
  ADD KEY `elements_archived_dateDeleted_draftId_revisionId_idx` (`archived`,`dateDeleted`,`draftId`,`revisionId`),
  ADD KEY `elements_draftId_fk` (`draftId`),
  ADD KEY `elements_revisionId_fk` (`revisionId`);

--
-- Indexes for table `elements_sites`
--
ALTER TABLE `elements_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `elements_sites_elementId_siteId_unq_idx` (`elementId`,`siteId`),
  ADD KEY `elements_sites_siteId_idx` (`siteId`),
  ADD KEY `elements_sites_slug_siteId_idx` (`slug`,`siteId`),
  ADD KEY `elements_sites_enabled_idx` (`enabled`),
  ADD KEY `elements_sites_uri_siteId_idx` (`uri`,`siteId`);

--
-- Indexes for table `entries`
--
ALTER TABLE `entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entries_postDate_idx` (`postDate`),
  ADD KEY `entries_expiryDate_idx` (`expiryDate`),
  ADD KEY `entries_authorId_idx` (`authorId`),
  ADD KEY `entries_sectionId_idx` (`sectionId`),
  ADD KEY `entries_typeId_idx` (`typeId`),
  ADD KEY `entries_parentId_fk` (`parentId`);

--
-- Indexes for table `entrytypes`
--
ALTER TABLE `entrytypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entrytypes_name_sectionId_idx` (`name`,`sectionId`),
  ADD KEY `entrytypes_handle_sectionId_idx` (`handle`,`sectionId`),
  ADD KEY `entrytypes_sectionId_idx` (`sectionId`),
  ADD KEY `entrytypes_fieldLayoutId_idx` (`fieldLayoutId`),
  ADD KEY `entrytypes_dateDeleted_idx` (`dateDeleted`);

--
-- Indexes for table `fieldgroups`
--
ALTER TABLE `fieldgroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fieldgroups_name_idx` (`name`);

--
-- Indexes for table `fieldlayoutfields`
--
ALTER TABLE `fieldlayoutfields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fieldlayoutfields_layoutId_fieldId_unq_idx` (`layoutId`,`fieldId`),
  ADD KEY `fieldlayoutfields_sortOrder_idx` (`sortOrder`),
  ADD KEY `fieldlayoutfields_tabId_idx` (`tabId`),
  ADD KEY `fieldlayoutfields_fieldId_idx` (`fieldId`);

--
-- Indexes for table `fieldlayouts`
--
ALTER TABLE `fieldlayouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fieldlayouts_dateDeleted_idx` (`dateDeleted`),
  ADD KEY `fieldlayouts_type_idx` (`type`);

--
-- Indexes for table `fieldlayouttabs`
--
ALTER TABLE `fieldlayouttabs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fieldlayouttabs_sortOrder_idx` (`sortOrder`),
  ADD KEY `fieldlayouttabs_layoutId_idx` (`layoutId`);

--
-- Indexes for table `fields`
--
ALTER TABLE `fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fields_groupId_idx` (`groupId`),
  ADD KEY `fields_context_idx` (`context`),
  ADD KEY `fields_handle_context_idx` (`handle`,`context`);

--
-- Indexes for table `globalsets`
--
ALTER TABLE `globalsets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `globalsets_name_idx` (`name`),
  ADD KEY `globalsets_handle_idx` (`handle`),
  ADD KEY `globalsets_fieldLayoutId_idx` (`fieldLayoutId`);

--
-- Indexes for table `gqlschemas`
--
ALTER TABLE `gqlschemas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gqltokens`
--
ALTER TABLE `gqltokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gqltokens_accessToken_unq_idx` (`accessToken`),
  ADD UNIQUE KEY `gqltokens_name_unq_idx` (`name`),
  ADD KEY `gqltokens_schemaId_fk` (`schemaId`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matrixblocks`
--
ALTER TABLE `matrixblocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matrixblocks_ownerId_idx` (`ownerId`),
  ADD KEY `matrixblocks_fieldId_idx` (`fieldId`),
  ADD KEY `matrixblocks_typeId_idx` (`typeId`),
  ADD KEY `matrixblocks_sortOrder_idx` (`sortOrder`);

--
-- Indexes for table `matrixblocktypes`
--
ALTER TABLE `matrixblocktypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matrixblocktypes_fieldId_idx` (`fieldId`),
  ADD KEY `matrixblocktypes_fieldLayoutId_idx` (`fieldLayoutId`),
  ADD KEY `matrixblocktypes_name_fieldId_idx` (`name`,`fieldId`),
  ADD KEY `matrixblocktypes_handle_fieldId_idx` (`handle`,`fieldId`);

--
-- Indexes for table `matrixcontent_covidguidelines`
--
ALTER TABLE `matrixcontent_covidguidelines`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `matrixcontent_covidguidelines_elementId_siteId_unq_idx` (`elementId`,`siteId`),
  ADD KEY `matrixcontent_covidguidelines_siteId_fk` (`siteId`);

--
-- Indexes for table `matrixcontent_exhibitions`
--
ALTER TABLE `matrixcontent_exhibitions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `matrixcontent_exhibitions_elementId_siteId_unq_idx` (`elementId`,`siteId`),
  ADD KEY `matrixcontent_exhibitions_siteId_fk` (`siteId`);

--
-- Indexes for table `matrixcontent_faqquestions`
--
ALTER TABLE `matrixcontent_faqquestions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `matrixcontent_faqquestions_elementId_siteId_unq_idx` (`elementId`,`siteId`),
  ADD KEY `matrixcontent_faqquestions_siteId_fk` (`siteId`);

--
-- Indexes for table `matrixcontent_faqs`
--
ALTER TABLE `matrixcontent_faqs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `matrixcontent_faqs_elementId_siteId_unq_idx` (`elementId`,`siteId`),
  ADD KEY `matrixcontent_faqs_siteId_fk` (`siteId`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `migrations_track_name_unq_idx` (`track`,`name`);

--
-- Indexes for table `plugins`
--
ALTER TABLE `plugins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plugins_handle_unq_idx` (`handle`);

--
-- Indexes for table `projectconfig`
--
ALTER TABLE `projectconfig`
  ADD PRIMARY KEY (`path`);

--
-- Indexes for table `queue`
--
ALTER TABLE `queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `queue_channel_fail_timeUpdated_timePushed_idx` (`channel`,`fail`,`timeUpdated`,`timePushed`),
  ADD KEY `queue_channel_fail_timeUpdated_delay_idx` (`channel`,`fail`,`timeUpdated`,`delay`);

--
-- Indexes for table `relations`
--
ALTER TABLE `relations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `relations_fieldId_sourceId_sourceSiteId_targetId_unq_idx` (`fieldId`,`sourceId`,`sourceSiteId`,`targetId`),
  ADD KEY `relations_sourceId_idx` (`sourceId`),
  ADD KEY `relations_targetId_idx` (`targetId`),
  ADD KEY `relations_sourceSiteId_idx` (`sourceSiteId`);

--
-- Indexes for table `resourcepaths`
--
ALTER TABLE `resourcepaths`
  ADD PRIMARY KEY (`hash`);

--
-- Indexes for table `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `revisions_sourceId_num_unq_idx` (`sourceId`,`num`),
  ADD KEY `revisions_creatorId_fk` (`creatorId`);

--
-- Indexes for table `searchindex`
--
ALTER TABLE `searchindex`
  ADD PRIMARY KEY (`elementId`,`attribute`,`fieldId`,`siteId`);
ALTER TABLE `searchindex` ADD FULLTEXT KEY `searchindex_keywords_idx` (`keywords`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sections_handle_idx` (`handle`),
  ADD KEY `sections_name_idx` (`name`),
  ADD KEY `sections_structureId_idx` (`structureId`),
  ADD KEY `sections_dateDeleted_idx` (`dateDeleted`);

--
-- Indexes for table `sections_sites`
--
ALTER TABLE `sections_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sections_sites_sectionId_siteId_unq_idx` (`sectionId`,`siteId`),
  ADD KEY `sections_sites_siteId_idx` (`siteId`);

--
-- Indexes for table `sequences`
--
ALTER TABLE `sequences`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_uid_idx` (`uid`),
  ADD KEY `sessions_token_idx` (`token`),
  ADD KEY `sessions_dateUpdated_idx` (`dateUpdated`),
  ADD KEY `sessions_userId_idx` (`userId`);

--
-- Indexes for table `shunnedmessages`
--
ALTER TABLE `shunnedmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shunnedmessages_userId_message_unq_idx` (`userId`,`message`);

--
-- Indexes for table `sitegroups`
--
ALTER TABLE `sitegroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sitegroups_name_idx` (`name`);

--
-- Indexes for table `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sites_dateDeleted_idx` (`dateDeleted`),
  ADD KEY `sites_handle_idx` (`handle`),
  ADD KEY `sites_sortOrder_idx` (`sortOrder`),
  ADD KEY `sites_groupId_fk` (`groupId`);

--
-- Indexes for table `stc_faq2`
--
ALTER TABLE `stc_faq2`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `stc_faq2_elementId_siteId_unq_idx` (`elementId`,`siteId`),
  ADD KEY `stc_faq2_siteId_fk` (`siteId`);

--
-- Indexes for table `structureelements`
--
ALTER TABLE `structureelements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `structureelements_structureId_elementId_unq_idx` (`structureId`,`elementId`),
  ADD KEY `structureelements_root_idx` (`root`),
  ADD KEY `structureelements_lft_idx` (`lft`),
  ADD KEY `structureelements_rgt_idx` (`rgt`),
  ADD KEY `structureelements_level_idx` (`level`),
  ADD KEY `structureelements_elementId_idx` (`elementId`);

--
-- Indexes for table `structures`
--
ALTER TABLE `structures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `structures_dateDeleted_idx` (`dateDeleted`);

--
-- Indexes for table `supertableblocks`
--
ALTER TABLE `supertableblocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supertableblocks_ownerId_idx` (`ownerId`),
  ADD KEY `supertableblocks_fieldId_idx` (`fieldId`),
  ADD KEY `supertableblocks_typeId_idx` (`typeId`),
  ADD KEY `supertableblocks_sortOrder_idx` (`sortOrder`);

--
-- Indexes for table `supertableblocktypes`
--
ALTER TABLE `supertableblocktypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supertableblocktypes_fieldId_idx` (`fieldId`),
  ADD KEY `supertableblocktypes_fieldLayoutId_idx` (`fieldLayoutId`);

--
-- Indexes for table `systemmessages`
--
ALTER TABLE `systemmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `systemmessages_key_language_unq_idx` (`key`,`language`),
  ADD KEY `systemmessages_language_idx` (`language`);

--
-- Indexes for table `taggroups`
--
ALTER TABLE `taggroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `taggroups_name_idx` (`name`),
  ADD KEY `taggroups_handle_idx` (`handle`),
  ADD KEY `taggroups_dateDeleted_idx` (`dateDeleted`),
  ADD KEY `taggroups_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tags_groupId_idx` (`groupId`);

--
-- Indexes for table `templatecacheelements`
--
ALTER TABLE `templatecacheelements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `templatecacheelements_cacheId_idx` (`cacheId`),
  ADD KEY `templatecacheelements_elementId_idx` (`elementId`);

--
-- Indexes for table `templatecachequeries`
--
ALTER TABLE `templatecachequeries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `templatecachequeries_cacheId_idx` (`cacheId`),
  ADD KEY `templatecachequeries_type_idx` (`type`);

--
-- Indexes for table `templatecaches`
--
ALTER TABLE `templatecaches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `templatecaches_cacheKey_siteId_expiryDate_path_idx` (`cacheKey`,`siteId`,`expiryDate`,`path`),
  ADD KEY `templatecaches_cacheKey_siteId_expiryDate_idx` (`cacheKey`,`siteId`,`expiryDate`),
  ADD KEY `templatecaches_siteId_idx` (`siteId`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tokens_token_unq_idx` (`token`),
  ADD KEY `tokens_expiryDate_idx` (`expiryDate`);

--
-- Indexes for table `usergroups`
--
ALTER TABLE `usergroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usergroups_handle_idx` (`handle`),
  ADD KEY `usergroups_name_idx` (`name`);

--
-- Indexes for table `usergroups_users`
--
ALTER TABLE `usergroups_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usergroups_users_groupId_userId_unq_idx` (`groupId`,`userId`),
  ADD KEY `usergroups_users_userId_idx` (`userId`);

--
-- Indexes for table `userpermissions`
--
ALTER TABLE `userpermissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userpermissions_name_unq_idx` (`name`);

--
-- Indexes for table `userpermissions_usergroups`
--
ALTER TABLE `userpermissions_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userpermissions_usergroups_permissionId_groupId_unq_idx` (`permissionId`,`groupId`),
  ADD KEY `userpermissions_usergroups_groupId_idx` (`groupId`);

--
-- Indexes for table `userpermissions_users`
--
ALTER TABLE `userpermissions_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userpermissions_users_permissionId_userId_unq_idx` (`permissionId`,`userId`),
  ADD KEY `userpermissions_users_userId_idx` (`userId`);

--
-- Indexes for table `userpreferences`
--
ALTER TABLE `userpreferences`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_uid_idx` (`uid`),
  ADD KEY `users_verificationCode_idx` (`verificationCode`),
  ADD KEY `users_email_idx` (`email`),
  ADD KEY `users_username_idx` (`username`),
  ADD KEY `users_photoId_fk` (`photoId`);

--
-- Indexes for table `volumefolders`
--
ALTER TABLE `volumefolders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `volumefolders_name_parentId_volumeId_unq_idx` (`name`,`parentId`,`volumeId`),
  ADD KEY `volumefolders_parentId_idx` (`parentId`),
  ADD KEY `volumefolders_volumeId_idx` (`volumeId`);

--
-- Indexes for table `volumes`
--
ALTER TABLE `volumes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `volumes_name_idx` (`name`),
  ADD KEY `volumes_handle_idx` (`handle`),
  ADD KEY `volumes_fieldLayoutId_idx` (`fieldLayoutId`),
  ADD KEY `volumes_dateDeleted_idx` (`dateDeleted`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `widgets_userId_idx` (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assetindexdata`
--
ALTER TABLE `assetindexdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `assettransformindex`
--
ALTER TABLE `assettransformindex`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assettransforms`
--
ALTER TABLE `assettransforms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categorygroups`
--
ALTER TABLE `categorygroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categorygroups_sites`
--
ALTER TABLE `categorygroups_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `craftidtokens`
--
ALTER TABLE `craftidtokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deprecationerrors`
--
ALTER TABLE `deprecationerrors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drafts`
--
ALTER TABLE `drafts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `elementindexsettings`
--
ALTER TABLE `elementindexsettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `elements`
--
ALTER TABLE `elements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

--
-- AUTO_INCREMENT for table `elements_sites`
--
ALTER TABLE `elements_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

--
-- AUTO_INCREMENT for table `entrytypes`
--
ALTER TABLE `entrytypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `fieldgroups`
--
ALTER TABLE `fieldgroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `fieldlayoutfields`
--
ALTER TABLE `fieldlayoutfields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `fieldlayouts`
--
ALTER TABLE `fieldlayouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `fieldlayouttabs`
--
ALTER TABLE `fieldlayouttabs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `fields`
--
ALTER TABLE `fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `globalsets`
--
ALTER TABLE `globalsets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `gqlschemas`
--
ALTER TABLE `gqlschemas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gqltokens`
--
ALTER TABLE `gqltokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `matrixblocktypes`
--
ALTER TABLE `matrixblocktypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `matrixcontent_covidguidelines`
--
ALTER TABLE `matrixcontent_covidguidelines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `matrixcontent_exhibitions`
--
ALTER TABLE `matrixcontent_exhibitions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `matrixcontent_faqquestions`
--
ALTER TABLE `matrixcontent_faqquestions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `matrixcontent_faqs`
--
ALTER TABLE `matrixcontent_faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `plugins`
--
ALTER TABLE `plugins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `queue`
--
ALTER TABLE `queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `relations`
--
ALTER TABLE `relations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sections_sites`
--
ALTER TABLE `sections_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `shunnedmessages`
--
ALTER TABLE `shunnedmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sitegroups`
--
ALTER TABLE `sitegroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sites`
--
ALTER TABLE `sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stc_faq2`
--
ALTER TABLE `stc_faq2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `structureelements`
--
ALTER TABLE `structureelements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `structures`
--
ALTER TABLE `structures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supertableblocktypes`
--
ALTER TABLE `supertableblocktypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `systemmessages`
--
ALTER TABLE `systemmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taggroups`
--
ALTER TABLE `taggroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `templatecacheelements`
--
ALTER TABLE `templatecacheelements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `templatecachequeries`
--
ALTER TABLE `templatecachequeries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `templatecaches`
--
ALTER TABLE `templatecaches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usergroups`
--
ALTER TABLE `usergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usergroups_users`
--
ALTER TABLE `usergroups_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userpermissions`
--
ALTER TABLE `userpermissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userpermissions_usergroups`
--
ALTER TABLE `userpermissions_usergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userpermissions_users`
--
ALTER TABLE `userpermissions_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userpreferences`
--
ALTER TABLE `userpreferences`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `volumefolders`
--
ALTER TABLE `volumefolders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `volumes`
--
ALTER TABLE `volumes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assetindexdata`
--
ALTER TABLE `assetindexdata`
  ADD CONSTRAINT `assetindexdata_volumeId_fk` FOREIGN KEY (`volumeId`) REFERENCES `volumes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `assets`
--
ALTER TABLE `assets`
  ADD CONSTRAINT `assets_folderId_fk` FOREIGN KEY (`folderId`) REFERENCES `volumefolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assets_id_fk` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assets_uploaderId_fk` FOREIGN KEY (`uploaderId`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `assets_volumeId_fk` FOREIGN KEY (`volumeId`) REFERENCES `volumes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `categories_id_fk` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `categories_parentId_fk` FOREIGN KEY (`parentId`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `categorygroups`
--
ALTER TABLE `categorygroups`
  ADD CONSTRAINT `categorygroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `categorygroups_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `structures` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categorygroups_sites`
--
ALTER TABLE `categorygroups_sites`
  ADD CONSTRAINT `categorygroups_sites_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `categorygroups_sites_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `changedattributes`
--
ALTER TABLE `changedattributes`
  ADD CONSTRAINT `changedattributes_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `changedattributes_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `changedattributes_userId_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `changedfields`
--
ALTER TABLE `changedfields`
  ADD CONSTRAINT `changedfields_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `changedfields_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `changedfields_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `changedfields_userId_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `content`
--
ALTER TABLE `content`
  ADD CONSTRAINT `content_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `content_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craftidtokens`
--
ALTER TABLE `craftidtokens`
  ADD CONSTRAINT `craftidtokens_userId_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `drafts`
--
ALTER TABLE `drafts`
  ADD CONSTRAINT `drafts_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `drafts_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `elements`
--
ALTER TABLE `elements`
  ADD CONSTRAINT `elements_draftId_fk` FOREIGN KEY (`draftId`) REFERENCES `drafts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `elements_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `elements_revisionId_fk` FOREIGN KEY (`revisionId`) REFERENCES `revisions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `elements_sites`
--
ALTER TABLE `elements_sites`
  ADD CONSTRAINT `elements_sites_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `elements_sites_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `entries`
--
ALTER TABLE `entries`
  ADD CONSTRAINT `entries_authorId_fk` FOREIGN KEY (`authorId`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `entries_id_fk` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `entries_parentId_fk` FOREIGN KEY (`parentId`) REFERENCES `entries` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `entries_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `entries_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `entrytypes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `entrytypes`
--
ALTER TABLE `entrytypes`
  ADD CONSTRAINT `entrytypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `entrytypes_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fieldlayoutfields`
--
ALTER TABLE `fieldlayoutfields`
  ADD CONSTRAINT `fieldlayoutfields_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fieldlayoutfields_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fieldlayoutfields_tabId_fk` FOREIGN KEY (`tabId`) REFERENCES `fieldlayouttabs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fieldlayouttabs`
--
ALTER TABLE `fieldlayouttabs`
  ADD CONSTRAINT `fieldlayouttabs_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fields`
--
ALTER TABLE `fields`
  ADD CONSTRAINT `fields_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `fieldgroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `globalsets`
--
ALTER TABLE `globalsets`
  ADD CONSTRAINT `globalsets_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `globalsets_id_fk` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `gqltokens`
--
ALTER TABLE `gqltokens`
  ADD CONSTRAINT `gqltokens_schemaId_fk` FOREIGN KEY (`schemaId`) REFERENCES `gqlschemas` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `matrixblocks`
--
ALTER TABLE `matrixblocks`
  ADD CONSTRAINT `matrixblocks_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `matrixblocks_id_fk` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `matrixblocks_ownerId_fk` FOREIGN KEY (`ownerId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `matrixblocks_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `matrixblocktypes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `matrixblocktypes`
--
ALTER TABLE `matrixblocktypes`
  ADD CONSTRAINT `matrixblocktypes_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `matrixblocktypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `matrixcontent_covidguidelines`
--
ALTER TABLE `matrixcontent_covidguidelines`
  ADD CONSTRAINT `matrixcontent_covidguidelines_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `matrixcontent_covidguidelines_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `matrixcontent_exhibitions`
--
ALTER TABLE `matrixcontent_exhibitions`
  ADD CONSTRAINT `matrixcontent_exhibitions_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `matrixcontent_exhibitions_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `matrixcontent_faqquestions`
--
ALTER TABLE `matrixcontent_faqquestions`
  ADD CONSTRAINT `matrixcontent_faqquestions_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `matrixcontent_faqquestions_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `matrixcontent_faqs`
--
ALTER TABLE `matrixcontent_faqs`
  ADD CONSTRAINT `matrixcontent_faqs_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `matrixcontent_faqs_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `relations`
--
ALTER TABLE `relations`
  ADD CONSTRAINT `relations_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `relations_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `relations_sourceSiteId_fk` FOREIGN KEY (`sourceSiteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `relations_targetId_fk` FOREIGN KEY (`targetId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `revisions`
--
ALTER TABLE `revisions`
  ADD CONSTRAINT `revisions_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `revisions_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `sections_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `structures` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `sections_sites`
--
ALTER TABLE `sections_sites`
  ADD CONSTRAINT `sections_sites_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sections_sites_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `sessions_userId_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shunnedmessages`
--
ALTER TABLE `shunnedmessages`
  ADD CONSTRAINT `shunnedmessages_userId_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sites`
--
ALTER TABLE `sites`
  ADD CONSTRAINT `sites_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `sitegroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `stc_faq2`
--
ALTER TABLE `stc_faq2`
  ADD CONSTRAINT `stc_faq2_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stc_faq2_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `structureelements`
--
ALTER TABLE `structureelements`
  ADD CONSTRAINT `structureelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `structureelements_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `structures` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `supertableblocks`
--
ALTER TABLE `supertableblocks`
  ADD CONSTRAINT `supertableblocks_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `supertableblocks_id_fk` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `supertableblocks_ownerId_fk` FOREIGN KEY (`ownerId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `supertableblocks_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `supertableblocktypes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `supertableblocktypes`
--
ALTER TABLE `supertableblocktypes`
  ADD CONSTRAINT `supertableblocktypes_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `supertableblocktypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `taggroups`
--
ALTER TABLE `taggroups`
  ADD CONSTRAINT `taggroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `tags_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `taggroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tags_id_fk` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `templatecacheelements`
--
ALTER TABLE `templatecacheelements`
  ADD CONSTRAINT `templatecacheelements_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `templatecaches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `templatecacheelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `templatecachequeries`
--
ALTER TABLE `templatecachequeries`
  ADD CONSTRAINT `templatecachequeries_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `templatecaches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `templatecaches`
--
ALTER TABLE `templatecaches`
  ADD CONSTRAINT `templatecaches_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `usergroups_users`
--
ALTER TABLE `usergroups_users`
  ADD CONSTRAINT `usergroups_users_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `usergroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `usergroups_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `userpermissions_usergroups`
--
ALTER TABLE `userpermissions_usergroups`
  ADD CONSTRAINT `userpermissions_usergroups_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `usergroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `userpermissions_usergroups_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `userpermissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `userpermissions_users`
--
ALTER TABLE `userpermissions_users`
  ADD CONSTRAINT `userpermissions_users_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `userpermissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `userpermissions_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `userpreferences`
--
ALTER TABLE `userpreferences`
  ADD CONSTRAINT `userpreferences_userId_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_id_fk` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_photoId_fk` FOREIGN KEY (`photoId`) REFERENCES `assets` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `volumefolders`
--
ALTER TABLE `volumefolders`
  ADD CONSTRAINT `volumefolders_parentId_fk` FOREIGN KEY (`parentId`) REFERENCES `volumefolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `volumefolders_volumeId_fk` FOREIGN KEY (`volumeId`) REFERENCES `volumes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `volumes`
--
ALTER TABLE `volumes`
  ADD CONSTRAINT `volumes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `widgets`
--
ALTER TABLE `widgets`
  ADD CONSTRAINT `widgets_userId_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;
