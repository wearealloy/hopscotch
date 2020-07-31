-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 31, 2020 at 02:58 PM
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
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `elementId`, `siteId`, `title`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, NULL, '2020-07-27 13:15:29', '2020-07-27 13:15:29', '2d386fc3-cb6e-4841-b70d-7696a4b79234'),
(2, 2, 1, 'Home', '2020-07-27 14:09:40', '2020-07-27 14:09:40', '09af2ec6-204e-4723-bd8b-a0a534a14bc3'),
(3, 3, 1, 'Home', '2020-07-27 14:09:40', '2020-07-27 14:09:40', '62072998-8bc0-4fbc-bf63-f1d9eba2b20c');

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
(1, NULL, NULL, NULL, 'craft\\elements\\User', 1, 0, '2020-07-27 13:15:29', '2020-07-27 13:15:29', NULL, 'f78fd3ba-2a28-4aec-8853-14a1ae443c05'),
(2, NULL, NULL, NULL, 'craft\\elements\\Entry', 1, 0, '2020-07-27 14:09:40', '2020-07-27 14:09:40', NULL, 'd83f34e0-8c6c-4649-9a18-325e762ff5e0'),
(3, NULL, 1, NULL, 'craft\\elements\\Entry', 1, 0, '2020-07-27 14:09:40', '2020-07-27 14:09:40', NULL, 'd779127c-430d-4dee-a409-cf9c8a24e972');

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
(3, 3, 1, 'home', '__home__', 1, '2020-07-27 14:09:40', '2020-07-27 14:09:40', '5bf58ce1-e809-48bb-9ad0-ff0669d3871c');

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
(3, 1, NULL, 1, NULL, '2020-07-27 14:09:00', NULL, NULL, '2020-07-27 14:09:40', '2020-07-27 14:09:40', '2bf8b0ee-e769-47af-aff6-53f94a847606');

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
  `titleLabel` varchar(255) DEFAULT 'Title',
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

INSERT INTO `entrytypes` (`id`, `sectionId`, `fieldLayoutId`, `name`, `handle`, `hasTitleField`, `titleLabel`, `titleFormat`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, NULL, 'Home', 'home', 0, NULL, '{section.name|raw}', 1, '2020-07-27 14:09:40', '2020-07-27 14:09:40', NULL, '32984911-51e5-46ce-8b9e-68f185f74723');

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
(1, 'Common', '2020-07-27 13:15:28', '2020-07-27 13:15:28', '1900278b-fbd9-4840-8e1f-c1eba29aa8aa');

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

-- --------------------------------------------------------

--
-- Table structure for table `fieldlayouttabs`
--

CREATE TABLE `fieldlayouttabs` (
  `id` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `version` varchar(50) NOT NULL,
  `schemaVersion` varchar(15) NOT NULL,
  `maintenance` tinyint(1) NOT NULL DEFAULT '0',
  `configMap` mediumtext,
  `fieldVersion` char(12) NOT NULL DEFAULT '000000000000',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `version`, `schemaVersion`, `maintenance`, `configMap`, `fieldVersion`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, '3.4.29.1', '3.4.11', 0, '[]', 'YzU6jiGnl1KU', '2020-07-27 13:15:28', '2020-07-27 13:15:28', '57f9626e-6903-4d65-a4d3-f2991a121b38');

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

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(11) NOT NULL,
  `pluginId` int(11) DEFAULT NULL,
  `type` enum('app','plugin','content') NOT NULL DEFAULT 'app',
  `name` varchar(255) NOT NULL,
  `applyTime` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `pluginId`, `type`, `name`, `applyTime`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 'app', 'Install', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '0df561c4-4d99-42e5-b007-87e4f94c5ba6'),
(2, NULL, 'app', 'm150403_183908_migrations_table_changes', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'a42080ef-9976-47b6-8ab2-a95081b9fde1'),
(3, NULL, 'app', 'm150403_184247_plugins_table_changes', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '18d7a97d-1067-48bb-aa3f-fc2fa37eaed9'),
(4, NULL, 'app', 'm150403_184533_field_version', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '316f7558-9ee9-47e6-b613-812036127e47'),
(5, NULL, 'app', 'm150403_184729_type_columns', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '30efd9dd-209e-4bf2-9cb1-dd6a3d1d29a8'),
(6, NULL, 'app', 'm150403_185142_volumes', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '679cb220-e359-44ab-8d11-9a862f36cf43'),
(7, NULL, 'app', 'm150428_231346_userpreferences', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2c5999bf-d9fb-4d2d-a511-b0d3c10d3c2c'),
(8, NULL, 'app', 'm150519_150900_fieldversion_conversion', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '8a828f1b-4a54-4e9c-80a2-6ba51ad6f9df'),
(9, NULL, 'app', 'm150617_213829_update_email_settings', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '7a5a5d27-ad62-4af8-a587-7e421814f304'),
(10, NULL, 'app', 'm150721_124739_templatecachequeries', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '00a8f177-1b26-485c-a211-4ffc6059c21d'),
(11, NULL, 'app', 'm150724_140822_adjust_quality_settings', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'fb38aa19-e7ac-498c-8cb8-2a4278fb21aa'),
(12, NULL, 'app', 'm150815_133521_last_login_attempt_ip', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'acf816da-850f-423f-b0e2-6e138ff65e5f'),
(13, NULL, 'app', 'm151002_095935_volume_cache_settings', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'b38f3730-9d71-4d7e-bc8e-e1efbd9549fc'),
(14, NULL, 'app', 'm151005_142750_volume_s3_storage_settings', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '86804bc8-e013-4eac-97e5-6b08aa5b596b'),
(15, NULL, 'app', 'm151016_133600_delete_asset_thumbnails', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '3c30e280-26ca-4da2-b649-0d16f2fd11ed'),
(16, NULL, 'app', 'm151209_000000_move_logo', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '275fcb46-1c0d-44d4-ad08-db437b385d68'),
(17, NULL, 'app', 'm151211_000000_rename_fileId_to_assetId', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '57c0be79-88f9-47f5-a29e-f42651602140'),
(18, NULL, 'app', 'm151215_000000_rename_asset_permissions', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '8b611f54-2eb1-4a8a-a020-5ad9b9e5fe6a'),
(19, NULL, 'app', 'm160707_000001_rename_richtext_assetsource_setting', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'a4321523-3702-4c69-9279-d3468026c97e'),
(20, NULL, 'app', 'm160708_185142_volume_hasUrls_setting', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '012917d0-b968-4c6e-a459-895a1f81cdd5'),
(21, NULL, 'app', 'm160714_000000_increase_max_asset_filesize', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '70ffec8e-07bc-4175-a73e-905aaa5a07e5'),
(22, NULL, 'app', 'm160727_194637_column_cleanup', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '4b0eb9ca-2dcf-4b45-a5be-6ad3127bdd04'),
(23, NULL, 'app', 'm160804_110002_userphotos_to_assets', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'fe76bf51-f894-4655-a6ce-296c9a445422'),
(24, NULL, 'app', 'm160807_144858_sites', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'c17dc187-27a9-4894-9cac-b71ada58e202'),
(25, NULL, 'app', 'm160829_000000_pending_user_content_cleanup', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'fb0cf90a-3c7f-42fe-ad44-365a4d5e2ffe'),
(26, NULL, 'app', 'm160830_000000_asset_index_uri_increase', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '006856ae-6864-4752-8db7-27a9b024e96a'),
(27, NULL, 'app', 'm160912_230520_require_entry_type_id', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '730522a4-d6da-4de3-b384-6422e0d318a7'),
(28, NULL, 'app', 'm160913_134730_require_matrix_block_type_id', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'eb8654d1-4f62-4073-8185-80371558ef0d'),
(29, NULL, 'app', 'm160920_174553_matrixblocks_owner_site_id_nullable', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2e6fb8cd-5649-4dc3-9c1e-eaaffa370251'),
(30, NULL, 'app', 'm160920_231045_usergroup_handle_title_unique', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '26fc1a30-1d73-4b9f-953c-7a4ef6fd2571'),
(31, NULL, 'app', 'm160925_113941_route_uri_parts', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'a21e41e6-41aa-4993-b798-22d0245bd2b4'),
(32, NULL, 'app', 'm161006_205918_schemaVersion_not_null', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '02b2f16e-6b64-4fda-a573-0a1b8db2360c'),
(33, NULL, 'app', 'm161007_130653_update_email_settings', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '82a17537-1e22-4b52-a9d3-7e31168b87cc'),
(34, NULL, 'app', 'm161013_175052_newParentId', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '1e4227cc-942d-4635-a556-8474179454f0'),
(35, NULL, 'app', 'm161021_102916_fix_recent_entries_widgets', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'df6dc8b1-6a21-48ff-a393-1cda23e6205a'),
(36, NULL, 'app', 'm161021_182140_rename_get_help_widget', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '83c952ac-a06c-44c6-9cbd-ce2c0766df78'),
(37, NULL, 'app', 'm161025_000000_fix_char_columns', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'f53e9381-2ca7-42b3-b1f2-c22cb4ed47e3'),
(38, NULL, 'app', 'm161029_124145_email_message_languages', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'f9ee31dd-033e-4421-8fa7-dc4d5ef436f6'),
(39, NULL, 'app', 'm161108_000000_new_version_format', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'f4b34bb8-bdf4-4a77-b971-a6da263ec4d5'),
(40, NULL, 'app', 'm161109_000000_index_shuffle', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'c9e5fa0c-c761-4025-b7cd-ded51fef2b72'),
(41, NULL, 'app', 'm161122_185500_no_craft_app', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'a7656b7a-9573-4d1b-b10c-aef985aed588'),
(42, NULL, 'app', 'm161125_150752_clear_urlmanager_cache', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '97ba82d9-8a40-4307-a6dc-d02092e64327'),
(43, NULL, 'app', 'm161220_000000_volumes_hasurl_notnull', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '0984f099-7ae0-4a8b-ad37-b06696b12a78'),
(44, NULL, 'app', 'm170114_161144_udates_permission', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '45c9ee49-7dd4-4e4f-8a98-6233544b1326'),
(45, NULL, 'app', 'm170120_000000_schema_cleanup', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '6dab5ca7-5942-4a88-81c4-72ff07779d80'),
(46, NULL, 'app', 'm170126_000000_assets_focal_point', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '6684644e-8c8e-4d0a-83e3-b2d9668bb2cc'),
(47, NULL, 'app', 'm170206_142126_system_name', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '4a7ff914-2cbb-4947-a8f3-368a3b23b2d2'),
(48, NULL, 'app', 'm170217_044740_category_branch_limits', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2b319b03-b96f-4591-85ed-c85ef57e20cc'),
(49, NULL, 'app', 'm170217_120224_asset_indexing_columns', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '748bbb53-0129-49d9-abbf-c086f37d9987'),
(50, NULL, 'app', 'm170223_224012_plain_text_settings', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '49aad02e-e45e-4095-8b4f-4967ca0404bf'),
(51, NULL, 'app', 'm170227_120814_focal_point_percentage', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'a89ccc5f-9914-4d0e-801a-04a84cc45df4'),
(52, NULL, 'app', 'm170228_171113_system_messages', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'f9cc3932-169c-4b5c-b126-aadc408a9927'),
(53, NULL, 'app', 'm170303_140500_asset_field_source_settings', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'b285f94f-ca41-4b4e-a2b8-2f5095b0cbfe'),
(54, NULL, 'app', 'm170306_150500_asset_temporary_uploads', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '92034f39-10c9-48eb-b4e1-2bdc7d6494ba'),
(55, NULL, 'app', 'm170523_190652_element_field_layout_ids', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '7445cdc1-ce9b-4db2-8be6-ebc8324431f4'),
(56, NULL, 'app', 'm170612_000000_route_index_shuffle', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '4d54ea55-b423-4ee6-a8ea-1e7aaf936623'),
(57, NULL, 'app', 'm170621_195237_format_plugin_handles', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2701cc2e-0e16-43d7-88ad-90537b28c9e7'),
(58, NULL, 'app', 'm170630_161027_deprecation_line_nullable', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '12d0cdf2-8ffd-4eac-841f-1cfdda4282cc'),
(59, NULL, 'app', 'm170630_161028_deprecation_changes', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '82a39e22-f821-4f31-be4c-ddcca0073307'),
(60, NULL, 'app', 'm170703_181539_plugins_table_tweaks', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '87f1eac9-3223-4172-a054-a7973ce46afc'),
(61, NULL, 'app', 'm170704_134916_sites_tables', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '5d0dd34d-2964-4a61-bb6c-cfcc3466c006'),
(62, NULL, 'app', 'm170706_183216_rename_sequences', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'f649c4a4-919a-4582-be2c-fa0efcc92c67'),
(63, NULL, 'app', 'm170707_094758_delete_compiled_traits', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'b43bed58-c5b1-4979-830d-67bac24eed06'),
(64, NULL, 'app', 'm170731_190138_drop_asset_packagist', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '1935e299-a9f8-424e-8658-db29c0d1f028'),
(65, NULL, 'app', 'm170810_201318_create_queue_table', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'cb82f422-bb66-4720-8055-395c198c1eef'),
(66, NULL, 'app', 'm170903_192801_longblob_for_queue_jobs', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '881dc51f-8a64-442a-84d1-5050655304e1'),
(67, NULL, 'app', 'm170914_204621_asset_cache_shuffle', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '0e6b4f96-2d79-4a95-b6ed-a1e8bc213085'),
(68, NULL, 'app', 'm171011_214115_site_groups', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'cb24fc6d-6c34-443e-8ffa-e988c21b4f4c'),
(69, NULL, 'app', 'm171012_151440_primary_site', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'a6b1387d-e40c-4862-8d1e-50bc6424f84c'),
(70, NULL, 'app', 'm171013_142500_transform_interlace', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '7592a4ec-116e-4d5a-b330-c847e5364b4a'),
(71, NULL, 'app', 'm171016_092553_drop_position_select', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '457110f8-505d-4d3d-8cd8-131430acad3a'),
(72, NULL, 'app', 'm171016_221244_less_strict_translation_method', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'b2fc6fd1-67c7-4f47-a2c0-14c87eb28124'),
(73, NULL, 'app', 'm171107_000000_assign_group_permissions', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'bfbbc171-4271-4225-b905-ee41af1b0cfa'),
(74, NULL, 'app', 'm171117_000001_templatecache_index_tune', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '988d8f86-6a56-43a6-a3e7-ea3a734dc441'),
(75, NULL, 'app', 'm171126_105927_disabled_plugins', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'f7436c1f-9dc6-497c-b516-96d21583c52c'),
(76, NULL, 'app', 'm171130_214407_craftidtokens_table', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '613c0970-e712-4943-ac0f-621828d0527f'),
(77, NULL, 'app', 'm171202_004225_update_email_settings', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '3d89b8c9-106c-42ae-9a97-6a9a9f1881a3'),
(78, NULL, 'app', 'm171204_000001_templatecache_index_tune_deux', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '3e41f522-8e21-44ce-808e-5903aa1490f3'),
(79, NULL, 'app', 'm171205_130908_remove_craftidtokens_refreshtoken_column', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '9e8011fb-f137-48ae-8231-cad491f22f6b'),
(80, NULL, 'app', 'm171218_143135_longtext_query_column', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'a96f3adf-55ee-4be2-93ed-3416534ebe97'),
(81, NULL, 'app', 'm171231_055546_environment_variables_to_aliases', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '9c064356-24a5-4c3e-8e8a-cec4d2a2010b'),
(82, NULL, 'app', 'm180113_153740_drop_users_archived_column', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'cafeb10b-20e8-442c-8fe1-842e9e436b42'),
(83, NULL, 'app', 'm180122_213433_propagate_entries_setting', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'b2a0f773-c1e6-4961-910e-b30306f51a20'),
(84, NULL, 'app', 'm180124_230459_fix_propagate_entries_values', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '009159e5-eb4a-4207-9d79-2cb0243935ee'),
(85, NULL, 'app', 'm180128_235202_set_tag_slugs', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'c4d57657-0f79-4a0b-a7f7-55219e0c2abc'),
(86, NULL, 'app', 'm180202_185551_fix_focal_points', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'baf2a308-d29a-4030-971a-f1f67a0009c3'),
(87, NULL, 'app', 'm180217_172123_tiny_ints', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '84349d12-26db-4f79-a415-ed29eadd9ac6'),
(88, NULL, 'app', 'm180321_233505_small_ints', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'e51d9ce9-641d-4d42-a126-6dfde8b5a900'),
(89, NULL, 'app', 'm180328_115523_new_license_key_statuses', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '0490c08b-d8f0-403a-9022-54029b17a6d1'),
(90, NULL, 'app', 'm180404_182320_edition_changes', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'e12bcc5e-b478-4ca6-b5f9-64822d6d36b2'),
(91, NULL, 'app', 'm180411_102218_fix_db_routes', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'b66bcae0-bc9c-4ba1-8a23-253e5c1e49e0'),
(92, NULL, 'app', 'm180416_205628_resourcepaths_table', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '0c7944ea-55dc-4be7-b917-7d6bdedf2dd5'),
(93, NULL, 'app', 'm180418_205713_widget_cleanup', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '8486bbd2-42f9-4377-a359-a5b6d7842f85'),
(94, NULL, 'app', 'm180425_203349_searchable_fields', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '047c6acd-9f16-40e1-bd04-c584beeeddec'),
(95, NULL, 'app', 'm180516_153000_uids_in_field_settings', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '9b375539-3734-4345-9cc0-7a575241c963'),
(96, NULL, 'app', 'm180517_173000_user_photo_volume_to_uid', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '1c922b1a-e290-4cfc-b19f-adb9c8509e20'),
(97, NULL, 'app', 'm180518_173000_permissions_to_uid', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '089803e5-5387-4c65-b55d-1b8b776e4607'),
(98, NULL, 'app', 'm180520_173000_matrix_context_to_uids', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '0ea8be8e-271c-4ae4-ba5f-16ebbbf0e932'),
(99, NULL, 'app', 'm180521_172900_project_config_table', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '06201202-d0f3-40a1-a47c-cdde602c8bf2'),
(100, NULL, 'app', 'm180521_173000_initial_yml_and_snapshot', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '61bb4e0a-3bc7-4674-b8b7-f33107cc6b03'),
(101, NULL, 'app', 'm180731_162030_soft_delete_sites', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '21d78d76-3944-412d-b04e-d1986b7518b8'),
(102, NULL, 'app', 'm180810_214427_soft_delete_field_layouts', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '0f14be75-245c-4552-91ce-e709263b5ba0'),
(103, NULL, 'app', 'm180810_214439_soft_delete_elements', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '3846023b-a95b-402c-b67f-a3a4c7f4537c'),
(104, NULL, 'app', 'm180824_193422_case_sensitivity_fixes', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '11dd3ef6-e9a3-4524-a0ac-63846134df7c'),
(105, NULL, 'app', 'm180901_151639_fix_matrixcontent_tables', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '608edcb5-df84-4ba6-8bee-e1e2d9b20558'),
(106, NULL, 'app', 'm180904_112109_permission_changes', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '24e9b0c9-bdd4-40ea-a040-f24e7e8ce892'),
(107, NULL, 'app', 'm180910_142030_soft_delete_sitegroups', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'ca6e2bb9-8f3e-4415-ae1f-0781cd7a32a5'),
(108, NULL, 'app', 'm181011_160000_soft_delete_asset_support', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '95469cbe-4e1e-4598-b93a-649fef82e3d1'),
(109, NULL, 'app', 'm181016_183648_set_default_user_settings', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'b98b9fc2-30db-4069-bc38-3b5b294c09b5'),
(110, NULL, 'app', 'm181017_225222_system_config_settings', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '39efcc0a-4118-4c69-9aa1-6a462b340b1d'),
(111, NULL, 'app', 'm181018_222343_drop_userpermissions_from_config', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'a79b3b56-e8eb-4c53-b62f-faedb1c42889'),
(112, NULL, 'app', 'm181029_130000_add_transforms_routes_to_config', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'babab12c-a964-4a9a-8874-e111cf5960f0'),
(113, NULL, 'app', 'm181112_203955_sequences_table', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '415c62d7-d157-478c-8f9d-976e0ec8a81d'),
(114, NULL, 'app', 'm181121_001712_cleanup_field_configs', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '09f97520-f74c-49e2-a919-58916aaade65'),
(115, NULL, 'app', 'm181128_193942_fix_project_config', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '1a1006ff-3f48-4614-a974-76b3f9730ace'),
(116, NULL, 'app', 'm181130_143040_fix_schema_version', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '414fecdf-8fa4-4544-bebb-da35b172b0db'),
(117, NULL, 'app', 'm181211_143040_fix_entry_type_uids', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'ef605d34-07c1-422d-a94e-ddc65c2e71fd'),
(118, NULL, 'app', 'm181213_102500_config_map_aliases', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '1352eecd-3f8b-4b64-9263-ce4654dd164e'),
(119, NULL, 'app', 'm181217_153000_fix_structure_uids', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'c7e07bc3-0d22-48c5-828d-d47a1a1a05a2'),
(120, NULL, 'app', 'm190104_152725_store_licensed_plugin_editions', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'b955bc37-e179-4e10-9137-5451c5b61942'),
(121, NULL, 'app', 'm190108_110000_cleanup_project_config', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'c49bcf55-bdfc-4064-acea-039a7b4b6500'),
(122, NULL, 'app', 'm190108_113000_asset_field_setting_change', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '767dc898-9761-4623-8195-076d2d64df66'),
(123, NULL, 'app', 'm190109_172845_fix_colspan', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '75e18eb4-9482-47e7-afa4-2c1870610541'),
(124, NULL, 'app', 'm190110_150000_prune_nonexisting_sites', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'faf00574-c42c-4db7-925d-62058e6305a7'),
(125, NULL, 'app', 'm190110_214819_soft_delete_volumes', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'a92a8ec7-3f6d-4b05-9c33-82faf5cc32a7'),
(126, NULL, 'app', 'm190112_124737_fix_user_settings', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'a791680b-1edd-45ef-90da-fecfffcf8d57'),
(127, NULL, 'app', 'm190112_131225_fix_field_layouts', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '4fcc328d-a9af-4069-b2c6-25d44bfd899a'),
(128, NULL, 'app', 'm190112_201010_more_soft_deletes', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '94862de1-5ed7-4d47-9956-48bb905c89bb'),
(129, NULL, 'app', 'm190114_143000_more_asset_field_setting_changes', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'e220da72-3aa8-40f8-9708-d6289179e708'),
(130, NULL, 'app', 'm190121_120000_rich_text_config_setting', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '32bc1d71-f7e6-43ee-af77-aa32927eb24a'),
(131, NULL, 'app', 'm190125_191628_fix_email_transport_password', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'cf2b5647-4251-42bb-b085-96a3546bfdde'),
(132, NULL, 'app', 'm190128_181422_cleanup_volume_folders', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '36640801-5665-4f29-a03f-10034633ccc3'),
(133, NULL, 'app', 'm190205_140000_fix_asset_soft_delete_index', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '3d6f7c04-f3f4-411f-8320-df4d85f0ad33'),
(134, NULL, 'app', 'm190208_140000_reset_project_config_mapping', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'dc246500-333b-4b87-a8d7-55eda822f491'),
(135, NULL, 'app', 'm190218_143000_element_index_settings_uid', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '1722ee75-9781-4f1b-88f7-bb4ebfe3448e'),
(136, NULL, 'app', 'm190312_152740_element_revisions', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'e2ba153d-12b3-4770-873b-8fba2ed64a58'),
(137, NULL, 'app', 'm190327_235137_propagation_method', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'da9ead0d-ff83-4d7a-a840-5a38a64296cd'),
(138, NULL, 'app', 'm190401_223843_drop_old_indexes', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '1165ad95-269b-4fd3-8b0d-93847244097f'),
(139, NULL, 'app', 'm190416_014525_drop_unique_global_indexes', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2a91f298-0c65-4a31-9488-fad31bd219f4'),
(140, NULL, 'app', 'm190417_085010_add_image_editor_permissions', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '908bbb98-a2b9-43b9-ba3e-171b40dbf562'),
(141, NULL, 'app', 'm190502_122019_store_default_user_group_uid', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '791f1db6-036e-41e7-894f-3884be8bb6d0'),
(142, NULL, 'app', 'm190504_150349_preview_targets', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '5206bfdb-fd32-4aa0-ba1d-8194f3f0aa65'),
(143, NULL, 'app', 'm190516_184711_job_progress_label', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '78a2ab49-9062-4ed2-9ed5-31ef47575427'),
(144, NULL, 'app', 'm190523_190303_optional_revision_creators', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'd20f4418-64b2-49a3-b6bb-1ed44d82711c'),
(145, NULL, 'app', 'm190529_204501_fix_duplicate_uids', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '1641d93a-7e5f-475e-b42a-6a7bf0f4b704'),
(146, NULL, 'app', 'm190605_223807_unsaved_drafts', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'a01dcea3-9255-4e6f-83c5-874c1c3d078e'),
(147, NULL, 'app', 'm190607_230042_entry_revision_error_tables', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'a80fef29-2851-472a-b2de-d58256ce8e43'),
(148, NULL, 'app', 'm190608_033429_drop_elements_uid_idx', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '5537347d-fdea-43aa-9593-35e8a516d4a3'),
(149, NULL, 'app', 'm190617_164400_add_gqlschemas_table', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '4f70793d-8845-44aa-b0c3-557aa04552b0'),
(150, NULL, 'app', 'm190624_234204_matrix_propagation_method', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '3234ae0c-2898-4fe3-8c60-98a67fa6d00a'),
(151, NULL, 'app', 'm190711_153020_drop_snapshots', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '9f5120df-3288-4b59-9fe6-8f85cdf4f272'),
(152, NULL, 'app', 'm190712_195914_no_draft_revisions', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '9db3d1f5-182c-4bc3-af96-5e7d6d8a9828'),
(153, NULL, 'app', 'm190723_140314_fix_preview_targets_column', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '8cd6994a-2064-4d8a-8eb0-f964903ea890'),
(154, NULL, 'app', 'm190820_003519_flush_compiled_templates', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', 'f885144b-8a9a-48ed-9ff6-f085312cb99b'),
(155, NULL, 'app', 'm190823_020339_optional_draft_creators', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '24d4c7f9-f39a-484b-9853-c800a9f30e38'),
(156, NULL, 'app', 'm190913_152146_update_preview_targets', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '828c2a2e-c9cd-4872-af02-9b71485698c7'),
(157, NULL, 'app', 'm191107_122000_add_gql_project_config_support', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '85410351-bb4b-47ac-84cf-b2bd99d66ec3'),
(158, NULL, 'app', 'm191204_085100_pack_savable_component_settings', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '26de0f1d-667b-4709-83bd-5c9f61e8bb1d'),
(159, NULL, 'app', 'm191206_001148_change_tracking', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '21d7b00f-63c5-4627-adb2-5fe3f7f25246'),
(160, NULL, 'app', 'm191216_191635_asset_upload_tracking', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '830860ae-e8cc-403a-a787-73163aa8be5c'),
(161, NULL, 'app', 'm191222_002848_peer_asset_permissions', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '4cf0f083-6349-4347-bd53-8e6f7a66e167'),
(162, NULL, 'app', 'm200127_172522_queue_channels', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '6e3fabf4-da1b-4106-acfc-3f61f3d28d24'),
(163, NULL, 'app', 'm200211_175048_truncate_element_query_cache', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '0ade4014-93ee-4c88-98d0-3b42052e0865'),
(164, NULL, 'app', 'm200213_172522_new_elements_index', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '8f345a84-8ce2-43e9-b41e-559d9d21323a'),
(165, NULL, 'app', 'm200228_195211_long_deprecation_messages', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '593ee154-caed-4d5d-80c6-5c40bcfbba38'),
(166, NULL, 'app', 'm200715_113400_transform_index_error_flag', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 13:15:30', '26d42215-302e-4d67-99b2-5ac2e8290ddc');

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
('dateModified', '1595858980'),
('email.fromEmail', '\"jsosa@heyblackmagic.com\"'),
('email.fromName', '\"Hopscotch\"'),
('email.transportType', '\"craft\\\\mail\\\\transportadapters\\\\Sendmail\"'),
('fieldGroups.1900278b-fbd9-4840-8e1f-c1eba29aa8aa.name', '\"Common\"'),
('sections.eadb3e6b-cdf7-457f-9780-97d389f823ee.enableVersioning', 'true'),
('sections.eadb3e6b-cdf7-457f-9780-97d389f823ee.entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.handle', '\"home\"'),
('sections.eadb3e6b-cdf7-457f-9780-97d389f823ee.entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.hasTitleField', 'false'),
('sections.eadb3e6b-cdf7-457f-9780-97d389f823ee.entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.name', '\"Home\"'),
('sections.eadb3e6b-cdf7-457f-9780-97d389f823ee.entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.sortOrder', '1'),
('sections.eadb3e6b-cdf7-457f-9780-97d389f823ee.entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.titleFormat', '\"{section.name|raw}\"'),
('sections.eadb3e6b-cdf7-457f-9780-97d389f823ee.entryTypes.32984911-51e5-46ce-8b9e-68f185f74723.titleLabel', 'null'),
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
('system.edition', '\"solo\"'),
('system.live', 'true'),
('system.name', '\"Hopscotch\"'),
('system.schemaVersion', '\"3.4.11\"'),
('system.timeZone', '\"America/Los_Angeles\"'),
('users.allowPublicRegistration', 'false'),
('users.defaultGroup', 'null'),
('users.photoSubpath', '\"\"'),
('users.photoVolumeUid', 'null'),
('users.requireEmailVerification', 'true');

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
('1d2a698', '@lib/xregexp'),
('2a29b3ea', '@app/web/assets/admintable/dist'),
('3c18f191', '@app/web/assets/editsection/dist'),
('4728ce68', '@lib/fileupload'),
('5165efc7', '@lib/d3'),
('5864f354', '@lib/jquery-touch-events'),
('5fc0cf96', '@lib/picturefill'),
('62d8f841', '@lib/garnishjs'),
('74ec77ba', '@app/web/assets/dashboard/dist'),
('779e2c7f', '@lib/fabric'),
('869bdf80', '@lib/axios'),
('8c4c9fc9', '@lib/jquery-ui'),
('94165c15', '@app/web/assets/updateswidget/dist'),
('9a84f0d4', '@app/web/assets/craftsupport/dist'),
('aaac1e7b', '@app/web/assets/recententries/dist'),
('ab707cf5', '@lib/vue'),
('b3df2c88', '@app/web/assets/login/dist'),
('b7e139f6', '@app/web/assets/cp/dist'),
('bbee212', '@lib/selectize'),
('c2e5046c', '@lib/velocity'),
('cefa7248', '@app/web/assets/feed/dist'),
('d36af311', '@bower/jquery/dist'),
('dec2ab84', '@lib/jquery.payment'),
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
(1, 2, 1, 1, NULL);

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
(1, 'firstname', 0, 1, ''),
(1, 'lastname', 0, 1, ''),
(1, 'fullname', 0, 1, ''),
(1, 'email', 0, 1, ' jsosa heyblackmagic com '),
(1, 'slug', 0, 1, ''),
(2, 'title', 0, 1, ' home '),
(2, 'slug', 0, 1, ' home ');

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
(1, NULL, 'Home', 'home', 'single', 1, 'all', NULL, '2020-07-27 14:09:40', '2020-07-27 14:09:40', NULL, 'eadb3e6b-cdf7-457f-9780-97d389f823ee');

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
(1, 1, 1, 1, '__home__', 'templates/home', 1, '2020-07-27 14:09:40', '2020-07-27 14:09:40', '46a37baa-cafe-430a-b2a7-cbb8d11d4bbe');

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
(2, 1, 'yCOJC_fI9uDkk9sNLy2A-Jf-jdCNKi8swzundxfkFX_Kg2Yl2Wvxkf7Ng_-gpNs-ZkH0J30Es6hvlwe644mZHBzc9nssoMVNCS7V', '2020-07-27 14:09:19', '2020-07-27 14:09:41', 'e7e29d77-14f0-420c-bfc6-2880dd80e8d2');

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

INSERT INTO `sites` (`id`, `groupId`, `primary`, `name`, `handle`, `language`, `hasUrls`, `baseUrl`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, 1, 'Hopscotch', 'default', 'en-US', 1, '$DEFAULT_SITE_URL', 1, '2020-07-27 13:15:29', '2020-07-27 13:15:29', NULL, 'fb7efba8-b557-46fd-82c6-4e761b57c79b');

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
(1, '{\"language\":\"en-US\"}');

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
(1, 'admin_hops', NULL, NULL, NULL, 'jsosa@heyblackmagic.com', '$2y$13$h1Jt/cWyc.hrceVw2wWBGeTARu1tBjpniJ2OF42cIhWrI6NGk/KHa', 1, 0, 0, 0, '2020-07-27 14:09:19', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 0, '2020-07-27 13:15:30', '2020-07-27 13:15:30', '2020-07-27 14:09:19', 'c28c69b6-7ff9-48fd-a544-5662ab8d4e0d');

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
  ADD UNIQUE KEY `assettransforms_name_unq_idx` (`name`),
  ADD UNIQUE KEY `assettransforms_handle_unq_idx` (`handle`);

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
  ADD UNIQUE KEY `fieldgroups_name_unq_idx` (`name`);

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
  ADD UNIQUE KEY `fields_handle_context_unq_idx` (`handle`,`context`),
  ADD KEY `fields_groupId_idx` (`groupId`),
  ADD KEY `fields_context_idx` (`context`);

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
  ADD UNIQUE KEY `matrixblocktypes_name_fieldId_unq_idx` (`name`,`fieldId`),
  ADD UNIQUE KEY `matrixblocktypes_handle_fieldId_unq_idx` (`handle`,`fieldId`),
  ADD KEY `matrixblocktypes_fieldId_idx` (`fieldId`),
  ADD KEY `matrixblocktypes_fieldLayoutId_idx` (`fieldLayoutId`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `migrations_pluginId_idx` (`pluginId`),
  ADD KEY `migrations_type_pluginId_idx` (`type`,`pluginId`);

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
  ADD UNIQUE KEY `usergroups_handle_unq_idx` (`handle`),
  ADD UNIQUE KEY `usergroups_name_unq_idx` (`name`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `elements`
--
ALTER TABLE `elements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `elements_sites`
--
ALTER TABLE `elements_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `entrytypes`
--
ALTER TABLE `entrytypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fieldgroups`
--
ALTER TABLE `fieldgroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fieldlayoutfields`
--
ALTER TABLE `fieldlayoutfields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fieldlayouts`
--
ALTER TABLE `fieldlayouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fieldlayouttabs`
--
ALTER TABLE `fieldlayouttabs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fields`
--
ALTER TABLE `fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `globalsets`
--
ALTER TABLE `globalsets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gqlschemas`
--
ALTER TABLE `gqlschemas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gqltokens`
--
ALTER TABLE `gqltokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `matrixblocktypes`
--
ALTER TABLE `matrixblocktypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `plugins`
--
ALTER TABLE `plugins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `queue`
--
ALTER TABLE `queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `relations`
--
ALTER TABLE `relations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sections_sites`
--
ALTER TABLE `sections_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `volumes`
--
ALTER TABLE `volumes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
-- Constraints for table `migrations`
--
ALTER TABLE `migrations`
  ADD CONSTRAINT `migrations_pluginId_fk` FOREIGN KEY (`pluginId`) REFERENCES `plugins` (`id`) ON DELETE CASCADE;

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
-- Constraints for table `structureelements`
--
ALTER TABLE `structureelements`
  ADD CONSTRAINT `structureelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `structureelements_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `structures` (`id`) ON DELETE CASCADE;

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
