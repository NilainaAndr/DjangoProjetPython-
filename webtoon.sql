-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 10 juin 2025 à 16:25
-- Version du serveur : 9.1.0
-- Version de PHP : 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `webtoon`
--

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add chapter', 7, 'add_chapter'),
(26, 'Can change chapter', 7, 'change_chapter'),
(27, 'Can delete chapter', 7, 'delete_chapter'),
(28, 'Can view chapter', 7, 'view_chapter'),
(29, 'Can add manga', 8, 'add_manga'),
(30, 'Can change manga', 8, 'change_manga'),
(31, 'Can delete manga', 8, 'delete_manga'),
(32, 'Can view manga', 8, 'view_manga'),
(33, 'Can add page', 9, 'add_page'),
(34, 'Can change page', 9, 'change_page'),
(35, 'Can delete page', 9, 'delete_page'),
(36, 'Can view page', 9, 'view_page');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$5jylQDycukICIuOMUs33Y2$hlkwEXUmFPkRD/GJsaOaz5xXet4QqPg+IXTxQKLtjxI=', '2025-06-05 15:07:49.675357', 0, 'nilaina_andriane', '', '', 'nilainaandriane@gmail.com', 0, 1, '2025-06-05 14:51:28.358062'),
(2, 'pbkdf2_sha256$260000$F0Nj8jAqQsQ14ZqX6dR2CP$KZZRAfUEejQSQYiBX1VHmQdPDmFCZqYMIwOvAvz6Cm0=', '2025-06-05 20:04:24.663490', 1, 'admin', '', '', 'adminwebtoon@gmail.com', 1, 1, '2025-06-05 19:33:33.619897'),
(3, 'pbkdf2_sha256$260000$7dgZNkzkLWnlRIMvePtfuP$/1+LelEQI7kZFlhAukiApc2x+Sds5KNLNdqZfBC6OoA=', '2025-06-10 15:15:13.499716', 0, 'kaloina', '', '', 'kaloina@gmail.com', 0, 1, '2025-06-10 15:15:12.604554');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ;

--
-- Déchargement des données de la table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2025-06-05 20:16:29.970487', '1', 'Foutue Romance', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"chapter\", \"object\": \"Foutue Romance - Chapitre 1\"}}]', 8, 2),
(2, '2025-06-05 20:25:46.111090', '2', 'Foutue Romance - Chapitre 1', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (1)\"}}]', 7, 2),
(3, '2025-06-05 21:52:04.376180', '1', 'Foutue Romance - Chapitre 1', 3, '', 7, 2),
(4, '2025-06-05 21:52:42.139616', '2', 'Foutue Romance - Chapitre 1', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 7, 2),
(5, '2025-06-05 22:06:34.078213', '2', 'Dangereux sourire', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"chapter\", \"object\": \"Dangereux sourire - Chapitre 1\"}}]', 8, 2),
(6, '2025-06-05 22:12:46.904826', '3', 'Dangereux sourire - Chapitre 1', 2, '[{\"added\": {\"name\": \"page\", \"object\": \"Page object (2)\"}}]', 7, 2),
(7, '2025-06-06 20:41:40.290065', '3', 'Eaternal Nocturnal', 1, '[{\"added\": {}}]', 8, 2),
(8, '2025-06-08 20:18:21.943978', '4', 'Dark  Moon: The blood Altar', 1, '[{\"added\": {}}]', 8, 2),
(9, '2025-06-08 21:08:12.089670', '5', 'J\'ai élevé une bête', 1, '[{\"added\": {}}]', 8, 2),
(10, '2025-06-08 21:43:56.888570', '6', 'Pharaon\'s Concubine', 1, '[{\"added\": {}}]', 8, 2),
(11, '2025-06-08 21:47:21.466086', '6', 'Pharaon\'s Concubine', 2, '[{\"added\": {\"name\": \"chapter\", \"object\": \"Pharaon\'s Concubine - Chapitre 1\"}}]', 8, 2),
(12, '2025-06-08 21:48:29.708802', '3', 'Page object (3)', 1, '[{\"added\": {}}]', 9, 2),
(13, '2025-06-08 21:48:51.254321', '4', 'Page object (4)', 1, '[{\"added\": {}}]', 9, 2),
(14, '2025-06-08 21:49:39.607184', '5', 'Page object (5)', 1, '[{\"added\": {}}]', 9, 2),
(15, '2025-06-08 21:50:26.626283', '6', 'Page object (6)', 1, '[{\"added\": {}}]', 9, 2),
(16, '2025-06-08 21:51:07.411814', '7', 'Page object (7)', 1, '[{\"added\": {}}]', 9, 2),
(17, '2025-06-08 21:51:23.795968', '8', 'Page object (8)', 1, '[{\"added\": {}}]', 9, 2),
(18, '2025-06-08 21:52:29.149654', '9', 'Page object (9)', 1, '[{\"added\": {}}]', 9, 2),
(19, '2025-06-08 21:55:18.292005', '10', 'Page object (10)', 1, '[{\"added\": {}}]', 9, 2),
(20, '2025-06-08 21:56:04.294600', '11', 'Page object (11)', 1, '[{\"added\": {}}]', 9, 2),
(21, '2025-06-08 21:56:37.479647', '12', 'Page object (12)', 1, '[{\"added\": {}}]', 9, 2),
(22, '2025-06-08 21:57:51.900423', '13', 'Page object (13)', 1, '[{\"added\": {}}]', 9, 2),
(23, '2025-06-08 21:58:18.568373', '14', 'Page object (14)', 1, '[{\"added\": {}}]', 9, 2),
(24, '2025-06-08 21:58:55.087177', '15', 'Page object (15)', 1, '[{\"added\": {}}]', 9, 2),
(25, '2025-06-08 21:59:13.671368', '16', 'Page object (16)', 1, '[{\"added\": {}}]', 9, 2),
(26, '2025-06-08 22:00:13.524600', '17', 'Page object (17)', 1, '[{\"added\": {}}]', 9, 2),
(27, '2025-06-08 22:00:29.508900', '18', 'Page object (18)', 1, '[{\"added\": {}}]', 9, 2),
(28, '2025-06-08 22:00:45.510955', '19', 'Page object (19)', 1, '[{\"added\": {}}]', 9, 2),
(29, '2025-06-08 22:01:28.692724', '20', 'Page object (20)', 1, '[{\"added\": {}}]', 9, 2),
(30, '2025-06-08 22:01:47.012899', '21', 'Page object (21)', 1, '[{\"added\": {}}]', 9, 2),
(31, '2025-06-08 22:02:04.013782', '22', 'Page object (22)', 1, '[{\"added\": {}}]', 9, 2),
(32, '2025-06-08 22:02:29.598760', '23', 'Page object (23)', 1, '[{\"added\": {}}]', 9, 2),
(33, '2025-06-08 22:02:45.866549', '24', 'Page object (24)', 1, '[{\"added\": {}}]', 9, 2),
(34, '2025-06-08 22:03:12.584216', '25', 'Page object (25)', 1, '[{\"added\": {}}]', 9, 2),
(35, '2025-06-08 22:03:43.217145', '26', 'Page object (26)', 1, '[{\"added\": {}}]', 9, 2),
(36, '2025-06-08 22:03:57.686782', '27', 'Page object (27)', 1, '[{\"added\": {}}]', 9, 2),
(37, '2025-06-08 22:04:20.335614', '28', 'Page object (28)', 1, '[{\"added\": {}}]', 9, 2),
(38, '2025-06-08 22:04:41.322402', '29', 'Page object (29)', 1, '[{\"added\": {}}]', 9, 2),
(39, '2025-06-08 22:11:23.595133', '13', 'Page object (13)', 3, '', 9, 2),
(40, '2025-06-08 22:22:29.896773', '7', 'J\'irai te voir dans ma prochaine vie', 1, '[{\"added\": {}}]', 8, 2),
(41, '2025-06-08 22:32:13.111377', '8', 'An Unseemly lady', 1, '[{\"added\": {}}]', 8, 2),
(42, '2025-06-08 22:37:57.029880', '9', 'unTOUCHable', 1, '[{\"added\": {}}]', 8, 2),
(43, '2025-06-08 22:44:01.699669', '10', 'L\'impératrice remariée', 1, '[{\"added\": {}}]', 8, 2),
(44, '2025-06-09 19:06:13.110975', '3', 'Dangereux sourire - Chapitre 1', 2, '[{\"added\": {\"name\": \"page\", \"object\": \"Page object (30)\"}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (31)\"}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (32)\"}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (33)\"}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (34)\"}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (35)\"}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (36)\"}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (37)\"}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (38)\"}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (39)\"}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (40)\"}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (41)\"}}, {\"changed\": {\"name\": \"page\", \"object\": \"Page object (2)\", \"fields\": [\"Image\"]}}]', 7, 2),
(45, '2025-06-10 12:13:35.082202', '5', 'Dark  Moon: The blood Altar - Chapitre 1', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (42)\"}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (43)\"}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (44)\"}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (45)\"}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (46)\"}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (47)\"}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (48)\"}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (49)\"}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (50)\"}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (51)\"}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (52)\"}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (53)\"}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (54)\"}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (55)\"}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (56)\"}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (57)\"}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (58)\"}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (59)\"}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (60)\"}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (61)\"}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (62)\"}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (63)\"}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (64)\"}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (65)\"}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (66)\"}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (67)\"}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (68)\"}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (69)\"}}]', 7, 2),
(46, '2025-06-10 12:49:32.811075', '6', 'Eaternal Nocturnal - Chapitre 1', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (70)\"}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (71)\"}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (72)\"}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (73)\"}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (74)\"}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (75)\"}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (76)\"}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (77)\"}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (78)\"}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (79)\"}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (80)\"}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (81)\"}}]', 7, 2),
(47, '2025-06-10 14:55:17.778247', '7', 'An Unseemly lady - Chapitre 1', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (82)\"}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (83)\"}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (84)\"}}, {\"added\": {\"name\": \"page\", \"object\": \"Page object (85)\"}}]', 7, 2);

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'reader', 'chapter'),
(8, 'reader', 'manga'),
(9, 'reader', 'page');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-06-05 14:41:20.126465'),
(2, 'auth', '0001_initial', '2025-06-05 14:41:24.647941'),
(3, 'admin', '0001_initial', '2025-06-05 14:41:25.824855'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-06-05 14:41:25.840445'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-06-05 14:41:25.864890'),
(6, 'contenttypes', '0002_remove_content_type_name', '2025-06-05 14:41:26.356547'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-06-05 14:41:26.587246'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-06-05 14:41:26.833617'),
(9, 'auth', '0004_alter_user_username_opts', '2025-06-05 14:41:26.833617'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-06-05 14:41:27.068004'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-06-05 14:41:27.068004'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-06-05 14:41:27.085483'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-06-05 14:41:27.350151'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-06-05 14:41:27.554160'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-06-05 14:41:27.877953'),
(16, 'auth', '0011_update_proxy_permissions', '2025-06-05 14:41:27.893540'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-06-05 14:41:28.270506'),
(18, 'reader', '0001_initial', '2025-06-05 14:41:30.043990'),
(19, 'sessions', '0001_initial', '2025-06-05 14:41:30.279440');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('y9babyvhqawr3mmjxbrsqv7kveb99biv', '.eJxVjEEOwiAQRe_C2pCWKYy4dN8zEAZmbNVAUtqV8e7apAvd_vfef6kQt3UKW-MlzFldFKjT70YxPbjsIN9juVWdalmXmfSu6IM2PdbMz-vh_h1MsU3f2rBEI_2Ag2dBArLQRTBIGTr0gwMrnBM5JnFntIgiHnoBEeTswav3B_DIOFk:1uP0gz:OL0IwR4_rQa3P8VytYG28iHvFcwXqqd2Nia_BfDcu4Y', '2025-06-24 15:15:13.501719'),
('vctw37zlwk8xc5l87g75t42a8jglz721', '.eJxVzDsOwjAQBNC7uEaW14l_lPScwdrsLjiAEilOKsTdcaQU0M6bmbfKuK0lb1WWPLI6K6tOv9mA9JRpB37gdJ81zdO6jIPeK_rQqq8zy-tydP8OCtbS1sKUXABxsYck1jsB8EyWQUwgRt8QQ9-Rt10AgijplrrgojGpCarPF9UsNxw:1uNGp6:STpnriFEdKr62dy_cU0Le2JVuMxF3DPlBmsFLNBT_l8', '2025-06-19 20:04:24.710550');

-- --------------------------------------------------------

--
-- Structure de la table `reader_chapter`
--

DROP TABLE IF EXISTS `reader_chapter`;
CREATE TABLE IF NOT EXISTS `reader_chapter` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `number` int NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `manga_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `reader_chapter_manga_id_82a965b3` (`manga_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `reader_chapter`
--

INSERT INTO `reader_chapter` (`id`, `title`, `number`, `created_at`, `manga_id`) VALUES
(3, 'La rentrer', 1, '2025-06-05 22:06:34.077214', 2),
(2, 'Première concentre', 1, '2025-06-05 20:25:46.072989', 1),
(4, 'Prologue', 1, '2025-06-08 21:47:21.466086', 6),
(5, 'Première Rencotre', 1, '2025-06-10 12:13:34.397407', 4),
(6, 'L\'insomniaque', 1, '2025-06-10 12:49:32.701118', 3),
(7, 'Prologue', 1, '2025-06-10 14:55:17.662936', 8);

-- --------------------------------------------------------

--
-- Structure de la table `reader_manga`
--

DROP TABLE IF EXISTS `reader_manga`;
CREATE TABLE IF NOT EXISTS `reader_manga` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `cover` varchar(100) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `reader_manga`
--

INSERT INTO `reader_manga` (`id`, `title`, `description`, `cover`, `created_at`) VALUES
(1, 'Foutue Romance', 'Une histoire surnaturelle d\'une fille qui devient indépendante, trouve le logement de ses rêves et découvre qu\'il est hante par un bel étranger spectral venu d\'une autre dimension. Bien sur il ne peut pas le voir et elle ne peut  pas le toucher, mais qui a dit que chaque relation démarrait parfaitement?', 'covers/20220723_161651.jpg', '2025-06-05 20:16:29.945565'),
(2, 'Dangereux sourire', 'Etre beau, ce n\'est pas facile. Giyu An est un lycéen beau et célèbre. Marre d\'être célèbre, il décide de changer de lycée pour vivre une vie ordinaire ! Pourra-t-il mener une vie paisible à l\'école  comme il le souhaitait ?', 'covers/dangereux_sourire_15262.jpg', '2025-06-05 22:06:34.075216'),
(3, 'Eaternal Nocturnal', 'Eve  une insomniaque qui retrouve le sommeil grâce à un homme mystérieux apparaissant dans ses rêves. Ce dernier, un \"mangeur de rêves\" nommé Dae, est une entité qui devrait rester invisible, mais qui semble visible par Eve. Leur rencontre change leurs vies, et l\'histoire explore des thèmes comme le deuil, la confiance en soi et l\'amour.', 'covers/33Eaternal2BNocturnal_Launch_mobile_landingpage.jpg', '2025-06-06 20:41:40.289066'),
(4, 'Dark  Moon: The blood Altar', 'Suha a toujours été accusée d\'être un vampire a cause de son don particulier. Elle réussit a entrer a la prestigieuse académie Decelis, connue pour ne pas laisser entrer de vampires dans son enceinte. Là-bas, elle rencontre un groupe de sept garçons aux pouvoir étranges qui décident de s\'occuper d\'elle. Leur destin était peut-être scelle depuis bien plus longtemps qu\'on ne l\'imagine et le monde risque d\'être chamboule par leurs véritables natures.', 'covers/1749322453795.jpg', '2025-06-08 20:18:21.895307'),
(5, 'J\'ai élevé une bête', 'La vie d\'une princesse est un rêve pour certains mais pas pour Blondina, la fille illégitime de l\'empereur qui vient juste d\'arriver au palais et qui ne se sent pas accueillie. Mais heureusement pour elle, un petit chat noir devient son ami, ou du moins c\'est ce qu\'elle croitait...', 'covers/1749412659917.webp', '2025-06-08 21:08:12.089670'),
(6, 'Pharaon\'s Concubine', 'Ivy est une fille que tout le monde aime mais elle ne peut pas parler de l\'amour qu\'elle a pour son frère parce que son frère aime déjà quelqu\'un d\'autre.\r\nDans le désespoir, elle est entrainée dans   l\'Egypte ancienne par un bracelet en forme de serpent d\'amour de trois mille ans. La, elle rencontrer l\'héritier du Pharaon,  un garçon de fête ...', 'covers/1749412659327.jpg', '2025-06-08 21:43:56.887331'),
(7, 'J\'irai te voir dans ma prochaine vie', 'Ji-Eum est une fille qui se rappelle de sa vie antérieure, et c\'est déjà sa 19 -ème vie. Elle est amoureuse de Seo-Ha, mais il y a un petit problème. C\'est que sa plus grande rivale est la qu\'elle était lors de sa 18 -ème vie', 'covers/1749412659408.webp', '2025-06-08 22:22:29.896773'),
(8, 'An Unseemly lady', 'Lili est une enfant noble particulièrement choyée par sa grande sœur Julianne. Or, cette dernière compte bon nombre de soupirants prêts a tout pour conquérir son cœur. C\'est sans compter sur Lili, qui considère qu\'il est de son devoir d\'interférer dans les amours de sa sœur … et ses opinions sont bien tranchées ! Les prétendants l\'ont bien compris , il faudra aussi séduire l\'enfant et à  ce jeu tous les coups sont permis … Mais qui trouvera grâce aux yeux  de la petite lady ?', 'covers/1749412659480.jpg', '2025-06-08 22:32:13.111377'),
(9, 'unTOUCHable', 'Sia Lee est un vampire moderne qui absorbe l\'énergie des humains en les touchants au lieu de boire leur sang . Elle est désespérée de toucher Jiho depuis le jour ou elle a emménagé a coté, mais il est germaphobe. Sia va-t-elle vaincre la mysophobie de Jiho et le toucher ?', 'covers/1749412659698.jpg', '2025-06-08 22:37:57.029880'),
(10, 'L\'impératrice remariée', 'Impératrice de l\'empire de l\'Est, tout était parfait pour Navier, jusqu\'au jour ou l\'Empereur ramène une  concubine, ancienne esclave, Rashta. Tout aurait pu rester parfait, mais l\'Empereur promet a Rashta la place d\'Impératrice. Alors Navier ne voit plus qu\'une possibilité suite a sa demande de divorce : se remarier avec le roi du royaume de l\'Ouest.', 'covers/1749412659843.jpg', '2025-06-08 22:44:01.699669');

-- --------------------------------------------------------

--
-- Structure de la table `reader_page`
--

DROP TABLE IF EXISTS `reader_page`;
CREATE TABLE IF NOT EXISTS `reader_page` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `order` int UNSIGNED NOT NULL,
  `chapter_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `reader_page_chapter_id_01d6d11b` (`chapter_id`)
) ;

--
-- Déchargement des données de la table `reader_page`
--

INSERT INTO `reader_page` (`id`, `image`, `order`, `chapter_id`) VALUES
(1, 'pages/1749151339694.jpg', 1, 2),
(2, 'pages/1749480278620.jpg', 1, 3),
(3, 'pages/1749414669465.jpg', 1, 4),
(4, 'pages/1749414669399.jpg', 2, 4),
(5, 'pages/1749414669331.jpg', 3, 4),
(6, 'pages/1749414669264.jpg', 4, 4),
(7, 'pages/1749414669193.jpg', 5, 4),
(8, 'pages/1749414669122.jpg', 6, 4),
(9, 'pages/1749414669053.jpg', 7, 4),
(10, 'pages/1749414668986.jpg', 8, 4),
(11, 'pages/1749414668918.jpg', 9, 4),
(12, 'pages/1749414668850.jpg', 10, 4),
(14, 'pages/1749414668780_CrDstcu.jpg', 12, 4),
(15, 'pages/1749414668629.jpg', 13, 4),
(16, 'pages/1749414668558.jpg', 14, 4),
(17, 'pages/1749414668485.jpg', 15, 4),
(18, 'pages/1749414668414.jpg', 16, 4),
(19, 'pages/1749414668342.jpg', 17, 4),
(20, 'pages/1749414668272.jpg', 18, 4),
(21, 'pages/1749414668201.jpg', 19, 4),
(22, 'pages/1749414668131.jpg', 20, 4),
(23, 'pages/1749414668061.jpg', 21, 4),
(24, 'pages/1749414667995.jpg', 22, 4),
(25, 'pages/1749414667928.jpg', 23, 4),
(26, 'pages/1749414667860.jpg', 24, 4),
(27, 'pages/1749414667792.jpg', 25, 4),
(28, 'pages/1749414667726.jpg', 26, 4),
(29, 'pages/1749414667655.jpg', 27, 4),
(30, 'pages/1749480278546.jpg', 2, 3),
(31, 'pages/1749480278474.jpg', 3, 3),
(32, 'pages/1749480278403.jpg', 4, 3),
(33, 'pages/1749480278332.jpg', 5, 3),
(34, 'pages/1749480278260.jpg', 6, 3),
(35, 'pages/1749480278189.jpg', 7, 3),
(36, 'pages/1749480278116.jpg', 8, 3),
(37, 'pages/1749480278042.jpg', 9, 3),
(38, 'pages/1749480277969.jpg', 10, 3),
(39, 'pages/1749480277896.jpg', 11, 3),
(40, 'pages/1749480277823.jpg', 12, 3),
(41, 'pages/1749480277750.jpg', 13, 3),
(42, 'pages/1749553318903.jpg', 1, 5),
(43, 'pages/1749553318837.jpg', 2, 5),
(44, 'pages/1749553318769.jpg', 3, 5),
(45, 'pages/1749553318702.jpg', 4, 5),
(46, 'pages/1749553318633.jpg', 5, 5),
(47, 'pages/1749553318564.jpg', 6, 5),
(48, 'pages/1749553318496.jpg', 7, 5),
(49, 'pages/1749553318427.jpg', 8, 5),
(50, 'pages/1749553318358.jpg', 9, 5),
(51, 'pages/1749553318291.jpg', 10, 5),
(52, 'pages/1749553318223.jpg', 11, 5),
(53, 'pages/1749553318154.jpg', 12, 5),
(54, 'pages/1749553318083.jpg', 13, 5),
(55, 'pages/1749553318009.jpg', 14, 5),
(56, 'pages/1749553317931.jpg', 15, 5),
(57, 'pages/1749553317859.jpg', 16, 5),
(58, 'pages/1749553317791.jpg', 17, 5),
(59, 'pages/1749553317722.jpg', 18, 5),
(60, 'pages/1749553317655.jpg', 19, 5),
(61, 'pages/1749553317588.jpg', 20, 5),
(62, 'pages/1749553317519.jpg', 21, 5),
(63, 'pages/1749553317451.jpg', 22, 5),
(64, 'pages/1749553317383.jpg', 23, 5),
(65, 'pages/1749553317314.jpg', 24, 5),
(66, 'pages/1749553317245.jpg', 25, 5),
(67, 'pages/1749553317177.jpg', 26, 5),
(68, 'pages/1749553317110.jpg', 27, 5),
(69, 'pages/1749553317042.jpg', 28, 5),
(70, 'pages/1749555856425.jpg', 1, 6),
(71, 'pages/1749555856352.jpg', 2, 6),
(72, 'pages/1749555856280.jpg', 3, 6),
(73, 'pages/1749555856207.jpg', 4, 6),
(74, 'pages/1749555856134.jpg', 5, 6),
(75, 'pages/1749555856061.jpg', 6, 6),
(76, 'pages/1749555855989.jpg', 7, 6),
(77, 'pages/1749555855916.jpg', 8, 6),
(78, 'pages/1749555855844.jpg', 9, 6),
(79, 'pages/1749555855772.jpg', 10, 6),
(80, 'pages/1749555855699.jpg', 11, 6),
(81, 'pages/1749555855627.jpg', 12, 6),
(82, 'pages/1749563493500.jpg', 1, 7),
(83, 'pages/1749563493431.jpg', 2, 7),
(84, 'pages/1749563493362.jpg', 3, 7),
(85, 'pages/1749563493293.jpg', 4, 7);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
