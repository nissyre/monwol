﻿-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 11 Wrz 2017, 15:49
-- Wersja serwera: 5.6.21
-- Wersja PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Baza danych: `monwol`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
`comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Zrzut danych tabeli `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Komentator WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-09-07 20:11:04', '2017-09-07 18:11:04', 'Cześć, to jest komentarz.\nAby zapoznać się z moderowaniem, edycją i usuwaniem komentarzy, należy odwiedzić ekran Komentarze w kokpicie.\nAwatary komentujących pochodzą z <a href="https://pl.gravatar.com">Gravatara</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
`link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
`option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Zrzut danych tabeli `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/monwol', 'yes'),
(2, 'home', 'http://localhost/monwol', 'yes'),
(3, 'blogname', 'Monika Wolińska', 'yes'),
(4, 'blogdescription', 'Kolejna witryna oparta na WordPressie', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'nissyre@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j F Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'monwol', 'yes'),
(41, 'stylesheet', 'monwol', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Warsaw', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '1', 'yes'),
(94, 'WPLANG', 'pl_PL', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'cron', 'a:3:{i:1504851066;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1504894296;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1504808898;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(117, '_site_transient_timeout_theme_roots', '1504809778', 'no'),
(118, '_site_transient_theme_roots', 'a:1:{s:6:"monwol";s:7:"/themes";}', 'no'),
(121, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:65:"https://downloads.wordpress.org/release/pl_PL/wordpress-4.8.1.zip";s:6:"locale";s:5:"pl_PL";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/pl_PL/wordpress-4.8.1.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.8.1";s:7:"version";s:5:"4.8.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1504807892;s:15:"version_checked";s:5:"4.8.1";s:12:"translations";a:0:{}}', 'no'),
(122, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1504807979;s:7:"checked";a:1:{s:6:"monwol";s:3:"1.1";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(123, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1504807902;s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":8:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.3.4";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.3.4.zip";s:6:"tested";s:5:"4.8.1";s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:1:{i:0;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:7:"akismet";s:8:"language";s:5:"pl_PL";s:7:"version";s:6:"3.1.11";s:7:"updated";s:19:"2016-05-12 18:05:47";s:7:"package";s:75:"https://downloads.wordpress.org/translation/plugin/akismet/3.1.11/pl_PL.zip";s:10:"autoupdate";b:1;}}s:9:"no_update";a:1:{s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}}}', 'no'),
(124, '_site_transient_timeout_browser_f9694186c5800b9905943d3f44ede836', '1505412697', 'no'),
(125, '_site_transient_browser_f9694186c5800b9905943d3f44ede836', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"60.0.3112.113";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(127, '_transient_timeout_feed_a421d6f32723068ab074a40017a9e1f9', '1504851102', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(128, '_transient_feed_a421d6f32723068ab074a40017a9e1f9', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n\n\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:49:"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:6:"Polska";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:24:"https://pl.wordpress.org";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:13:"lastBuildDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 15 Jun 2017 04:11:28 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"pl-PL";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:40:"https://wordpress.org/?v=4.9-alpha-41338";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:10:{i:0;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:51:"Zrób jedną rzecz i zmień przyszłość WordCampa";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://pl.wordpress.org/2017/06/15/zrob-cos-dla-wordpressa/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:68:"https://pl.wordpress.org/2017/06/15/zrob-cos-dla-wordpressa/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 15 Jun 2017 04:11:28 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:10:"Wydarzenia";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"https://pl.wordpress.org/?p=977";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:435:"Ósmy polski WordCamp już za nami. Polska społeczność rozrasta się z roku na rok, co bardzo cieszy, ale niejednokrotnie stanowi wyzwanie dla organizatorów spotkań. Chcemy lepiej odpowiadać na potrzeby polskich twórców i użytkowników WordPressa. Dlatego przygotowaliśmy krótką ankietę na temat WordCampa. Chcemy poznać Was lepiej, dowiedzieć się, kim jesteście i jakie macie oczekiwania względem kolejnych [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:18:"Katarzyna Gajewska";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:815:"<p>Ósmy polski WordCamp już za nami. Polska społeczność rozrasta się z roku na rok, co bardzo cieszy, ale niejednokrotnie stanowi wyzwanie dla organizatorów spotkań.</p>\n<p>Chcemy lepiej odpowiadać na potrzeby polskich twórców i użytkowników WordPressa. Dlatego przygotowaliśmy krótką ankietę na temat WordCampa. Chcemy poznać Was lepiej, dowiedzieć się, kim jesteście i jakie macie oczekiwania względem kolejnych edycji WordCampa w Polsce. Wypełnienie ankiety nie zajmie Wam więcej niż 5 minut.</p>\n<p><a href="https://goo.gl/forms/VPY4xtO9KF6fuDnm1" target="_blank" rel="noopener"><strong>Wypełnij ankietę na temat polskiej społeczności WordPressowej</strong></a>.</p>\n<p>Dziękujemy Wam za wypełnienie ankiety!</p>\n<p><em>Organizatorzy polskich WordUpów i WordCamp Polska</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:65:"https://pl.wordpress.org/2017/06/15/zrob-cos-dla-wordpressa/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:67:"WordPress 4.7.5 – Wydanie poprawiające bezpieczeństwo i błędy";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:96:"https://pl.wordpress.org/2017/05/17/wordpress-4-7-5-wydanie-poprawiajace-bezpieczenstwo-i-bledy/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:105:"https://pl.wordpress.org/2017/05/17/wordpress-4-7-5-wydanie-poprawiajace-bezpieczenstwo-i-bledy/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 17 May 2017 00:14:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:7:"Wydanie";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"https://pl.wordpress.org/?p=907";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:490:"WordPress 4.7.5 jest już dostępny. To wydanie poprawia bezpieczeństwo we wszystkich poprzednich wersjach systemu. Zalecane jest natychmiastowe przeprowadzenie aktualizacji. WordPress w wersji 4.7.4 i wcześniejszych posiada sześć problemów z bezpieczeństwem: Niewystarczająca weryfikacja przekierowań w klasie HTTP. Zgłosił to Ronni Skansing. Niewłaściwa obsługa wartości danych meta wpisów w API XML-RPC. Zgłosił to Sam Thomas. Brak sprawdzania uprawnień dla [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:37:"Krzysztof Trynkiewicz (Sukces Strony)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2591:"<p>WordPress 4.7.5 jest już dostępny. <strong>To wydanie poprawia bezpieczeństwo</strong> we wszystkich poprzednich wersjach systemu. Zalecane jest natychmiastowe przeprowadzenie aktualizacji.</p>\n<p><span id="more-907"></span></p>\n<p>WordPress w wersji 4.7.4 i wcześniejszych posiada sześć problemów z bezpieczeństwem:</p>\n<ol>\n<li>Niewystarczająca weryfikacja przekierowań w klasie HTTP. Zgłosił to <a href="https://dk.linkedin.com/in/ronni-skansing-36143b65">Ronni Skansing</a>.</li>\n<li>Niewłaściwa obsługa wartości danych meta wpisów w API XML-RPC. Zgłosił to <a href="https://hackerone.com/jazzy2fives">Sam Thomas</a>.</li>\n<li>Brak sprawdzania uprawnień dla danych meta wpisów w API XML-RPC. Zgłosił to <a href="https://profiles.wordpress.org/vortfu">Ben Bidner</a> z Zespołu Bezpieczeństwa WordPressa.</li>\n<li>Podatność typu Cross Site Request Forgery (CRSF) została wykryta w formularzu zapytania o dane dostępu do systemu plików. Zgłosił to <a href="https://twitter.com/yorickkoster">Yorick Koster</a>.</li>\n<li>Wykryto podatność typu cross-site scripting (XSS). Objawia się podczas próby wgrania bardzo dużych plików. Zgłosił to <a href="https://dk.linkedin.com/in/ronni-skansing-36143b65">Ronni Skansing</a>.</li>\n<li>Wykryto podatność typu cross-site scripting (XSS). Ma ona związek z mechanizmem Personalizacji witryn. Zgłosił to <a href="https://profiles.wordpress.org/westonruter">Weston Ruter</a> z Zespołu Bezpieczeństwa WordPressa.</li>\n</ol>\n<p>Dziękujemy zgłaszającym za <a href="https://make.wordpress.org/core/handbook/reporting-security-vulnerabilities/">odpowiedzialne ujawnienie</a> problemów z bezpieczeństwem.</p>\n<p>Oprócz powyższych problemów z bezpieczeństwem, WordPress 4.7.5 naprawia także 3 błędy z wersji 4.7. Więcej informacji można znaleźć w <a href="https://codex.wordpress.org/Version_4.7.5">notatkach do wydania</a> oraz <a href="https://core.trac.wordpress.org/query?status=closed&amp;milestone=4.7.5&amp;group=component&amp;col=id&amp;col=summary&amp;col=component&amp;col=status&amp;col=owner&amp;col=type&amp;col=priority&amp;col=keywords&amp;order=priority">liście przeprowadzonych zmian</a>.</p>\n<p><a href="https://pl.wordpress.org/">Pobierz WordPressa 4.7.5</a> lub udaj się do sekcji Kokpit → Aktualizacje panelu administracyjnego i po prostu kliknij przycisk „Zaktualizuj teraz”. Witryny, które obsługują automatyczne aktualizacje, rozpoczęły już ich przeprowadzanie.</p>\n<p>Dziękujemy wszystkim, którzy przyczynili się do powstania wersji 4.7.5.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:101:"https://pl.wordpress.org/2017/05/17/wordpress-4-7-5-wydanie-poprawiajace-bezpieczenstwo-i-bledy/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"5";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:67:"WordPress 4.7.4 – Wydanie poprawiające bezpieczeństwo i błędy";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:96:"https://pl.wordpress.org/2017/04/20/wordpress-4-7-4-wydanie-poprawiajace-bezpieczenstwo-i-bledy/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:104:"https://pl.wordpress.org/2017/04/20/wordpress-4-7-4-wydanie-poprawiajace-bezpieczenstwo-i-bledy/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 Apr 2017 18:42:55 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:7:"Wydanie";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"https://pl.wordpress.org/?p=858";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:490:"Po niemal 60 milionach pobrań WordPressa 4.7 z radością ogłaszamy dostępność wersji 4.7.4 &#8211; wydania poprawiającego błędy i bezpieczeństwo. Wydanie to zawiera 47 poprawek błędów oraz usprawnień. W szczególności naprawiony został brak kompatybilności między nadchodzącą wersją przeglądarki Chrome i edytorem wizualnym, jak również poprawiono braki w spójności obsługi mediów, a także wprowadzono dalsze ulepszenia API REST. Więcej informacji [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:37:"Krzysztof Trynkiewicz (Sukces Strony)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:4736:"<p>Po niemal 60 milionach pobrań WordPressa 4.7 z radością ogłaszamy dostępność wersji 4.7.4 &#8211; <strong>wydania poprawiającego błędy i bezpieczeństwo.</strong></p>\n<p><span id="more-858"></span></p>\n<p>Wydanie to zawiera 47 poprawek błędów oraz usprawnień. W szczególności naprawiony został brak kompatybilności między nadchodzącą wersją przeglądarki Chrome i edytorem wizualnym, jak również poprawiono braki w spójności obsługi mediów, a także wprowadzono dalsze ulepszenia API REST. Więcej informacji można znaleźć w <a href="https://codex.wordpress.org/Version_4.7.4">notatkach do wydania</a> oraz <a href="https://core.trac.wordpress.org/log/branches/4.7?rev=40487&amp;stop_rev=40224">liście przeprowadzonych zmian</a>.</p>\n<p><a href="https://pl.wordpress.org/">Pobierz WordPressa 4.7.4</a> lub udaj się do sekcji <strong>Kokpit → Aktualizacje</strong> panelu administracyjnego i po prostu kliknij przycisk „Zaktualizuj teraz”. Witryny, które obsługują automatyczne aktualizacje, rozpoczęły już ich przeprowadzanie.</p>\n<p>Dziękujemy wszystkim, którzy przyczynili się do powstania wersji 4.7.4:<br />\n<a href="https://profiles.wordpress.org/jorbin/">Aaron Jorbin</a>, <a href="https://profiles.wordpress.org/adamsilverstein/">Adam Silverstein</a>, <a href="https://profiles.wordpress.org/afercia/">Andrea Fercia</a>, <a href="https://profiles.wordpress.org/azaozz/">Andrew Ozz</a>, <a href="https://profiles.wordpress.org/aussieguy123/">aussieguy123</a>, <a href="https://profiles.wordpress.org/blobfolio/">Blobfolio</a>, <a href="https://profiles.wordpress.org/boldwater/">boldwater</a>, <a href="https://profiles.wordpress.org/boonebgorges/">Boone Gorges</a>, <a href="https://profiles.wordpress.org/bor0/">Boro Sitnikovski</a>, <a href="https://profiles.wordpress.org/chesio/">chesio</a>, <a href="https://profiles.wordpress.org/curdin/">Curdin Krummenacher</a>, <a href="https://profiles.wordpress.org/danielbachhuber/">Daniel Bachhuber</a>, <a href="https://profiles.wordpress.org/nerrad/">Darren Ethier (nerrad)</a>, <a href="https://profiles.wordpress.org/davidakennedy/">David A. Kennedy</a>, <a href="https://profiles.wordpress.org/davidbenton/">davidbenton</a>, <a href="https://profiles.wordpress.org/dlh/">David Herrera</a>, <a href="https://profiles.wordpress.org/dd32/">Dion Hulse</a>, <a href="https://profiles.wordpress.org/ocean90/">Dominik Schilling (ocean90)</a>, <a href="https://profiles.wordpress.org/eclev91/">eclev91</a>, <a href="https://profiles.wordpress.org/iseulde/">Ella Van Dorpe</a>, <a href="https://profiles.wordpress.org/ghosttoast/">Gustave F. Gerhardt</a>, <a href="https://profiles.wordpress.org/ig_communitysites/">ig_communitysites</a>, <a href="https://profiles.wordpress.org/jnylen0/">James Nylen</a>, <a href="https://profiles.wordpress.org/joedolson/">Joe Dolson</a>, <a href="https://profiles.wordpress.org/johnbillion/">John Blackbourn</a>, <a href="https://profiles.wordpress.org/karinedo/">karinedo</a>, <a href="https://profiles.wordpress.org/lukasbesch/">lukasbesch</a>, <a href="https://profiles.wordpress.org/maguiar/">maguiar</a>, <a href="https://profiles.wordpress.org/matheusgimenez/">MatheusGimenez</a>, <a href="https://profiles.wordpress.org/mboynes/">Matthew Boynes</a>, <a href="https://profiles.wordpress.org/mattwiebe/">Matt Wiebe</a>, <a href="https://profiles.wordpress.org/mayurk/">Mayur Keshwani</a>, <a href="https://profiles.wordpress.org/melchoyce/">Mel Choyce</a>, <a href="https://profiles.wordpress.org/celloexpressions/">Nick Halsey</a>, <a href="https://profiles.wordpress.org/swissspidy/">Pascal Birchler</a>, <a href="https://profiles.wordpress.org/peterwilsoncc/">Peter Wilson</a>, <a href="https://profiles.wordpress.org/delawski/">Piotr Delawski</a>, <a href="https://profiles.wordpress.org/pratikshrestha/">Pratik Shrestha</a>, <a href="https://profiles.wordpress.org/programmin/">programmin</a>, <a href="https://profiles.wordpress.org/rachelbaker/">Rachel Baker</a>, <a href="https://profiles.wordpress.org/sagarkbhatt/">sagarkbhatt</a>, <a href="https://profiles.wordpress.org/sagarprajapati/">Sagar Prajapati</a>, <a href="https://profiles.wordpress.org/sboisvert/">sboisvert</a>, <a href="https://profiles.wordpress.org/wonderboymusic/">Scott Taylor</a>, <a href="https://profiles.wordpress.org/sergeybiryukov/">Sergey Biryukov</a>, <a href="https://profiles.wordpress.org/netweb/">Stephen Edgar</a>, <a href="https://profiles.wordpress.org/cybr/">Sybre Waaijer</a>, <a href="https://profiles.wordpress.org/timmydcrawford/">Timmy Crawford</a>, <a href="https://profiles.wordpress.org/vortfu/">vortfu</a> oraz <a href="https://profiles.wordpress.org/westonruter/">Weston Ruter</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:101:"https://pl.wordpress.org/2017/04/20/wordpress-4-7-4-wydanie-poprawiajace-bezpieczenstwo-i-bledy/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:30:"WordCamp Lublin 2017 zaprasza!";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:66:"https://pl.wordpress.org/2017/03/22/wordcamp-lublin-2017-zaprasza/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:75:"https://pl.wordpress.org/2017/03/22/wordcamp-lublin-2017-zaprasza/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 22 Mar 2017 13:27:00 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:10:"Wydarzenia";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"https://pl.wordpress.org/?p=760";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:423:"W dniach 2-4 czerwca br. odbędzie się kolejna edycja polskiego WordCampa &#8211; konferencji poświęconej WordPressowi. Tym razem programiści, koderzy, blogerzy i inne osoby korzystające na co dzień z WordPressa spotkają się w Lublinie. W ramach konferencji odbędą się: 2 czerwca: contributor day Contributor Day to specjalne spotkanie podczas którego każdy będzie miał możliwość dołączenia do [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Marcin Pietrzak";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1614:"<p>W dniach 2-4 czerwca br. odbędzie się kolejna edycja polskiego WordCampa &#8211; konferencji poświęconej WordPressowi. Tym razem programiści, koderzy, blogerzy i inne osoby korzystające na co dzień z WordPressa spotkają się w Lublinie.</p>\n<p>W ramach konferencji odbędą się:</p>\n<h2>2 czerwca: contributor day</h2>\n<p><a href="https://2017.lublin.wordcamp.org/czym-jest-contributor-day/">Contributor Day</a> to specjalne spotkanie podczas którego każdy będzie miał możliwość dołączenia do osób tworzących zarówno WordPressa jak i powiązanych z nim projektów. Oznacza to również, że będzie to świetna okazja do wspólnej pracy nad polskimi tłumaczeniami.</p>\n<h2>3-4 czerwca: prelekcje i warsztaty</h2>\n<p>Podczas prezentacji i warsztatów będzie można nabyć solidną porcję wiedzy od najlepszych ekspertów WordPressa z kraju i z zagranicy. Dodatkowo, uczestnicy będą mogli wziąć udział w specjalnie przygotowanej grze konferencyjnej oraz wieczornej imprezie integracyjnej.</p>\n<p>WordCamp organizowany jest przez społeczność WordPressa, w tym także przez Ciebie! Jeśli chciałbyś pomóc &#8211; wystąpić na scenie, poprowadzić warsztaty lub zostać sponsorem koniecznie daj znać:</p>\n<ul>\n<li><a href="https://2017.lublin.wordcamp.org/zostan-prelegentem/">zgłoszenia prelegentów i osób prowadzących warsztaty</a></li>\n<li><a href="https://2017.lublin.wordcamp.org/zostan-sponsorem/">zgłoszenia sponsorów</a></li>\n</ul>\n<p>Po więcej informacji zapraszamy na oficjalną stronę: <a href="https://2017.lublin.wordcamp.org/">WordCamp Lublin 2017</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:71:"https://pl.wordpress.org/2017/03/22/wordcamp-lublin-2017-zaprasza/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:45:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:67:"WordPress 4.7.3 – Wydanie poprawiające bezpieczeństwo i błędy";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://pl.wordpress.org/2017/03/07/wordpress-4-7-3-wydanie/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:68:"https://pl.wordpress.org/2017/03/07/wordpress-4-7-3-wydanie/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 07 Mar 2017 07:29:45 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:15:"Bezpieczeństwo";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:7:"Wydanie";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"https://pl.wordpress.org/?p=753";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:474:"WordPress 4.7.3 jest już dostępny. Wersja poprawia bezpieczeństwo we wszystkich poprzednich wersjach, a my zachęcamy do niezwłocznej aktualizacji witryn. WordPress 4.7.2 oraz wcześniejsze posiadają sześć podatności: Cross-site scripting (XSS) za pomocą metadanych plików multimedialnych. Zgłoszone przez Chris Andrè Dale, Yorick Koster, and Simon P. Briggs. Znaki kontrolne mogą oszukać walidacji adresu URL przekierowania. Zgłoszone przez Daniel [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Marcin Pietrzak";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:6307:"<p>WordPress 4.7.3 jest już dostępny. Wersja poprawia <strong>bezpieczeństwo</strong> we wszystkich poprzednich wersjach, a my zachęcamy do niezwłocznej aktualizacji witryn.</p>\n<p>WordPress 4.7.2 oraz wcześniejsze posiadają sześć podatności:</p>\n<ol>\n<li>Cross-site scripting (XSS) za pomocą metadanych plików multimedialnych. Zgłoszone przez <a href="https://www.securesolutions.no/">Chris Andrè Dale</a>, <a href="https://twitter.com/yorickkoster">Yorick Koster</a>, and Simon P. Briggs.</li>\n<li>Znaki kontrolne mogą oszukać walidacji adresu URL przekierowania. Zgłoszone przez <a href="http://www.danielchatfield.com/">Daniel Chatfield</a>.</li>\n<li>Pliki niezwiązane z wtyczką, mogą być usuwane korzystając z funkcjonalności usunięcia wtyczki. Zgłoszone przez <a href="http://b.360.cn/">xuliang</a>.</li>\n<li>Cross-site scripting (XSS) za pośrednictwem adresu URL YouTube. Zgłoszone przez <a href="https://twitter.com/marcs0h">Marc Montpas</a>.</li>\n<li>Cross-site scripting (XSS) poprzez nazwę taksonomii. Zgłoszone przez <a href="https://profiles.wordpress.org/deltamgm2">Delta</a>.</li>\n<li>Cross-site request forgery (CSRF) w Press This! co prowadzi do nadmiernego wykorzystania zasobów serwera. Zgłoszone przez Sipke Mellema.</li>\n</ol>\n<p>Dziękujemy raportującym za głoszenia zgodne z praktyką <a href="//make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/">odpowiedzialnego ujawniania</a> (tekst po angielsku).</p>\n<p>W uzupełnieniu do powyższych kwestii bezpieczeństwa, WordPress 4.7.3 zawiera 39 poprawek serwisowych dla serii 4.7. Aby uzyskać więcej informacji, zobacz <a href="https://codex.wordpress.org/Version_4.7.3">informacje o wydaniu</a> (tekst po angielsku) oraz zapoznaj się z <a href="https://core.trac.wordpress.org/query?status=closed&amp;milestone=4.7.3&amp;group=component&amp;col=id&amp;col=summary&amp;col=component&amp;col=status&amp;col=owner&amp;col=type&amp;col=priority&amp;col=keywords&amp;order=priority">listą zmian</a>.</p>\n<p><a href="https://pl.wordpress.org/">Pobierz WordPress 4.7.3</a> lub przejdź do kokpitu → Aktualizacje i kliknij „Zaktualizuj teraz”. Witryny które obsługują automatyczne aktualizacje powinny już być uaktualnione do WordPressa 4.7.3.</p>\n<p>Dziekujemy wszystkim, którzy dołożyli się do wydania 4.7.3: <a href="https://profiles.wordpress.org/aaroncampbell/">Aaron D. Campbell</a>, <a href="https://profiles.wordpress.org/adamsilverstein/">Adam Silverstein</a>, <a href="https://profiles.wordpress.org/xknown/">Alex Concha</a>, <a href="https://profiles.wordpress.org/afercia/">Andrea Fercia</a>, <a href="https://profiles.wordpress.org/azaozz/">Andrew Ozz</a>, <a href="https://profiles.wordpress.org/asalce/">asalce</a>, <a href="https://profiles.wordpress.org/blobfolio/">blobfolio</a>, <a href="https://profiles.wordpress.org/gitlost/">bonger</a>, <a href="https://profiles.wordpress.org/boonebgorges/">Boone Gorges</a>, <a href="https://profiles.wordpress.org/bor0/">Boro Sitnikovski</a>, <a href="https://profiles.wordpress.org/bradyvercher/">Brady Vercher</a>, <a href="https://profiles.wordpress.org/drrobotnik/">Brandon Lavigne</a>, <a href="https://profiles.wordpress.org/bhargavbhandari90/">Bunty</a>, <a href="https://profiles.wordpress.org/ccprog/">ccprog</a>, <a href="https://profiles.wordpress.org/ketuchetan/">chetansatasiya</a>, <a href="https://profiles.wordpress.org/davidakennedy/">David A. Kennedy</a>, <a href="https://profiles.wordpress.org/dlh/">David Herrera</a>, <a href="https://profiles.wordpress.org/dhanendran/">Dhanendran</a>, <a href="https://profiles.wordpress.org/dd32/">Dion Hulse</a>, <a href="https://profiles.wordpress.org/ocean90/">Dominik Schilling (ocean90)</a>, <a href="https://profiles.wordpress.org/drivingralle/">Drivingralle</a>, <a href="https://profiles.wordpress.org/iseulde/">Ella Van Dorpe</a>, <a href="https://profiles.wordpress.org/pento/">Gary Pendergast</a>, <a href="https://profiles.wordpress.org/iandunn/">Ian Dunn</a>, <a href="https://profiles.wordpress.org/ipstenu/">Ipstenu (Mika Epstein)</a>, <a href="https://profiles.wordpress.org/jnylen0/">James Nylen</a>, <a href="https://profiles.wordpress.org/jazbek/">jazbek</a>, <a href="https://profiles.wordpress.org/jeremyfelt/">Jeremy Felt</a>, <a href="https://profiles.wordpress.org/jpry/">Jeremy Pry</a>, <a href="https://profiles.wordpress.org/joehoyle/">Joe Hoyle</a>, <a href="https://profiles.wordpress.org/joemcgill/">Joe McGill</a>, <a href="https://profiles.wordpress.org/johnbillion/">John Blackbourn</a>, <a href="https://profiles.wordpress.org/johnjamesjacoby/">John James Jacoby</a>, <a href="https://profiles.wordpress.org/desrosj/">Jonathan Desrosiers</a>, <a href="https://profiles.wordpress.org/ryelle/">Kelly Dwan</a>, <a href="https://profiles.wordpress.org/markoheijnen/">Marko Heijnen</a>, <a href="https://profiles.wordpress.org/matheusgimenez/">MatheusGimenez</a>, <a href="https://profiles.wordpress.org/mnelson4/">Mike Nelson</a>, <a href="https://profiles.wordpress.org/mikeschroder/">Mike Schroder</a>, <a href="https://profiles.wordpress.org/codegeass/">Muhammet Arslan</a>, <a href="https://profiles.wordpress.org/celloexpressions/">Nick Halsey</a>, <a href="https://profiles.wordpress.org/swissspidy/">Pascal Birchler</a>, <a href="https://profiles.wordpress.org/pbearne/">Paul Bearne</a>, <a href="https://profiles.wordpress.org/pavelevap/">pavelevap</a>, <a href="https://profiles.wordpress.org/peterwilsoncc/">Peter Wilson</a>, <a href="https://profiles.wordpress.org/rachelbaker/">Rachel Baker</a>, <a href="https://profiles.wordpress.org/reldev/">reldev</a>, <a href="https://profiles.wordpress.org/sanchothefat/">Robert O’Rourke</a>, <a href="https://profiles.wordpress.org/welcher/">Ryan Welcher</a>, <a href="https://profiles.wordpress.org/sanketparmar/">Sanket Parmar</a>, <a href="https://profiles.wordpress.org/seanchayes/">Sean Hayes</a>, <a href="https://profiles.wordpress.org/sergeybiryukov/">Sergey Biryukov</a>, <a href="https://profiles.wordpress.org/netweb/">Stephen Edgar</a>, <a href="https://profiles.wordpress.org/triplejumper12/">triplejumper12</a>, <a href="https://profiles.wordpress.org/westonruter/">Weston Ruter</a>, and <a href="https://profiles.wordpress.org/wpfo/">wpfo</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:65:"https://pl.wordpress.org/2017/03/07/wordpress-4-7-3-wydanie/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:45:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:57:"WordPress 4.7.2 – Wydanie poprawiające bezpieczeństwo";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:88:"https://pl.wordpress.org/2017/01/29/wordpress-4-7-2-wydanie-poprawiajace-bezpieczenstwo/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:97:"https://pl.wordpress.org/2017/01/29/wordpress-4-7-2-wydanie-poprawiajace-bezpieczenstwo/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 29 Jan 2017 08:46:25 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:15:"Bezpieczeństwo";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:7:"Wydanie";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"https://pl.wordpress.org/?p=739";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:483:"WordPress 4.7.2 jest już dostępny. Wersja poprawia bezpieczeństwo we wszystkich poprzednich wersjach, a my zachęcamy do niezwłocznej aktualizacji witryn. WordPress 4.7.1 oraz wcześniejsze wersje posiadają następujące podaności: Interfejs użytkownika służący do przypisywania taksonomii w &#8222;Press This&#8221; jest widoczny dla użytkowników, którzy nie mają uprawnień, aby go używać. Zgłoszone przez Davida Herrera Alley Interactive. Klasa WP_Query [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Marcin Pietrzak";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1642:"<p>WordPress 4.7.2 jest już dostępny. Wersja <strong>poprawia bezpieczeństwo</strong> we wszystkich poprzednich wersjach, a my zachęcamy do niezwłocznej aktualizacji witryn.</p>\n<p>WordPress 4.7.1 oraz wcześniejsze wersje posiadają następujące podaności:</p>\n<ol>\n<li>Interfejs użytkownika służący do przypisywania taksonomii w &#8222;Press This&#8221; jest widoczny dla użytkowników, którzy nie mają uprawnień, aby go używać. Zgłoszone przez Davida Herrera <a href="https://www.alleyinteractive.com/">Alley Interactive</a>.</li>\n<li>Klasa <code>WP_Query</code> jest podatna na SQL injection (SQLi) podczas przetwarzania niebezpiecznych danych. Sam WordPress nie jest bezpośrednio narażony na ten problem, ale dodaliśmy zabezpieczenie, aby zapobiec przypadkowemu użycia podaności we wtyczkach i motywach. Zgłoszone przez <a href="https://github.com/mjangda">Mo Jangda</a> (batmoo).</li>\n<li>Podatność cross-site scripting (XSS) została odkryta w tabeli z listą wpisów. Zgłoszone przez <a href="https://iandunn.name/">Ian Dunn</a> z WordPress Security Team.</li>\n</ol>\n<p>Dziękujemy raportującym za głoszenia zgodne z praktyką <a href="https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/">odpowiedzialnego ujawniania</a> (tekst po angielsku).</p>\n<p><a href="https://pl.wordpress.org/">Pobierz WordPress 4.7.2</a> lub przejdź do kokpitu → Aktualizacje i kliknij &#8222;Zaktualizuj teraz&#8221;. Witryny które obsługują automatyczne aktualizacje powinny już być uaktualnione do WordPressa 4.7.2.</p>\n<p>Dziękujemy wszystkim, którzy przyczynili się do 4.7.2.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:93:"https://pl.wordpress.org/2017/01/29/wordpress-4-7-2-wydanie-poprawiajace-bezpieczenstwo/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:45:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:57:"WordPress 4.5.2 – Wydanie poprawiające bezpieczeństwo";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:88:"https://pl.wordpress.org/2016/05/12/wordpress-4-5-2-wydanie-poprawiajace-bezpieczenstwo/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:97:"https://pl.wordpress.org/2016/05/12/wordpress-4-5-2-wydanie-poprawiajace-bezpieczenstwo/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 12 May 2016 11:04:08 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:15:"Bezpieczeństwo";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:7:"Wydanie";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"https://pl.wordpress.org/?p=718";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:435:"WordPress 4.5.2 jest już dostępny. To wydanie poprawia bezpieczeństwo we wszystkich poprzednich wersjach systemu. Zalecane jest natychmiastowe przeprowadzenie aktualizacji. WordPress w wersjach 4.5.1 i wcześniejszych jest podatny na atak metodą SOME przez błąd bezpieczeństwa w Plupload – zewnętrznej bibliotece, której WordPress używa do wgrywania plików. WordPress w wersjach 4.2 do 4.5.1 jest podatny na atak [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:37:"Krzysztof Trynkiewicz (Sukces Strony)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2085:"<p>WordPress 4.5.2 jest już dostępny. <strong>To wydanie poprawia bezpieczeństwo</strong> we wszystkich poprzednich wersjach systemu. Zalecane jest natychmiastowe przeprowadzenie aktualizacji.</p>\n<p><span id="more-718"></span></p>\n<p>WordPress w wersjach 4.5.1 i wcześniejszych jest podatny na atak metodą <abbr title="Same-Origin Method Execution">SOME</abbr> przez błąd bezpieczeństwa w Plupload – zewnętrznej bibliotece, której WordPress używa do wgrywania plików. WordPress w wersjach 4.2 do 4.5.1 jest podatny na atak metodą reflected XSS przez użycie specjalnie spreparowanych adresów URI dla MediaElement.js – zewnętrznej biblioteki, używanej przez odtwarzacze mediów. Biblioteki MediaElement.js i Plupload także zostały zaktualizowane przez ich autorów w celu poprawienia tych błędów bezpieczeństwa.</p>\n<p>Obydwa problemy zostały wykryli i zgłosili: Mario Heiderich, Masato Kinugawa i Filedescriptor z <a href="https://cure53.de/">Cure53</a>. Dziękujemy zespołowi za <a href="https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/">odpowiedzialne ujawnienie</a> tych problemów, a także zespołom bibliotek Plupload i MediaElement.js za ścisłą współpracę z nami w celu usunięcia tych błędów.</p>\n<p><a href="https://wordpress.org/download/">Pobierz WordPressa 4.5.2</a> lub udaj się do sekcji Kokpit → Aktualizacje panelu administracyjnego i po prostu kliknij przycisk „Zaktualizuj teraz”. Witryny, które obsługują automatyczne aktualizacje, rozpoczęły już ich przeprowadzanie.</p>\n<p>Informujemy także, że publiczny rozgłos uzyskały ostatnio problemy bezpieczeństwa wykryte w bibliotece przetwarzającej obrazy ImageMagick, używanej przez wielu dostawców hostingowych, którą może wykorzystywać również WordPress. Nasze aktualne stanowisko na temat tych problemów oraz zalecenia można poznać <a href="https://make.wordpress.org/core/2016/05/06/imagemagick-vulnerability-information/">czytając ten wpis na blogu o tworzeniu rdzenia systemu</a> (w języku angielskim).</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:93:"https://pl.wordpress.org/2016/05/12/wordpress-4-5-2-wydanie-poprawiajace-bezpieczenstwo/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:2:"12";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:49:"WordPress 4.5.1 – Wydanie poprawiające błędy";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:79:"https://pl.wordpress.org/2016/04/26/wordpress-4-5-1-wydanie-poprawiajace-bledy/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:87:"https://pl.wordpress.org/2016/04/26/wordpress-4-5-1-wydanie-poprawiajace-bledy/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 26 Apr 2016 15:32:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:7:"Wydanie";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"https://pl.wordpress.org/?p=726";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:457:"Po około sześciu milionach pobrań WordPressa 4.5 z przyjemnością oznajmiamy dostępność aktualizacji poprawiającej błędy &#8211; WordPressa w wersji 4.5.1. To wydanie naprawia 12 błędów, w tym: problem z klasą singular, który psuł witryny używające motywu Twenty Eleven, brak kompatybilności edytora wizualnego z pewnymi wersjami przeglądarki Chrome, a także błąd w Imagick, który mógł powodować niewłaściwe wgrywanie [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:37:"Krzysztof Trynkiewicz (Sukces Strony)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2252:"<p>Po około sześciu milionach pobrań WordPressa 4.5 z przyjemnością oznajmiamy dostępność aktualizacji poprawiającej błędy &#8211; WordPressa w wersji 4.5.1.</p>\n<p><span id="more-726"></span></p>\n<p>To wydanie naprawia 12 błędów, w tym: problem z klasą singular, który psuł witryny używające motywu Twenty Eleven, brak kompatybilności edytora wizualnego z pewnymi wersjami przeglądarki Chrome, a także błąd w Imagick, który mógł powodować niewłaściwe wgrywanie plików mediów. To wydanie poprawiające błędy naprawia łącznie 12 problemów występujących w wersji 4.5 WordPressa. <span style="line-height: 1.5">Więcej informacji można znaleźć w <a href="https://codex.wordpress.org/Version_4.5.1">notatkach do wydania</a> oraz <a href="https://core.trac.wordpress.org/log/branches/4.5?rev=37295&amp;stop_rev=37182">liście przeprowadzonych zmian</a>.</span></p>\n<p><a href="https://wordpress.org/download/">Pobierz WordPressa 4.5.1</a> lub udaj się do sekcji Kokpit → Aktualizacje panelu administracyjnego i po prostu kliknij przycisk „Zaktualizuj teraz”. Witryny, które obsługują automatyczne aktualizacje, rozpoczęły już ich przeprowadzanie.</p>\n<p>Dziękujemy wszystkim, którzy przyczynili się do powstania wersji 4.5.1:</p>\n<p><a href="https://profiles.wordpress.org/jorbin">Aaron Jorbin</a>, <a href="https://profiles.wordpress.org/afercia">Andrea Fercia</a>, <a href="https://profiles.wordpress.org/azaozz">Andrew Ozz</a>, <a href="https://profiles.wordpress.org/boonebgorges">Boone Gorges</a>, <a href="https://profiles.wordpress.org/ocean90">Dominik Schilling</a>, <a href="https://profiles.wordpress.org/flixos90">Felix Arntz</a>, <a href="https://profiles.wordpress.org/pento">Gary Pendergast</a>, <a href="https://profiles.wordpress.org/gblsm">gblsm</a>, <a href="https://profiles.wordpress.org/helen">Helen Hou-Sandi</a>, <a href="https://profiles.wordpress.org/joemcgill">Joe McGill</a>, <a href="https://profiles.wordpress.org/johnbillion">John Blackbourn</a>, <a href="https://profiles.wordpress.org/celloexpressions">Nick Halsey</a>, <a href="https://profiles.wordpress.org/swissspidy">Pascal Birchler</a> oraz <a href="https://profiles.wordpress.org/WiZZarD_">Pieter</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:84:"https://pl.wordpress.org/2016/04/26/wordpress-4-5-1-wydanie-poprawiajace-bledy/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:62:"Spotkanie w ramach Global WordPress Translation Day w Lublinie";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:99:"https://pl.wordpress.org/2016/04/18/spotkanie-w-ramach-global-wordpress-translation-day-w-lublinie/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:108:"https://pl.wordpress.org/2016/04/18/spotkanie-w-ramach-global-wordpress-translation-day-w-lublinie/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 18 Apr 2016 08:38:06 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:10:"Wydarzenia";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"https://pl.wordpress.org/?p=707";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:325:"W ramach Global WordPress Translation Day 24 kwietnia 2016 r. w Lublinie odbędzie się spotkanie, na którym będzie można dowiedzieć się, jak można pomóc w tłumaczeniu WordPressa na polski. Więcej informacji znajduje się na Facebooku pod adresem https://www.facebook.com/events/215180488859561/. Zapraszamy. 🙂";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Waclaw Jacek";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:526:"<p>W ramach Global WordPress Translation Day 24 kwietnia 2016 r. w Lublinie odbędzie się spotkanie, na którym będzie można dowiedzieć się, jak można pomóc w tłumaczeniu WordPressa na polski. Więcej informacji znajduje się na Facebooku pod adresem <a href="https://www.facebook.com/events/215180488859561/">https://www.facebook.com/events/215180488859561/</a>. Zapraszamy. <img src="https://s.w.org/images/core/emoji/2.3/72x72/1f642.png" alt="🙂" class="wp-smiley" style="height: 1em; max-height: 1em;" /></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:104:"https://pl.wordpress.org/2016/04/18/spotkanie-w-ramach-global-wordpress-translation-day-w-lublinie/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"5";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:45:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:67:"WordPress 4.4.2 – Wydanie poprawiające bezpieczeństwo i błędy";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:96:"https://pl.wordpress.org/2016/02/08/wordpress-4-4-2-wydanie-poprawiajace-bezpieczenstwo-i-bledy/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:105:"https://pl.wordpress.org/2016/02/08/wordpress-4-4-2-wydanie-poprawiajace-bezpieczenstwo-i-bledy/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 08 Feb 2016 00:19:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:15:"Bezpieczeństwo";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:7:"Wydanie";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"https://pl.wordpress.org/?p=685";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:480:"WordPress 4.4.2 jest już dostępny. To wydanie poprawia bezpieczeństwo we wszystkich poprzednich wersjach systemu. Zalecane jest natychmiastowe przeprowadzenie aktualizacji. WordPress w wersji 4.4.1 i wcześniejszych posiada dwa problemy związane z bezpieczeństwem: możliwą podatność na atak SSRF dla pewnych lokalnych adresów URI, co zgłosił Ronni Skansing, a także jest podatny na atak otwartym przekierowaniem, co zgłosił Shailesh Suthar. Dziękujemy [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:37:"Krzysztof Trynkiewicz (Sukces Strony)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2340:"<p>WordPress 4.4.2 jest już dostępny. <strong>To wydanie poprawia bezpieczeństwo</strong> we wszystkich poprzednich wersjach systemu. Zalecane jest natychmiastowe przeprowadzenie aktualizacji.</p>\n<p><span id="more-685"></span></p>\n<p>WordPress w wersji 4.4.1 i wcześniejszych posiada dwa problemy związane z bezpieczeństwem: możliwą podatność na atak SSRF dla pewnych lokalnych adresów URI, co zgłosił <a href="https://www.linkedin.com/in/ronni-skansing-36143b65">Ronni Skansing</a>, a także jest podatny na atak otwartym przekierowaniem, co zgłosił <a href="https://twitter.com/shailesh4594">Shailesh Suthar</a>.</p>\n<p>Dziękujemy obydwu zgłaszającym za <a href="https://make.wordpress.org/core/handbook/reporting-security-vulnerabilities/">odpowiedzialne ujawnienie</a> problemów z bezpieczeństwem.</p>\n<p>Oprócz powyższych problemów z bezpieczeństwem, WordPress 4.4.2 naprawia także 17 błędów z wersji 4.4 i 4.4.1. Więcej informacji można znaleźć w <a href="https://codex.wordpress.org/Version_4.4.2">notatkach do wydania</a> oraz <a href="https://core.trac.wordpress.org/query?milestone=4.4.2">liście przeprowadzonych zmian</a>.</p>\n<p><a href="https://pl.wordpress.org/">Pobierz WordPressa 4.4.2</a> lub udaj się do sekcji Kokpit → Aktualizacje panelu administracyjnego i po prostu kliknij przycisk „Zaktualizuj teraz”. Witryny, które obsługują automatyczne aktualizacje, rozpoczęły już ich przeprowadzanie.</p>\n<p>Dziękujemy wszystkim, którzy przyczynili się do powstania wersji 4.4.2:</p>\n<p><a href="https://profiles.wordpress.org/afercia">Andrea Fercia</a>, <a href="https://profiles.wordpress.org/berengerzyla">berengerzyla</a>, <a href="https://profiles.wordpress.org/boonebgorges">Boone Gorges</a>, <a href="https://profiles.wordpress.org/chandrapatel">Chandra Patel</a>, <a href="https://profiles.wordpress.org/chriscct7">Chris Christoff</a>, <a href="https://profiles.wordpress.org/dd32">Dion Hulse</a>, <a href="https://profiles.wordpress.org/ocean90">Dominik Schilling</a>, <a href="https://profiles.wordpress.org/firebird75">firebird75</a>, <a href="https://profiles.wordpress.org/ivankristianto">Ivan Kristianto</a>, <a href="https://profiles.wordpress.org/jmdodd">Jennifer M. Dodd</a>, <a href="https://profiles.wordpress.org/salvoaranzulla">salvoaranzulla</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:101:"https://pl.wordpress.org/2016/02/08/wordpress-4-4-2-wydanie-poprawiajace-bezpieczenstwo-i-bledy/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:30:"https://pl.wordpress.org/feed/";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:44:"http://purl.org/rss/1.0/modules/syndication/";a:2:{s:12:"updatePeriod";a:1:{i:0;a:5:{s:4:"data";s:6:"hourly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:15:"updateFrequency";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";O:42:"Requests_Utility_CaseInsensitiveDictionary":1:{s:7:"\0*\0data";a:8:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Thu, 07 Sep 2017 18:11:41 GMT";s:12:"content-type";s:34:"application/rss+xml; charset=UTF-8";s:6:"x-olaf";s:3:"⛄";s:13:"last-modified";s:29:"Thu, 15 Jun 2017 04:11:28 GMT";s:4:"link";s:61:"<https://pl.wordpress.org/wp-json/>; rel="https://api.w.org/"";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:11:"HIT lax 249";}}s:5:"build";s:14:"20130911040210";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(129, '_transient_timeout_feed_mod_a421d6f32723068ab074a40017a9e1f9', '1504851102', 'no'),
(130, '_transient_feed_mod_a421d6f32723068ab074a40017a9e1f9', '1504807902', 'no'),
(131, '_transient_timeout_dash_v2_5ed7e1a5d79caaf375d35c33f6782653', '1504851102', 'no'),
(132, '_transient_dash_v2_5ed7e1a5d79caaf375d35c33f6782653', '<div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://pl.wordpress.org/2017/06/15/zrob-cos-dla-wordpressa/''>Zrób jedną rzecz i zmień przyszłość WordCampa</a></li></ul></div><div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://pl.wordpress.org/2017/06/15/zrob-cos-dla-wordpressa/''>Zrób jedną rzecz i zmień przyszłość WordCampa</a></li><li><a class=''rsswidget'' href=''https://pl.wordpress.org/2017/05/17/wordpress-4-7-5-wydanie-poprawiajace-bezpieczenstwo-i-bledy/''>WordPress 4.7.5 – Wydanie poprawiające bezpieczeństwo i błędy</a></li><li><a class=''rsswidget'' href=''https://pl.wordpress.org/2017/04/20/wordpress-4-7-4-wydanie-poprawiajace-bezpieczenstwo-i-bledy/''>WordPress 4.7.4 – Wydanie poprawiające bezpieczeństwo i błędy</a></li></ul></div>', 'no'),
(133, '_site_transient_timeout_community-events-4501c091b0366d76ea3218b6cfdd8097', '1504851102', 'no'),
(134, '_site_transient_community-events-4501c091b0366d76ea3218b6cfdd8097', 'a:2:{s:8:"location";a:1:{s:2:"ip";s:2:"::";}s:6:"events";a:0:{}}', 'no'),
(135, 'can_compress_scripts', '1', 'no'),
(136, 'current_theme', 'Niss_MonWol', 'yes'),
(137, 'theme_mods_monwol', 'a:2:{i:0;b:0;s:18:"custom_css_post_id";i:-1;}', 'yes'),
(138, 'theme_switched', '', 'yes');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Zrzut danych tabeli `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_menu_item_type', 'custom'),
(3, 4, '_menu_item_menu_item_parent', '0'),
(4, 4, '_menu_item_object_id', '4'),
(5, 4, '_menu_item_object', 'custom'),
(6, 4, '_menu_item_target', ''),
(7, 4, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(8, 4, '_menu_item_xfn', ''),
(9, 4, '_menu_item_url', 'http://localhost/monwol/'),
(10, 4, '_menu_item_orphaned', '1504809285'),
(11, 5, '_menu_item_type', 'post_type'),
(12, 5, '_menu_item_menu_item_parent', '0'),
(13, 5, '_menu_item_object_id', '2'),
(14, 5, '_menu_item_object', 'page'),
(15, 5, '_menu_item_target', ''),
(16, 5, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(17, 5, '_menu_item_xfn', ''),
(18, 5, '_menu_item_url', ''),
(19, 5, '_menu_item_orphaned', '1504809285'),
(20, 6, '_menu_item_type', 'custom'),
(21, 6, '_menu_item_menu_item_parent', '0'),
(22, 6, '_menu_item_object_id', '6'),
(23, 6, '_menu_item_object', 'custom'),
(24, 6, '_menu_item_target', ''),
(25, 6, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(26, 6, '_menu_item_xfn', ''),
(27, 6, '_menu_item_url', 'http://localhost/monwol/'),
(28, 6, '_menu_item_orphaned', '1504809668'),
(29, 7, '_menu_item_type', 'post_type'),
(30, 7, '_menu_item_menu_item_parent', '0'),
(31, 7, '_menu_item_object_id', '2'),
(32, 7, '_menu_item_object', 'page'),
(33, 7, '_menu_item_target', ''),
(34, 7, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(35, 7, '_menu_item_xfn', ''),
(36, 7, '_menu_item_url', ''),
(37, 7, '_menu_item_orphaned', '1504809668'),
(38, 2, '_wp_trash_meta_status', 'publish'),
(39, 2, '_wp_trash_meta_time', '1504809842'),
(40, 2, '_wp_desired_post_slug', 'przykladowa-strona'),
(41, 1, '_wp_trash_meta_status', 'publish'),
(42, 1, '_wp_trash_meta_time', '1504810095'),
(43, 1, '_wp_desired_post_slug', 'witaj-swiecie'),
(44, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
`ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Zrzut danych tabeli `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-09-07 20:11:04', '2017-09-07 18:11:04', 'Witaj w WordPressie. To jest twój pierwszy wpis. Zmodyfikuj go lub usuń, a następnie rozpocznij pisanie!', 'Witaj, świecie!', '', 'trash', 'open', 'open', '', 'witaj-swiecie__trashed', '', '', '2017-09-07 20:48:15', '2017-09-07 18:48:15', '', 0, 'http://localhost/monwol/?p=1', 0, 'post', '', 1),
(2, 1, '2017-09-07 20:11:04', '2017-09-07 18:11:04', 'To jest przykładowa strona. Strony są inne niż wpisy na blogu, ponieważ nie tylko znajdują się zawsze w jednym miejscu, ale także pojawiają się w menu witryny (w większości motywów). Większość użytkowników umieszcza na swoich witrynach stronę z informacjami o sobie, dzięki którym przedstawiają się odwiedzającym ich witrynę. Taka strona może zawierać na przykład taki tekst:\n\n<blockquote>Cześć! Za dnia jestem gońcem, a nocą próbuję swoich sił w aktorstwie. To jest moja witryna. Mieszkam w Los Angeles, mam wspaniałego psa, który wabi się Jack i lubię pi&#241;a coladę (a także spacery, gdy pada deszcz).</blockquote>\n\n... lub taki:\n\n<blockquote>Firma Wihajstry XYZ została założona w 1971 roku i od początku swojego istnienia zajmuje się produkcją najlepszych wihajstrów. W naszej siedzibie w Gotham City pracuje ponad 2000 osób, które zajmują się robieniem całej masy fantastycznych rzeczy dla mieszkańców Gotham.</blockquote>\n\nJako nowy użytkownik WordPressa powinieneś przejść do <a href="http://localhost/monwol/wp-admin/">swojego kokpitu</a>, aby usunąć tę stronę i utworzyć nowe strony z własną treścią. Baw się dobrze!', 'Przykładowa strona', '', 'trash', 'closed', 'open', '', 'przykladowa-strona__trashed', '', '', '2017-09-07 20:44:03', '2017-09-07 18:44:03', '', 0, 'http://localhost/monwol/?page_id=2', 0, 'page', '', 0),
(3, 1, '2017-09-07 20:11:38', '0000-00-00 00:00:00', '', 'Automatycznie zapisany szkic', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-09-07 20:11:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/monwol/?p=3', 0, 'post', '', 0),
(4, 1, '2017-09-07 20:34:45', '0000-00-00 00:00:00', '', 'Strona główna', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-09-07 20:34:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/monwol/?p=4', 1, 'nav_menu_item', '', 0),
(5, 1, '2017-09-07 20:34:45', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-09-07 20:34:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/monwol/?p=5', 1, 'nav_menu_item', '', 0),
(6, 1, '2017-09-07 20:41:08', '0000-00-00 00:00:00', '', 'Strona główna', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-09-07 20:41:08', '0000-00-00 00:00:00', '', 0, 'http://localhost/monwol/?p=6', 1, 'nav_menu_item', '', 0),
(7, 1, '2017-09-07 20:41:08', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-09-07 20:41:08', '0000-00-00 00:00:00', '', 0, 'http://localhost/monwol/?p=7', 1, 'nav_menu_item', '', 0),
(8, 1, '2017-09-07 20:44:03', '2017-09-07 18:44:03', 'To jest przykładowa strona. Strony są inne niż wpisy na blogu, ponieważ nie tylko znajdują się zawsze w jednym miejscu, ale także pojawiają się w menu witryny (w większości motywów). Większość użytkowników umieszcza na swoich witrynach stronę z informacjami o sobie, dzięki którym przedstawiają się odwiedzającym ich witrynę. Taka strona może zawierać na przykład taki tekst:\n\n<blockquote>Cześć! Za dnia jestem gońcem, a nocą próbuję swoich sił w aktorstwie. To jest moja witryna. Mieszkam w Los Angeles, mam wspaniałego psa, który wabi się Jack i lubię pi&#241;a coladę (a także spacery, gdy pada deszcz).</blockquote>\n\n... lub taki:\n\n<blockquote>Firma Wihajstry XYZ została założona w 1971 roku i od początku swojego istnienia zajmuje się produkcją najlepszych wihajstrów. W naszej siedzibie w Gotham City pracuje ponad 2000 osób, które zajmują się robieniem całej masy fantastycznych rzeczy dla mieszkańców Gotham.</blockquote>\n\nJako nowy użytkownik WordPressa powinieneś przejść do <a href="http://localhost/monwol/wp-admin/">swojego kokpitu</a>, aby usunąć tę stronę i utworzyć nowe strony z własną treścią. Baw się dobrze!', 'Przykładowa strona', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-09-07 20:44:03', '2017-09-07 18:44:03', '', 2, 'http://localhost/monwol/2017/09/07/2-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2017-09-07 20:48:15', '2017-09-07 18:48:15', 'Witaj w WordPressie. To jest twój pierwszy wpis. Zmodyfikuj go lub usuń, a następnie rozpocznij pisanie!', 'Witaj, świecie!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2017-09-07 20:48:15', '2017-09-07 18:48:15', '', 1, 'http://localhost/monwol/2017/09/07/1-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
`term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Zrzut danych tabeli `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Bez kategorii', 'bez-kategorii', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Zrzut danych tabeli `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
`term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Zrzut danych tabeli `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
`umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Zrzut danych tabeli `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'gc_monwol'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '1'),
(15, 1, 'session_tokens', 'a:1:{s:64:"e345c21944baf0003add19d6bb2ace337cd529164fd0acba509af365ca1c6119";a:4:{s:10:"expiration";i:1506017494;s:2:"ip";s:3:"::1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36";s:5:"login";i:1504807894;}}'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(17, 1, 'community-events-location', 'a:1:{s:2:"ip";s:2:"::";}'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
`ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Zrzut danych tabeli `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'gc_monwol', '$P$BKrYNHZK.lF211OjhzQNuEVV7C7S72/', 'gc_monwol', 'nissyre@gmail.com', '', '2017-09-07 18:11:04', '', 0, 'gc_monwol');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `comment_id` (`comment_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
 ADD PRIMARY KEY (`comment_ID`), ADD KEY `comment_post_ID` (`comment_post_ID`), ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`), ADD KEY `comment_date_gmt` (`comment_date_gmt`), ADD KEY `comment_parent` (`comment_parent`), ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
 ADD PRIMARY KEY (`link_id`), ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
 ADD PRIMARY KEY (`option_id`), ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `post_id` (`post_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
 ADD PRIMARY KEY (`ID`), ADD KEY `post_name` (`post_name`(191)), ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`), ADD KEY `post_parent` (`post_parent`), ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `term_id` (`term_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
 ADD PRIMARY KEY (`term_id`), ADD KEY `slug` (`slug`(191)), ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
 ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`), ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
 ADD PRIMARY KEY (`term_taxonomy_id`), ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`), ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
 ADD PRIMARY KEY (`umeta_id`), ADD KEY `user_id` (`user_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
 ADD PRIMARY KEY (`ID`), ADD KEY `user_login_key` (`user_login`), ADD KEY `user_nicename` (`user_nicename`), ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `wp_comments`
--
ALTER TABLE `wp_comments`
MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT dla tabeli `wp_links`
--
ALTER TABLE `wp_links`
MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `wp_options`
--
ALTER TABLE `wp_options`
MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=139;
--
-- AUTO_INCREMENT dla tabeli `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT dla tabeli `wp_posts`
--
ALTER TABLE `wp_posts`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT dla tabeli `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `wp_terms`
--
ALTER TABLE `wp_terms`
MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT dla tabeli `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT dla tabeli `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT dla tabeli `wp_users`
--
ALTER TABLE `wp_users`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
