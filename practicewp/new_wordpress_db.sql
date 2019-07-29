-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2019 at 02:43 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new_wordpress_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_childthemewp`
--

CREATE TABLE `wp_childthemewp` (
  `id` mediumint(9) NOT NULL,
  `datavalue` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-06-28 14:28:35', '2019-06-28 14:28:35', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/practicewp', 'yes'),
(2, 'home', 'http://localhost/practicewp', 'yes'),
(3, 'blogname', '', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'manojsamudre@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:34:\"WP_TexonomeyTabs/texonomy-tabs.php\";i:1;s:45:\"taxonomy-terms-order/taxonomy-terms-order.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentynineteen', 'yes'),
(41, 'stylesheet', 'twentynineteen-child', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '56', 'yes'),
(84, 'page_on_front', '5', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'cron', 'a:8:{i:1564405722;a:1:{s:26:\"upgrader_scheduled_cleanup\";a:1:{s:32:\"779824090289b105333c6256857f48cf\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:109;}}}}i:1564406919;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1564410517;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1564410519;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1564410552;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1564410553;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1564410558;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'nonce_key', 'WuM P~C+J([aHt$nXp(oQ2gj)]6b*YMURK8pn:s^L)SAAM*U5uBEYU6cA@<NE]}j', 'no'),
(110, 'nonce_salt', ' hJw*cX=sbnhJMpWh{fl*QKMFc*?LfI8aIXx!K><0Dn5RP1NXk6nFVPX(&vA$fJ6', 'no'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:1:{s:22:\"FajMvfuFMqPHsP0CNp5wSa\";a:2:{s:10:\"hashed_key\";s:34:\"$P$Bx9Qjk2Xe9nd/F41iESp.wLY9J9uSL1\";s:10:\"created_at\";i:1564315487;}}', 'yes'),
(116, 'theme_mods_twentynineteen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1564304230;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:0:{}}}s:18:\"nav_menu_locations\";a:2:{s:6:\"menu-1\";i:2;s:6:\"social\";i:2;}}', 'yes'),
(117, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.2\";s:7:\"version\";s:5:\"5.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1564398525;s:15:\"version_checked\";s:5:\"5.2.2\";s:12:\"translations\";a:0:{}}', 'no'),
(122, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1564398528;s:7:\"checked\";a:4:{s:20:\"twentynineteen-child\";s:5:\"1.0.0\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(123, 'auth_key', 'x v>&23I?@q/KebW2757`Hlbjep{`QEdx`{FwswWh&d[B2Alc MWl7v0:&~9!#zJ', 'no'),
(124, 'auth_salt', 'Y)53{E?dcN1-R`bhYp9t@s{/68iXFzz>Qs3wpN119:{Dfl6{FGKn<>)N]k-!NU[o', 'no'),
(125, 'logged_in_key', 'Y7a)y<2M^pq!!^pH6 jR8M_%/B8ctH!N7Kj5T>bp3UH`)+[7jC_>U4/Kt,jL^JO1', 'no'),
(126, 'logged_in_salt', 'u:y&Kk#(wJ$n(!U#+Ma5`{GuBs3L=N&`3$2t{wZ$N&?YW^]tGyHKgkbi<m]ymAhT', 'no'),
(132, 'can_compress_scripts', '1', 'no'),
(147, 'WPLANG', '', 'yes'),
(148, 'new_admin_email', 'manojsamudre@gmail.com', 'yes'),
(156, '_transient_health-check-site-status-result', '{\"good\":\"11\",\"recommended\":\"4\",\"critical\":\"1\"}', 'yes'),
(179, 'recently_activated', 'a:4:{s:40:\"texonomey-post-tab/texonomy-post-tab.php\";i:1564212550;s:22:\"CPslider/cp-slider.php\";i:1563907152;s:29:\"registration/registration.php\";i:1563907143;s:24:\"wp-taxonomy-tab/init.php\";i:1563904879;}', 'yes'),
(201, 'recovery_mode_email_last_sent', '1564315487', 'yes'),
(288, 'current_theme', 'Twenty Nineteen Child', 'yes'),
(289, 'theme_mods_twentyseventeen', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1564063277;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(290, 'theme_switched', '', 'yes'),
(292, 'theme_mods_twentynineteen-child', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:6:\"menu-1\";i:2;s:6:\"social\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:63;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1564304184;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:0:{}}}}', 'yes'),
(297, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(376, '_site_transient_timeout_browser_5eaddbe64bb311a7ba788adfd9ffdfcb', '1564839523', 'no'),
(377, '_site_transient_browser_5eaddbe64bb311a7ba788adfd9ffdfcb', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"75.0.3770.142\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(378, '_site_transient_timeout_php_check_e07d3b5b60161a40c9887e1155defaa1', '1564839527', 'no'),
(379, '_site_transient_php_check_e07d3b5b60161a40c9887e1155defaa1', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:0;s:13:\"is_acceptable\";b:1;}', 'no'),
(442, 'category_children', 'a:0:{}', 'yes'),
(452, '_transient_timeout_plugin_slugs', '1564485053', 'no'),
(453, '_transient_plugin_slugs', 'a:7:{i:0;s:45:\"taxonomy-terms-order/taxonomy-terms-order.php\";i:1;s:22:\"CPslider/cp-slider.php\";i:2;s:29:\"registration/registration.php\";i:3;s:40:\"texonomey-post-tab/texonomy-post-tab.php\";i:4;s:34:\"WP_TexonomeyTabs/texonomy-tabs.php\";i:5;s:48:\"WPCustomPostTypeSlider/wp-custom-post-slider.php\";i:6;s:25:\"reg/user-registration.php\";}', 'no'),
(455, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1564409311', 'no'),
(456, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4601;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:3557;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2632;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2502;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1929;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1746;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1738;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1470;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1445;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1443;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1435;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1373;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1335;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1295;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1148;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1129;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1101;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1070;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1026;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:944;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:855;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:845;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:840;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:806;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:745;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:738;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:731;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:722;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:713;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:701;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:699;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:686;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:677;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:664;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:662;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:653;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:633;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:625;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:624;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:619;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:593;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:591;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:572;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:568;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:561;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:556;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:550;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:544;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:535;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:527;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:527;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:519;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:515;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:513;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:508;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:499;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:496;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:478;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:477;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:476;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:473;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:472;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:458;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:453;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:443;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:431;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:430;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:422;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:416;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:416;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:413;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:408;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:400;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:399;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:393;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:393;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:386;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:384;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:381;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:377;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:369;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:367;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:363;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:362;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:356;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:356;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:356;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:350;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:346;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:346;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:341;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:332;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:324;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:324;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:322;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:321;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:318;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:315;}s:7:\"adsense\";a:3:{s:4:\"name\";s:7:\"adsense\";s:4:\"slug\";s:7:\"adsense\";s:5:\"count\";i:311;}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"author\";s:4:\"slug\";s:6:\"author\";s:5:\"count\";i:310;}}', 'no'),
(457, '_site_transient_timeout_theme_roots', '1564400318', 'no'),
(458, '_site_transient_theme_roots', 'a:4:{s:20:\"twentynineteen-child\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(460, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1564398648;s:7:\"checked\";a:7:{s:45:\"taxonomy-terms-order/taxonomy-terms-order.php\";s:5:\"1.5.7\";s:22:\"CPslider/cp-slider.php\";s:0:\"\";s:29:\"registration/registration.php\";s:0:\"\";s:40:\"texonomey-post-tab/texonomy-post-tab.php\";s:0:\"\";s:34:\"WP_TexonomeyTabs/texonomy-tabs.php\";s:5:\"1.0.0\";s:48:\"WPCustomPostTypeSlider/wp-custom-post-slider.php\";s:3:\"1.0\";s:25:\"reg/user-registration.php\";s:0:\"\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:45:\"taxonomy-terms-order/taxonomy-terms-order.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:34:\"w.org/plugins/taxonomy-terms-order\";s:4:\"slug\";s:20:\"taxonomy-terms-order\";s:6:\"plugin\";s:45:\"taxonomy-terms-order/taxonomy-terms-order.php\";s:11:\"new_version\";s:5:\"1.5.7\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/taxonomy-terms-order/\";s:7:\"package\";s:68:\"http://downloads.wordpress.org/plugin/taxonomy-terms-order.1.5.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/taxonomy-terms-order/assets/icon-256x256.png?rev=1564412\";s:2:\"1x\";s:73:\"https://ps.w.org/taxonomy-terms-order/assets/icon-128x128.png?rev=1564412\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/taxonomy-terms-order/assets/banner-1544x500.png?rev=1564412\";s:2:\"1x\";s:75:\"https://ps.w.org/taxonomy-terms-order/assets/banner-772x250.png?rev=1564412\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 2, '_edit_lock', '1561732522:1'),
(4, 5, '_edit_lock', '1564394226:1'),
(6, 9, '_edit_last', '1'),
(7, 9, '_edit_lock', '1563630932:1'),
(8, 10, '_wp_attached_file', '2019/07/download.png'),
(9, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:259;s:6:\"height\";i:194;s:4:\"file\";s:20:\"2019/07/download.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"download-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(10, 9, '_thumbnail_id', '10'),
(11, 11, '_edit_last', '1'),
(12, 11, '_edit_lock', '1563633182:1'),
(13, 11, '_thumbnail_id', '10'),
(14, 13, '_edit_lock', '1563633344:1'),
(16, 3, '_wp_trash_meta_status', 'draft'),
(17, 3, '_wp_trash_meta_time', '1563683786'),
(18, 3, '_wp_desired_post_slug', 'privacy-policy'),
(19, 13, '_wp_trash_meta_status', 'publish'),
(20, 13, '_wp_trash_meta_time', '1563683801'),
(21, 13, '_wp_desired_post_slug', 'home-2'),
(23, 27, '_edit_lock', '1563694733:1'),
(24, 27, '_edit_last', '1'),
(25, 27, '_thumbnail_id', '10'),
(26, 28, '_edit_lock', '1563694768:1'),
(27, 28, '_edit_last', '1'),
(28, 28, '_thumbnail_id', '10'),
(30, 30, '_edit_last', '1'),
(31, 30, '_thumbnail_id', '10'),
(32, 30, '_edit_lock', '1563721881:1'),
(33, 31, '_edit_lock', '1563722469:1'),
(34, 31, '_edit_last', '1'),
(35, 32, '_wp_attached_file', '2019/07/ss.png'),
(36, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1366;s:6:\"height\";i:768;s:4:\"file\";s:14:\"2019/07/ss.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"ss-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"ss-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"ss-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"ss-1024x576.png\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(37, 31, '_thumbnail_id', '32'),
(39, 34, '_edit_lock', '1563778356:1'),
(40, 34, '_edit_last', '1'),
(41, 34, '_thumbnail_id', '10'),
(42, 35, '_edit_lock', '1563783619:1'),
(43, 35, '_edit_last', '1'),
(44, 35, '_thumbnail_id', '10'),
(47, 40, 'order-post', 'DESC'),
(48, 40, '_edit_lock', '1563904208:1'),
(49, 41, 'order-post', 'DESC'),
(50, 41, '_edit_lock', '1563903045:1'),
(51, 5, 'order-post', 'DESC'),
(52, 40, '_edit_last', '1'),
(53, 40, 'select-post-type', 'post'),
(54, 40, 'select-post-tax', 'category'),
(55, 40, 'tabcontent_bg', ''),
(56, 40, 'tabbody_color', ''),
(57, 40, 'tabtitle_bg', ''),
(58, 40, 'tabtxt_color', ''),
(59, 40, 'tabtitleactive_bg', ''),
(60, 40, 'tabtxtact_color', ''),
(61, 40, 'num-post', '0'),
(62, 1, '_edit_lock', '1563904349:1'),
(64, 1, 'order-post', 'DESC'),
(65, 44, 'order-post', 'DESC'),
(66, 44, '_edit_lock', '1564377349:1'),
(68, 44, '_thumbnail_id', '32'),
(69, 46, 'order-post', 'DESC'),
(70, 46, '_edit_lock', '1564251751:1'),
(72, 46, '_thumbnail_id', '10'),
(74, 1, '_thumbnail_id', '10'),
(75, 49, '_edit_lock', '1563912558:1'),
(76, 50, '_edit_lock', '1564217554:1'),
(78, 50, '_thumbnail_id', '32'),
(79, 5, '_wp_page_template', 'full-width-template.php'),
(80, 52, '_edit_lock', '1564063847:1'),
(81, 54, '_edit_lock', '1564063861:1'),
(82, 56, '_edit_lock', '1564063884:1'),
(83, 58, '_menu_item_type', 'post_type'),
(84, 58, '_menu_item_menu_item_parent', '0'),
(85, 58, '_menu_item_object_id', '56'),
(86, 58, '_menu_item_object', 'page'),
(87, 58, '_menu_item_target', ''),
(88, 58, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(89, 58, '_menu_item_xfn', ''),
(90, 58, '_menu_item_url', ''),
(92, 59, '_menu_item_type', 'post_type'),
(93, 59, '_menu_item_menu_item_parent', '0'),
(94, 59, '_menu_item_object_id', '54'),
(95, 59, '_menu_item_object', 'page'),
(96, 59, '_menu_item_target', ''),
(97, 59, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(98, 59, '_menu_item_xfn', ''),
(99, 59, '_menu_item_url', ''),
(101, 60, '_menu_item_type', 'post_type'),
(102, 60, '_menu_item_menu_item_parent', '0'),
(103, 60, '_menu_item_object_id', '52'),
(104, 60, '_menu_item_object', 'page'),
(105, 60, '_menu_item_target', ''),
(106, 60, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(107, 60, '_menu_item_xfn', ''),
(108, 60, '_menu_item_url', ''),
(110, 61, '_menu_item_type', 'post_type'),
(111, 61, '_menu_item_menu_item_parent', '0'),
(112, 61, '_menu_item_object_id', '5'),
(113, 61, '_menu_item_object', 'page'),
(114, 61, '_menu_item_target', ''),
(115, 61, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(116, 61, '_menu_item_xfn', ''),
(117, 61, '_menu_item_url', ''),
(119, 62, '_wp_attached_file', '2019/07/images.jpg'),
(120, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:217;s:6:\"height\";i:232;s:4:\"file\";s:18:\"2019/07/images.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"images-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(121, 63, '_wp_attached_file', '2019/07/cropped-images.jpg'),
(122, 63, '_wp_attachment_context', 'custom-logo'),
(123, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:190;s:6:\"height\";i:190;s:4:\"file\";s:26:\"2019/07/cropped-images.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"cropped-images-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(124, 64, '_edit_lock', '1564065007:1'),
(125, 64, '_wp_trash_meta_status', 'publish'),
(126, 64, '_wp_trash_meta_time', '1564065010'),
(130, 1, '_wp_trash_meta_status', 'publish'),
(131, 1, '_wp_trash_meta_time', '1564217707'),
(132, 1, '_wp_desired_post_slug', 'hello-world'),
(133, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(134, 50, '_wp_trash_meta_status', 'publish'),
(135, 50, '_wp_trash_meta_time', '1564217713'),
(136, 50, '_wp_desired_post_slug', 'stst'),
(142, 69, '_wp_attached_file', '2019/07/DL-Communication.jpg'),
(143, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:990;s:6:\"height\";i:660;s:4:\"file\";s:28:\"2019/07/DL-Communication.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"DL-Communication-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"DL-Communication-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"DL-Communication-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(144, 70, '_wp_attached_file', '2019/07/DL-Learning-1.jpg'),
(145, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:990;s:6:\"height\";i:660;s:4:\"file\";s:25:\"2019/07/DL-Learning-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"DL-Learning-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"DL-Learning-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"DL-Learning-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(146, 71, '_wp_attached_file', '2019/07/DL-Technology.jpg'),
(147, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:990;s:6:\"height\";i:660;s:4:\"file\";s:25:\"2019/07/DL-Technology.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"DL-Technology-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"DL-Technology-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"DL-Technology-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(148, 72, '_wp_attached_file', '2019/07/arrow-right.png'),
(149, 72, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:18;s:6:\"height\";i:18;s:4:\"file\";s:23:\"2019/07/arrow-right.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(150, 73, '_wp_attached_file', '2019/07/DL-communication.png'),
(151, 73, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:62;s:6:\"height\";i:62;s:4:\"file\";s:28:\"2019/07/DL-communication.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(152, 74, '_wp_attached_file', '2019/07/DL-learning.png'),
(153, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:62;s:6:\"height\";i:62;s:4:\"file\";s:23:\"2019/07/DL-learning.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(154, 75, '_wp_attached_file', '2019/07/DL-technology.png'),
(155, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:62;s:6:\"height\";i:62;s:4:\"file\";s:25:\"2019/07/DL-technology.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(156, 76, '_wp_attached_file', '2019/07/minus-01.png'),
(157, 76, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:24;s:6:\"height\";i:24;s:4:\"file\";s:20:\"2019/07/minus-01.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(158, 77, '_wp_attached_file', '2019/07/plus-01.png'),
(159, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:24;s:6:\"height\";i:24;s:4:\"file\";s:19:\"2019/07/plus-01.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(160, 78, '_edit_lock', '1564234416:1'),
(166, 81, '_edit_lock', '1564404190:1'),
(169, 81, '_thumbnail_id', '10'),
(173, 85, '_edit_lock', '1564399868:1'),
(175, 85, '_thumbnail_id', '70'),
(176, 87, '_edit_lock', '1564404150:1'),
(178, 87, '_thumbnail_id', '71'),
(179, 87, '_edit_last', '1'),
(181, 85, '_edit_last', '1'),
(183, 81, '_edit_last', '1'),
(185, 46, '_edit_last', '1'),
(187, 44, '_edit_last', '1'),
(188, 99, '_edit_lock', '1564314970:1'),
(191, 101, '_edit_lock', '1564399816:1'),
(193, 103, '_edit_lock', '1564312809:1'),
(195, 46, '_wp_trash_meta_status', 'publish'),
(196, 46, '_wp_trash_meta_time', '1564312961'),
(197, 46, '_wp_desired_post_slug', 'post3'),
(198, 105, '_wp_attached_file', '2019/07/placeholder.jpg'),
(199, 105, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:595;s:6:\"height\";i:595;s:4:\"file\";s:23:\"2019/07/placeholder.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"placeholder-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"placeholder-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(200, 71, '_edit_lock', '1564320343:1'),
(201, 71, '_edit_last', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-06-28 14:28:35', '2019-06-28 14:28:35', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2019-07-27 08:55:07', '2019-07-27 08:55:07', '', 0, 'http://localhost/practicewp/?p=1', 0, 'post', '', 1),
(2, 1, '2019-06-28 14:28:35', '2019-06-28 14:28:35', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/practicewp/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-06-28 14:28:35', '2019-06-28 14:28:35', '', 0, 'http://localhost/practicewp/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-06-28 14:28:35', '2019-06-28 14:28:35', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/practicewp.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2019-07-21 04:36:26', '2019-07-21 04:36:26', '', 0, 'http://localhost/practicewp/?page_id=3', 0, 'page', '', 0),
(5, 1, '2019-06-28 14:38:03', '2019-06-28 14:38:03', '<!-- wp:html -->\n<div class=\"main-title\">\n <h2 class=\"font-size-huge brand-white font-regular\">DelphianLogic in Action</h2>\n <p class=\"font-size-base gray-light\">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>\n</div>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p>[WP_TexonomyTab]</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-07-29 04:11:53', '2019-07-29 04:11:53', '', 0, 'http://localhost/practicewp/?page_id=5', 0, 'page', '', 0),
(6, 1, '2019-06-28 14:38:03', '2019-06-28 14:38:03', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-06-28 14:38:03', '2019-06-28 14:38:03', '', 5, 'http://localhost/practicewp/2019/06/28/5-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2019-07-20 13:47:43', '2019-07-20 13:47:43', '', 'First Image', '', 'publish', 'open', 'closed', '', 'first-image', '', '', '2019-07-20 13:47:43', '2019-07-20 13:47:43', '', 0, 'http://localhost/practicewp/?post_type=book&#038;p=9', 0, 'book', '', 0),
(10, 1, '2019-07-20 13:47:35', '2019-07-20 13:47:35', '', 'download', '', 'inherit', 'open', 'closed', '', 'download', '', '', '2019-07-20 13:47:35', '2019-07-20 13:47:35', '', 9, 'http://localhost/practicewp/wp-content/uploads/2019/07/download.png', 0, 'attachment', 'image/png', 0),
(11, 1, '2019-07-20 13:58:11', '2019-07-20 13:58:11', '', 'Second Image', '', 'publish', 'open', 'closed', '', 'second-image', '', '', '2019-07-20 13:58:11', '2019-07-20 13:58:11', '', 0, 'http://localhost/practicewp/?post_type=book&#038;p=11', 0, 'book', '', 0),
(12, 1, '2019-07-20 14:02:12', '2019-07-20 14:02:12', '[foobar]', 'Second Image', '', 'inherit', 'closed', 'closed', '', '11-autosave-v1', '', '', '2019-07-20 14:02:12', '2019-07-20 14:02:12', '', 11, 'http://localhost/practicewp/2019/07/20/11-autosave-v1/', 0, 'revision', '', 0),
(13, 1, '2019-07-20 14:02:51', '2019-07-20 14:02:51', '', 'Home', '', 'trash', 'closed', 'closed', '', 'home-2__trashed', '', '', '2019-07-21 04:36:41', '2019-07-21 04:36:41', '', 0, 'http://localhost/practicewp/?page_id=13', 0, 'page', '', 0),
(14, 1, '2019-07-20 14:02:51', '2019-07-20 14:02:51', '', 'Home', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-07-20 14:02:51', '2019-07-20 14:02:51', '', 13, 'http://localhost/practicewp/2019/07/20/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2019-07-20 14:03:43', '2019-07-20 14:03:43', '<!-- wp:code -->\n<pre class=\"wp-block-code\"><code>show_slider</code></pre>\n<!-- /wp:code -->', 'Home', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-07-20 14:03:43', '2019-07-20 14:03:43', '', 13, 'http://localhost/practicewp/2019/07/20/13-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2019-07-20 14:08:01', '2019-07-20 14:08:01', '', 'Home', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-07-20 14:08:01', '2019-07-20 14:08:01', '', 13, 'http://localhost/practicewp/2019/07/20/13-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2019-07-21 04:36:26', '2019-07-21 04:36:26', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/practicewp.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2019-07-21 04:36:26', '2019-07-21 04:36:26', '', 3, 'http://localhost/practicewp/2019/07/21/3-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2019-07-21 04:36:58', '2019-07-21 04:36:58', '<!-- wp:code -->\n<pre class=\"wp-block-code\"><code>registration_form</code></pre>\n<!-- /wp:code -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-07-21 04:36:58', '2019-07-21 04:36:58', '', 5, 'http://localhost/practicewp/2019/07/21/5-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2019-07-21 04:37:59', '2019-07-21 04:37:59', '<!-- wp:code -->\n<pre class=\"wp-block-code\"><code></code></pre>\n<!-- /wp:code -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-07-21 04:37:59', '2019-07-21 04:37:59', '', 5, 'http://localhost/practicewp/2019/07/21/5-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2019-07-21 05:00:31', '2019-07-21 05:00:31', '<!-- wp:code -->\n<pre class=\"wp-block-code\"><code>show_slider</code></pre>\n<!-- /wp:code -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-07-21 05:00:31', '2019-07-21 05:00:31', '', 5, 'http://localhost/practicewp/2019/07/21/5-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2019-07-21 05:06:39', '2019-07-21 05:06:39', '<!-- wp:code -->\n<pre class=\"wp-block-code\"><code></code></pre>\n<!-- /wp:code -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-07-21 05:06:39', '2019-07-21 05:06:39', '', 5, 'http://localhost/practicewp/2019/07/21/5-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2019-07-21 07:41:14', '2019-07-21 07:41:14', '', 'Nilesh', '', 'publish', 'closed', 'closed', '', 'nilesh', '', '', '2019-07-21 07:41:14', '2019-07-21 07:41:14', '', 0, 'http://localhost/practicewp/?post_type=post_slider&#038;p=27', 0, 'post_slider', '', 0),
(28, 1, '2019-07-21 07:41:49', '2019-07-21 07:41:49', '', 'Manoj', '', 'publish', 'closed', 'closed', '', 'manoj', '', '', '2019-07-21 07:41:49', '2019-07-21 07:41:49', '', 0, 'http://localhost/practicewp/?post_type=post_slider&#038;p=28', 0, 'post_slider', '', 0),
(30, 1, '2019-07-21 14:29:20', '2019-07-21 14:29:20', '', 'slide one', '', 'publish', 'closed', 'closed', '', '30', '', '', '2019-07-21 14:29:28', '2019-07-21 14:29:28', '', 0, 'http://localhost/practicewp/?post_type=gallery&#038;p=30', 0, 'gallery', '', 0),
(31, 1, '2019-07-21 15:14:10', '2019-07-21 15:14:10', '', 'slide two', '', 'publish', 'closed', 'closed', '', 'slide-two', '', '', '2019-07-21 15:14:10', '2019-07-21 15:14:10', '', 0, 'http://localhost/practicewp/?post_type=gallery&#038;p=31', 0, 'gallery', '', 0),
(32, 1, '2019-07-21 15:14:06', '2019-07-21 15:14:06', '', 'ss', '', 'inherit', 'open', 'closed', '', 'ss', '', '', '2019-07-21 15:14:06', '2019-07-21 15:14:06', '', 31, 'http://localhost/practicewp/wp-content/uploads/2019/07/ss.png', 0, 'attachment', 'image/png', 0),
(34, 1, '2019-07-22 06:54:45', '2019-07-22 06:54:45', '', 'Ganesh 45', '', 'publish', 'closed', 'closed', '', 'ganesh-45', '', '', '2019-07-22 06:54:56', '2019-07-22 06:54:56', '', 0, 'http://localhost/practicewp/?post_type=postslider&#038;p=34', 0, 'postslider', '', 0),
(35, 1, '2019-07-22 08:05:35', '2019-07-22 08:05:35', '', 'Manoj', '', 'publish', 'closed', 'closed', '', 'manoj', '', '', '2019-07-22 08:05:35', '2019-07-22 08:05:35', '', 0, 'http://localhost/practicewp/?post_type=postslider&#038;p=35', 0, 'postslider', '', 0),
(36, 1, '2019-07-22 08:23:25', '2019-07-22 08:23:25', '<!-- wp:code -->\n<pre class=\"wp-block-code\"><code>[show_cpt_slider]</code></pre>\n<!-- /wp:code -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-07-22 08:23:25', '2019-07-22 08:23:25', '', 5, 'http://localhost/practicewp/2019/07/22/5-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2019-07-22 08:24:47', '2019-07-22 08:24:47', '<!-- wp:code -->\n<pre class=\"wp-block-code\"><code>show_cpt_slider</code></pre>\n<!-- /wp:code -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-07-22 08:24:47', '2019-07-22 08:24:47', '', 5, 'http://localhost/practicewp/2019/07/22/5-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2019-07-22 08:25:05', '2019-07-22 08:25:05', '<!-- wp:code -->\n<pre class=\"wp-block-code\"><code>[show_cpt_slider]</code></pre>\n<!-- /wp:code -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-07-22 08:25:05', '2019-07-22 08:25:05', '', 5, 'http://localhost/practicewp/2019/07/22/5-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2019-07-23 17:34:00', '2019-07-23 17:34:00', '', 'Our Product', '', 'publish', 'closed', 'closed', '', '40', '', '', '2019-07-23 17:35:23', '2019-07-23 17:35:23', '', 0, 'http://localhost/practicewp/?post_type=wpttab_post&#038;p=40', 0, 'wpttab_post', '', 0),
(41, 1, '2019-07-23 17:32:57', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-23 17:32:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/practicewp/?page_id=41', 0, 'page', '', 0),
(42, 1, '2019-07-23 17:33:31', '2019-07-23 17:33:31', '<!-- wp:code -->\n<pre class=\"wp-block-code\"><code>[show_cpt_slider]</code></pre>\n<!-- /wp:code -->\n\n<!-- wp:code -->\n<pre class=\"wp-block-code\"><code>[WptTabpost tab_id=\"40\"]</code></pre>\n<!-- /wp:code -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-07-23 17:33:31', '2019-07-23 17:33:31', '', 5, 'http://localhost/practicewp/2019/07/23/5-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2019-07-23 17:53:32', '2019-07-23 17:53:32', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-07-23 17:53:32', '2019-07-23 17:53:32', '', 1, 'http://localhost/practicewp/2019/07/23/1-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2019-07-23 17:54:00', '2019-07-23 17:54:00', '', 'post1', '', 'publish', 'open', 'open', '', 'post2', '', '', '2019-07-29 05:17:13', '2019-07-29 05:17:13', '', 0, 'http://localhost/practicewp/?p=44', 0, 'post', '', 0),
(45, 1, '2019-07-23 17:54:00', '2019-07-23 17:54:00', '', 'post2', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2019-07-23 17:54:00', '2019-07-23 17:54:00', '', 44, 'http://localhost/practicewp/2019/07/23/44-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2019-07-23 17:54:31', '2019-07-23 17:54:31', '', 'Post2', '', 'trash', 'open', 'open', '', 'post3__trashed', '', '', '2019-07-28 11:22:41', '2019-07-28 11:22:41', '', 0, 'http://localhost/practicewp/?p=46', 0, 'post', '', 0),
(47, 1, '2019-07-23 17:54:31', '2019-07-23 17:54:31', '', 'Post3', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2019-07-23 17:54:31', '2019-07-23 17:54:31', '', 46, 'http://localhost/practicewp/2019/07/23/46-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2019-07-23 18:01:01', '2019-07-23 18:01:01', '<!-- wp:code -->\n<pre class=\"wp-block-code\"><code>[show_cpt_slider]</code></pre>\n<!-- /wp:code -->\n\n<!-- wp:code -->\n<pre class=\"wp-block-code\"><code>[WP_texonomy_post_tabs]</code></pre>\n<!-- /wp:code -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-07-23 18:01:01', '2019-07-23 18:01:01', '', 5, 'http://localhost/practicewp/2019/07/23/5-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2019-07-23 20:00:39', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-07-23 20:00:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/practicewp/?p=49', 0, 'post', '', 0),
(50, 1, '2019-07-24 03:18:00', '2019-07-24 03:18:00', '', 'stst', '', 'trash', 'open', 'open', '', 'stst__trashed', '', '', '2019-07-27 08:55:13', '2019-07-27 08:55:13', '', 0, 'http://localhost/practicewp/?p=50', 0, 'post', '', 0),
(51, 1, '2019-07-24 03:18:00', '2019-07-24 03:18:00', '', 'stst', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2019-07-24 03:18:00', '2019-07-24 03:18:00', '', 50, 'http://localhost/practicewp/2019/07/24/50-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2019-07-25 14:13:09', '2019-07-25 14:13:09', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2019-07-25 14:13:09', '2019-07-25 14:13:09', '', 0, 'http://localhost/practicewp/?page_id=52', 0, 'page', '', 0),
(53, 1, '2019-07-25 14:13:09', '2019-07-25 14:13:09', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2019-07-25 14:13:09', '2019-07-25 14:13:09', '', 52, 'http://localhost/practicewp/2019/07/25/52-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2019-07-25 14:13:23', '2019-07-25 14:13:23', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2019-07-25 14:13:23', '2019-07-25 14:13:23', '', 0, 'http://localhost/practicewp/?page_id=54', 0, 'page', '', 0),
(55, 1, '2019-07-25 14:13:23', '2019-07-25 14:13:23', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2019-07-25 14:13:23', '2019-07-25 14:13:23', '', 54, 'http://localhost/practicewp/2019/07/25/54-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2019-07-25 14:13:41', '2019-07-25 14:13:41', '', 'Products', '', 'publish', 'closed', 'closed', '', 'products', '', '', '2019-07-25 14:13:41', '2019-07-25 14:13:41', '', 0, 'http://localhost/practicewp/?page_id=56', 0, 'page', '', 0),
(57, 1, '2019-07-25 14:13:41', '2019-07-25 14:13:41', '', 'Products', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2019-07-25 14:13:41', '2019-07-25 14:13:41', '', 56, 'http://localhost/practicewp/2019/07/25/56-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2019-07-25 14:15:02', '2019-07-25 14:15:02', ' ', '', '', 'publish', 'closed', 'closed', '', '58', '', '', '2019-07-25 14:15:02', '2019-07-25 14:15:02', '', 0, 'http://localhost/practicewp/?p=58', 2, 'nav_menu_item', '', 0),
(59, 1, '2019-07-25 14:15:03', '2019-07-25 14:15:03', ' ', '', '', 'publish', 'closed', 'closed', '', '59', '', '', '2019-07-25 14:15:03', '2019-07-25 14:15:03', '', 0, 'http://localhost/practicewp/?p=59', 4, 'nav_menu_item', '', 0),
(60, 1, '2019-07-25 14:15:02', '2019-07-25 14:15:02', ' ', '', '', 'publish', 'closed', 'closed', '', '60', '', '', '2019-07-25 14:15:02', '2019-07-25 14:15:02', '', 0, 'http://localhost/practicewp/?p=60', 3, 'nav_menu_item', '', 0),
(61, 1, '2019-07-25 14:15:02', '2019-07-25 14:15:02', ' ', '', '', 'publish', 'closed', 'closed', '', '61', '', '', '2019-07-25 14:15:02', '2019-07-25 14:15:02', '', 0, 'http://localhost/practicewp/?p=61', 1, 'nav_menu_item', '', 0),
(62, 1, '2019-07-25 14:29:54', '2019-07-25 14:29:54', '', 'images', '', 'inherit', 'open', 'closed', '', 'images', '', '', '2019-07-25 14:29:54', '2019-07-25 14:29:54', '', 0, 'http://localhost/practicewp/wp-content/uploads/2019/07/images.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2019-07-25 14:30:01', '2019-07-25 14:30:01', 'http://localhost/practicewp/wp-content/uploads/2019/07/cropped-images.jpg', 'cropped-images.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-images-jpg', '', '', '2019-07-25 14:30:01', '2019-07-25 14:30:01', '', 0, 'http://localhost/practicewp/wp-content/uploads/2019/07/cropped-images.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2019-07-25 14:30:09', '2019-07-25 14:30:09', '{\n    \"blogname\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-07-25 14:30:07\"\n    },\n    \"twentynineteen-child::custom_logo\": {\n        \"value\": 63,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-07-25 14:30:07\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd44cf530-4c30-41cc-b4f7-96e65da06bcb', '', '', '2019-07-25 14:30:09', '2019-07-25 14:30:09', '', 0, 'http://localhost/practicewp/?p=64', 0, 'customize_changeset', '', 0),
(65, 1, '2019-07-25 14:33:50', '2019-07-25 14:33:50', '<!-- wp:code -->\n<pre class=\"wp-block-code\"><code>[WP_texonomy_post_tabs]</code></pre>\n<!-- /wp:code -->\n\n<!-- wp:code -->\n<pre class=\"wp-block-code\"><code>[show_cpt_slider]</code></pre>\n<!-- /wp:code -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-07-25 14:33:50', '2019-07-25 14:33:50', '', 5, 'http://localhost/practicewp/2019/07/25/5-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2019-07-25 14:34:39', '2019-07-25 14:34:39', '[WP_texonomy_post_tabs]\n<!-- /wp:code -->\n\n<!-- wp:code -->\n<pre class=\"wp-block-code\"><code>[show_cpt_slider]</code></pre>\n<!-- /wp:code -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-07-25 14:34:39', '2019-07-25 14:34:39', '', 5, 'http://localhost/practicewp/2019/07/25/5-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2019-07-25 14:57:23', '2019-07-25 14:57:23', '[WP_texonomy_post_tabs]', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-07-25 14:57:23', '2019-07-25 14:57:23', '', 5, 'http://localhost/practicewp/2019/07/25/5-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2019-07-27 07:28:12', '2019-07-27 07:28:12', '[WP_TexonomyTab]', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-07-27 07:28:12', '2019-07-27 07:28:12', '', 5, 'http://localhost/practicewp/2019/07/27/5-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2019-07-27 12:04:02', '2019-07-27 12:04:02', '', 'DL-Communication', '', 'inherit', 'open', 'closed', '', 'dl-communication', '', '', '2019-07-27 12:04:02', '2019-07-27 12:04:02', '', 0, 'http://localhost/practicewp/wp-content/uploads/2019/07/DL-Communication.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2019-07-27 12:04:04', '2019-07-27 12:04:04', '', 'DL-Learning-1', '', 'inherit', 'open', 'closed', '', 'dl-learning-1', '', '', '2019-07-27 12:04:04', '2019-07-27 12:04:04', '', 0, 'http://localhost/practicewp/wp-content/uploads/2019/07/DL-Learning-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2019-07-27 12:04:04', '2019-07-27 12:04:04', '', 'DL-Technology', '', 'inherit', 'open', 'closed', '', 'dl-technology', '', '', '2019-07-28 12:15:44', '2019-07-28 12:15:44', '', 0, 'http://localhost/practicewp/wp-content/uploads/2019/07/DL-Technology.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2019-07-27 12:07:31', '2019-07-27 12:07:31', '', 'arrow-right', '', 'inherit', 'open', 'closed', '', 'arrow-right', '', '', '2019-07-27 12:07:31', '2019-07-27 12:07:31', '', 0, 'http://localhost/practicewp/wp-content/uploads/2019/07/arrow-right.png', 0, 'attachment', 'image/png', 0),
(73, 1, '2019-07-27 12:08:26', '2019-07-27 12:08:26', '', 'DL-communication', '', 'inherit', 'open', 'closed', '', 'dl-communication-2', '', '', '2019-07-27 12:08:26', '2019-07-27 12:08:26', '', 0, 'http://localhost/practicewp/wp-content/uploads/2019/07/DL-communication.png', 0, 'attachment', 'image/png', 0),
(74, 1, '2019-07-27 13:21:19', '2019-07-27 13:21:19', '', 'DL-learning', '', 'inherit', 'open', 'closed', '', 'dl-learning', '', '', '2019-07-27 13:21:19', '2019-07-27 13:21:19', '', 0, 'http://localhost/practicewp/wp-content/uploads/2019/07/DL-learning.png', 0, 'attachment', 'image/png', 0),
(75, 1, '2019-07-27 13:21:35', '2019-07-27 13:21:35', '', 'DL-technology', '', 'inherit', 'open', 'closed', '', 'dl-technology-2', '', '', '2019-07-27 13:21:35', '2019-07-27 13:21:35', '', 0, 'http://localhost/practicewp/wp-content/uploads/2019/07/DL-technology.png', 0, 'attachment', 'image/png', 0),
(76, 1, '2019-07-27 13:21:49', '2019-07-27 13:21:49', '', 'minus-01', '', 'inherit', 'open', 'closed', '', 'minus-01', '', '', '2019-07-27 13:21:49', '2019-07-27 13:21:49', '', 0, 'http://localhost/practicewp/wp-content/uploads/2019/07/minus-01.png', 0, 'attachment', 'image/png', 0),
(77, 1, '2019-07-27 13:22:55', '2019-07-27 13:22:55', '', 'plus-01', '', 'inherit', 'open', 'closed', '', 'plus-01', '', '', '2019-07-27 13:22:55', '2019-07-27 13:22:55', '', 0, 'http://localhost/practicewp/wp-content/uploads/2019/07/plus-01.png', 0, 'attachment', 'image/png', 0),
(78, 1, '2019-07-27 13:34:28', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-07-27 13:34:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/practicewp/?p=78', 0, 'post', '', 0),
(79, 1, '2019-07-27 13:36:21', '2019-07-27 13:36:21', '', 'Post2', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2019-07-27 13:36:21', '2019-07-27 13:36:21', '', 46, 'http://localhost/practicewp/2019/07/27/46-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2019-07-27 13:36:40', '2019-07-27 13:36:40', '', 'post1', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2019-07-27 13:36:40', '2019-07-27 13:36:40', '', 44, 'http://localhost/practicewp/2019/07/27/44-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2019-07-27 13:38:02', '2019-07-27 13:38:02', '<!-- wp:paragraph -->\n<p> Lorem Ipsum is simply dummy text of the printing and typesetting industry. </p>\n<!-- /wp:paragraph -->', 'Communication1', '', 'publish', 'open', 'open', '', 'post3-2', '', '', '2019-07-29 11:33:52', '2019-07-29 11:33:52', '', 0, 'http://localhost/practicewp/?p=81', 0, 'post', '', 0),
(82, 1, '2019-07-27 13:38:02', '2019-07-27 13:38:02', '', 'Post3', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2019-07-27 13:38:02', '2019-07-27 13:38:02', '', 81, 'http://localhost/practicewp/2019/07/27/81-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2019-07-27 14:33:45', '2019-07-27 14:33:45', '', 'comm', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2019-07-27 14:33:45', '2019-07-27 14:33:45', '', 81, 'http://localhost/practicewp/2019/07/27/81-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2019-07-27 14:34:06', '2019-07-27 14:34:06', '', 'Communication1', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2019-07-27 14:34:06', '2019-07-27 14:34:06', '', 81, 'http://localhost/practicewp/2019/07/27/81-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2019-07-27 14:34:57', '2019-07-27 14:34:57', '<!-- wp:paragraph -->\n<p> Lorem Ipsum is simply dummy te<em>xt</em> of the printing and typesetting industry. </p>\n<!-- /wp:paragraph -->', 'Communication2', '', 'publish', 'open', 'open', '', 'communication2', '', '', '2019-07-29 11:33:31', '2019-07-29 11:33:31', '', 0, 'http://localhost/practicewp/?p=85', 0, 'post', '', 0),
(86, 1, '2019-07-27 14:34:57', '2019-07-27 14:34:57', '', 'Communication2', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2019-07-27 14:34:57', '2019-07-27 14:34:57', '', 85, 'http://localhost/practicewp/2019/07/27/85-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2019-07-27 14:37:18', '2019-07-27 14:37:18', '<!-- wp:paragraph -->\n<p> Lorem Ipsum is simply dummy text of the printing and typesetting industry. </p>\n<!-- /wp:paragraph -->', 'Communication3', '', 'publish', 'open', 'open', '', 'communication3', '', '', '2019-07-29 11:33:03', '2019-07-29 11:33:03', '', 0, 'http://localhost/practicewp/?p=87', 0, 'post', '', 0),
(88, 1, '2019-07-27 14:37:18', '2019-07-27 14:37:18', '', 'Communication3', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2019-07-27 14:37:18', '2019-07-27 14:37:18', '', 87, 'http://localhost/practicewp/2019/07/27/87-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2019-07-28 07:47:28', '2019-07-28 07:47:28', '<p> </p>\n<p>[WP_TexonomyTab]</p>\n\n<!-- wp:html -->\n<div class=\"main-title\">\n <h1>DelphianLogic in Action</h1>\n <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s</p>\n</div>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-07-28 07:47:28', '2019-07-28 07:47:28', '', 5, 'http://localhost/practicewp/2019/07/28/5-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2019-07-28 08:17:33', '2019-07-28 08:17:33', '<p> </p>\n<p>[WP_TexonomyTab]</p>\n\n<!-- wp:html -->\n<div class=\"main-title\">\n <h1 class=\"font-size-huge\">DelphianLogic in Action</h1>\n <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s</p>\n</div>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-07-28 08:17:33', '2019-07-28 08:17:33', '', 5, 'http://localhost/practicewp/2019/07/28/5-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2019-07-28 09:34:33', '2019-07-28 09:34:33', '<!-- wp:html -->\n<div class=\"main-title\">\n <h1 class=\"font-size-huge\">DelphianLogic in Action</h1>\n <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s</p>\n</div>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p>[WP_TexonomyTab]</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-07-28 09:34:33', '2019-07-28 09:34:33', '', 5, 'http://localhost/practicewp/2019/07/28/5-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2019-07-28 09:36:47', '2019-07-28 09:36:47', '<!-- wp:html -->\n<div class=\"main-title\">\n <h2 class=\"font-size-huge\">DelphianLogic in Action</h1>\n <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s</p>\n</div>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p>[WP_TexonomyTab]</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-07-28 09:36:47', '2019-07-28 09:36:47', '', 5, 'http://localhost/practicewp/2019/07/28/5-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2019-07-28 09:37:32', '2019-07-28 09:37:32', '<!-- wp:html -->\n<div class=\"main-title\">\n <h2 class=\"font-size-huge\">DelphianLogic in Action</h1>\n <p class=\"font-size-base\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s</p>\n</div>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p>[WP_TexonomyTab]</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-07-28 09:37:32', '2019-07-28 09:37:32', '', 5, 'http://localhost/practicewp/2019/07/28/5-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2019-07-28 09:49:59', '2019-07-28 09:49:59', '<!-- wp:html -->\n<div class=\"main-title\">\n <h2 class=\"font-size-huge brand-white\">DelphianLogic in Action</h1>\n <p class=\"font-size-base\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s</p>\n</div>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p>[WP_TexonomyTab]</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-07-28 09:49:59', '2019-07-28 09:49:59', '', 5, 'http://localhost/practicewp/2019/07/28/5-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2019-07-28 09:51:30', '2019-07-28 09:51:30', '<!-- wp:html -->\n<div class=\"main-title\">\n <h2 class=\"font-size-huge brand-white\">DelphianLogic in Action</h1>\n <p class=\"font-size-base gray-white\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s</p>\n</div>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p>[WP_TexonomyTab]</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-07-28 09:51:30', '2019-07-28 09:51:30', '', 5, 'http://localhost/practicewp/2019/07/28/5-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2019-07-28 09:53:06', '2019-07-28 09:53:06', '<!-- wp:html -->\n<div class=\"main-title\">\n <h2 class=\"font-size-huge brand-white\">DelphianLogic in Action</h1>\n <p class=\"font-size-base gray-lighter\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s</p>\n</div>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p>[WP_TexonomyTab]</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-07-28 09:53:06', '2019-07-28 09:53:06', '', 5, 'http://localhost/practicewp/2019/07/28/5-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2019-07-28 11:20:43', '2019-07-28 11:20:43', '<!-- wp:paragraph -->\n<p>Usability enhancement and Training for Transaction Portal for Customers</p>\n<!-- /wp:paragraph -->', 'Digital Learning Infrastructure', '', 'publish', 'open', 'open', '', 'digital-learning-infrastructure', '', '', '2019-07-28 11:21:01', '2019-07-28 11:21:01', '', 0, 'http://localhost/practicewp/?p=99', 0, 'post', '', 0),
(100, 1, '2019-07-28 11:20:43', '2019-07-28 11:20:43', '<!-- wp:paragraph -->\n<p>Usability enhancement and Training for Transaction Portal for Customers</p>\n<!-- /wp:paragraph -->', 'Digital Learning Infrastructure', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2019-07-28 11:20:43', '2019-07-28 11:20:43', '', 99, 'http://localhost/practicewp/2019/07/28/99-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2019-07-28 11:21:55', '2019-07-28 11:21:55', '<!-- wp:paragraph -->\n<p>\n\nUsability enhancement and Training for Transaction Portal for Customers\n\n</p>\n<!-- /wp:paragraph -->', 'Digital Learning Infrastructure', '', 'publish', 'open', 'open', '', 'digital-learning-infrastructure-2', '', '', '2019-07-28 11:21:55', '2019-07-28 11:21:55', '', 0, 'http://localhost/practicewp/?p=101', 0, 'post', '', 0),
(102, 1, '2019-07-28 11:21:55', '2019-07-28 11:21:55', '<!-- wp:paragraph -->\n<p>\n\nUsability enhancement and Training for Transaction Portal for Customers\n\n</p>\n<!-- /wp:paragraph -->', 'Digital Learning Infrastructure', '', 'inherit', 'closed', 'closed', '', '101-revision-v1', '', '', '2019-07-28 11:21:55', '2019-07-28 11:21:55', '', 101, 'http://localhost/practicewp/2019/07/28/101-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2019-07-28 11:22:30', '2019-07-28 11:22:30', '<!-- wp:paragraph -->\n<p>\n\nUsability enhancement and Training for Transaction Portal for Customers\n\n</p>\n<!-- /wp:paragraph -->', 'Digital Learning Infrastructure', '', 'publish', 'open', 'open', '', 'digital-learning-infrastructure-3', '', '', '2019-07-28 11:22:30', '2019-07-28 11:22:30', '', 0, 'http://localhost/practicewp/?p=103', 0, 'post', '', 0),
(104, 1, '2019-07-28 11:22:30', '2019-07-28 11:22:30', '<!-- wp:paragraph -->\n<p>\n\nUsability enhancement and Training for Transaction Portal for Customers\n\n</p>\n<!-- /wp:paragraph -->', 'Digital Learning Infrastructure', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2019-07-28 11:22:30', '2019-07-28 11:22:30', '', 103, 'http://localhost/practicewp/2019/07/28/103-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2019-07-28 12:02:16', '2019-07-28 12:02:16', '', 'placeholder', '', 'inherit', 'open', 'closed', '', 'placeholder', '', '', '2019-07-28 12:02:16', '2019-07-28 12:02:16', '', 0, 'http://localhost/practicewp/wp-content/uploads/2019/07/placeholder.jpg', 0, 'attachment', 'image/jpeg', 0),
(106, 1, '2019-07-28 13:28:29', '2019-07-28 13:28:29', '<!-- wp:html -->\n<div class=\"main-title\">\n <h2 class=\"font-size-huge brand-white\">DelphianLogic in Action</h2>\n <p class=\"font-size-base gray-lighter\">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>\n</div>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p>[WP_TexonomyTab]</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-07-28 13:28:29', '2019-07-28 13:28:29', '', 5, 'http://localhost/practicewp/2019/07/28/5-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2019-07-29 04:08:58', '2019-07-29 04:08:58', '<!-- wp:html -->\n<div class=\"main-title\">\n <h2 class=\"font-size-huge brand-white\">DelphianLogic in Action</h2>\n <p class=\"font-size-base gray-light\">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>\n</div>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p>[WP_TexonomyTab]</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-07-29 04:08:58', '2019-07-29 04:08:58', '', 5, 'http://localhost/practicewp/2019/07/29/5-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2019-07-29 04:11:53', '2019-07-29 04:11:53', '<!-- wp:html -->\n<div class=\"main-title\">\n <h2 class=\"font-size-huge brand-white font-regular\">DelphianLogic in Action</h2>\n <p class=\"font-size-base gray-light\">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>\n</div>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p>[WP_TexonomyTab]</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-07-29 04:11:53', '2019-07-29 04:11:53', '', 5, 'http://localhost/practicewp/2019/07/29/5-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2019-07-29 11:33:03', '2019-07-29 11:33:03', '<!-- wp:paragraph -->\n<p> Lorem Ipsum is simply dummy text of the printing and typesetting industry. </p>\n<!-- /wp:paragraph -->', 'Communication3', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2019-07-29 11:33:03', '2019-07-29 11:33:03', '', 87, 'http://localhost/practicewp/2019/07/29/87-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2019-07-29 11:33:20', '2019-07-29 11:33:20', '<!-- wp:paragraph -->\n<p>\n\nLorem Ipsum is simply&nbsp;<em>dummy text</em>&nbsp;of the printing and typesetting industry.\n\n</p>\n<!-- /wp:paragraph -->', 'Communication2', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2019-07-29 11:33:20', '2019-07-29 11:33:20', '', 85, 'http://localhost/practicewp/2019/07/29/85-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2019-07-29 11:33:31', '2019-07-29 11:33:31', '<!-- wp:paragraph -->\n<p> Lorem Ipsum is simply dummy te<em>xt</em> of the printing and typesetting industry. </p>\n<!-- /wp:paragraph -->', 'Communication2', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2019-07-29 11:33:31', '2019-07-29 11:33:31', '', 85, 'http://localhost/practicewp/2019/07/29/85-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2019-07-29 11:33:52', '2019-07-29 11:33:52', '<!-- wp:paragraph -->\n<p> Lorem Ipsum is simply dummy text of the printing and typesetting industry. </p>\n<!-- /wp:paragraph -->', 'Communication1', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2019-07-29 11:33:52', '2019-07-29 11:33:52', '', 81, 'http://localhost/practicewp/2019/07/29/81-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(7, 6, 'category_icon', 'http://localhost/practicewp/wp-content/uploads/2019/07/DL-learning.png'),
(8, 6, 'category_feature_img', 'http://localhost/practicewp/wp-content/uploads/2019/07/DL-Technology.jpg'),
(13, 9, 'category_icon', 'http://localhost/practicewp/wp-content/uploads/2019/07/DL-technology.png'),
(14, 9, 'category_feature_img', ''),
(17, 11, 'category_icon', 'http://localhost/practicewp/wp-content/uploads/2019/07/DL-communication.png'),
(18, 11, 'category_feature_img', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  `term_order` int(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`, `term_order`) VALUES
(1, 'Uncategorized', 'uncategorized', 0, 1),
(2, 'Primary', 'primary', 0, 0),
(6, 'Learning', 'learning', 0, 2),
(9, 'Technology', 'technology', 0, 3),
(11, 'Communication', 'communication', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(44, 9, 0),
(46, 6, 0),
(50, 1, 0),
(58, 2, 0),
(59, 2, 0),
(60, 2, 0),
(61, 2, 0),
(81, 11, 0),
(85, 11, 0),
(87, 11, 0),
(99, 6, 0),
(101, 6, 0),
(103, 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 4),
(6, 6, 'category', ' ', 0, 3),
(9, 9, 'category', '', 0, 1),
(11, 11, 'category', '', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"623909d54b125606df28f0322b65b9c1c6e49b8d4b4ab37e19ca54727187240e\";a:4:{s:10:\"expiration\";i:1564402023;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36\";s:5:\"login\";i:1564229223;}s:64:\"0d988637ad7aab0398338f96eecd8668eb3999eb9cbc5894a40d48acb57173e0\";a:4:{s:10:\"expiration\";i:1564548793;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36\";s:5:\"login\";i:1564375993;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '8'),
(18, 1, 'wp_user-settings', 'libraryContent=browse'),
(19, 1, 'wp_user-settings-time', '1563630460'),
(20, 2, 'nickname', 'Ganesh'),
(21, 2, 'first_name', ''),
(22, 2, 'last_name', ''),
(23, 2, 'description', ''),
(24, 2, 'rich_editing', 'true'),
(25, 2, 'syntax_highlighting', 'true'),
(26, 2, 'comment_shortcuts', 'false'),
(27, 2, 'admin_color', 'fresh'),
(28, 2, 'use_ssl', '0'),
(29, 2, 'show_admin_bar_front', 'true'),
(30, 2, 'locale', ''),
(31, 2, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(32, 2, 'wp_user_level', '0'),
(33, 2, 'session_tokens', 'a:1:{s:64:\"5d05b8b08cd913f9271fadc1c89b6d6c39c31412b9225eebf619606010cc112c\";a:4:{s:10:\"expiration\";i:1563857371;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36\";s:5:\"login\";i:1563684571;}}'),
(34, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(35, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(36, 1, 'closedpostboxes_attachment', 'a:0:{}'),
(37, 1, 'metaboxhidden_attachment', 'a:4:{i:0;s:16:\"commentstatusdiv\";i:1;s:11:\"commentsdiv\";i:2;s:7:\"slugdiv\";i:3;s:9:\"authordiv\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BN4r9xOM2R.LjRoEQBKjiPEGP7TGRn/', 'admin', 'manojsamudre@gmail.com', '', '2019-06-28 14:28:34', '', 0, 'admin'),
(2, 'Ganesh', '$P$BzYk9Rh7uKvMDtYig9ObxqRCzoTqK/.', 'ganesh', 'ganesh@gmail.com', '', '2019-07-21 04:49:07', '', 0, 'Ganesh');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_childthemewp`
--
ALTER TABLE `wp_childthemewp`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_childthemewp`
--
ALTER TABLE `wp_childthemewp`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=467;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
