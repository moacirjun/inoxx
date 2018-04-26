-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 26-Abr-2018 às 00:00
-- Versão do servidor: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lbz_theme_wp`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Um comentarista do WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-04-10 12:01:58', '2018-04-10 15:01:58', 'Olá, isso é um comentário.\nPara começar a moderar, editar e deletar comentários, visite a tela de Comentários no painel.\nAvatares de comentaristas vêm a partir do <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 21, 'lbz2018', 'desenvolvimento@lbrazil.com.br', '', '::1', '2018-04-11 01:59:05', '2018-04-11 04:59:05', 'Comentário aleatório', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '', 0, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/inoxx', 'yes'),
(2, 'home', 'http://localhost/inoxx', 'yes'),
(3, 'blogname', 'INOXX', 'yes'),
(4, 'blogdescription', 'Desenvolvimento e inovação', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'desenvolvimento@lbrazil.com.br', 'yes'),
(7, 'start_of_week', '0', 'yes'),
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
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:57:\"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:45:\"index.php/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:54:\"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:49:\"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:30:\"index.php/tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:42:\"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:24:\"index.php/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:55:\"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:50:\"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:31:\"index.php/type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:43:\"index.php/type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:25:\"index.php/type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:42:\"index.php/feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:37:\"index.php/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:18:\"index.php/embed/?$\";s:21:\"index.php?&embed=true\";s:30:\"index.php/page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:37:\"index.php/comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=4&cpage=$matches[1]\";s:51:\"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:46:\"index.php/comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:27:\"index.php/comments/embed/?$\";s:21:\"index.php?&embed=true\";s:54:\"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:49:\"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:30:\"index.php/search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:42:\"index.php/search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:24:\"index.php/search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:57:\"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:45:\"index.php/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:79:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:55:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:49:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:66:\"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:42:\"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:54:\"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:36:\"index.php/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:53:\"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:48:\"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:29:\"index.php/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:41:\"index.php/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:23:\"index.php/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:68:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:78:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:98:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:74:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:63:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:87:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:75:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:71:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:57:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:67:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:87:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:63:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:48:\"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:37:\"index.php/.?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"index.php/.?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/.?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"index.php/(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:30:\"index.php/(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:50:\"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:45:\"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:38:\"index.php/(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:45:\"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:34:\"index.php/(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
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
(40, 'template', 'lbz-theme', 'yes'),
(41, 'stylesheet', 'lbz-theme', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(83, 'page_for_posts', '13', 'yes'),
(84, 'page_on_front', '4', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'pt_BR', 'yes'),
(95, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:1:{i:0;s:12:\"categories-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'cron', 'a:4:{i:1524711720;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1524755443;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1524771509;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1523428821;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(125, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:30:\"desenvolvimento@lbrazil.com.br\";s:7:\"version\";s:5:\"4.9.5\";s:9:\"timestamp\";i:1523372576;}', 'no'),
(131, 'can_compress_scripts', '1', 'no'),
(144, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-4.9.5.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-4.9.5.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.5\";s:7:\"version\";s:5:\"4.9.5\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1524668602;s:15:\"version_checked\";s:5:\"4.9.5\";s:12:\"translations\";a:0:{}}', 'no'),
(147, 'recently_activated', 'a:0:{}', 'yes'),
(148, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1524668605;s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:5:\"4.0.3\";s:9:\"hello.php\";s:3:\"1.6\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(153, 'theme_mods_lbz-theme', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:3:\"top\";i:2;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1523427445;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(154, 'current_theme', 'LBZ - theme', 'yes'),
(155, 'theme_switched', '', 'yes'),
(191, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1524668605;s:7:\"checked\";a:1:{s:9:\"lbz-theme\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(225, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(236, '_site_transient_timeout_browser_b5483dbc2768b79379061516ecba2c1a', '1524854377', 'no'),
(237, '_site_transient_browser_b5483dbc2768b79379061516ecba2c1a', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"66.0.3359.117\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(262, 'category_children', 'a:0:{}', 'yes'),
(310, '_site_transient_timeout_theme_roots', '1524670404', 'no'),
(311, '_site_transient_theme_roots', 'a:1:{s:9:\"lbz-theme\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1523425581:1'),
(4, 2, '_wp_trash_meta_status', 'publish'),
(5, 2, '_wp_trash_meta_time', '1523392105'),
(6, 2, '_wp_desired_post_slug', 'pagina-exemplo'),
(7, 11, '_edit_last', '1'),
(8, 11, '_edit_lock', '1523395019:1'),
(9, 13, '_edit_last', '1'),
(10, 13, '_edit_lock', '1524250801:1'),
(11, 15, '_edit_last', '1'),
(12, 15, '_edit_lock', '1523394997:1'),
(13, 1, '_edit_lock', '1524602652:1'),
(14, 1, '_edit_last', '1'),
(17, 19, '_edit_last', '1'),
(18, 19, '_edit_lock', '1523416480:1'),
(21, 21, '_edit_last', '1'),
(22, 21, '_edit_lock', '1524250844:1'),
(25, 26, '_edit_lock', '1523417265:1'),
(26, 26, '_wp_trash_meta_status', 'publish'),
(27, 26, '_wp_trash_meta_time', '1523417267'),
(30, 28, '_wp_trash_meta_status', 'publish'),
(31, 28, '_wp_trash_meta_time', '1523428873'),
(32, 29, '_wp_trash_meta_status', 'publish'),
(33, 29, '_wp_trash_meta_time', '1523748799'),
(34, 30, '_edit_lock', '1523816187:1'),
(35, 31, '_menu_item_type', 'post_type'),
(36, 31, '_menu_item_menu_item_parent', '0'),
(37, 31, '_menu_item_object_id', '15'),
(38, 31, '_menu_item_object', 'page'),
(39, 31, '_menu_item_target', ''),
(40, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(41, 31, '_menu_item_xfn', ''),
(42, 31, '_menu_item_url', ''),
(43, 32, '_menu_item_type', 'post_type'),
(44, 32, '_menu_item_menu_item_parent', '0'),
(45, 32, '_menu_item_object_id', '13'),
(46, 32, '_menu_item_object', 'page'),
(47, 32, '_menu_item_target', ''),
(48, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(49, 32, '_menu_item_xfn', ''),
(50, 32, '_menu_item_url', ''),
(51, 33, '_menu_item_type', 'post_type'),
(52, 33, '_menu_item_menu_item_parent', '0'),
(53, 33, '_menu_item_object_id', '11'),
(54, 33, '_menu_item_object', 'page'),
(55, 33, '_menu_item_target', ''),
(56, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(57, 33, '_menu_item_xfn', ''),
(58, 33, '_menu_item_url', ''),
(59, 34, '_menu_item_type', 'post_type'),
(60, 34, '_menu_item_menu_item_parent', '0'),
(61, 34, '_menu_item_object_id', '4'),
(62, 34, '_menu_item_object', 'page'),
(63, 34, '_menu_item_target', ''),
(64, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(65, 34, '_menu_item_xfn', ''),
(66, 34, '_menu_item_url', ''),
(67, 30, '_wp_trash_meta_status', 'publish'),
(68, 30, '_wp_trash_meta_time', '1523816208'),
(69, 35, '_wp_trash_meta_status', 'publish'),
(70, 35, '_wp_trash_meta_time', '1523816222'),
(71, 36, '_wp_trash_meta_status', 'publish'),
(72, 36, '_wp_trash_meta_time', '1523817676'),
(73, 38, '_edit_lock', '1524249603:1'),
(74, 38, '_wp_trash_meta_status', 'publish'),
(75, 38, '_wp_trash_meta_time', '1524249638'),
(80, 41, '_edit_last', '1'),
(81, 41, '_edit_lock', '1524598326:1'),
(84, 43, '_edit_last', '1'),
(85, 43, '_edit_lock', '1524598040:1'),
(88, 45, '_edit_last', '1'),
(89, 45, '_edit_lock', '1524597889:1'),
(92, 47, '_edit_last', '1'),
(93, 47, '_edit_lock', '1524254031:1'),
(96, 49, '_edit_last', '1'),
(97, 49, '_edit_lock', '1524597844:1'),
(100, 52, '_edit_last', '1'),
(101, 52, '_edit_lock', '1524597814:1'),
(108, 55, '_edit_last', '1'),
(109, 55, '_edit_lock', '1524597791:1'),
(112, 57, '_edit_last', '1'),
(113, 57, '_edit_lock', '1524597684:1'),
(116, 59, '_edit_last', '1'),
(117, 59, '_edit_lock', '1524597575:1'),
(120, 61, '_edit_last', '1'),
(121, 61, '_edit_lock', '1524597546:1'),
(124, 63, '_edit_last', '1'),
(125, 63, '_edit_lock', '1524597541:1'),
(130, 65, '_edit_last', '1'),
(131, 65, '_edit_lock', '1524597372:1'),
(134, 67, '_edit_last', '1'),
(135, 67, '_edit_lock', '1524597344:1'),
(138, 69, '_edit_last', '1'),
(139, 69, '_edit_lock', '1524596718:1'),
(142, 71, '_edit_last', '1'),
(143, 71, '_edit_lock', '1524596510:1'),
(181, 82, '_wp_attached_file', '2018/04/imagem-produto-9.jpg'),
(182, 82, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:28:\"2018/04/imagem-produto-9.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"imagem-produto-9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"imagem-produto-9-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"imagem-produto-9-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:28:\"imagem-produto-9-533x400.jpg\";s:5:\"width\";i:533;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(183, 71, '_thumbnail_id', '82'),
(186, 83, '_wp_attached_file', '2018/04/imagem-produto-10.jpg'),
(187, 83, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:667;s:6:\"height\";i:1000;s:4:\"file\";s:29:\"2018/04/imagem-produto-10.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"imagem-produto-10-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"imagem-produto-10-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:29:\"imagem-produto-10-533x400.jpg\";s:5:\"width\";i:533;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(188, 61, '_thumbnail_id', '83'),
(191, 84, '_wp_attached_file', '2018/04/imagem-produto-6.jpg'),
(192, 84, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:666;s:4:\"file\";s:28:\"2018/04/imagem-produto-6.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"imagem-produto-6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"imagem-produto-6-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"imagem-produto-6-768x511.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:28:\"imagem-produto-6-533x400.jpg\";s:5:\"width\";i:533;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(193, 69, '_thumbnail_id', '84'),
(196, 85, '_wp_attached_file', '2018/04/imagem-produto-13.jpg'),
(197, 85, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:634;s:4:\"file\";s:29:\"2018/04/imagem-produto-13.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"imagem-produto-13-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"imagem-produto-13-300x190.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"imagem-produto-13-768x487.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:487;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:29:\"imagem-produto-13-533x400.jpg\";s:5:\"width\";i:533;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(198, 67, '_thumbnail_id', '85'),
(201, 86, '_wp_attached_file', '2018/04/imagem-produto-11.jpg'),
(202, 86, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:29:\"2018/04/imagem-produto-11.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"imagem-produto-11-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"imagem-produto-11-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"imagem-produto-11-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:29:\"imagem-produto-11-533x400.jpg\";s:5:\"width\";i:533;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(203, 65, '_thumbnail_id', '86'),
(206, 87, '_wp_attached_file', '2018/04/imagem-produto-14.jpg'),
(207, 87, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:29:\"2018/04/imagem-produto-14.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"imagem-produto-14-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"imagem-produto-14-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"imagem-produto-14-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:29:\"imagem-produto-14-533x400.jpg\";s:5:\"width\";i:533;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(208, 63, '_thumbnail_id', '87'),
(211, 88, '_wp_attached_file', '2018/04/imagem-produto-5.jpg'),
(212, 88, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:28:\"2018/04/imagem-produto-5.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"imagem-produto-5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"imagem-produto-5-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"imagem-produto-5-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:28:\"imagem-produto-5-533x400.jpg\";s:5:\"width\";i:533;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(213, 59, '_thumbnail_id', '88'),
(216, 89, '_wp_attached_file', '2018/04/imagem-produto-.jpg'),
(217, 89, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:27:\"2018/04/imagem-produto-.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"imagem-produto--150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"imagem-produto--300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"imagem-produto--768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:27:\"imagem-produto--533x400.jpg\";s:5:\"width\";i:533;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(218, 57, '_thumbnail_id', '89'),
(221, 90, '_wp_attached_file', '2018/04/imagem-produto-15.jpg'),
(222, 90, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:29:\"2018/04/imagem-produto-15.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"imagem-produto-15-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"imagem-produto-15-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"imagem-produto-15-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:29:\"imagem-produto-15-533x400.jpg\";s:5:\"width\";i:533;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(223, 55, '_thumbnail_id', '90'),
(226, 91, '_wp_attached_file', '2018/04/imagem-produto-7.jpg'),
(227, 91, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:28:\"2018/04/imagem-produto-7.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"imagem-produto-7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"imagem-produto-7-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"imagem-produto-7-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:28:\"imagem-produto-7-533x400.jpg\";s:5:\"width\";i:533;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(228, 52, '_thumbnail_id', '91'),
(231, 92, '_wp_attached_file', '2018/04/imagem-produto.jpg'),
(232, 92, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:563;s:4:\"file\";s:26:\"2018/04/imagem-produto.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"imagem-produto-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"imagem-produto-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"imagem-produto-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:26:\"imagem-produto-533x400.jpg\";s:5:\"width\";i:533;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(233, 49, '_thumbnail_id', '92'),
(236, 93, '_wp_attached_file', '2018/04/imagem-produto-3.jpg'),
(237, 93, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:668;s:4:\"file\";s:28:\"2018/04/imagem-produto-3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"imagem-produto-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"imagem-produto-3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"imagem-produto-3-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:28:\"imagem-produto-3-533x400.jpg\";s:5:\"width\";i:533;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(238, 45, '_thumbnail_id', '93'),
(241, 94, '_wp_attached_file', '2018/04/imagem-produto-16.jpg'),
(242, 94, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:29:\"2018/04/imagem-produto-16.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"imagem-produto-16-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"imagem-produto-16-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"imagem-produto-16-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:29:\"imagem-produto-16-533x400.jpg\";s:5:\"width\";i:533;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(243, 43, '_thumbnail_id', '94'),
(246, 95, '_wp_attached_file', '2018/04/imagem-produto-18.jpg'),
(247, 95, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:29:\"2018/04/imagem-produto-18.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"imagem-produto-18-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"imagem-produto-18-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"imagem-produto-18-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:29:\"imagem-produto-18-533x400.jpg\";s:5:\"width\";i:533;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(248, 41, '_thumbnail_id', '95'),
(251, 96, '_wp_attached_file', '2018/04/imagem-produto-17.jpg'),
(252, 96, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:29:\"2018/04/imagem-produto-17.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"imagem-produto-17-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"imagem-produto-17-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"imagem-produto-17-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:29:\"imagem-produto-17-533x400.jpg\";s:5:\"width\";i:533;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(253, 1, '_thumbnail_id', '96'),
(262, 100, '_wp_attached_file', '2018/04/FACHADA-RESIDENCIAL.jpeg'),
(263, 100, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1032;s:6:\"height\";i:581;s:4:\"file\";s:32:\"2018/04/FACHADA-RESIDENCIAL.jpeg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"FACHADA-RESIDENCIAL-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"FACHADA-RESIDENCIAL-300x169.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"FACHADA-RESIDENCIAL-768x432.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"FACHADA-RESIDENCIAL-1024x576.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:32:\"FACHADA-RESIDENCIAL-533x400.jpeg\";s:5:\"width\";i:533;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-04-10 12:01:58', '2018-04-10 15:01:58', 'Coifas em aço inox, tubulação, apoios, para espetos e grelha e maquinas giratórias e todos os equipamentos para churrasco de qualidade.', 'Coifas, Apois de Grelhas, Espetos e Maquinas Giratórias', '', 'publish', 'open', 'open', '', 'ola-mundo', '', '', '2018-04-24 16:34:59', '2018-04-24 19:34:59', '', 0, 'http://localhost/lbz-theme-wp/?p=1', 0, 'post', '', 1),
(2, 1, '2018-04-10 12:01:58', '2018-04-10 15:01:58', 'Este é o exemplo de uma página. É diferente de um post de blog porque é estática e pode aparecer em menus de navegação (na maioria dos temas). A maioria das pessoas começam com uma página \'Sobre\' que as apresenta aos potenciais visitantes do site. Você pode usar algo como:\n\n<blockquote>Oi! Sou um estudante de Biologia e gosto de esportes e natureza. Nos fins de semana pratico futebol com meus amigos no clube local. Eu moro em Valinhos e fiz este site para falar sobre minha cidade.</blockquote>\n\n...ou algo como:\n\n<blockquote>A empresa Logos foi fundada em 1980, e tem provido o comércio local com o que há de melhor em informatização. Localizada em Recife, nossa empresa tem se destacado como um das que também contribuem para o descarte correto de equipamentos eletrônicos substituídos.</blockquote>\n\nComo um novo usuário WordPress, vá ao seu <a href=\"http://localhost/lbz-theme-wp/wp-admin/\">Painel</a> para excluir este conteúdo e criar o seu. Divirta-se!', 'Página de exemplo', '', 'trash', 'closed', 'open', '', 'pagina-exemplo__trashed', '', '', '2018-04-10 17:28:25', '2018-04-10 20:28:25', '', 0, 'http://localhost/lbz-theme-wp/?page_id=2', 0, 'page', '', 0),
(4, 1, '2018-04-10 16:39:41', '2018-04-10 19:39:41', '<div class=\"jumbotron\">\r\n<h1>LBZ - Tema Padrão</h1>\r\nThis is a template for a simple marketing or informational website. It includes a large callout called a jumbotron and three supporting pieces of content. Use it as a starting point to create something more unique.\r\n\r\n<a class=\"btn btn-primary btn-lg\" role=\"button\" href=\"#\">Learn more »</a>\r\n\r\n</div>\r\n<!-- Example row of columns -->\r\n<div class=\"row\">\r\n<div class=\"col-md-4\">\r\n<h2>Heading</h2>\r\nDonec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.\r\n\r\n<a class=\"btn btn-default\" role=\"button\" href=\"#\">View details »</a>\r\n\r\n</div>\r\n<div class=\"col-md-4\">\r\n<h2>Heading</h2>\r\nDonec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.\r\n\r\n<a class=\"btn btn-default\" role=\"button\" href=\"#\">View details »</a>\r\n\r\n</div>\r\n<div class=\"col-md-4\">\r\n<h2>Heading</h2>\r\nDonec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.\r\n\r\n<a class=\"btn btn-default\" role=\"button\" href=\"#\">View details »</a>\r\n\r\n</div>\r\n</div>', 'Início', '', 'publish', 'closed', 'closed', '', 'inicio', '', '', '2018-04-10 17:13:52', '2018-04-10 20:13:52', '', 0, 'http://localhost/lbz-theme-wp/?page_id=4', 0, 'page', '', 0),
(5, 1, '2018-04-10 16:39:24', '2018-04-10 19:39:24', '<span class=\"c\">&lt;!-- Main jumbotron for a primary marketing message or call to action --&gt;</span> <span class=\"nt\">&lt;div</span> <span class=\"na\">class=</span><span class=\"s\">\"jumbotron\"</span><span class=\"nt\">&gt;</span> <span class=\"nt\">&lt;h1&gt;</span>Hello, world!<span class=\"nt\">&lt;/h1&gt;</span> <span class=\"nt\">&lt;p&gt;</span>This is a template for a simple marketing or informational website. It includes a large callout called a jumbotron and three supporting pieces of content. Use it as a starting point to create something more unique.<span class=\"nt\">&lt;/p&gt;</span> <span class=\"nt\">&lt;p&gt;&lt;a</span> <span class=\"na\">class=</span><span class=\"s\">\"btn btn-primary btn-lg\"</span> <span class=\"na\">href=</span><span class=\"s\">\"#\"</span> <span class=\"na\">role=</span><span class=\"s\">\"button\"</span><span class=\"nt\">&gt;</span>Learn more <span class=\"ni\">&amp;raquo;</span><span class=\"nt\">&lt;/a&gt;&lt;/p&gt;</span> <span class=\"nt\">&lt;/div&gt;</span> <span class=\"c\">&lt;!-- Example row of columns --&gt;</span> <span class=\"nt\">&lt;div</span> <span class=\"na\">class=</span><span class=\"s\">\"row\"</span><span class=\"nt\">&gt;</span> <span class=\"nt\">&lt;div</span> <span class=\"na\">class=</span><span class=\"s\">\"col-md-4\"</span><span class=\"nt\">&gt;</span> <span class=\"nt\">&lt;h2&gt;</span>Heading<span class=\"nt\">&lt;/h2&gt;</span> <span class=\"nt\">&lt;p&gt;</span>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. <span class=\"nt\">&lt;/p&gt;</span> <span class=\"nt\">&lt;p&gt;&lt;a</span> <span class=\"na\">class=</span><span class=\"s\">\"btn btn-default\"</span> <span class=\"na\">href=</span><span class=\"s\">\"#\"</span> <span class=\"na\">role=</span><span class=\"s\">\"button\"</span><span class=\"nt\">&gt;</span>View details <span class=\"ni\">&amp;raquo;</span><span class=\"nt\">&lt;/a&gt;&lt;/p&gt;</span> <span class=\"nt\">&lt;/div&gt;</span> <span class=\"nt\">&lt;div</span> <span class=\"na\">class=</span><span class=\"s\">\"col-md-4\"</span><span class=\"nt\">&gt;</span> <span class=\"nt\">&lt;h2&gt;</span>Heading<span class=\"nt\">&lt;/h2&gt;</span> <span class=\"nt\">&lt;p&gt;</span>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. <span class=\"nt\">&lt;/p&gt;</span> <span class=\"nt\">&lt;p&gt;&lt;a</span> <span class=\"na\">class=</span><span class=\"s\">\"btn btn-default\"</span> <span class=\"na\">href=</span><span class=\"s\">\"#\"</span> <span class=\"na\">role=</span><span class=\"s\">\"button\"</span><span class=\"nt\">&gt;</span>View details <span class=\"ni\">&amp;raquo;</span><span class=\"nt\">&lt;/a&gt;&lt;/p&gt;</span> <span class=\"nt\">&lt;/div&gt;</span> <span class=\"nt\">&lt;div</span> <span class=\"na\">class=</span><span class=\"s\">\"col-md-4\"</span><span class=\"nt\">&gt;</span> <span class=\"nt\">&lt;h2&gt;</span>Heading<span class=\"nt\">&lt;/h2&gt;</span> <span class=\"nt\">&lt;p&gt;</span>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.<span class=\"nt\">&lt;/p&gt;</span> <span class=\"nt\">&lt;p&gt;&lt;a</span> <span class=\"na\">class=</span><span class=\"s\">\"btn btn-default\"</span> <span class=\"na\">href=</span><span class=\"s\">\"#\"</span> <span class=\"na\">role=</span><span class=\"s\">\"button\"</span><span class=\"nt\">&gt;</span>View details <span class=\"ni\">&amp;raquo;</span><span class=\"nt\">&lt;/a&gt;&lt;/p&gt;</span> <span class=\"nt\">&lt;/div&gt;</span> <span class=\"nt\">&lt;/div&gt;</span>', 'Início', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2018-04-10 16:39:24', '2018-04-10 19:39:24', '', 4, 'http://localhost/lbz-theme-wp/index.php/2018/04/10/4-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2018-04-10 17:08:14', '2018-04-10 20:08:14', '<div class=\"jumbotron\">\r\n<h1>Hello, world!</h1>\r\nThis is a template for a simple marketing or informational website. It includes a large callout called a jumbotron and three supporting pieces of content. Use it as a starting point to create something more unique.\r\n\r\n<a class=\"btn btn-primary btn-lg\" role=\"button\" href=\"#\">Learn more »</a>\r\n\r\n</div>\r\n<!-- Example row of columns -->\r\n<div class=\"row\">\r\n<div class=\"col-md-4\">\r\n<h2>Heading</h2>\r\nDonec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.\r\n\r\n<a class=\"btn btn-default\" role=\"button\" href=\"#\">View details »</a>\r\n\r\n</div>\r\n<div class=\"col-md-4\">\r\n<h2>Heading</h2>\r\nDonec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.\r\n\r\n<a class=\"btn btn-default\" role=\"button\" href=\"#\">View details »</a>\r\n\r\n</div>\r\n<div class=\"col-md-4\">\r\n<h2>Heading</h2>\r\nDonec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.\r\n\r\n<a class=\"btn btn-default\" role=\"button\" href=\"#\">View details »</a>\r\n\r\n</div>\r\n</div>', 'Início', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2018-04-10 17:08:14', '2018-04-10 20:08:14', '', 4, 'http://localhost/lbz-theme-wp/index.php/2018/04/10/4-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2018-04-10 17:13:52', '2018-04-10 20:13:52', '<div class=\"jumbotron\">\r\n<h1>LBZ - Tema Padrão</h1>\r\nThis is a template for a simple marketing or informational website. It includes a large callout called a jumbotron and three supporting pieces of content. Use it as a starting point to create something more unique.\r\n\r\n<a class=\"btn btn-primary btn-lg\" role=\"button\" href=\"#\">Learn more »</a>\r\n\r\n</div>\r\n<!-- Example row of columns -->\r\n<div class=\"row\">\r\n<div class=\"col-md-4\">\r\n<h2>Heading</h2>\r\nDonec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.\r\n\r\n<a class=\"btn btn-default\" role=\"button\" href=\"#\">View details »</a>\r\n\r\n</div>\r\n<div class=\"col-md-4\">\r\n<h2>Heading</h2>\r\nDonec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.\r\n\r\n<a class=\"btn btn-default\" role=\"button\" href=\"#\">View details »</a>\r\n\r\n</div>\r\n<div class=\"col-md-4\">\r\n<h2>Heading</h2>\r\nDonec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.\r\n\r\n<a class=\"btn btn-default\" role=\"button\" href=\"#\">View details »</a>\r\n\r\n</div>\r\n</div>', 'Início', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2018-04-10 17:13:52', '2018-04-10 20:13:52', '', 4, 'http://localhost/lbz-theme-wp/index.php/2018/04/10/4-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2018-04-10 17:28:25', '2018-04-10 20:28:25', 'Este é o exemplo de uma página. É diferente de um post de blog porque é estática e pode aparecer em menus de navegação (na maioria dos temas). A maioria das pessoas começam com uma página \'Sobre\' que as apresenta aos potenciais visitantes do site. Você pode usar algo como:\n\n<blockquote>Oi! Sou um estudante de Biologia e gosto de esportes e natureza. Nos fins de semana pratico futebol com meus amigos no clube local. Eu moro em Valinhos e fiz este site para falar sobre minha cidade.</blockquote>\n\n...ou algo como:\n\n<blockquote>A empresa Logos foi fundada em 1980, e tem provido o comércio local com o que há de melhor em informatização. Localizada em Recife, nossa empresa tem se destacado como um das que também contribuem para o descarte correto de equipamentos eletrônicos substituídos.</blockquote>\n\nComo um novo usuário WordPress, vá ao seu <a href=\"http://localhost/lbz-theme-wp/wp-admin/\">Painel</a> para excluir este conteúdo e criar o seu. Divirta-se!', 'Página de exemplo', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-10 17:28:25', '2018-04-10 20:28:25', '', 2, 'http://localhost/lbz-theme-wp/index.php/2018/04/10/2-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2018-04-10 17:30:22', '2018-04-10 20:30:22', 'Esta é a página sobre.\r\n\r\nAqui geralmente fica as principais características da empresa.\r\nUma boa prévia desses dados dessa página na página inicial cai muito bem.', 'Sobre', '', 'publish', 'closed', 'closed', '', 'sobre', '', '', '2018-04-10 18:19:20', '2018-04-10 21:19:20', '', 0, 'http://localhost/lbz-theme-wp/?page_id=11', 1, 'page', '', 0),
(12, 1, '2018-04-10 17:30:22', '2018-04-10 20:30:22', 'Esta é a página sobre.\r\n\r\nAqui geralmente fica as principais características da empresa.\r\nUma boa prévia desses dados dessa página na página inicial cai muito bem.', 'Sobre', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-04-10 17:30:22', '2018-04-10 20:30:22', '', 11, 'http://localhost/lbz-theme-wp/index.php/2018/04/10/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2018-04-10 17:33:11', '2018-04-10 20:33:11', '', 'Produtos', '', 'publish', 'closed', 'closed', '', 'noticias', '', '', '2018-04-20 15:41:23', '2018-04-20 18:41:23', '', 0, 'http://localhost/lbz-theme-wp/?page_id=13', 2, 'page', '', 0),
(14, 1, '2018-04-10 17:33:11', '2018-04-10 20:33:11', 'Notícias institucionais sobre a impresa', 'Notícias', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-04-10 17:33:11', '2018-04-10 20:33:11', '', 13, 'http://localhost/lbz-theme-wp/index.php/2018/04/10/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2018-04-10 17:37:26', '2018-04-10 20:37:26', 'Fone: 9999-9999\r\n\r\nemail: lbrazil@lbrazil.com.br', 'Contato', '', 'publish', 'closed', 'closed', '', 'contato', '', '', '2018-04-10 18:18:56', '2018-04-10 21:18:56', '', 0, 'http://localhost/lbz-theme-wp/?page_id=15', 3, 'page', '', 0),
(16, 1, '2018-04-10 17:37:26', '2018-04-10 20:37:26', 'Fone: 9999-9999\r\n\r\nemail: lbrazil@lbrazil.com.br', 'Contato', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-04-10 17:37:26', '2018-04-10 20:37:26', '', 15, 'http://localhost/lbz-theme-wp/index.php/2018/04/10/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2018-04-20 16:31:38', '2018-04-20 19:31:38', 'COIFAS EM AÇO INOX, TUBULAÇÃO, APOIOS PARA ESPETOS E GRELHAS E MAQUINA GIRATÓRIA E TODOS OS EQUIPAMENTOS NECESSÁRIOS PARA CHURRASCO DE QUALIDADE', 'Coifas, Apois de Grelhas, Espetos e Maquinas Giratórias', '', 'inherit', 'closed', 'closed', '', '1-autosave-v1', '', '', '2018-04-20 16:31:38', '2018-04-20 19:31:38', '', 1, 'http://localhost/lbz-theme-wp/index.php/2018/04/10/1-autosave-v1/', 0, 'revision', '', 0),
(18, 1, '2018-04-10 17:50:50', '2018-04-10 20:50:50', 'Este é um post padrão para que seja notada o design de um post neste tema', 'LBZ - Post padrão', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-04-10 17:50:50', '2018-04-10 20:50:50', '', 1, 'http://localhost/lbz-theme-wp/index.php/2018/04/10/1-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2018-04-10 17:51:29', '2018-04-10 20:51:29', 'Este é um post padrão para que seja notada o design de um post neste tema', 'LBZ - post exemplo', '', 'publish', 'open', 'open', '', 'lbz-post-exemplo', '', '', '2018-04-10 17:51:29', '2018-04-10 20:51:29', '', 0, 'http://localhost/lbz-theme-wp/?p=19', 0, 'post', '', 0),
(20, 1, '2018-04-10 17:51:29', '2018-04-10 20:51:29', 'Este é um post padrão para que seja notada o design de um post neste tema', 'LBZ - post exemplo', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2018-04-10 17:51:29', '2018-04-10 20:51:29', '', 19, 'http://localhost/lbz-theme-wp/index.php/2018/04/10/19-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2018-04-10 17:51:58', '2018-04-10 20:51:58', 'Este é um post padrão para que seja notada o design de um post neste tema', 'LBZ - outro post de exemplo', '', 'publish', 'open', 'open', '', 'lbz-outro-post-de-exemplo', '', '', '2018-04-10 17:51:58', '2018-04-10 20:51:58', '', 0, 'http://localhost/lbz-theme-wp/?p=21', 0, 'post', '', 1),
(22, 1, '2018-04-10 17:51:58', '2018-04-10 20:51:58', 'Este é um post padrão para que seja notada o design de um post neste tema', 'LBZ - outro post de exemplo', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2018-04-10 17:51:58', '2018-04-10 20:51:58', '', 21, 'http://localhost/lbz-theme-wp/index.php/2018/04/10/21-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2018-04-10 18:19:11', '2018-04-10 21:19:11', '1Esta é a página sobre.\r\n\r\nAqui geralmente fica as principais características da empresa.\r\nUma boa prévia desses dados dessa página na página inicial cai muito bem.', 'Sobre', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-04-10 18:19:11', '2018-04-10 21:19:11', '', 11, 'http://localhost/lbz-theme-wp/index.php/2018/04/10/11-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2018-04-10 18:19:20', '2018-04-10 21:19:20', 'Esta é a página sobre.\r\n\r\nAqui geralmente fica as principais características da empresa.\r\nUma boa prévia desses dados dessa página na página inicial cai muito bem.', 'Sobre', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-04-10 18:19:20', '2018-04-10 21:19:20', '', 11, 'http://localhost/lbz-theme-wp/index.php/2018/04/10/11-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2018-04-11 00:27:47', '2018-04-11 03:27:47', '{\n    \"blogname\": {\n        \"value\": \"LBZ\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-11 03:27:45\"\n    },\n    \"blogdescription\": {\n        \"value\": \"Tema padr\\u00e3o do wordpress com bootstrap\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-11 03:27:47\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7585c0ff-6c6c-41ff-b2d2-d8540f7339fd', '', '', '2018-04-11 00:27:47', '2018-04-11 03:27:47', '', 0, 'http://localhost/lbz-theme-wp/?p=26', 0, 'customize_changeset', '', 0),
(28, 1, '2018-04-11 03:41:13', '2018-04-11 06:41:13', '{\n    \"blogname\": {\n        \"value\": \"LBZ- Tema B\\u00e1sico\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-11 06:41:13\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd10c574d-af27-4bc5-bf93-61f6b50e9dcd', '', '', '2018-04-11 03:41:13', '2018-04-11 06:41:13', '', 0, 'http://localhost/lbz-theme-wp/index.php/2018/04/11/d10c574d-af27-4bc5-bf93-61f6b50e9dcd/', 0, 'customize_changeset', '', 0),
(29, 1, '2018-04-14 20:33:19', '2018-04-14 23:33:19', '{\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-14 23:33:19\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '93f5a6f2-a64a-4c4f-b36d-f53eaa1f1160', '', '', '2018-04-14 20:33:19', '2018-04-14 23:33:19', '', 0, 'http://localhost/lbz-theme-wp/index.php/2018/04/14/93f5a6f2-a64a-4c4f-b36d-f53eaa1f1160/', 0, 'customize_changeset', '', 0),
(30, 1, '2018-04-15 15:16:45', '2018-04-15 18:16:45', '{\n    \"lbz-theme::nav_menu_locations[top]\": {\n        \"value\": -738344112,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-15 18:16:27\"\n    },\n    \"nav_menu[-738344112]\": {\n        \"value\": {\n            \"name\": \"Top menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-15 18:16:27\"\n    },\n    \"nav_menu_item[-1575676226]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-15 18:16:27\"\n    },\n    \"nav_menu_item[-1727011968]\": {\n        \"value\": {\n            \"object_id\": 15,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Contato\",\n            \"url\": \"http://localhost/lbz-theme-wp/index.php/contato/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Contato\",\n            \"nav_menu_term_id\": -738344112,\n            \"_invalid\": false,\n            \"type_label\": \"P\\u00e1gina\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-15 18:16:27\"\n    },\n    \"nav_menu_item[-1769505856]\": {\n        \"value\": {\n            \"object_id\": 13,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Not\\u00edcias\",\n            \"url\": \"http://localhost/lbz-theme-wp/index.php/noticias/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Not\\u00edcias\",\n            \"nav_menu_term_id\": -738344112,\n            \"_invalid\": false,\n            \"type_label\": \"P\\u00e1gina\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-15 18:16:27\"\n    },\n    \"nav_menu_item[-1676319538]\": {\n        \"value\": {\n            \"object_id\": 11,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"post_type\",\n            \"title\": \"Sobre\",\n            \"url\": \"http://localhost/lbz-theme-wp/index.php/sobre/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Sobre\",\n            \"nav_menu_term_id\": -738344112,\n            \"_invalid\": false,\n            \"type_label\": \"P\\u00e1gina\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-15 18:16:27\"\n    },\n    \"nav_menu_item[-1034216674]\": {\n        \"value\": {\n            \"object_id\": 4,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"In\\u00edcio\",\n            \"url\": \"http://localhost/lbz-theme-wp/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"In\\u00edcio\",\n            \"nav_menu_term_id\": -738344112,\n            \"_invalid\": false,\n            \"type_label\": \"P\\u00e1gina\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-15 18:16:27\"\n    },\n    \"nav_menu_item[-1036449908]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-15 18:16:45\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'cb813670-a549-4d0f-8239-adc1ed58588d', '', '', '2018-04-15 15:16:45', '2018-04-15 18:16:45', '', 0, 'http://localhost/lbz-theme-wp/?p=30', 0, 'customize_changeset', '', 0),
(31, 1, '2018-04-15 15:16:45', '2018-04-15 18:16:45', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2018-04-15 15:41:16', '2018-04-15 18:41:16', '', 0, 'http://localhost/lbz-theme-wp/index.php/2018/04/15/31/', 4, 'nav_menu_item', '', 0),
(32, 1, '2018-04-15 15:16:46', '2018-04-15 18:16:46', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2018-04-15 15:41:16', '2018-04-15 18:41:16', '', 0, 'http://localhost/lbz-theme-wp/index.php/2018/04/15/32/', 3, 'nav_menu_item', '', 0),
(33, 1, '2018-04-15 15:16:47', '2018-04-15 18:16:47', ' ', '', '', 'publish', 'closed', 'closed', '', '33', '', '', '2018-04-15 15:41:16', '2018-04-15 18:41:16', '', 0, 'http://localhost/lbz-theme-wp/index.php/2018/04/15/33/', 2, 'nav_menu_item', '', 0),
(34, 1, '2018-04-15 15:16:48', '2018-04-15 18:16:48', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2018-04-15 15:16:48', '2018-04-15 18:16:48', '', 0, 'http://localhost/lbz-theme-wp/index.php/2018/04/15/34/', 1, 'nav_menu_item', '', 0),
(35, 1, '2018-04-15 15:17:01', '2018-04-15 18:17:01', '{\n    \"nav_menu[2]\": {\n        \"value\": {\n            \"name\": \"Top menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-15 18:17:01\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ef36ca5a-ea12-4cf4-9c25-b5dad03f336e', '', '', '2018-04-15 15:17:01', '2018-04-15 18:17:01', '', 0, 'http://localhost/lbz-theme-wp/index.php/2018/04/15/ef36ca5a-ea12-4cf4-9c25-b5dad03f336e/', 0, 'customize_changeset', '', 0),
(36, 1, '2018-04-15 15:41:15', '2018-04-15 18:41:15', '{\n    \"nav_menu_item[31]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 15,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"P\\u00e1gina\",\n            \"url\": \"http://localhost/lbz-theme-wp/index.php/contato/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 4,\n            \"status\": \"publish\",\n            \"original_title\": \"Contato\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-15 18:41:15\"\n    },\n    \"nav_menu_item[32]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 13,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"P\\u00e1gina\",\n            \"url\": \"http://localhost/lbz-theme-wp/index.php/noticias/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 3,\n            \"status\": \"publish\",\n            \"original_title\": \"Not\\u00edcias\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-15 18:41:15\"\n    },\n    \"nav_menu_item[33]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 11,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"P\\u00e1gina\",\n            \"url\": \"http://localhost/lbz-theme-wp/index.php/sobre/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 2,\n            \"status\": \"publish\",\n            \"original_title\": \"Sobre\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-15 18:41:15\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '27cba68f-5c3c-4fae-8a19-df2a64808810', '', '', '2018-04-15 15:41:15', '2018-04-15 18:41:15', '', 0, 'http://localhost/lbz-theme-wp/index.php/2018/04/15/27cba68f-5c3c-4fae-8a19-df2a64808810/', 0, 'customize_changeset', '', 0),
(37, 1, '2018-04-20 15:39:37', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-20 15:39:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/inoxx/?p=37', 0, 'post', '', 0),
(38, 1, '2018-04-20 15:40:38', '2018-04-20 18:40:38', '{\n    \"blogname\": {\n        \"value\": \"INOXX\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-20 18:40:03\"\n    },\n    \"blogdescription\": {\n        \"value\": \"Desenvolvimento e inova\\u00e7\\u00e3o\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-04-20 18:40:38\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '704e7d44-35b2-4be7-8868-ec99c8bbf315', '', '', '2018-04-20 15:40:38', '2018-04-20 18:40:38', '', 0, 'http://localhost/inoxx/?p=38', 0, 'customize_changeset', '', 0),
(39, 1, '2018-04-20 15:41:23', '2018-04-20 18:41:23', '', 'Produtos', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-04-20 15:41:23', '2018-04-20 18:41:23', '', 13, 'http://localhost/inoxx/index.php/2018/04/20/13-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2018-04-20 16:33:16', '2018-04-20 19:33:16', 'Coifas em aço inox, tubulação, apoios, para espetos e grelha e maquinas giratórias e todos os equipamentos para churrasco de qualidade.', 'Coifas, Apois de Grelhas, Espetos e Maquinas Giratórias', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-04-20 16:33:16', '2018-04-20 19:33:16', '', 1, 'http://localhost/inoxx/index.php/2018/04/20/1-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2018-04-20 16:36:35', '2018-04-20 19:36:35', 'Confeccionada em aço inox, tabua de corte, espaço para temperar a cerne com a bandeja para escoamento e reservatório.', 'Bancada de Apoio para Churrasco', '', 'publish', 'open', 'open', '', 'bancada-de-apoio-para-churrasco', '', '', '2018-04-24 16:34:29', '2018-04-24 19:34:29', '', 0, 'http://localhost/inoxx/?p=41', 0, 'post', '', 0),
(42, 1, '2018-04-20 16:36:35', '2018-04-20 19:36:35', 'Confeccionada em aço inox, tabua de corte, espaço para temperar a cerne com a bandeja para escoamento e reservatório.', 'Bancada de Apoio para Churrasco', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2018-04-20 16:36:35', '2018-04-20 19:36:35', '', 41, 'http://localhost/inoxx/index.php/2018/04/20/41-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2018-04-20 16:38:14', '2018-04-20 19:38:14', 'Confeccionada em aço inoxx AISI 304, com gaveta para carvão, reservatório para gordura residual e grelha.', 'Churrasquiera a Bafo', '', 'publish', 'open', 'open', '', 'churrasquiera-a-bafo', '', '', '2018-04-24 16:29:43', '2018-04-24 19:29:43', '', 0, 'http://localhost/inoxx/?p=43', 0, 'post', '', 0),
(44, 1, '2018-04-20 16:38:14', '2018-04-20 19:38:14', 'Confeccionada em aço inoxx AISI 304, com gaveta para carvão, reservatório para gordura residual e grelha.', 'Churrasquiera a Bafo', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2018-04-20 16:38:14', '2018-04-20 19:38:14', '', 43, 'http://localhost/inoxx/index.php/2018/04/20/43-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2018-04-20 16:51:40', '2018-04-20 19:51:40', 'Corrimão e guarda-corpos em modelos diversos, executados conforme a necessidade de cada cliente.', 'Modelos Diversos', '', 'publish', 'open', 'open', '', 'modelos-diversos', '', '', '2018-04-24 16:27:11', '2018-04-24 19:27:11', '', 0, 'http://localhost/inoxx/?p=45', 0, 'post', '', 0),
(46, 1, '2018-04-20 16:51:40', '2018-04-20 19:51:40', 'Corrimão e guarda-corpos em modelos diversos, executados conforme a necessidade de cada cliente.', 'Modelos Diversos', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2018-04-20 16:51:40', '2018-04-20 19:51:40', '', 45, 'http://localhost/inoxx/index.php/2018/04/20/45-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2018-04-20 16:55:58', '2018-04-20 19:55:58', 'Tubo superior retangular de 40x20mm, montantes quadrados de 40x40mm, com tubos intermediários de 10x10mm\r\n\r\n*A quantidade de tubos intermediários pode variar de acordo com a necessidade do cliente.', 'Tubulação Quadrada e Retangular', '', 'publish', 'open', 'open', '', 'tubulacao-quadrada-e-retangular', '', '', '2018-04-20 16:55:58', '2018-04-20 19:55:58', '', 0, 'http://localhost/inoxx/?p=47', 0, 'post', '', 0),
(48, 1, '2018-04-20 16:55:49', '2018-04-20 19:55:49', 'Tubo superior retangular de 40x20mm, montantes quadrados de 40x40mm, com tubos intermediários de 10x10mm\r\n\r\n*A quantidade de tubos intermediários pode variar de acordo com a necessidade do cliente.', 'Tubulação Quadrada e Retangular', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2018-04-20 16:55:49', '2018-04-20 19:55:49', '', 47, 'http://localhost/inoxx/index.php/2018/04/20/47-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2018-04-20 17:01:12', '2018-04-20 20:01:12', 'Tudo superior e montantes de 2\" com vãos livres para instalação de vidros\r\n\r\n<small>Vidros, peças de fixação e instalação dos mesmos não inclusos.</small>', 'Tubulação Redonda', '', 'publish', 'open', 'open', '', 'tubulacao-redonda', '', '', '2018-04-24 16:26:25', '2018-04-24 19:26:25', '', 0, 'http://localhost/inoxx/?p=49', 0, 'post', '', 0),
(50, 1, '2018-04-20 17:01:12', '2018-04-20 20:01:12', 'Tudo superior e montantes de 2\" com vãos livres para instalação de vidros\r\n\r\n<small>Vidros, peças de fixação e instalação dos mesmos não inclusos.</small>', 'Tubulação Redonda', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2018-04-20 17:01:12', '2018-04-20 20:01:12', '', 49, 'http://localhost/inoxx/index.php/2018/04/20/49-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2018-04-20 17:06:05', '2018-04-20 20:06:05', 'Estes são alguns exemplos da diversidade dos nossos produtos, atendendo aos mais diversos ramos, sendo àreas comercial, industrial e residêncial.\r\n\r\nEntre em contato e seja atendido por profissionais capacitados a oferecerem a melhor solução para o seu projeto, dos mais simples aos mais ousados, oferecendo sempre produtos de extrema qualidade.', 'Produtos Sob Medida', '', 'publish', 'open', 'open', '', 'produtos-sob-demanda', '', '', '2018-04-24 16:25:56', '2018-04-24 19:25:56', '', 0, 'http://localhost/inoxx/?p=52', 0, 'post', '', 0),
(53, 1, '2018-04-20 17:06:05', '2018-04-20 20:06:05', 'Estes são alguns exemplos da diversidade dos nossos produtos, atendendo aos mais diversos ramos, sendo àreas comercial, industrial e residêncial.\r\n\r\nEntre em contato e seja atendido por profissionais capacitados a oferecerem a melhor solução para o seu projeto, dos mais simples aos mais ousados, oferecendo sempre produtos de extrema qualidade.', 'Produtos Sob Demanda', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2018-04-20 17:06:05', '2018-04-20 20:06:05', '', 52, 'http://localhost/inoxx/index.php/2018/04/20/52-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2018-04-20 17:06:46', '2018-04-20 20:06:46', 'Estes são alguns exemplos da diversidade dos nossos produtos, atendendo aos mais diversos ramos, sendo àreas comercial, industrial e residêncial.\r\n\r\nEntre em contato e seja atendido por profissionais capacitados a oferecerem a melhor solução para o seu projeto, dos mais simples aos mais ousados, oferecendo sempre produtos de extrema qualidade.', 'Produtos Sob Medida', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2018-04-20 17:06:46', '2018-04-20 20:06:46', '', 52, 'http://localhost/inoxx/index.php/2018/04/20/52-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2018-04-20 17:08:46', '2018-04-20 20:08:46', 'Sistemas de porta de correr em aço inox, podendo ser instalados em portas de madeira ou vidro, com trilho em barra chata, roldanas em nylon com rolamentos silenciosos, extremamente resistentes. Executamos também aduelas e fazemos revestimentos de aduelas já instaladas.', 'Sistemas para Portas de Correr', '', 'publish', 'open', 'open', '', 'sistemas-para-portas-de-correr', '', '', '2018-04-24 16:25:33', '2018-04-24 19:25:33', '', 0, 'http://localhost/inoxx/?p=55', 0, 'post', '', 0),
(56, 1, '2018-04-20 17:08:46', '2018-04-20 20:08:46', 'Sistemas de porta de correr em aço inox, podendo ser instalados em portas de madeira ou vidro, com trilho em barra chata, roldanas em nylon com rolamentos silenciosos, extremamente resistentes. Executamos também aduelas e fazemos revestimentos de aduelas já instaladas.', 'Sistemas para Portas de Correr', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2018-04-20 17:08:46', '2018-04-20 20:08:46', '', 55, 'http://localhost/inoxx/index.php/2018/04/20/55-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2018-04-20 17:11:31', '2018-04-20 20:11:31', 'Confeccionamos araras, estantes, mostruários, e expositores nos mais diversos modelos, atendendo lojas, escritórios, consultórios, de acordo com a necessidade de cada ambiente, seguindo projetos ou mesmo projetando, através de contratos direto com o cliente.', 'Mostruários', '', 'publish', 'open', 'open', '', 'mostruarios', '', '', '2018-04-24 16:22:26', '2018-04-24 19:22:26', '', 0, 'http://localhost/inoxx/?p=57', 0, 'post', '', 0),
(58, 1, '2018-04-20 17:11:31', '2018-04-20 20:11:31', 'Confeccionamos araras, estantes, mostruários, e expositores nos mais diversos modelos, atendendo lojas, escritórios, consultórios, de acordo com a necessidade de cada ambiente, seguindo projetos ou mesmo projetando, através de contratos direto com o cliente.', 'Mostruários', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2018-04-20 17:11:31', '2018-04-20 20:11:31', '', 57, 'http://localhost/inoxx/index.php/2018/04/20/57-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2018-04-20 17:13:52', '2018-04-20 20:13:52', 'Tubos em aço inox para instalação de duchas em áreas de piscina, confeccionado em aço inox 304, resistente ao cloro e interpéries. Podendo ser em tubos de perfil quadrados ou redondo, feito sob medida, atendendo aos mais diversos projetos.', 'Tubos para Duchas', '', 'publish', 'open', 'open', '', 'tubos-para-duchas', '', '', '2018-04-24 16:21:57', '2018-04-24 19:21:57', '', 0, 'http://localhost/inoxx/?p=59', 0, 'post', '', 0),
(60, 1, '2018-04-20 17:13:52', '2018-04-20 20:13:52', 'Tubos em aço inox para instalação de duchas em áreas de piscina, confeccionado em aço inox 304, resistente ao cloro e interpéries. Podendo ser em tubos de perfil quadrados ou redondo, feito sob medida, atendendo aos mais diversos projetos.', 'Tubos para Duchas', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2018-04-20 17:13:52', '2018-04-20 20:13:52', '', 59, 'http://localhost/inoxx/index.php/2018/04/20/59-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2018-04-20 17:17:23', '2018-04-20 20:17:23', 'Escadas confeccionadas em aço inox, emvários modelos e  tamanhos, do tipo de caracol, com patamares, estrutura lateral e central, de correr, para estantes, beliches, etx... Conforme a necessidade de cad  cliente.', 'Escada', '', 'publish', 'open', 'open', '', 'escada', '', '', '2018-04-24 16:04:36', '2018-04-24 19:04:36', '', 0, 'http://localhost/inoxx/?p=61', 0, 'post', '', 0),
(62, 1, '2018-04-20 17:17:23', '2018-04-20 20:17:23', 'Escadas confeccionadas em aço inox, emvários modelos e  tamanhos, do tipo de caracol, com patamares, estrutura lateral e central, de correr, para estantes, beliches, etx... Conforme a necessidade de cad  cliente.', 'Escada', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2018-04-20 17:17:23', '2018-04-20 20:17:23', '', 61, 'http://localhost/inoxx/index.php/2018/04/20/61-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2018-04-20 17:21:31', '2018-04-20 20:21:31', 'Confeccionamos bancadas , balcões refrigerados, passa-pratos, coifas, pias e muitos outros produtos nos maus diversos tamanhos e modelos, atendendo tanto comércio de seguimentos alimentícios assim como cozinhas industriais.', 'Comércio / Indústria', '', 'publish', 'open', 'open', '', 'comercio-industria', '', '', '2018-04-24 16:21:23', '2018-04-24 19:21:23', '', 0, 'http://localhost/inoxx/?p=63', 0, 'post', '', 0),
(64, 1, '2018-04-20 17:21:31', '2018-04-20 20:21:31', 'Confeccionamos bancadas , balcões refrigerados, passa-pratos, coifas, pias e muitos outros produtos nos maus diversos tamanhos e modelos, atendendo tanto comércio de seguimentos alimentícios assim como cozinhas industriais.', 'Comércio / Indústria', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2018-04-20 17:21:31', '2018-04-20 20:21:31', '', 63, 'http://localhost/inoxx/index.php/2018/04/20/63-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2018-04-20 17:23:51', '2018-04-20 20:23:51', 'Aparadores, mesas de centro, bancadas, mesas de apoio nos mais diversos modelos e medidas, projetadas a fim de atender à diferentes  necessidades.', 'Aparadores, Mesas de Centro, Bancadas, Mesas de Apoio', '', 'publish', 'open', 'open', '', 'aparadores-mesas-de-centro-bancadas-mesas-de-apoio', '', '', '2018-04-24 16:18:32', '2018-04-24 19:18:32', '', 0, 'http://localhost/inoxx/?p=65', 0, 'post', '', 0),
(66, 1, '2018-04-20 17:23:51', '2018-04-20 20:23:51', 'Aparadores, mesas de centro, bancadas, mesas de apoio nos mais diversos modelos e medidas, projetadas a fim de atender à diferentes  necessidades.', 'Aparadores, Mesas de Centro, Bancadas, Mesas de Apoio', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2018-04-20 17:23:51', '2018-04-20 20:23:51', '', 65, 'http://localhost/inoxx/index.php/2018/04/20/65-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2018-04-20 17:25:28', '2018-04-20 20:25:28', 'Mesas em aço inox de medidas e modelos variados, para cozinha, escritório, restaurante e outros seguimentos, conforme a necessidade de cada cliente', 'Mesas Sob Medida', '', 'publish', 'open', 'open', '', 'mesas-sob-medida', '', '', '2018-04-24 16:18:06', '2018-04-24 19:18:06', '', 0, 'http://localhost/inoxx/?p=67', 0, 'post', '', 0),
(68, 1, '2018-04-20 17:25:28', '2018-04-20 20:25:28', 'Mesas em aço inox de medidas e modelos variados, para cozinha, escritório, restaurante e outros seguimentos, conforme a necessidade de cada cliente', 'Mesas Sob Medida', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2018-04-20 17:25:28', '2018-04-20 20:25:28', '', 67, 'http://localhost/inoxx/index.php/2018/04/20/67-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2018-04-20 17:27:05', '2018-04-20 20:27:05', 'Puxadores em aço inox em diferentes modelos e medidas, para os mais variados projetos e utilizações, como portas, portões, armários, bancadas, gavetas, etc.', 'Puxadores', '', 'publish', 'open', 'open', '', 'puxadores', '', '', '2018-04-24 16:07:40', '2018-04-24 19:07:40', '', 0, 'http://localhost/inoxx/?p=69', 0, 'post', '', 0),
(70, 1, '2018-04-20 17:27:05', '2018-04-20 20:27:05', 'Puxadores em aço inox em diferentes modelos e medidas, para os mais variados projetos e utilizações, como portas, portões, armários, bancadas, gavetas, etc.', 'Puxadores', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2018-04-20 17:27:05', '2018-04-20 20:27:05', '', 69, 'http://localhost/inoxx/index.php/2018/04/20/69-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2018-04-20 17:28:31', '2018-04-20 20:28:31', 'Suportes de TV em aço inox em modelos diversos, podendo ser giratórios, com fixação no piso, na laje ou na parede, com acabamento de extrema qualidade e funcionalidade adaptável a projetos diversificados', 'Suporte para TV', '', 'publish', 'open', 'open', '', 'suporte-para-tv', '', '', '2018-04-24 16:04:10', '2018-04-24 19:04:10', '', 0, 'http://localhost/inoxx/?p=71', 0, 'post', '', 0),
(72, 1, '2018-04-20 17:28:31', '2018-04-20 20:28:31', 'Suportes de TV em aço inox em modelos diversos, podendo ser giratórios, com fixação no piso, na laje ou na parede, com acabamento de extrema qualidade e funcionalidade adaptável a projetos diversificados', 'Suporte para TV', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2018-04-20 17:28:31', '2018-04-20 20:28:31', '', 71, 'http://localhost/inoxx/index.php/2018/04/20/71-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2018-04-23 12:16:52', '2018-04-23 15:16:52', '<img class=\"alignnone size-medium wp-image-73\" src=\"http://localhost/inoxx/wp-content/uploads/2018/04/shutterstock_209777725-e1524496568718-300x225.jpg\" alt=\"\" width=\"300\" height=\"225\" />Puxadores em aço inox em diferentes modelos e medidas, para os mais variados projetos e utilizações, como portas, portões, armários, bancadas, gavetas, etc.', 'Puxadores', '', 'inherit', 'closed', 'closed', '', '69-autosave-v1', '', '', '2018-04-23 12:16:52', '2018-04-23 15:16:52', '', 69, 'http://localhost/inoxx/index.php/2018/04/23/69-autosave-v1/', 0, 'revision', '', 0),
(82, 1, '2018-04-24 16:04:02', '2018-04-24 19:04:02', '', 'imagem-produto-9', '', 'inherit', 'open', 'closed', '', 'imagem-produto-9', '', '', '2018-04-24 16:04:02', '2018-04-24 19:04:02', '', 71, 'http://localhost/inoxx/wp-content/uploads/2018/04/imagem-produto-9.jpg', 0, 'attachment', 'image/jpeg', 0),
(83, 1, '2018-04-24 16:04:27', '2018-04-24 19:04:27', '', 'imagem-produto-10', '', 'inherit', 'open', 'closed', '', 'imagem-produto-10', '', '', '2018-04-24 16:04:27', '2018-04-24 19:04:27', '', 61, 'http://localhost/inoxx/wp-content/uploads/2018/04/imagem-produto-10.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2018-04-24 16:07:33', '2018-04-24 19:07:33', '', 'imagem-produto-6', '', 'inherit', 'open', 'closed', '', 'imagem-produto-6', '', '', '2018-04-24 16:07:33', '2018-04-24 19:07:33', '', 69, 'http://localhost/inoxx/wp-content/uploads/2018/04/imagem-produto-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2018-04-24 16:17:53', '2018-04-24 19:17:53', '', 'imagem-produto-13', '', 'inherit', 'open', 'closed', '', 'imagem-produto-13', '', '', '2018-04-24 16:17:53', '2018-04-24 19:17:53', '', 67, 'http://localhost/inoxx/wp-content/uploads/2018/04/imagem-produto-13.jpg', 0, 'attachment', 'image/jpeg', 0),
(86, 1, '2018-04-24 16:18:25', '2018-04-24 19:18:25', '', 'imagem-produto-11', '', 'inherit', 'open', 'closed', '', 'imagem-produto-11', '', '', '2018-04-24 16:18:25', '2018-04-24 19:18:25', '', 65, 'http://localhost/inoxx/wp-content/uploads/2018/04/imagem-produto-11.jpg', 0, 'attachment', 'image/jpeg', 0),
(87, 1, '2018-04-24 16:21:17', '2018-04-24 19:21:17', '', 'imagem-produto-14', '', 'inherit', 'open', 'closed', '', 'imagem-produto-14', '', '', '2018-04-24 16:21:17', '2018-04-24 19:21:17', '', 63, 'http://localhost/inoxx/wp-content/uploads/2018/04/imagem-produto-14.jpg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2018-04-24 16:21:51', '2018-04-24 19:21:51', '', 'imagem-produto-5', '', 'inherit', 'open', 'closed', '', 'imagem-produto-5', '', '', '2018-04-24 16:21:51', '2018-04-24 19:21:51', '', 59, 'http://localhost/inoxx/wp-content/uploads/2018/04/imagem-produto-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2018-04-24 16:22:20', '2018-04-24 19:22:20', '', 'imagem-produto-', '', 'inherit', 'open', 'closed', '', 'imagem-produto', '', '', '2018-04-24 16:22:20', '2018-04-24 19:22:20', '', 57, 'http://localhost/inoxx/wp-content/uploads/2018/04/imagem-produto-.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2018-04-24 16:25:28', '2018-04-24 19:25:28', '', 'imagem-produto-15', '', 'inherit', 'open', 'closed', '', 'imagem-produto-15', '', '', '2018-04-24 16:25:28', '2018-04-24 19:25:28', '', 55, 'http://localhost/inoxx/wp-content/uploads/2018/04/imagem-produto-15.jpg', 0, 'attachment', 'image/jpeg', 0),
(91, 1, '2018-04-24 16:25:50', '2018-04-24 19:25:50', '', 'imagem-produto-7', '', 'inherit', 'open', 'closed', '', 'imagem-produto-7', '', '', '2018-04-24 16:25:50', '2018-04-24 19:25:50', '', 52, 'http://localhost/inoxx/wp-content/uploads/2018/04/imagem-produto-7.jpg', 0, 'attachment', 'image/jpeg', 0),
(92, 1, '2018-04-24 16:26:20', '2018-04-24 19:26:20', '', 'imagem-produto', '', 'inherit', 'open', 'closed', '', 'imagem-produto-2', '', '', '2018-04-24 16:26:20', '2018-04-24 19:26:20', '', 49, 'http://localhost/inoxx/wp-content/uploads/2018/04/imagem-produto.jpg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2018-04-24 16:27:05', '2018-04-24 19:27:05', '', 'imagem-produto-3', '', 'inherit', 'open', 'closed', '', 'imagem-produto-3', '', '', '2018-04-24 16:27:05', '2018-04-24 19:27:05', '', 45, 'http://localhost/inoxx/wp-content/uploads/2018/04/imagem-produto-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2018-04-24 16:29:37', '2018-04-24 19:29:37', '', 'imagem-produto-16', '', 'inherit', 'open', 'closed', '', 'imagem-produto-16', '', '', '2018-04-24 16:29:37', '2018-04-24 19:29:37', '', 43, 'http://localhost/inoxx/wp-content/uploads/2018/04/imagem-produto-16.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(95, 1, '2018-04-24 16:34:24', '2018-04-24 19:34:24', '', 'imagem-produto-18', '', 'inherit', 'open', 'closed', '', 'imagem-produto-18', '', '', '2018-04-24 16:34:24', '2018-04-24 19:34:24', '', 41, 'http://localhost/inoxx/wp-content/uploads/2018/04/imagem-produto-18.jpg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2018-04-24 16:34:54', '2018-04-24 19:34:54', '', 'imagem-produto-17', '', 'inherit', 'open', 'closed', '', 'imagem-produto-17', '', '', '2018-04-24 16:34:54', '2018-04-24 19:34:54', '', 1, 'http://localhost/inoxx/wp-content/uploads/2018/04/imagem-produto-17.jpg', 0, 'attachment', 'image/jpeg', 0),
(100, 1, '2018-04-24 18:36:44', '2018-04-24 21:36:44', '', 'FACHADA - RESIDENCIAL', '', 'inherit', 'open', 'closed', '', 'fachada-residencial', '', '', '2018-04-24 18:36:44', '2018-04-24 21:36:44', '', 0, 'http://localhost/inoxx/wp-content/uploads/2018/04/FACHADA-RESIDENCIAL.jpeg', 0, 'attachment', 'image/jpeg', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0),
(2, 'Top menu', 'top-menu', 0),
(3, 'Churrasqueiras e Acessórios', 'churrasqueiras', 0),
(4, 'Corrimão e Guarda-Copo', 'corrimao', 0),
(5, 'Diversos', 'diversos', 0),
(6, 'Escadas', 'escadas', 0),
(7, 'Comércio e Indústrias', 'comercioind', 0),
(8, 'Mesas e Aparadores', 'mesas', 0),
(9, 'Puxadores', 'puxadores', 0),
(10, 'Suporte para TV', 'suportetv', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 3, 0),
(19, 1, 0),
(21, 1, 0),
(31, 2, 0),
(32, 2, 0),
(33, 2, 0),
(34, 2, 0),
(41, 3, 0),
(43, 3, 0),
(45, 4, 0),
(47, 4, 0),
(49, 1, 0),
(52, 5, 0),
(55, 5, 0),
(57, 5, 0),
(59, 5, 0),
(61, 6, 0),
(63, 7, 0),
(65, 8, 0),
(67, 8, 0),
(69, 9, 0),
(71, 10, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'category', '', 0, 3),
(4, 4, 'category', '', 0, 2),
(5, 5, 'category', '', 0, 4),
(6, 6, 'category', '', 0, 1),
(7, 7, 'category', '', 0, 1),
(8, 8, 'category', '', 0, 2),
(9, 9, 'category', '', 0, 1),
(10, 10, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'lbz2018'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'ectoplasm'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'false'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '37'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(20, 1, 'closedpostboxes_page', 'a:0:{}'),
(21, 1, 'metaboxhidden_page', 'a:4:{i:0;s:10:\"postcustom\";i:1;s:16:\"commentstatusdiv\";i:2;s:7:\"slugdiv\";i:3;s:9:\"authordiv\";}'),
(23, 1, 'wp_user-settings', 'editor=html&libraryContent=browse'),
(24, 1, 'wp_user-settings-time', '1524496650'),
(26, 1, 'session_tokens', 'a:1:{s:64:\"26db7d1cedb2c52f34a75b1cb484ba40e96b49b37292f3b3a3ad0ef90aaea967\";a:4:{s:10:\"expiration\";i:1524669275;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36\";s:5:\"login\";i:1524496475;}}'),
(27, 1, 'wp_media_library_mode', 'grid'),
(28, 1, 'meta-box-order_post', 'a:3:{s:4:\"side\";s:51:\"submitdiv,categorydiv,tagsdiv-post_tag,postimagediv\";s:6:\"normal\";s:83:\"postexcerpt,trackbacksdiv,postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(29, 1, 'screen_layout_post', '2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'lbz2018', '$P$B1POF4LwUx/oEBO6sBw6VczORnxudL1', 'lbz2018', 'desenvolvimento@lbrazil.com.br', '', '2018-04-10 15:01:57', '', 0, 'lbz2018');

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=314;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=264;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
