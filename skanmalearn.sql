-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2025 at 02:03 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skanmalearn2`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_blog_post`
--

CREATE TABLE `tb_blog_post` (
  `id` int(255) NOT NULL,
  `id_user` int(255) NOT NULL,
  `title` mediumtext NOT NULL,
  `permalink` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `time` datetime NOT NULL,
  `updated` datetime DEFAULT NULL,
  `id_category` varchar(255) NOT NULL,
  `id_tags` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `description` varchar(255) NOT NULL,
  `views` int(11) NOT NULL,
  `status` enum('Published','Draft') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_blog_post`
--

INSERT INTO `tb_blog_post` (`id`, `id_user`, `title`, `permalink`, `image`, `time`, `updated`, `id_category`, `id_tags`, `content`, `description`, `views`, `status`) VALUES
(2, 0, 'Sisi lain bisa digunakan untuk penyampaian informasi', 'sisi-lain-bisa-digunakan-untuk-penyampaian-informasi', 'images/zero_to_hero.png', '2025-08-31 18:02:00', '2025-08-31 18:05:01', '0', '0', '&lt;p style=&quot;text-align: justify;&quot;&gt;Melalui fitur blog ini, SkanmaLEARN selain sebagai sarana pembelajaran jarak jauh, juga bisa digunakan untuk penyampaian informasi yang dibutukanterkait pembelajaran dll.&lt;/p&gt;\r\n', '', 3, 'Published');

-- --------------------------------------------------------

--
-- Table structure for table `tb_blog_post_category`
--

CREATE TABLE `tb_blog_post_category` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_blog_post_comment`
--

CREATE TABLE `tb_blog_post_comment` (
  `id` int(255) NOT NULL,
  `id_blog_post` int(255) NOT NULL,
  `parent` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `content` text NOT NULL,
  `log` varchar(255) NOT NULL,
  `status` enum('Approved','Blocked','Pending') NOT NULL,
  `status_read` enum('Read','Unread') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_blog_post_tags`
--

CREATE TABLE `tb_blog_post_tags` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_blog_template`
--

CREATE TABLE `tb_blog_template` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `status` enum('Active','No') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_blog_template`
--

INSERT INTO `tb_blog_template` (`id`, `name`, `path`, `status`) VALUES
(1, 'Pisen Creative', 'pisen', 'No'),
(2, 'Mediumish', 'mediumish', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tb_blog_template_style`
--

CREATE TABLE `tb_blog_template_style` (
  `id` int(255) NOT NULL,
  `id_template` int(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_blog_template_style`
--

INSERT INTO `tb_blog_template_style` (`id`, `id_template`, `type`, `name`, `file`, `status`) VALUES
(1, 1, 'homepage', 'List with Sidebar', 'list_with_sidebar', 'No'),
(2, 1, 'post', 'Post Center', 'post_center', 'No'),
(3, 1, 'homepage', 'Grid Two Column', 'grid_two_column', 'No'),
(4, 1, 'homepage', 'Clasic', 'clasic', 'Active'),
(5, 1, 'post', 'Post Center Full', 'post_center_full', 'No'),
(6, 1, 'post', 'Post Sidebar', 'post_sidebar', 'Active'),
(7, 2, 'homepage', 'Default', 'default', 'Active'),
(8, 2, 'post', 'Default', 'default', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tb_blog_template_widget`
--

CREATE TABLE `tb_blog_template_widget` (
  `id` int(255) NOT NULL,
  `id_template` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `var` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `data_json` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_blog_template_widget`
--

INSERT INTO `tb_blog_template_widget` (`id`, `id_template`, `name`, `var`, `type`, `data_json`) VALUES
(1, 1, 'Footer 1', 'link1_footer', 'pages', '{\"status\":\"active\",\"title\":\"Halaman\",\"id\":[\"1\",\"2\",\"4\",\"5\"]}'),
(2, 1, 'Footer 2', 'link2_footer', 'link', '{\"status\":\"active\",\"title\":\"Website\",\"content\":[{\"text\":\"SkanmaLearn\",\"url\":\"#\"},{\"text\":\"Github\",\"url\":\"#\"}]}'),
(3, 1, 'Contact Footer', 'contact_footer', 'text', '{\"status\":\"active\",\"title\":\"Hubungi Kami\",\"content\":\"Disini\\r\\nDisini\"}'),
(4, 1, 'Logo Template', 'logo', 'image', '{\"status\":\"active\",\"content\":\"image4_20200411172145.png\"}'),
(5, 1, 'Ads Content Top', 'ads_content_top', 'ads', '{\"status\":\"nonactive\",\"content\":\"<a href=\\\"https:\\/\\/placeholder.com\\\"><img src=\\\"https:\\/\\/via.placeholder.com\\/768x120\\\"><\\/a>\"}'),
(6, 1, 'Ads Content Bottom', 'ads_content_bottom', 'ads', '{\"status\":\"nonactive\",\"content\":\"<div><a href=\\\"https:\\/\\/placeholder.com\\\"><img src=\\\"https:\\/\\/via.placeholder.com\\/768x120\\\"><\\/a><\\/div>\"}'),
(7, 1, 'Ads Content Middle', 'ads_content_middle', 'ads-content', '{\"status\":\"nonactive\",\"content\":\"<a href=\\\"https:\\/\\/placeholder.com\\\"><img src=\\\"https:\\/\\/via.placeholder.com\\/768x120\\\"><\\/a>\",\"loop_ads\":\"2\"}'),
(8, 1, 'Ads Sidebar', 'ads_sidebar', 'ads', '{\"status\":\"nonactive\",\"content\":\"<a href=\\\"https:\\/\\/placeholder.com\\\"><img src=\\\"https:\\/\\/via.placeholder.com\\/150\\\"><\\/a>\"}'),
(9, 1, 'Navigation Header', 'menu_header', 'category', '{\"status\":\"active\",\"title\":\"Header\",\"id\":null}'),
(10, 1, 'Popular Post Sidebar', 'popular_post', 'popular-post', '{\"status\":\"active\",\"title\":\"Dilihat paling banyak\",\"max_result\":\"5\"}'),
(11, 1, 'Category Sidebar', 'category_sidebar', 'category', '{\"status\":\"active\",\"title\":\"Kategori\",\"id\":null}'),
(12, 1, 'Tags Sidebar', 'tags_sidebar', 'tags', '{\"status\":\"active\",\"title\":\"Sub Kategori\",\"id\":null}'),
(13, 2, 'Featured Homepage', 'featured_homepage', 'featured-post', '{\"status\":\"nonactive\",\"title\":\"Artikel Pilihan\",\"id\":[\"1\"]}'),
(14, 2, 'Ads Content Top', 'ads_content_top', 'ads', '{\"status\":\"nonactive\",\"content\":\"\"}'),
(15, 2, 'Ads Content Bottom', 'ads_content_bottom', 'ads', '{\"status\":\"nonactive\",\"content\":\"\"}'),
(16, 2, 'Logo Header', 'logo_header', 'image', '{\"status\":\"active\",\"content\":\"image16_20200408092129.png\"}'),
(17, 2, 'Ads Post Content', 'ads_post_content', 'ads-content', '{\"status\":\"nonactive\",\"content\":\"<a href=\\\"https:\\/\\/placeholder.com\\\"><img src=\\\"https:\\/\\/via.placeholder.com\\/768x120\\\"><\\/a>\",\"loop_ads\":\"1\"}'),
(18, 2, 'Footer Pages', 'footer_pages', 'pages', '{\"status\":\"nonactive\",\"title\":\"Pages\",\"id\":null}'),
(19, 2, 'Navigation Header', 'navigation_header', 'pages', '{\"status\":\"nonactive\",\"title\":\"Menu\",\"id\":[\"1\"]}');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jobs`
--

CREATE TABLE `tb_jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `payload` text DEFAULT NULL COMMENT 'JSON payload',
  `response` text DEFAULT NULL,
  `status` enum('running','queued','done') NOT NULL DEFAULT 'queued',
  `run_time` double DEFAULT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_jobs`
--

INSERT INTO `tb_jobs` (`id`, `name`, `payload`, `response`, `status`, `run_time`, `created`) VALUES
(1, 'sendEmail', '{\"to\":\"programmer.irfaan@gmail.com\",\"subject\":\"Vertifikasi Email\",\"message\":\"Terima kasih telah mendaftar,\\r\\n            <br\\/><br\\/>\\r\\n            Silahkan klik link dibawah ini untuk mengaktifkan akun anda :\\r\\n            <br\\/><br\\/>\\r\\n            <a href=\'http:\\/\\/localhost\\/kurteyki\\/auth\\/confirm\\/b69b245dd7a7166b1c9d52fffb00cfc2\'>http:\\/\\/localhost\\/kurteyki\\/auth\\/confirm\\/b69b245dd7a7166b1c9d52fffb00cfc2<\\/a>\\r\\n            <br\\/><br\\/>\\r\\n            \"}', NULL, 'queued', NULL, '2020-05-03 20:01:58'),
(2, 'sendEmail', '{\"to\":\"ihsan@gmail.com\",\"subject\":\"Vertifikasi Email\",\"message\":\"Terima kasih telah mendaftar,\\n            <br\\/><br\\/>\\n            Silahkan klik link dibawah ini untuk mengaktifkan akun anda :\\n            <br\\/><br\\/>\\n            <a href=\'http:\\/\\/localhost:8074\\/kurteyki\\/auth\\/confirm\\/fda7ea761dbc278535e6bba2bd1f7b78\'>http:\\/\\/localhost:8074\\/kurteyki\\/auth\\/confirm\\/fda7ea761dbc278535e6bba2bd1f7b78<\\/a>\\n            <br\\/><br\\/>\\n            \"}', NULL, 'queued', NULL, '2025-08-30 13:01:51'),
(3, 'sendEmail', '{\"to\":\"yusuf@gmail.com\",\"subject\":\"Vertifikasi Email\",\"message\":\"Terima kasih telah mendaftar,\\n            <br\\/><br\\/>\\n            Silahkan klik link dibawah ini untuk mengaktifkan akun anda :\\n            <br\\/><br\\/>\\n            <a href=\'http:\\/\\/localhost:8072\\/SkanmaLEARN\\/auth\\/confirm\\/30b4b52da6a2ba656088081fff66b45c\'>http:\\/\\/localhost:8072\\/SkanmaLEARN\\/auth\\/confirm\\/30b4b52da6a2ba656088081fff66b45c<\\/a>\\n            <br\\/><br\\/>\\n            \"}', NULL, 'queued', NULL, '2025-08-30 16:13:32');

-- --------------------------------------------------------

--
-- Table structure for table `tb_lms_category`
--

CREATE TABLE `tb_lms_category` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `parent` int(255) NOT NULL,
  `time` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `icon` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_lms_category`
--

INSERT INTO `tb_lms_category` (`id`, `name`, `slug`, `parent`, `time`, `updated`, `icon`, `image`) VALUES
(1, 'Pengembangan Diri', 'pengembangan-diri', 0, '2020-04-11 16:51:46', '0000-00-00 00:00:00', 'fa-globe', ''),
(2, 'Skill Hidup', 'skill-hidup', 1, '2020-04-11 16:52:14', '0000-00-00 00:00:00', 'fa-hand-grab-o', ''),
(3, 'Karakter', 'karakter', 1, '2020-04-11 19:37:18', '2020-04-11 19:37:40', 'fa-star-o', ''),
(4, 'Kompetensi Keahlian', 'kompetensi-keahlian', 0, '2025-09-06 07:34:11', '0000-00-00 00:00:00', 'fa-institution', 'images/server-client_30785.png'),
(5, 'Mikrotik', 'mikrotik', 4, '2025-09-06 07:36:05', '0000-00-00 00:00:00', 'fa-clipboard', ''),
(6, 'Administrasi Server', 'administrasi-server', 4, '2025-09-06 07:37:04', '0000-00-00 00:00:00', 'fa-cloud', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_lms_coupon`
--

CREATE TABLE `tb_lms_coupon` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `expired` datetime NOT NULL,
  `type` enum('Price','Percent') NOT NULL,
  `data` varchar(255) NOT NULL,
  `for` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_lms_courses`
--

CREATE TABLE `tb_lms_courses` (
  `id` int(255) NOT NULL,
  `id_user` int(255) NOT NULL,
  `title` mediumtext NOT NULL,
  `permalink` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `faq` text NOT NULL,
  `id_category` varchar(255) NOT NULL,
  `id_sub_category` varchar(255) NOT NULL,
  `time` datetime NOT NULL,
  `updated` datetime DEFAULT NULL,
  `price` int(255) NOT NULL,
  `discount` int(255) NOT NULL,
  `views` int(11) NOT NULL,
  `status` enum('Published','Draft') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_lms_courses`
--

INSERT INTO `tb_lms_courses` (`id`, `id_user`, `title`, `permalink`, `image`, `description`, `faq`, `id_category`, `id_sub_category`, `time`, `updated`, `price`, `discount`, `views`, `status`) VALUES
(4, 1, 'Percobaan Course 1', 'percobaan-course', 'images/zero_to_hero.png', '&lt;p&gt;Selamat Datang di Kursus 1&lt;/p&gt;\r\n\r\n&lt;ol&gt;\r\n	&lt;li&gt;Mikrotik&lt;/li&gt;\r\n	&lt;li&gt;Jaringan LAN&lt;/li&gt;\r\n	&lt;li&gt;Jaringan Wireless&lt;/li&gt;\r\n	&lt;li&gt;Perakitan&lt;/li&gt;\r\n&lt;/ol&gt;\r\n', '', '1', '3', '2025-08-30 12:59:22', '2025-09-05 07:51:28', 0, 0, 3, 'Published'),
(5, 1, 'Percobaan Course 2', 'percobaan-course-2', 'images/zero_to_hero.png', '&lt;p&gt;Selamat Datang di Kursus 2&lt;/p&gt;\r\n\r\n&lt;ol&gt;\r\n	&lt;li&gt;Mikrotik&lt;/li&gt;\r\n	&lt;li&gt;Jaringan LAN&lt;/li&gt;\r\n	&lt;li&gt;Jaringan Wireless&lt;/li&gt;\r\n	&lt;li&gt;Perakitan&lt;/li&gt;\r\n&lt;/ol&gt;\r\n', '', '1', '2', '2025-09-05 07:53:25', '2025-09-05 07:54:39', 0, 0, 0, 'Published'),
(6, 1, 'Percobaan Course 3', 'percobaan-course-3', 'images/zero_to_hero.png', '', '', '1', '3', '2025-09-05 07:55:01', '2025-09-06 07:43:52', 50000, 0, 1, 'Published');

-- --------------------------------------------------------

--
-- Table structure for table `tb_lms_courses_lesson`
--

CREATE TABLE `tb_lms_courses_lesson` (
  `id` int(255) NOT NULL,
  `id_courses` int(255) NOT NULL,
  `id_section` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `order` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_lms_courses_lesson`
--

INSERT INTO `tb_lms_courses_lesson` (`id`, `id_courses`, `id_section`, `title`, `type`, `content`, `order`) VALUES
(13, 4, 11, 'Membaca dan Memahami', 'Video', '<p><a href=\"https://www.youtube.com/watch?v=VmoO3LOulCA&amp;list=RDVmoO3LOulCA&amp;start_radio=1&amp;pp=oAcB\" target=\"Youtube\">Yoitube</a></p>\r\n', 0),
(14, 5, 12, 'Mikrotik Sebuah Perusahaan', 'Text', '', 0),
(15, 6, 13, 'Pengenalan Pemakaian', 'Text', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_lms_courses_section`
--

CREATE TABLE `tb_lms_courses_section` (
  `id` int(255) NOT NULL,
  `id_courses` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `order` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_lms_courses_section`
--

INSERT INTO `tb_lms_courses_section` (`id`, `id_courses`, `title`, `order`) VALUES
(11, 4, 'Pengenalan', 0),
(12, 5, 'Pengertian', 0),
(13, 6, 'Pengenalan', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_lms_template`
--

CREATE TABLE `tb_lms_template` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `status` enum('Active','No') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_lms_template`
--

INSERT INTO `tb_lms_template` (`id`, `name`, `path`, `status`) VALUES
(1, 'Default - App', 'default-app', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tb_lms_template_widget`
--

CREATE TABLE `tb_lms_template_widget` (
  `id` int(255) NOT NULL,
  `id_template` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `var` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `data_json` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_lms_user_courses`
--

CREATE TABLE `tb_lms_user_courses` (
  `id` int(255) NOT NULL,
  `id_user` int(255) NOT NULL,
  `id_courses` int(255) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_lms_user_courses`
--

INSERT INTO `tb_lms_user_courses` (`id`, `id_user`, `id_courses`, `time`) VALUES
(1, 4, 3, '2025-08-30 13:05:39'),
(2, 4, 4, '2025-08-30 13:06:28'),
(3, 4, 6, '2025-09-06 07:54:40');

-- --------------------------------------------------------

--
-- Table structure for table `tb_lms_user_lesson`
--

CREATE TABLE `tb_lms_user_lesson` (
  `id` int(255) NOT NULL,
  `id_user` int(255) NOT NULL,
  `id_courses` int(255) NOT NULL,
  `data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_lms_user_lesson`
--

INSERT INTO `tb_lms_user_lesson` (`id`, `id_user`, `id_courses`, `data`) VALUES
(1, 4, 3, '[{\"id_lesson\":\"11\",\"status\":true},{\"id_lesson\":\"12\",\"status\":true}]'),
(2, 4, 4, '[{\"id_lesson\":\"13\",\"status\":true}]');

-- --------------------------------------------------------

--
-- Table structure for table `tb_lms_user_payment`
--

CREATE TABLE `tb_lms_user_payment` (
  `id` varchar(255) NOT NULL,
  `id_user` int(255) NOT NULL,
  `id_courses` int(255) NOT NULL,
  `id_courses_user` int(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `proof` text NOT NULL,
  `coupon` varchar(100) NOT NULL,
  `time` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `status` enum('Purchased','Pending','Checking','Failed') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_lms_user_payment`
--

INSERT INTO `tb_lms_user_payment` (`id`, `id_user`, `id_courses`, `id_courses_user`, `type`, `amount`, `token`, `proof`, `coupon`, `time`, `updated`, `status`) VALUES
('4C6T250906074548', 4, 6, 1, 'Manual', '50000', 'mandiri', '{\"file\":\"4C6T250906074548_confirmation_20250906074645.jpg\",\"sender\":\"YUSUF\"}', '', '2025-09-06 07:45:48', '2025-09-06 07:54:40', 'Purchased');

-- --------------------------------------------------------

--
-- Table structure for table `tb_lms_user_review`
--

CREATE TABLE `tb_lms_user_review` (
  `id` int(255) NOT NULL,
  `id_courses` int(255) NOT NULL,
  `id_user` int(255) NOT NULL,
  `rating` varchar(10) NOT NULL,
  `review` text NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_lms_user_wishlist`
--

CREATE TABLE `tb_lms_user_wishlist` (
  `id` int(255) NOT NULL,
  `id_user` int(255) NOT NULL,
  `id_courses` int(255) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_site`
--

CREATE TABLE `tb_site` (
  `type` varchar(255) NOT NULL,
  `data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_site`
--

INSERT INTO `tb_site` (`type`, `data`) VALUES
('ads_txt', ''),
('blog_comment', '{\"type\":\"disable\",\"disqus_shortname\":\"ih24n\",\"disqus_developer\":\"1\",\"moderate\":\"true\",\"message\":\"Komentar diblokir\"}'),
('blog_limit_post', '1'),
('cache', 'No'),
('cookie_notification', '{\"status\":\"Yes\",\"message\":\"Situs web ini menggunakan cookie untuk mempersonalisasi konten dan menganalisis lalu lintas untuk menawarkan pengalaman yang lebih baik kepada Anda.\"}'),
('currency_format', 'IDR'),
('description', 'Belajar Mudah, Kapan Saja, Di Mana Saja. Satu Klik, Seribu Ilmu'),
('fb_app', '{\"facebook_app_id\":\"\",\"facebook_app_secret\":\"\"}'),
('google_api', '{\"client_id\":\"\",\"client_secret\":\"\"}'),
('google_recaptcha', '{\"status\":\"No\",\"site_key\":\"\",\"secret_key\":\"\"}'),
('icon', 'icon_20200408075727.png'),
('image', 'logo_20200415181034.png'),
('language', 'indonesia'),
('lms_free_courses_readable', 'No'),
('lms_limit_post', '6'),
('meta_open_graph', '{\"app_id\":\"\",\"publisher\":\"A\",\"author\":\"A\",\"default_image\":\"open_graph_default_image_20200415181017.png\"}'),
('meta_schema', '{\"type\":\"Person\",\"content\":{\"person_name\":\"A\",\"person_alternateName\":\"A\",\"person_gender\":\"A\",\"person_height\":\"A\",\"person_birthDate\":\"A\",\"person_birthPlace\":\"A\",\"person_nationality\":\"A\",\"person_alumniOf\":\"A\",\"person_memberOf\":\"A\",\"person_streetAddress\":\"A\",\"person_addressLocality\":\"A\",\"person_addressRegion\":\"A\",\"person_postalCode\":\"A\",\"person_email\":\"A\",\"person_telephone\":\"A\",\"person_url\":\"A\",\"person_sameAs\":\"A\",\"person_jobTitle\":\"A\",\"person_worksFor_name\":\"A\",\"person_worksFor_sameAs\":\"A\",\"organization_name\":\"A\",\"organization_url\":\"A\",\"organization_contactPoint_telephone\":\"A\",\"organization_contactPoint_contactType\":\"A\",\"organization_sameAs\":\"A\",\"organization_logo_url\":\"organization_logo_url_20250830160700.png\",\"person_image\":\"person_image_20250830160801.png\"}}'),
('meta_twitter_card', '{\"publisher\":\"A\",\"default_image\":\"twitter_card_default_image_20200415181017.png\"}'),
('no_image', 'no_image_20200408075727.jpg'),
('payment_method', 'Manual'),
('payment_midtrans', '{\"status_production\":\"No\",\"client_key\":\"\",\"server_key\":\"\"}'),
('robots_txt', 'User-agent: *\r\nAllow: /\r\n\r\nSitemap: [sitemap_url]'),
('slogan', 'Berpusing sekarang, Riang akan Datang.'),
('smtp', '{\"protocol\":\"smtp\",\"smtp_host\":\"smtp.googlemail.com\",\"smtp_port\":\"465\",\"smtp_user\":\"\",\"smtp_pass\":\"\"}'),
('time_zone', 'Asia/Jakarta'),
('title', 'SkanmaLEARN'),
('updated', '2025-08-30 20:29:01'),
('user_limit_data', '5'),
('vertification_email', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `tb_site_pages`
--

CREATE TABLE `tb_site_pages` (
  `id` int(255) NOT NULL,
  `title` text NOT NULL,
  `permalink` varchar(255) NOT NULL,
  `time` datetime NOT NULL,
  `updated` datetime DEFAULT NULL,
  `content` longtext NOT NULL,
  `status` enum('Published','Draft') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_site_pages`
--

INSERT INTO `tb_site_pages` (`id`, `title`, `permalink`, `time`, `updated`, `content`, `status`) VALUES
(1, 'Kebijakan Privasi', 'kebijakan-privasi', '2020-03-21 18:36:40', '2025-08-31 17:54:51', '&lt;p&gt;&lt;strong&gt;Kebijakan Privasi SkanmaLEARN&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;Kebijakan Privasi ini menjelaskan bagaimana SkanmaLEARN, platform pembelajaran digital milik SMK Negeri 5 Sukoharjo, mengumpulkan, menggunakan, menyimpan, dan melindungi data pribadi pengguna. Dengan menggunakan layanan SkanmaLEARN, pengguna dianggap telah membaca, memahami, dan menyetujui kebijakan privasi ini.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Informasi yang Dikumpulkan&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;SkanmaLEARN dapat mengumpulkan data pribadi berikut:&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Data identitas pengguna (nama, NIS/NIP, alamat email, nomor induk siswa/guru).&lt;/li&gt;\r\n	&lt;li&gt;Informasi akun (username, kata sandi).&lt;/li&gt;\r\n	&lt;li&gt;Aktivitas pembelajaran (materi yang diakses, tugas yang diunggah, nilai, forum diskusi).&lt;/li&gt;\r\n	&lt;li&gt;Data teknis (alamat IP, jenis perangkat, riwayat akses).&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Penggunaan Data&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Data pribadi yang dikumpulkan akan digunakan untuk:&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Memberikan akses ke fitur pembelajaran jarak jauh.&lt;/li&gt;\r\n	&lt;li&gt;Memfasilitasi komunikasi antara guru dan siswa.&lt;/li&gt;\r\n	&lt;li&gt;Meningkatkan kualitas layanan pembelajaran digital.&lt;/li&gt;\r\n	&lt;li&gt;Menyimpan rekam jejak akademik siswa.&lt;/li&gt;\r\n	&lt;li&gt;Keperluan administrasi sekolah.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Perlindungan Data&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;SkanmaLEARN berkomitmen menjaga keamanan data pengguna dengan:&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Menggunakan sistem autentikasi dan enkripsi.&lt;/li&gt;\r\n	&lt;li&gt;Membatasi akses data hanya untuk pihak yang berwenang.&lt;/li&gt;\r\n	&lt;li&gt;Melakukan pengawasan berkala terhadap sistem keamanan.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;Namun, pengguna juga bertanggung jawab menjaga kerahasiaan akun dan kata sandi masing-masing.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Berbagi Data kepada Pihak Ketiga&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;SkanmaLEARN tidak akan menjual atau menyebarkan data pribadi pengguna kepada pihak ketiga di luar kepentingan pembelajaran, kecuali:&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Dengan persetujuan pengguna.&lt;/li&gt;\r\n	&lt;li&gt;Diperlukan oleh ketentuan hukum yang berlaku.&lt;/li&gt;\r\n	&lt;li&gt;Untuk kepentingan administrasi resmi pendidikan di SMK Negeri 5 Sukoharjo.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Hak Pengguna&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Pengguna memiliki hak untuk:&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Mengakses dan memperbarui informasi pribadi mereka.&lt;/li&gt;\r\n	&lt;li&gt;Meminta penghapusan data tertentu sesuai kebijakan sekolah.&lt;/li&gt;\r\n	&lt;li&gt;Menolak penggunaan data di luar konteks pembelajaran.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Perubahan Kebijakan&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;Kebijakan privasi ini dapat diperbarui sewaktu-waktu sesuai kebutuhan. Setiap perubahan akan diinformasikan melalui platform SkanmaLEARN.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Kontak&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;Jika ada pertanyaan terkait kebijakan privasi ini, pengguna dapat menghubungi administrator SkanmaLEARN melalui pihak sekolah SMK Negeri 5 Sukoharjo.&lt;/p&gt;\r\n', 'Published'),
(2, 'Bantuan', 'help', '2020-04-14 07:52:45', '2025-08-31 18:13:07', '&lt;meta name=&quot;robots&quot; content=&quot;noindex&quot;&gt;\r\n&lt;p data-end=&quot;233&quot; data-start=&quot;204&quot;&gt;Selamat datang di halaman &lt;strong data-end=&quot;284&quot; data-start=&quot;261&quot;&gt;Bantuan SkanmaLEARN&lt;/strong&gt;.&lt;br data-end=&quot;288&quot; data-start=&quot;285&quot; /&gt;\r\nHalaman ini dirancang untuk memandu Anda dalam menggunakan sistem pembelajaran digital.&lt;/p&gt;\r\n\r\n&lt;hr data-end=&quot;382&quot; data-start=&quot;379&quot; /&gt;\r\n&lt;h2 data-end=&quot;406&quot; data-start=&quot;384&quot;&gt;&lt;strong data-end=&quot;404&quot; data-start=&quot;387&quot;&gt;1. Cara Login&lt;/strong&gt;&lt;/h2&gt;\r\n\r\n&lt;ul data-end=&quot;566&quot; data-start=&quot;407&quot;&gt;\r\n	&lt;li data-end=&quot;442&quot; data-start=&quot;407&quot;&gt;\r\n	&lt;p data-end=&quot;442&quot; data-start=&quot;409&quot;&gt;Buka halaman utama SkanmaLEARN.&lt;/p&gt;\r\n	&lt;/li&gt;\r\n	&lt;li data-end=&quot;514&quot; data-start=&quot;443&quot;&gt;\r\n	&lt;p data-end=&quot;514&quot; data-start=&quot;445&quot;&gt;Masukkan &lt;strong data-end=&quot;466&quot; data-start=&quot;454&quot;&gt;username&lt;/strong&gt; dan &lt;strong data-end=&quot;483&quot; data-start=&quot;471&quot;&gt;password&lt;/strong&gt; yang diberikan oleh sekolah.&lt;/p&gt;\r\n	&lt;/li&gt;\r\n	&lt;li data-end=&quot;566&quot; data-start=&quot;515&quot;&gt;\r\n	&lt;p data-end=&quot;566&quot; data-start=&quot;517&quot;&gt;Klik tombol &lt;strong data-end=&quot;538&quot; data-start=&quot;529&quot;&gt;Login&lt;/strong&gt; untuk masuk ke akun Anda.&lt;/p&gt;\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;blockquote data-end=&quot;631&quot; data-start=&quot;567&quot;&gt;\r\n&lt;p data-end=&quot;631&quot; data-start=&quot;569&quot;&gt;Jika lupa kata sandi, hubungi administrator/guru wali kelas.&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n\r\n&lt;hr data-end=&quot;636&quot; data-start=&quot;633&quot; /&gt;\r\n&lt;h2 data-end=&quot;679&quot; data-start=&quot;638&quot;&gt;&lt;strong data-end=&quot;677&quot; data-start=&quot;641&quot;&gt;2. Mengakses Materi Pembelajaran&lt;/strong&gt;&lt;/h2&gt;\r\n\r\n&lt;ul data-end=&quot;811&quot; data-start=&quot;680&quot;&gt;\r\n	&lt;li data-end=&quot;710&quot; data-start=&quot;680&quot;&gt;\r\n	&lt;p data-end=&quot;710&quot; data-start=&quot;682&quot;&gt;Pilih menu &lt;strong data-end=&quot;707&quot; data-start=&quot;693&quot;&gt;Kelas Saya&lt;/strong&gt;.&lt;/p&gt;\r\n	&lt;/li&gt;\r\n	&lt;li data-end=&quot;745&quot; data-start=&quot;711&quot;&gt;\r\n	&lt;p data-end=&quot;745&quot; data-start=&quot;713&quot;&gt;Klik pada nama mata pelajaran.&lt;/p&gt;\r\n	&lt;/li&gt;\r\n	&lt;li data-end=&quot;811&quot; data-start=&quot;746&quot;&gt;\r\n	&lt;p data-end=&quot;811&quot; data-start=&quot;748&quot;&gt;Buka materi, video, atau modul yang sudah diunggah oleh guru.&lt;/p&gt;\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;hr data-end=&quot;816&quot; data-start=&quot;813&quot; /&gt;\r\n&lt;h2 data-end=&quot;848&quot; data-start=&quot;818&quot;&gt;&lt;strong data-end=&quot;846&quot; data-start=&quot;821&quot;&gt;3. Mengumpulkan Tugas&lt;/strong&gt;&lt;/h2&gt;\r\n\r\n&lt;ul data-end=&quot;1047&quot; data-start=&quot;849&quot;&gt;\r\n	&lt;li data-end=&quot;895&quot; data-start=&quot;849&quot;&gt;\r\n	&lt;p data-end=&quot;895&quot; data-start=&quot;851&quot;&gt;Masuk ke kelas mata pelajaran yang sesuai.&lt;/p&gt;\r\n	&lt;/li&gt;\r\n	&lt;li data-end=&quot;921&quot; data-start=&quot;896&quot;&gt;\r\n	&lt;p data-end=&quot;921&quot; data-start=&quot;898&quot;&gt;Pilih menu &lt;strong data-end=&quot;918&quot; data-start=&quot;909&quot;&gt;Tugas&lt;/strong&gt;.&lt;/p&gt;\r\n	&lt;/li&gt;\r\n	&lt;li data-end=&quot;983&quot; data-start=&quot;922&quot;&gt;\r\n	&lt;p data-end=&quot;983&quot; data-start=&quot;924&quot;&gt;Klik &lt;strong data-end=&quot;945&quot; data-start=&quot;929&quot;&gt;Upload Tugas&lt;/strong&gt;, lalu unggah file sesuai instruksi.&lt;/p&gt;\r\n	&lt;/li&gt;\r\n	&lt;li data-end=&quot;1047&quot; data-start=&quot;984&quot;&gt;\r\n	&lt;p data-end=&quot;1047&quot; data-start=&quot;986&quot;&gt;Pastikan Anda menekan tombol &lt;strong data-end=&quot;1024&quot; data-start=&quot;1015&quot;&gt;Kirim&lt;/strong&gt; sebelum batas waktu.&lt;/p&gt;\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', 'Published'),
(3, 'Kontak', 'contact', '2020-04-14 07:53:12', '2025-08-31 18:10:41', '&lt;p&gt;Anda dapat menghubungi tim melalui kontak dibawah ini&lt;/p&gt;\r\n\r\n&lt;p&gt;E-mail&amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp; :&amp;nbsp;&lt;a href=&quot;mailto:info@smkn5sukoharjo.sch.id&quot;&gt;&lt;strong&gt;info@smkn5sukoharjo.sch.id&lt;/strong&gt;&lt;/a&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Instagram&amp;nbsp;: &lt;a href=&quot;https://www.instagram.com/smkn5sukoharjo&quot;&gt;&lt;b&gt;@smkn5sukoharjo&lt;/b&gt;&amp;nbsp;&lt;/a&gt;&lt;/p&gt;\r\n', 'Published'),
(4, 'Tentang SkanmaLEARN', 'about', '2020-04-14 07:53:19', '2025-08-31 17:45:39', '&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;strong&gt;SkanmaLEARN &lt;/strong&gt;adalah sebuah Learning Management System (LMS) yang dimodifikasi oleh Muhammad Ihsan dari SMK Negeri 5 Sukoharjo pada tahun 2025 sebagai solusi pembelajaran digital yang modern, interaktif, dan fleksibel. Platform ini dirancang untuk mendukung pembelajaran jarak jauh, pengumpulan tugas, pembelajaran mandiri, serta komunikasi efektif antara guru dan siswa.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Kegunaan&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Menyediakan materi pembelajaran secara online yang dapat diakses kapan saja dan di mana saja.&lt;/li&gt;\r\n	&lt;li&gt;Mempermudah pengumpulan tugas, kuis, dan ujian secara digital.&lt;/li&gt;\r\n	&lt;li&gt;Meningkatkan interaksi antara guru dan siswa melalui forum diskusi dan fitur komunikasi daring.&lt;/li&gt;\r\n	&lt;li&gt;Memberikan akses arsip materi sehingga siswa bisa belajar mandiri sesuai kebutuhan.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Keuntungan&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Fleksibilitas tinggi: siswa bisa belajar tanpa dibatasi ruang dan waktu.&lt;/li&gt;\r\n	&lt;li&gt;Efisiensi: guru lebih mudah mengelola kelas, materi, dan penilaian.&lt;/li&gt;\r\n	&lt;li&gt;Transparansi: nilai, progres, dan tugas tercatat rapi dalam sistem.&lt;/li&gt;\r\n	&lt;li&gt;Inovasi digital: mendukung siswa terbiasa dengan teknologi, selaras dengan kompetensi abad 21.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Slogan SkanmaLEARN&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;ldquo;&lt;strong&gt;Belajar Mudah, Kapan Saja, Di Mana Saja. Satu Klik, Seribu Ilmu&lt;/strong&gt;&amp;rdquo;&lt;/p&gt;\r\n', 'Published'),
(5, 'Syarat dan Ketentuan', 'term-and-condition', '2020-04-14 07:54:26', '2025-08-31 17:41:01', '&lt;p&gt;Selamat datang di &lt;strong&gt;SkanmaLEARN&lt;/strong&gt;...&lt;/p&gt;\r\n\r\n&lt;h2&gt;&lt;strong&gt;Syarat dan Ketentuan Penggunaan SkanmaLEARN.&lt;/strong&gt;&lt;/h2&gt;\r\n\r\n&lt;p&gt;Dengan mengakses dan menggunakan SkanmaLEARN, setiap pengguna setuju untuk mematuhi syarat dan ketentuan berikut:&lt;/p&gt;\r\n\r\n&lt;ol&gt;\r\n	&lt;li&gt;Platform ini disediakan oleh SMK Negeri 5 Sukoharjo sebagai sarana pembelajaran jarak jauh dan pengelolaan tugas.&amp;nbsp;&lt;/li&gt;\r\n	&lt;li&gt;Pengguna diwajibkan menggunakan akun yang sah serta menjaga kerahasiaan data pribadi dan kata sandi masing-masing.&amp;nbsp;&lt;/li&gt;\r\n	&lt;li&gt;Segala bentuk penyalahgunaan, seperti penyebaran konten yang tidak sesuai dengan tujuan pendidikan, tindakan plagiarisme, atau penggunaan yang merugikan pihak lain, dilarang keras.&amp;nbsp;&lt;/li&gt;\r\n	&lt;li&gt;Materi pembelajaran, tugas, maupun informasi yang terdapat di dalam sistem hanya boleh digunakan untuk kepentingan belajar dan tidak diperkenankan untuk diperjualbelikan atau disebarkan tanpa izin resmi dari pemilik/kreator materi tersebut.&lt;/li&gt;\r\n	&lt;li&gt;Administrator berhak melakukan penangguhan atau penghentian akun pengguna yang melanggar aturan.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n\r\n&lt;h2&gt;&lt;strong&gt;Kebijakan Cookie SkanmaLEARN&lt;/strong&gt;&lt;/h2&gt;\r\n\r\n&lt;p&gt;SkanmaLEARN menggunakan cookie untuk meningkatkan pengalaman pengguna dalam mengakses layanan pembelajaran digital. Cookie adalah file kecil yang disimpan di perangkat Anda ketika menggunakan platform ini. Cookie membantu kami mengingat preferensi pengguna, menjaga keamanan akun, mempersonalisasi tampilan, serta memantau kinerja sistem agar layanan tetap optimal.&lt;/p&gt;\r\n\r\n&lt;p&gt;Dengan menggunakan platform ini, pengguna menyatakan telah membaca, memahami, dan menyetujui seluruh syarat, ketentuan dan kebijakan yang berlaku.&lt;/p&gt;\r\n', 'Published');

-- --------------------------------------------------------

--
-- Table structure for table `tb_site_visitor`
--

CREATE TABLE `tb_site_visitor` (
  `id` int(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `browser` varchar(255) NOT NULL,
  `os` varchar(255) NOT NULL,
  `country_name` varchar(255) NOT NULL,
  `country_code` varchar(255) NOT NULL,
  `hits` int(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `referrer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_site_visitor`
--

INSERT INTO `tb_site_visitor` (`id`, `ip`, `date`, `browser`, `os`, `country_name`, `country_code`, `hits`, `url`, `referrer`) VALUES
(67, '::1', '2025-09-05 07:40:35', 'Chrome', 'Windows 10', 'Other', 'Other', 12, 'http://localhost:8073/smkn5skh/SkanmaLEARN/', ''),
(68, '::1', '2025-09-05 07:40:41', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost:8073/smkn5skh/SkanmaLEARN/blog', ''),
(69, '::1', '2025-09-05 07:52:35', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost:8073/smkn5skh/SkanmaLEARN/courses-detail/percobaan-course', ''),
(70, '::1', '2025-09-06 07:29:17', 'Chrome', 'Windows 10', 'Other', 'Other', 11, 'http://localhost:8073/smkn5skh/SkanmaLEARN/', ''),
(71, '::1', '2025-09-06 07:29:34', 'Chrome', 'Windows 10', 'Other', 'Other', 2, 'http://localhost:8073/smkn5skh/SkanmaLEARN/blog', ''),
(72, '::1', '2025-09-06 07:29:38', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost:8073/smkn5skh/SkanmaLEARN/blog-post/sisi-lain-bisa-digunakan-untuk-penyampaian-informasi', ''),
(73, '::1', '2025-09-06 07:29:47', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost:8073/smkn5skh/SkanmaLEARN/p/help', ''),
(74, '::1', '2025-09-06 07:29:53', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost:8073/smkn5skh/SkanmaLEARN/p/contact', ''),
(75, '::1', '2025-09-06 07:30:01', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost:8073/smkn5skh/SkanmaLEARN/p/about', ''),
(76, '::1', '2025-09-06 07:30:05', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost:8073/smkn5skh/SkanmaLEARN/p/term-and-condition', ''),
(77, '::1', '2025-09-06 07:30:10', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost:8073/smkn5skh/SkanmaLEARN/p/kebijakan-privasi', ''),
(78, '::1', '2025-09-06 07:44:03', 'Chrome', 'Windows 10', 'Other', 'Other', 2, 'http://localhost:8073/smkn5skh/SkanmaLEARN/courses-detail/percobaan-course-3', ''),
(79, '::1', '2025-09-06 08:28:33', 'Chrome', 'Windows 10', 'Other', 'Other', 3, 'http://localhost:8074/smkn5skh/SkanmaLEARN/', ''),
(80, '::1', '2025-09-06 08:28:45', 'Chrome', 'Windows 10', 'Other', 'Other', 2, 'http://localhost:8074/smkn5skh/SkanmaLEARN/blog', ''),
(81, '::1', '2025-09-06 08:28:47', 'Chrome', 'Windows 10', 'Other', 'Other', 26, 'http://localhost:8074/smkn5skh/SkanmaLEARN/blog-post/sisi-lain-bisa-digunakan-untuk-penyampaian-informasi', ''),
(82, '::1', '2025-09-06 08:46:43', 'Chrome', 'Windows 10', 'Other', 'Other', 1, 'http://localhost:8074/smkn5skh/SkanmaLEARN/p/kebijakan-privasi', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `headline` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `no_handphone` varchar(30) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `grade` enum('App','User','Instructor') NOT NULL,
  `payment` text NOT NULL,
  `created` datetime NOT NULL,
  `last_login` datetime NOT NULL,
  `status` enum('Active','Blocked','UnActive') NOT NULL DEFAULT 'UnActive',
  `namalengkap` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `password`, `headline`, `email`, `no_handphone`, `photo`, `grade`, `payment`, `created`, `last_login`, `status`, `namalengkap`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Owner', 'admin@gmail.com', '111111111111', 'user_photo_20250830161155.png', 'App', '{\"transaction\":null,\"confirmation\":null}', '0000-00-00 00:00:00', '2025-09-06 07:30:39', 'Active', 'Pengguna Admin'),
(4, 'Userr', '42c210dd2fc552605570713f041ea175463086d8', 'Student', 'userr@gmail.com', '111111111111', '', 'User', '', '2025-08-30 13:01:51', '2025-09-06 07:44:21', 'Active', 'Pengguna Biasa'),
(5, 'Instruktur', '795a6fe8e1aef6a7f07786156a150e2be1553e5c', 'Instructor', 'instruktur@gmail.com', '11111111111', '', 'Instructor', '', '2025-08-30 16:13:32', '2025-09-05 08:35:46', 'Active', 'Pengguna Instruktur');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_blog_post`
--
ALTER TABLE `tb_blog_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permalink` (`permalink`),
  ADD KEY `time` (`time`),
  ADD KEY `status` (`status`),
  ADD KEY `id_tags` (`id_tags`),
  ADD KEY `id_category` (`id_category`),
  ADD KEY `views` (`views`),
  ADD KEY `description` (`description`),
  ADD KEY `image` (`image`);

--
-- Indexes for table `tb_blog_post_category`
--
ALTER TABLE `tb_blog_post_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`);

--
-- Indexes for table `tb_blog_post_comment`
--
ALTER TABLE `tb_blog_post_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_blog_post` (`id_blog_post`,`parent`),
  ADD KEY `status` (`status`),
  ADD KEY `status_read` (`status_read`);

--
-- Indexes for table `tb_blog_post_tags`
--
ALTER TABLE `tb_blog_post_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`);

--
-- Indexes for table `tb_blog_template`
--
ALTER TABLE `tb_blog_template`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tb_blog_template_style`
--
ALTER TABLE `tb_blog_template_style`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `id_template` (`id_template`);

--
-- Indexes for table `tb_blog_template_widget`
--
ALTER TABLE `tb_blog_template_widget`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `id_template` (`id_template`);

--
-- Indexes for table `tb_jobs`
--
ALTER TABLE `tb_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_lms_category`
--
ALTER TABLE `tb_lms_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`);

--
-- Indexes for table `tb_lms_coupon`
--
ALTER TABLE `tb_lms_coupon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_lms_courses`
--
ALTER TABLE `tb_lms_courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permalink` (`permalink`),
  ADD KEY `time` (`time`),
  ADD KEY `status` (`status`),
  ADD KEY `id_tags` (`id_sub_category`),
  ADD KEY `id_category` (`id_category`),
  ADD KEY `views` (`views`),
  ADD KEY `image` (`image`);

--
-- Indexes for table `tb_lms_courses_lesson`
--
ALTER TABLE `tb_lms_courses_lesson`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_lms_courses_section`
--
ALTER TABLE `tb_lms_courses_section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_lms_template`
--
ALTER TABLE `tb_lms_template`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tb_lms_template_widget`
--
ALTER TABLE `tb_lms_template_widget`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `id_template` (`id_template`);

--
-- Indexes for table `tb_lms_user_courses`
--
ALTER TABLE `tb_lms_user_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_lms_user_lesson`
--
ALTER TABLE `tb_lms_user_lesson`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_lms_user_payment`
--
ALTER TABLE `tb_lms_user_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_lms_user_review`
--
ALTER TABLE `tb_lms_user_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_courses` (`id_courses`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tb_lms_user_wishlist`
--
ALTER TABLE `tb_lms_user_wishlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_site`
--
ALTER TABLE `tb_site`
  ADD PRIMARY KEY (`type`);

--
-- Indexes for table `tb_site_pages`
--
ALTER TABLE `tb_site_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permalink` (`permalink`,`time`,`status`),
  ADD KEY `time` (`time`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tb_site_visitor`
--
ALTER TABLE `tb_site_visitor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ip` (`ip`),
  ADD KEY `date` (`date`),
  ADD KEY `hits` (`hits`),
  ADD KEY `url` (`url`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_blog_post`
--
ALTER TABLE `tb_blog_post`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_blog_post_category`
--
ALTER TABLE `tb_blog_post_category`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_blog_post_comment`
--
ALTER TABLE `tb_blog_post_comment`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_blog_post_tags`
--
ALTER TABLE `tb_blog_post_tags`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_blog_template`
--
ALTER TABLE `tb_blog_template`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_blog_template_style`
--
ALTER TABLE `tb_blog_template_style`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_blog_template_widget`
--
ALTER TABLE `tb_blog_template_widget`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tb_jobs`
--
ALTER TABLE `tb_jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_lms_category`
--
ALTER TABLE `tb_lms_category`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_lms_coupon`
--
ALTER TABLE `tb_lms_coupon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_lms_courses`
--
ALTER TABLE `tb_lms_courses`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_lms_courses_lesson`
--
ALTER TABLE `tb_lms_courses_lesson`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tb_lms_courses_section`
--
ALTER TABLE `tb_lms_courses_section`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tb_lms_template`
--
ALTER TABLE `tb_lms_template`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_lms_template_widget`
--
ALTER TABLE `tb_lms_template_widget`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_lms_user_courses`
--
ALTER TABLE `tb_lms_user_courses`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_lms_user_lesson`
--
ALTER TABLE `tb_lms_user_lesson`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_lms_user_review`
--
ALTER TABLE `tb_lms_user_review`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_lms_user_wishlist`
--
ALTER TABLE `tb_lms_user_wishlist`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_site_pages`
--
ALTER TABLE `tb_site_pages`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_site_visitor`
--
ALTER TABLE `tb_site_visitor`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
