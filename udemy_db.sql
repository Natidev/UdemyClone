-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2023 at 01:21 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `udemy_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` varchar(30) NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT 0,
  `slug` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `disabled`, `slug`) VALUES
(1, 'Development', 0, 'development'),
(2, 'Business', 0, 'business'),
(3, 'Finance & Accounting', 0, 'finance-accounting'),
(4, 'IT & Software', 0, 'it-software'),
(5, 'Office Productivity', 0, 'office-productivity'),
(6, 'Personal Development', 0, 'personal-development'),
(7, 'Design', 0, 'design'),
(8, 'Marketing', 0, 'marketing'),
(9, 'Lifestyle', 0, 'lifestyle'),
(10, 'Photography & Video', 0, 'photography-video'),
(11, 'Health & Fitness', 0, 'health-fitness'),
(12, 'Music', 0, 'music'),
(13, 'Teaching & Academics', 0, 'teaching-academics'),
(14, 'I don\'t know yet', 0, 'i-dont-know-yet'),
(16, 'another category', 0, 'another-category'),
(17, 'cool category', 0, 'cool-category');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `level_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `price_id` int(11) DEFAULT NULL,
  `promo_link` varchar(1024) DEFAULT NULL,
  `course_image` varchar(1024) DEFAULT NULL,
  `course_image_tmp` varchar(1024) NOT NULL,
  `course_promo_video` varchar(1024) DEFAULT NULL,
  `primary_subject` varchar(100) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `tags` varchar(2048) DEFAULT NULL,
  `congratulations_message` varchar(2048) DEFAULT NULL,
  `welcome_message` varchar(2048) DEFAULT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT 0,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `subtitle` varchar(100) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `csrf_code` varchar(32) NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `trending` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `title`, `description`, `user_id`, `category_id`, `sub_category_id`, `level_id`, `language_id`, `price_id`, `promo_link`, `course_image`, `course_image_tmp`, `course_promo_video`, `primary_subject`, `date`, `tags`, `congratulations_message`, `welcome_message`, `approved`, `published`, `subtitle`, `currency_id`, `csrf_code`, `views`, `trending`) VALUES
(1, 'my test course', '\r\nWhat is Lorem Ipsum?\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n', 1, 4, 0, 2, 21, 1, NULL, 'uploads/courses/1657026221call-center-customer-service-job-animation-vector-design_40876-2656.jpg', '', NULL, 'a test subject', '2022-06-13 10:10:20', NULL, NULL, NULL, 0, 0, 'another good course', 1, '421ef711bc62e73af34ad07445d1f641', 0, 0),
(2, 'photography for beginnerse', 'a description of this course', 1, 10, 0, 1, 21, 1, NULL, 'uploads/courses/1657026261istockphoto-950614324-612x612.jpg', '', NULL, 'Photography', '2022-06-15 21:10:56', NULL, 'congratulatory message', 'a welcome message', 0, 0, 'a subtitle', 1, '3489777883bdcfd04f2cf91b32295871', 0, 0),
(3, 'Node js essentials', '\r\nWhat is Lorem Ipsum?\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n', 1, 4, 0, 1, 21, 1, NULL, 'uploads/courses/1657023201b612344115214be72736121878dc90a7.jpg', '', NULL, 'programming', '2022-07-05 14:13:00', NULL, NULL, NULL, 0, 0, 'an intro to node js', 1, '2a1f0b1a3f4a6f544906e5b78d46d6db', 0, 0),
(4, 'Javescript essentials', '\r\nWhat is Lorem Ipsum?\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n', 1, 4, 0, 1, 21, 1, NULL, 'uploads/courses/16570232991174949_js_react js_logo_react_react native_icon.png', '', NULL, 'coding', '2022-07-05 14:14:47', NULL, NULL, NULL, 0, 0, 'an intor to javascript', 1, '03183e610f49ad6422a563217298e8c7', 0, 0),
(5, 'Personal fitness', 'What is Lorem Ipsum?\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n', 1, 11, 0, 2, 104, 1, NULL, 'uploads/courses/1657025820pexels-photo-3757004.jpeg', '', NULL, 'fitness', '2022-07-05 14:56:44', NULL, NULL, NULL, 0, 0, 'a personal fitness ytraining session', 1, 'd1d0133068aaa4074c961917a93e7c96', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `courses_lectures`
--

CREATE TABLE `courses_lectures` (
  `id` int(11) NOT NULL,
  `uid` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(2048) NOT NULL,
  `file` varchar(1024) NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses_lectures`
--

INSERT INTO `courses_lectures` (`id`, `uid`, `title`, `description`, `file`, `disabled`) VALUES
(1, 1664537224851, 'lec 4 text', 'lec 4 desc text', 'uploads/courses/1682929377pal patrol2 friendship day.mp4', 0),
(2, 1664537224851, 'lex 1', 'lec 1 desc', 'uploads/courses/1682848577pal patrol.mp4', 0),
(3, 1664537207986, 'lec 3', 'lec 3 desc', 'uploads/courses/1682933771MESHASI COMACK_ 3D ANIMATION PORTIFOLIO.mp4', 0),
(4, 1664537224851, 'lec 4', 'lec 4 desc', '', 1),
(5, 1664537207986, 'lec 5', 'lec 5 desc', 'uploads/courses/1682934694MESHASI COMACK_ 3D ANIMATION PORTIFOLIO.mp4', 0),
(6, 1664537207986, 'new lectures', 'another desc', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `courses_meta`
--

CREATE TABLE `courses_meta` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `data_type` varchar(100) NOT NULL,
  `value` varchar(1024) NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT 0,
  `tab` varchar(50) NOT NULL,
  `uid` bigint(20) NOT NULL,
  `description` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses_meta`
--

INSERT INTO `courses_meta` (`id`, `course_id`, `data_type`, `value`, `disabled`, `tab`, `uid`, `description`) VALUES
(1, 5, 'students-learn', 'chapter 1', 0, 'intended-learners', 16637654892625, NULL),
(2, 5, 'students-learn', 'some title', 0, 'intended-learners', 16637654893100, NULL),
(3, 5, 'prerequisites', 'third item', 0, 'intended-learners', 16637654896491, NULL),
(4, 5, 'whose-course', 'more items', 0, 'intended-learners', 16637654899242, NULL),
(5, 5, 'whose-course', 'fourth item', 0, 'intended-learners', 16637654892567, NULL),
(6, 5, 'whose-course', 'another item', 0, 'intended-learners', 16637654899041, NULL),
(7, 5, 'whose-course', 'another item', 0, 'intended-learners', 16637654899320, NULL),
(12, 5, 'curriculum', 'section 01', 0, 'curriculum', 1664537224851, 'description'),
(13, 5, 'curriculum', 'section02', 0, 'curriculum', 1664537207986, 'description02'),
(14, 5, 'lecture', 'lecture 1', 1, 'curriculum', 1668082387244, 'lecture 1 descript'),
(15, 5, 'lecture', 'lecture 2', 1, 'curriculum', 1668082387419, 'lect 2 desc');

-- --------------------------------------------------------

--
-- Table structure for table `course_levels`
--

CREATE TABLE `course_levels` (
  `id` int(11) NOT NULL,
  `level` varchar(30) NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_levels`
--

INSERT INTO `course_levels` (`id`, `level`, `disabled`) VALUES
(1, 'Beginner Level', 0),
(2, 'Intermediate Level', 0),
(3, 'Expert Level', 0),
(4, 'All Levels', 0);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `currency` varchar(20) NOT NULL,
  `symbol` varchar(4) NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `currency`, `symbol`, `disabled`) VALUES
(1, 'US Dollar', '$', 0);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `symbol` varchar(10) NOT NULL,
  `language` varchar(30) NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `symbol`, `language`, `disabled`) VALUES
(1, 'af_ZA', 'Afrikaans', 0),
(2, 'sq_AL', 'Shqip', 0),
(3, 'ar_AR', 'العربية', 0),
(4, 'hy_AM', 'Հայերեն', 0),
(5, 'ay_BO', 'Aymar aru', 0),
(6, 'az_AZ', 'Azərbaycan dili', 0),
(7, 'eu_ES', 'Euskara', 0),
(8, 'bn_IN', 'Bangla', 0),
(9, 'bs_BA', 'Bosanski', 0),
(10, 'bg_BG', 'Български', 0),
(11, 'my_MM', 'မြန်မာဘာသာ', 0),
(12, 'ca_ES', 'Català', 0),
(13, 'ck_US', 'Cherokee', 0),
(14, 'hr_HR', 'Hrvatski', 0),
(15, 'cs_CZ', 'Čeština', 0),
(16, 'da_DK', 'Dansk', 0),
(17, 'nl_NL', 'Nederlands', 0),
(18, 'nl_BE', 'Nederlands (België)', 0),
(19, 'en_IN', 'English (India)', 0),
(20, 'en_GB', 'English (UK)', 0),
(21, 'en_US', 'English (US)', 0),
(22, 'et_EE', 'Eesti', 0),
(23, 'fo_FO', 'Føroyskt', 0),
(24, 'tl_PH', 'Filipino', 0),
(25, 'fi_FI', 'Suomi', 0),
(26, 'fr_CA', 'Français (Canada)', 0),
(27, 'fr_FR', 'Français (France)', 0),
(28, 'fy_NL', 'Frysk', 0),
(29, 'gl_ES', 'Galego', 0),
(30, 'ka_GE', 'ქართული', 0),
(31, 'de_DE', 'Deutsch', 0),
(32, 'el_GR', 'Ελληνικά', 0),
(33, 'gn_PY', 'Avañe\'ẽ', 0),
(34, 'gu_IN', 'ગુજરાતી', 0),
(35, 'ht_HT', 'Ayisyen', 0),
(36, 'he_IL', '‏עברית‏', 0),
(37, 'hi_IN', 'हिन्दी', 0),
(38, 'hu_HU', 'Magyar', 0),
(39, 'is_IS', 'Íslenska', 0),
(40, 'id_ID', 'Bahasa Indonesia', 0),
(41, 'ga_IE', 'Gaeilge', 0),
(42, 'it_IT', 'Italiano', 0),
(43, 'ja_JP', '日本語', 0),
(44, 'jv_ID', 'Basa Jawa', 0),
(45, 'kn_IN', 'Kannaḍa', 0),
(46, 'kk_KZ', 'Қазақша', 0),
(47, 'km_KH', 'Khmer', 0),
(48, 'ko_KR', '한국어', 0),
(49, 'ku_TR', 'Kurdî', 0),
(50, 'lv_LV', 'Latviešu', 0),
(51, 'li_NL', 'Lèmbörgs', 0),
(52, 'lt_LT', 'Lietuvių', 0),
(53, 'mk_MK', 'Македонски', 0),
(54, 'mg_MG', 'Malagasy', 0),
(55, 'ms_MY', 'Bahasa Melayu', 0),
(56, 'ml_IN', 'Malayāḷam', 0),
(57, 'mt_MT', 'Malti', 0),
(58, 'mr_IN', 'मराठी', 0),
(59, 'mn_MN', 'Монгол', 0),
(60, 'ne_NP', 'नेपाली', 0),
(61, 'se_NO', 'Davvisámegiella', 0),
(62, 'nb_NO', 'Norsk (bokmål)', 0),
(63, 'nn_NO', 'Norsk (nynorsk)', 0),
(64, 'ps_AF', 'پښتو', 0),
(65, 'fa_IR', 'فارسی', 0),
(66, 'pl_PL', 'Polski', 0),
(67, 'pt_BR', 'Português (Brasil)', 0),
(68, 'pt_PT', 'Português (Portugal)', 0),
(69, 'pa_IN', 'ਪੰਜਾਬੀ', 0),
(70, 'qu_PE', 'Qhichwa', 0),
(71, 'ro_RO', 'Română', 0),
(72, 'rm_CH', 'Rumantsch', 0),
(73, 'ru_RU', 'Русский', 0),
(74, 'sa_IN', 'संस्कृतम्', 0),
(75, 'sr_RS', 'Српски', 0),
(76, 'zh_CN', '中文(简体)', 0),
(77, 'sk_SK', 'Slovenčina', 0),
(78, 'sl_SI', 'Slovenščina', 0),
(79, 'so_SO', 'Soomaaliga', 0),
(80, 'es_LA', 'Español', 0),
(81, 'es_CL', 'Español (Chile)', 0),
(82, 'es_CO', 'Español (Colombia)', 0),
(83, 'es_MX', 'Español (México)', 0),
(84, 'es_ES', 'Español (España)', 0),
(85, 'es_VE', 'Español (Venezuela)', 0),
(86, 'sw_KE', 'Kiswahili', 0),
(87, 'sv_SE', 'Svenska', 0),
(88, 'sy_SY', 'Leššānā Suryāyā', 0),
(89, 'tg_TJ', 'тоҷикӣ, تاجیکی‎, tojikī', 0),
(90, 'ta_IN', 'தமிழ்', 0),
(91, 'tt_RU', 'татарча / Tatarça / تاتارچا', 0),
(92, 'te_IN', 'Telugu', 0),
(93, 'th_TH', 'ภาษาไทย', 0),
(94, 'zh_HK', '中文(香港)', 0),
(95, 'zh_TW', '中文 (繁體)', 0),
(96, 'tr_TR', 'Türkçe', 0),
(97, 'uk_UA', 'Українська', 0),
(98, 'ur_PK', 'اردو', 0),
(99, 'uz_UZ', 'O\'zbek', 0),
(100, 'vi_VN', 'Tiếng Việt', 0),
(101, 'cy_GB', 'Cymraeg', 0),
(102, 'xh_ZA', 'isiXhosa', 0),
(103, 'yi_DE', 'ייִדיש', 0),
(104, 'zu_ZA', 'isiZulu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `permissions_map`
--

CREATE TABLE `permissions_map` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `permission` varchar(100) NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permissions_map`
--

INSERT INTO `permissions_map` (`id`, `role_id`, `permission`, `disabled`) VALUES
(1, 2, 'delete_categories', 1),
(2, 2, 'edit_permissions', 1),
(3, 1, 'add_categories', 1),
(4, 1, 'view_permissions', 1),
(5, 1, 'delete_permissions', 1),
(6, 1, 'edit_categories', 1),
(7, 1, 'delete_categories', 1),
(8, 1, 'add_permissions', 1),
(9, 1, 'edit_permissions', 1),
(10, 3, 'add_categories', 1),
(11, 3, 'delete_categories', 1),
(12, 3, 'view_permissions', 1),
(13, 3, 'edit_permissions', 1),
(14, 3, 'delete_permissions', 1),
(15, 1, 'view_roles', 1),
(16, 1, 'add_roles', 1),
(17, 1, 'edit_roles', 1),
(18, 1, 'delete_roles', 1),
(19, 1, 'view_categories', 1);

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--

CREATE TABLE `prices` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prices`
--

INSERT INTO `prices` (`id`, `name`, `price`, `disabled`) VALUES
(1, 'Free', '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role` varchar(30) NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `disabled`) VALUES
(1, 'user', 0),
(2, 'admin', 0),
(3, 'manager', 0);

-- --------------------------------------------------------

--
-- Table structure for table `slider_images`
--

CREATE TABLE `slider_images` (
  `id` int(11) NOT NULL,
  `image` varchar(2048) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slider_images`
--

INSERT INTO `slider_images` (`id`, `image`, `title`, `description`, `disabled`) VALUES
(1, 'uploads/images/1658218995pexels-photo-3756774.jpeg', 'What is Lorem Ipsum?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su', 0),
(2, 'uploads/images/1658219311pexels-photo-3757004.jpeg', 'Why do we use it?', 'packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (in', 0),
(3, 'uploads/images/1658219956amifaku.jpg', 'Where does it come from?', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one ', 0),
(4, 'uploads/images/1658220321Rihanna.-Photo-W-Magazine.jpg', 'Where can I get some?', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, yo', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(11) NOT NULL DEFAULT 1,
  `date` date DEFAULT NULL,
  `image` varchar(1024) NOT NULL,
  `about` varchar(2048) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `job` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `address` varchar(1024) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `twitter_link` varchar(1024) DEFAULT NULL,
  `facebook_link` varchar(1024) DEFAULT NULL,
  `instagram_link` varchar(1024) DEFAULT NULL,
  `linkedin_link` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `firstname`, `lastname`, `password`, `role`, `date`, `image`, `about`, `company`, `job`, `country`, `address`, `phone`, `twitter_link`, `facebook_link`, `instagram_link`, `linkedin_link`) VALUES
(1, 'email@email.com', 'Mary', 'Jane', '$2y$10$Pe46vRnUHD1CnxjH74lvnOFfB7yKgxNThQstvP/ICep9ZTbpQvwAq', 2, '2022-07-06', 'uploads/images/1657061746791a047636136702e25ba1096b11cfe7.jpg', 'What is Lorem Ipsum?\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n', '', '', '', '', '0977568985', '', '', '', ''),
(2, 'mary@email.com', 'Mary', 'Phiri', '$2y$10$ZdIB05xb93kZKMo.Zpe6huRSKUSDBG0FrdAfNE01V/oFlREFcg14O', 1, '2022-08-01', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `category` (`category`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `sub_category_id` (`sub_category_id`),
  ADD KEY `level_id` (`level_id`),
  ADD KEY `language_id` (`language_id`),
  ADD KEY `price_id` (`price_id`),
  ADD KEY `primary_subject` (`primary_subject`),
  ADD KEY `date` (`date`),
  ADD KEY `approved` (`approved`),
  ADD KEY `published` (`published`),
  ADD KEY `views` (`views`),
  ADD KEY `trending` (`trending`);

--
-- Indexes for table `courses_lectures`
--
ALTER TABLE `courses_lectures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `disabled` (`disabled`);

--
-- Indexes for table `courses_meta`
--
ALTER TABLE `courses_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `data_type` (`data_type`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `tab` (`tab`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `course_levels`
--
ALTER TABLE `course_levels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `disabled` (`disabled`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `disabled` (`disabled`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `disabled` (`disabled`);

--
-- Indexes for table `permissions_map`
--
ALTER TABLE `permissions_map`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `permission` (`permission`),
  ADD KEY `disabled` (`disabled`);

--
-- Indexes for table `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `price` (`price`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `disabled` (`disabled`);

--
-- Indexes for table `slider_images`
--
ALTER TABLE `slider_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `firstname` (`firstname`),
  ADD KEY `lastname` (`lastname`),
  ADD KEY `date` (`date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `courses_lectures`
--
ALTER TABLE `courses_lectures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `courses_meta`
--
ALTER TABLE `courses_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `course_levels`
--
ALTER TABLE `course_levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `permissions_map`
--
ALTER TABLE `permissions_map`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `prices`
--
ALTER TABLE `prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `slider_images`
--
ALTER TABLE `slider_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
