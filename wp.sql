-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Май 15 2018 г., 09:23
-- Версия сервера: 5.7.22-0ubuntu0.16.04.1
-- Версия PHP: 7.0.30-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `wp`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
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
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-02-28 15:36:25', '2018-02-28 12:36:25', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href="https://ru.gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0),
(7, 1, 'admin', 'samir.khan.w@gmail.com', '', '178.165.14.155', '2018-03-01 06:41:53', '2018-03-01 03:41:53', 'fdffddf', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', '', 0, 1),
(8, 1, 'admin', 'samir.khan.w@gmail.com', '', '178.165.14.155', '2018-03-01 06:41:58', '2018-03-01 03:41:58', 'dfdfdfdfff', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', '', 0, 1),
(9, 1, 'admin', 'samir.khan.w@gmail.com', '', '178.165.14.155', '2018-03-01 06:42:06', '2018-03-01 03:42:06', 'ffddfdfdff', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', '', 0, 1),
(10, 71, 'admin', 'samir.khan.w@gmail.com', '', '178.165.14.155', '2018-03-01 06:42:25', '2018-03-01 03:42:25', 'dfdfdfdfdf', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', '', 0, 1),
(11, 71, 'admin', 'samir.khan.w@gmail.com', '', '178.165.14.155', '2018-03-01 06:49:33', '2018-03-01 03:49:33', 'fdfsdf', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', '', 0, 1),
(12, 71, 'admin', 'samir.khan.w@gmail.com', '', '178.165.14.155', '2018-03-01 06:53:47', '2018-03-01 03:53:47', 'cffxdxd', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', '', 0, 1),
(13, 52, 'admin', 'samir.khan.w@gmail.com', '', '178.165.14.155', '2018-03-04 18:26:22', '2018-03-04 15:26:22', 'dsdssdsdsddsd', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_custom_options_plus`
--

CREATE TABLE `wp_custom_options_plus` (
  `id` int(5) NOT NULL,
  `label` varchar(100) NOT NULL,
  `name` varchar(80) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_custom_options_plus`
--

INSERT INTO `wp_custom_options_plus` (`id`, `label`, `name`, `value`) VALUES
(1, 'Phone number at the top', 'contact-phone-number', '000000000'),
(2, 'Email-address at the top', 'contact-email', 'email@somedomain.com');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
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
-- Структура таблицы `wp_mgmlp_folders`
--

CREATE TABLE `wp_mgmlp_folders` (
  `post_id` bigint(20) NOT NULL,
  `folder_id` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_mgmlp_folders`
--

INSERT INTO `wp_mgmlp_folders` (`post_id`, `folder_id`) VALUES
(37, 0),
(38, 37),
(39, 38),
(5, 39),
(6, 39),
(7, 39),
(15, 39),
(16, 39),
(17, 39),
(30, 39),
(31, 39),
(32, 39),
(33, 39),
(34, 39),
(35, 39),
(36, 39),
(40, 38),
(41, 37),
(49, 41),
(48, 41),
(47, 41),
(46, 41);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://wp.khand.ml', 'yes'),
(2, 'home', 'http://wp.khand.ml', 'yes'),
(3, 'blogname', 'TesTask', 'yes'),
(4, 'blogdescription', 'Testing skills', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'samir.khan.w@gmail.com', 'yes'),
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
(22, 'posts_per_page', '2', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:105:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:42:"cat/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:37:"cat/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:18:"cat/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:30:"cat/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:12:"cat/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:36:"amn_smtp/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"amn_smtp/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"amn_smtp/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"amn_smtp/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"amn_smtp/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"amn_smtp/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:25:"amn_smtp/([^/]+)/embed/?$";s:41:"index.php?amn_smtp=$matches[1]&embed=true";s:29:"amn_smtp/([^/]+)/trackback/?$";s:35:"index.php?amn_smtp=$matches[1]&tb=1";s:37:"amn_smtp/([^/]+)/page/?([0-9]{1,})/?$";s:48:"index.php?amn_smtp=$matches[1]&paged=$matches[2]";s:44:"amn_smtp/([^/]+)/comment-page-([0-9]{1,})/?$";s:48:"index.php?amn_smtp=$matches[1]&cpage=$matches[2]";s:33:"amn_smtp/([^/]+)(?:/([0-9]+))?/?$";s:47:"index.php?amn_smtp=$matches[1]&page=$matches[2]";s:25:"amn_smtp/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"amn_smtp/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"amn_smtp/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"amn_smtp/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"amn_smtp/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"amn_smtp/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=2&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:19:"akismet/akismet.php";i:2;s:36:"contact-form-7/wp-contact-form-7.php";i:4;s:29:"wp-mail-smtp/wp_mail_smtp.php";}', 'yes'),
(34, 'category_base', '/cat', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:54:"/var/www/wordpress/wp-content/themes/habitat/style.css";i:1;s:81:"/var/www/wordpress/wp-content/themes/habitat/template-parts/page/page-sidebar.php";i:2;s:81:"/var/www/wordpress/wp-content/themes/habitat/template-parts/page/page-content.php";i:3;s:58:"/var/www/wordpress/wp-content/themes/habitat/functions.php";i:4;s:54:"/var/www/wordpress/wp-content/themes/habitat/index.php";}', 'no'),
(40, 'template', 'habitat', 'yes'),
(41, 'stylesheet', 'habitat', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '/tag', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '0', 'yes'),
(59, 'thumbnail_size_h', '0', 'yes'),
(60, 'thumbnail_crop', '', 'yes'),
(61, 'medium_size_w', '0', 'yes'),
(62, 'medium_size_h', '0', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '0', 'yes'),
(65, 'large_size_h', '0', 'yes'),
(66, 'image_default_link_type', '', 'yes'),
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
(78, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '2', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'ru_RU', 'yes'),
(95, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:7:{s:19:"wp_inactive_widgets";a:1:{i:0;s:17:"categories_list-2";}s:12:"top-contacts";a:2:{i:0;s:15:"simple_string-3";i:1;s:15:"simple_string-2";}s:5:"icons";a:3:{i:0;s:13:"icon_widget-2";i:1;s:13:"icon_widget-3";i:2;s:13:"icon_widget-4";}s:9:"box_aside";a:2:{i:0;s:11:"box_aside-4";i:1;s:11:"box_aside-3";}s:7:"gallery";a:1:{i:0;s:15:"media_gallery-2";}s:6:"footer";a:3:{i:0;s:12:"box_footer-2";i:1;s:12:"box_footer-3";i:2;s:17:"categories_list-5";}s:13:"array_version";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:2:{i:2;a:6:{s:5:"title";s:8:"Gallery.";s:7:"columns";i:3;s:4:"size";s:9:"thumbnail";s:9:"link_type";s:4:"post";s:14:"orderby_random";b:0;s:3:"ids";a:4:{i:0;i:100;i:1;i:101;i:2;i:102;i:3;i:103;}}s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'cron', 'a:4:{i:1526387786;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1526387805;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1526387863;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:3:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1520064429;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:0:{}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}s:18:"nav_menu_locations";a:0:{}}', 'yes'),
(124, 'can_compress_scripts', '0', 'no'),
(139, 'recently_activated', 'a:3:{s:43:"custom-options-plus/custom-options-plus.php";i:1520374722;s:48:"media-library-plus/maxgalleria-media-library.php";i:1519858432;s:9:"hello.php";i:1519838285;}', 'yes'),
(153, 'current_theme', 'Habitat', 'yes'),
(154, 'theme_mods_habitat', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:3:"top";i:11;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1520063531;s:4:"data";a:1:{s:19:"wp_inactive_widgets";a:0:{}}}s:18:"custom_css_post_id";i:-1;}', 'yes'),
(155, 'theme_switched', '', 'yes'),
(156, 'theme_mods_twentyfifteen', 'a:3:{s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:0:{}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1519927069;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:0:{}}}}', 'yes'),
(157, '_transient_twentyfifteen_categories', '1', 'yes'),
(172, 'theme_mods_twentysixteen', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1519836443;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:4:{i:0;s:6:"text-2";i:1;s:6:"text-3";i:2;s:6:"text-4";i:3;s:6:"text-5";}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(173, '_transient_twentysixteen_categories', '1', 'yes'),
(178, 'new_admin_email', 'samir.khan.w@gmail.com', 'yes'),
(183, 'ftp_credentials', 'a:3:{s:8:"hostname";s:11:"wp.khand.ml";s:8:"username";s:4:"khan";s:15:"connection_type";s:3:"ftp";}', 'yes'),
(187, 'cop_version', '1.8.0', 'yes'),
(200, 'mgmlp_sort_order', '0', 'yes'),
(201, 'mgmlp_move_or_copy', 'on', 'yes'),
(202, 'maxgalleria_media_library_version', '4.1.4', 'yes'),
(203, 'mgmlp_upload_folder_name', 'uploads', 'yes'),
(204, 'mgmlp_upload_folder_id', '37', 'yes'),
(205, 'mgmlp_src_fix', '1', 'yes'),
(246, 'acf_version', '4.4.12', 'yes'),
(264, 'wpcf7', 'a:2:{s:7:"version";s:5:"5.0.1";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1519889462;s:7:"version";s:5:"5.0.1";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(274, 'widget_akismet_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(275, 'wordpress_api_key', 'ae9fc93794c6', 'yes'),
(276, 'akismet_strictness', '0', 'yes'),
(277, 'akismet_spam_count', '1', 'yes'),
(278, 'akismet_show_user_comments_approved', '0', 'yes'),
(280, 'category_2_thumbnail_for_categories', '95', 'no'),
(281, '_category_2_thumbnail_for_categories', 'field_5a980fe51d60d', 'no'),
(283, 'category_1_thumbnail', '95', 'no'),
(284, '_category_1_thumbnail', 'field_5a980fe51d60d', 'no'),
(286, 'category_4_thumbnail', '96', 'no'),
(287, '_category_4_thumbnail', 'field_5a980fe51d60d', 'no'),
(289, 'category_3_thumbnail', '97', 'no'),
(290, '_category_3_thumbnail', 'field_5a980fe51d60d', 'no'),
(291, 'category_children', 'a:0:{}', 'yes'),
(292, 'category_2_thumbnail', '98', 'no'),
(293, '_category_2_thumbnail', 'field_5a980fe51d60d', 'no'),
(310, 'widget_true_top_widget', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:14:"posts_per_page";s:1:"5";}s:12:"_multiwidget";i:1;}', 'yes'),
(366, 'widget_icon_widget', 'a:4:{i:2;a:3:{s:4:"icon";s:8:"envelope";s:5:"title";s:8:"Messages";s:10:"text_after";s:58:"How does person know what is the name for each of classes?";}i:3;a:3:{s:4:"icon";s:4:"star";s:5:"title";s:9:"Favorites";s:10:"text_after";s:44:"Great feeling when you just fixed something!";}i:4;a:3:{s:4:"icon";s:4:"film";s:5:"title";s:6:"Movies";s:10:"text_after";s:77:"Enqueued list of movies to watch you may always find in my blog. But not now.";}s:12:"_multiwidget";i:1;}', 'yes'),
(367, 'widget_boxaside', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(368, 'widget_box_aside', 'a:3:{i:3;a:4:{s:5:"title";s:8:"About us";s:4:"text";s:114:"Our company, or whatever this site is used for, greatly appreciates your choise! Contact us. We\'re good enough! :)";s:6:"filter";b:1;s:6:"visual";b:1;}i:4;a:4:{s:5:"title";s:12:"Contact info";s:4:"text";s:538:"Some tiny text to describe how to reach us.\r\n<ul class="list-unstyled">\r\n 	<li><i class="fa-phone color-primary"></i>+353-44-55-66</li>\r\n 	<li><i class="fa-envelope color-primary"></i>info@example.com</li>\r\n 	<li><i class="fa-home color-primary"></i>http://www.example.com</li>\r\n</ul>\r\n<ul class="list-unstyled">\r\n 	<li><strong class="color-primary">Monday-Friday: </strong>9am to 6pm</li>\r\n 	<li><strong class="color-primary">Saturday: </strong>10am to 3pm</li>\r\n 	<li><strong class="color-primary">Sunday: </strong>Closed</li>\r\n</ul>";s:6:"filter";b:1;s:6:"visual";b:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(369, 'widget_box_aside_the_page', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(370, 'widget_name', 'a:3:{i:3;a:4:{s:5:"title";s:19:"Contact Information";s:4:"text";s:406:"Some small text on account how to reach us.\r\n\r\nHere\'s our contacts\r\n<ul class="list-unstyled">\r\n 	<li><i class="fa-phone color-primary"></i>1-800-123-4567</li>\r\n 	<li><i class="fa-envelope color-primary"></i>info@joomla51.com</li>\r\n 	<li><i class="fa-home color-primary"></i>www.example.admin</li>\r\n 	<li><i class="fa-address color-primary"></i>Korolenko, 10\r\nKharkiv,\r\nUkraine\r\nAlways welcome.</li>\r\n</ul>";s:6:"filter";b:1;s:6:"visual";b:1;}i:4;a:4:{s:5:"title";s:8:"About us";s:4:"text";s:114:"Our company, or whatever this site is used for, greatly appreciates your choise! Contact us. We\'re good enough! :)";s:6:"filter";b:1;s:6:"visual";b:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(371, 'widget_box_footer', 'a:3:{i:2;a:4:{s:5:"title";s:8:"About us";s:4:"text";s:114:"Our company, or whatever this site is used for, greatly appreciates your choise! Contact us. We\'re good enough! :)";s:6:"filter";b:1;s:6:"visual";b:1;}i:3;a:4:{s:5:"title";s:15:"Contact Details";s:4:"text";s:365:"<ul class="list-unstyled">\r\n 	<li><i class="fa-phone color-primary"></i>+353-44-55-66</li>\r\n 	<li><i class="fa-envelope color-primary"></i>info@example.com</li>\r\n 	<li><i class="fa-home color-primary"></i>http://www.example.com</li>\r\n</ul>\r\n<ul class="list-unstyled">\r\n	<li>Korolenko, 10</li>\r\n	<li>Kharkiv,</li>\r\n	<li>Ukraine</li>\r\n	<li>Always welcome.</li>\r\n</ul>";s:6:"filter";b:1;s:6:"visual";b:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(372, 'widget_categories_list', 'a:3:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}i:5;a:4:{s:5:"title";s:10:"Categories";s:8:"quantity";s:1:"4";s:5:"order";s:1:"0";s:10:"hide_empty";s:3:"off";}s:12:"_multiwidget";i:1;}', 'yes'),
(383, 'widget_simple_string', 'a:3:{i:2;a:3:{s:5:"title";s:6:"Email:";s:7:"content";s:15:"email@gmail.com";s:5:"align";s:5:"right";}i:3;a:3:{s:5:"title";s:6:"Phone:";s:7:"content";s:10:"0630520573";s:5:"align";s:4:"left";}s:12:"_multiwidget";i:1;}', 'yes'),
(457, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(492, 'secret_key', '?r^KQswlExx/lSY|G/Ar)KGwHK=l/@+g-dB5+B0x`jisgomLs[.?#V+c&qI=s@QH', 'no'),
(495, 'wp_mail_smtp_version', '1.2.5', 'yes'),
(496, 'wp_mail_smtp', 'a:5:{s:4:"mail";a:4:{s:10:"from_email";s:22:"samir.khan.w@gmail.com";s:9:"from_name";s:7:"TesTask";s:6:"mailer";s:4:"smtp";s:11:"return_path";b:0;}s:4:"smtp";a:7:{s:7:"autotls";b:1;s:4:"host";s:14:"smtp.gmail.com";s:4:"port";i:587;s:10:"encryption";s:3:"tls";s:4:"user";s:22:"samir.khan.w@gmail.com";s:4:"pass";s:16:"ueejrajwmcllmwrg";s:4:"auth";b:1;}s:7:"mailgun";a:2:{s:7:"api_key";s:0:"";s:6:"domain";s:0:"";}s:8:"sendgrid";a:1:{s:7:"api_key";s:0:"";}s:5:"gmail";a:2:{s:9:"client_id";s:72:"310101600936-lsfl56n09oa3f8s5v27inho094g9becd.apps.googleusercontent.com";s:13:"client_secret";s:0:"";}}', 'no'),
(497, '_amn_smtp_last_checked', '1520467200', 'yes'),
(498, 'wp_mail_smtp_debug', 'a:0:{}', 'no'),
(609, '_site_transient_timeout_theme_roots', '1526366360', 'no'),
(610, '_site_transient_theme_roots', 'a:6:{s:6:"backup";s:7:"/themes";s:7:"backup2";s:7:"/themes";s:7:"habitat";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(612, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:3:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:65:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.5.zip";s:6:"locale";s:5:"ru_RU";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.5.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.5";s:7:"version";s:5:"4.9.5";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.5.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.5.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.5-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.5-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.9.5-partial-4.zip";s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.5";s:7:"version";s:5:"4.9.5";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:5:"4.9.4";}i:2;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:65:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.5.zip";s:6:"locale";s:5:"ru_RU";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.5.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.5";s:7:"version";s:5:"4.9.5";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}}s:12:"last_checked";i:1526364564;s:15:"version_checked";s:5:"4.9.4";s:12:"translations";a:1:{i:0;a:7:{s:4:"type";s:4:"core";s:4:"slug";s:7:"default";s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.9.4";s:7:"updated";s:19:"2018-03-22 15:56:45";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.4/ru_RU.zip";s:10:"autoupdate";b:1;}}}', 'no'),
(613, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1526364565;s:7:"checked";a:6:{s:6:"backup";s:5:"0.0.1";s:7:"backup2";s:5:"0.0.1";s:7:"habitat";s:5:"0.0.1";s:13:"twentyfifteen";s:3:"1.9";s:15:"twentyseventeen";s:3:"1.4";s:13:"twentysixteen";s:3:"1.4";}s:8:"response";a:1:{s:15:"twentyseventeen";a:4:{s:5:"theme";s:15:"twentyseventeen";s:11:"new_version";s:3:"1.5";s:3:"url";s:45:"https://wordpress.org/themes/twentyseventeen/";s:7:"package";s:61:"https://downloads.wordpress.org/theme/twentyseventeen.1.5.zip";}}s:12:"translations";a:0:{}}', 'no'),
(614, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1526364566;s:7:"checked";a:5:{s:30:"advanced-custom-fields/acf.php";s:6:"4.4.12";s:19:"akismet/akismet.php";s:5:"4.0.3";s:36:"contact-form-7/wp-contact-form-7.php";s:5:"5.0.1";s:9:"hello.php";s:3:"1.6";s:29:"wp-mail-smtp/wp_mail_smtp.php";s:5:"1.2.5";}s:8:"response";a:0:{}s:12:"translations";a:2:{i:0;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:14:"contact-form-7";s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"5.0.1";s:7:"updated";s:19:"2018-02-28 11:52:04";s:7:"package";s:81:"https://downloads.wordpress.org/translation/plugin/contact-form-7/5.0.1/ru_RU.zip";s:10:"autoupdate";b:1;}i:1;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:12:"wp-mail-smtp";s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"1.2.5";s:7:"updated";s:19:"2018-01-23 10:49:33";s:7:"package";s:79:"https://downloads.wordpress.org/translation/plugin/wp-mail-smtp/1.2.5/ru_RU.zip";s:10:"autoupdate";b:1;}}s:9:"no_update";a:5:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":9:{s:2:"id";s:36:"w.org/plugins/advanced-custom-fields";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:6:"4.4.12";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip";s:5:"icons";a:2:{s:2:"2x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746";s:2:"1x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746";}s:7:"banners";a:2:{s:2:"2x";s:78:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099";s:2:"1x";s:77:"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102";}s:11:"banners_rtl";a:0:{}}s:19:"akismet/akismet.php";O:8:"stdClass":9:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.3";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.3.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}}s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":9:{s:2:"id";s:28:"w.org/plugins/contact-form-7";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:5:"5.0.1";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/contact-form-7.5.0.1.zip";s:5:"icons";a:2:{s:2:"2x";s:66:"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007";s:2:"1x";s:66:"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007";}s:7:"banners";a:2:{s:2:"2x";s:69:"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901";s:2:"1x";s:68:"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:2:{s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";}s:7:"banners";a:1:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}s:29:"wp-mail-smtp/wp_mail_smtp.php";O:8:"stdClass":9:{s:2:"id";s:26:"w.org/plugins/wp-mail-smtp";s:4:"slug";s:12:"wp-mail-smtp";s:6:"plugin";s:29:"wp-mail-smtp/wp_mail_smtp.php";s:11:"new_version";s:5:"1.2.5";s:3:"url";s:43:"https://wordpress.org/plugins/wp-mail-smtp/";s:7:"package";s:55:"https://downloads.wordpress.org/plugin/wp-mail-smtp.zip";s:5:"icons";a:2:{s:2:"2x";s:65:"https://ps.w.org/wp-mail-smtp/assets/icon-256x256.png?rev=1755440";s:2:"1x";s:65:"https://ps.w.org/wp-mail-smtp/assets/icon-128x128.png?rev=1755440";}s:7:"banners";a:2:{s:2:"2x";s:68:"https://ps.w.org/wp-mail-smtp/assets/banner-1544x500.png?rev=1785565";s:2:"1x";s:67:"https://ps.w.org/wp-mail-smtp/assets/banner-772x250.png?rev=1785565";}s:11:"banners_rtl";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(56, 2, '_edit_lock', '1520540368:1'),
(57, 25, '_edit_last', '1'),
(58, 25, '_edit_lock', '1519839059:1'),
(59, 2, '_edit_last', '1'),
(64, 30, '_wp_attached_file', '2018/02/1.png'),
(65, 30, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1657;s:6:"height";i:832;s:4:"file";s:13:"2018/02/1.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:13:"1-300x151.png";s:5:"width";i:300;s:6:"height";i:151;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:13:"1-768x386.png";s:5:"width";i:768;s:6:"height";i:386;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:14:"1-1024x514.png";s:5:"width";i:1024;s:6:"height";i:514;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(66, 31, '_wp_attached_file', '2018/02/2.png'),
(67, 31, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1639;s:6:"height";i:773;s:4:"file";s:13:"2018/02/2.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:13:"2-300x141.png";s:5:"width";i:300;s:6:"height";i:141;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:13:"2-768x362.png";s:5:"width";i:768;s:6:"height";i:362;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:14:"2-1024x483.png";s:5:"width";i:1024;s:6:"height";i:483;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(68, 32, '_wp_attached_file', '2018/02/3.png'),
(69, 32, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1638;s:6:"height";i:895;s:4:"file";s:13:"2018/02/3.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"3-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:13:"3-300x164.png";s:5:"width";i:300;s:6:"height";i:164;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:13:"3-768x420.png";s:5:"width";i:768;s:6:"height";i:420;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:14:"3-1024x560.png";s:5:"width";i:1024;s:6:"height";i:560;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(70, 33, '_wp_attached_file', '2018/02/4.png'),
(71, 33, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1769;s:6:"height";i:608;s:4:"file";s:13:"2018/02/4.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"4-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:13:"4-300x103.png";s:5:"width";i:300;s:6:"height";i:103;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:13:"4-768x264.png";s:5:"width";i:768;s:6:"height";i:264;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:14:"4-1024x352.png";s:5:"width";i:1024;s:6:"height";i:352;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(72, 34, '_wp_attached_file', '2018/02/5.png'),
(73, 34, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1605;s:6:"height";i:734;s:4:"file";s:13:"2018/02/5.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"5-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:13:"5-300x137.png";s:5:"width";i:300;s:6:"height";i:137;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:13:"5-768x351.png";s:5:"width";i:768;s:6:"height";i:351;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:14:"5-1024x468.png";s:5:"width";i:1024;s:6:"height";i:468;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(74, 35, '_wp_attached_file', '2018/02/6.png'),
(75, 35, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1274;s:6:"height";i:825;s:4:"file";s:13:"2018/02/6.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"6-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:13:"6-300x194.png";s:5:"width";i:300;s:6:"height";i:194;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:13:"6-768x497.png";s:5:"width";i:768;s:6:"height";i:497;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:14:"6-1024x663.png";s:5:"width";i:1024;s:6:"height";i:663;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(76, 36, '_wp_attached_file', '2018/02/7.png'),
(77, 36, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1568;s:6:"height";i:827;s:4:"file";s:13:"2018/02/7.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"7-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:13:"7-300x158.png";s:5:"width";i:300;s:6:"height";i:158;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:13:"7-768x405.png";s:5:"width";i:768;s:6:"height";i:405;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:14:"7-1024x540.png";s:5:"width";i:1024;s:6:"height";i:540;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(78, 30, '_edit_lock', '1519843582:1'),
(79, 1, '_edit_lock', '1519868144:1'),
(80, 37, '_wp_attached_file', ''),
(81, 38, '_wp_attached_file', '2018'),
(82, 39, '_wp_attached_file', '2018/02'),
(83, 40, '_wp_attached_file', '2018/03'),
(84, 41, '_wp_attached_file', 'slider'),
(101, 50, '_edit_last', '1'),
(102, 50, '_edit_lock', '1519868504:1'),
(103, 52, '_edit_last', '1'),
(104, 52, '_edit_lock', '1519865934:1'),
(107, 54, '_edit_last', '1'),
(108, 54, '_edit_lock', '1519865920:1'),
(113, 57, '_edit_last', '1'),
(114, 57, '_edit_lock', '1519865904:1'),
(117, 59, '_wp_attached_file', 'meeh.png'),
(118, 59, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1709;s:6:"height";i:940;s:4:"file";s:8:"meeh.png";s:5:"sizes";a:1:{s:12:"medium_large";a:4:{s:4:"file";s:16:"meeh-768x422.png";s:5:"width";i:768;s:6:"height";i:422;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(122, 65, '_edit_last', '1'),
(123, 65, 'field_5a974f954beb9', 'a:11:{s:3:"key";s:19:"field_5a974f954beb9";s:5:"label";s:5:"Image";s:4:"name";s:5:"image";s:4:"type";s:5:"image";s:12:"instructions";s:41:"Add an image as a thumbnail for your post";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(126, 65, 'position', 'acf_after_title'),
(127, 65, 'layout', 'default'),
(128, 65, 'hide_on_screen', ''),
(129, 65, '_edit_lock', '1519865885:1'),
(131, 66, 'image', '59'),
(132, 66, '_image', 'field_5a974f954beb9'),
(133, 66, '_', 'field_5a974fbe4beba'),
(134, 50, 'image', '59'),
(135, 50, '_image', 'field_5a974f954beb9'),
(136, 50, '_', 'field_5a974fbe4beba'),
(137, 65, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"post";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(139, 67, 'image', '36'),
(140, 67, '_image', 'field_5a974f954beb9'),
(141, 57, 'image', '36'),
(142, 57, '_image', 'field_5a974f954beb9'),
(144, 68, 'image', '35'),
(145, 68, '_image', 'field_5a974f954beb9'),
(146, 54, 'image', '35'),
(147, 54, '_image', 'field_5a974f954beb9'),
(149, 69, 'image', '33'),
(150, 69, '_image', 'field_5a974f954beb9'),
(151, 52, 'image', '33'),
(152, 52, '_image', 'field_5a974f954beb9'),
(153, 1, '_edit_last', '1'),
(155, 70, 'image', ''),
(156, 70, '_image', 'field_5a974f954beb9'),
(157, 1, 'image', ''),
(158, 1, '_image', 'field_5a974f954beb9'),
(161, 71, '_edit_last', '1'),
(162, 71, '_edit_lock', '1519914927:1'),
(164, 72, 'image', '34'),
(165, 72, '_image', 'field_5a974f954beb9'),
(166, 71, 'image', '34'),
(167, 71, '_image', 'field_5a974f954beb9'),
(169, 73, '_form', '<label>Name</label>\n    <div class="row margin-bottom-20">\n        <div class="col-md-6 col-md-offset-0"> [text your-name class:form-control akismet:author] </div>\n    </div>\n    <label>Email <span class="color-red">*</span> </label><div class="row margin-bottom-20"><div class="col-md-6 col-md-offset-0"> [email* your-email class:form-control akismet:author] </div></div>\n    <label>Message</label> <div class="row margin-bottom-20"> <div class="col-md-8 col-md-offset-0"> [textarea your-message class:form-control x8] </div></div>\n    <p> [submit class:btn class:btn-primary "Send Message"] </p>'),
(170, 73, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:29:"TesTask "New contact request"";s:6:"sender";s:35:"[your-name] <wordpress@wp.khand.ml>";s:9:"recipient";s:22:"samir.khan.w@gmail.com";s:4:"body";s:164:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on TesTask (http://wp.khand.ml)";s:18:"additional_headers";s:0:"";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(171, 73, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:24:"TesTask "[your-subject]"";s:6:"sender";s:31:"TesTask <wordpress@wp.khand.ml>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:106:"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on TesTask (http://wp.khand.ml)";s:18:"additional_headers";s:32:"Reply-To: samir.khan.w@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(172, 73, '_messages', 'a:23:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";s:12:"invalid_date";s:29:"The date format is incorrect.";s:14:"date_too_early";s:44:"The date is before the earliest one allowed.";s:13:"date_too_late";s:41:"The date is after the latest one allowed.";s:13:"upload_failed";s:46:"There was an unknown error uploading the file.";s:24:"upload_file_type_invalid";s:49:"You are not allowed to upload files of this type.";s:21:"upload_file_too_large";s:20:"The file is too big.";s:23:"upload_failed_php_error";s:38:"There was an error uploading the file.";s:14:"invalid_number";s:29:"The number format is invalid.";s:16:"number_too_small";s:47:"The number is smaller than the minimum allowed.";s:16:"number_too_large";s:46:"The number is larger than the maximum allowed.";s:23:"quiz_answer_not_correct";s:36:"The answer to the quiz is incorrect.";s:17:"captcha_not_match";s:31:"Your entered code is incorrect.";s:13:"invalid_email";s:38:"The e-mail address entered is invalid.";s:11:"invalid_url";s:19:"The URL is invalid.";s:11:"invalid_tel";s:32:"The telephone number is invalid.";}'),
(173, 73, '_additional_settings', ''),
(174, 73, '_locale', 'ru_RU'),
(175, 74, '_edit_last', '1'),
(176, 74, '_edit_lock', '1520366865:1'),
(185, 93, '_edit_last', '1'),
(186, 93, 'field_5a980fe51d60d', 'a:11:{s:3:"key";s:19:"field_5a980fe51d60d";s:5:"label";s:24:"Thumbnail for categories";s:4:"name";s:9:"thumbnail";s:4:"type";s:5:"image";s:12:"instructions";s:31:"Add an thumbnail for category. ";s:8:"required";s:1:"1";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(188, 93, 'position', 'acf_after_title'),
(189, 93, 'layout', 'no_box'),
(190, 93, 'hide_on_screen', ''),
(191, 93, '_edit_lock', '1519916079:1'),
(192, 95, '_wp_attached_file', 'image1.jpg'),
(193, 95, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:326;s:6:"height";i:210;s:4:"file";s:10:"image1.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(196, 96, '_wp_attached_file', 'image2.jpg'),
(197, 96, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:326;s:6:"height";i:210;s:4:"file";s:10:"image2.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(198, 97, '_wp_attached_file', 'image3.jpg'),
(199, 97, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:326;s:6:"height";i:210;s:4:"file";s:10:"image3.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(200, 98, '_wp_attached_file', 'image4.jpg'),
(201, 98, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:326;s:6:"height";i:210;s:4:"file";s:10:"image4.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(202, 93, 'rule', 'a:5:{s:5:"param";s:11:"ef_taxonomy";s:8:"operator";s:2:"==";s:5:"value";s:8:"category";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(205, 100, '_wp_attached_file', 'slide1.jpg'),
(206, 100, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1080;s:6:"height";i:422;s:4:"file";s:10:"slide1.jpg";s:5:"sizes";a:1:{s:12:"medium_large";a:4:{s:4:"file";s:18:"slide1-768x300.jpg";s:5:"width";i:768;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(207, 101, '_wp_attached_file', 'slide2.jpg'),
(208, 101, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1080;s:6:"height";i:422;s:4:"file";s:10:"slide2.jpg";s:5:"sizes";a:1:{s:12:"medium_large";a:4:{s:4:"file";s:18:"slide2-768x300.jpg";s:5:"width";i:768;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(209, 102, '_wp_attached_file', 'slide3.jpg'),
(210, 102, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1080;s:6:"height";i:422;s:4:"file";s:10:"slide3.jpg";s:5:"sizes";a:1:{s:12:"medium_large";a:4:{s:4:"file";s:18:"slide3-768x300.jpg";s:5:"width";i:768;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(211, 103, '_wp_attached_file', 'slide4.jpg'),
(212, 103, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1080;s:6:"height";i:422;s:4:"file";s:10:"slide4.jpg";s:5:"sizes";a:1:{s:12:"medium_large";a:4:{s:4:"file";s:18:"slide4-768x300.jpg";s:5:"width";i:768;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(228, 105, '_menu_item_type', 'post_type'),
(229, 105, '_menu_item_menu_item_parent', '0'),
(230, 105, '_menu_item_object_id', '74'),
(231, 105, '_menu_item_object', 'page'),
(232, 105, '_menu_item_target', ''),
(233, 105, '_menu_item_classes', 'a:1:{i:0;s:10:"fa-comment";}'),
(234, 105, '_menu_item_xfn', ''),
(235, 105, '_menu_item_url', ''),
(237, 106, '_menu_item_type', 'post_type'),
(238, 106, '_menu_item_menu_item_parent', '0'),
(239, 106, '_menu_item_object_id', '2'),
(240, 106, '_menu_item_object', 'page'),
(241, 106, '_menu_item_target', ''),
(242, 106, '_menu_item_classes', 'a:1:{i:0;s:7:"fa-home";}'),
(243, 106, '_menu_item_xfn', ''),
(244, 106, '_menu_item_url', ''),
(273, 110, '_menu_item_type', 'custom'),
(274, 110, '_menu_item_menu_item_parent', '0'),
(275, 110, '_menu_item_object_id', '110'),
(276, 110, '_menu_item_object', 'custom'),
(277, 110, '_menu_item_target', ''),
(278, 110, '_menu_item_classes', 'a:1:{i:0;s:7:"fa-font";}'),
(279, 110, '_menu_item_xfn', ''),
(280, 110, '_menu_item_url', '#'),
(282, 111, '_menu_item_type', 'taxonomy'),
(283, 111, '_menu_item_menu_item_parent', '110'),
(284, 111, '_menu_item_object_id', '2'),
(285, 111, '_menu_item_object', 'category'),
(286, 111, '_menu_item_target', ''),
(287, 111, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(288, 111, '_menu_item_xfn', ''),
(289, 111, '_menu_item_url', ''),
(291, 112, '_menu_item_type', 'taxonomy'),
(292, 112, '_menu_item_menu_item_parent', '110'),
(293, 112, '_menu_item_object_id', '3'),
(294, 112, '_menu_item_object', 'category'),
(295, 112, '_menu_item_target', ''),
(296, 112, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(297, 112, '_menu_item_xfn', ''),
(298, 112, '_menu_item_url', ''),
(300, 113, '_menu_item_type', 'taxonomy'),
(301, 113, '_menu_item_menu_item_parent', '110'),
(302, 113, '_menu_item_object_id', '4'),
(303, 113, '_menu_item_object', 'category'),
(304, 113, '_menu_item_target', ''),
(305, 113, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(306, 113, '_menu_item_xfn', ''),
(307, 113, '_menu_item_url', ''),
(309, 114, '_menu_item_type', 'taxonomy'),
(310, 114, '_menu_item_menu_item_parent', '110'),
(311, 114, '_menu_item_object_id', '1'),
(312, 114, '_menu_item_object', 'category'),
(313, 114, '_menu_item_target', ''),
(314, 114, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(315, 114, '_menu_item_xfn', ''),
(316, 114, '_menu_item_url', ''),
(327, 116, '_edit_last', '1'),
(328, 116, '_edit_lock', '1520532179:1'),
(329, 117, '_wp_attached_file', 'vlcsnap-2014-01-26-13h25m44s52.jpg'),
(330, 117, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:720;s:4:"file";s:34:"vlcsnap-2014-01-26-13h25m44s52.jpg";s:5:"sizes";a:1:{s:12:"medium_large";a:4:{s:4:"file";s:42:"vlcsnap-2014-01-26-13h25m44s52-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(332, 118, 'image', '117'),
(333, 118, '_image', 'field_5a974f954beb9'),
(334, 116, 'image', '117'),
(335, 116, '_image', 'field_5a974f954beb9'),
(338, 119, 'image', '117'),
(339, 119, '_image', 'field_5a974f954beb9'),
(341, 120, 'image', '117'),
(342, 120, '_image', 'field_5a974f954beb9'),
(344, 121, 'image', '117'),
(345, 121, '_image', 'field_5a974f954beb9'),
(347, 122, 'image', '117'),
(348, 122, '_image', 'field_5a974f954beb9'),
(350, 123, 'image', '117'),
(351, 123, '_image', 'field_5a974f954beb9'),
(353, 125, 'image', '117'),
(354, 125, '_image', 'field_5a974f954beb9'),
(356, 126, 'image', '117'),
(357, 126, '_image', 'field_5a974f954beb9');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
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
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-02-28 15:36:25', '2018-02-28 12:36:25', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80', '', '', '2018-03-01 04:35:09', '2018-03-01 01:35:09', '', 0, 'http://wp.khand.ml/?p=1', 0, 'post', '', 4),
(2, 1, '2018-02-28 15:36:25', '2018-02-28 12:36:25', '<ol>\r\n 	<li>Номер и почта в Заголовке. Виджеты.</li>\r\n 	<li>Меню. На основе класса WP_Walker_Nav. Лишние пункты удалены.</li>\r\n 	<li>Баннер. На основе встроенного виджета «Галерея».</li>\r\n 	<li>Виджеты на главной странице (Иконка + Текст). Новый виджет. Для того чтобы поставить свою иконку, нужно вставить название CSS-класса иконки, а точнее, его смысловую часть. То есть, класс, который называется fa-film, нужно обозначить просто как film.</li>\r\n 	<li>Контент главной страницы. По идее, главная страница может занимать все пространство под виджетами. Можно добавить произвольные поля, и выводить их сбоку, как пункты. Но я решил оставить как есть.</li>\r\n 	<li>Категории внизу на главной странице. Использовал плагин Advanced Custom Fields для добавления изображения к категориям.</li>\r\n 	<li>Подвал. Контакты. Перечень категорий. (На всякий случай и Disclaimer). Это виджеты «Произвольный текст». Перечень категорий - свой виджет, который позволяет указать список категорий, ограничить количество выводимых категорий и упорядочить(изначально только по имени или количеству постов в категориях). Лишние ссылки удалены.</li>\r\n 	<li>Все посты архива выводятся списком. Последние вначале.</li>\r\n 	<li>Последние новости (Sidebar в архиве и просмотре отдельного поста). Возможно, следовало сделать это тоже виджетом. Решил оставить как есть.</li>\r\n 	<li>Страница отдельной новости. Отдельная новость отображается.</li>\r\n 	<li>Добавление комментария работает. Аватарка выводится стандартная (с Gravatar).</li>\r\n 	<li>Отправка контактной формы работает. Моя проблема, которую я считал проблемой Akismet, который якобы считал любые данные спамом, на самом деле оказалась просто ошибкой отправки формы, потому что у меня не настроен почтовый сервер. Использовал у себя плагин WP Mail SMTP, где настроил свою почту.</li>\r\n 	<li>На странице Связи, как и на всех страницах, отображаются виджеты Box Aside, это стандартный виджет «Произвольный текст» с другим внешним видом. Точно также как и в подвале.</li>\r\n</ol>', 'Что изменилось', '', 'publish', 'closed', 'closed', '', 'sample-page', '', '', '2018-03-08 23:21:22', '2018-03-08 20:21:22', '', 0, 'http://wp.khand.ml/?page_id=2', 1, 'page', '', 0),
(25, 1, '2018-02-28 20:30:17', '2018-02-28 17:30:17', 'Вторая страничка', 'Второй Пример', '', 'publish', 'closed', 'closed', '', '%d0%b2%d1%82%d0%be%d1%80%d0%be%d0%b9-%d0%bf%d1%80%d0%b8%d0%bc%d0%b5%d1%80', '', '', '2018-02-28 20:30:59', '2018-02-28 17:30:59', '', 0, 'http://wp.khand.ml/?page_id=25', 2, 'page', '', 0),
(26, 1, '2018-02-28 20:30:17', '2018-02-28 17:30:17', 'Вторая страничка', 'Второй Пример', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-02-28 20:30:17', '2018-02-28 17:30:17', '', 25, 'http://wp.khand.ml/?p=26', 0, 'revision', '', 0),
(27, 1, '2018-02-28 20:30:52', '2018-02-28 17:30:52', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href="http://wp.khand.ml/wp-admin/">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-02-28 20:30:52', '2018-02-28 17:30:52', '', 2, 'http://wp.khand.ml/?p=27', 0, 'revision', '', 0),
(30, 1, '2018-02-28 21:37:47', '2018-02-28 18:37:47', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2018-02-28 21:37:47', '2018-02-28 18:37:47', '', 0, 'http://wp.khand.ml/wp-content/uploads/2018/02/1.png', 0, 'attachment', 'image/png', 0),
(31, 1, '2018-02-28 21:37:50', '2018-02-28 18:37:50', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2018-02-28 21:37:50', '2018-02-28 18:37:50', '', 0, 'http://wp.khand.ml/wp-content/uploads/2018/02/2.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2018-02-28 21:37:52', '2018-02-28 18:37:52', '', '3', '', 'inherit', 'open', 'closed', '', '3', '', '', '2018-02-28 21:37:52', '2018-02-28 18:37:52', '', 0, 'http://wp.khand.ml/wp-content/uploads/2018/02/3.png', 0, 'attachment', 'image/png', 0),
(33, 1, '2018-02-28 21:37:54', '2018-02-28 18:37:54', '', '4', '', 'inherit', 'open', 'closed', '', '4', '', '', '2018-02-28 21:37:54', '2018-02-28 18:37:54', '', 0, 'http://wp.khand.ml/wp-content/uploads/2018/02/4.png', 0, 'attachment', 'image/png', 0),
(34, 1, '2018-02-28 21:37:55', '2018-02-28 18:37:55', '', '5', '', 'inherit', 'open', 'closed', '', '5', '', '', '2018-02-28 21:37:55', '2018-02-28 18:37:55', '', 0, 'http://wp.khand.ml/wp-content/uploads/2018/02/5.png', 0, 'attachment', 'image/png', 0),
(35, 1, '2018-02-28 21:37:57', '2018-02-28 18:37:57', '', '6', '', 'inherit', 'open', 'closed', '', '6', '', '', '2018-02-28 21:37:57', '2018-02-28 18:37:57', '', 0, 'http://wp.khand.ml/wp-content/uploads/2018/02/6.png', 0, 'attachment', 'image/png', 0),
(36, 1, '2018-02-28 21:37:59', '2018-02-28 18:37:59', '', '7', '', 'inherit', 'open', 'closed', '', '7', '', '', '2018-02-28 21:37:59', '2018-02-28 18:37:59', '', 0, 'http://wp.khand.ml/wp-content/uploads/2018/02/7.png', 0, 'attachment', 'image/png', 0),
(37, 1, '2018-03-01 01:43:35', '2018-03-01 01:43:35', '', 'uploads', '', 'publish', 'closed', 'closed', '', 'uploads', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 'http://wp.khand.ml/wp-content/uploads', 0, 'mgmlp_media_folder', '', 0),
(38, 1, '2018-03-01 01:43:36', '2018-03-01 01:43:36', '', '2018', '', 'publish', 'closed', 'closed', '', '2018', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 'http://wp.khand.ml/wp-content/uploads/2018', 0, 'mgmlp_media_folder', '', 0),
(39, 1, '2018-03-01 01:43:36', '2018-03-01 01:43:36', '', '02', '', 'publish', 'closed', 'closed', '', '02', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 'http://wp.khand.ml/wp-content/uploads/2018/02', 0, 'mgmlp_media_folder', '', 0),
(40, 1, '2018-03-01 01:43:36', '2018-03-01 01:43:36', '', '03', '', 'publish', 'closed', 'closed', '', '03', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 'http://wp.khand.ml/wp-content/uploads/2018/03', 0, 'mgmlp_media_folder', '', 0),
(41, 1, '2018-03-01 01:44:02', '2018-03-01 01:44:02', '', 'slider', '', 'publish', 'closed', 'closed', '', 'slider', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 'http://wp.khand.ml/wp-content/uploads/slider', 0, 'mgmlp_media_folder', '', 0),
(50, 1, '2018-03-01 02:54:58', '2018-02-28 23:54:58', 'Lorem ipsum dolor amet blah blah blah', 'Post for category 1', '', 'publish', 'open', 'open', '', 'post-for-category-1', '', '', '2018-03-01 04:41:22', '2018-03-01 01:41:22', '', 0, 'http://wp.khand.ml/?p=50', 0, 'post', '', 0),
(51, 1, '2018-03-01 02:21:09', '2018-02-28 23:21:09', 'Lorem ipsum dolor amet blah blah blah', 'Post for category 1', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2018-03-01 02:21:09', '2018-02-28 23:21:09', '', 50, 'http://wp.khand.ml/?p=51', 0, 'revision', '', 0),
(52, 1, '2018-03-01 02:21:41', '2018-02-28 23:21:41', 'Text 1', 'One more post for category 1', '', 'publish', 'open', 'open', '', 'one-more-post-for-category-1', '', '', '2018-03-01 04:01:15', '2018-03-01 01:01:15', '', 0, 'http://wp.khand.ml/?p=52', 0, 'post', '', 1),
(53, 1, '2018-03-01 02:21:41', '2018-02-28 23:21:41', 'Text 1', 'One more post for category 1', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2018-03-01 02:21:41', '2018-02-28 23:21:41', '', 52, 'http://wp.khand.ml/?p=53', 0, 'revision', '', 0),
(54, 1, '2018-03-01 02:22:09', '2018-02-28 23:22:09', 'Hello, world!', 'Post for category2', '', 'publish', 'open', 'open', '', 'post-for-category2', '', '', '2018-03-01 04:00:59', '2018-03-01 01:00:59', '', 0, 'http://wp.khand.ml/?p=54', 0, 'post', '', 0),
(55, 1, '2018-03-01 02:22:09', '2018-02-28 23:22:09', 'Hello, world!', 'Post for category2', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2018-03-01 02:22:09', '2018-02-28 23:22:09', '', 54, 'http://wp.khand.ml/?p=55', 0, 'revision', '', 0),
(57, 1, '2018-03-01 02:52:25', '2018-02-28 23:52:25', 'Category 1', 'And again cat1', '', 'publish', 'open', 'open', '', 'and-again-cat1', '', '', '2018-03-01 04:00:46', '2018-03-01 01:00:46', '', 0, 'http://wp.khand.ml/?p=57', 0, 'post', '', 0),
(58, 1, '2018-03-01 02:52:25', '2018-02-28 23:52:25', 'Category 1', 'And again cat1', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2018-03-01 02:52:25', '2018-02-28 23:52:25', '', 57, 'http://wp.khand.ml/?p=58', 0, 'revision', '', 0),
(59, 1, '2018-03-01 03:48:44', '2018-03-01 00:48:44', '', 'meeh', '', 'inherit', 'open', 'closed', '', 'meeh', '', '', '2018-03-01 03:48:44', '2018-03-01 00:48:44', '', 50, 'http://wp.khand.ml/wp-content/uploads/meeh.png', 0, 'attachment', 'image/png', 0),
(60, 1, '2018-03-01 03:49:00', '2018-03-01 00:49:00', '<img class="alignnone size-full wp-image-59" src="http://wp.khand.ml/wp-content/uploads/meeh.png" alt="" width="1709" height="940" />Lorem ipsum dolor amet blah blah blah', 'Post for category 1', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2018-03-01 03:49:00', '2018-03-01 00:49:00', '', 50, 'http://wp.khand.ml/50-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2018-03-01 03:49:22', '2018-03-01 00:49:22', '<img class="size-full wp-image-59 alignleft" src="http://wp.khand.ml/wp-content/uploads/meeh.png" alt="" width="1709" height="940" />Lorem ipsum dolor amet blah blah blah', 'Post for category 1', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2018-03-01 03:49:22', '2018-03-01 00:49:22', '', 50, 'http://wp.khand.ml/50-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2018-03-01 03:49:37', '2018-03-01 00:49:37', 'Lorem ipsum dolor amet blah blah blah', 'Post for category 1', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2018-03-01 03:49:37', '2018-03-01 00:49:37', '', 50, 'http://wp.khand.ml/50-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2018-03-01 03:57:28', '2018-03-01 00:57:28', '', 'Image for posts', '', 'publish', 'closed', 'closed', '', 'acf_image-for-posts', '', '', '2018-03-01 03:59:58', '2018-03-01 00:59:58', '', 0, 'http://wp.khand.ml/?post_type=acf&#038;p=65', 0, 'acf', '', 0),
(66, 1, '2018-03-01 03:57:51', '2018-03-01 00:57:51', 'Lorem ipsum dolor amet blah blah blah', 'Post for category 1', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2018-03-01 03:57:51', '2018-03-01 00:57:51', '', 50, 'http://wp.khand.ml/50-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2018-03-01 04:00:46', '2018-03-01 01:00:46', 'Category 1', 'And again cat1', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2018-03-01 04:00:46', '2018-03-01 01:00:46', '', 57, 'http://wp.khand.ml/57-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2018-03-01 04:00:59', '2018-03-01 01:00:59', 'Hello, world!', 'Post for category2', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2018-03-01 04:00:59', '2018-03-01 01:00:59', '', 54, 'http://wp.khand.ml/54-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2018-03-01 04:01:15', '2018-03-01 01:01:15', 'Text 1', 'One more post for category 1', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2018-03-01 04:01:15', '2018-03-01 01:01:15', '', 52, 'http://wp.khand.ml/52-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2018-03-01 04:35:09', '2018-03-01 01:35:09', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-03-01 04:35:09', '2018-03-01 01:35:09', '', 1, 'http://wp.khand.ml/1-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2018-03-01 04:44:32', '2018-03-01 01:44:32', '', 'New post to category 1', '', 'publish', 'open', 'open', '', 'new-post-to-category-1', '', '', '2018-03-01 04:46:29', '2018-03-01 01:46:29', '', 0, 'http://wp.khand.ml/?p=71', 0, 'post', '', 3),
(72, 1, '2018-03-01 04:44:32', '2018-03-01 01:44:32', '', 'New post to category 1', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2018-03-01 04:44:32', '2018-03-01 01:44:32', '', 71, 'http://wp.khand.ml/71-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2018-03-01 07:31:02', '2018-03-01 04:31:02', '<label>Name</label>\r\n    <div class="row margin-bottom-20">\r\n        <div class="col-md-6 col-md-offset-0"> [text your-name class:form-control akismet:author] </div>\r\n    </div>\r\n    <label>Email <span class="color-red">*</span> </label><div class="row margin-bottom-20"><div class="col-md-6 col-md-offset-0"> [email* your-email class:form-control akismet:author] </div></div>\r\n    <label>Message</label> <div class="row margin-bottom-20"> <div class="col-md-8 col-md-offset-0"> [textarea your-message class:form-control x8] </div></div>\r\n    <p> [submit class:btn class:btn-primary "Send Message"] </p>\n1\nTesTask "New contact request"\n[your-name] <wordpress@wp.khand.ml>\nsamir.khan.w@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on TesTask (http://wp.khand.ml)\n\n\n\n\n\nTesTask "[your-subject]"\nTesTask <wordpress@wp.khand.ml>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on TesTask (http://wp.khand.ml)\nReply-To: samir.khan.w@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact form 7', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2018-03-06 23:23:11', '2018-03-06 20:23:11', '', 0, 'http://wp.khand.ml/?post_type=wpcf7_contact_form&#038;p=73', 0, 'wpcf7_contact_form', '', 0),
(74, 1, '2018-03-01 15:04:07', '2018-03-01 12:04:07', 'Lorem ipsum\r\n\r\n[contact-form-7 id="73" title="Contact form 1"]', 'Contact form', '', 'publish', 'closed', 'closed', '', 'contact-form', '', '', '2018-03-01 16:03:04', '2018-03-01 13:03:04', '', 0, 'http://wp.khand.ml/?page_id=74', 0, 'page', '', 0),
(75, 1, '2018-03-01 15:04:07', '2018-03-01 12:04:07', 'Lorem ipsum\r\n\r\n&nbsp;\r\n\r\n[contact-form-7 id="73" title="Contact form 1"]', 'Contact form', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2018-03-01 15:04:07', '2018-03-01 12:04:07', '', 74, 'http://wp.khand.ml/74-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2018-03-01 16:03:04', '2018-03-01 13:03:04', 'Lorem ipsum\r\n\r\n[contact-form-7 id="73" title="Contact form 1"]', 'Contact form', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2018-03-01 16:03:04', '2018-03-01 13:03:04', '', 74, 'http://wp.khand.ml/74-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2018-03-01 17:37:42', '2018-03-01 14:37:42', '', 'Categories', '', 'publish', 'closed', 'closed', '', 'acf_categories', '', '', '2018-03-01 17:48:17', '2018-03-01 14:48:17', '', 0, 'http://wp.khand.ml/?post_type=acf&#038;p=93', 0, 'acf', '', 0),
(95, 1, '2018-03-01 17:38:57', '2018-03-01 14:38:57', '', 'image1', '', 'inherit', 'open', 'closed', '', 'image1', '', '', '2018-03-01 17:38:57', '2018-03-01 14:38:57', '', 0, 'http://wp.khand.ml/wp-content/uploads/image1.jpg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2018-03-01 17:46:48', '2018-03-01 14:46:48', '', 'image2', '', 'inherit', 'open', 'closed', '', 'image2', '', '', '2018-03-01 17:46:48', '2018-03-01 14:46:48', '', 0, 'http://wp.khand.ml/wp-content/uploads/image2.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2018-03-01 17:47:04', '2018-03-01 14:47:04', '', 'image3', '', 'inherit', 'open', 'closed', '', 'image3', '', '', '2018-03-01 17:47:04', '2018-03-01 14:47:04', '', 0, 'http://wp.khand.ml/wp-content/uploads/image3.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2018-03-01 17:47:19', '2018-03-01 14:47:19', '', 'image4', '', 'inherit', 'open', 'closed', '', 'image4', '', '', '2018-03-01 17:47:19', '2018-03-01 14:47:19', '', 0, 'http://wp.khand.ml/wp-content/uploads/image4.jpg', 0, 'attachment', 'image/jpeg', 0),
(100, 1, '2018-03-03 13:31:31', '2018-03-03 10:31:31', '', 'slide1', '', 'inherit', 'open', 'closed', '', 'slide1', '', '', '2018-03-03 13:31:31', '2018-03-03 10:31:31', '', 0, 'http://wp.khand.ml/wp-content/uploads/slide1.jpg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2018-03-03 13:31:32', '2018-03-03 10:31:32', '', 'slide2', '', 'inherit', 'open', 'closed', '', 'slide2', '', '', '2018-03-03 13:31:32', '2018-03-03 10:31:32', '', 0, 'http://wp.khand.ml/wp-content/uploads/slide2.jpg', 0, 'attachment', 'image/jpeg', 0),
(102, 1, '2018-03-03 13:31:33', '2018-03-03 10:31:33', '', 'slide3', '', 'inherit', 'open', 'closed', '', 'slide3', '', '', '2018-03-03 13:31:33', '2018-03-03 10:31:33', '', 0, 'http://wp.khand.ml/wp-content/uploads/slide3.jpg', 0, 'attachment', 'image/jpeg', 0),
(103, 1, '2018-03-03 13:31:33', '2018-03-03 10:31:33', '', 'slide4', '', 'inherit', 'open', 'closed', '', 'slide4', '', '', '2018-03-03 13:31:33', '2018-03-03 10:31:33', '', 0, 'http://wp.khand.ml/wp-content/uploads/slide4.jpg', 0, 'attachment', 'image/jpeg', 0),
(105, 1, '2018-03-06 12:08:32', '2018-03-06 09:08:32', '', 'Contact', '', 'publish', 'closed', 'closed', '', '105', '', '', '2018-03-06 19:56:02', '2018-03-06 16:56:02', '', 0, 'http://wp.khand.ml/?p=105', 7, 'nav_menu_item', '', 0),
(106, 1, '2018-03-06 12:28:49', '2018-03-06 09:28:49', '', 'Home', '', 'publish', 'closed', 'closed', '', '106', '', '', '2018-03-06 19:56:01', '2018-03-06 16:56:01', '', 0, 'http://wp.khand.ml/?p=106', 1, 'nav_menu_item', '', 0),
(110, 1, '2018-03-06 13:16:32', '2018-03-06 10:16:32', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2018-03-06 19:56:01', '2018-03-06 16:56:01', '', 0, 'http://wp.khand.ml/?p=110', 2, 'nav_menu_item', '', 0),
(111, 1, '2018-03-06 13:16:32', '2018-03-06 10:16:32', 'This is the first category', '', '', 'publish', 'closed', 'closed', '', '111', '', '', '2018-03-06 19:56:01', '2018-03-06 16:56:01', '', 0, 'http://wp.khand.ml/?p=111', 3, 'nav_menu_item', '', 0),
(112, 1, '2018-03-06 13:16:32', '2018-03-06 10:16:32', 'This is the second category', '', '', 'publish', 'closed', 'closed', '', '112', '', '', '2018-03-06 19:56:02', '2018-03-06 16:56:02', '', 0, 'http://wp.khand.ml/?p=112', 4, 'nav_menu_item', '', 0),
(113, 1, '2018-03-06 13:16:33', '2018-03-06 10:16:33', 'This is the third category', '', '', 'publish', 'closed', 'closed', '', '113', '', '', '2018-03-06 19:56:02', '2018-03-06 16:56:02', '', 0, 'http://wp.khand.ml/?p=113', 5, 'nav_menu_item', '', 0),
(114, 1, '2018-03-06 13:16:33', '2018-03-06 10:16:33', ' ', '', '', 'publish', 'closed', 'closed', '', '114', '', '', '2018-03-06 19:56:02', '2018-03-06 16:56:02', '', 0, 'http://wp.khand.ml/?p=114', 6, 'nav_menu_item', '', 0),
(116, 1, '2018-03-06 21:18:46', '2018-03-06 18:18:46', 'Feeling my way through the darkness\r\nGuided by a beating heart\r\nI can\'t tell where the journey will end\r\nBut I know where to start\r\nThey tell me I\'m too young to understand\r\nThey say I\'m caught up in a dream\r\nWell life will pass me by if I don\'t open up my eyes\r\nWell that\'s fine by me<!--more-->\r\nSo wake me up when it\'s all over\r\nWhen I\'m wiser and I\'m older\r\nAll this time I was finding myself\r\nAnd I didn\'t know I was lost\r\nSo wake me up when it\'s all over\r\nWhen I\'m wiser and I\'m older\r\nAll this time I was finding myself\r\nAnd I didn\'t know I was lost\r\nI tried carrying the weight of the world\r\nBut I only have two hands\r\nI hope I get the chance to travel the world\r\nBut I don\'t have any plans\r\nI wish that I could stay forever this young\r\nNot afraid to close my eyes\r\nLife\'s a game made for everyone\r\nAnd love is the prize\r\nSo wake me up when it\'s all over\r\nWhen I\'m wiser and I\'m older\r\nAll this time I was finding myself\r\nAnd I didn\'t know I was lost\r\nSo wake me up when it\'s all over\r\nWhen I\'m wiser and I\'m older\r\nAll this time I was finding myself\r\nAnd I didn\'t know I was lost\r\nI didn\'t know I was lost\r\nI didn\'t know I was lost\r\nI didn\'t know I was lost\r\nI didn\'t know I was lost\r\nSo wake me up when it\'s all over\r\nWhen I\'m wiser and I\'m older\r\nAll this time I was finding myself\r\nAnd I didn\'t know I was lost</div>', 'Wake me up', '', 'publish', 'open', 'open', '', 'wake-me-up', '', '', '2018-03-08 20:59:57', '2018-03-08 17:59:57', '', 0, 'http://wp.khand.ml/?p=116', 0, 'post', '', 0),
(117, 1, '2018-03-06 21:17:58', '2018-03-06 18:17:58', '', 'vlcsnap-2014-01-26-13h25m44s52', '', 'inherit', 'open', 'closed', '', 'vlcsnap-2014-01-26-13h25m44s52', '', '', '2018-03-06 21:17:58', '2018-03-06 18:17:58', '', 116, 'http://wp.khand.ml/wp-content/uploads/vlcsnap-2014-01-26-13h25m44s52.jpg', 0, 'attachment', 'image/jpeg', 0),
(118, 1, '2018-03-06 21:18:46', '2018-03-06 18:18:46', 'Feeling my way through the darkness\r\nGuided by a beating heart\r\nI can\'t tell where the journey will end\r\nBut I know where to start\r\nThey tell me I\'m too young to understand\r\nThey say I\'m caught up in a dream\r\nWell life will pass me by if I don\'t open up my eyes\r\nWell that\'s fine by me\r\nSo wake me up when it\'s all over\r\nWhen I\'m wiser and I\'m older\r\nAll this time I was finding myself\r\nAnd I didn\'t know I was lost\r\nSo wake me up when it\'s all over\r\nWhen I\'m wiser and I\'m older\r\nAll this time I was finding myself\r\nAnd I didn\'t know I was lost\r\nI tried carrying the weight of the world\r\nBut I only have two hands\r\nI hope I get the chance to travel the world\r\nBut I don\'t have any plans\r\nI wish that I could stay forever this young\r\nNot afraid to close my eyes\r\nLife\'s a game made for everyone\r\nAnd love is the prize\r\nSo wake me up when it\'s all over\r\nWhen I\'m wiser and I\'m older\r\nAll this time I was finding myself\r\nAnd I didn\'t know I was lost\r\nSo wake me up when it\'s all over\r\nWhen I\'m wiser and I\'m older\r\nAll this time I was finding myself\r\nAnd I didn\'t know I was lost\r\nI didn\'t know I was lost\r\nI didn\'t know I was lost\r\nI didn\'t know I was lost\r\nI didn\'t know I was lost\r\nSo wake me up when it\'s all over\r\nWhen I\'m wiser and I\'m older\r\nAll this time I was finding myself\r\nAnd I didn\'t know I was lost', 'Wake me up', '', 'inherit', 'closed', 'closed', '', '116-revision-v1', '', '', '2018-03-06 21:18:46', '2018-03-06 18:18:46', '', 116, 'http://wp.khand.ml/116-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2018-03-06 21:19:16', '2018-03-06 18:19:16', 'Feeling my way through the darkness\r\nGuided by a beating heart\r\nI can\'t tell where the journey will end\r\nBut I know where to start\r\n\r\n<!--more-->\r\nThey tell me I\'m too young to understand\r\nThey say I\'m caught up in a dream\r\nWell life will pass me by if I don\'t open up my eyes\r\nWell that\'s fine by me\r\nSo wake me up when it\'s all over\r\nWhen I\'m wiser and I\'m older\r\nAll this time I was finding myself\r\nAnd I didn\'t know I was lost\r\nSo wake me up when it\'s all over\r\nWhen I\'m wiser and I\'m older\r\nAll this time I was finding myself\r\nAnd I didn\'t know I was lost\r\nI tried carrying the weight of the world\r\nBut I only have two hands\r\nI hope I get the chance to travel the world\r\nBut I don\'t have any plans\r\nI wish that I could stay forever this young\r\nNot afraid to close my eyes\r\nLife\'s a game made for everyone\r\nAnd love is the prize\r\nSo wake me up when it\'s all over\r\nWhen I\'m wiser and I\'m older\r\nAll this time I was finding myself\r\nAnd I didn\'t know I was lost\r\nSo wake me up when it\'s all over\r\nWhen I\'m wiser and I\'m older\r\nAll this time I was finding myself\r\nAnd I didn\'t know I was lost\r\nI didn\'t know I was lost\r\nI didn\'t know I was lost\r\nI didn\'t know I was lost\r\nI didn\'t know I was lost\r\nSo wake me up when it\'s all over\r\nWhen I\'m wiser and I\'m older\r\nAll this time I was finding myself\r\nAnd I didn\'t know I was lost', 'Wake me up', '', 'inherit', 'closed', 'closed', '', '116-revision-v1', '', '', '2018-03-06 21:19:16', '2018-03-06 18:19:16', '', 116, 'http://wp.khand.ml/116-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2018-03-06 21:24:57', '2018-03-06 18:24:57', 'Feeling my way through the darkness\r\nGuided by a beating heart\r\nI can\'t tell where the journey will end\r\nBut I know where to start<!--more-->\r\nThey tell me I\'m too young to understand\r\nThey say I\'m caught up in a dream\r\nWell life will pass me by if I don\'t open up my eyes\r\nWell that\'s fine by me\r\nSo wake me up when it\'s all over\r\nWhen I\'m wiser and I\'m older\r\nAll this time I was finding myself\r\nAnd I didn\'t know I was lost\r\nSo wake me up when it\'s all over\r\nWhen I\'m wiser and I\'m older\r\nAll this time I was finding myself\r\nAnd I didn\'t know I was lost\r\nI tried carrying the weight of the world\r\nBut I only have two hands\r\nI hope I get the chance to travel the world\r\nBut I don\'t have any plans\r\nI wish that I could stay forever this young\r\nNot afraid to close my eyes\r\nLife\'s a game made for everyone\r\nAnd love is the prize\r\nSo wake me up when it\'s all over\r\nWhen I\'m wiser and I\'m older\r\nAll this time I was finding myself\r\nAnd I didn\'t know I was lost\r\nSo wake me up when it\'s all over\r\nWhen I\'m wiser and I\'m older\r\nAll this time I was finding myself\r\nAnd I didn\'t know I was lost\r\nI didn\'t know I was lost\r\nI didn\'t know I was lost\r\nI didn\'t know I was lost\r\nI didn\'t know I was lost\r\nSo wake me up when it\'s all over\r\nWhen I\'m wiser and I\'m older\r\nAll this time I was finding myself\r\nAnd I didn\'t know I was lost', 'Wake me up', '', 'inherit', 'closed', 'closed', '', '116-revision-v1', '', '', '2018-03-06 21:24:57', '2018-03-06 18:24:57', '', 116, 'http://wp.khand.ml/116-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2018-03-07 01:05:04', '2018-03-06 22:05:04', 'Feeling my way through the darkness\r\nGuided by a beating heart\r\nI can\'t tell where the journey will end\r\nBut I know where to start<!--more--></div><div class="col-md-12">\r\nThey tell me I\'m too young to understand\r\nThey say I\'m caught up in a dream\r\nWell life will pass me by if I don\'t open up my eyes\r\nWell that\'s fine by me\r\nSo wake me up when it\'s all over\r\nWhen I\'m wiser and I\'m older\r\nAll this time I was finding myself\r\nAnd I didn\'t know I was lost\r\nSo wake me up when it\'s all over\r\nWhen I\'m wiser and I\'m older\r\nAll this time I was finding myself\r\nAnd I didn\'t know I was lost\r\nI tried carrying the weight of the world\r\nBut I only have two hands\r\nI hope I get the chance to travel the world\r\nBut I don\'t have any plans\r\nI wish that I could stay forever this young\r\nNot afraid to close my eyes\r\nLife\'s a game made for everyone\r\nAnd love is the prize\r\nSo wake me up when it\'s all over\r\nWhen I\'m wiser and I\'m older\r\nAll this time I was finding myself\r\nAnd I didn\'t know I was lost\r\nSo wake me up when it\'s all over\r\nWhen I\'m wiser and I\'m older\r\nAll this time I was finding myself\r\nAnd I didn\'t know I was lost\r\nI didn\'t know I was lost\r\nI didn\'t know I was lost\r\nI didn\'t know I was lost\r\nI didn\'t know I was lost\r\nSo wake me up when it\'s all over\r\nWhen I\'m wiser and I\'m older\r\nAll this time I was finding myself\r\nAnd I didn\'t know I was lost', 'Wake me up', '', 'inherit', 'closed', 'closed', '', '116-revision-v1', '', '', '2018-03-07 01:05:04', '2018-03-06 22:05:04', '', 116, 'http://wp.khand.ml/116-revision-v1/', 0, 'revision', '', 0),
(122, 1, '2018-03-07 01:05:35', '2018-03-06 22:05:35', 'Feeling my way through the darkness\r\nGuided by a beating heart\r\nI can\'t tell where the journey will end\r\nBut I know where to start\r\nThey tell me I\'m too young to understand\r\nThey say I\'m caught up in a dream\r\nWell life will pass me by if I don\'t open up my eyes\r\nWell that\'s fine by me\r\nSo wake me up when it\'s all over\r\nWhen I\'m wiser and I\'m older\r\nAll this time I was finding myself\r\nAnd I didn\'t know I was lost\r\nSo wake me up when it\'s all over\r\nWhen I\'m wiser and I\'m older\r\nAll this time I was finding myself\r\nAnd I didn\'t know I was lost<!--more--></div><div class="col-md-12">\r\nI tried carrying the weight of the world\r\nBut I only have two hands\r\nI hope I get the chance to travel the world\r\nBut I don\'t have any plans\r\nI wish that I could stay forever this young\r\nNot afraid to close my eyes\r\nLife\'s a game made for everyone\r\nAnd love is the prize\r\nSo wake me up when it\'s all over\r\nWhen I\'m wiser and I\'m older\r\nAll this time I was finding myself\r\nAnd I didn\'t know I was lost\r\nSo wake me up when it\'s all over\r\nWhen I\'m wiser and I\'m older\r\nAll this time I was finding myself\r\nAnd I didn\'t know I was lost\r\nI didn\'t know I was lost\r\nI didn\'t know I was lost\r\nI didn\'t know I was lost\r\nI didn\'t know I was lost\r\nSo wake me up when it\'s all over\r\nWhen I\'m wiser and I\'m older\r\nAll this time I was finding myself\r\nAnd I didn\'t know I was lost', 'Wake me up', '', 'inherit', 'closed', 'closed', '', '116-revision-v1', '', '', '2018-03-07 01:05:35', '2018-03-06 22:05:35', '', 116, 'http://wp.khand.ml/116-revision-v1/', 0, 'revision', '', 0),
(123, 1, '2018-03-07 01:05:59', '2018-03-06 22:05:59', 'Feeling my way through the darkness\r\nGuided by a beating heart\r\nI can\'t tell where the journey will end\r\nBut I know where to start\r\nThey tell me I\'m too young to understand\r\nThey say I\'m caught up in a dream\r\nWell life will pass me by if I don\'t open up my eyes\r\nWell that\'s fine by me\r\nSo wake me up when it\'s all over\r\nWhen I\'m wiser and I\'m older\r\nAll this time I was finding myself\r\nAnd I didn\'t know I was lost\r\nSo wake me up when it\'s all over\r\nWhen I\'m wiser and I\'m older\r\nAll this time I was finding myself\r\nAnd I didn\'t know I was <!--more--></div><div class="col-md-12">lost\r\nI tried carrying the weight of the world\r\nBut I only have two hands\r\nI hope I get the chance to travel the world\r\nBut I don\'t have any plans\r\nI wish that I could stay forever this young\r\nNot afraid to close my eyes\r\nLife\'s a game made for everyone\r\nAnd love is the prize\r\nSo wake me up when it\'s all over\r\nWhen I\'m wiser and I\'m older\r\nAll this time I was finding myself\r\nAnd I didn\'t know I was lost\r\nSo wake me up when it\'s all over\r\nWhen I\'m wiser and I\'m older\r\nAll this time I was finding myself\r\nAnd I didn\'t know I was lost\r\nI didn\'t know I was lost\r\nI didn\'t know I was lost\r\nI didn\'t know I was lost\r\nI didn\'t know I was lost\r\nSo wake me up when it\'s all over\r\nWhen I\'m wiser and I\'m older\r\nAll this time I was finding myself\r\nAnd I didn\'t know I was lost', 'Wake me up', '', 'inherit', 'closed', 'closed', '', '116-revision-v1', '', '', '2018-03-07 01:05:59', '2018-03-06 22:05:59', '', 116, 'http://wp.khand.ml/116-revision-v1/', 0, 'revision', '', 0),
(125, 1, '2018-03-08 20:55:43', '2018-03-08 17:55:43', 'Feeling my way through the darkness\r\nGuided by a beating heart\r\nI can\'t tell where the journey will end\r\nBut I know where to start\r\nThey tell me I\'m too young to understand\r\nThey say I\'m caught up in a dream\r\nWell life will pass me by if I don\'t open up my eyes\r\nWell that\'s fine by me<!--more--><div class="col-md-12">\r\nSo wake me up when it\'s all over\r\nWhen I\'m wiser and I\'m older\r\nAll this time I was finding myself\r\nAnd I didn\'t know I was lost\r\nSo wake me up when it\'s all over\r\nWhen I\'m wiser and I\'m older\r\nAll this time I was finding myself\r\nAnd I didn\'t know I was lost\r\nI tried carrying the weight of the world\r\nBut I only have two hands\r\nI hope I get the chance to travel the world\r\nBut I don\'t have any plans\r\nI wish that I could stay forever this young\r\nNot afraid to close my eyes\r\nLife\'s a game made for everyone\r\nAnd love is the prize\r\nSo wake me up when it\'s all over\r\nWhen I\'m wiser and I\'m older\r\nAll this time I was finding myself\r\nAnd I didn\'t know I was lost\r\nSo wake me up when it\'s all over\r\nWhen I\'m wiser and I\'m older\r\nAll this time I was finding myself\r\nAnd I didn\'t know I was lost\r\nI didn\'t know I was lost\r\nI didn\'t know I was lost\r\nI didn\'t know I was lost\r\nI didn\'t know I was lost\r\nSo wake me up when it\'s all over\r\nWhen I\'m wiser and I\'m older\r\nAll this time I was finding myself\r\nAnd I didn\'t know I was lost</div>', 'Wake me up', '', 'inherit', 'closed', 'closed', '', '116-revision-v1', '', '', '2018-03-08 20:55:43', '2018-03-08 17:55:43', '', 116, 'http://wp.khand.ml/116-revision-v1/', 0, 'revision', '', 0),
(126, 1, '2018-03-08 20:59:57', '2018-03-08 17:59:57', 'Feeling my way through the darkness\r\nGuided by a beating heart\r\nI can\'t tell where the journey will end\r\nBut I know where to start\r\nThey tell me I\'m too young to understand\r\nThey say I\'m caught up in a dream\r\nWell life will pass me by if I don\'t open up my eyes\r\nWell that\'s fine by me<!--more-->\r\nSo wake me up when it\'s all over\r\nWhen I\'m wiser and I\'m older\r\nAll this time I was finding myself\r\nAnd I didn\'t know I was lost\r\nSo wake me up when it\'s all over\r\nWhen I\'m wiser and I\'m older\r\nAll this time I was finding myself\r\nAnd I didn\'t know I was lost\r\nI tried carrying the weight of the world\r\nBut I only have two hands\r\nI hope I get the chance to travel the world\r\nBut I don\'t have any plans\r\nI wish that I could stay forever this young\r\nNot afraid to close my eyes\r\nLife\'s a game made for everyone\r\nAnd love is the prize\r\nSo wake me up when it\'s all over\r\nWhen I\'m wiser and I\'m older\r\nAll this time I was finding myself\r\nAnd I didn\'t know I was lost\r\nSo wake me up when it\'s all over\r\nWhen I\'m wiser and I\'m older\r\nAll this time I was finding myself\r\nAnd I didn\'t know I was lost\r\nI didn\'t know I was lost\r\nI didn\'t know I was lost\r\nI didn\'t know I was lost\r\nI didn\'t know I was lost\r\nSo wake me up when it\'s all over\r\nWhen I\'m wiser and I\'m older\r\nAll this time I was finding myself\r\nAnd I didn\'t know I was lost</div>', 'Wake me up', '', 'inherit', 'closed', 'closed', '', '116-revision-v1', '', '', '2018-03-08 20:59:57', '2018-03-08 17:59:57', '', 116, 'http://wp.khand.ml/116-revision-v1/', 0, 'revision', '', 0),
(127, 1, '2018-03-08 23:21:22', '2018-03-08 20:21:22', '<ol>\r\n 	<li>Номер и почта в Заголовке. Виджеты.</li>\r\n 	<li>Меню. На основе класса WP_Walker_Nav. Лишние пункты удалены.</li>\r\n 	<li>Баннер. На основе встроенного виджета «Галерея».</li>\r\n 	<li>Виджеты на главной странице (Иконка + Текст). Новый виджет. Для того чтобы поставить свою иконку, нужно вставить название CSS-класса иконки, а точнее, его смысловую часть. То есть, класс, который называется fa-film, нужно обозначить просто как film.</li>\r\n 	<li>Контент главной страницы. По идее, главная страница может занимать все пространство под виджетами. Можно добавить произвольные поля, и выводить их сбоку, как пункты. Но я решил оставить как есть.</li>\r\n 	<li>Категории внизу на главной странице. Использовал плагин Advanced Custom Fields для добавления изображения к категориям.</li>\r\n 	<li>Подвал. Контакты. Перечень категорий. (На всякий случай и Disclaimer). Это виджеты «Произвольный текст». Перечень категорий - свой виджет, который позволяет указать список категорий, ограничить количество выводимых категорий и упорядочить(изначально только по имени или количеству постов в категориях). Лишние ссылки удалены.</li>\r\n 	<li>Все посты архива выводятся списком. Последние вначале.</li>\r\n 	<li>Последние новости (Sidebar в архиве и просмотре отдельного поста). Возможно, следовало сделать это тоже виджетом. Решил оставить как есть.</li>\r\n 	<li>Страница отдельной новости. Отдельная новость отображается.</li>\r\n 	<li>Добавление комментария работает. Аватарка выводится стандартная (с Gravatar).</li>\r\n 	<li>Отправка контактной формы работает. Моя проблема, которую я считал проблемой Akismet, который якобы считал любые данные спамом, на самом деле оказалась просто ошибкой отправки формы, потому что у меня не настроен почтовый сервер. Использовал у себя плагин WP Mail SMTP, где настроил свою почту.</li>\r\n 	<li>На странице Связи, как и на всех страницах, отображаются виджеты Box Aside, это стандартный виджет «Произвольный текст» с другим внешним видом. Точно также как и в подвале.</li>\r\n</ol>', 'Что изменилось', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-03-08 23:21:22', '2018-03-08 20:21:22', '', 2, 'http://wp.khand.ml/2-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', 'uncategorized', 0),
(2, 'Category 1', 'category-1', 0),
(3, 'Category 2', 'category-2', 0),
(4, 'Category 3', 'category-3', 0),
(5, 'hello', 'hello', 0),
(6, 'world', 'world', 0),
(7, 'first', 'first', 0),
(8, 'post', 'post', 0),
(9, 'cat1', 'cat1', 0),
(10, 'cat1forever', 'cat1forever', 0),
(11, 'hornav', 'hornav', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(1, 5, 0),
(1, 6, 0),
(1, 7, 0),
(1, 8, 0),
(50, 2, 0),
(50, 5, 0),
(50, 9, 0),
(50, 10, 0),
(52, 2, 0),
(54, 3, 0),
(57, 2, 0),
(71, 2, 0),
(105, 11, 0),
(106, 11, 0),
(110, 11, 0),
(111, 11, 0),
(112, 11, 0),
(113, 11, 0),
(114, 11, 0),
(116, 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
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
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'category', 'This is the first category', 0, 5),
(3, 3, 'category', 'This is the second category', 0, 1),
(4, 4, 'category', 'This is the third category', 0, 0),
(5, 5, 'post_tag', '', 0, 2),
(6, 6, 'post_tag', '', 0, 1),
(7, 7, 'post_tag', '', 0, 1),
(8, 8, 'post_tag', '', 0, 1),
(9, 9, 'post_tag', '', 0, 1),
(10, 10, 'post_tag', '', 0, 1),
(11, 11, 'nav_menu', '', 0, 7);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'plugin_editor_notice,theme_editor_notice,text_widget_custom_html'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '124'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:12:"178.165.14.0";}'),
(19, 1, 'closedpostboxes_page', 'a:0:{}'),
(20, 1, 'metaboxhidden_page', 'a:3:{i:0;s:16:"commentstatusdiv";i:1;s:7:"slugdiv";i:2;s:9:"authordiv";}'),
(21, 1, 'meta-box-order_page', 'a:3:{s:4:"side";s:36:"submitdiv,pageparentdiv,postimagediv";s:6:"normal";s:45:"postcustom,commentstatusdiv,slugdiv,authordiv";s:8:"advanced";s:0:"";}'),
(22, 1, 'screen_layout_page', '2'),
(23, 1, 'wp_media_library_mode', 'grid'),
(24, 1, 'meta-box-order_dashboard', 'a:4:{s:6:"normal";s:19:"dashboard_right_now";s:4:"side";s:21:"dashboard_quick_press";s:7:"column3";s:36:"dashboard_primary,dashboard_activity";s:7:"column4";s:0:"";}'),
(25, 1, 'maxgalleria_mlp_review_notice', '2018-03-01'),
(26, 1, 'wp_user-settings', 'libraryContent=browse&hidetb=1&editor=tinymce'),
(27, 1, 'wp_user-settings-time', '1520540477'),
(28, 1, 'closedpostboxes_post', 'a:1:{i:0;s:10:"postcustom";}'),
(29, 1, 'metaboxhidden_post', 'a:6:{i:0;s:11:"postexcerpt";i:1;s:13:"trackbacksdiv";i:2;s:16:"commentstatusdiv";i:3;s:11:"commentsdiv";i:4;s:7:"slugdiv";i:5;s:9:"authordiv";}'),
(30, 1, 'session_tokens', 'a:2:{s:64:"6f708463f485c59245dfb34f10935be543c57d5a170f617006c6c7dc3428f07c";a:4:{s:10:"expiration";i:1520627985;s:2:"ip";s:12:"85.90.199.17";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36";s:5:"login";i:1520455185;}s:64:"6b6c414bb9a6c26c553f23a8a9e248537a7f5e31ffdd929214e969bce065e844";a:4:{s:10:"expiration";i:1520703334;s:2:"ip";s:14:"178.165.14.155";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36";s:5:"login";i:1520530534;}}'),
(31, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:15:"title-attribute";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(32, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(33, 1, 'nav_menu_recently_edited', '11');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
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
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BJnVJwsKZ9Gm9wYFU3l9V7CHn/JmaE1', 'admin', 'samir.khan.w@gmail.com', '', '2018-02-28 12:36:24', '', 0, 'admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_custom_options_plus`
--
ALTER TABLE `wp_custom_options_plus`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_mgmlp_folders`
--
ALTER TABLE `wp_mgmlp_folders`
  ADD PRIMARY KEY (`post_id`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `wp_custom_options_plus`
--
ALTER TABLE `wp_custom_options_plus`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=615;
--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=358;
--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;
--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
