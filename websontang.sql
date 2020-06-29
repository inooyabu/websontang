-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2018 at 03:59 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `websontang`
--

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
(1, 'siteurl', 'http://localhost/websontang', 'yes'),
(2, 'home', 'http://localhost/websontang', 'yes'),
(3, 'blogname', 'Nagari Sontang Cubadak', 'yes'),
(4, 'blogdescription', 'Kabupaten Pasaman', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'sontang@cubadak.co', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '5', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '5', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:364:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:8:"kades/?$";s:25:"index.php?post_type=kades";s:38:"kades/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?post_type=kades&feed=$matches[1]";s:33:"kades/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?post_type=kades&feed=$matches[1]";s:25:"kades/page/([0-9]{1,})/?$";s:43:"index.php?post_type=kades&paged=$matches[1]";s:8:"opini/?$";s:25:"index.php?post_type=opini";s:38:"opini/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?post_type=opini&feed=$matches[1]";s:33:"opini/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?post_type=opini&feed=$matches[1]";s:25:"opini/page/([0-9]{1,})/?$";s:43:"index.php?post_type=opini&paged=$matches[1]";s:13:"pengumuman/?$";s:30:"index.php?post_type=pengumuman";s:43:"pengumuman/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?post_type=pengumuman&feed=$matches[1]";s:38:"pengumuman/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?post_type=pengumuman&feed=$matches[1]";s:30:"pengumuman/page/([0-9]{1,})/?$";s:48:"index.php?post_type=pengumuman&paged=$matches[1]";s:9:"galeri/?$";s:26:"index.php?post_type=galeri";s:39:"galeri/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=galeri&feed=$matches[1]";s:34:"galeri/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=galeri&feed=$matches[1]";s:26:"galeri/page/([0-9]{1,})/?$";s:44:"index.php?post_type=galeri&paged=$matches[1]";s:9:"agenda/?$";s:26:"index.php?post_type=agenda";s:39:"agenda/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=agenda&feed=$matches[1]";s:34:"agenda/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=agenda&feed=$matches[1]";s:26:"agenda/page/([0-9]{1,})/?$";s:44:"index.php?post_type=agenda&paged=$matches[1]";s:14:"pembangunan/?$";s:31:"index.php?post_type=pembangunan";s:44:"pembangunan/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=pembangunan&feed=$matches[1]";s:39:"pembangunan/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=pembangunan&feed=$matches[1]";s:31:"pembangunan/page/([0-9]{1,})/?$";s:49:"index.php?post_type=pembangunan&paged=$matches[1]";s:10:"layanan/?$";s:27:"index.php?post_type=layanan";s:40:"layanan/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=layanan&feed=$matches[1]";s:35:"layanan/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=layanan&feed=$matches[1]";s:27:"layanan/page/([0-9]{1,})/?$";s:45:"index.php?post_type=layanan&paged=$matches[1]";s:8:"video/?$";s:25:"index.php?post_type=video";s:38:"video/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?post_type=video&feed=$matches[1]";s:33:"video/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?post_type=video&feed=$matches[1]";s:25:"video/page/([0-9]{1,})/?$";s:43:"index.php?post_type=video&paged=$matches[1]";s:14:"produk-desa/?$";s:31:"index.php?post_type=produk-desa";s:44:"produk-desa/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=produk-desa&feed=$matches[1]";s:39:"produk-desa/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=produk-desa&feed=$matches[1]";s:31:"produk-desa/page/([0-9]{1,})/?$";s:49:"index.php?post_type=produk-desa&paged=$matches[1]";s:12:"dana-desa/?$";s:29:"index.php?post_type=dana-desa";s:42:"dana-desa/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?post_type=dana-desa&feed=$matches[1]";s:37:"dana-desa/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?post_type=dana-desa&feed=$matches[1]";s:29:"dana-desa/page/([0-9]{1,})/?$";s:47:"index.php?post_type=dana-desa&paged=$matches[1]";s:10:"laporan/?$";s:27:"index.php?post_type=laporan";s:40:"laporan/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=laporan&feed=$matches[1]";s:35:"laporan/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=laporan&feed=$matches[1]";s:27:"laporan/page/([0-9]{1,})/?$";s:45:"index.php?post_type=laporan&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:46:"tahun/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?tahun=$matches[1]&feed=$matches[2]";s:41:"tahun/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?tahun=$matches[1]&feed=$matches[2]";s:22:"tahun/([^/]+)/embed/?$";s:38:"index.php?tahun=$matches[1]&embed=true";s:34:"tahun/([^/]+)/page/?([0-9]{1,})/?$";s:45:"index.php?tahun=$matches[1]&paged=$matches[2]";s:16:"tahun/([^/]+)/?$";s:27:"index.php?tahun=$matches[1]";s:33:"kades/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"kades/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:63:"kades/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"kades/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"kades/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:39:"kades/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:22:"kades/([^/]+)/embed/?$";s:38:"index.php?kades=$matches[1]&embed=true";s:26:"kades/([^/]+)/trackback/?$";s:32:"index.php?kades=$matches[1]&tb=1";s:46:"kades/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?kades=$matches[1]&feed=$matches[2]";s:41:"kades/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?kades=$matches[1]&feed=$matches[2]";s:34:"kades/([^/]+)/page/?([0-9]{1,})/?$";s:45:"index.php?kades=$matches[1]&paged=$matches[2]";s:41:"kades/([^/]+)/comment-page-([0-9]{1,})/?$";s:45:"index.php?kades=$matches[1]&cpage=$matches[2]";s:30:"kades/([^/]+)(?:/([0-9]+))?/?$";s:44:"index.php?kades=$matches[1]&page=$matches[2]";s:22:"kades/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:32:"kades/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:52:"kades/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"kades/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"kades/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:28:"kades/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:33:"opini/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"opini/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:63:"opini/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"opini/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"opini/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:39:"opini/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:22:"opini/([^/]+)/embed/?$";s:38:"index.php?opini=$matches[1]&embed=true";s:26:"opini/([^/]+)/trackback/?$";s:32:"index.php?opini=$matches[1]&tb=1";s:46:"opini/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?opini=$matches[1]&feed=$matches[2]";s:41:"opini/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?opini=$matches[1]&feed=$matches[2]";s:34:"opini/([^/]+)/page/?([0-9]{1,})/?$";s:45:"index.php?opini=$matches[1]&paged=$matches[2]";s:41:"opini/([^/]+)/comment-page-([0-9]{1,})/?$";s:45:"index.php?opini=$matches[1]&cpage=$matches[2]";s:30:"opini/([^/]+)(?:/([0-9]+))?/?$";s:44:"index.php?opini=$matches[1]&page=$matches[2]";s:22:"opini/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:32:"opini/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:52:"opini/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"opini/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"opini/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:28:"opini/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:38:"pengumuman/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:48:"pengumuman/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:68:"pengumuman/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"pengumuman/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"pengumuman/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:44:"pengumuman/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:27:"pengumuman/([^/]+)/embed/?$";s:43:"index.php?pengumuman=$matches[1]&embed=true";s:31:"pengumuman/([^/]+)/trackback/?$";s:37:"index.php?pengumuman=$matches[1]&tb=1";s:51:"pengumuman/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?pengumuman=$matches[1]&feed=$matches[2]";s:46:"pengumuman/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?pengumuman=$matches[1]&feed=$matches[2]";s:39:"pengumuman/([^/]+)/page/?([0-9]{1,})/?$";s:50:"index.php?pengumuman=$matches[1]&paged=$matches[2]";s:46:"pengumuman/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?pengumuman=$matches[1]&cpage=$matches[2]";s:35:"pengumuman/([^/]+)(?:/([0-9]+))?/?$";s:49:"index.php?pengumuman=$matches[1]&page=$matches[2]";s:27:"pengumuman/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"pengumuman/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"pengumuman/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"pengumuman/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"pengumuman/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"pengumuman/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:40:"sekilas-info/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:50:"sekilas-info/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:70:"sekilas-info/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"sekilas-info/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"sekilas-info/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:46:"sekilas-info/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:29:"sekilas-info/([^/]+)/embed/?$";s:45:"index.php?sekilas-info=$matches[1]&embed=true";s:33:"sekilas-info/([^/]+)/trackback/?$";s:39:"index.php?sekilas-info=$matches[1]&tb=1";s:41:"sekilas-info/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?sekilas-info=$matches[1]&paged=$matches[2]";s:48:"sekilas-info/([^/]+)/comment-page-([0-9]{1,})/?$";s:52:"index.php?sekilas-info=$matches[1]&cpage=$matches[2]";s:37:"sekilas-info/([^/]+)(?:/([0-9]+))?/?$";s:51:"index.php?sekilas-info=$matches[1]&page=$matches[2]";s:29:"sekilas-info/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:39:"sekilas-info/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:59:"sekilas-info/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"sekilas-info/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"sekilas-info/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:35:"sekilas-info/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"galeri/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"galeri/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"galeri/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"galeri/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"galeri/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"galeri/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:23:"galeri/([^/]+)/embed/?$";s:39:"index.php?galeri=$matches[1]&embed=true";s:27:"galeri/([^/]+)/trackback/?$";s:33:"index.php?galeri=$matches[1]&tb=1";s:47:"galeri/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?galeri=$matches[1]&feed=$matches[2]";s:42:"galeri/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?galeri=$matches[1]&feed=$matches[2]";s:35:"galeri/([^/]+)/page/?([0-9]{1,})/?$";s:46:"index.php?galeri=$matches[1]&paged=$matches[2]";s:42:"galeri/([^/]+)/comment-page-([0-9]{1,})/?$";s:46:"index.php?galeri=$matches[1]&cpage=$matches[2]";s:31:"galeri/([^/]+)(?:/([0-9]+))?/?$";s:45:"index.php?galeri=$matches[1]&page=$matches[2]";s:23:"galeri/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:33:"galeri/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:53:"galeri/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"galeri/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"galeri/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:29:"galeri/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"agenda/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"agenda/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"agenda/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"agenda/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"agenda/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"agenda/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:23:"agenda/([^/]+)/embed/?$";s:39:"index.php?agenda=$matches[1]&embed=true";s:27:"agenda/([^/]+)/trackback/?$";s:33:"index.php?agenda=$matches[1]&tb=1";s:47:"agenda/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?agenda=$matches[1]&feed=$matches[2]";s:42:"agenda/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?agenda=$matches[1]&feed=$matches[2]";s:35:"agenda/([^/]+)/page/?([0-9]{1,})/?$";s:46:"index.php?agenda=$matches[1]&paged=$matches[2]";s:42:"agenda/([^/]+)/comment-page-([0-9]{1,})/?$";s:46:"index.php?agenda=$matches[1]&cpage=$matches[2]";s:31:"agenda/([^/]+)(?:/([0-9]+))?/?$";s:45:"index.php?agenda=$matches[1]&page=$matches[2]";s:23:"agenda/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:33:"agenda/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:53:"agenda/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"agenda/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"agenda/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:29:"agenda/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:39:"pembangunan/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"pembangunan/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"pembangunan/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"pembangunan/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"pembangunan/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"pembangunan/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:28:"pembangunan/([^/]+)/embed/?$";s:44:"index.php?pembangunan=$matches[1]&embed=true";s:32:"pembangunan/([^/]+)/trackback/?$";s:38:"index.php?pembangunan=$matches[1]&tb=1";s:52:"pembangunan/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?pembangunan=$matches[1]&feed=$matches[2]";s:47:"pembangunan/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?pembangunan=$matches[1]&feed=$matches[2]";s:40:"pembangunan/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?pembangunan=$matches[1]&paged=$matches[2]";s:47:"pembangunan/([^/]+)/comment-page-([0-9]{1,})/?$";s:51:"index.php?pembangunan=$matches[1]&cpage=$matches[2]";s:36:"pembangunan/([^/]+)(?:/([0-9]+))?/?$";s:50:"index.php?pembangunan=$matches[1]&page=$matches[2]";s:28:"pembangunan/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:38:"pembangunan/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:58:"pembangunan/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"pembangunan/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"pembangunan/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:34:"pembangunan/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:35:"layanan/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"layanan/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"layanan/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"layanan/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"layanan/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"layanan/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"layanan/([^/]+)/embed/?$";s:40:"index.php?layanan=$matches[1]&embed=true";s:28:"layanan/([^/]+)/trackback/?$";s:34:"index.php?layanan=$matches[1]&tb=1";s:48:"layanan/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?layanan=$matches[1]&feed=$matches[2]";s:43:"layanan/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?layanan=$matches[1]&feed=$matches[2]";s:36:"layanan/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?layanan=$matches[1]&paged=$matches[2]";s:43:"layanan/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?layanan=$matches[1]&cpage=$matches[2]";s:32:"layanan/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?layanan=$matches[1]&page=$matches[2]";s:24:"layanan/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"layanan/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"layanan/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"layanan/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"layanan/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"layanan/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:33:"video/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"video/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:63:"video/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"video/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"video/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:39:"video/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:22:"video/([^/]+)/embed/?$";s:38:"index.php?video=$matches[1]&embed=true";s:26:"video/([^/]+)/trackback/?$";s:32:"index.php?video=$matches[1]&tb=1";s:46:"video/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?video=$matches[1]&feed=$matches[2]";s:41:"video/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?video=$matches[1]&feed=$matches[2]";s:34:"video/([^/]+)/page/?([0-9]{1,})/?$";s:45:"index.php?video=$matches[1]&paged=$matches[2]";s:41:"video/([^/]+)/comment-page-([0-9]{1,})/?$";s:45:"index.php?video=$matches[1]&cpage=$matches[2]";s:30:"video/([^/]+)(?:/([0-9]+))?/?$";s:44:"index.php?video=$matches[1]&page=$matches[2]";s:22:"video/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:32:"video/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:52:"video/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"video/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"video/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:28:"video/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:39:"produk-desa/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"produk-desa/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"produk-desa/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"produk-desa/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"produk-desa/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"produk-desa/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:28:"produk-desa/([^/]+)/embed/?$";s:44:"index.php?produk-desa=$matches[1]&embed=true";s:32:"produk-desa/([^/]+)/trackback/?$";s:38:"index.php?produk-desa=$matches[1]&tb=1";s:52:"produk-desa/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?produk-desa=$matches[1]&feed=$matches[2]";s:47:"produk-desa/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?produk-desa=$matches[1]&feed=$matches[2]";s:40:"produk-desa/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?produk-desa=$matches[1]&paged=$matches[2]";s:47:"produk-desa/([^/]+)/comment-page-([0-9]{1,})/?$";s:51:"index.php?produk-desa=$matches[1]&cpage=$matches[2]";s:36:"produk-desa/([^/]+)(?:/([0-9]+))?/?$";s:50:"index.php?produk-desa=$matches[1]&page=$matches[2]";s:28:"produk-desa/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:38:"produk-desa/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:58:"produk-desa/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"produk-desa/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"produk-desa/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:34:"produk-desa/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:37:"dana-desa/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"dana-desa/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"dana-desa/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"dana-desa/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"dana-desa/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"dana-desa/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:26:"dana-desa/([^/]+)/embed/?$";s:42:"index.php?dana-desa=$matches[1]&embed=true";s:30:"dana-desa/([^/]+)/trackback/?$";s:36:"index.php?dana-desa=$matches[1]&tb=1";s:50:"dana-desa/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?dana-desa=$matches[1]&feed=$matches[2]";s:45:"dana-desa/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?dana-desa=$matches[1]&feed=$matches[2]";s:38:"dana-desa/([^/]+)/page/?([0-9]{1,})/?$";s:49:"index.php?dana-desa=$matches[1]&paged=$matches[2]";s:45:"dana-desa/([^/]+)/comment-page-([0-9]{1,})/?$";s:49:"index.php?dana-desa=$matches[1]&cpage=$matches[2]";s:34:"dana-desa/([^/]+)(?:/([0-9]+))?/?$";s:48:"index.php?dana-desa=$matches[1]&page=$matches[2]";s:26:"dana-desa/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:36:"dana-desa/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:56:"dana-desa/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"dana-desa/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"dana-desa/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:32:"dana-desa/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:35:"laporan/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"laporan/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"laporan/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"laporan/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"laporan/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"laporan/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"laporan/([^/]+)/embed/?$";s:40:"index.php?laporan=$matches[1]&embed=true";s:28:"laporan/([^/]+)/trackback/?$";s:34:"index.php?laporan=$matches[1]&tb=1";s:48:"laporan/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?laporan=$matches[1]&feed=$matches[2]";s:43:"laporan/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?laporan=$matches[1]&feed=$matches[2]";s:36:"laporan/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?laporan=$matches[1]&paged=$matches[2]";s:43:"laporan/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?laporan=$matches[1]&cpage=$matches[2]";s:32:"laporan/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?laporan=$matches[1]&page=$matches[2]";s:24:"laporan/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"laporan/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"laporan/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"laporan/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"laporan/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"laporan/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:25:"add-to-any/add-to-any.php";i:1;s:51:"advanced-schedule-posts/advanced-schedule-posts.php";i:2;s:63:"social-icons-widget-by-wpzoom/social-icons-widget-by-wpzoom.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:68:"D:\\xampp\\Xampp2\\htdocs\\websontang/wp-content/themes/ndeso/footer.php";i:2;s:67:"D:\\xampp\\Xampp2\\htdocs\\websontang/wp-content/themes/ndeso/style.css";i:3;s:78:"D:\\xampp\\Xampp2\\htdocs\\websontang/wp-content/plugins/add-to-any/add-to-any.php";i:4;s:70:"D:\\xampp\\Xampp2\\htdocs\\websontang/wp-content/themes/ndeso/js/script.js";i:5;s:80:"D:\\xampp\\Xampp2\\htdocs\\websontang/wp-content/themes/ndeso/js/jquery.accordion.js";}', 'no'),
(40, 'template', 'ndeso', 'yes'),
(41, 'stylesheet', 'ndeso', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
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
(78, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:6:{i:2;a:4:{s:5:"title";s:7:"Find Us";s:4:"text";s:168:"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM";s:6:"filter";b:1;s:6:"visual";b:1;}i:3;a:4:{s:5:"title";s:15:"About This Site";s:4:"text";s:85:"This may be a good place to introduce yourself and your site or include some credits.";s:6:"filter";b:1;s:6:"visual";b:1;}i:4;a:4:{s:5:"title";s:7:"Find Us";s:4:"text";s:168:"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM";s:6:"filter";b:1;s:6:"visual";b:1;}i:5;a:4:{s:5:"title";s:15:"About This Site";s:4:"text";s:85:"This may be a good place to introduce yourself and your site or include some credits.";s:6:"filter";b:1;s:6:"visual";b:1;}i:6;a:4:{s:5:"title";s:6:"Lokasi";s:4:"text";s:362:"<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3989.7039540470264!2d100.03692351416157!3d0.43382156395580296!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x302af0632bd8e8f9%3A0xa8fdd16f62c44b28!2sNagari+Sontang+Cubadak!5e0!3m2!1sid!2sid!4v1532101281826" width="800" height="600" frameborder="0" style="border:0" allowfullscreen></iframe>";s:6:"filter";b:1;s:6:"visual";b:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '22', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'initial_db_version', '38590', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(93, 'wp_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:114:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop manager";s:12:"capabilities";a:92:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;}}}', 'yes'),
(94, 'fresh_site', '0', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:4:{i:0;s:6:"text-2";i:1;s:6:"text-3";i:2;s:6:"text-4";i:3;s:6:"text-5";}s:9:"sidebar-1";a:5:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:10:"archives-2";i:3;s:10:"calendar-2";i:4;s:6:"text-6";}s:13:"array_version";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'cron', 'a:5:{i:1542078439;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1542118039;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1542118255;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1542120885;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1530973195;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(123, 'can_compress_scripts', '1', 'no'),
(134, 'widget_recentposts_thumbnail', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(135, 'theme_mods_ndeso', 'a:2:{s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:1:{s:10:"navigation";i:2;}}', 'yes'),
(137, 'current_theme', 'Ndeso', 'yes'),
(138, 'theme_switched', '', 'yes'),
(139, 'paging_mode', 'default', 'yes'),
(150, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:18:"sontang@cubadak.co";s:7:"version";s:5:"4.9.8";s:9:"timestamp";i:1533780354;}', 'no'),
(170, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:1:{i:0;i:2;}}', 'yes'),
(171, 'desa', 'Sontang Cubadak', 'yes'),
(172, 'kades', 'Hendra', 'yes'),
(173, 'alamat', 'Nagari Sontang Cubadak, Kabupaten Pasaman', 'yes'),
(174, 'maps', '-0.4337711, 100.0368087', 'yes'),
(175, 'apikey', 'AIzaSyChsyCrQ2LpWfEu7Ufqd24fWt0oHCeoIoE', 'yes'),
(176, 'kecamatan', 'Padang Gelugur', 'yes'),
(177, 'kabupaten', 'Pasaman', 'yes'),
(178, 'provinsi', 'Sumatera Barat', 'yes'),
(179, 'kodepos', '26352', 'yes'),
(180, 'luas', '1.825   Ha	 ', 'yes'),
(181, 'logo_url', 'http://localhost/websontang/wp-content/uploads/2018/08/Logo-Sontang-Cubadak-Nazhifa.png', 'yes'),
(182, 'warga', '6.806  ', 'yes'),
(183, 'gtpengumuman', '', 'yes'),
(184, 'gtkokades', 'Kolom Wali Nagari', 'yes'),
(185, 'gtopwarga', '', 'yes'),
(186, 'gtprodes', '', 'yes'),
(187, 'gtgaleri', 'Foto', 'yes'),
(188, 'gtvideo', '', 'yes'),
(189, 'gtagenda', 'Agenda Warga', 'yes'),
(190, 'gtlapub', '', 'yes'),
(191, 'gtpropem', '', 'yes'),
(289, 'tahun_children', 'a:1:{i:4;a:1:{i:0;i:5;}}', 'yes'),
(305, 'recently_activated', 'a:0:{}', 'yes'),
(312, 'hasp_options', 'a:3:{s:7:"objects";a:1:{i:0;s:6:"agenda";}s:15:"activate_expire";a:2:{i:0;s:6:"agenda";i:1;s:7:"laporan";}s:18:"activate_overwrite";a:2:{i:0;s:6:"agenda";i:1;s:7:"laporan";}}', 'no'),
(313, 'hasp_activation', '1', 'no'),
(320, 'WPGMZA_OTHER_SETTINGS', 'a:7:{s:30:"wpgmza_settings_map_streetview";s:3:"yes";s:24:"wpgmza_settings_map_zoom";s:3:"yes";s:23:"wpgmza_settings_map_pan";s:3:"yes";s:24:"wpgmza_settings_map_type";s:3:"yes";s:27:"wpgmza_settings_marker_pull";s:1:"0";s:18:"wpgmza_maps_engine";s:11:"google-maps";s:30:"wpgmza_maps_engine_dialog_done";b:1;}', 'yes'),
(321, 'wpgmza_temp_api', 'AIzaSyChPphumyabdfggISDNBuGOlGVBgEvZnGE', 'yes'),
(322, 'wpgmza_xml_location', '{uploads_dir}/wp-google-maps/', 'yes'),
(323, 'wpgmza_xml_url', '{uploads_url}/wp-google-maps/', 'yes'),
(325, 'wpgmza_db_version', '7.10.22', 'yes'),
(326, 'wpgmaps_current_version', '7.10.22', 'yes'),
(327, 'WPGM_V6_FIRST_TIME', '1', 'yes'),
(329, 'widget_wpgmza_map_widget', 'a:2:{i:2;a:2:{s:9:"selection";s:1:"1";s:5:"title";s:15:"Sontang Cubadak";}s:12:"_multiwidget";i:1;}', 'yes'),
(330, 'WPGMZA_FIRST_TIME', '7.10.22', 'yes'),
(332, 'wpgmza_stats', 'a:3:{s:15:"list_maps_basic";a:3:{s:5:"views";i:2;s:13:"last_accessed";s:19:"2018-07-19 02:10:19";s:14:"first_accessed";s:19:"2018-07-19 02:09:56";}s:9:"dashboard";a:3:{s:5:"views";i:5;s:13:"last_accessed";s:19:"2018-07-19 02:14:22";s:14:"first_accessed";s:19:"2018-07-19 02:10:25";}s:14:"settings_basic";a:3:{s:5:"views";i:1;s:13:"last_accessed";s:19:"2018-07-19 02:14:32";s:14:"first_accessed";s:19:"2018-07-19 02:14:32";}}', 'yes'),
(333, 'wpgmza_google_maps_api_key', 'AIzaSyChsyCrQ2LpWfEu7Ufqd24fWt0oHCeoIoE', 'yes'),
(334, 'WPGMZA_SETTINGS', 'a:10:{s:24:"map_default_starting_lat";s:17:"29.68719599272833";s:24:"map_default_starting_lng";s:19:"-277.51081750000003";s:18:"map_default_height";s:3:"400";s:17:"map_default_width";s:3:"100";s:16:"map_default_zoom";i:2;s:20:"map_default_max_zoom";i:1;s:16:"map_default_type";i:1;s:21:"map_default_alignment";i:1;s:22:"map_default_width_type";s:2:"\\%";s:23:"map_default_height_type";s:2:"px";}', 'yes'),
(348, 'woocommerce_store_address', 'Sontang Cubadak, Pasaman', 'yes'),
(349, 'woocommerce_store_address_2', '', 'yes'),
(350, 'woocommerce_store_city', 'Pasaman', 'yes'),
(351, 'woocommerce_default_country', 'ID:SB', 'yes'),
(352, 'woocommerce_store_postcode', '26352', 'yes'),
(353, 'woocommerce_allowed_countries', 'all', 'yes'),
(354, 'woocommerce_all_except_countries', '', 'yes'),
(355, 'woocommerce_specific_allowed_countries', '', 'yes'),
(356, 'woocommerce_ship_to_countries', '', 'yes'),
(357, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(358, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(359, 'woocommerce_calc_taxes', 'no', 'yes'),
(360, 'woocommerce_enable_coupons', 'yes', 'yes'),
(361, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(362, 'woocommerce_currency', 'IDR', 'yes'),
(363, 'woocommerce_currency_pos', 'left', 'yes'),
(364, 'woocommerce_price_thousand_sep', ',', 'yes'),
(365, 'woocommerce_price_decimal_sep', '.', 'yes'),
(366, 'woocommerce_price_num_decimals', '2', 'yes'),
(367, 'woocommerce_shop_page_id', '131', 'yes'),
(368, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(369, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(370, 'woocommerce_weight_unit', 'kg', 'yes'),
(371, 'woocommerce_dimension_unit', 'cm', 'yes'),
(372, 'woocommerce_enable_reviews', 'yes', 'yes'),
(373, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(374, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(375, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(376, 'woocommerce_review_rating_required', 'yes', 'no'),
(377, 'woocommerce_manage_stock', 'yes', 'yes'),
(378, 'woocommerce_hold_stock_minutes', '60', 'no'),
(379, 'woocommerce_notify_low_stock', 'yes', 'no'),
(380, 'woocommerce_notify_no_stock', 'yes', 'no'),
(381, 'woocommerce_stock_email_recipient', 'sontang@cubadak.co', 'no'),
(382, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(383, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(384, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(385, 'woocommerce_stock_format', '', 'yes'),
(386, 'woocommerce_file_download_method', 'force', 'no'),
(387, 'woocommerce_downloads_require_login', 'no', 'no'),
(388, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(389, 'woocommerce_prices_include_tax', 'no', 'yes'),
(390, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(391, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(392, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(393, 'woocommerce_tax_classes', 'Reduced rate\r\nZero rate', 'yes'),
(394, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(395, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(396, 'woocommerce_price_display_suffix', '', 'yes'),
(397, 'woocommerce_tax_total_display', 'itemized', 'no'),
(398, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(399, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(400, 'woocommerce_ship_to_destination', 'billing', 'no'),
(401, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(402, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(403, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(404, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(405, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(406, 'woocommerce_registration_generate_username', 'yes', 'no'),
(407, 'woocommerce_registration_generate_password', 'yes', 'no'),
(408, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(409, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(410, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(411, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(412, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:6:"months";}', 'no'),
(413, 'woocommerce_trash_pending_orders', '', 'no'),
(414, 'woocommerce_trash_failed_orders', '', 'no'),
(415, 'woocommerce_trash_cancelled_orders', '', 'no'),
(416, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:6:"months";}', 'no'),
(417, 'woocommerce_email_from_name', 'Nagari Sontang Cubadak', 'no'),
(418, 'woocommerce_email_from_address', 'sontang@cubadak.co', 'no'),
(419, 'woocommerce_email_header_image', '', 'no'),
(420, 'woocommerce_email_footer_text', '{site_title}', 'no'),
(421, 'woocommerce_email_base_color', '#96588a', 'no'),
(422, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(423, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(424, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(425, 'woocommerce_cart_page_id', '133', 'yes'),
(426, 'woocommerce_checkout_page_id', '135', 'yes'),
(427, 'woocommerce_myaccount_page_id', '137', 'yes'),
(428, 'woocommerce_terms_page_id', '', 'no'),
(429, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(430, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(431, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(432, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(433, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(434, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(435, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(436, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(437, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(438, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(439, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(440, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(441, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(442, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(443, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(444, 'woocommerce_api_enabled', 'no', 'yes'),
(445, 'woocommerce_single_image_width', '600', 'yes'),
(446, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(447, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(448, 'woocommerce_demo_store', 'no', 'no'),
(449, 'woocommerce_permalinks', 'a:5:{s:12:"product_base";s:7:"product";s:13:"category_base";s:16:"product-category";s:8:"tag_base";s:11:"product-tag";s:14:"attribute_base";s:0:"";s:22:"use_verbose_page_rules";b:0;}', 'yes'),
(450, 'current_theme_supports_woocommerce', 'no', 'yes'),
(451, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(452, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(453, 'product_cat_children', 'a:0:{}', 'yes'),
(454, 'default_product_cat', '22', 'yes'),
(457, 'woocommerce_version', '3.4.3', 'yes'),
(458, 'woocommerce_db_version', '3.4.3', 'yes'),
(459, 'woocommerce_admin_notices', 'a:1:{i:1;s:20:"no_secure_connection";}', 'yes'),
(461, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(462, 'widget_woocommerce_widget_cart', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(463, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(464, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(465, 'widget_woocommerce_price_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(466, 'widget_woocommerce_product_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(468, 'widget_woocommerce_product_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(469, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(471, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(472, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(473, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(474, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(475, 'widget_woocommerce_rating_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(478, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(484, 'woocommerce_product_type', 'both', 'yes'),
(485, 'woocommerce_sell_in_person', '1', 'yes'),
(486, 'woocommerce_allow_tracking', 'yes', 'yes'),
(488, 'woocommerce_tracker_last_send', '1531974666', 'yes'),
(490, 'woocommerce_ppec_paypal_settings', 'a:2:{s:16:"reroute_requests";b:0;s:5:"email";b:0;}', 'yes'),
(491, 'woocommerce_cheque_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(492, 'woocommerce_bacs_settings', 'a:1:{s:7:"enabled";s:3:"yes";}', 'yes'),
(493, 'woocommerce_cod_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(494, '_transient_shipping-transient-version', '1531974755', 'yes'),
(515, 'woocommerce_tracker_ua', 'a:1:{i:0;s:115:"mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/66.0.3359.181 safari/537.36";}', 'yes'),
(522, '_transient_product_query-transient-version', '1532167052', 'yes'),
(538, 'widget_zoom-social-icons-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(539, '_site_transient_timeout_zoom-social-pointer', '1547653997', 'no'),
(540, '_site_transient_zoom-social-pointer', '1', 'no'),
(548, 'widget_a2a_share_save_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(549, 'widget_a2a_follow_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(594, '_transient_product-transient-version', '1532167052', 'yes'),
(612, '_transient_orders-transient-version', '1532167191', 'yes'),
(654, '_transient_wc_count_comments', 'O:8:"stdClass":7:{s:14:"total_comments";i:5;s:3:"all";i:5;s:8:"approved";s:1:"5";s:12:"post-trashed";s:1:"1";s:9:"moderated";i:0;s:4:"spam";i:0;s:5:"trash";i:0;}', 'yes'),
(773, 'category_children', 'a:0:{}', 'yes'),
(813, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.8.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.8.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.8";s:7:"version";s:5:"4.9.8";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1542077787;s:15:"version_checked";s:5:"4.9.8";s:12:"translations";a:0:{}}', 'no'),
(855, 'external_theme_updates-ndeso', 'O:8:"stdClass":3:{s:9:"lastCheck";i:1542077796;s:14:"checkedVersion";s:7:"1.0.9.1";s:6:"update";N;}', 'yes'),
(856, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1542077796;s:7:"checked";a:4:{s:5:"ndeso";s:7:"1.0.9.1";s:13:"twentyfifteen";s:3:"2.0";s:15:"twentyseventeen";s:3:"1.7";s:13:"twentysixteen";s:3:"1.5";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(874, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1542077794;s:7:"checked";a:6:{s:25:"add-to-any/add-to-any.php";s:6:"1.7.28";s:51:"advanced-schedule-posts/advanced-schedule-posts.php";s:5:"1.2.1";s:19:"akismet/akismet.php";s:5:"4.0.8";s:9:"hello.php";s:3:"1.7";s:63:"social-icons-widget-by-wpzoom/social-icons-widget-by-wpzoom.php";s:5:"3.0.9";s:31:"wp-google-maps/wpGoogleMaps.php";s:7:"7.10.27";}s:8:"response";a:3:{s:25:"add-to-any/add-to-any.php";O:8:"stdClass":12:{s:2:"id";s:24:"w.org/plugins/add-to-any";s:4:"slug";s:10:"add-to-any";s:6:"plugin";s:25:"add-to-any/add-to-any.php";s:11:"new_version";s:6:"1.7.30";s:3:"url";s:41:"https://wordpress.org/plugins/add-to-any/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/add-to-any.1.7.30.zip";s:5:"icons";a:3:{s:2:"2x";s:62:"https://ps.w.org/add-to-any/assets/icon-256x256.png?rev=972738";s:2:"1x";s:54:"https://ps.w.org/add-to-any/assets/icon.svg?rev=972738";s:3:"svg";s:54:"https://ps.w.org/add-to-any/assets/icon.svg?rev=972738";}s:7:"banners";a:2:{s:2:"2x";s:66:"https://ps.w.org/add-to-any/assets/banner-1544x500.png?rev=1629680";s:2:"1x";s:65:"https://ps.w.org/add-to-any/assets/banner-772x250.png?rev=1629680";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:3:"5.0";s:12:"requires_php";s:3:"5.2";s:13:"compatibility";O:8:"stdClass":0:{}}s:63:"social-icons-widget-by-wpzoom/social-icons-widget-by-wpzoom.php";O:8:"stdClass":12:{s:2:"id";s:43:"w.org/plugins/social-icons-widget-by-wpzoom";s:4:"slug";s:29:"social-icons-widget-by-wpzoom";s:6:"plugin";s:63:"social-icons-widget-by-wpzoom/social-icons-widget-by-wpzoom.php";s:11:"new_version";s:6:"3.0.10";s:3:"url";s:60:"https://wordpress.org/plugins/social-icons-widget-by-wpzoom/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/social-icons-widget-by-wpzoom.zip";s:5:"icons";a:2:{s:2:"2x";s:82:"https://ps.w.org/social-icons-widget-by-wpzoom/assets/icon-256x256.png?rev=1370040";s:2:"1x";s:82:"https://ps.w.org/social-icons-widget-by-wpzoom/assets/icon-128x128.png?rev=1370040";}s:7:"banners";a:1:{s:2:"1x";s:84:"https://ps.w.org/social-icons-widget-by-wpzoom/assets/banner-772x250.png?rev=1370040";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.8";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}s:31:"wp-google-maps/wpGoogleMaps.php";O:8:"stdClass":12:{s:2:"id";s:28:"w.org/plugins/wp-google-maps";s:4:"slug";s:14:"wp-google-maps";s:6:"plugin";s:31:"wp-google-maps/wpGoogleMaps.php";s:11:"new_version";s:7:"7.10.35";s:3:"url";s:45:"https://wordpress.org/plugins/wp-google-maps/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/wp-google-maps.zip";s:5:"icons";a:2:{s:2:"2x";s:66:"https://ps.w.org/wp-google-maps/assets/icon-256x256.png?rev=970398";s:2:"1x";s:66:"https://ps.w.org/wp-google-maps/assets/icon-128x128.png?rev=970398";}s:7:"banners";a:1:{s:2:"1x";s:68:"https://ps.w.org/wp-google-maps/assets/banner-772x250.jpg?rev=792293";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.8";s:12:"requires_php";s:3:"5.3";s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:3:{s:51:"advanced-schedule-posts/advanced-schedule-posts.php";O:8:"stdClass":9:{s:2:"id";s:37:"w.org/plugins/advanced-schedule-posts";s:4:"slug";s:23:"advanced-schedule-posts";s:6:"plugin";s:51:"advanced-schedule-posts/advanced-schedule-posts.php";s:11:"new_version";s:5:"1.2.1";s:3:"url";s:54:"https://wordpress.org/plugins/advanced-schedule-posts/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/advanced-schedule-posts.1.2.1.zip";s:5:"icons";a:1:{s:7:"default";s:67:"https://s.w.org/plugins/geopattern-icon/advanced-schedule-posts.svg";}s:7:"banners";a:0:{}s:11:"banners_rtl";a:0:{}}s:19:"akismet/akismet.php";O:8:"stdClass":9:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.8";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:2:{s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";}s:7:"banners";a:1:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(876, '_site_transient_timeout_theme_roots', '1542079595', 'no'),
(877, '_site_transient_theme_roots', 'a:4:{s:5:"ndeso";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no');

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
(42, 20, '_wp_attached_file', '2018/07/PASAMAN.png'),
(43, 20, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1200;s:4:"file";s:19:"2018/07/PASAMAN.png";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"PASAMAN-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:19:"PASAMAN-300x225.png";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:19:"PASAMAN-768x576.png";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:20:"PASAMAN-1024x768.png";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:9:"image/png";}s:14:"mini-thumbnail";a:4:{s:4:"file";s:17:"PASAMAN-50x50.png";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:9:"image/png";}s:5:"slide";a:4:{s:4:"file";s:19:"PASAMAN-640x290.png";s:5:"width";i:640;s:6:"height";i:290;s:9:"mime-type";s:9:"image/png";}s:5:"thumb";a:4:{s:4:"file";s:19:"PASAMAN-600x450.png";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}s:8:"medthumb";a:4:{s:4:"file";s:17:"PASAMAN-80x60.png";s:5:"width";i:80;s:6:"height";i:60;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(46, 22, '_wp_attached_file', '2018/07/cropped-Kabupaten_Pasaman.png'),
(47, 22, '_wp_attachment_context', 'site-icon'),
(48, 22, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:37:"2018/07/cropped-Kabupaten_Pasaman.png";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:37:"cropped-Kabupaten_Pasaman-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:37:"cropped-Kabupaten_Pasaman-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"mini-thumbnail";a:4:{s:4:"file";s:35:"cropped-Kabupaten_Pasaman-50x50.png";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:9:"image/png";}s:5:"slide";a:4:{s:4:"file";s:37:"cropped-Kabupaten_Pasaman-512x290.png";s:5:"width";i:512;s:6:"height";i:290;s:9:"mime-type";s:9:"image/png";}s:5:"thumb";a:4:{s:4:"file";s:37:"cropped-Kabupaten_Pasaman-512x450.png";s:5:"width";i:512;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}s:8:"medthumb";a:4:{s:4:"file";s:35:"cropped-Kabupaten_Pasaman-80x60.png";s:5:"width";i:80;s:6:"height";i:60;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-270";a:4:{s:4:"file";s:37:"cropped-Kabupaten_Pasaman-270x270.png";s:5:"width";i:270;s:6:"height";i:270;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-192";a:4:{s:4:"file";s:37:"cropped-Kabupaten_Pasaman-192x192.png";s:5:"width";i:192;s:6:"height";i:192;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-180";a:4:{s:4:"file";s:37:"cropped-Kabupaten_Pasaman-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"site_icon-32";a:4:{s:4:"file";s:35:"cropped-Kabupaten_Pasaman-32x32.png";s:5:"width";i:32;s:6:"height";i:32;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(76, 27, '_menu_item_type', 'custom'),
(77, 27, '_menu_item_menu_item_parent', '0'),
(78, 27, '_menu_item_object_id', '27'),
(79, 27, '_menu_item_object', 'custom'),
(80, 27, '_menu_item_target', ''),
(81, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(82, 27, '_menu_item_xfn', ''),
(83, 27, '_menu_item_url', 'http://localhost/websontang/'),
(96, 31, '_menu_item_type', 'post_type_archive'),
(97, 31, '_menu_item_menu_item_parent', '0'),
(98, 31, '_menu_item_object_id', '0'),
(99, 31, '_menu_item_object', 'kades'),
(100, 31, '_menu_item_target', ''),
(101, 31, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(102, 31, '_menu_item_xfn', ''),
(103, 31, '_menu_item_url', ''),
(119, 40, '_edit_last', '1'),
(120, 40, '_edit_lock', '1533230297:1'),
(121, 40, '_lokasi', 'Gilingan Padi'),
(122, 40, '_koordinator', 'Yunia Habsari'),
(174, 43, '_edit_last', '1'),
(175, 43, '_edit_lock', '1533230385:1'),
(176, 43, '_lokasi', 'Kantor Wali Nagari'),
(177, 43, '_koordinator', 'Puskesmas Tapus'),
(201, 50, '_edit_last', '1'),
(202, 50, '_edit_lock', '1533015448:1'),
(228, 54, '_wp_attached_file', '2018/07/IMG-20180512-WA0002-4.jpg'),
(229, 54, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:961;s:6:"height";i:669;s:4:"file";s:33:"2018/07/IMG-20180512-WA0002-4.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"IMG-20180512-WA0002-4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"IMG-20180512-WA0002-4-300x209.jpg";s:5:"width";i:300;s:6:"height";i:209;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:33:"IMG-20180512-WA0002-4-768x535.jpg";s:5:"width";i:768;s:6:"height";i:535;s:9:"mime-type";s:10:"image/jpeg";}s:14:"mini-thumbnail";a:4:{s:4:"file";s:31:"IMG-20180512-WA0002-4-50x50.jpg";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}s:5:"slide";a:4:{s:4:"file";s:33:"IMG-20180512-WA0002-4-640x290.jpg";s:5:"width";i:640;s:6:"height";i:290;s:9:"mime-type";s:10:"image/jpeg";}s:5:"thumb";a:4:{s:4:"file";s:33:"IMG-20180512-WA0002-4-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:8:"medthumb";a:4:{s:4:"file";s:31:"IMG-20180512-WA0002-4-80x60.jpg";s:5:"width";i:80;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(232, 56, '_wp_attached_file', '2018/07/Kabupaten_Pasaman-1.png'),
(233, 56, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:350;s:6:"height";i:350;s:4:"file";s:31:"2018/07/Kabupaten_Pasaman-1.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"Kabupaten_Pasaman-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:31:"Kabupaten_Pasaman-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"mini-thumbnail";a:4:{s:4:"file";s:29:"Kabupaten_Pasaman-1-50x50.png";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:9:"image/png";}s:5:"slide";a:4:{s:4:"file";s:31:"Kabupaten_Pasaman-1-350x290.png";s:5:"width";i:350;s:6:"height";i:290;s:9:"mime-type";s:9:"image/png";}s:8:"medthumb";a:4:{s:4:"file";s:29:"Kabupaten_Pasaman-1-80x60.png";s:5:"width";i:80;s:6:"height";i:60;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(235, 57, '_wp_attached_file', '2018/07/496px-west_sumatra_coa-svg-2.png'),
(236, 57, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:496;s:6:"height";i:567;s:4:"file";s:40:"2018/07/496px-west_sumatra_coa-svg-2.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:40:"496px-west_sumatra_coa-svg-2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:40:"496px-west_sumatra_coa-svg-2-262x300.png";s:5:"width";i:262;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"mini-thumbnail";a:4:{s:4:"file";s:38:"496px-west_sumatra_coa-svg-2-50x50.png";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:9:"image/png";}s:5:"slide";a:4:{s:4:"file";s:40:"496px-west_sumatra_coa-svg-2-496x290.png";s:5:"width";i:496;s:6:"height";i:290;s:9:"mime-type";s:9:"image/png";}s:5:"thumb";a:4:{s:4:"file";s:40:"496px-west_sumatra_coa-svg-2-496x450.png";s:5:"width";i:496;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}s:8:"medthumb";a:4:{s:4:"file";s:38:"496px-west_sumatra_coa-svg-2-80x60.png";s:5:"width";i:80;s:6:"height";i:60;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(237, 57, '_edit_lock', '1531807604:1'),
(298, 80, '_wp_attached_file', '2018/07/logo-kusewa-1.png'),
(299, 80, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1946;s:6:"height";i:671;s:4:"file";s:25:"2018/07/logo-kusewa-1.png";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"logo-kusewa-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:25:"logo-kusewa-1-300x103.png";s:5:"width";i:300;s:6:"height";i:103;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:25:"logo-kusewa-1-768x265.png";s:5:"width";i:768;s:6:"height";i:265;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:26:"logo-kusewa-1-1024x353.png";s:5:"width";i:1024;s:6:"height";i:353;s:9:"mime-type";s:9:"image/png";}s:14:"mini-thumbnail";a:4:{s:4:"file";s:23:"logo-kusewa-1-50x50.png";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:9:"image/png";}s:5:"slide";a:4:{s:4:"file";s:25:"logo-kusewa-1-640x290.png";s:5:"width";i:640;s:6:"height";i:290;s:9:"mime-type";s:9:"image/png";}s:5:"thumb";a:4:{s:4:"file";s:25:"logo-kusewa-1-600x450.png";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}s:8:"medthumb";a:4:{s:4:"file";s:23:"logo-kusewa-1-80x60.png";s:5:"width";i:80;s:6:"height";i:60;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(303, 80, '_edit_lock', '1531885263:1'),
(384, 87, '_menu_item_type', 'custom'),
(385, 87, '_menu_item_menu_item_parent', '0'),
(386, 87, '_menu_item_object_id', '87'),
(387, 87, '_menu_item_object', 'custom'),
(388, 87, '_menu_item_target', ''),
(389, 87, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(390, 87, '_menu_item_xfn', ''),
(391, 87, '_menu_item_url', 'http://localhost/websontang'),
(393, 88, '_menu_item_type', 'custom'),
(394, 88, '_menu_item_menu_item_parent', '87'),
(395, 88, '_menu_item_object_id', '88'),
(396, 88, '_menu_item_object', 'custom'),
(397, 88, '_menu_item_target', ''),
(398, 88, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(399, 88, '_menu_item_xfn', ''),
(400, 88, '_menu_item_url', 'http://localhost/websontang/kades/'),
(402, 89, '_menu_item_type', 'custom'),
(403, 89, '_menu_item_menu_item_parent', '87'),
(404, 89, '_menu_item_object_id', '89'),
(405, 89, '_menu_item_object', 'custom'),
(406, 89, '_menu_item_target', ''),
(407, 89, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(408, 89, '_menu_item_xfn', ''),
(409, 89, '_menu_item_url', 'http://localhost/websontang/opini'),
(411, 90, '_menu_item_type', 'custom'),
(412, 90, '_menu_item_menu_item_parent', '0'),
(413, 90, '_menu_item_object_id', '90'),
(414, 90, '_menu_item_object', 'custom'),
(415, 90, '_menu_item_target', ''),
(416, 90, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(417, 90, '_menu_item_xfn', ''),
(418, 90, '_menu_item_url', 'http://localhost/websontang/#'),
(422, 92, '_menu_item_type', 'custom'),
(423, 92, '_menu_item_menu_item_parent', '0'),
(424, 92, '_menu_item_object_id', '92'),
(425, 92, '_menu_item_object', 'custom'),
(426, 92, '_menu_item_target', ''),
(427, 92, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(428, 92, '_menu_item_xfn', ''),
(429, 92, '_menu_item_url', 'http://localhost/websontang/pengumuman'),
(440, 96, '_menu_item_type', 'custom'),
(441, 96, '_menu_item_menu_item_parent', '90'),
(442, 96, '_menu_item_object_id', '96'),
(443, 96, '_menu_item_object', 'custom'),
(444, 96, '_menu_item_target', ''),
(445, 96, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(446, 96, '_menu_item_xfn', ''),
(447, 96, '_menu_item_url', 'http://localhost/websontang/agenda'),
(511, 99, '_menu_item_type', 'custom'),
(512, 99, '_menu_item_menu_item_parent', '90'),
(513, 99, '_menu_item_object_id', '99'),
(514, 99, '_menu_item_object', 'custom'),
(515, 99, '_menu_item_target', ''),
(516, 99, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(517, 99, '_menu_item_xfn', ''),
(518, 99, '_menu_item_url', 'http://localhost/websontang/pembangunan'),
(519, 100, '_menu_item_type', 'custom'),
(520, 100, '_menu_item_menu_item_parent', '90'),
(521, 100, '_menu_item_object_id', '100'),
(522, 100, '_menu_item_object', 'custom'),
(523, 100, '_menu_item_target', ''),
(524, 100, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(525, 100, '_menu_item_xfn', ''),
(526, 100, '_menu_item_url', 'http://localhost/websontang/layanan'),
(528, 101, '_menu_item_type', 'custom'),
(529, 101, '_menu_item_menu_item_parent', '0'),
(530, 101, '_menu_item_object_id', '101'),
(531, 101, '_menu_item_object', 'custom'),
(532, 101, '_menu_item_target', ''),
(533, 101, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(534, 101, '_menu_item_xfn', ''),
(535, 101, '_menu_item_url', 'http://localhost/websontang'),
(537, 102, '_menu_item_type', 'custom'),
(538, 102, '_menu_item_menu_item_parent', '101'),
(539, 102, '_menu_item_object_id', '102'),
(540, 102, '_menu_item_object', 'custom'),
(541, 102, '_menu_item_target', ''),
(542, 102, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(543, 102, '_menu_item_xfn', ''),
(544, 102, '_menu_item_url', 'http://localhost/websontang/galeri'),
(570, 104, '_menu_item_type', 'custom'),
(571, 104, '_menu_item_menu_item_parent', '101'),
(572, 104, '_menu_item_object_id', '104'),
(573, 104, '_menu_item_object', 'custom'),
(574, 104, '_menu_item_target', ''),
(575, 104, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(576, 104, '_menu_item_xfn', ''),
(577, 104, '_menu_item_url', 'http://localhost/websontang/video'),
(579, 105, '_menu_item_type', 'custom'),
(580, 105, '_menu_item_menu_item_parent', '90'),
(581, 105, '_menu_item_object_id', '105'),
(582, 105, '_menu_item_object', 'custom'),
(583, 105, '_menu_item_target', ''),
(584, 105, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(585, 105, '_menu_item_xfn', ''),
(586, 105, '_menu_item_url', 'http://localhost/websontang/produk-desa'),
(607, 107, '_menu_item_type', 'custom'),
(608, 107, '_menu_item_menu_item_parent', '0'),
(609, 107, '_menu_item_object_id', '107'),
(610, 107, '_menu_item_object', 'custom'),
(611, 107, '_menu_item_target', ''),
(612, 107, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(613, 107, '_menu_item_xfn', ''),
(614, 107, '_menu_item_url', 'http://localhost/websontang'),
(618, 109, '_menu_item_type', 'custom'),
(619, 109, '_menu_item_menu_item_parent', '107'),
(620, 109, '_menu_item_object_id', '109'),
(621, 109, '_menu_item_object', 'custom'),
(622, 109, '_menu_item_target', ''),
(623, 109, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(624, 109, '_menu_item_xfn', ''),
(625, 109, '_menu_item_url', 'http://localhost/websontang/dana-desa'),
(735, 114, '_menu_item_type', 'custom'),
(736, 114, '_menu_item_menu_item_parent', '107'),
(737, 114, '_menu_item_object_id', '114'),
(738, 114, '_menu_item_object', 'custom'),
(739, 114, '_menu_item_target', ''),
(740, 114, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(741, 114, '_menu_item_xfn', ''),
(742, 114, '_menu_item_url', 'http://localhost/websontang/laporan'),
(749, 117, '_edit_last', '1'),
(750, 117, '_edit_lock', '1532399606:1'),
(751, 117, '_lokasi', 'Napolen'),
(752, 117, '_koordinator', 'Icha'),
(793, 117, 'hasp_expire_enable', '0'),
(794, 117, 'hasp_expire_date', ''),
(795, 117, 'hasp_overwrite_enable', ''),
(796, 117, 'hasp_overwrite_post_id', ''),
(837, 27, 'hasp_expire_enable', '0'),
(838, 27, 'hasp_expire_date', ''),
(839, 27, 'hasp_overwrite_enable', ''),
(840, 27, 'hasp_overwrite_post_id', ''),
(841, 92, 'hasp_expire_enable', '0'),
(842, 92, 'hasp_expire_date', ''),
(843, 92, 'hasp_overwrite_enable', ''),
(844, 92, 'hasp_overwrite_post_id', ''),
(845, 90, 'hasp_expire_enable', '0'),
(846, 90, 'hasp_expire_date', ''),
(847, 90, 'hasp_overwrite_enable', ''),
(848, 90, 'hasp_overwrite_post_id', ''),
(849, 96, 'hasp_expire_enable', '0'),
(850, 96, 'hasp_expire_date', ''),
(851, 96, 'hasp_overwrite_enable', ''),
(852, 96, 'hasp_overwrite_post_id', ''),
(853, 99, 'hasp_expire_enable', '0'),
(854, 99, 'hasp_expire_date', ''),
(855, 99, 'hasp_overwrite_enable', ''),
(856, 99, 'hasp_overwrite_post_id', ''),
(857, 100, 'hasp_expire_enable', '0'),
(858, 100, 'hasp_expire_date', ''),
(859, 100, 'hasp_overwrite_enable', ''),
(860, 100, 'hasp_overwrite_post_id', ''),
(861, 105, 'hasp_expire_enable', '0'),
(862, 105, 'hasp_expire_date', ''),
(863, 105, 'hasp_overwrite_enable', ''),
(864, 105, 'hasp_overwrite_post_id', ''),
(865, 87, 'hasp_expire_enable', '0'),
(866, 87, 'hasp_expire_date', ''),
(867, 87, 'hasp_overwrite_enable', ''),
(868, 87, 'hasp_overwrite_post_id', ''),
(869, 88, 'hasp_expire_enable', '0'),
(870, 88, 'hasp_expire_date', ''),
(871, 88, 'hasp_overwrite_enable', ''),
(872, 88, 'hasp_overwrite_post_id', ''),
(873, 89, 'hasp_expire_enable', '0'),
(874, 89, 'hasp_expire_date', ''),
(875, 89, 'hasp_overwrite_enable', ''),
(876, 89, 'hasp_overwrite_post_id', ''),
(877, 101, 'hasp_expire_enable', '0'),
(878, 101, 'hasp_expire_date', ''),
(879, 101, 'hasp_overwrite_enable', ''),
(880, 101, 'hasp_overwrite_post_id', ''),
(881, 102, 'hasp_expire_enable', '0'),
(882, 102, 'hasp_expire_date', ''),
(883, 102, 'hasp_overwrite_enable', ''),
(884, 102, 'hasp_overwrite_post_id', ''),
(885, 104, 'hasp_expire_enable', '0'),
(886, 104, 'hasp_expire_date', ''),
(887, 104, 'hasp_overwrite_enable', ''),
(888, 104, 'hasp_overwrite_post_id', ''),
(889, 107, 'hasp_expire_enable', '0'),
(890, 107, 'hasp_expire_date', ''),
(891, 107, 'hasp_overwrite_enable', ''),
(892, 107, 'hasp_overwrite_post_id', ''),
(893, 109, 'hasp_expire_enable', '0'),
(894, 109, 'hasp_expire_date', ''),
(895, 109, 'hasp_overwrite_enable', ''),
(896, 109, 'hasp_overwrite_post_id', ''),
(897, 114, 'hasp_expire_enable', '0'),
(898, 114, 'hasp_expire_date', ''),
(899, 114, 'hasp_overwrite_enable', ''),
(900, 114, 'hasp_overwrite_post_id', ''),
(916, 125, '_edit_last', '1'),
(917, 125, '_edit_lock', '1533015526:1'),
(918, 125, 'hasp_expire_enable', '0'),
(919, 125, 'hasp_expire_date', ''),
(920, 125, 'hasp_overwrite_enable', ''),
(921, 125, 'hasp_overwrite_post_id', ''),
(922, 127, '_edit_last', '1'),
(923, 127, '_edit_lock', '1533015488:1'),
(924, 127, 'hasp_expire_enable', '0'),
(925, 127, 'hasp_expire_date', ''),
(926, 127, 'hasp_overwrite_enable', ''),
(927, 127, 'hasp_overwrite_post_id', ''),
(928, 129, '_edit_last', '1'),
(929, 129, '_edit_lock', '1534754813:1'),
(930, 129, '_thumbnail_id', '295'),
(931, 129, 'hasp_expire_enable', '0'),
(932, 129, 'hasp_expire_date', ''),
(933, 129, 'hasp_overwrite_enable', ''),
(934, 129, 'hasp_overwrite_post_id', ''),
(942, 129, '_layanan', 'Kantor Wali Nagari'),
(943, 129, '_alamat', 'Sontang'),
(944, 129, '_telepon', '78965'),
(945, 129, '_buka', '07.00'),
(946, 129, '_tutup', '16.00'),
(992, 142, '_wp_attached_file', '2018/07/WEB.png'),
(993, 142, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:679;s:6:"height";i:199;s:4:"file";s:15:"2018/07/WEB.png";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"WEB-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:14:"WEB-300x88.png";s:5:"width";i:300;s:6:"height";i:88;s:9:"mime-type";s:9:"image/png";}s:14:"mini-thumbnail";a:4:{s:4:"file";s:13:"WEB-50x50.png";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:9:"image/png";}s:5:"slide";a:4:{s:4:"file";s:15:"WEB-640x199.png";s:5:"width";i:640;s:6:"height";i:199;s:9:"mime-type";s:9:"image/png";}s:5:"thumb";a:4:{s:4:"file";s:15:"WEB-600x199.png";s:5:"width";i:600;s:6:"height";i:199;s:9:"mime-type";s:9:"image/png";}s:8:"medthumb";a:4:{s:4:"file";s:13:"WEB-80x60.png";s:5:"width";i:80;s:6:"height";i:60;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:15:"WEB-300x199.png";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:1;}s:18:"woocommerce_single";a:4:{s:4:"file";s:15:"WEB-600x176.png";s:5:"width";i:600;s:6:"height";i:176;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:15:"WEB-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:15:"WEB-300x199.png";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:15:"WEB-600x176.png";s:5:"width";i:600;s:6:"height";i:176;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:15:"WEB-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(994, 142, '_edit_lock', '1532105854:1'),
(995, 143, '_wp_attached_file', '2018/07/DSA.png'),
(996, 143, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:548;s:6:"height";i:75;s:4:"file";s:15:"2018/07/DSA.png";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"DSA-150x75.png";s:5:"width";i:150;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:14:"DSA-300x41.png";s:5:"width";i:300;s:6:"height";i:41;s:9:"mime-type";s:9:"image/png";}s:14:"mini-thumbnail";a:4:{s:4:"file";s:13:"DSA-50x50.png";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:9:"image/png";}s:8:"medthumb";a:4:{s:4:"file";s:13:"DSA-80x60.png";s:5:"width";i:80;s:6:"height";i:60;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:14:"DSA-300x75.png";s:5:"width";i:300;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:1;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:14:"DSA-100x75.png";s:5:"width";i:100;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:14:"DSA-300x75.png";s:5:"width";i:300;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:14:"DSA-100x75.png";s:5:"width";i:100;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(997, 143, '_edit_lock', '1532105531:1'),
(1001, 145, '_wc_review_count', '1'),
(1002, 145, '_wc_rating_count', 'a:0:{}'),
(1003, 145, '_wc_average_rating', '0'),
(1004, 145, '_edit_last', '1'),
(1005, 145, '_edit_lock', '1532166362:1'),
(1006, 146, '_wp_attached_file', '2018/07/Kakao-2.jpg'),
(1007, 146, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:302;s:6:"height";i:167;s:4:"file";s:19:"2018/07/Kakao-2.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"Kakao-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"Kakao-2-300x166.jpg";s:5:"width";i:300;s:6:"height";i:166;s:9:"mime-type";s:10:"image/jpeg";}s:14:"mini-thumbnail";a:4:{s:4:"file";s:17:"Kakao-2-50x50.jpg";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}s:8:"medthumb";a:4:{s:4:"file";s:17:"Kakao-2-80x60.jpg";s:5:"width";i:80;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:19:"Kakao-2-300x167.jpg";s:5:"width";i:300;s:6:"height";i:167;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:19:"Kakao-2-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:19:"Kakao-2-300x167.jpg";s:5:"width";i:300;s:6:"height";i:167;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"Kakao-2-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1008, 147, '_wp_attached_file', '2018/07/Kakao-3.jpg'),
(1009, 147, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:273;s:6:"height";i:185;s:4:"file";s:19:"2018/07/Kakao-3.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"Kakao-3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"mini-thumbnail";a:4:{s:4:"file";s:17:"Kakao-3-50x50.jpg";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}s:8:"medthumb";a:4:{s:4:"file";s:17:"Kakao-3-80x60.jpg";s:5:"width";i:80;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:19:"Kakao-3-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"Kakao-3-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1010, 148, '_wp_attached_file', '2018/07/Kakao.jpg'),
(1011, 148, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:275;s:6:"height";i:183;s:4:"file";s:17:"2018/07/Kakao.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"Kakao-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"mini-thumbnail";a:4:{s:4:"file";s:15:"Kakao-50x50.jpg";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}s:8:"medthumb";a:4:{s:4:"file";s:15:"Kakao-80x60.jpg";s:5:"width";i:80;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:17:"Kakao-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:17:"Kakao-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1012, 145, '_sku', 'KKO01'),
(1013, 145, '_regular_price', '50.000'),
(1014, 145, '_sale_price', '45.000'),
(1015, 145, '_sale_price_dates_from', '1545609600'),
(1016, 145, '_sale_price_dates_to', '1546214400'),
(1017, 145, 'total_sales', '6'),
(1018, 145, '_tax_status', 'taxable'),
(1019, 145, '_tax_class', ''),
(1020, 145, '_manage_stock', 'yes'),
(1021, 145, '_backorders', 'no'),
(1022, 145, '_sold_individually', 'no'),
(1023, 145, '_weight', '20'),
(1024, 145, '_length', ''),
(1025, 145, '_width', ''),
(1026, 145, '_height', ''),
(1027, 145, '_upsell_ids', 'a:0:{}'),
(1028, 145, '_crosssell_ids', 'a:0:{}'),
(1029, 145, '_purchase_note', ''),
(1030, 145, '_default_attributes', 'a:0:{}'),
(1031, 145, '_virtual', 'no'),
(1032, 145, '_downloadable', 'no'),
(1033, 145, '_product_image_gallery', '146,144'),
(1034, 145, '_download_limit', '-1'),
(1035, 145, '_download_expiry', '-1'),
(1036, 145, '_stock', '44'),
(1037, 145, '_stock_status', 'instock'),
(1038, 145, '_product_version', '3.4.3'),
(1039, 145, '_price', '50.000'),
(1040, 145, '_thumbnail_id', '148'),
(1041, 145, 'hasp_expire_enable', '0'),
(1042, 145, 'hasp_expire_date', ''),
(1043, 145, 'hasp_overwrite_enable', ''),
(1044, 145, 'hasp_overwrite_post_id', ''),
(1045, 145, '_product_attributes', 'a:1:{s:6:"ukuran";a:6:{s:4:"name";s:6:"Ukuran";s:5:"value";s:22:"Kecil | Sedang | Besar";s:8:"position";i:0;s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:0;}}'),
(1046, 151, '_order_key', 'wc_order_5b5302aa7a88e'),
(1047, 151, '_customer_user', '0'),
(1048, 151, '_payment_method', 'bacs'),
(1049, 151, '_payment_method_title', 'Direct bank transfer'),
(1050, 151, '_transaction_id', ''),
(1051, 151, '_customer_ip_address', '::1'),
(1052, 151, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/66.0.3359.181 safari/537.36'),
(1053, 151, '_created_via', 'checkout'),
(1054, 151, '_date_completed', ''),
(1055, 151, '_completed_date', ''),
(1056, 151, '_date_paid', ''),
(1057, 151, '_paid_date', ''),
(1058, 151, '_cart_hash', 'f17a0e1b0bf7063001abdf72262e1e54'),
(1059, 151, '_billing_first_name', 'Son'),
(1060, 151, '_billing_last_name', 'Cuba'),
(1061, 151, '_billing_company', ''),
(1062, 151, '_billing_address_1', 'Jalan Hasanuddin'),
(1063, 151, '_billing_address_2', ''),
(1064, 151, '_billing_city', 'Bandung'),
(1065, 151, '_billing_state', 'JB'),
(1066, 151, '_billing_postcode', '23456'),
(1067, 151, '_billing_country', 'ID'),
(1068, 151, '_billing_email', 'tutu@gmail.com'),
(1069, 151, '_billing_phone', '081234567345'),
(1070, 151, '_shipping_first_name', 'Son'),
(1071, 151, '_shipping_last_name', 'Cuba'),
(1072, 151, '_shipping_company', ''),
(1073, 151, '_shipping_address_1', 'Jalan Hasanuddin'),
(1074, 151, '_shipping_address_2', ''),
(1075, 151, '_shipping_city', 'Bandung'),
(1076, 151, '_shipping_state', 'JB'),
(1077, 151, '_shipping_postcode', '23456'),
(1078, 151, '_shipping_country', 'ID'),
(1079, 151, '_order_currency', 'IDR'),
(1080, 151, '_cart_discount', '0'),
(1081, 151, '_cart_discount_tax', '0'),
(1082, 151, '_order_shipping', '0.00'),
(1083, 151, '_order_shipping_tax', '0'),
(1084, 151, '_order_tax', '0'),
(1085, 151, '_order_total', '100.00'),
(1086, 151, '_order_version', '3.4.3'),
(1087, 151, '_prices_include_tax', 'no'),
(1088, 151, '_billing_address_index', 'Son Cuba  Jalan Hasanuddin  Bandung JB 23456 ID tutu@gmail.com 081234567345'),
(1089, 151, '_shipping_address_index', 'Son Cuba  Jalan Hasanuddin  Bandung JB 23456 ID'),
(1090, 151, '_recorded_sales', 'yes'),
(1091, 151, '_recorded_coupon_usage_counts', 'yes'),
(1092, 151, '_order_stock_reduced', 'yes'),
(1093, 152, '_order_key', 'wc_order_5b53038695a06'),
(1094, 152, '_customer_user', '0'),
(1095, 152, '_payment_method', 'bacs'),
(1096, 152, '_payment_method_title', 'Direct bank transfer'),
(1097, 152, '_transaction_id', ''),
(1098, 152, '_customer_ip_address', '::1'),
(1099, 152, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/66.0.3359.181 safari/537.36'),
(1100, 152, '_created_via', 'checkout'),
(1101, 152, '_date_completed', ''),
(1102, 152, '_completed_date', ''),
(1103, 152, '_date_paid', '1532167166'),
(1104, 152, '_paid_date', '2018-07-21 09:59:26'),
(1105, 152, '_cart_hash', 'b17d3fde94b00f1823461443a087243c'),
(1106, 152, '_billing_first_name', 'Lina'),
(1107, 152, '_billing_last_name', 'Huta'),
(1108, 152, '_billing_company', ''),
(1109, 152, '_billing_address_1', 'Yayaya'),
(1110, 152, '_billing_address_2', ''),
(1111, 152, '_billing_city', 'Medan'),
(1112, 152, '_billing_state', 'SU'),
(1113, 152, '_billing_postcode', '23446'),
(1114, 152, '_billing_country', 'ID'),
(1115, 152, '_billing_email', 'yuhu@gmail.com'),
(1116, 152, '_billing_phone', '081234565432'),
(1117, 152, '_shipping_first_name', 'Lina'),
(1118, 152, '_shipping_last_name', 'Huta'),
(1119, 152, '_shipping_company', ''),
(1120, 152, '_shipping_address_1', 'Yayaya'),
(1121, 152, '_shipping_address_2', ''),
(1122, 152, '_shipping_city', 'Medan'),
(1123, 152, '_shipping_state', 'SU'),
(1124, 152, '_shipping_postcode', '23446'),
(1125, 152, '_shipping_country', 'ID'),
(1126, 152, '_order_currency', 'IDR'),
(1127, 152, '_cart_discount', '0'),
(1128, 152, '_cart_discount_tax', '0'),
(1129, 152, '_order_shipping', '0'),
(1130, 152, '_order_shipping_tax', '0'),
(1131, 152, '_order_tax', '0'),
(1132, 152, '_order_total', '200.00'),
(1133, 152, '_order_version', '3.4.3'),
(1134, 152, '_prices_include_tax', 'no'),
(1135, 152, '_billing_address_index', 'Lina Huta  Yayaya  Medan SU 23446 ID yuhu@gmail.com 081234565432'),
(1136, 152, '_shipping_address_index', 'Lina Huta  Yayaya  Medan SU 23446 ID'),
(1137, 152, '_recorded_sales', 'yes'),
(1138, 152, '_recorded_coupon_usage_counts', 'yes'),
(1139, 152, '_order_stock_reduced', 'yes'),
(1140, 152, '_download_permissions_granted', 'yes'),
(1141, 152, '_edit_lock', '1532167097:1'),
(1142, 152, '_edit_last', '1'),
(1143, 153, '_edit_last', '1'),
(1144, 153, '_edit_lock', '1532167271:1'),
(1145, 153, 'hasp_expire_enable', '0'),
(1146, 153, 'hasp_expire_date', ''),
(1147, 153, 'hasp_overwrite_enable', ''),
(1148, 153, 'hasp_overwrite_post_id', ''),
(1149, 153, 'discount_type', 'percent'),
(1150, 153, 'coupon_amount', '5'),
(1151, 153, 'individual_use', 'no'),
(1152, 153, 'product_ids', ''),
(1153, 153, 'exclude_product_ids', ''),
(1154, 153, 'usage_limit', '0'),
(1155, 153, 'usage_limit_per_user', '0'),
(1156, 153, 'limit_usage_to_x_items', '0'),
(1157, 153, 'usage_count', '0'),
(1158, 153, 'date_expires', '1532995200'),
(1159, 153, 'expiry_date', '2018-07-31'),
(1160, 153, 'free_shipping', 'yes'),
(1161, 153, 'product_categories', 'a:0:{}'),
(1162, 153, 'exclude_product_categories', 'a:0:{}'),
(1163, 153, 'exclude_sale_items', 'no'),
(1164, 153, 'minimum_amount', ''),
(1165, 153, 'maximum_amount', ''),
(1166, 153, 'customer_email', 'a:0:{}'),
(1171, 158, '_edit_last', '1'),
(1172, 158, '_edit_lock', '1533011051:1'),
(1173, 158, '_wp_page_template', 'default'),
(1186, 158, 'hasp_expire_enable', '0'),
(1187, 158, 'hasp_expire_date', ''),
(1188, 158, 'hasp_overwrite_enable', ''),
(1189, 158, 'hasp_overwrite_post_id', ''),
(1190, 164, '_edit_last', '1'),
(1191, 164, '_edit_lock', '1532400417:1'),
(1192, 164, 'hasp_expire_enable', '0'),
(1193, 164, 'hasp_expire_date', ''),
(1194, 164, 'hasp_overwrite_enable', '0'),
(1195, 164, 'hasp_overwrite_post_id', NULL),
(1196, 164, '_lokasi', 'Sontang Cubadak'),
(1197, 164, '_koordinator', 'QWERTY'),
(1278, 40, 'hasp_expire_enable', '0'),
(1279, 40, 'hasp_expire_date', ''),
(1280, 40, 'hasp_overwrite_enable', ''),
(1281, 40, 'hasp_overwrite_post_id', ''),
(1282, 172, '_menu_item_type', 'custom'),
(1283, 172, '_menu_item_menu_item_parent', '0'),
(1284, 172, '_menu_item_object_id', '172'),
(1285, 172, '_menu_item_object', 'custom'),
(1286, 172, '_menu_item_target', ''),
(1287, 172, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1288, 172, '_menu_item_xfn', ''),
(1289, 172, '_menu_item_url', 'http://localhost/websontang'),
(1309, 172, 'hasp_expire_enable', '0'),
(1310, 172, 'hasp_expire_date', ''),
(1311, 172, 'hasp_overwrite_enable', ''),
(1312, 172, 'hasp_overwrite_post_id', ''),
(1317, 178, '_menu_item_type', 'post_type'),
(1318, 178, '_menu_item_menu_item_parent', '172'),
(1319, 178, '_menu_item_object_id', '158'),
(1320, 178, '_menu_item_object', 'page'),
(1321, 178, '_menu_item_target', ''),
(1322, 178, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1323, 178, '_menu_item_xfn', ''),
(1324, 178, '_menu_item_url', ''),
(1326, 178, 'hasp_expire_enable', '0'),
(1327, 178, 'hasp_expire_date', ''),
(1328, 178, 'hasp_overwrite_enable', ''),
(1329, 178, 'hasp_overwrite_post_id', ''),
(1330, 179, '_edit_last', '1'),
(1331, 179, '_edit_lock', '1533015893:1'),
(1332, 179, '_wp_page_template', 'default'),
(1333, 180, 'hasp_expire_enable', '0'),
(1334, 180, 'hasp_expire_date', ''),
(1335, 180, 'hasp_overwrite_enable', ''),
(1336, 180, 'hasp_overwrite_post_id', ''),
(1337, 180, '_menu_item_type', 'post_type'),
(1338, 180, '_menu_item_menu_item_parent', '172'),
(1339, 180, '_menu_item_object_id', '179'),
(1340, 180, '_menu_item_object', 'page'),
(1341, 180, '_menu_item_target', ''),
(1342, 180, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1343, 180, '_menu_item_xfn', ''),
(1344, 180, '_menu_item_url', ''),
(1345, 179, 'hasp_expire_enable', '0'),
(1346, 179, 'hasp_expire_date', ''),
(1347, 179, 'hasp_overwrite_enable', ''),
(1348, 179, 'hasp_overwrite_post_id', ''),
(1349, 183, '_menu_item_type', 'post_type'),
(1350, 183, '_menu_item_menu_item_parent', '0'),
(1351, 183, '_menu_item_object_id', '179'),
(1352, 183, '_menu_item_object', 'page'),
(1353, 183, '_menu_item_target', ''),
(1354, 183, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1355, 183, '_menu_item_xfn', ''),
(1356, 183, '_menu_item_url', ''),
(1357, 183, '_menu_item_orphaned', '1533011173'),
(1365, 50, 'hasp_expire_enable', '0'),
(1366, 50, 'hasp_expire_date', ''),
(1367, 50, 'hasp_overwrite_enable', ''),
(1368, 50, 'hasp_overwrite_post_id', ''),
(1554, 197, '_wp_attached_file', '2018/08/Logo-Sontang-Cubadak-Nazhifa.png'),
(1555, 197, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1042;s:6:"height";i:268;s:4:"file";s:40:"2018/08/Logo-Sontang-Cubadak-Nazhifa.png";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:40:"Logo-Sontang-Cubadak-Nazhifa-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:39:"Logo-Sontang-Cubadak-Nazhifa-300x77.png";s:5:"width";i:300;s:6:"height";i:77;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:40:"Logo-Sontang-Cubadak-Nazhifa-768x198.png";s:5:"width";i:768;s:6:"height";i:198;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:41:"Logo-Sontang-Cubadak-Nazhifa-1024x263.png";s:5:"width";i:1024;s:6:"height";i:263;s:9:"mime-type";s:9:"image/png";}s:14:"mini-thumbnail";a:4:{s:4:"file";s:38:"Logo-Sontang-Cubadak-Nazhifa-50x50.png";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:9:"image/png";}s:5:"slide";a:4:{s:4:"file";s:40:"Logo-Sontang-Cubadak-Nazhifa-640x268.png";s:5:"width";i:640;s:6:"height";i:268;s:9:"mime-type";s:9:"image/png";}s:5:"thumb";a:4:{s:4:"file";s:40:"Logo-Sontang-Cubadak-Nazhifa-600x268.png";s:5:"width";i:600;s:6:"height";i:268;s:9:"mime-type";s:9:"image/png";}s:8:"medthumb";a:4:{s:4:"file";s:38:"Logo-Sontang-Cubadak-Nazhifa-80x60.png";s:5:"width";i:80;s:6:"height";i:60;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1556, 197, '_edit_lock', '1533163810:1'),
(1559, 199, '_edit_last', '1'),
(1560, 199, '_edit_lock', '1533166415:1'),
(1561, 199, 'hasp_expire_enable', '0'),
(1562, 199, 'hasp_expire_date', ''),
(1563, 199, 'hasp_overwrite_enable', ''),
(1564, 199, 'hasp_overwrite_post_id', ''),
(1565, 201, '_wp_attached_file', '2018/08/IMG_20180801_142143.jpg'),
(1566, 201, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:4160;s:6:"height";i:3120;s:4:"file";s:31:"2018/08/IMG_20180801_142143.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"IMG_20180801_142143-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"IMG_20180801_142143-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:31:"IMG_20180801_142143-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"IMG_20180801_142143-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"mini-thumbnail";a:4:{s:4:"file";s:29:"IMG_20180801_142143-50x50.jpg";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}s:5:"slide";a:4:{s:4:"file";s:31:"IMG_20180801_142143-640x290.jpg";s:5:"width";i:640;s:6:"height";i:290;s:9:"mime-type";s:10:"image/jpeg";}s:5:"thumb";a:4:{s:4:"file";s:31:"IMG_20180801_142143-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:8:"medthumb";a:4:{s:4:"file";s:29:"IMG_20180801_142143-80x60.jpg";s:5:"width";i:80;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"2";s:6:"credit";s:0:"";s:6:"camera";s:14:"Lenovo A7000-a";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1533133303";s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"3.56";s:3:"iso";s:2:"81";s:13:"shutter_speed";s:8:"0.001921";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1567, 199, '_thumbnail_id', '201'),
(1568, 203, '_edit_last', '1'),
(1569, 203, '_edit_lock', '1533166589:1'),
(1570, 204, '_wp_attached_file', '2018/08/IMG_20180801_142121.jpg'),
(1571, 204, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:4160;s:6:"height";i:3120;s:4:"file";s:31:"2018/08/IMG_20180801_142121.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"IMG_20180801_142121-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"IMG_20180801_142121-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:31:"IMG_20180801_142121-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"IMG_20180801_142121-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"mini-thumbnail";a:4:{s:4:"file";s:29:"IMG_20180801_142121-50x50.jpg";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}s:5:"slide";a:4:{s:4:"file";s:31:"IMG_20180801_142121-640x290.jpg";s:5:"width";i:640;s:6:"height";i:290;s:9:"mime-type";s:10:"image/jpeg";}s:5:"thumb";a:4:{s:4:"file";s:31:"IMG_20180801_142121-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:8:"medthumb";a:4:{s:4:"file";s:29:"IMG_20180801_142121-80x60.jpg";s:5:"width";i:80;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"2";s:6:"credit";s:0:"";s:6:"camera";s:14:"Lenovo A7000-a";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1533133281";s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"3.56";s:3:"iso";s:2:"81";s:13:"shutter_speed";s:8:"0.003742";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1572, 203, '_thumbnail_id', '204'),
(1573, 203, 'hasp_expire_enable', '0'),
(1574, 203, 'hasp_expire_date', ''),
(1575, 203, 'hasp_overwrite_enable', ''),
(1576, 203, 'hasp_overwrite_post_id', ''),
(1577, 206, '_edit_last', '1'),
(1578, 206, '_edit_lock', '1534756706:1'),
(1579, 206, 'hasp_expire_enable', '0'),
(1580, 206, 'hasp_expire_date', ''),
(1581, 206, 'hasp_overwrite_enable', ''),
(1582, 206, 'hasp_overwrite_post_id', ''),
(1584, 209, '_wp_attached_file', '2018/08/IMG-20180629-WA0023.jpg'),
(1585, 209, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1040;s:6:"height";i:585;s:4:"file";s:31:"2018/08/IMG-20180629-WA0023.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"IMG-20180629-WA0023-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"IMG-20180629-WA0023-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:31:"IMG-20180629-WA0023-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"IMG-20180629-WA0023-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:14:"mini-thumbnail";a:4:{s:4:"file";s:29:"IMG-20180629-WA0023-50x50.jpg";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}s:5:"slide";a:4:{s:4:"file";s:31:"IMG-20180629-WA0023-640x290.jpg";s:5:"width";i:640;s:6:"height";i:290;s:9:"mime-type";s:10:"image/jpeg";}s:5:"thumb";a:4:{s:4:"file";s:31:"IMG-20180629-WA0023-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:8:"medthumb";a:4:{s:4:"file";s:29:"IMG-20180629-WA0023-80x60.jpg";s:5:"width";i:80;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1589, 211, '_wp_attached_file', '2018/08/IMG-20180629-WA0018.jpg'),
(1590, 211, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1040;s:6:"height";i:585;s:4:"file";s:31:"2018/08/IMG-20180629-WA0018.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"IMG-20180629-WA0018-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"IMG-20180629-WA0018-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:31:"IMG-20180629-WA0018-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"IMG-20180629-WA0018-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:14:"mini-thumbnail";a:4:{s:4:"file";s:29:"IMG-20180629-WA0018-50x50.jpg";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}s:5:"slide";a:4:{s:4:"file";s:31:"IMG-20180629-WA0018-640x290.jpg";s:5:"width";i:640;s:6:"height";i:290;s:9:"mime-type";s:10:"image/jpeg";}s:5:"thumb";a:4:{s:4:"file";s:31:"IMG-20180629-WA0018-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:8:"medthumb";a:4:{s:4:"file";s:29:"IMG-20180629-WA0018-80x60.jpg";s:5:"width";i:80;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1591, 206, '_thumbnail_id', '209'),
(1599, 218, '_wp_attached_file', '2018/08/YDXJ0449.jpg'),
(1600, 218, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:3202;s:6:"height";i:2401;s:4:"file";s:20:"2018/08/YDXJ0449.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"YDXJ0449-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"YDXJ0449-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"YDXJ0449-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"YDXJ0449-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"mini-thumbnail";a:4:{s:4:"file";s:18:"YDXJ0449-50x50.jpg";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}s:5:"slide";a:4:{s:4:"file";s:20:"YDXJ0449-640x290.jpg";s:5:"width";i:640;s:6:"height";i:290;s:9:"mime-type";s:10:"image/jpeg";}s:5:"thumb";a:4:{s:4:"file";s:20:"YDXJ0449-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:8:"medthumb";a:4:{s:4:"file";s:18:"YDXJ0449-80x60.jpg";s:5:"width";i:80;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"2.8";s:6:"credit";s:0:"";s:6:"camera";s:6:"YDXJ 1";s:7:"caption";s:12:"DCIM101MEDIA";s:17:"created_timestamp";s:10:"1530545969";s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"2.73";s:3:"iso";s:3:"626";s:13:"shutter_speed";s:17:"0.033444816053512";s:5:"title";s:12:"DCIM101MEDIA";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1607, 221, '_edit_last', '1'),
(1608, 221, '_edit_lock', '1534756910:1'),
(1609, 221, 'hasp_expire_enable', '0'),
(1610, 221, 'hasp_expire_date', ''),
(1611, 221, 'hasp_overwrite_enable', ''),
(1612, 221, 'hasp_overwrite_post_id', ''),
(1614, 225, '_wp_attached_file', '2018/08/YDXJ0502.jpg'),
(1615, 225, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:3407;s:6:"height";i:2554;s:4:"file";s:20:"2018/08/YDXJ0502.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"YDXJ0502-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"YDXJ0502-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"YDXJ0502-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"YDXJ0502-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"mini-thumbnail";a:4:{s:4:"file";s:18:"YDXJ0502-50x50.jpg";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}s:5:"slide";a:4:{s:4:"file";s:20:"YDXJ0502-640x290.jpg";s:5:"width";i:640;s:6:"height";i:290;s:9:"mime-type";s:10:"image/jpeg";}s:5:"thumb";a:4:{s:4:"file";s:20:"YDXJ0502-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:8:"medthumb";a:4:{s:4:"file";s:18:"YDXJ0502-80x60.jpg";s:5:"width";i:80;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"2.8";s:6:"credit";s:0:"";s:6:"camera";s:6:"YDXJ 1";s:7:"caption";s:12:"DCIM101MEDIA";s:17:"created_timestamp";s:10:"1530814656";s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"2.73";s:3:"iso";s:3:"112";s:13:"shutter_speed";s:17:"0.033444816053512";s:5:"title";s:12:"DCIM101MEDIA";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1618, 229, '_edit_last', '1'),
(1619, 229, '_edit_lock', '1534756800:1'),
(1620, 229, 'hasp_expire_enable', '0'),
(1621, 229, 'hasp_expire_date', ''),
(1622, 229, 'hasp_overwrite_enable', ''),
(1623, 229, 'hasp_overwrite_post_id', ''),
(1625, 232, '_wp_attached_file', '2018/08/20180720_112500.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1626, 232, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:4608;s:6:"height";i:3456;s:4:"file";s:27:"2018/08/20180720_112500.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"20180720_112500-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"20180720_112500-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:27:"20180720_112500-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:28:"20180720_112500-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"mini-thumbnail";a:4:{s:4:"file";s:25:"20180720_112500-50x50.jpg";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}s:5:"slide";a:4:{s:4:"file";s:27:"20180720_112500-640x290.jpg";s:5:"width";i:640;s:6:"height";i:290;s:9:"mime-type";s:10:"image/jpeg";}s:5:"thumb";a:4:{s:4:"file";s:27:"20180720_112500-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:8:"medthumb";a:4:{s:4:"file";s:25:"20180720_112500-80x60.jpg";s:5:"width";i:80;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"1.7";s:6:"credit";s:0:"";s:6:"camera";s:8:"SM-A530F";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1532085900";s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"3.93";s:3:"iso";s:2:"40";s:13:"shutter_speed";s:18:"0.0024449877750611";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1627, 233, '_wp_attached_file', '2018/08/20180720_113457.jpg'),
(1628, 233, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:4608;s:6:"height";i:3456;s:4:"file";s:27:"2018/08/20180720_113457.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"20180720_113457-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"20180720_113457-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:27:"20180720_113457-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:28:"20180720_113457-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"mini-thumbnail";a:4:{s:4:"file";s:25:"20180720_113457-50x50.jpg";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}s:5:"slide";a:4:{s:4:"file";s:27:"20180720_113457-640x290.jpg";s:5:"width";i:640;s:6:"height";i:290;s:9:"mime-type";s:10:"image/jpeg";}s:5:"thumb";a:4:{s:4:"file";s:27:"20180720_113457-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:8:"medthumb";a:4:{s:4:"file";s:25:"20180720_113457-80x60.jpg";s:5:"width";i:80;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"1.7";s:6:"credit";s:0:"";s:6:"camera";s:8:"SM-A530F";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1532086497";s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"3.93";s:3:"iso";s:2:"40";s:13:"shutter_speed";s:18:"0.0016025641025641";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1629, 234, '_wp_attached_file', '2018/08/20180720_112503.jpg'),
(1630, 234, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:4608;s:6:"height";i:3456;s:4:"file";s:27:"2018/08/20180720_112503.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"20180720_112503-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"20180720_112503-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:27:"20180720_112503-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:28:"20180720_112503-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"mini-thumbnail";a:4:{s:4:"file";s:25:"20180720_112503-50x50.jpg";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}s:5:"slide";a:4:{s:4:"file";s:27:"20180720_112503-640x290.jpg";s:5:"width";i:640;s:6:"height";i:290;s:9:"mime-type";s:10:"image/jpeg";}s:5:"thumb";a:4:{s:4:"file";s:27:"20180720_112503-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:8:"medthumb";a:4:{s:4:"file";s:25:"20180720_112503-80x60.jpg";s:5:"width";i:80;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"1.7";s:6:"credit";s:0:"";s:6:"camera";s:8:"SM-A530F";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1532085903";s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"3.93";s:3:"iso";s:2:"40";s:13:"shutter_speed";s:18:"0.0024449877750611";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1631, 235, '_wp_attached_file', '2018/08/20180720_112640.jpg'),
(1632, 235, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:4608;s:6:"height";i:3456;s:4:"file";s:27:"2018/08/20180720_112640.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"20180720_112640-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"20180720_112640-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:27:"20180720_112640-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:28:"20180720_112640-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"mini-thumbnail";a:4:{s:4:"file";s:25:"20180720_112640-50x50.jpg";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}s:5:"slide";a:4:{s:4:"file";s:27:"20180720_112640-640x290.jpg";s:5:"width";i:640;s:6:"height";i:290;s:9:"mime-type";s:10:"image/jpeg";}s:5:"thumb";a:4:{s:4:"file";s:27:"20180720_112640-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:8:"medthumb";a:4:{s:4:"file";s:25:"20180720_112640-80x60.jpg";s:5:"width";i:80;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"1.7";s:6:"credit";s:0:"";s:6:"camera";s:8:"SM-A530F";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1532086000";s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"3.93";s:3:"iso";s:2:"40";s:13:"shutter_speed";s:18:"0.0021413276231263";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1633, 229, '_thumbnail_id', '235'),
(1635, 237, '_wp_attached_file', '2018/08/20180720_113022.jpg'),
(1636, 237, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:4608;s:6:"height";i:3456;s:4:"file";s:27:"2018/08/20180720_113022.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"20180720_113022-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"20180720_113022-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:27:"20180720_113022-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:28:"20180720_113022-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"mini-thumbnail";a:4:{s:4:"file";s:25:"20180720_113022-50x50.jpg";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}s:5:"slide";a:4:{s:4:"file";s:27:"20180720_113022-640x290.jpg";s:5:"width";i:640;s:6:"height";i:290;s:9:"mime-type";s:10:"image/jpeg";}s:5:"thumb";a:4:{s:4:"file";s:27:"20180720_113022-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:8:"medthumb";a:4:{s:4:"file";s:25:"20180720_113022-80x60.jpg";s:5:"width";i:80;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"1.7";s:6:"credit";s:0:"";s:6:"camera";s:8:"SM-A530F";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1532086222";s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"3.93";s:3:"iso";s:2:"40";s:13:"shutter_speed";s:18:"0.0024570024570025";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1637, 238, '_wp_attached_file', '2018/08/20180720_114434.jpg'),
(1638, 238, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:4608;s:6:"height";i:3456;s:4:"file";s:27:"2018/08/20180720_114434.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"20180720_114434-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"20180720_114434-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:27:"20180720_114434-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:28:"20180720_114434-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"mini-thumbnail";a:4:{s:4:"file";s:25:"20180720_114434-50x50.jpg";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}s:5:"slide";a:4:{s:4:"file";s:27:"20180720_114434-640x290.jpg";s:5:"width";i:640;s:6:"height";i:290;s:9:"mime-type";s:10:"image/jpeg";}s:5:"thumb";a:4:{s:4:"file";s:27:"20180720_114434-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:8:"medthumb";a:4:{s:4:"file";s:25:"20180720_114434-80x60.jpg";s:5:"width";i:80;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"1.7";s:6:"credit";s:0:"";s:6:"camera";s:8:"SM-A530F";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1532087074";s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"3.93";s:3:"iso";s:2:"64";s:13:"shutter_speed";s:4:"0.02";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1639, 239, '_wp_attached_file', '2018/08/20180720_114608.jpg'),
(1640, 239, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:4608;s:6:"height";i:3456;s:4:"file";s:27:"2018/08/20180720_114608.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"20180720_114608-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"20180720_114608-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:27:"20180720_114608-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:28:"20180720_114608-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"mini-thumbnail";a:4:{s:4:"file";s:25:"20180720_114608-50x50.jpg";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}s:5:"slide";a:4:{s:4:"file";s:27:"20180720_114608-640x290.jpg";s:5:"width";i:640;s:6:"height";i:290;s:9:"mime-type";s:10:"image/jpeg";}s:5:"thumb";a:4:{s:4:"file";s:27:"20180720_114608-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:8:"medthumb";a:4:{s:4:"file";s:25:"20180720_114608-80x60.jpg";s:5:"width";i:80;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"1.7";s:6:"credit";s:0:"";s:6:"camera";s:8:"SM-A530F";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1532087168";s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"3.93";s:3:"iso";s:2:"64";s:13:"shutter_speed";s:4:"0.02";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1644, 243, '_wp_attached_file', '2018/08/IMG-20180721-WA0027.jpg'),
(1645, 243, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:581;s:6:"height";i:1032;s:4:"file";s:31:"2018/08/IMG-20180721-WA0027.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"IMG-20180721-WA0027-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"IMG-20180721-WA0027-169x300.jpg";s:5:"width";i:169;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"IMG-20180721-WA0027-576x1024.jpg";s:5:"width";i:576;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:14:"mini-thumbnail";a:4:{s:4:"file";s:29:"IMG-20180721-WA0027-50x50.jpg";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}s:5:"slide";a:4:{s:4:"file";s:31:"IMG-20180721-WA0027-581x290.jpg";s:5:"width";i:581;s:6:"height";i:290;s:9:"mime-type";s:10:"image/jpeg";}s:5:"thumb";a:4:{s:4:"file";s:31:"IMG-20180721-WA0027-581x450.jpg";s:5:"width";i:581;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:8:"medthumb";a:4:{s:4:"file";s:29:"IMG-20180721-WA0027-80x60.jpg";s:5:"width";i:80;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1646, 245, '_edit_last', '1'),
(1647, 245, '_edit_lock', '1534757280:1'),
(1648, 245, 'hasp_expire_enable', '0'),
(1649, 245, 'hasp_expire_date', ''),
(1650, 245, 'hasp_overwrite_enable', ''),
(1651, 245, 'hasp_overwrite_post_id', ''),
(1653, 248, '_wp_attached_file', '2018/08/IMG_3258.jpg'),
(1654, 248, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:6000;s:6:"height";i:4000;s:4:"file";s:20:"2018/08/IMG_3258.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"IMG_3258-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"IMG_3258-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"IMG_3258-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"IMG_3258-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:14:"mini-thumbnail";a:4:{s:4:"file";s:18:"IMG_3258-50x50.jpg";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}s:5:"slide";a:4:{s:4:"file";s:20:"IMG_3258-640x290.jpg";s:5:"width";i:640;s:6:"height";i:290;s:9:"mime-type";s:10:"image/jpeg";}s:5:"thumb";a:4:{s:4:"file";s:20:"IMG_3258-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:8:"medthumb";a:4:{s:4:"file";s:18:"IMG_3258-80x60.jpg";s:5:"width";i:80;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"4.5";s:6:"credit";s:0:"";s:6:"camera";s:14:"Canon EOS 750D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1532101872";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"18";s:3:"iso";s:3:"800";s:13:"shutter_speed";s:17:"0.066666666666667";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1655, 249, '_wp_attached_file', '2018/08/IMG_3251.jpg'),
(1656, 249, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:6000;s:6:"height";i:4000;s:4:"file";s:20:"2018/08/IMG_3251.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"IMG_3251-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"IMG_3251-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"IMG_3251-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"IMG_3251-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:14:"mini-thumbnail";a:4:{s:4:"file";s:18:"IMG_3251-50x50.jpg";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}s:5:"slide";a:4:{s:4:"file";s:20:"IMG_3251-640x290.jpg";s:5:"width";i:640;s:6:"height";i:290;s:9:"mime-type";s:10:"image/jpeg";}s:5:"thumb";a:4:{s:4:"file";s:20:"IMG_3251-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:8:"medthumb";a:4:{s:4:"file";s:18:"IMG_3251-80x60.jpg";s:5:"width";i:80;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"5.6";s:6:"credit";s:0:"";s:6:"camera";s:14:"Canon EOS 750D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1532101762";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"55";s:3:"iso";s:3:"800";s:13:"shutter_speed";s:4:"0.05";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1657, 250, '_wp_attached_file', '2018/08/IMG_3202.jpg'),
(1658, 250, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:6000;s:6:"height";i:4000;s:4:"file";s:20:"2018/08/IMG_3202.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"IMG_3202-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"IMG_3202-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"IMG_3202-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"IMG_3202-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:14:"mini-thumbnail";a:4:{s:4:"file";s:18:"IMG_3202-50x50.jpg";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}s:5:"slide";a:4:{s:4:"file";s:20:"IMG_3202-640x290.jpg";s:5:"width";i:640;s:6:"height";i:290;s:9:"mime-type";s:10:"image/jpeg";}s:5:"thumb";a:4:{s:4:"file";s:20:"IMG_3202-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:8:"medthumb";a:4:{s:4:"file";s:18:"IMG_3202-80x60.jpg";s:5:"width";i:80;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"5";s:6:"credit";s:0:"";s:6:"camera";s:14:"Canon EOS 750D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1532100359";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"38";s:3:"iso";s:3:"800";s:13:"shutter_speed";s:4:"0.04";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1659, 251, '_wp_attached_file', '2018/08/IMG_3212.jpg'),
(1660, 251, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:6000;s:6:"height";i:4000;s:4:"file";s:20:"2018/08/IMG_3212.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"IMG_3212-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"IMG_3212-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"IMG_3212-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"IMG_3212-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:14:"mini-thumbnail";a:4:{s:4:"file";s:18:"IMG_3212-50x50.jpg";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}s:5:"slide";a:4:{s:4:"file";s:20:"IMG_3212-640x290.jpg";s:5:"width";i:640;s:6:"height";i:290;s:9:"mime-type";s:10:"image/jpeg";}s:5:"thumb";a:4:{s:4:"file";s:20:"IMG_3212-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:8:"medthumb";a:4:{s:4:"file";s:18:"IMG_3212-80x60.jpg";s:5:"width";i:80;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"7.1";s:6:"credit";s:0:"";s:6:"camera";s:14:"Canon EOS 750D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1532100514";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"18";s:3:"iso";s:3:"800";s:13:"shutter_speed";s:5:"0.125";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1661, 252, '_wp_attached_file', '2018/08/IMG_3222.jpg'),
(1662, 252, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:6000;s:6:"height";i:4000;s:4:"file";s:20:"2018/08/IMG_3222.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"IMG_3222-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"IMG_3222-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"IMG_3222-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"IMG_3222-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:14:"mini-thumbnail";a:4:{s:4:"file";s:18:"IMG_3222-50x50.jpg";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}s:5:"slide";a:4:{s:4:"file";s:20:"IMG_3222-640x290.jpg";s:5:"width";i:640;s:6:"height";i:290;s:9:"mime-type";s:10:"image/jpeg";}s:5:"thumb";a:4:{s:4:"file";s:20:"IMG_3222-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:8:"medthumb";a:4:{s:4:"file";s:18:"IMG_3222-80x60.jpg";s:5:"width";i:80;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"5";s:6:"credit";s:0:"";s:6:"camera";s:14:"Canon EOS 750D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1532100695";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"43";s:3:"iso";s:3:"800";s:13:"shutter_speed";s:17:"0.066666666666667";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1663, 245, '_thumbnail_id', '248'),
(1665, 254, '_wp_attached_file', '2018/08/IMG_3240.jpg'),
(1666, 254, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:6000;s:6:"height";i:4000;s:4:"file";s:20:"2018/08/IMG_3240.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"IMG_3240-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"IMG_3240-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"IMG_3240-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"IMG_3240-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:14:"mini-thumbnail";a:4:{s:4:"file";s:18:"IMG_3240-50x50.jpg";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}s:5:"slide";a:4:{s:4:"file";s:20:"IMG_3240-640x290.jpg";s:5:"width";i:640;s:6:"height";i:290;s:9:"mime-type";s:10:"image/jpeg";}s:5:"thumb";a:4:{s:4:"file";s:20:"IMG_3240-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:8:"medthumb";a:4:{s:4:"file";s:18:"IMG_3240-80x60.jpg";s:5:"width";i:80;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"4.5";s:6:"credit";s:0:"";s:6:"camera";s:14:"Canon EOS 750D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1532101610";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"20";s:3:"iso";s:3:"800";s:13:"shutter_speed";s:3:"0.1";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1671, 259, '_wp_attached_file', '2018/08/IMG_4163.jpg'),
(1672, 259, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:6000;s:6:"height";i:4000;s:4:"file";s:20:"2018/08/IMG_4163.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"IMG_4163-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"IMG_4163-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"IMG_4163-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"IMG_4163-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:14:"mini-thumbnail";a:4:{s:4:"file";s:18:"IMG_4163-50x50.jpg";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}s:5:"slide";a:4:{s:4:"file";s:20:"IMG_4163-640x290.jpg";s:5:"width";i:640;s:6:"height";i:290;s:9:"mime-type";s:10:"image/jpeg";}s:5:"thumb";a:4:{s:4:"file";s:20:"IMG_4163-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:8:"medthumb";a:4:{s:4:"file";s:18:"IMG_4163-80x60.jpg";s:5:"width";i:80;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"5";s:6:"credit";s:0:"";s:6:"camera";s:14:"Canon EOS 750D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1532513457";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"40";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:5:"0.004";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1674, 261, '_wp_attached_file', '2018/08/IMG_4151.jpg'),
(1675, 261, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:6000;s:6:"height";i:4000;s:4:"file";s:20:"2018/08/IMG_4151.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"IMG_4151-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"IMG_4151-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"IMG_4151-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"IMG_4151-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:14:"mini-thumbnail";a:4:{s:4:"file";s:18:"IMG_4151-50x50.jpg";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}s:5:"slide";a:4:{s:4:"file";s:20:"IMG_4151-640x290.jpg";s:5:"width";i:640;s:6:"height";i:290;s:9:"mime-type";s:10:"image/jpeg";}s:5:"thumb";a:4:{s:4:"file";s:20:"IMG_4151-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:8:"medthumb";a:4:{s:4:"file";s:18:"IMG_4151-80x60.jpg";s:5:"width";i:80;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"7.1";s:6:"credit";s:0:"";s:6:"camera";s:14:"Canon EOS 750D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1532512912";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"47";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:7:"0.00125";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1676, 262, '_wp_attached_file', '2018/08/IMG_4188.jpg'),
(1677, 262, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:6000;s:6:"height";i:4000;s:4:"file";s:20:"2018/08/IMG_4188.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"IMG_4188-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"IMG_4188-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"IMG_4188-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"IMG_4188-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:14:"mini-thumbnail";a:4:{s:4:"file";s:18:"IMG_4188-50x50.jpg";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}s:5:"slide";a:4:{s:4:"file";s:20:"IMG_4188-640x290.jpg";s:5:"width";i:640;s:6:"height";i:290;s:9:"mime-type";s:10:"image/jpeg";}s:5:"thumb";a:4:{s:4:"file";s:20:"IMG_4188-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:8:"medthumb";a:4:{s:4:"file";s:18:"IMG_4188-80x60.jpg";s:5:"width";i:80;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"5.6";s:6:"credit";s:0:"";s:6:"camera";s:14:"Canon EOS 750D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1532513770";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"49";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:5:"0.004";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1678, 263, '_wp_attached_file', '2018/08/IMG_4180.jpg'),
(1679, 263, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:5316;s:6:"height";i:2983;s:4:"file";s:20:"2018/08/IMG_4180.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"IMG_4180-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"IMG_4180-300x168.jpg";s:5:"width";i:300;s:6:"height";i:168;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"IMG_4180-768x431.jpg";s:5:"width";i:768;s:6:"height";i:431;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"IMG_4180-1024x575.jpg";s:5:"width";i:1024;s:6:"height";i:575;s:9:"mime-type";s:10:"image/jpeg";}s:14:"mini-thumbnail";a:4:{s:4:"file";s:18:"IMG_4180-50x50.jpg";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}s:5:"slide";a:4:{s:4:"file";s:20:"IMG_4180-640x290.jpg";s:5:"width";i:640;s:6:"height";i:290;s:9:"mime-type";s:10:"image/jpeg";}s:5:"thumb";a:4:{s:4:"file";s:20:"IMG_4180-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:8:"medthumb";a:4:{s:4:"file";s:18:"IMG_4180-80x60.jpg";s:5:"width";i:80;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"5.6";s:6:"credit";s:0:"";s:6:"camera";s:14:"Canon EOS 750D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1532513693";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"51";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:5:"0.004";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1680, 221, '_thumbnail_id', '261'),
(1684, 265, '_edit_last', '1'),
(1685, 265, '_edit_lock', '1534824329:1'),
(1686, 265, 'hasp_expire_enable', '0'),
(1687, 265, 'hasp_expire_date', ''),
(1688, 265, 'hasp_overwrite_enable', ''),
(1689, 265, 'hasp_overwrite_post_id', ''),
(1691, 268, '_wp_attached_file', '2018/08/20180726_224007.jpg'),
(1692, 268, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:3456;s:6:"height";i:4608;s:4:"file";s:27:"2018/08/20180726_224007.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"20180726_224007-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"20180726_224007-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:28:"20180726_224007-768x1024.jpg";s:5:"width";i:768;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:28:"20180726_224007-768x1024.jpg";s:5:"width";i:768;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:14:"mini-thumbnail";a:4:{s:4:"file";s:25:"20180726_224007-50x50.jpg";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}s:5:"slide";a:4:{s:4:"file";s:27:"20180726_224007-640x290.jpg";s:5:"width";i:640;s:6:"height";i:290;s:9:"mime-type";s:10:"image/jpeg";}s:5:"thumb";a:4:{s:4:"file";s:27:"20180726_224007-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:8:"medthumb";a:4:{s:4:"file";s:25:"20180726_224007-80x60.jpg";s:5:"width";i:80;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"1.7";s:6:"credit";s:0:"";s:6:"camera";s:8:"SM-A530F";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1532644807";s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"3.93";s:3:"iso";s:4:"1250";s:13:"shutter_speed";s:3:"0.1";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1696, 271, '_wp_attached_file', '2018/08/Pak-Wali.jpg'),
(1697, 271, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2737;s:6:"height";i:3633;s:4:"file";s:20:"2018/08/Pak-Wali.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"Pak-Wali-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"Pak-Wali-226x300.jpg";s:5:"width";i:226;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"Pak-Wali-768x1019.jpg";s:5:"width";i:768;s:6:"height";i:1019;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"Pak-Wali-771x1024.jpg";s:5:"width";i:771;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:14:"mini-thumbnail";a:4:{s:4:"file";s:18:"Pak-Wali-50x50.jpg";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}s:5:"slide";a:4:{s:4:"file";s:20:"Pak-Wali-640x290.jpg";s:5:"width";i:640;s:6:"height";i:290;s:9:"mime-type";s:10:"image/jpeg";}s:5:"thumb";a:4:{s:4:"file";s:20:"Pak-Wali-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:8:"medthumb";a:4:{s:4:"file";s:18:"Pak-Wali-80x60.jpg";s:5:"width";i:80;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"1.7";s:6:"credit";s:0:"";s:6:"camera";s:8:"SM-A530F";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1532644807";s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"3.93";s:3:"iso";s:4:"1250";s:13:"shutter_speed";s:3:"0.1";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1698, 265, '_thumbnail_id', '271'),
(1741, 274, '_edit_last', '1'),
(1742, 274, '_edit_lock', '1533230385:1'),
(1743, 274, 'hasp_expire_enable', '0'),
(1744, 274, 'hasp_expire_date', ''),
(1745, 274, 'hasp_overwrite_enable', ''),
(1746, 274, 'hasp_overwrite_post_id', ''),
(1747, 277, '_wp_attached_file', '2018/08/IMG_2789.jpg'),
(1748, 277, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:6000;s:6:"height";i:3368;s:4:"file";s:20:"2018/08/IMG_2789.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"IMG_2789-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"IMG_2789-300x168.jpg";s:5:"width";i:300;s:6:"height";i:168;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"IMG_2789-768x431.jpg";s:5:"width";i:768;s:6:"height";i:431;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"IMG_2789-1024x575.jpg";s:5:"width";i:1024;s:6:"height";i:575;s:9:"mime-type";s:10:"image/jpeg";}s:14:"mini-thumbnail";a:4:{s:4:"file";s:18:"IMG_2789-50x50.jpg";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}s:5:"slide";a:4:{s:4:"file";s:20:"IMG_2789-640x290.jpg";s:5:"width";i:640;s:6:"height";i:290;s:9:"mime-type";s:10:"image/jpeg";}s:5:"thumb";a:4:{s:4:"file";s:20:"IMG_2789-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:8:"medthumb";a:4:{s:4:"file";s:18:"IMG_2789-80x60.jpg";s:5:"width";i:80;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"3.5";s:6:"credit";s:0:"";s:6:"camera";s:14:"Canon EOS 750D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1531636958";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"18";s:3:"iso";s:4:"1600";s:13:"shutter_speed";s:5:"0.008";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1749, 278, '_wp_attached_file', '2018/08/IMG_2804.jpg'),
(1750, 278, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:6000;s:6:"height";i:3368;s:4:"file";s:20:"2018/08/IMG_2804.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"IMG_2804-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"IMG_2804-300x168.jpg";s:5:"width";i:300;s:6:"height";i:168;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"IMG_2804-768x431.jpg";s:5:"width";i:768;s:6:"height";i:431;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"IMG_2804-1024x575.jpg";s:5:"width";i:1024;s:6:"height";i:575;s:9:"mime-type";s:10:"image/jpeg";}s:14:"mini-thumbnail";a:4:{s:4:"file";s:18:"IMG_2804-50x50.jpg";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}s:5:"slide";a:4:{s:4:"file";s:20:"IMG_2804-640x290.jpg";s:5:"width";i:640;s:6:"height";i:290;s:9:"mime-type";s:10:"image/jpeg";}s:5:"thumb";a:4:{s:4:"file";s:20:"IMG_2804-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:8:"medthumb";a:4:{s:4:"file";s:18:"IMG_2804-80x60.jpg";s:5:"width";i:80;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"5.6";s:6:"credit";s:0:"";s:6:"camera";s:14:"Canon EOS 750D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1531637085";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"47";s:3:"iso";s:4:"1600";s:13:"shutter_speed";s:5:"0.008";s:5:"title";s:0:"";s:11:"orientation";s:1:"8";s:8:"keywords";a:0:{}}}'),
(1751, 279, '_wp_attached_file', '2018/08/IMG_2841.jpg'),
(1752, 279, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:6000;s:6:"height";i:3368;s:4:"file";s:20:"2018/08/IMG_2841.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"IMG_2841-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"IMG_2841-300x168.jpg";s:5:"width";i:300;s:6:"height";i:168;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"IMG_2841-768x431.jpg";s:5:"width";i:768;s:6:"height";i:431;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"IMG_2841-1024x575.jpg";s:5:"width";i:1024;s:6:"height";i:575;s:9:"mime-type";s:10:"image/jpeg";}s:14:"mini-thumbnail";a:4:{s:4:"file";s:18:"IMG_2841-50x50.jpg";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}s:5:"slide";a:4:{s:4:"file";s:20:"IMG_2841-640x290.jpg";s:5:"width";i:640;s:6:"height";i:290;s:9:"mime-type";s:10:"image/jpeg";}s:5:"thumb";a:4:{s:4:"file";s:20:"IMG_2841-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:8:"medthumb";a:4:{s:4:"file";s:18:"IMG_2841-80x60.jpg";s:5:"width";i:80;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"4";s:6:"credit";s:0:"";s:6:"camera";s:14:"Canon EOS 750D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1531637512";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"30";s:3:"iso";s:4:"1600";s:13:"shutter_speed";s:8:"0.003125";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1753, 280, '_wp_attached_file', '2018/08/IMG_2894.jpg'),
(1754, 280, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:6000;s:6:"height";i:3368;s:4:"file";s:20:"2018/08/IMG_2894.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"IMG_2894-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"IMG_2894-300x168.jpg";s:5:"width";i:300;s:6:"height";i:168;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"IMG_2894-768x431.jpg";s:5:"width";i:768;s:6:"height";i:431;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"IMG_2894-1024x575.jpg";s:5:"width";i:1024;s:6:"height";i:575;s:9:"mime-type";s:10:"image/jpeg";}s:14:"mini-thumbnail";a:4:{s:4:"file";s:18:"IMG_2894-50x50.jpg";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}s:5:"slide";a:4:{s:4:"file";s:20:"IMG_2894-640x290.jpg";s:5:"width";i:640;s:6:"height";i:290;s:9:"mime-type";s:10:"image/jpeg";}s:5:"thumb";a:4:{s:4:"file";s:20:"IMG_2894-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:8:"medthumb";a:4:{s:4:"file";s:18:"IMG_2894-80x60.jpg";s:5:"width";i:80;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"3.5";s:6:"credit";s:0:"";s:6:"camera";s:14:"Canon EOS 750D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1531638076";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"18";s:3:"iso";s:4:"1600";s:13:"shutter_speed";s:7:"0.00125";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1755, 281, '_wp_attached_file', '2018/08/IMG_2914.jpg'),
(1756, 281, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:5778;s:6:"height";i:3243;s:4:"file";s:20:"2018/08/IMG_2914.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"IMG_2914-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"IMG_2914-300x168.jpg";s:5:"width";i:300;s:6:"height";i:168;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"IMG_2914-768x431.jpg";s:5:"width";i:768;s:6:"height";i:431;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"IMG_2914-1024x575.jpg";s:5:"width";i:1024;s:6:"height";i:575;s:9:"mime-type";s:10:"image/jpeg";}s:14:"mini-thumbnail";a:4:{s:4:"file";s:18:"IMG_2914-50x50.jpg";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}s:5:"slide";a:4:{s:4:"file";s:20:"IMG_2914-640x290.jpg";s:5:"width";i:640;s:6:"height";i:290;s:9:"mime-type";s:10:"image/jpeg";}s:5:"thumb";a:4:{s:4:"file";s:20:"IMG_2914-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:8:"medthumb";a:4:{s:4:"file";s:18:"IMG_2914-80x60.jpg";s:5:"width";i:80;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"4";s:6:"credit";s:0:"";s:6:"camera";s:14:"Canon EOS 750D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1531638571";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"24";s:3:"iso";s:4:"1600";s:13:"shutter_speed";s:5:"0.001";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1757, 282, '_wp_attached_file', '2018/08/IMG_2913.jpg'),
(1758, 282, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:5621;s:6:"height";i:3743;s:4:"file";s:20:"2018/08/IMG_2913.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"IMG_2913-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"IMG_2913-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"IMG_2913-768x511.jpg";s:5:"width";i:768;s:6:"height";i:511;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"IMG_2913-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:14:"mini-thumbnail";a:4:{s:4:"file";s:18:"IMG_2913-50x50.jpg";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}s:5:"slide";a:4:{s:4:"file";s:20:"IMG_2913-640x290.jpg";s:5:"width";i:640;s:6:"height";i:290;s:9:"mime-type";s:10:"image/jpeg";}s:5:"thumb";a:4:{s:4:"file";s:20:"IMG_2913-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:8:"medthumb";a:4:{s:4:"file";s:18:"IMG_2913-80x60.jpg";s:5:"width";i:80;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"4";s:6:"credit";s:0:"";s:6:"camera";s:14:"Canon EOS 750D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1531638562";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"24";s:3:"iso";s:4:"1600";s:13:"shutter_speed";s:5:"0.001";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1779, 43, 'hasp_expire_enable', '0'),
(1780, 43, 'hasp_expire_date', ''),
(1781, 43, 'hasp_overwrite_enable', ''),
(1782, 43, 'hasp_overwrite_post_id', ''),
(1783, 290, '_edit_lock', '1533293319:2'),
(1784, 290, '_edit_last', '2'),
(1797, 295, '_wp_attached_file', '2018/07/IMG_20180801_142019.jpg'),
(1798, 295, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:4160;s:6:"height";i:3120;s:4:"file";s:31:"2018/07/IMG_20180801_142019.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"IMG_20180801_142019-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"IMG_20180801_142019-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:31:"IMG_20180801_142019-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"IMG_20180801_142019-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"mini-thumbnail";a:4:{s:4:"file";s:29:"IMG_20180801_142019-50x50.jpg";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}s:5:"slide";a:4:{s:4:"file";s:31:"IMG_20180801_142019-640x290.jpg";s:5:"width";i:640;s:6:"height";i:290;s:9:"mime-type";s:10:"image/jpeg";}s:5:"thumb";a:4:{s:4:"file";s:31:"IMG_20180801_142019-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:8:"medthumb";a:4:{s:4:"file";s:29:"IMG_20180801_142019-80x60.jpg";s:5:"width";i:80;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"2";s:6:"credit";s:0:"";s:6:"camera";s:14:"Lenovo A7000-a";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1533133219";s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"3.56";s:3:"iso";s:2:"82";s:13:"shutter_speed";s:8:"0.000721";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1815, 296, '_edit_lock', '1534755022:1'),
(1816, 296, '_edit_last', '1'),
(1817, 296, 'hasp_expire_enable', '0'),
(1818, 296, 'hasp_expire_date', ''),
(1819, 296, 'hasp_overwrite_enable', ''),
(1820, 296, 'hasp_overwrite_post_id', ''),
(1828, 296, '_layanan', 'Puskesmas'),
(1830, 296, '_telepon', '12345'),
(1843, 299, '_wp_attached_file', '2018/08/dscf0127.jpg'),
(1844, 299, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:225;s:4:"file";s:20:"2018/08/dscf0127.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"dscf0127-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"dscf0127-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:14:"mini-thumbnail";a:4:{s:4:"file";s:18:"dscf0127-50x50.jpg";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}s:8:"medthumb";a:4:{s:4:"file";s:18:"dscf0127-80x60.jpg";s:5:"width";i:80;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"4";s:6:"credit";s:0:"";s:6:"camera";s:12:"FinePix A400";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1137189032";s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"10.6";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:18:"0.0013333333333333";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1845, 296, '_thumbnail_id', '299'),
(1866, 300, '_edit_lock', '1534755496:1'),
(1867, 300, '_edit_last', '1'),
(1868, 301, '_wp_attached_file', '2018/08/police.gif'),
(1869, 301, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:205;s:4:"file";s:18:"2018/08/police.gif";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"police-150x150.gif";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/gif";}s:6:"medium";a:4:{s:4:"file";s:18:"police-300x205.gif";s:5:"width";i:300;s:6:"height";i:205;s:9:"mime-type";s:9:"image/gif";}s:14:"mini-thumbnail";a:4:{s:4:"file";s:16:"police-50x50.gif";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:9:"image/gif";}s:8:"medthumb";a:4:{s:4:"file";s:16:"police-80x60.gif";s:5:"width";i:80;s:6:"height";i:60;s:9:"mime-type";s:9:"image/gif";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1870, 300, '_thumbnail_id', '301'),
(1871, 300, 'hasp_expire_enable', '0'),
(1872, 300, 'hasp_expire_date', ''),
(1873, 300, 'hasp_overwrite_enable', ''),
(1874, 300, 'hasp_overwrite_post_id', ''),
(1884, 300, '_telepon', '23456'),
(1904, 300, '_layanan', 'Polsek'),
(1923, 311, '_wp_attached_file', '2018/08/20180726_224207.jpg'),
(1924, 311, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:4608;s:6:"height";i:3456;s:4:"file";s:27:"2018/08/20180726_224207.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"20180726_224207-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"20180726_224207-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:27:"20180726_224207-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:28:"20180726_224207-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"mini-thumbnail";a:4:{s:4:"file";s:25:"20180726_224207-50x50.jpg";s:5:"width";i:50;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}s:5:"slide";a:4:{s:4:"file";s:27:"20180726_224207-640x290.jpg";s:5:"width";i:640;s:6:"height";i:290;s:9:"mime-type";s:10:"image/jpeg";}s:5:"thumb";a:4:{s:4:"file";s:27:"20180726_224207-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:8:"medthumb";a:4:{s:4:"file";s:25:"20180726_224207-80x60.jpg";s:5:"width";i:80;s:6:"height";i:60;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"1.7";s:6:"credit";s:0:"";s:6:"camera";s:8:"SM-A530F";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1532644927";s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"3.93";s:3:"iso";s:4:"1250";s:13:"shutter_speed";s:3:"0.1";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}');

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
(20, 1, '2018-07-07 14:29:06', '2018-07-07 14:29:06', '', 'PASAMAN', '', 'inherit', 'open', 'closed', '', 'pasaman', '', '', '2018-07-07 14:56:39', '2018-07-07 14:56:39', '', 0, 'http://localhost/websontang/wp-content/uploads/2018/07/PASAMAN.png', 0, 'attachment', 'image/png', 0),
(22, 1, '2018-07-07 14:29:17', '2018-07-07 14:29:17', 'http://localhost/websontang/wp-content/uploads/2018/07/cropped-Kabupaten_Pasaman.png', 'cropped-Kabupaten_Pasaman.png', '', 'inherit', 'open', 'closed', '', 'cropped-kabupaten_pasaman-png', '', '', '2018-07-07 14:29:17', '2018-07-07 14:29:17', '', 0, 'http://localhost/websontang/wp-content/uploads/2018/07/cropped-Kabupaten_Pasaman.png', 0, 'attachment', 'image/png', 0),
(27, 1, '2018-07-09 05:51:28', '2018-07-09 05:51:28', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-08-20 08:46:36', '2018-08-20 08:46:36', '', 0, 'http://localhost/websontang/?p=27', 1, 'nav_menu_item', '', 0),
(31, 1, '2018-07-09 06:06:46', '2018-07-09 06:06:46', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2018-07-09 06:06:46', '2018-07-09 06:06:46', '', 0, 'http://localhost/websontang/2018/07/09/31/', 1, 'nav_menu_item', '', 0),
(40, 1, '2018-07-14 12:01:19', '2018-07-14 12:01:19', 'Senam Pagi bersama mahasiswa KKN yang akan dilaksanakan pada tanggal 16 Juli 2018.\r\n\r\n&nbsp;', 'Senam Pagi', '', 'publish', 'closed', 'closed', '', 'senam-pagi', '', '', '2018-08-02 17:20:27', '2018-08-02 17:20:27', '', 0, 'http://localhost/websontang/?post_type=agenda&#038;p=40', 0, 'agenda', '', 0),
(43, 1, '2018-07-16 04:57:29', '2018-07-16 04:57:29', 'Puskesmas keliling dan', 'Cek Tensi', '', 'publish', 'closed', 'closed', '', 'cek-tensi', '', '', '2018-08-02 17:21:44', '2018-08-02 17:21:44', '', 0, 'http://localhost/websontang/?post_type=agenda&#038;p=43', 0, 'agenda', '', 0),
(50, 1, '2018-07-16 17:16:53', '2018-07-16 17:16:53', 'Nagari Sontang Cubadak kedatangan Mahasiswa KKN Universitas Andalas yang berjumlah 20 orang.', '', '', 'publish', 'closed', 'closed', '', '50', '', '', '2018-07-31 05:39:47', '2018-07-31 05:39:47', '', 0, 'http://localhost/websontang/?post_type=sekilas-info&#038;p=50', 0, 'sekilas-info', '', 0),
(54, 1, '2018-07-17 05:46:15', '2018-07-17 05:46:15', '', 'IMG-20180512-WA0002', '', 'inherit', 'open', 'closed', '', 'img-20180512-wa0002-5', '', '', '2018-07-17 05:46:15', '2018-07-17 05:46:15', '', 0, 'http://localhost/websontang/wp-content/uploads/2018/07/IMG-20180512-WA0002-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2018-07-17 05:46:23', '2018-07-17 05:46:23', '', 'Kabupaten_Pasaman', '', 'inherit', 'open', 'closed', '', 'kabupaten_pasaman-2', '', '', '2018-07-17 05:46:23', '2018-07-17 05:46:23', '', 0, 'http://localhost/websontang/wp-content/uploads/2018/07/Kabupaten_Pasaman-1.png', 0, 'attachment', 'image/png', 0),
(57, 1, '2018-07-17 05:49:20', '2018-07-17 05:49:20', '', '496px-west_sumatra_coa-svg', '', 'inherit', 'open', 'closed', '', '496px-west_sumatra_coa-svg-3', '', '', '2018-07-19 03:53:06', '2018-07-19 03:53:06', '', 0, 'http://localhost/websontang/wp-content/uploads/2018/07/496px-west_sumatra_coa-svg-2.png', 0, 'attachment', 'image/png', 0),
(80, 1, '2018-07-18 02:56:35', '2018-07-18 02:56:35', '', 'logo kusewa', '', 'inherit', 'open', 'closed', '', 'logo-kusewa-2', '', '', '2018-07-18 02:56:35', '2018-07-18 02:56:35', '', 0, 'http://localhost/websontang/wp-content/uploads/2018/07/logo-kusewa-1.png', 0, 'attachment', 'image/png', 0),
(87, 1, '2018-07-18 04:20:09', '2018-07-18 04:20:09', '', 'Tulisan', '', 'publish', 'closed', 'closed', '', 'tulisan', '', '', '2018-08-20 08:46:37', '2018-08-20 08:46:37', '', 0, 'http://localhost/websontang/?p=87', 8, 'nav_menu_item', '', 0),
(88, 1, '2018-07-18 04:20:09', '2018-07-18 04:20:09', '', 'Wali Nagari', '', 'publish', 'closed', 'closed', '', 'kolom-kades', '', '', '2018-08-20 08:46:37', '2018-08-20 08:46:37', '', 0, 'http://localhost/websontang/?p=88', 9, 'nav_menu_item', '', 0),
(89, 1, '2018-07-18 04:20:09', '2018-07-18 04:20:09', '', 'Opini Warga', '', 'publish', 'closed', 'closed', '', 'opini-warga', '', '', '2018-08-20 08:46:37', '2018-08-20 08:46:37', '', 0, 'http://localhost/websontang/?p=89', 10, 'nav_menu_item', '', 0),
(90, 1, '2018-07-18 04:24:20', '2018-07-18 04:24:20', '', 'Informasi', '', 'publish', 'closed', 'closed', '', 'informasi', '', '', '2018-08-20 08:46:36', '2018-08-20 08:46:36', '', 0, 'http://localhost/websontang/?p=90', 3, 'nav_menu_item', '', 0),
(92, 1, '2018-07-18 04:26:05', '2018-07-18 04:26:05', '', 'Pengumuman', '', 'publish', 'closed', 'closed', '', 'pengumuman', '', '', '2018-08-20 08:46:36', '2018-08-20 08:46:36', '', 0, 'http://localhost/websontang/?p=92', 2, 'nav_menu_item', '', 0),
(96, 1, '2018-07-18 04:41:02', '2018-07-18 04:41:02', '', 'Agenda', '', 'publish', 'closed', 'closed', '', 'agenda', '', '', '2018-08-20 08:46:37', '2018-08-20 08:46:37', '', 0, 'http://localhost/websontang/?p=96', 4, 'nav_menu_item', '', 0),
(99, 1, '2018-07-18 04:48:31', '2018-07-18 04:48:31', '', 'Pembangunan', '', 'publish', 'closed', 'closed', '', 'pembangunan', '', '', '2018-08-20 08:46:37', '2018-08-20 08:46:37', '', 0, 'http://localhost/websontang/?p=99', 5, 'nav_menu_item', '', 0),
(100, 1, '2018-07-18 11:21:45', '2018-07-18 11:21:45', '', 'Layanan Publik', '', 'publish', 'closed', 'closed', '', 'layanan-publik', '', '', '2018-08-20 08:46:37', '2018-08-20 08:46:37', '', 0, 'http://localhost/websontang/?p=100', 6, 'nav_menu_item', '', 0),
(101, 1, '2018-07-18 11:21:45', '2018-07-18 11:21:45', '', 'Galeri', '', 'publish', 'closed', 'closed', '', 'galeri', '', '', '2018-08-20 08:46:38', '2018-08-20 08:46:38', '', 0, 'http://localhost/websontang/?p=101', 11, 'nav_menu_item', '', 0),
(102, 1, '2018-07-18 11:21:45', '2018-07-18 11:21:45', '', 'Foto', '', 'publish', 'closed', 'closed', '', 'foto', '', '', '2018-08-20 08:46:38', '2018-08-20 08:46:38', '', 0, 'http://localhost/websontang/?p=102', 12, 'nav_menu_item', '', 0),
(104, 1, '2018-07-18 11:21:46', '2018-07-18 11:21:46', '', 'Video', '', 'publish', 'closed', 'closed', '', 'video', '', '', '2018-08-20 08:46:38', '2018-08-20 08:46:38', '', 0, 'http://localhost/websontang/?p=104', 13, 'nav_menu_item', '', 0),
(105, 1, '2018-07-18 11:58:47', '2018-07-18 11:58:47', '', 'Produk Nagari', '', 'publish', 'closed', 'closed', '', 'produk-nagari', '', '', '2018-08-20 08:46:37', '2018-08-20 08:46:37', '', 0, 'http://localhost/websontang/?p=105', 7, 'nav_menu_item', '', 0),
(107, 1, '2018-07-18 12:01:30', '2018-07-18 12:01:30', '', 'Lainnya', '', 'publish', 'closed', 'closed', '', 'serba-serbi', '', '', '2018-08-20 08:46:38', '2018-08-20 08:46:38', '', 0, 'http://localhost/websontang/?p=107', 14, 'nav_menu_item', '', 0),
(109, 1, '2018-07-18 12:21:49', '2018-07-18 12:21:49', '', 'Transparansi Dana', '', 'publish', 'closed', 'closed', '', 'transparansi-dana', '', '', '2018-08-20 08:46:38', '2018-08-20 08:46:38', '', 0, 'http://localhost/websontang/?p=109', 15, 'nav_menu_item', '', 0),
(114, 1, '2018-07-18 15:22:21', '2018-07-18 15:22:21', '', 'Laporan Tahunan', '', 'publish', 'closed', 'closed', '', 'laporan-tahunan', '', '', '2018-08-20 08:46:38', '2018-08-20 08:46:38', '', 0, 'http://localhost/websontang/?p=114', 16, 'nav_menu_item', '', 0),
(117, 1, '2018-07-20 08:00:30', '2018-07-20 08:00:30', 'jkdhkbdf fdjhduhc kdajhoid dan adhjadbfdaih fa ladhuif amflakhiofd hfdlkaelkjfdlkdfsulfs.\n\njdsfnabh f;kah lkapan fdaklh finfal hflal.<img class="aligncenter wp-image-79" src="http://localhost/websontang/wp-content/uploads/2018/07/Sontang-Cubadak-Tes.png" alt="" width="200" height="145" />', 'Sosialisasi XYZ', '', 'publish', 'closed', 'closed', '', 'sosialisasi-xyz', '', '', '2018-07-24 02:33:25', '2018-07-24 02:33:25', '', 0, 'http://localhost/websontang/?post_type=agenda&#038;p=117', 0, 'agenda', '', 0),
(119, 1, '2018-07-24 02:26:27', '2018-07-24 02:26:27', 'jkdhkbdf fdjhduhc kdajhoid dan adhjadbfdaih fa ladhuif amflakhiofd hfdlkaelkjfdlkdfsulfs.\n\njdsfnabh f;kah lkapan fdaklh finfal hflal.<img class="aligncenter wp-image-79" src="http://localhost/websontang/wp-content/uploads/2018/07/Sontang-Cubadak-Tes.png" alt="" width="200" height="145" />', 'Sosialisasi XYZ', '', 'inherit', 'closed', 'closed', '', '117-autosave-v1', '', '', '2018-07-24 02:26:27', '2018-07-24 02:26:27', '', 117, 'http://localhost/websontang/2018/07/19/117-autosave-v1/', 0, 'revision', '', 0),
(125, 1, '2018-07-19 03:57:01', '2018-07-19 03:57:01', 'MTQ tingkat Kecamatan Padang Gelugur dilaksanakan di Nagari Sontang Cubadak pada tanggal 26 Juli 2018', '', '', 'publish', 'closed', 'closed', '', '125', '', '', '2018-07-31 05:41:02', '2018-07-31 05:41:02', '', 0, 'http://localhost/websontang/?post_type=sekilas-info&#038;p=125', 0, 'sekilas-info', '', 0),
(127, 1, '2018-07-19 03:57:32', '2018-07-19 03:57:32', 'Selamat datang di Website Nagari Sontang Cubadak', '', '', 'publish', 'closed', 'closed', '', '127', '', '', '2018-07-19 03:57:32', '2018-07-19 03:57:32', '', 0, 'http://localhost/websontang/?post_type=sekilas-info&#038;p=127', 0, 'sekilas-info', '', 0),
(129, 1, '2018-07-19 04:03:16', '2018-07-19 04:03:16', 'Kantor Wali Nagari Sontang Cubadak.', 'Kantor Wali Nagari', '', 'publish', 'closed', 'closed', '', 'kantor-wali-nagari', '', '', '2018-08-20 08:48:50', '2018-08-20 08:48:50', '', 0, 'http://localhost/websontang/?post_type=layanan&#038;p=129', 0, 'layanan', '', 0),
(142, 1, '2018-07-20 16:29:05', '2018-07-20 16:29:05', '', 'WEB', '', 'inherit', 'open', 'closed', '', 'web', '', '', '2018-07-20 16:29:05', '2018-07-20 16:29:05', '', 0, 'http://localhost/websontang/wp-content/uploads/2018/07/WEB.png', 0, 'attachment', 'image/png', 0),
(143, 1, '2018-07-20 16:41:26', '2018-07-20 16:41:26', '', 'DSA', '', 'inherit', 'open', 'closed', '', 'dsa', '', '', '2018-07-20 16:41:26', '2018-07-20 16:41:26', '', 0, 'http://localhost/websontang/wp-content/uploads/2018/07/DSA.png', 0, 'attachment', 'image/png', 0),
(145, 1, '2018-07-21 09:39:14', '2018-07-21 09:39:14', 'Kakao (cokelat) yang ada di Sontang Cubadak jhad fdahkd fdaufhlkad fopa.\r\n\r\n&nbsp;', 'Kakao Sontang', 'Kakao berkhasiat sakljsfakjlfjalkfjajfaljfalsalasdjdsalk.', 'publish', 'open', 'closed', '', 'kakao-sontang', '', '', '2018-07-21 09:57:31', '2018-07-21 09:57:31', '', 0, 'http://localhost/websontang/?post_type=product&#038;p=145', 0, 'product', '', 0),
(146, 1, '2018-07-21 04:27:31', '2018-07-21 04:27:31', '', 'Kakao 2', '', 'inherit', 'open', 'closed', '', 'kakao-2', '', '', '2018-07-21 04:27:31', '2018-07-21 04:27:31', '', 145, 'http://localhost/websontang/wp-content/uploads/2018/07/Kakao-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(147, 1, '2018-07-21 04:27:33', '2018-07-21 04:27:33', '', 'Kakao 3', '', 'inherit', 'open', 'closed', '', 'kakao-3', '', '', '2018-07-21 04:27:33', '2018-07-21 04:27:33', '', 145, 'http://localhost/websontang/wp-content/uploads/2018/07/Kakao-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(148, 1, '2018-07-21 04:27:35', '2018-07-21 04:27:35', '', 'Kakao', '', 'inherit', 'open', 'closed', '', 'kakao', '', '', '2018-07-21 04:27:35', '2018-07-21 04:27:35', '', 145, 'http://localhost/websontang/wp-content/uploads/2018/07/Kakao.jpg', 0, 'attachment', 'image/jpeg', 0),
(151, 1, '2018-07-21 09:53:46', '2018-07-21 09:53:46', '', 'Order &ndash; July 21, 2018 @ 09:53 AM', '', 'wc-on-hold', 'open', 'closed', 'order_5b5302aa7aa57', 'order-jul-21-2018-0953-am', '', '', '2018-07-21 09:53:49', '2018-07-21 09:53:49', '', 0, 'http://localhost/websontang/?post_type=shop_order&#038;p=151', 0, 'shop_order', '', 0),
(152, 1, '2018-07-21 09:57:26', '2018-07-21 09:57:26', '', 'Order &ndash; July 21, 2018 @ 09:57 AM', '', 'wc-processing', 'closed', 'closed', 'order_5b53038695cd5', 'order-jul-21-2018-0957-am', '', '', '2018-07-21 09:59:51', '2018-07-21 09:59:51', '', 0, 'http://localhost/websontang/?post_type=shop_order&#038;p=152', 0, 'shop_order', '', 0),
(153, 1, '2018-07-21 10:03:16', '2018-07-21 10:03:16', '', 'firsttime', 'Diskon 5%', 'publish', 'closed', 'closed', '', 'firsttime', '', '', '2018-07-21 10:03:16', '2018-07-21 10:03:16', '', 0, 'http://localhost/websontang/?post_type=shop_coupon&#038;p=153', 0, 'shop_coupon', '', 0),
(154, 1, '2018-07-21 10:03:20', '2018-07-21 10:03:20', '', 'firsttime', '', 'inherit', 'closed', 'closed', '', '153-autosave-v1', '', '', '2018-07-21 10:03:20', '2018-07-21 10:03:20', '', 153, 'http://localhost/websontang/2018/07/21/153-autosave-v1/', 0, 'revision', '', 0),
(158, 1, '2018-07-23 13:37:06', '2018-07-23 13:37:06', 'Terjadinya Nagari Sontang Cubadak hasil dari penggabungan kampung-kampung terdahulu yang telah ada dan berkembang di lingkungan  Nagari Sontang Cubadak sekarang ini. Adapun kampung-kampung terdahulu (tua) Nagari Sontang Cubadak dinataranya: Banjar Masin, Sontang Lama, Ulu Sontang, Tanah Lapang, Napolen, Padang Balai, Rambah, Sipiongot, Bersama Indah, Janji Manahan, Janji Matogu, Aek Bargot, Muara Tais, Binubu dan Kubu Gadang. Dari aspek antropologi budaya, para penghuni di daerah perantauan ini mengalami proses asimilasi (kawin campur), akulturasi (peralihan budaya dan adat istiadat) dan artikulasi (perubahan aksen dan ucapan bahasa).\r\n\r\nDengan demikian terjadilah modifikasi suatu budaya yang cenderung berorientasi ke budaya Minang. Pada saat itu dibutuhkan tata pemerintahan atau peradatan dalam pengaturan masyarakat. Dari bentuk dusun, Koto dan Nagari, maka ditetapkan dan terbentuklah <strong>"Nagari Sontang" </strong>menjadi pusat pemerintaan. Tata pemerintahan di Sontang ini bersendikan kepada "<em>Ninik Nan Sembilan (Si Sia Ompu),  </em>yaitu : Raja Gunung Mulia (Raja Kampung atau Raja di Huta), Raja Gumanti Porang (Tiang Panjang atau bergelar Raja Sontang), Raja Batak (Tiang Pandak bergelar Bagindo Basa), Raja Indonan Margolang Bosi dan Datuk Mangkuto Alom sebagai Bendaharo, Raja Junjungan, Raja Luangsa, Raja Gading, Raja Dolok masing-masing sebagai Hakim Nana Barampek.\r\n\r\n&nbsp;\r\n\r\nSetelah terjadi pemekaran nagari, para pemuka masyarakat Cubadak meminta kepada pemuka madyarakat Sontang agar nama Cubadak itu tidak terlepas dari kenagarian Sontang. Dengan demikian, nagari ini disebutlah dengan nama: <strong>"Sontang Cubadak" </strong>yang mengukuhkan hubungan erat anatara masyarakat Sontang dan Cubadak. Sekarang secara kepemerintahannya bergabunga dengan Kecamatan Padang Gelugur, terhitung mulai dari sejak ditetapkannya menjadi nagari pada tanggal 09 Februari 2013 yang diresmikan oleh Bupati Pasaman.\r\n\r\nNagari Sontang Cubadak terdiri dari 6 suku, yaitu:\r\n<ol>\r\n 	<li>Minang</li>\r\n 	<li>Mandailing</li>\r\n 	<li>Melayu</li>\r\n 	<li>Batak</li>\r\n 	<li>Jawa</li>\r\n 	<li>Sunda</li>\r\n</ol>\r\nTerdiri dari 4 Jorong, yaitu:\r\n<ol>\r\n 	<li>Murni Sontang</li>\r\n 	<li>Sontang</li>\r\n 	<li>Rambah</li>\r\n 	<li>Binubu Kubu Gadang</li>\r\n</ol>', 'Sejarah Nagari', '', 'publish', 'closed', 'closed', '', 'sejarah-nagari-sontang-cubadak', '', '', '2018-07-31 04:24:08', '2018-07-31 04:24:08', '', 0, 'http://localhost/websontang/?page_id=158', 0, 'page', '', 0),
(160, 1, '2018-07-23 13:37:06', '2018-07-23 13:37:06', 'Terjadinya Nagari Sontang Cubadak hasil dari penggabungan kampung-kampung terdahulu yang telah ada dan berkembang di lingkungan  Nagari Sontang Cubadak sekarang ini. Adapun kampung-kampung terdahulu (tua) Nagari SOntang Cubadak dinataranya: Banjar Masin, Sontang Lama, Ulu SOntang, Tanah Lapang, NApolen, Padang Balai, Rambah, Sipiongot, Bersama Indah, Jaanji Manahan,', 'Sejarah Nagari Sontang Cubadak', '', 'inherit', 'closed', 'closed', '', '158-revision-v1', '', '', '2018-07-23 13:37:06', '2018-07-23 13:37:06', '', 158, 'http://localhost/websontang/2018/07/23/158-revision-v1/', 0, 'revision', '', 0),
(162, 1, '2018-07-23 14:46:09', '2018-07-23 14:46:09', 'Terjadinya Nagari Sontang Cubadak hasil dari penggabungan kampung-kampung terdahulu yang telah ada dan berkembang di lingkungan  Nagari Sontang Cubadak sekarang ini. Adapun kampung-kampung terdahulu (tua) Nagari Sontang Cubadak dinataranya: Banjar Masin, Sontang Lama, Ulu Sontang, Tanah Lapang, Napolen, Padang Balai, Rambah, Sipiongot, Bersama Indah, Janji Manahan, Janji Matogu, Aek Bargot, Muara Tais, Binubu dan Kubu Gadang. Dari aspek antropologi budaya, para penghuni di daerah perantauan ini mengalami proses asimilasi (kawin campur), akulturasi (peralihan budaya dan adat istiadat) dan artikulasi (perubahan aksen dan ucapan bahasa).\r\n\r\nDengan demikian terjadilah modifikasi suatu budaya yang cenderung berorientasi ke budaya Minang. Pada saat itu dibutuhkan tata pemerintahan atau peradatan dalam pengaturan masyarakat. Dari bentuk dusun, Koto dan Nagari, maka ditetapkan dan terbentuklah <strong>"Nagari Sontang" </strong>menjadi pusat pemerintaan. Tata pemerintahan di Sontang ini bersendikan kepada "<em>Ninik Nan Sembilan (Si Sia Ompu),  </em>yaitu : Raja Gunung Mulia (Raja Kampung atau Raja di Huta), Raja Gumanti Porang (Tiang Panjang atau bergelar Raja Sontang), Raja Batak (Tiang Pandak bergelar Bagindo Basa), Raja Indonan Margolang Bosi dan Datuk Mangkuto Alom sebagai Bendaharo, Raja Junjungan, Raja Luangsa, Raja Gading, Raja Dolok masing-masing sebagai Hakim Nana Barampek.\r\n\r\n&nbsp;\r\n\r\nSetelah terjadi pemekaran nagari, para pemuka masyarakat Cubadak meminta kepada pemuka madyarakat Sontang agar nama Cubadak itu tidak terlepas dari kenagarian Sontang. Dengan demikian, nagari ini disebutlah dengan nama: <strong>"Sontang Cubadak" </strong>yang mengukuhkan hubungan erat anatara masyarakat Sontang dan Cubadak. Sekarang secara kepemerintahannya bergabunga dengan Kecamatan Padang Gelugur, terhitung mulai dari sejak ditetapkannya menjadi nagari pada tanggal 09 Februari 2013 yang diresmikan oleh Bupati Pasaman.\r\n\r\nNagari Sontang Cubadak terdiri dari 6 suku, yaitu:\r\n<ol>\r\n 	<li>Minang</li>\r\n 	<li>Mandailing</li>\r\n 	<li>Melayu</li>\r\n 	<li>Batak</li>\r\n 	<li>Jawa</li>\r\n 	<li>Sunda</li>\r\n</ol>\r\nTerdiri dari 4 Jorong, yaitu:\r\n<ol>\r\n 	<li>Murni Sontang</li>\r\n 	<li>Sontang</li>\r\n 	<li>Rambah</li>\r\n 	<li>Binubu Kubu Gadang</li>\r\n</ol>', 'Sejarah Nagari Sontang Cubadak', '', 'inherit', 'closed', 'closed', '', '158-revision-v1', '', '', '2018-07-23 14:46:09', '2018-07-23 14:46:09', '', 158, 'http://localhost/websontang/2018/07/23/158-revision-v1/', 0, 'revision', '', 0),
(164, 1, '2018-07-24 09:00:59', '2018-07-24 09:00:59', 'qwertydsdfghfkjdldjhjkalbzc', 'MTQ Kecamatan', '', 'publish', 'closed', 'closed', '', 'mtq-kecamatan', '', '', '2018-07-24 02:46:57', '2018-07-24 02:46:57', '', 0, 'http://localhost/websontang/?post_type=agenda&#038;p=164', 0, 'agenda', '', 0),
(172, 1, '2018-07-31 04:23:01', '2018-07-31 04:23:01', '', 'Tentang', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2018-08-20 08:46:39', '2018-08-20 08:46:39', '', 0, 'http://localhost/websontang/?p=172', 17, 'nav_menu_item', '', 0),
(176, 1, '2018-07-31 04:23:50', '2018-07-31 04:23:50', 'Terjadinya Nagari Sontang Cubadak hasil dari penggabungan kampung-kampung terdahulu yang telah ada dan berkembang di lingkungan  Nagari Sontang Cubadak sekarang ini. Adapun kampung-kampung terdahulu (tua) Nagari Sontang Cubadak dinataranya: Banjar Masin, Sontang Lama, Ulu Sontang, Tanah Lapang, Napolen, Padang Balai, Rambah, Sipiongot, Bersama Indah, Janji Manahan, Janji Matogu, Aek Bargot, Muara Tais, Binubu dan Kubu Gadang. Dari aspek antropologi budaya, para penghuni di daerah perantauan ini mengalami proses asimilasi (kawin campur), akulturasi (peralihan budaya dan adat istiadat) dan artikulasi (perubahan aksen dan ucapan bahasa).\n\nDengan demikian terjadilah modifikasi suatu budaya yang cenderung berorientasi ke budaya Minang. Pada saat itu dibutuhkan tata pemerintahan atau peradatan dalam pengaturan masyarakat. Dari bentuk dusun, Koto dan Nagari, maka ditetapkan dan terbentuklah <strong>"Nagari Sontang" </strong>menjadi pusat pemerintaan. Tata pemerintahan di Sontang ini bersendikan kepada "<em>Ninik Nan Sembilan (Si Sia Ompu),  </em>yaitu : Raja Gunung Mulia (Raja Kampung atau Raja di Huta), Raja Gumanti Porang (Tiang Panjang atau bergelar Raja Sontang), Raja Batak (Tiang Pandak bergelar Bagindo Basa), Raja Indonan Margolang Bosi dan Datuk Mangkuto Alom sebagai Bendaharo, Raja Junjungan, Raja Luangsa, Raja Gading, Raja Dolok masing-masing sebagai Hakim Nana Barampek.\n\n&nbsp;\n\nSetelah terjadi pemekaran nagari, para pemuka masyarakat Cubadak meminta kepada pemuka madyarakat Sontang agar nama Cubadak itu tidak terlepas dari kenagarian Sontang. Dengan demikian, nagari ini disebutlah dengan nama: <strong>"Sontang Cubadak" </strong>yang mengukuhkan hubungan erat anatara masyarakat Sontang dan Cubadak. Sekarang secara kepemerintahannya bergabunga dengan Kecamatan Padang Gelugur, terhitung mulai dari sejak ditetapkannya menjadi nagari pada tanggal 09 Februari 2013 yang diresmikan oleh Bupati Pasaman.\n\nNagari Sontang Cubadak terdiri dari 6 suku, yaitu:\n<ol>\n 	<li>Minang</li>\n 	<li>Mandailing</li>\n 	<li>Melayu</li>\n 	<li>Batak</li>\n 	<li>Jawa</li>\n 	<li>Sunda</li>\n</ol>\nTerdiri dari 4 Jorong, yaitu:\n<ol>\n 	<li>Murni Sontang</li>\n 	<li>Sontang</li>\n 	<li>Rambah</li>\n 	<li>Binubu Kubu Gadang</li>\n</ol>', 'Sejarah Nagari Sontang Cubadak', '', 'inherit', 'closed', 'closed', '', '158-autosave-v1', '', '', '2018-07-31 04:23:50', '2018-07-31 04:23:50', '', 158, 'http://localhost/websontang/2018/07/31/158-autosave-v1/', 0, 'revision', '', 0),
(177, 1, '2018-07-31 04:24:08', '2018-07-31 04:24:08', 'Terjadinya Nagari Sontang Cubadak hasil dari penggabungan kampung-kampung terdahulu yang telah ada dan berkembang di lingkungan  Nagari Sontang Cubadak sekarang ini. Adapun kampung-kampung terdahulu (tua) Nagari Sontang Cubadak dinataranya: Banjar Masin, Sontang Lama, Ulu Sontang, Tanah Lapang, Napolen, Padang Balai, Rambah, Sipiongot, Bersama Indah, Janji Manahan, Janji Matogu, Aek Bargot, Muara Tais, Binubu dan Kubu Gadang. Dari aspek antropologi budaya, para penghuni di daerah perantauan ini mengalami proses asimilasi (kawin campur), akulturasi (peralihan budaya dan adat istiadat) dan artikulasi (perubahan aksen dan ucapan bahasa).\r\n\r\nDengan demikian terjadilah modifikasi suatu budaya yang cenderung berorientasi ke budaya Minang. Pada saat itu dibutuhkan tata pemerintahan atau peradatan dalam pengaturan masyarakat. Dari bentuk dusun, Koto dan Nagari, maka ditetapkan dan terbentuklah <strong>"Nagari Sontang" </strong>menjadi pusat pemerintaan. Tata pemerintahan di Sontang ini bersendikan kepada "<em>Ninik Nan Sembilan (Si Sia Ompu),  </em>yaitu : Raja Gunung Mulia (Raja Kampung atau Raja di Huta), Raja Gumanti Porang (Tiang Panjang atau bergelar Raja Sontang), Raja Batak (Tiang Pandak bergelar Bagindo Basa), Raja Indonan Margolang Bosi dan Datuk Mangkuto Alom sebagai Bendaharo, Raja Junjungan, Raja Luangsa, Raja Gading, Raja Dolok masing-masing sebagai Hakim Nana Barampek.\r\n\r\n&nbsp;\r\n\r\nSetelah terjadi pemekaran nagari, para pemuka masyarakat Cubadak meminta kepada pemuka madyarakat Sontang agar nama Cubadak itu tidak terlepas dari kenagarian Sontang. Dengan demikian, nagari ini disebutlah dengan nama: <strong>"Sontang Cubadak" </strong>yang mengukuhkan hubungan erat anatara masyarakat Sontang dan Cubadak. Sekarang secara kepemerintahannya bergabunga dengan Kecamatan Padang Gelugur, terhitung mulai dari sejak ditetapkannya menjadi nagari pada tanggal 09 Februari 2013 yang diresmikan oleh Bupati Pasaman.\r\n\r\nNagari Sontang Cubadak terdiri dari 6 suku, yaitu:\r\n<ol>\r\n 	<li>Minang</li>\r\n 	<li>Mandailing</li>\r\n 	<li>Melayu</li>\r\n 	<li>Batak</li>\r\n 	<li>Jawa</li>\r\n 	<li>Sunda</li>\r\n</ol>\r\nTerdiri dari 4 Jorong, yaitu:\r\n<ol>\r\n 	<li>Murni Sontang</li>\r\n 	<li>Sontang</li>\r\n 	<li>Rambah</li>\r\n 	<li>Binubu Kubu Gadang</li>\r\n</ol>', 'Sejarah Nagari', '', 'inherit', 'closed', 'closed', '', '158-revision-v1', '', '', '2018-07-31 04:24:08', '2018-07-31 04:24:08', '', 158, 'http://localhost/websontang/2018/07/31/158-revision-v1/', 0, 'revision', '', 0),
(178, 1, '2018-07-31 04:25:06', '2018-07-31 04:25:06', ' ', '', '', 'publish', 'closed', 'closed', '', '178', '', '', '2018-08-20 08:46:39', '2018-08-20 08:46:39', '', 0, 'http://localhost/websontang/?p=178', 18, 'nav_menu_item', '', 0),
(179, 1, '2018-07-31 04:25:51', '2018-07-31 04:25:51', 'sdfghkjlhdfghkjgf\r\n\r\ndgfhjfgfdsfdg\r\n<ol>\r\n 	<li>dfshgjh</li>\r\n 	<li>gdfhj</li>\r\n 	<li>dfjgh</li>\r\n 	<li>fh</li>\r\n 	<li>fhjgk</li>\r\n</ol>', 'Visi & Misi', '', 'publish', 'closed', 'closed', '', 'visi-misi', '', '', '2018-07-31 04:26:08', '2018-07-31 04:26:08', '', 0, 'http://localhost/websontang/?page_id=179', 0, 'page', '', 0),
(180, 1, '2018-07-31 04:25:52', '2018-07-31 04:25:52', ' ', '', '', 'publish', 'closed', 'closed', '', '180', '', '', '2018-08-20 08:46:39', '2018-08-20 08:46:39', '', 0, 'http://localhost/websontang/2018/07/31/180/', 19, 'nav_menu_item', '', 0),
(181, 1, '2018-07-31 04:25:51', '2018-07-31 04:25:51', 'sdfghkjlhdfghkjgf\r\n\r\ndgfhjfgfdsfdg\r\n<ol>\r\n 	<li>dfshgjh</li>\r\n 	<li>gdfhj</li>\r\n 	<li>dfjgh</li>\r\n 	<li>fh</li>\r\n 	<li>fhjgk</li>\r\n</ol>', 'Visi & Misi', '', 'inherit', 'closed', 'closed', '', '179-revision-v1', '', '', '2018-07-31 04:25:51', '2018-07-31 04:25:51', '', 179, 'http://localhost/websontang/2018/07/31/179-revision-v1/', 0, 'revision', '', 0),
(183, 1, '2018-07-31 04:26:13', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-07-31 04:26:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/websontang/?p=183', 1, 'nav_menu_item', '', 0),
(187, 1, '2018-07-31 05:40:29', '2018-07-31 05:40:29', 'Selamat datang di Website Nagari Sontang Cubadak', '', '', 'inherit', 'closed', 'closed', '', '127-autosave-v1', '', '', '2018-07-31 05:40:29', '2018-07-31 05:40:29', '', 127, 'http://localhost/websontang/2018/07/31/127-autosave-v1/', 0, 'revision', '', 0),
(197, 1, '2018-08-01 22:50:06', '2018-08-01 22:50:06', '', 'Logo Sontang Cubadak Nazhifa', '', 'inherit', 'open', 'closed', '', 'logo-sontang-cubadak-nazhifa', '', '', '2018-08-01 22:50:06', '2018-08-01 22:50:06', '', 0, 'http://localhost/websontang/wp-content/uploads/2018/08/Logo-Sontang-Cubadak-Nazhifa.png', 0, 'attachment', 'image/png', 0),
(199, 1, '2018-08-01 23:27:27', '2018-08-01 23:27:27', 'Bagi masyarakat yang mengurus surat atau dokumen harus membawa tanda lunas pajak.\r\n<p style="text-align: right;">Wali Nagari Sontang Cubadak\r\nHendra</p>\r\n&nbsp;', 'Pengumuman 1', '', 'publish', 'closed', 'closed', '', 'pengumuman-1', '', '', '2018-08-01 23:35:19', '2018-08-01 23:35:19', '', 0, 'http://localhost/websontang/?post_type=pengumuman&#038;p=199', 0, 'pengumuman', '', 0),
(201, 1, '2018-08-01 23:27:58', '2018-08-01 23:27:58', '', 'IMG_20180801_142143', '', 'inherit', 'open', 'closed', '', 'img_20180801_142143', '', '', '2018-08-01 23:27:58', '2018-08-01 23:27:58', '', 199, 'http://localhost/websontang/wp-content/uploads/2018/08/IMG_20180801_142143.jpg', 0, 'attachment', 'image/jpeg', 0),
(202, 1, '2018-08-01 23:35:22', '2018-08-01 23:35:22', 'Bagi masyarakat yang mengurus surat atau dokumen harus membawa tanda lunas pajak.\n<p style="text-align: right;">Wali Nagari Sontang Cubadak\nHendra</p>\n&nbsp;', 'Pengumuman 1', '', 'inherit', 'closed', 'closed', '', '199-autosave-v1', '', '', '2018-08-01 23:35:22', '2018-08-01 23:35:22', '', 199, 'http://localhost/websontang/2018/08/01/199-autosave-v1/', 0, 'revision', '', 0),
(203, 1, '2018-08-01 23:38:04', '2018-08-01 23:38:04', 'Bagi masyarakat yang belum memiliki E-KTP silakan datang 20 - 21 Agustus 2018 di Kantor Wali Nagari.\r\n<p style="text-align: right;">Ttd</p>\r\n<p style="text-align: right;">PPS Sontang Cubadak</p>', 'E-KTP', '', 'publish', 'closed', 'closed', '', 'e-ktp', '', '', '2018-08-01 23:38:04', '2018-08-01 23:38:04', '', 0, 'http://localhost/websontang/?post_type=pengumuman&#038;p=203', 0, 'pengumuman', '', 0),
(204, 1, '2018-08-01 23:37:49', '2018-08-01 23:37:49', '', 'IMG_20180801_142121', '', 'inherit', 'open', 'closed', '', 'img_20180801_142121', '', '', '2018-08-01 23:37:49', '2018-08-01 23:37:49', '', 203, 'http://localhost/websontang/wp-content/uploads/2018/08/IMG_20180801_142121.jpg', 0, 'attachment', 'image/jpeg', 0),
(205, 1, '2018-08-01 23:38:06', '2018-08-01 23:38:06', 'Bagi masyarakat yang belum memiliki E-KTP silakan datang 20 - 21 Agustus 2018 di Kantor Wali Nagari.\n<p style="text-align: right;">Ttd</p>\n<p style="text-align: right;">PPS Sontang Cubadak</p>', 'E-KTP', '', 'inherit', 'closed', 'closed', '', '203-autosave-v1', '', '', '2018-08-01 23:38:06', '2018-08-01 23:38:06', '', 203, 'http://localhost/websontang/2018/08/01/203-autosave-v1/', 0, 'revision', '', 0),
(206, 1, '2018-08-02 03:11:16', '2018-08-02 03:11:16', 'Pada tahun ini,  Nagari Sontang Cubadak menerima 20 orang mahasiswa KKN Universitas Andalas (UNAND) yang berasal dari berbagai Fakultas.\r\n\r\n[caption id="attachment_211" align="alignnone" width="610"]<img class="wp-image-211" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG-20180629-WA0018-1024x576.jpg" alt="Mahasiswa KKN UNAND" width="610" height="343" /> Mahasiswa KKN UNAND 2018 untuk Nagari Sontang Cubadak yang berjumlah 20 orang[/caption]\r\n\r\nMahasiswa KKN Universitas Andalas ini akan mengabdi di Nagari Sontang Cubadak selama 40 hari, terhitung pada tanggal 28 Juni - 8 Agustus 2018.\r\n\r\nWali Nagari Sontang Cubadak, Hendra, dan Camat Padang Gelugur, Eddie Hasfa, menyambut kedatangan mahasiswa ini di Kantor Camat pada tanggal 30 Juni 2018.\r\n\r\nMahasiswa KKN ini akan tinggal di kampung Banjarmasin tepatnya di kediaman Ibu Lisbon.\r\n\r\n[caption id="attachment_225" align="alignnone" width="610"]<img class="wp-image-225" src="http://localhost/websontang/wp-content/uploads/2018/08/YDXJ0502-1024x768.jpg" alt="" width="610" height="457" /> Mahasiswa KKN UNAND bersama Dosen Pembimbing Lapangan dan Ibu Lisbon[/caption]\r\n\r\nPada tanggal 2 Juli 2018, mahasiswa KKN UNAND mengadakan sosialisasi program kerja untuk 40 hari kedepan.\r\n\r\n[caption id="attachment_218" align="alignnone" width="610"]<img class="wp-image-218" src="http://localhost/websontang/wp-content/uploads/2018/08/YDXJ0449-1024x768.jpg" alt="" width="610" height="457" /> Sosialisasi Program Kerja Mahasiswa KKN UNAND di Kantor Wali Nagari Sontang Cubadak[/caption]\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Nagari Sontang Cubadak Sambut Mahasiswa KKN UNAND 2018', '', 'publish', 'open', 'open', '', 'nagari-sontang-cubadak-sambut-mahasiswa-kkn-unand-2018', '', '', '2018-08-20 09:19:48', '2018-08-20 09:19:48', '', 0, 'http://localhost/websontang/?p=206', 0, 'post', '', 0),
(207, 1, '2018-08-02 03:11:16', '2018-08-02 03:11:16', 'Pada tahun ini,  Nagari Sontang Cubadak menerima 20 orang mahasiswa KKN Universitas Andalas (UNAND) yang berasal dari berbagai Fakultas. Mahasiswa KKN Universitas Andalas ini akan mengabdi di Nagari Sontang Cubadak selama 40 hari, terhitung pada tanggal 29 Juni - 8 Agustus 2018.', 'Nagari Sontang Cubadak Sambut Mahasiswa KKN UNAND 2018', '', 'inherit', 'closed', 'closed', '', '206-revision-v1', '', '', '2018-08-02 03:11:16', '2018-08-02 03:11:16', '', 206, 'http://localhost/websontang/2018/08/02/206-revision-v1/', 0, 'revision', '', 0),
(209, 1, '2018-08-02 03:18:19', '2018-08-02 03:18:19', '', 'IMG-20180629-WA0023', '', 'inherit', 'open', 'closed', '', 'img-20180629-wa0023', '', '', '2018-08-02 03:18:19', '2018-08-02 03:18:19', '', 206, 'http://localhost/websontang/wp-content/uploads/2018/08/IMG-20180629-WA0023.jpg', 0, 'attachment', 'image/jpeg', 0),
(211, 1, '2018-08-02 03:26:22', '2018-08-02 03:26:22', '', 'IMG-20180629-WA0018', '', 'inherit', 'open', 'closed', '', 'img-20180629-wa0018', '', '', '2018-08-02 03:26:22', '2018-08-02 03:26:22', '', 206, 'http://localhost/websontang/wp-content/uploads/2018/08/IMG-20180629-WA0018.jpg', 0, 'attachment', 'image/jpeg', 0),
(212, 1, '2018-08-02 03:27:15', '2018-08-02 03:27:15', 'Pada tahun ini,  Nagari Sontang Cubadak menerima 20 orang mahasiswa KKN Universitas Andalas (UNAND) yang berasal dari berbagai Fakultas.\r\n\r\n<img class="alignnone size-large wp-image-211" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG-20180629-WA0018-1024x576.jpg" alt="" width="810" height="456" />\r\n\r\nMahasiswa KKN Universitas Andalas ini akan mengabdi di Nagari Sontang Cubadak selama 40 hari, terhitung pada tanggal 28 Juni - 8 Agustus 2018.\r\n\r\nWali Nagari Sontang Cubadak, Hendra, dan Camat Padang Gelugur, blabla, menyambut kedatangan mahasiswa ini di Kantor Camat pada tanggal 30 Juni 2018.\r\n\r\nMahasiswa KKN ini akan tinggal di kampung Banjarmasin tepatnya adi kediaman Ibu Lisbon.\r\n\r\nPada tanggal 2 Juli 2018, mahasiswa KKN UNAND mengadakan sosialisasi program kerja untuk 40 hari kedepan.\r\n\r\n<img class="alignnone size-large wp-image-210" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG-20180702-WA0011-1024x768.jpg" alt="" width="810" height="608" />\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Nagari Sontang Cubadak Sambut Mahasiswa KKN UNAND 2018', '', 'inherit', 'closed', 'closed', '', '206-revision-v1', '', '', '2018-08-02 03:27:15', '2018-08-02 03:27:15', '', 206, 'http://localhost/websontang/2018/08/02/206-revision-v1/', 0, 'revision', '', 0),
(213, 1, '2018-08-02 03:28:32', '2018-08-02 03:28:32', 'Pada tahun ini,  Nagari Sontang Cubadak menerima 20 orang mahasiswa KKN Universitas Andalas (UNAND) yang berasal dari berbagai Fakultas.\r\n\r\n<img class="alignnone wp-image-211 size-medium" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG-20180629-WA0018-300x169.jpg" alt="" width="300" height="169" />\r\n\r\nMahasiswa KKN Universitas Andalas ini akan mengabdi di Nagari Sontang Cubadak selama 40 hari, terhitung pada tanggal 28 Juni - 8 Agustus 2018.\r\n\r\nWali Nagari Sontang Cubadak, Hendra, dan Camat Padang Gelugur, blabla, menyambut kedatangan mahasiswa ini di Kantor Camat pada tanggal 30 Juni 2018.\r\n\r\nMahasiswa KKN ini akan tinggal di kampung Banjarmasin tepatnya adi kediaman Ibu Lisbon.\r\n\r\nPada tanggal 2 Juli 2018, mahasiswa KKN UNAND mengadakan sosialisasi program kerja untuk 40 hari kedepan.\r\n\r\n<img class="alignnone wp-image-210 size-medium" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG-20180702-WA0011-e1533180237680-300x167.jpg" alt="" width="300" height="167" />\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Nagari Sontang Cubadak Sambut Mahasiswa KKN UNAND 2018', '', 'inherit', 'closed', 'closed', '', '206-revision-v1', '', '', '2018-08-02 03:28:32', '2018-08-02 03:28:32', '', 206, 'http://localhost/websontang/2018/08/02/206-revision-v1/', 0, 'revision', '', 0),
(214, 1, '2018-08-02 03:30:52', '2018-08-02 03:30:52', 'Pada tahun ini,  Nagari Sontang Cubadak menerima 20 orang mahasiswa KKN Universitas Andalas (UNAND) yang berasal dari berbagai Fakultas.\r\n\r\n<img class="alignnone size-large wp-image-211" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG-20180629-WA0018-1024x576.jpg" alt="" width="810" height="456" />\r\n\r\nMahasiswa KKN Universitas Andalas ini akan mengabdi di Nagari Sontang Cubadak selama 40 hari, terhitung pada tanggal 28 Juni - 8 Agustus 2018.\r\n\r\nWali Nagari Sontang Cubadak, Hendra, dan Camat Padang Gelugur, blabla, menyambut kedatangan mahasiswa ini di Kantor Camat pada tanggal 30 Juni 2018.\r\n\r\nMahasiswa KKN ini akan tinggal di kampung Banjarmasin tepatnya adi kediaman Ibu Lisbon.\r\n\r\n<img class="wp-image-210  aligncenter" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG-20180702-WA0011-e1533180237680-300x167.jpg" alt="" width="389" height="217" />\r\n\r\nPada tanggal 2 Juli 2018, mahasiswa KKN UNAND mengadakan sosialisasi program kerja untuk 40 hari kedepan.\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Nagari Sontang Cubadak Sambut Mahasiswa KKN UNAND 2018', '', 'inherit', 'closed', 'closed', '', '206-revision-v1', '', '', '2018-08-02 03:30:52', '2018-08-02 03:30:52', '', 206, 'http://localhost/websontang/2018/08/02/206-revision-v1/', 0, 'revision', '', 0),
(215, 1, '2018-08-02 03:31:38', '2018-08-02 03:31:38', 'Pada tahun ini,  Nagari Sontang Cubadak menerima 20 orang mahasiswa KKN Universitas Andalas (UNAND) yang berasal dari berbagai Fakultas.\r\n\r\n<img class="alignnone wp-image-211" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG-20180629-WA0018-1024x576.jpg" alt="" width="610" height="343" />\r\n\r\nMahasiswa KKN Universitas Andalas ini akan mengabdi di Nagari Sontang Cubadak selama 40 hari, terhitung pada tanggal 28 Juni - 8 Agustus 2018.\r\n\r\nWali Nagari Sontang Cubadak, Hendra, dan Camat Padang Gelugur, blabla, menyambut kedatangan mahasiswa ini di Kantor Camat pada tanggal 30 Juni 2018.\r\n\r\nMahasiswa KKN ini akan tinggal di kampung Banjarmasin tepatnya adi kediaman Ibu Lisbon.\r\n\r\n<img class="wp-image-210 aligncenter" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG-20180702-WA0011-e1533180237680-300x167.jpg" alt="" width="389" height="217" />\r\n\r\nPada tanggal 2 Juli 2018, mahasiswa KKN UNAND mengadakan sosialisasi program kerja untuk 40 hari kedepan.\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Nagari Sontang Cubadak Sambut Mahasiswa KKN UNAND 2018', '', 'inherit', 'closed', 'closed', '', '206-revision-v1', '', '', '2018-08-02 03:31:38', '2018-08-02 03:31:38', '', 206, 'http://localhost/websontang/2018/08/02/206-revision-v1/', 0, 'revision', '', 0),
(216, 1, '2018-08-02 03:32:18', '2018-08-02 03:32:18', 'Pada tahun ini,  Nagari Sontang Cubadak menerima 20 orang mahasiswa KKN Universitas Andalas (UNAND) yang berasal dari berbagai Fakultas.\r\n\r\n<img class="alignnone wp-image-211" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG-20180629-WA0018-1024x576.jpg" alt="" width="610" height="343" />\r\n\r\nMahasiswa KKN Universitas Andalas ini akan mengabdi di Nagari Sontang Cubadak selama 40 hari, terhitung pada tanggal 28 Juni - 8 Agustus 2018.\r\n\r\nWali Nagari Sontang Cubadak, Hendra, dan Camat Padang Gelugur, blabla, menyambut kedatangan mahasiswa ini di Kantor Camat pada tanggal 30 Juni 2018.\r\n\r\nMahasiswa KKN ini akan tinggal di kampung Banjarmasin tepatnya adi kediaman Ibu Lisbon.\r\n\r\n<img class="wp-image-210 alignleft" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG-20180702-WA0011-e1533180237680-300x167.jpg" alt="" width="610" height="340" />\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nPada tanggal 2 Juli 2018, mahasiswa KKN UNAND mengadakan sosialisasi program kerja untuk 40 hari kedepan.\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Nagari Sontang Cubadak Sambut Mahasiswa KKN UNAND 2018', '', 'inherit', 'closed', 'closed', '', '206-revision-v1', '', '', '2018-08-02 03:32:18', '2018-08-02 03:32:18', '', 206, 'http://localhost/websontang/2018/08/02/206-revision-v1/', 0, 'revision', '', 0),
(217, 1, '2018-08-02 03:33:23', '2018-08-02 03:33:23', 'Pada tahun ini,  Nagari Sontang Cubadak menerima 20 orang mahasiswa KKN Universitas Andalas (UNAND) yang berasal dari berbagai Fakultas.\r\n\r\n<img class="alignnone wp-image-211" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG-20180629-WA0018-1024x576.jpg" alt="" width="610" height="343" />\r\n\r\nMahasiswa KKN Universitas Andalas ini akan mengabdi di Nagari Sontang Cubadak selama 40 hari, terhitung pada tanggal 28 Juni - 8 Agustus 2018.\r\n\r\nWali Nagari Sontang Cubadak, Hendra, dan Camat Padang Gelugur, blabla, menyambut kedatangan mahasiswa ini di Kantor Camat pada tanggal 30 Juni 2018.\r\n\r\nMahasiswa KKN ini akan tinggal di kampung Banjarmasin tepatnya adi kediaman Ibu Lisbon.\r\n\r\n<img class="alignnone wp-image-210" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG-20180702-WA0011-1024x768.jpg" alt="" width="610" height="340" />\r\n\r\nPada tanggal 2 Juli 2018, mahasiswa KKN UNAND mengadakan sosialisasi program kerja untuk 40 hari kedepan.\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Nagari Sontang Cubadak Sambut Mahasiswa KKN UNAND 2018', '', 'inherit', 'closed', 'closed', '', '206-revision-v1', '', '', '2018-08-02 03:33:23', '2018-08-02 03:33:23', '', 206, 'http://localhost/websontang/2018/08/02/206-revision-v1/', 0, 'revision', '', 0),
(218, 1, '2018-08-02 03:43:11', '2018-08-02 03:43:11', '', 'DCIM101MEDIA', 'DCIM101MEDIA', 'inherit', 'open', 'closed', '', 'dcim101media', '', '', '2018-08-02 03:44:55', '2018-08-02 03:44:55', '', 206, 'http://localhost/websontang/wp-content/uploads/2018/08/YDXJ0449.jpg', 0, 'attachment', 'image/jpeg', 0),
(219, 1, '2018-08-02 03:44:28', '2018-08-02 03:44:28', 'Pada tahun ini,  Nagari Sontang Cubadak menerima 20 orang mahasiswa KKN Universitas Andalas (UNAND) yang berasal dari berbagai Fakultas.\r\n\r\n<img class="alignnone wp-image-211" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG-20180629-WA0018-1024x576.jpg" alt="" width="610" height="343" />\r\n\r\nMahasiswa KKN Universitas Andalas ini akan mengabdi di Nagari Sontang Cubadak selama 40 hari, terhitung pada tanggal 28 Juni - 8 Agustus 2018.\r\n\r\nWali Nagari Sontang Cubadak, Hendra, dan Camat Padang Gelugur, blabla, menyambut kedatangan mahasiswa ini di Kantor Camat pada tanggal 30 Juni 2018.\r\n\r\nMahasiswa KKN ini akan tinggal di kampung Banjarmasin tepatnya adi kediaman Ibu Lisbon.\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nPada tanggal 2 Juli 2018, mahasiswa KKN UNAND mengadakan sosialisasi program kerja untuk 40 hari kedepan.\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Nagari Sontang Cubadak Sambut Mahasiswa KKN UNAND 2018', '', 'inherit', 'closed', 'closed', '', '206-revision-v1', '', '', '2018-08-02 03:44:28', '2018-08-02 03:44:28', '', 206, 'http://localhost/websontang/2018/08/02/206-revision-v1/', 0, 'revision', '', 0),
(220, 1, '2018-08-02 03:47:09', '2018-08-02 03:47:09', 'Pada tahun ini,  Nagari Sontang Cubadak menerima 20 orang mahasiswa KKN Universitas Andalas (UNAND) yang berasal dari berbagai Fakultas.\r\n\r\n[caption id="attachment_211" align="alignnone" width="610"]<img class="wp-image-211" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG-20180629-WA0018-1024x576.jpg" alt="Mahasiswa KKN UNAND" width="610" height="343" /> Mahasiswa KKN UNAND 2018 untuk Nagari Sontang Cubadak yang berjumlah 20 orang[/caption]\r\n\r\nMahasiswa KKN Universitas Andalas ini akan mengabdi di Nagari Sontang Cubadak selama 40 hari, terhitung pada tanggal 28 Juni - 8 Agustus 2018.\r\n\r\nWali Nagari Sontang Cubadak, Hendra, dan Camat Padang Gelugur, blabla, menyambut kedatangan mahasiswa ini di Kantor Camat pada tanggal 30 Juni 2018.\r\n\r\nMahasiswa KKN ini akan tinggal di kampung Banjarmasin tepatnya adi kediaman Ibu Lisbon.\r\n\r\nPada tanggal 2 Juli 2018, mahasiswa KKN UNAND mengadakan sosialisasi program kerja untuk 40 hari kedepan.\r\n\r\n[caption id="attachment_218" align="alignnone" width="610"]<img class="wp-image-218" src="http://localhost/websontang/wp-content/uploads/2018/08/YDXJ0449-1024x768.jpg" alt="" width="610" height="457" /> Sosialisasi Program Kerja Mahasiswa KKN UNAND di Kantor Wali Nagari Sontang Cubadak[/caption]\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Nagari Sontang Cubadak Sambut Mahasiswa KKN UNAND 2018', '', 'inherit', 'closed', 'closed', '', '206-revision-v1', '', '', '2018-08-02 03:47:09', '2018-08-02 03:47:09', '', 206, 'http://localhost/websontang/2018/08/02/206-revision-v1/', 0, 'revision', '', 0),
(221, 1, '2018-08-02 04:18:15', '2018-08-02 04:18:15', 'Nagari Sontang Cubadak Menjadi Tuan Rumah MTQ XII tingkat Kecamatan Padang Gelugur pada tahun ini.\r\n\r\n"Kita Raih Prestasi yang Bergengsi untuk Terwujudnya Masyarakat Padang Gelugur yang Sejahtera, Agamis dan Berbudaya"\r\n\r\nPembukaan dilaksanakan di Masjid Raya Fathur Rahman Sontang dan dibuka oleh Sekretaris Bupati Pasaman.<img class="alignnone wp-image-259" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG_4163-1024x683.jpg" alt="Pembukan yang dihadiri oleh Sekretaris Bupati, M. Saleh" width="610" height="407" />\r\n\r\n<img class="alignnone wp-image-262" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG_4188-1024x683.jpg" alt="" width="610" height="407" /> <img class="alignnone wp-image-263" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG_4180-1024x575.jpg" alt="" width="610" height="342" />', 'Nagari Sontang Cubadak Menjadi Tuan Rumah MTQ XII tingkat Kecamatan Padang Gelugur', '', 'publish', 'open', 'open', '', 'nagari-sontang-cubadak-menjadi-tuan-rumah-mtq-xii-tingkat-kecamatan-padang-gelugur', '', '', '2018-08-20 09:21:27', '2018-08-20 09:21:27', '', 0, 'http://localhost/websontang/?p=221', 0, 'post', '', 0),
(222, 1, '2018-08-02 04:18:15', '2018-08-02 04:18:15', 'Nagari Sontang Cubadak Menjadi Tuan Rumah MTQ XII tingkat Kecamatan Padang Gelugur pada tahun ini.', 'Nagari Sontang Cubadak Menjadi Tuan Rumah MTQ XII tingkat Kecamatan Padang Gelugur', '', 'inherit', 'closed', 'closed', '', '221-revision-v1', '', '', '2018-08-02 04:18:15', '2018-08-02 04:18:15', '', 221, 'http://localhost/websontang/2018/08/02/221-revision-v1/', 0, 'revision', '', 0),
(225, 1, '2018-08-02 04:19:02', '2018-08-02 04:19:02', '', 'DCIM101MEDIA', 'DCIM101MEDIA', 'inherit', 'open', 'closed', '', 'dcim101media-2', '', '', '2018-08-02 04:19:02', '2018-08-02 04:19:02', '', 206, 'http://localhost/websontang/wp-content/uploads/2018/08/YDXJ0502.jpg', 0, 'attachment', 'image/jpeg', 0),
(226, 1, '2018-08-02 04:20:09', '2018-08-02 04:20:09', 'Pada tahun ini,  Nagari Sontang Cubadak menerima 20 orang mahasiswa KKN Universitas Andalas (UNAND) yang berasal dari berbagai Fakultas.\r\n\r\n[caption id="attachment_211" align="alignnone" width="610"]<img class="wp-image-211" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG-20180629-WA0018-1024x576.jpg" alt="Mahasiswa KKN UNAND" width="610" height="343" /> Mahasiswa KKN UNAND 2018 untuk Nagari Sontang Cubadak yang berjumlah 20 orang[/caption]\r\n\r\nMahasiswa KKN Universitas Andalas ini akan mengabdi di Nagari Sontang Cubadak selama 40 hari, terhitung pada tanggal 28 Juni - 8 Agustus 2018.\r\n\r\nWali Nagari Sontang Cubadak, Hendra, dan Camat Padang Gelugur, blabla, menyambut kedatangan mahasiswa ini di Kantor Camat pada tanggal 30 Juni 2018.\r\n\r\nMahasiswa KKN ini akan tinggal di kampung Banjarmasin tepatnya adi kediaman Ibu Lisbon.\r\n\r\n[caption id="attachment_225" align="alignnone" width="610"]<img class="wp-image-225" src="http://localhost/websontang/wp-content/uploads/2018/08/YDXJ0502-1024x768.jpg" alt="" width="610" height="457" /> Mahasiswa KKN UNAND bersama Dosen Pembimbing Lapangan dan Ibu Lisbon[/caption]\r\n\r\nPada tanggal 2 Juli 2018, mahasiswa KKN UNAND mengadakan sosialisasi program kerja untuk 40 hari kedepan.\r\n\r\n[caption id="attachment_218" align="alignnone" width="610"]<img class="wp-image-218" src="http://localhost/websontang/wp-content/uploads/2018/08/YDXJ0449-1024x768.jpg" alt="" width="610" height="457" /> Sosialisasi Program Kerja Mahasiswa KKN UNAND di Kantor Wali Nagari Sontang Cubadak[/caption]\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Nagari Sontang Cubadak Sambut Mahasiswa KKN UNAND 2018', '', 'inherit', 'closed', 'closed', '', '206-revision-v1', '', '', '2018-08-02 04:20:09', '2018-08-02 04:20:09', '', 206, 'http://localhost/websontang/2018/08/02/206-revision-v1/', 0, 'revision', '', 0),
(228, 1, '2018-08-02 04:41:08', '2018-08-02 04:41:08', 'Nagari Sontang Cubadak Menjadi Tuan Rumah MTQ XII tingkat Kecamatan Padang Gelugur pada tahun ini.\r\n\r\n&nbsp;', 'Nagari Sontang Cubadak Menjadi Tuan Rumah MTQ XII tingkat Kecamatan Padang Gelugur', '', 'inherit', 'closed', 'closed', '', '221-revision-v1', '', '', '2018-08-02 04:41:08', '2018-08-02 04:41:08', '', 221, 'http://localhost/websontang/2018/08/02/221-revision-v1/', 0, 'revision', '', 0),
(229, 1, '2018-08-02 04:43:33', '2018-08-02 04:43:33', 'Puskesmas Keliling yang diadadakan di Kantor Wali Nagari Sontang Cubadak.\r\n\r\n[caption id="attachment_237" align="alignnone" width="610"]<img class="wp-image-237" src="http://localhost/websontang/wp-content/uploads/2018/08/20180720_113022-1024x768.jpg" alt="" width="610" height="458" /> Puskesmas Keliling di Kantor Wali Nagari Sontang Cubadak[/caption]\r\n\r\nKegiatan yang dilakukan adalah Cek Tensi dan Gula Darah, Penyuluhan Hipertensi dan Penyuluhan Diet Sehat.\r\n\r\n&nbsp;\r\n\r\n[caption id="attachment_233" align="alignnone" width="610"]<img class="wp-image-233" src="http://localhost/websontang/wp-content/uploads/2018/08/20180720_113457-1024x768.jpg" alt="" width="610" height="458" /> Penyuluhan Diet Sehat oleh Rahmi Putri Mahasiswa Ilmu Gizi[/caption]\r\n\r\n[caption id="attachment_234" align="alignnone" width="610"]<img class="wp-image-234" src="http://localhost/websontang/wp-content/uploads/2018/08/20180720_112503-1024x768.jpg" alt="" width="610" height="458" /> Penyuluhan Hipertensi oleh Yunia Habsari Mahasiswi Kedokteran[/caption]\r\n\r\n<img class="alignnone wp-image-238 size-medium" src="http://localhost/websontang/wp-content/uploads/2018/08/20180720_114434-300x225.jpg" alt="" width="300" height="225" /><img class="alignnone wp-image-243 " src="http://localhost/websontang/wp-content/uploads/2018/08/IMG-20180721-WA0027-169x300.jpg" alt="" width="127" height="225" /><img class="alignnone wp-image-239 " src="http://localhost/websontang/wp-content/uploads/2018/08/20180720_114608-150x150.jpg" alt="" width="224" height="224" />\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Mahasiswa KKN UNAND Berpartisipasi pada Puskesmas Keliling', '', 'publish', 'open', 'open', '', 'mahasiswa-kkn-unand-berpartisipasi-pada-puskesmas-keliling', '', '', '2018-08-20 09:22:12', '2018-08-20 09:22:12', '', 0, 'http://localhost/websontang/?p=229', 0, 'post', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(230, 1, '2018-08-02 04:43:33', '2018-08-02 04:43:33', 'Puskesmas Keliling yang diadadakan di Kantor Wali Nagari Sontang Cubadak\r\n\r\nKegiatan yang dilakukan adalah Cek Tensi dan Gula Darah, Sosialisasi Hipertensi dan Sosialisasi Diet Sehat.\r\n\r\n&nbsp;', 'Mahasiswa KKN UNAND Berpartisipasi pada Puskesmas Keliling', '', 'inherit', 'closed', 'closed', '', '229-revision-v1', '', '', '2018-08-02 04:43:33', '2018-08-02 04:43:33', '', 229, 'http://localhost/websontang/2018/08/02/229-revision-v1/', 0, 'revision', '', 0),
(232, 1, '2018-08-02 04:48:00', '2018-08-02 04:48:00', '', '20180720_112500', '', 'inherit', 'open', 'closed', '', '20180720_112500', '', '', '2018-08-02 04:48:00', '2018-08-02 04:48:00', '', 229, 'http://localhost/websontang/wp-content/uploads/2018/08/20180720_112500.jpg', 0, 'attachment', 'image/jpeg', 0),
(233, 1, '2018-08-02 04:49:11', '2018-08-02 04:49:11', '', '20180720_113457', '', 'inherit', 'open', 'closed', '', '20180720_113457', '', '', '2018-08-02 04:49:11', '2018-08-02 04:49:11', '', 229, 'http://localhost/websontang/wp-content/uploads/2018/08/20180720_113457.jpg', 0, 'attachment', 'image/jpeg', 0),
(234, 1, '2018-08-02 04:50:26', '2018-08-02 04:50:26', '', '20180720_112503', '', 'inherit', 'open', 'closed', '', '20180720_112503', '', '', '2018-08-02 04:50:26', '2018-08-02 04:50:26', '', 229, 'http://localhost/websontang/wp-content/uploads/2018/08/20180720_112503.jpg', 0, 'attachment', 'image/jpeg', 0),
(235, 1, '2018-08-02 04:54:23', '2018-08-02 04:54:23', '', '20180720_112640', '', 'inherit', 'open', 'closed', '', '20180720_112640', '', '', '2018-08-02 04:54:23', '2018-08-02 04:54:23', '', 229, 'http://localhost/websontang/wp-content/uploads/2018/08/20180720_112640.jpg', 0, 'attachment', 'image/jpeg', 0),
(236, 1, '2018-08-02 04:54:47', '2018-08-02 04:54:47', 'Puskesmas Keliling yang diadadakan di Kantor Wali Nagari Sontang Cubadak\r\n\r\nKegiatan yang dilakukan adalah Cek Tensi dan Gula Darah, Sosialisasi Hipertensi dan Sosialisasi Diet Sehat.\r\n\r\n&nbsp;\r\n\r\n[caption id="attachment_233" align="alignnone" width="610"]<img class="wp-image-233" src="http://localhost/websontang/wp-content/uploads/2018/08/20180720_113457-1024x768.jpg" alt="" width="610" height="458" /> Sosialisasi Diet Sehat oleh Rahmi Putri Mahasiswa Ilmu Gizi[/caption]\r\n\r\n[caption id="attachment_234" align="alignnone" width="610"]<img class="wp-image-234" src="http://localhost/websontang/wp-content/uploads/2018/08/20180720_112503-1024x768.jpg" alt="" width="610" height="458" /> Sosialisasi Hipertensi oleh Yunia Habsari Mahasiswi Kedokteran[/caption]\r\n\r\n&nbsp;', 'Mahasiswa KKN UNAND Berpartisipasi pada Puskesmas Keliling', '', 'inherit', 'closed', 'closed', '', '229-revision-v1', '', '', '2018-08-02 04:54:47', '2018-08-02 04:54:47', '', 229, 'http://localhost/websontang/2018/08/02/229-revision-v1/', 0, 'revision', '', 0),
(237, 1, '2018-08-02 04:56:29', '2018-08-02 04:56:29', '', '20180720_113022', '', 'inherit', 'open', 'closed', '', '20180720_113022', '', '', '2018-08-02 04:56:29', '2018-08-02 04:56:29', '', 229, 'http://localhost/websontang/wp-content/uploads/2018/08/20180720_113022.jpg', 0, 'attachment', 'image/jpeg', 0),
(238, 1, '2018-08-02 05:07:01', '2018-08-02 05:07:01', '', '20180720_114434', '', 'inherit', 'open', 'closed', '', '20180720_114434', '', '', '2018-08-02 05:08:57', '2018-08-02 05:08:57', '', 229, 'http://localhost/websontang/wp-content/uploads/2018/08/20180720_114434.jpg', 0, 'attachment', 'image/jpeg', 0),
(239, 1, '2018-08-02 05:07:12', '2018-08-02 05:07:12', '', '20180720_114608', '', 'inherit', 'open', 'closed', '', '20180720_114608', '', '', '2018-08-02 05:08:57', '2018-08-02 05:08:57', '', 229, 'http://localhost/websontang/wp-content/uploads/2018/08/20180720_114608.jpg', 0, 'attachment', 'image/jpeg', 0),
(240, 1, '2018-08-02 05:07:42', '2018-08-02 05:07:42', 'Puskesmas Keliling yang diadadakan di Kantor Wali Nagari Sontang Cubadak\r\n\r\n[caption id="attachment_237" align="alignnone" width="610"]<img class="wp-image-237" src="http://localhost/websontang/wp-content/uploads/2018/08/20180720_113022-1024x768.jpg" alt="" width="610" height="458" /> Puskesmas Keliling di Kantor Wali Nagari Sontang Cubadak[/caption]\r\n\r\nKegiatan yang dilakukan adalah Cek Tensi dan Gula Darah, Sosialisasi Hipertensi dan Sosialisasi Diet Sehat.\r\n\r\n&nbsp;\r\n\r\n[caption id="attachment_233" align="alignnone" width="610"]<img class="wp-image-233" src="http://localhost/websontang/wp-content/uploads/2018/08/20180720_113457-1024x768.jpg" alt="" width="610" height="458" /> Sosialisasi Diet Sehat oleh Rahmi Putri Mahasiswa Ilmu Gizi[/caption]\r\n\r\n[caption id="attachment_234" align="alignnone" width="610"]<img class="wp-image-234" src="http://localhost/websontang/wp-content/uploads/2018/08/20180720_112503-1024x768.jpg" alt="" width="610" height="458" /> Sosialisasi Hipertensi oleh Yunia Habsari Mahasiswi Kedokteran[/caption]\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Mahasiswa KKN UNAND Berpartisipasi pada Puskesmas Keliling', '', 'inherit', 'closed', 'closed', '', '229-revision-v1', '', '', '2018-08-02 05:07:42', '2018-08-02 05:07:42', '', 229, 'http://localhost/websontang/2018/08/02/229-revision-v1/', 0, 'revision', '', 0),
(243, 1, '2018-08-02 05:08:54', '2018-08-02 05:08:54', '', 'IMG-20180721-WA0027', '', 'inherit', 'open', 'closed', '', 'img-20180721-wa0027', '', '', '2018-08-02 05:08:54', '2018-08-02 05:08:54', '', 229, 'http://localhost/websontang/wp-content/uploads/2018/08/IMG-20180721-WA0027.jpg', 0, 'attachment', 'image/jpeg', 0),
(244, 1, '2018-08-02 05:10:17', '2018-08-02 05:10:17', 'Puskesmas Keliling yang diadadakan di Kantor Wali Nagari Sontang Cubadak\r\n\r\n[caption id="attachment_237" align="alignnone" width="610"]<img class="wp-image-237" src="http://localhost/websontang/wp-content/uploads/2018/08/20180720_113022-1024x768.jpg" alt="" width="610" height="458" /> Puskesmas Keliling di Kantor Wali Nagari Sontang Cubadak[/caption]\r\n\r\nKegiatan yang dilakukan adalah Cek Tensi dan Gula Darah, Sosialisasi Hipertensi dan Sosialisasi Diet Sehat.\r\n\r\n&nbsp;\r\n\r\n[caption id="attachment_233" align="alignnone" width="610"]<img class="wp-image-233" src="http://localhost/websontang/wp-content/uploads/2018/08/20180720_113457-1024x768.jpg" alt="" width="610" height="458" /> Sosialisasi Diet Sehat oleh Rahmi Putri Mahasiswa Ilmu Gizi[/caption]\r\n\r\n[caption id="attachment_234" align="alignnone" width="610"]<img class="wp-image-234" src="http://localhost/websontang/wp-content/uploads/2018/08/20180720_112503-1024x768.jpg" alt="" width="610" height="458" /> Sosialisasi Hipertensi oleh Yunia Habsari Mahasiswi Kedokteran[/caption]\r\n\r\n<img class="alignnone wp-image-238 size-thumbnail" src="http://localhost/websontang/wp-content/uploads/2018/08/20180720_114434-150x150.jpg" alt="" width="150" height="150" /><img class="alignnone wp-image-243 size-thumbnail" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG-20180721-WA0027-150x150.jpg" alt="" width="150" height="150" /><img class="alignnone wp-image-239 size-thumbnail" src="http://localhost/websontang/wp-content/uploads/2018/08/20180720_114608-150x150.jpg" alt="" width="150" height="150" />\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Mahasiswa KKN UNAND Berpartisipasi pada Puskesmas Keliling', '', 'inherit', 'closed', 'closed', '', '229-revision-v1', '', '', '2018-08-02 05:10:17', '2018-08-02 05:10:17', '', 229, 'http://localhost/websontang/2018/08/02/229-revision-v1/', 0, 'revision', '', 0),
(245, 1, '2018-08-02 08:51:12', '2018-08-02 08:51:12', 'Dosen UNAND, Aisman,  memberikan Penyuluhan Pengolahan Cacao kepada Masyarakat Sontang Cubadak pada tanggal 20 Juli 2018 di Kantor Wali Nagari Sontang Cubadak.\r\n\r\nPesertanya adalah masyarakat Sontang Cubadak.\r\n\r\nMaterinya mengenai pengolahan biji cacao menjadi coklat.\r\n\r\n&nbsp;\r\n\r\n[caption id="attachment_250" align="alignnone" width="610"]<img class="wp-image-250" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG_3202-1024x683.jpg" alt="" width="610" height="407" /> Pembukaan oleh Yolla Perlika Putri[/caption]\r\n\r\n[caption id="attachment_251" align="alignnone" width="610"]<img class="wp-image-251" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG_3212-1024x683.jpg" alt="" width="610" height="407" /> Pembacaan Al-Quran oleh Hanif Aulia Defnur[/caption]\r\n\r\n[caption id="attachment_252" align="alignnone" width="610"]<img class="wp-image-252" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG_3222-1024x683.jpg" alt="" width="610" height="407" /> Kata Sambutan oleh Wali Nagari, Pak Hendra[/caption]\r\n\r\n<div class="mceTemp"></div>\r\n&nbsp;\r\n\r\n[caption id="attachment_249" align="alignnone" width="610"]<img class="wp-image-249" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG_3251-1024x683.jpg" alt="" width="610" height="407" /> Kata Sambutan oleh Pak Kali Maksum[/caption]\r\n\r\n[caption id="attachment_254" align="alignnone" width="610"]<img class="wp-image-254" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG_3240-1024x683.jpg" alt="" width="610" height="407" /> Pembacaan Doa Oleh Doni Suhendra[/caption]', 'Dosen UNAND Memberikan Penyuluhan Pengolahan Cacao kepada Masyarakat', '', 'publish', 'open', 'open', '', 'dosen-unand-memberikan-penyuluhan-pengolahan-cacao-kepada-masyarakat', '', '', '2018-08-20 09:23:33', '2018-08-20 09:23:33', '', 0, 'http://localhost/websontang/?p=245', 0, 'post', '', 0),
(246, 1, '2018-08-02 08:51:12', '2018-08-02 08:51:12', 'Dosen UNAND, Aisman,  memberikan Penyuluhan Pengolahan Cacao kepada Masyarakat Sontang Cubadak pada tanggal 20 Juli 2018 di Kantor Wali Nagari Sontang Cubadak.\r\n\r\nPesertanya adalah\r\n\r\nMaterinya mengenai\r\n\r\n"Kita Raih Prestasi yang Bergengsi untuk Terwujudnya Masyarakat Padang Gelugur yang Sejahtera, Agamis dan Berbudaya"', 'Dosen UNAND Memberikan Penyuluhan Pengolahan Cacao kepada Masyarakat', '', 'inherit', 'closed', 'closed', '', '245-revision-v1', '', '', '2018-08-02 08:51:12', '2018-08-02 08:51:12', '', 245, 'http://localhost/websontang/2018/08/02/245-revision-v1/', 0, 'revision', '', 0),
(248, 1, '2018-08-02 12:05:44', '2018-08-02 12:05:44', '', 'IMG_3258', '', 'inherit', 'open', 'closed', '', 'img_3258', '', '', '2018-08-02 12:05:44', '2018-08-02 12:05:44', '', 245, 'http://localhost/websontang/wp-content/uploads/2018/08/IMG_3258.jpg', 0, 'attachment', 'image/jpeg', 0),
(249, 1, '2018-08-02 12:07:29', '2018-08-02 12:07:29', '', 'IMG_3251', '', 'inherit', 'open', 'closed', '', 'img_3251', '', '', '2018-08-02 12:07:29', '2018-08-02 12:07:29', '', 245, 'http://localhost/websontang/wp-content/uploads/2018/08/IMG_3251.jpg', 0, 'attachment', 'image/jpeg', 0),
(250, 1, '2018-08-02 12:10:27', '2018-08-02 12:10:27', '', 'IMG_3202', '', 'inherit', 'open', 'closed', '', 'img_3202', '', '', '2018-08-02 12:10:27', '2018-08-02 12:10:27', '', 245, 'http://localhost/websontang/wp-content/uploads/2018/08/IMG_3202.jpg', 0, 'attachment', 'image/jpeg', 0),
(251, 1, '2018-08-02 12:10:49', '2018-08-02 12:10:49', '', 'IMG_3212', '', 'inherit', 'open', 'closed', '', 'img_3212', '', '', '2018-08-02 12:10:49', '2018-08-02 12:10:49', '', 245, 'http://localhost/websontang/wp-content/uploads/2018/08/IMG_3212.jpg', 0, 'attachment', 'image/jpeg', 0),
(252, 1, '2018-08-02 12:12:33', '2018-08-02 12:12:33', '', 'IMG_3222', '', 'inherit', 'open', 'closed', '', 'img_3222', '', '', '2018-08-02 12:12:33', '2018-08-02 12:12:33', '', 245, 'http://localhost/websontang/wp-content/uploads/2018/08/IMG_3222.jpg', 0, 'attachment', 'image/jpeg', 0),
(253, 1, '2018-08-02 15:33:44', '2018-08-02 15:33:44', 'Dosen UNAND, Aisman,  memberikan Penyuluhan Pengolahan Cacao kepada Masyarakat Sontang Cubadak pada tanggal 20 Juli 2018 di Kantor Wali Nagari Sontang Cubadak.\r\n\r\nPesertanya adalah\r\n\r\nMaterinya mengenai\r\n\r\n"Kita Raih Prestasi yang Bergengsi untuk Terwujudnya Masyarakat Padang Gelugur yang Sejahtera, Agamis dan Berbudaya"\r\n\r\n[caption id="attachment_251" align="alignnone" width="610"]<img class="wp-image-251" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG_3212-1024x683.jpg" alt="" width="610" height="407" /> Pembacaan Al-Quran oleh Hanif Aulia Defnur[/caption]\r\n\r\n[caption id="attachment_252" align="alignnone" width="610"]<img class="wp-image-252" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG_3222-1024x683.jpg" alt="" width="610" height="407" /> Kata Sambutan oleh Wali Nagari, Pak Hendra[/caption]\r\n\r\n[caption id="attachment_250" align="alignnone" width="610"]<img class="wp-image-250" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG_3202-1024x683.jpg" alt="" width="610" height="407" /> Pembukaan oleh Yolla Perlika Putri[/caption]\r\n\r\n[caption id="attachment_249" align="alignnone" width="610"]<img class="wp-image-249" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG_3251-1024x683.jpg" alt="" width="610" height="407" /> Kata Sambutan oleh Pak Kali Maksum[/caption]', 'Dosen UNAND Memberikan Penyuluhan Pengolahan Cacao kepada Masyarakat', '', 'inherit', 'closed', 'closed', '', '245-revision-v1', '', '', '2018-08-02 15:33:44', '2018-08-02 15:33:44', '', 245, 'http://localhost/websontang/2018/08/02/245-revision-v1/', 0, 'revision', '', 0),
(254, 1, '2018-08-02 15:47:51', '2018-08-02 15:47:51', '', 'IMG_3240', '', 'inherit', 'open', 'closed', '', 'img_3240', '', '', '2018-08-02 15:47:51', '2018-08-02 15:47:51', '', 245, 'http://localhost/websontang/wp-content/uploads/2018/08/IMG_3240.jpg', 0, 'attachment', 'image/jpeg', 0),
(255, 1, '2018-08-02 15:49:02', '2018-08-02 15:49:02', 'Dosen UNAND, Aisman,  memberikan Penyuluhan Pengolahan Cacao kepada Masyarakat Sontang Cubadak pada tanggal 20 Juli 2018 di Kantor Wali Nagari Sontang Cubadak.\r\n\r\nPesertanya adalah\r\n\r\nMaterinya mengenai\r\n\r\n"Kita Raih Prestasi yang Bergengsi untuk Terwujudnya Masyarakat Padang Gelugur yang Sejahtera, Agamis dan Berbudaya"\r\n\r\n[caption id="attachment_250" align="alignnone" width="610"]<img class="wp-image-250" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG_3202-1024x683.jpg" alt="" width="610" height="407" /> Pembukaan oleh Yolla Perlika Putri[/caption]\r\n\r\n[caption id="attachment_251" align="alignnone" width="610"]<img class="wp-image-251" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG_3212-1024x683.jpg" alt="" width="610" height="407" /> Pembacaan Al-Quran oleh Hanif Aulia Defnur[/caption]\r\n\r\n[caption id="attachment_252" align="alignnone" width="610"]<img class="wp-image-252" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG_3222-1024x683.jpg" alt="" width="610" height="407" /> Kata Sambutan oleh Wali Nagari, Pak Hendra[/caption]\r\n\r\n<div class="mceTemp"></div>\r\n&nbsp;\r\n\r\n[caption id="attachment_249" align="alignnone" width="610"]<img class="wp-image-249" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG_3251-1024x683.jpg" alt="" width="610" height="407" /> Kata Sambutan oleh Pak Kali Maksum[/caption]\r\n\r\n[caption id="attachment_254" align="alignnone" width="610"]<img class="wp-image-254" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG_3240-1024x683.jpg" alt="" width="610" height="407" /> Pembacaan Doa Oleh Doni Suhendra[/caption]', 'Dosen UNAND Memberikan Penyuluhan Pengolahan Cacao kepada Masyarakat', '', 'inherit', 'closed', 'closed', '', '245-revision-v1', '', '', '2018-08-02 15:49:02', '2018-08-02 15:49:02', '', 245, 'http://localhost/websontang/2018/08/02/245-revision-v1/', 0, 'revision', '', 0),
(256, 1, '2018-08-02 15:49:16', '2018-08-02 15:49:16', 'Dosen UNAND, Aisman,  memberikan Penyuluhan Pengolahan Cacao kepada Masyarakat Sontang Cubadak pada tanggal 20 Juli 2018 di Kantor Wali Nagari Sontang Cubadak.\r\n\r\nPesertanya adalah\r\n\r\nMaterinya mengenai\r\n\r\n&nbsp;\r\n\r\n[caption id="attachment_250" align="alignnone" width="610"]<img class="wp-image-250" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG_3202-1024x683.jpg" alt="" width="610" height="407" /> Pembukaan oleh Yolla Perlika Putri[/caption]\r\n\r\n[caption id="attachment_251" align="alignnone" width="610"]<img class="wp-image-251" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG_3212-1024x683.jpg" alt="" width="610" height="407" /> Pembacaan Al-Quran oleh Hanif Aulia Defnur[/caption]\r\n\r\n[caption id="attachment_252" align="alignnone" width="610"]<img class="wp-image-252" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG_3222-1024x683.jpg" alt="" width="610" height="407" /> Kata Sambutan oleh Wali Nagari, Pak Hendra[/caption]\r\n\r\n<div class="mceTemp"></div>\r\n&nbsp;\r\n\r\n[caption id="attachment_249" align="alignnone" width="610"]<img class="wp-image-249" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG_3251-1024x683.jpg" alt="" width="610" height="407" /> Kata Sambutan oleh Pak Kali Maksum[/caption]\r\n\r\n[caption id="attachment_254" align="alignnone" width="610"]<img class="wp-image-254" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG_3240-1024x683.jpg" alt="" width="610" height="407" /> Pembacaan Doa Oleh Doni Suhendra[/caption]', 'Dosen UNAND Memberikan Penyuluhan Pengolahan Cacao kepada Masyarakat', '', 'inherit', 'closed', 'closed', '', '245-revision-v1', '', '', '2018-08-02 15:49:16', '2018-08-02 15:49:16', '', 245, 'http://localhost/websontang/2018/08/02/245-revision-v1/', 0, 'revision', '', 0),
(258, 1, '2018-08-20 09:21:50', '2018-08-20 09:21:50', 'Nagari Sontang Cubadak Menjadi Tuan Rumah MTQ XII tingkat Kecamatan Padang Gelugur pada tahun ini.\n\n"Kita Raih Prestasi yang Bergengsi untuk Terwujudnya Masyarakat Padang Gelugur yang Sejahtera, Agamis dan Berbudaya"\n\nPembukaan dilaksanakan di Masjid Raya Fathur Rahman Sontang dan dibuka oleh Sekretaris Bupati Pasaman.<img class="alignnone wp-image-259" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG_4163-1024x683.jpg" alt="Pembukan yang dihadiri oleh Sekretaris Bupati, M. Saleh" width="610" height="407" />\n\n<img class="alignnone wp-image-262" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG_4188-1024x683.jpg" alt="" width="610" height="407" /> <img class="alignnone wp-image-263" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG_4180-1024x575.jpg" alt="" width="610" height="342" />', 'Nagari Sontang Cubadak Menjadi Tuan Rumah MTQ XII tingkat Kecamatan Padang Gelugur', '', 'inherit', 'closed', 'closed', '', '221-autosave-v1', '', '', '2018-08-20 09:21:50', '2018-08-20 09:21:50', '', 221, 'http://localhost/websontang/2018/08/02/221-autosave-v1/', 0, 'revision', '', 0),
(259, 1, '2018-08-02 15:52:59', '2018-08-02 15:52:59', '', 'IMG_4163', '', 'inherit', 'open', 'closed', '', 'img_4163', '', '', '2018-08-02 15:52:59', '2018-08-02 15:52:59', '', 221, 'http://localhost/websontang/wp-content/uploads/2018/08/IMG_4163.jpg', 0, 'attachment', 'image/jpeg', 0),
(260, 1, '2018-08-02 15:54:09', '2018-08-02 15:54:09', 'Nagari Sontang Cubadak Menjadi Tuan Rumah MTQ XII tingkat Kecamatan Padang Gelugur pada tahun ini.\r\n\r\n"Kita Raih Prestasi yang Bergengsi untuk Terwujudnya Masyarakat Padang Gelugur yang Sejahtera, Agamis dan Berbudaya"\r\n\r\nPembukaan dilaksanakan di Masjid Raya Fathur Rahman Sontang dan dibuka oleh Sekretaris Bupati bla bla<img class="alignnone wp-image-259" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG_4163-1024x683.jpg" alt="Pembukan yang dihadiri oleh Sekretaris Bupati, M. Saleh" width="610" height="407" />\r\n\r\n&nbsp;', 'Nagari Sontang Cubadak Menjadi Tuan Rumah MTQ XII tingkat Kecamatan Padang Gelugur', '', 'inherit', 'closed', 'closed', '', '221-revision-v1', '', '', '2018-08-02 15:54:09', '2018-08-02 15:54:09', '', 221, 'http://localhost/websontang/2018/08/02/221-revision-v1/', 0, 'revision', '', 0),
(261, 1, '2018-08-02 15:59:03', '2018-08-02 15:59:03', '', 'IMG_4151', '', 'inherit', 'open', 'closed', '', 'img_4151', '', '', '2018-08-02 15:59:03', '2018-08-02 15:59:03', '', 221, 'http://localhost/websontang/wp-content/uploads/2018/08/IMG_4151.jpg', 0, 'attachment', 'image/jpeg', 0),
(262, 1, '2018-08-02 16:00:41', '2018-08-02 16:00:41', '', 'IMG_4188', '', 'inherit', 'open', 'closed', '', 'img_4188', '', '', '2018-08-02 16:00:41', '2018-08-02 16:00:41', '', 221, 'http://localhost/websontang/wp-content/uploads/2018/08/IMG_4188.jpg', 0, 'attachment', 'image/jpeg', 0),
(263, 1, '2018-08-02 16:03:35', '2018-08-02 16:03:35', '', 'IMG_4180', '', 'inherit', 'open', 'closed', '', 'img_4180', '', '', '2018-08-02 16:03:35', '2018-08-02 16:03:35', '', 221, 'http://localhost/websontang/wp-content/uploads/2018/08/IMG_4180.jpg', 0, 'attachment', 'image/jpeg', 0),
(264, 1, '2018-08-02 16:04:29', '2018-08-02 16:04:29', 'Nagari Sontang Cubadak Menjadi Tuan Rumah MTQ XII tingkat Kecamatan Padang Gelugur pada tahun ini.\r\n\r\n"Kita Raih Prestasi yang Bergengsi untuk Terwujudnya Masyarakat Padang Gelugur yang Sejahtera, Agamis dan Berbudaya"\r\n\r\nPembukaan dilaksanakan di Masjid Raya Fathur Rahman Sontang dan dibuka oleh Sekretaris Bupati bla bla<img class="alignnone wp-image-259" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG_4163-1024x683.jpg" alt="Pembukan yang dihadiri oleh Sekretaris Bupati, M. Saleh" width="610" height="407" />\r\n\r\n<img class="alignnone wp-image-262" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG_4188-1024x683.jpg" alt="" width="610" height="407" /> <img class="alignnone wp-image-263" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG_4180-1024x575.jpg" alt="" width="610" height="342" />', 'Nagari Sontang Cubadak Menjadi Tuan Rumah MTQ XII tingkat Kecamatan Padang Gelugur', '', 'inherit', 'closed', 'closed', '', '221-revision-v1', '', '', '2018-08-02 16:04:29', '2018-08-02 16:04:29', '', 221, 'http://localhost/websontang/2018/08/02/221-revision-v1/', 0, 'revision', '', 0),
(265, 1, '2018-08-02 16:14:11', '2018-08-02 16:14:11', 'Nagari Sontang Cubadak kembali meraih juara umum MTQ Tingkat Kecamatan Padang Gelugur.\r\n\r\n&nbsp;\r\n\r\n<img class="alignnone wp-image-311" src="http://localhost/websontang/wp-content/uploads/2018/08/20180726_224207-1024x768.jpg" alt="" width="610" height="458" />', 'Nagari Sontang Cubadak Raih Juara Umum MTQ', '', 'publish', 'open', 'open', '', 'nagari-sontang-cubadak-raih-juara-umum-mtq', '', '', '2018-08-20 09:28:45', '2018-08-20 09:28:45', '', 0, 'http://localhost/websontang/?p=265', 0, 'post', '', 0),
(266, 1, '2018-08-02 16:14:11', '2018-08-02 16:14:11', 'Nagari Sontang Cubadak kembali meraih juara umum MTQ Tingkat Kecamatan Padang Gelugur.', 'Nagari Sontang Cubadak Raih Juara Umum MTQ', '', 'inherit', 'closed', 'closed', '', '265-revision-v1', '', '', '2018-08-02 16:14:11', '2018-08-02 16:14:11', '', 265, 'http://localhost/websontang/2018/08/02/265-revision-v1/', 0, 'revision', '', 0),
(268, 1, '2018-08-02 16:34:09', '2018-08-02 16:34:09', '', '20180726_224007', '', 'inherit', 'open', 'closed', '', '20180726_224007', '', '', '2018-08-02 16:34:09', '2018-08-02 16:34:09', '', 265, 'http://localhost/websontang/wp-content/uploads/2018/08/20180726_224007.jpg', 0, 'attachment', 'image/jpeg', 0),
(269, 1, '2018-08-02 16:34:32', '2018-08-02 16:34:32', 'Nagari Sontang Cubadak kembali meraih juara umum MTQ Tingkat Kecamatan Padang Gelugur.\r\n\r\n&nbsp;', 'Nagari Sontang Cubadak Raih Juara Umum MTQ', '', 'inherit', 'closed', 'closed', '', '265-revision-v1', '', '', '2018-08-02 16:34:32', '2018-08-02 16:34:32', '', 265, 'http://localhost/websontang/2018/08/02/265-revision-v1/', 0, 'revision', '', 0),
(271, 1, '2018-08-02 16:51:45', '2018-08-02 16:51:45', '', 'Pak Wali', '', 'inherit', 'open', 'closed', '', 'pak-wali', '', '', '2018-08-02 16:51:45', '2018-08-02 16:51:45', '', 265, 'http://localhost/websontang/wp-content/uploads/2018/08/Pak-Wali.jpg', 0, 'attachment', 'image/jpeg', 0),
(274, 1, '2018-08-02 17:08:49', '2018-08-02 17:08:49', '<img class="alignnone wp-image-277 size-medium" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG_2789-300x168.jpg" alt="" width="300" height="168" />  <img class="alignnone wp-image-279 size-medium" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG_2841-300x168.jpg" alt="" width="300" height="168" /> <img class="alignnone wp-image-280 size-medium" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG_2894-300x168.jpg" alt="" width="300" height="168" /> <img class="alignnone wp-image-281 size-medium" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG_2914-300x168.jpg" alt="" width="300" height="168" /> <img class="alignnone wp-image-282 size-medium" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG_2913-300x200.jpg" alt="" width="300" height="200" />\r\n\r\nSenam pagi bersama mahasiswa KKN Universitas Andalas yang diselenggarakan pada tanggal 16 Juli 2018. Senam ini dilaksanakan di Kampung Banjarmasin.', 'Senam Pagi', '', 'publish', 'closed', 'closed', '', 'senam-pagi', '', '', '2018-08-02 17:19:43', '2018-08-02 17:19:43', '', 0, 'http://localhost/websontang/?post_type=galeri&#038;p=274', 0, 'galeri', '', 0),
(276, 1, '2018-08-02 17:19:46', '2018-08-02 17:19:46', '<img class="alignnone wp-image-277 size-medium" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG_2789-300x168.jpg" alt="" width="300" height="168" />  <img class="alignnone wp-image-279 size-medium" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG_2841-300x168.jpg" alt="" width="300" height="168" /> <img class="alignnone wp-image-280 size-medium" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG_2894-300x168.jpg" alt="" width="300" height="168" /> <img class="alignnone wp-image-281 size-medium" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG_2914-300x168.jpg" alt="" width="300" height="168" /> <img class="alignnone wp-image-282 size-medium" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG_2913-300x200.jpg" alt="" width="300" height="200" />\n\nSenam pagi bersama mahasiswa KKN Universitas Andalas yang diselenggarakan pada tanggal 16 Juli 2018. Senam ini dilaksanakan di Kampung Banjarmasin.', 'Senam Pagi', '', 'inherit', 'closed', 'closed', '', '274-autosave-v1', '', '', '2018-08-02 17:19:46', '2018-08-02 17:19:46', '', 274, 'http://localhost/websontang/2018/08/02/274-autosave-v1/', 0, 'revision', '', 0),
(277, 1, '2018-08-02 17:11:11', '2018-08-02 17:11:11', '', 'IMG_2789', '', 'inherit', 'open', 'closed', '', 'img_2789', '', '', '2018-08-02 17:11:11', '2018-08-02 17:11:11', '', 274, 'http://localhost/websontang/wp-content/uploads/2018/08/IMG_2789.jpg', 0, 'attachment', 'image/jpeg', 0),
(278, 1, '2018-08-02 17:11:23', '2018-08-02 17:11:23', '', 'IMG_2804', '', 'inherit', 'open', 'closed', '', 'img_2804', '', '', '2018-08-02 17:11:23', '2018-08-02 17:11:23', '', 274, 'http://localhost/websontang/wp-content/uploads/2018/08/IMG_2804.jpg', 0, 'attachment', 'image/jpeg', 0),
(279, 1, '2018-08-02 17:11:35', '2018-08-02 17:11:35', '', 'IMG_2841', '', 'inherit', 'open', 'closed', '', 'img_2841', '', '', '2018-08-02 17:11:35', '2018-08-02 17:11:35', '', 274, 'http://localhost/websontang/wp-content/uploads/2018/08/IMG_2841.jpg', 0, 'attachment', 'image/jpeg', 0),
(280, 1, '2018-08-02 17:11:51', '2018-08-02 17:11:51', '', 'IMG_2894', '', 'inherit', 'open', 'closed', '', 'img_2894', '', '', '2018-08-02 17:11:51', '2018-08-02 17:11:51', '', 274, 'http://localhost/websontang/wp-content/uploads/2018/08/IMG_2894.jpg', 0, 'attachment', 'image/jpeg', 0),
(281, 1, '2018-08-02 17:13:41', '2018-08-02 17:13:41', '', 'IMG_2914', '', 'inherit', 'open', 'closed', '', 'img_2914', '', '', '2018-08-02 17:13:41', '2018-08-02 17:13:41', '', 274, 'http://localhost/websontang/wp-content/uploads/2018/08/IMG_2914.jpg', 0, 'attachment', 'image/jpeg', 0),
(282, 1, '2018-08-02 17:14:38', '2018-08-02 17:14:38', '', 'IMG_2913', '', 'inherit', 'open', 'closed', '', 'img_2913', '', '', '2018-08-02 17:14:38', '2018-08-02 17:14:38', '', 274, 'http://localhost/websontang/wp-content/uploads/2018/08/IMG_2913.jpg', 0, 'attachment', 'image/jpeg', 0),
(284, 1, '2018-08-03 00:42:42', '2018-08-03 00:42:42', 'Puskesmas Keliling yang diadadakan di Kantor Wali Nagari Sontang Cubadak\r\n\r\n[caption id="attachment_237" align="alignnone" width="610"]<img class="wp-image-237" src="http://localhost/websontang/wp-content/uploads/2018/08/20180720_113022-1024x768.jpg" alt="" width="610" height="458" /> Puskesmas Keliling di Kantor Wali Nagari Sontang Cubadak[/caption]\r\n\r\nKegiatan yang dilakukan adalah Cek Tensi dan Gula Darah, Sosialisasi Hipertensi dan Sosialisasi Diet Sehat.\r\n\r\n&nbsp;\r\n\r\n[caption id="attachment_233" align="alignnone" width="610"]<img class="wp-image-233" src="http://localhost/websontang/wp-content/uploads/2018/08/20180720_113457-1024x768.jpg" alt="" width="610" height="458" /> Sosialisasi Diet Sehat oleh Rahmi Putri Mahasiswa Ilmu Gizi[/caption]\r\n\r\n[caption id="attachment_234" align="alignnone" width="610"]<img class="wp-image-234" src="http://localhost/websontang/wp-content/uploads/2018/08/20180720_112503-1024x768.jpg" alt="" width="610" height="458" /> Sosialisasi Hipertensi oleh Yunia Habsari Mahasiswi Kedokteran[/caption]\r\n\r\n<img class="alignnone wp-image-238 size-medium" src="http://localhost/websontang/wp-content/uploads/2018/08/20180720_114434-300x225.jpg" alt="" width="300" height="225" /><img class="alignnone wp-image-243 " src="http://localhost/websontang/wp-content/uploads/2018/08/IMG-20180721-WA0027-169x300.jpg" alt="" width="127" height="225" /><img class="alignnone wp-image-239 " src="http://localhost/websontang/wp-content/uploads/2018/08/20180720_114608-150x150.jpg" alt="" width="224" height="224" />\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Mahasiswa KKN UNAND Berpartisipasi pada Puskesmas Keliling', '', 'inherit', 'closed', 'closed', '', '229-revision-v1', '', '', '2018-08-03 00:42:42', '2018-08-03 00:42:42', '', 229, 'http://localhost/websontang/2018/08/03/229-revision-v1/', 0, 'revision', '', 0),
(285, 1, '2018-08-03 00:43:49', '2018-08-03 00:43:49', 'Puskesmas Keliling yang diadadakan di Kantor Wali Nagari Sontang Cubadak\r\n\r\n[caption id="attachment_237" align="alignnone" width="610"]<img class="wp-image-237" src="http://localhost/websontang/wp-content/uploads/2018/08/20180720_113022-1024x768.jpg" alt="" width="610" height="458" /> Puskesmas Keliling di Kantor Wali Nagari Sontang Cubadak[/caption]\r\n\r\nKegiatan yang dilakukan adalah Cek Tensi dan Gula Darah, Sosialisasi Hipertensi dan Sosialisasi Diet Sehat.\r\n\r\n&nbsp;\r\n\r\n[caption id="attachment_233" align="alignnone" width="610"]<img class="wp-image-233" src="http://localhost/websontang/wp-content/uploads/2018/08/20180720_113457-1024x768.jpg" alt="" width="610" height="458" /> Penyuluhan Diet Sehat oleh Rahmi Putri Mahasiswa Ilmu Gizi[/caption]\r\n\r\n[caption id="attachment_234" align="alignnone" width="610"]<img class="wp-image-234" src="http://localhost/websontang/wp-content/uploads/2018/08/20180720_112503-1024x768.jpg" alt="" width="610" height="458" /> Penyuluhan Hipertensi oleh Yunia Habsari Mahasiswi Kedokteran[/caption]\r\n\r\n<img class="alignnone wp-image-238 size-medium" src="http://localhost/websontang/wp-content/uploads/2018/08/20180720_114434-300x225.jpg" alt="" width="300" height="225" /><img class="alignnone wp-image-243 " src="http://localhost/websontang/wp-content/uploads/2018/08/IMG-20180721-WA0027-169x300.jpg" alt="" width="127" height="225" /><img class="alignnone wp-image-239 " src="http://localhost/websontang/wp-content/uploads/2018/08/20180720_114608-150x150.jpg" alt="" width="224" height="224" />\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Mahasiswa KKN UNAND Berpartisipasi pada Puskesmas Keliling', '', 'inherit', 'closed', 'closed', '', '229-revision-v1', '', '', '2018-08-03 00:43:49', '2018-08-03 00:43:49', '', 229, 'http://localhost/websontang/2018/08/03/229-revision-v1/', 0, 'revision', '', 0),
(287, 1, '2018-08-20 09:22:23', '2018-08-20 09:22:23', 'Puskesmas Keliling yang diadadakan di Kantor Wali Nagari Sontang Cubadak.\n\n[caption id="attachment_237" align="alignnone" width="610"]<img class="wp-image-237" src="http://localhost/websontang/wp-content/uploads/2018/08/20180720_113022-1024x768.jpg" alt="" width="610" height="458" /> Puskesmas Keliling di Kantor Wali Nagari Sontang Cubadak[/caption]\n\nKegiatan yang dilakukan adalah Cek Tensi dan Gula Darah, Penyuluhan Hipertensi dan Penyuluhan Diet Sehat.\n\n&nbsp;\n\n[caption id="attachment_233" align="alignnone" width="610"]<img class="wp-image-233" src="http://localhost/websontang/wp-content/uploads/2018/08/20180720_113457-1024x768.jpg" alt="" width="610" height="458" /> Penyuluhan Diet Sehat oleh Rahmi Putri Mahasiswa Ilmu Gizi[/caption]\n\n[caption id="attachment_234" align="alignnone" width="610"]<img class="wp-image-234" src="http://localhost/websontang/wp-content/uploads/2018/08/20180720_112503-1024x768.jpg" alt="" width="610" height="458" /> Penyuluhan Hipertensi oleh Yunia Habsari Mahasiswi Kedokteran[/caption]\n\n<img class="alignnone wp-image-238 size-medium" src="http://localhost/websontang/wp-content/uploads/2018/08/20180720_114434-300x225.jpg" alt="" width="300" height="225" /><img class="alignnone wp-image-243 " src="http://localhost/websontang/wp-content/uploads/2018/08/IMG-20180721-WA0027-169x300.jpg" alt="" width="127" height="225" /><img class="alignnone wp-image-239 " src="http://localhost/websontang/wp-content/uploads/2018/08/20180720_114608-150x150.jpg" alt="" width="224" height="224" />\n\n&nbsp;\n\n&nbsp;\n\n&nbsp;', 'Mahasiswa KKN UNAND Berpartisipasi pada Puskesmas Keliling', '', 'inherit', 'closed', 'closed', '', '229-autosave-v1', '', '', '2018-08-20 09:22:23', '2018-08-20 09:22:23', '', 229, 'http://localhost/websontang/2018/08/03/229-autosave-v1/', 0, 'revision', '', 0),
(290, 2, '2018-08-03 10:48:39', '0000-00-00 00:00:00', '', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-08-03 10:48:39', '2018-08-03 10:48:39', '', 0, 'http://localhost/websontang/?post_type=pengumuman&#038;p=290', 0, 'pengumuman', '', 0),
(295, 1, '2018-08-20 08:48:30', '2018-08-20 08:48:30', '', 'IMG_20180801_142019', '', 'inherit', 'open', 'closed', '', 'img_20180801_142019', '', '', '2018-08-20 08:48:30', '2018-08-20 08:48:30', '', 129, 'http://localhost/websontang/wp-content/uploads/2018/07/IMG_20180801_142019.jpg', 0, 'attachment', 'image/jpeg', 0),
(296, 1, '2018-08-20 08:49:41', '2018-08-20 08:49:41', 'Puskesmas', 'Puskesmas', '', 'publish', 'closed', 'closed', '', 'puskesmas', '', '', '2018-08-20 08:52:31', '2018-08-20 08:52:31', '', 0, 'http://localhost/websontang/?post_type=layanan&#038;p=296', 0, 'layanan', '', 0),
(299, 1, '2018-08-20 08:52:22', '2018-08-20 08:52:22', '', 'dscf0127', '', 'inherit', 'open', 'closed', '', 'dscf0127', '', '', '2018-08-20 08:52:22', '2018-08-20 08:52:22', '', 296, 'http://localhost/websontang/wp-content/uploads/2018/08/dscf0127.jpg', 0, 'attachment', 'image/jpeg', 0),
(300, 1, '2018-08-20 08:55:02', '2018-08-20 08:55:02', 'Polsek', 'Polsek', '', 'publish', 'closed', 'closed', '', 'polsek', '', '', '2018-08-20 08:55:41', '2018-08-20 08:55:41', '', 0, 'http://localhost/websontang/?post_type=layanan&#038;p=300', 0, 'layanan', '', 0),
(301, 1, '2018-08-20 08:54:54', '2018-08-20 08:54:54', '', 'police', '', 'inherit', 'open', 'closed', '', 'police', '', '', '2018-08-20 08:54:54', '2018-08-20 08:54:54', '', 300, 'http://localhost/websontang/wp-content/uploads/2018/08/police.gif', 0, 'attachment', 'image/gif', 0),
(303, 1, '2018-08-20 09:19:57', '2018-08-20 09:19:57', 'Pada tahun ini,  Nagari Sontang Cubadak menerima 20 orang mahasiswa KKN Universitas Andalas (UNAND) yang berasal dari berbagai Fakultas.\n\n[caption id="attachment_211" align="alignnone" width="610"]<img class="wp-image-211" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG-20180629-WA0018-1024x576.jpg" alt="Mahasiswa KKN UNAND" width="610" height="343" /> Mahasiswa KKN UNAND 2018 untuk Nagari Sontang Cubadak yang berjumlah 20 orang[/caption]\n\nMahasiswa KKN Universitas Andalas ini akan mengabdi di Nagari Sontang Cubadak selama 40 hari, terhitung pada tanggal 28 Juni - 8 Agustus 2018.\n\nWali Nagari Sontang Cubadak, Hendra, dan Camat Padang Gelugur, Eddie Hasfa, menyambut kedatangan mahasiswa ini di Kantor Camat pada tanggal 30 Juni 2018.\n\nMahasiswa KKN ini akan tinggal di kampung Banjarmasin tepatnya di kediaman Ibu Lisbon.\n\n[caption id="attachment_225" align="alignnone" width="610"]<img class="wp-image-225" src="http://localhost/websontang/wp-content/uploads/2018/08/YDXJ0502-1024x768.jpg" alt="" width="610" height="457" /> Mahasiswa KKN UNAND bersama Dosen Pembimbing Lapangan dan Ibu Lisbon[/caption]\n\nPada tanggal 2 Juli 2018, mahasiswa KKN UNAND mengadakan sosialisasi program kerja untuk 40 hari kedepan.\n\n[caption id="attachment_218" align="alignnone" width="610"]<img class="wp-image-218" src="http://localhost/websontang/wp-content/uploads/2018/08/YDXJ0449-1024x768.jpg" alt="" width="610" height="457" /> Sosialisasi Program Kerja Mahasiswa KKN UNAND di Kantor Wali Nagari Sontang Cubadak[/caption]\n\n&nbsp;\n\n&nbsp;', 'Nagari Sontang Cubadak Sambut Mahasiswa KKN UNAND 2018', '', 'inherit', 'closed', 'closed', '', '206-autosave-v1', '', '', '2018-08-20 09:19:57', '2018-08-20 09:19:57', '', 206, 'http://localhost/websontang/2018/08/20/206-autosave-v1/', 0, 'revision', '', 0),
(304, 1, '2018-08-20 09:00:57', '2018-08-20 09:00:57', 'Pada tahun ini,  Nagari Sontang Cubadak menerima 20 orang mahasiswa KKN Universitas Andalas (UNAND) yang berasal dari berbagai Fakultas.\r\n\r\n[caption id="attachment_211" align="alignnone" width="610"]<img class="wp-image-211" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG-20180629-WA0018-1024x576.jpg" alt="Mahasiswa KKN UNAND" width="610" height="343" /> Mahasiswa KKN UNAND 2018 untuk Nagari Sontang Cubadak yang berjumlah 20 orang[/caption]\r\n\r\nMahasiswa KKN Universitas Andalas ini akan mengabdi di Nagari Sontang Cubadak selama 40 hari, terhitung pada tanggal 28 Juni - 8 Agustus 2018.\r\n\r\nWali Nagari Sontang Cubadak, Hendra, dan Camat Padang Gelugur, blabla, menyambut kedatangan mahasiswa ini di Kantor Camat pada tanggal 30 Juni 2018.\r\n\r\nMahasiswa KKN ini akan tinggal di kampung Banjarmasin tepatnya di kediaman Ibu Lisbon.\r\n\r\n[caption id="attachment_225" align="alignnone" width="610"]<img class="wp-image-225" src="http://localhost/websontang/wp-content/uploads/2018/08/YDXJ0502-1024x768.jpg" alt="" width="610" height="457" /> Mahasiswa KKN UNAND bersama Dosen Pembimbing Lapangan dan Ibu Lisbon[/caption]\r\n\r\nPada tanggal 2 Juli 2018, mahasiswa KKN UNAND mengadakan sosialisasi program kerja untuk 40 hari kedepan.\r\n\r\n[caption id="attachment_218" align="alignnone" width="610"]<img class="wp-image-218" src="http://localhost/websontang/wp-content/uploads/2018/08/YDXJ0449-1024x768.jpg" alt="" width="610" height="457" /> Sosialisasi Program Kerja Mahasiswa KKN UNAND di Kantor Wali Nagari Sontang Cubadak[/caption]\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Nagari Sontang Cubadak Sambut Mahasiswa KKN UNAND 2018', '', 'inherit', 'closed', 'closed', '', '206-revision-v1', '', '', '2018-08-20 09:00:57', '2018-08-20 09:00:57', '', 206, 'http://localhost/websontang/2018/08/20/206-revision-v1/', 0, 'revision', '', 0),
(305, 1, '2018-08-20 09:19:48', '2018-08-20 09:19:48', 'Pada tahun ini,  Nagari Sontang Cubadak menerima 20 orang mahasiswa KKN Universitas Andalas (UNAND) yang berasal dari berbagai Fakultas.\r\n\r\n[caption id="attachment_211" align="alignnone" width="610"]<img class="wp-image-211" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG-20180629-WA0018-1024x576.jpg" alt="Mahasiswa KKN UNAND" width="610" height="343" /> Mahasiswa KKN UNAND 2018 untuk Nagari Sontang Cubadak yang berjumlah 20 orang[/caption]\r\n\r\nMahasiswa KKN Universitas Andalas ini akan mengabdi di Nagari Sontang Cubadak selama 40 hari, terhitung pada tanggal 28 Juni - 8 Agustus 2018.\r\n\r\nWali Nagari Sontang Cubadak, Hendra, dan Camat Padang Gelugur, Eddie Hasfa, menyambut kedatangan mahasiswa ini di Kantor Camat pada tanggal 30 Juni 2018.\r\n\r\nMahasiswa KKN ini akan tinggal di kampung Banjarmasin tepatnya di kediaman Ibu Lisbon.\r\n\r\n[caption id="attachment_225" align="alignnone" width="610"]<img class="wp-image-225" src="http://localhost/websontang/wp-content/uploads/2018/08/YDXJ0502-1024x768.jpg" alt="" width="610" height="457" /> Mahasiswa KKN UNAND bersama Dosen Pembimbing Lapangan dan Ibu Lisbon[/caption]\r\n\r\nPada tanggal 2 Juli 2018, mahasiswa KKN UNAND mengadakan sosialisasi program kerja untuk 40 hari kedepan.\r\n\r\n[caption id="attachment_218" align="alignnone" width="610"]<img class="wp-image-218" src="http://localhost/websontang/wp-content/uploads/2018/08/YDXJ0449-1024x768.jpg" alt="" width="610" height="457" /> Sosialisasi Program Kerja Mahasiswa KKN UNAND di Kantor Wali Nagari Sontang Cubadak[/caption]\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Nagari Sontang Cubadak Sambut Mahasiswa KKN UNAND 2018', '', 'inherit', 'closed', 'closed', '', '206-revision-v1', '', '', '2018-08-20 09:19:48', '2018-08-20 09:19:48', '', 206, 'http://localhost/websontang/2018/08/20/206-revision-v1/', 0, 'revision', '', 0),
(306, 1, '2018-08-20 09:21:27', '2018-08-20 09:21:27', 'Nagari Sontang Cubadak Menjadi Tuan Rumah MTQ XII tingkat Kecamatan Padang Gelugur pada tahun ini.\r\n\r\n"Kita Raih Prestasi yang Bergengsi untuk Terwujudnya Masyarakat Padang Gelugur yang Sejahtera, Agamis dan Berbudaya"\r\n\r\nPembukaan dilaksanakan di Masjid Raya Fathur Rahman Sontang dan dibuka oleh Sekretaris Bupati Pasaman.<img class="alignnone wp-image-259" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG_4163-1024x683.jpg" alt="Pembukan yang dihadiri oleh Sekretaris Bupati, M. Saleh" width="610" height="407" />\r\n\r\n<img class="alignnone wp-image-262" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG_4188-1024x683.jpg" alt="" width="610" height="407" /> <img class="alignnone wp-image-263" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG_4180-1024x575.jpg" alt="" width="610" height="342" />', 'Nagari Sontang Cubadak Menjadi Tuan Rumah MTQ XII tingkat Kecamatan Padang Gelugur', '', 'inherit', 'closed', 'closed', '', '221-revision-v1', '', '', '2018-08-20 09:21:27', '2018-08-20 09:21:27', '', 221, 'http://localhost/websontang/2018/08/20/221-revision-v1/', 0, 'revision', '', 0),
(307, 1, '2018-08-20 09:22:12', '2018-08-20 09:22:12', 'Puskesmas Keliling yang diadadakan di Kantor Wali Nagari Sontang Cubadak.\r\n\r\n[caption id="attachment_237" align="alignnone" width="610"]<img class="wp-image-237" src="http://localhost/websontang/wp-content/uploads/2018/08/20180720_113022-1024x768.jpg" alt="" width="610" height="458" /> Puskesmas Keliling di Kantor Wali Nagari Sontang Cubadak[/caption]\r\n\r\nKegiatan yang dilakukan adalah Cek Tensi dan Gula Darah, Penyuluhan Hipertensi dan Penyuluhan Diet Sehat.\r\n\r\n&nbsp;\r\n\r\n[caption id="attachment_233" align="alignnone" width="610"]<img class="wp-image-233" src="http://localhost/websontang/wp-content/uploads/2018/08/20180720_113457-1024x768.jpg" alt="" width="610" height="458" /> Penyuluhan Diet Sehat oleh Rahmi Putri Mahasiswa Ilmu Gizi[/caption]\r\n\r\n[caption id="attachment_234" align="alignnone" width="610"]<img class="wp-image-234" src="http://localhost/websontang/wp-content/uploads/2018/08/20180720_112503-1024x768.jpg" alt="" width="610" height="458" /> Penyuluhan Hipertensi oleh Yunia Habsari Mahasiswi Kedokteran[/caption]\r\n\r\n<img class="alignnone wp-image-238 size-medium" src="http://localhost/websontang/wp-content/uploads/2018/08/20180720_114434-300x225.jpg" alt="" width="300" height="225" /><img class="alignnone wp-image-243 " src="http://localhost/websontang/wp-content/uploads/2018/08/IMG-20180721-WA0027-169x300.jpg" alt="" width="127" height="225" /><img class="alignnone wp-image-239 " src="http://localhost/websontang/wp-content/uploads/2018/08/20180720_114608-150x150.jpg" alt="" width="224" height="224" />\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Mahasiswa KKN UNAND Berpartisipasi pada Puskesmas Keliling', '', 'inherit', 'closed', 'closed', '', '229-revision-v1', '', '', '2018-08-20 09:22:12', '2018-08-20 09:22:12', '', 229, 'http://localhost/websontang/2018/08/20/229-revision-v1/', 0, 'revision', '', 0),
(308, 1, '2018-08-20 09:23:39', '2018-08-20 09:23:39', 'Dosen UNAND, Aisman,  memberikan Penyuluhan Pengolahan Cacao kepada Masyarakat Sontang Cubadak pada tanggal 20 Juli 2018 di Kantor Wali Nagari Sontang Cubadak.\n\nPesertanya adalah masyarakat Sontang Cubadak.\n\nMaterinya mengenai pengolahan biji cacao menjadi coklat.\n\n&nbsp;\n\n[caption id="attachment_250" align="alignnone" width="610"]<img class="wp-image-250" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG_3202-1024x683.jpg" alt="" width="610" height="407" /> Pembukaan oleh Yolla Perlika Putri[/caption]\n\n[caption id="attachment_251" align="alignnone" width="610"]<img class="wp-image-251" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG_3212-1024x683.jpg" alt="" width="610" height="407" /> Pembacaan Al-Quran oleh Hanif Aulia Defnur[/caption]\n\n[caption id="attachment_252" align="alignnone" width="610"]<img class="wp-image-252" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG_3222-1024x683.jpg" alt="" width="610" height="407" /> Kata Sambutan oleh Wali Nagari, Pak Hendra[/caption]\n\n<div class="mceTemp"></div>\n&nbsp;\n\n[caption id="attachment_249" align="alignnone" width="610"]<img class="wp-image-249" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG_3251-1024x683.jpg" alt="" width="610" height="407" /> Kata Sambutan oleh Pak Kali Maksum[/caption]\n\n[caption id="attachment_254" align="alignnone" width="610"]<img class="wp-image-254" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG_3240-1024x683.jpg" alt="" width="610" height="407" /> Pembacaan Doa Oleh Doni Suhendra[/caption]', 'Dosen UNAND Memberikan Penyuluhan Pengolahan Cacao kepada Masyarakat', '', 'inherit', 'closed', 'closed', '', '245-autosave-v1', '', '', '2018-08-20 09:23:39', '2018-08-20 09:23:39', '', 245, 'http://localhost/websontang/2018/08/20/245-autosave-v1/', 0, 'revision', '', 0),
(309, 1, '2018-08-20 09:23:33', '2018-08-20 09:23:33', 'Dosen UNAND, Aisman,  memberikan Penyuluhan Pengolahan Cacao kepada Masyarakat Sontang Cubadak pada tanggal 20 Juli 2018 di Kantor Wali Nagari Sontang Cubadak.\r\n\r\nPesertanya adalah masyarakat Sontang Cubadak.\r\n\r\nMaterinya mengenai pengolahan biji cacao menjadi coklat.\r\n\r\n&nbsp;\r\n\r\n[caption id="attachment_250" align="alignnone" width="610"]<img class="wp-image-250" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG_3202-1024x683.jpg" alt="" width="610" height="407" /> Pembukaan oleh Yolla Perlika Putri[/caption]\r\n\r\n[caption id="attachment_251" align="alignnone" width="610"]<img class="wp-image-251" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG_3212-1024x683.jpg" alt="" width="610" height="407" /> Pembacaan Al-Quran oleh Hanif Aulia Defnur[/caption]\r\n\r\n[caption id="attachment_252" align="alignnone" width="610"]<img class="wp-image-252" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG_3222-1024x683.jpg" alt="" width="610" height="407" /> Kata Sambutan oleh Wali Nagari, Pak Hendra[/caption]\r\n\r\n<div class="mceTemp"></div>\r\n&nbsp;\r\n\r\n[caption id="attachment_249" align="alignnone" width="610"]<img class="wp-image-249" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG_3251-1024x683.jpg" alt="" width="610" height="407" /> Kata Sambutan oleh Pak Kali Maksum[/caption]\r\n\r\n[caption id="attachment_254" align="alignnone" width="610"]<img class="wp-image-254" src="http://localhost/websontang/wp-content/uploads/2018/08/IMG_3240-1024x683.jpg" alt="" width="610" height="407" /> Pembacaan Doa Oleh Doni Suhendra[/caption]', 'Dosen UNAND Memberikan Penyuluhan Pengolahan Cacao kepada Masyarakat', '', 'inherit', 'closed', 'closed', '', '245-revision-v1', '', '', '2018-08-20 09:23:33', '2018-08-20 09:23:33', '', 245, 'http://localhost/websontang/2018/08/20/245-revision-v1/', 0, 'revision', '', 0),
(311, 1, '2018-08-20 09:28:05', '2018-08-20 09:28:05', '', '20180726_224207', '', 'inherit', 'open', 'closed', '', '20180726_224207', '', '', '2018-08-20 09:28:05', '2018-08-20 09:28:05', '', 265, 'http://localhost/websontang/wp-content/uploads/2018/08/20180726_224207.jpg', 0, 'attachment', 'image/jpeg', 0),
(312, 1, '2018-08-20 09:28:45', '2018-08-20 09:28:45', 'Nagari Sontang Cubadak kembali meraih juara umum MTQ Tingkat Kecamatan Padang Gelugur.\r\n\r\n&nbsp;\r\n\r\n<img class="alignnone wp-image-311" src="http://localhost/websontang/wp-content/uploads/2018/08/20180726_224207-1024x768.jpg" alt="" width="610" height="458" />', 'Nagari Sontang Cubadak Raih Juara Umum MTQ', '', 'inherit', 'closed', 'closed', '', '265-revision-v1', '', '', '2018-08-20 09:28:45', '2018-08-20 09:28:45', '', 265, 'http://localhost/websontang/2018/08/20/265-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(313, 1, '2018-08-21 03:43:34', '2018-08-21 03:43:34', 'Nagari Sontang Cubadak kembali meraih juara umum MTQ Tingkat Kecamatan Padang Gelugur.\n\n&nbsp;\n\n<img class="alignnone wp-image-311" src="http://localhost/websontang/wp-content/uploads/2018/08/20180726_224207-1024x768.jpg" alt="" width="610" height="458" />', 'Nagari Sontang Cubadak Raih Juara Umum MTQ', '', 'inherit', 'closed', 'closed', '', '265-autosave-v1', '', '', '2018-08-21 03:43:34', '2018-08-21 03:43:34', '', 265, 'http://localhost/websontang/2018/08/21/265-autosave-v1/', 0, 'revision', '', 0);

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
(1, 22, 'product_count_product_cat', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Menu 1', 'menu-1', 0),
(3, 'Kolom Kades', 'kolom-kades', 0),
(4, 'Contoh', 'contoh', 0),
(5, '2018', '2018', 0),
(6, 'MTQ', 'mtq', 0),
(7, 'sontangcubadak', 'sontangcubadak', 0),
(8, 'mtqkecamatan', 'mtqkecamatan', 0),
(9, 'simple', 'simple', 0),
(10, 'grouped', 'grouped', 0),
(11, 'variable', 'variable', 0),
(12, 'external', 'external', 0),
(13, 'exclude-from-search', 'exclude-from-search', 0),
(14, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(15, 'featured', 'featured', 0),
(16, 'outofstock', 'outofstock', 0),
(17, 'rated-1', 'rated-1', 0),
(18, 'rated-2', 'rated-2', 0),
(19, 'rated-3', 'rated-3', 0),
(20, 'rated-4', 'rated-4', 0),
(21, 'rated-5', 'rated-5', 0),
(22, 'Uncategorized', 'uncategorized', 0),
(23, 'Berita', 'berita', 0),
(24, 'KKN', 'kkn', 0),
(25, 'Kuliah Kerja Nyata', 'kuliah-kerja-nyata', 0),
(26, 'UNAND', 'unand', 0),
(27, 'Universitas Andalas', 'universitas-andalas', 0),
(28, 'MTQ', 'mtq', 0),
(29, 'Musabaqah Tilawatil Quran', 'musabaqah-tilawatil-quran', 0),
(30, 'Padang Gelugur', 'padang-gelugur', 0),
(31, 'MTQ Kecamatan', 'mtq-kecamatan', 0),
(32, 'Puskesmas Keliling', 'puskesmas-keliling', 0),
(33, 'Sosialisasi', 'sosialisasi', 0),
(34, 'Hipertensi', 'hipertensi', 0),
(35, 'Diet Sehat', 'diet-sehat', 0),
(36, 'Cacao', 'cacao', 0),
(37, 'Penyuluhan', 'penyuluhan', 0);

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
(27, 2, 0),
(31, 3, 0),
(87, 2, 0),
(88, 2, 0),
(89, 2, 0),
(90, 2, 0),
(92, 2, 0),
(96, 2, 0),
(99, 2, 0),
(100, 2, 0),
(101, 2, 0),
(102, 2, 0),
(104, 2, 0),
(105, 2, 0),
(107, 2, 0),
(109, 2, 0),
(114, 2, 0),
(145, 9, 0),
(145, 22, 0),
(172, 2, 0),
(178, 2, 0),
(180, 2, 0),
(206, 23, 0),
(206, 24, 0),
(206, 25, 0),
(206, 26, 0),
(206, 27, 0),
(221, 23, 0),
(221, 28, 0),
(221, 29, 0),
(221, 30, 0),
(221, 31, 0),
(229, 23, 0),
(229, 32, 0),
(229, 34, 0),
(229, 35, 0),
(229, 37, 0),
(245, 23, 0),
(245, 26, 0),
(245, 27, 0),
(245, 36, 0),
(265, 23, 0),
(265, 28, 0),
(265, 29, 0),
(265, 31, 0);

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
(2, 2, 'nav_menu', '', 0, 19),
(3, 3, 'nav_menu', '', 0, 1),
(4, 4, 'tahun', '', 0, 0),
(5, 5, 'tahun', '', 4, 0),
(6, 6, 'category', '', 0, 0),
(7, 7, 'post_tag', '', 0, 0),
(8, 8, 'post_tag', '', 0, 0),
(9, 9, 'product_type', '', 0, 1),
(10, 10, 'product_type', '', 0, 0),
(11, 11, 'product_type', '', 0, 0),
(12, 12, 'product_type', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_visibility', '', 0, 0),
(16, 16, 'product_visibility', '', 0, 0),
(17, 17, 'product_visibility', '', 0, 0),
(18, 18, 'product_visibility', '', 0, 0),
(19, 19, 'product_visibility', '', 0, 0),
(20, 20, 'product_visibility', '', 0, 0),
(21, 21, 'product_visibility', '', 0, 0),
(22, 22, 'product_cat', '', 0, 1),
(23, 23, 'category', '', 0, 5),
(24, 24, 'post_tag', '', 0, 1),
(25, 25, 'post_tag', '', 0, 1),
(26, 26, 'post_tag', '', 0, 2),
(27, 27, 'post_tag', '', 0, 2),
(28, 28, 'post_tag', '', 0, 2),
(29, 29, 'post_tag', '', 0, 2),
(30, 30, 'post_tag', '', 0, 1),
(31, 31, 'post_tag', '', 0, 2),
(32, 32, 'post_tag', '', 0, 1),
(33, 33, 'post_tag', '', 0, 0),
(34, 34, 'post_tag', '', 0, 1),
(35, 35, 'post_tag', '', 0, 1),
(36, 36, 'post_tag', '', 0, 1),
(37, 37, 'post_tag', '', 0, 1);

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
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,theme_editor_notice,text_widget_custom_html,addtoany_settings_pointer,plugin_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:"f89a924368cc66f0a1443b9790711a6dddbe036ad48fdaeb886e9e6c1d06ee98";a:4:{s:10:"expiration";i:1534926356;s:2:"ip";s:3:"::1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36";s:5:"login";i:1534753556;}s:64:"3f78a0c03bbc03818fcbb79b801b8da5194ea42365b71d70b1fe7c23eb787a62";a:4:{s:10:"expiration";i:1534995484;s:2:"ip";s:3:"::1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36";s:5:"login";i:1534822684;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '294'),
(18, 1, 'wp_user-settings', 'libraryContent=browse&imgsize=large&editor=tinymce&advImgDetails=show&hidetb=1&mfold=o'),
(19, 1, 'wp_user-settings-time', '1534755150'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:14:{i:0;s:19:"add-post-type-kades";i:1;s:19:"add-post-type-opini";i:2;s:24:"add-post-type-pengumuman";i:3;s:26:"add-post-type-sekilas-info";i:4;s:20:"add-post-type-galeri";i:5;s:20:"add-post-type-agenda";i:6;s:25:"add-post-type-pembangunan";i:7;s:21:"add-post-type-layanan";i:8;s:19:"add-post-type-video";i:9;s:25:"add-post-type-produk-desa";i:10;s:23:"add-post-type-dana-desa";i:11;s:21:"add-post-type-laporan";i:12;s:12:"add-post_tag";i:13;s:9:"add-tahun";}'),
(22, 1, 'nav_menu_recently_edited', '2'),
(23, 1, 'closedpostboxes_kades', 'a:0:{}'),
(24, 1, 'metaboxhidden_kades', 'a:1:{i:0;s:7:"slugdiv";}'),
(25, 1, 'closedpostboxes_page', 'a:0:{}'),
(26, 1, 'metaboxhidden_page', 'a:5:{i:0;s:10:"postcustom";i:1;s:16:"commentstatusdiv";i:2;s:11:"commentsdiv";i:3;s:7:"slugdiv";i:4;s:9:"authordiv";}'),
(27, 1, 'closedpostboxes_dana-desa', 'a:0:{}'),
(28, 1, 'metaboxhidden_dana-desa', 'a:1:{i:0;s:7:"slugdiv";}'),
(29, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:"cart";a:0:{}}'),
(30, 1, 'wc_last_active', '1532131200'),
(31, 1, 'closedpostboxes_agenda', 'a:0:{}'),
(32, 1, 'metaboxhidden_agenda', 'a:1:{i:0;s:7:"slugdiv";}'),
(33, 2, 'nickname', 'admin1'),
(34, 2, 'first_name', 'Admin 1'),
(35, 2, 'last_name', ''),
(36, 2, 'description', ''),
(37, 2, 'rich_editing', 'true'),
(38, 2, 'syntax_highlighting', 'true'),
(39, 2, 'comment_shortcuts', 'false'),
(40, 2, 'admin_color', 'fresh'),
(41, 2, 'use_ssl', '0'),
(42, 2, 'show_admin_bar_front', 'true'),
(43, 2, 'locale', ''),
(44, 2, 'wp_capabilities', 'a:1:{s:6:"author";b:1;}'),
(45, 2, 'wp_user_level', '2'),
(46, 2, 'dismissed_wp_pointers', 'wp496_privacy'),
(48, 2, 'wp_dashboard_quick_press_last_post_id', '288');

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
(1, 'admin', '$P$BAAcNiy5lcjl5Hw8vRuIy1WRIFyWqT0', 'admin', 'sontang@cubadak.co', '', '2018-07-07 14:07:12', '', 0, 'admin'),
(2, 'admin1', '$P$By7PO.PKziL6kxOdQ532ic7huOpPNY0', 'admin1', 'admin!@g.c', '', '2018-08-03 10:46:52', '1533293215:$P$BGRDGUsvM1.IffJ.m70QICDb.KwYa9/', 0, 'Admin 1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_order_itemmeta`
--

INSERT INTO `wp_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_product_id', '145'),
(2, 1, '_variation_id', '0'),
(3, 1, '_qty', '2'),
(4, 1, '_tax_class', ''),
(5, 1, '_line_subtotal', '100'),
(6, 1, '_line_subtotal_tax', '0'),
(7, 1, '_line_total', '100'),
(8, 1, '_line_tax', '0'),
(9, 1, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(10, 2, 'method_id', 'free_shipping'),
(11, 2, 'instance_id', '1'),
(12, 2, 'cost', '0.00'),
(13, 2, 'total_tax', '0'),
(14, 2, 'taxes', 'a:1:{s:5:"total";a:0:{}}'),
(15, 2, 'Items', 'Kakao Sontang &times; 2'),
(16, 3, '_product_id', '145'),
(17, 3, '_variation_id', '0'),
(18, 3, '_qty', '4'),
(19, 3, '_tax_class', ''),
(20, 3, '_line_subtotal', '200'),
(21, 3, '_line_subtotal_tax', '0'),
(22, 3, '_line_total', '200'),
(23, 3, '_line_tax', '0'),
(24, 3, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(25, 4, 'method_id', 'free_shipping'),
(26, 4, 'instance_id', '1'),
(27, 4, 'cost', '0.00'),
(28, 4, 'total_tax', '0'),
(29, 4, 'taxes', 'a:1:{s:5:"total";a:0:{}}'),
(30, 4, 'Items', 'Kakao Sontang &times; 4');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_order_items`
--

INSERT INTO `wp_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(1, 'Kakao Sontang', 'line_item', 151),
(2, 'Free shipping', 'shipping', 151),
(3, 'Kakao Sontang', 'line_item', 152),
(4, 'Free shipping', 'shipping', 152);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(7, '1', 'a:1:{s:8:"customer";s:710:"a:26:{s:2:"id";s:1:"1";s:13:"date_modified";s:0:"";s:8:"postcode";s:0:"";s:4:"city";s:0:"";s:9:"address_1";s:0:"";s:7:"address";s:0:"";s:9:"address_2";s:0:"";s:5:"state";s:2:"SB";s:7:"country";s:2:"ID";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:0:"";s:16:"shipping_address";s:0:"";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:2:"SB";s:16:"shipping_country";s:2:"ID";s:13:"is_vat_exempt";s:0:"";s:19:"calculated_shipping";s:0:"";s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:7:"company";s:0:"";s:5:"phone";s:0:"";s:5:"email";s:18:"sontang@cubadak.co";s:19:"shipping_first_name";s:0:"";s:18:"shipping_last_name";s:0:"";s:16:"shipping_company";s:0:"";}";}', 1532339383),
(30, 'f205f45e3367b52093d8a5558c565415', 'a:14:{s:4:"cart";s:6:"a:0:{}";s:11:"cart_totals";s:367:"a:15:{s:8:"subtotal";i:0;s:12:"subtotal_tax";i:0;s:14:"shipping_total";i:0;s:12:"shipping_tax";i:0;s:14:"shipping_taxes";a:0:{}s:14:"discount_total";i:0;s:12:"discount_tax";i:0;s:19:"cart_contents_total";i:0;s:17:"cart_contents_tax";i:0;s:19:"cart_contents_taxes";a:0:{}s:9:"fee_total";i:0;s:7:"fee_tax";i:0;s:9:"fee_taxes";a:0:{}s:5:"total";i:0;s:9:"total_tax";i:0;}";s:15:"applied_coupons";s:6:"a:0:{}";s:22:"coupon_discount_totals";s:6:"a:0:{}";s:26:"coupon_discount_tax_totals";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:22:"shipping_for_package_0";s:397:"a:2:{s:12:"package_hash";s:40:"wc_ship_09c5d0296adb36ce279a56cd7de963d2";s:5:"rates";a:1:{s:15:"free_shipping:1";O:16:"WC_Shipping_Rate":2:{s:7:"\0*\0data";a:6:{s:2:"id";s:15:"free_shipping:1";s:9:"method_id";s:13:"free_shipping";s:11:"instance_id";i:1;s:5:"label";s:13:"Free shipping";s:4:"cost";s:4:"0.00";s:5:"taxes";a:0:{}}s:12:"\0*\0meta_data";a:1:{s:5:"Items";s:23:"Kakao Sontang &times; 4";}}}}";s:25:"previous_shipping_methods";s:43:"a:1:{i:0;a:1:{i:0;s:15:"free_shipping:1";}}";s:22:"shipping_method_counts";s:14:"a:1:{i:0;i:1;}";s:10:"wc_notices";N;s:8:"customer";s:710:"a:26:{s:2:"id";s:1:"1";s:13:"date_modified";s:0:"";s:8:"postcode";s:0:"";s:4:"city";s:0:"";s:9:"address_1";s:0:"";s:7:"address";s:0:"";s:9:"address_2";s:0:"";s:5:"state";s:2:"SB";s:7:"country";s:2:"ID";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:0:"";s:16:"shipping_address";s:0:"";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:2:"SB";s:16:"shipping_country";s:2:"ID";s:13:"is_vat_exempt";s:0:"";s:19:"calculated_shipping";s:0:"";s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:7:"company";s:0:"";s:5:"phone";s:0:"";s:5:"email";s:18:"sontang@cubadak.co";s:19:"shipping_first_name";s:0:"";s:18:"shipping_last_name";s:0:"";s:16:"shipping_company";s:0:"";}";s:21:"chosen_payment_method";s:4:"bacs";s:23:"chosen_shipping_methods";s:33:"a:1:{i:0;s:15:"free_shipping:1";}";s:22:"order_awaiting_payment";N;}', 1532339391);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zones`
--

INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'Indonesia', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_locations`
--

INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'ID', 'country');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_methods`
--

INSERT INTO `wp_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'free_shipping', 1, 1),
(0, 2, 'free_shipping', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza`
--

CREATE TABLE `wp_wpgmza` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `address` varchar(700) NOT NULL,
  `description` mediumtext NOT NULL,
  `pic` varchar(700) NOT NULL,
  `link` varchar(700) NOT NULL,
  `icon` varchar(700) NOT NULL,
  `lat` varchar(100) NOT NULL,
  `lng` varchar(100) NOT NULL,
  `anim` varchar(3) NOT NULL,
  `title` varchar(700) NOT NULL,
  `infoopen` varchar(3) NOT NULL,
  `category` varchar(500) NOT NULL,
  `approved` tinyint(1) DEFAULT '1',
  `retina` tinyint(1) DEFAULT '0',
  `type` tinyint(1) DEFAULT '0',
  `did` varchar(500) NOT NULL,
  `other_data` longtext NOT NULL,
  `latlng` point DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wpgmza`
--

INSERT INTO `wp_wpgmza` (`id`, `map_id`, `address`, `description`, `pic`, `link`, `icon`, `lat`, `lng`, `anim`, `title`, `infoopen`, `category`, `approved`, `retina`, `type`, `did`, `other_data`, `latlng`) VALUES
(1, 1, 'Padang Gelugur, Pasaman Regency, West Sumatra, Indonesia', '', '', '', '', '0.452623', '100.047155', '1', '', '0', '', 1, 0, 0, '', '', '\0\0\0\0\0\0\0=������?(V��Y@');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_categories`
--

CREATE TABLE `wp_wpgmza_categories` (
  `id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `category_icon` varchar(700) NOT NULL,
  `retina` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_category_maps`
--

CREATE TABLE `wp_wpgmza_category_maps` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_circles`
--

CREATE TABLE `wp_wpgmza_circles` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `name` text,
  `center` point DEFAULT NULL,
  `radius` float DEFAULT NULL,
  `color` varchar(16) DEFAULT NULL,
  `opacity` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_maps`
--

CREATE TABLE `wp_wpgmza_maps` (
  `id` int(11) NOT NULL,
  `map_title` varchar(55) NOT NULL,
  `map_width` varchar(6) NOT NULL,
  `map_height` varchar(6) NOT NULL,
  `map_start_lat` varchar(700) NOT NULL,
  `map_start_lng` varchar(700) NOT NULL,
  `map_start_location` varchar(700) NOT NULL,
  `map_start_zoom` int(10) NOT NULL,
  `default_marker` varchar(700) NOT NULL,
  `type` int(10) NOT NULL,
  `alignment` int(10) NOT NULL,
  `directions_enabled` int(10) NOT NULL,
  `styling_enabled` int(10) NOT NULL,
  `styling_json` mediumtext NOT NULL,
  `active` int(1) NOT NULL,
  `kml` varchar(700) NOT NULL,
  `bicycle` int(10) NOT NULL,
  `traffic` int(10) NOT NULL,
  `dbox` int(10) NOT NULL,
  `dbox_width` varchar(10) NOT NULL,
  `listmarkers` int(10) NOT NULL,
  `listmarkers_advanced` int(10) NOT NULL,
  `filterbycat` tinyint(1) NOT NULL,
  `ugm_enabled` int(10) NOT NULL,
  `ugm_category_enabled` tinyint(1) NOT NULL,
  `fusion` varchar(100) NOT NULL,
  `map_width_type` varchar(3) NOT NULL,
  `map_height_type` varchar(3) NOT NULL,
  `mass_marker_support` int(10) NOT NULL,
  `ugm_access` int(10) NOT NULL,
  `order_markers_by` int(10) NOT NULL,
  `order_markers_choice` int(10) NOT NULL,
  `show_user_location` int(3) NOT NULL,
  `default_to` varchar(700) NOT NULL,
  `other_settings` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wpgmza_maps`
--

INSERT INTO `wp_wpgmza_maps` (`id`, `map_title`, `map_width`, `map_height`, `map_start_lat`, `map_start_lng`, `map_start_location`, `map_start_zoom`, `default_marker`, `type`, `alignment`, `directions_enabled`, `styling_enabled`, `styling_json`, `active`, `kml`, `bicycle`, `traffic`, `dbox`, `dbox_width`, `listmarkers`, `listmarkers_advanced`, `filterbycat`, `ugm_enabled`, `ugm_category_enabled`, `fusion`, `map_width_type`, `map_height_type`, `mass_marker_support`, `ugm_access`, `order_markers_by`, `order_markers_choice`, `show_user_location`, `default_to`, `other_settings`) VALUES
(1, 'Sontang Cubadak', '100', '400', '29.687196', '-277.510818', '29.68719599272833,-277.51081750000003', 2, '0', 1, 1, 1, 0, '', 0, '', 2, 2, 1, '100', 0, 0, 0, 0, 0, '', '\\%', 'px', 1, 0, 1, 2, 0, '', 'a:14:{s:21:"store_locator_enabled";i:2;s:22:"store_locator_distance";i:2;s:28:"store_locator_default_radius";s:2:"10";s:31:"store_locator_not_found_message";s:52:"No results found in this location. Please try again.";s:20:"store_locator_bounce";i:1;s:26:"store_locator_query_string";s:14:"ZIP / Address:";s:29:"store_locator_default_address";s:0:"";s:29:"wpgmza_store_locator_restrict";s:0:"";s:19:"store_locator_style";s:6:"modern";s:33:"wpgmza_store_locator_radius_style";s:6:"modern";s:12:"map_max_zoom";s:1:"1";s:15:"transport_layer";i:2;s:17:"wpgmza_theme_data";s:0:"";s:30:"wpgmza_show_points_of_interest";i:1;}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_polygon`
--

CREATE TABLE `wp_wpgmza_polygon` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `polydata` longtext NOT NULL,
  `innerpolydata` longtext NOT NULL,
  `linecolor` varchar(7) NOT NULL,
  `lineopacity` varchar(7) NOT NULL,
  `fillcolor` varchar(7) NOT NULL,
  `opacity` varchar(3) NOT NULL,
  `title` varchar(250) NOT NULL,
  `link` varchar(700) NOT NULL,
  `ohfillcolor` varchar(7) NOT NULL,
  `ohlinecolor` varchar(7) NOT NULL,
  `ohopacity` varchar(3) NOT NULL,
  `polyname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_polylines`
--

CREATE TABLE `wp_wpgmza_polylines` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `polydata` longtext NOT NULL,
  `linecolor` varchar(7) NOT NULL,
  `linethickness` varchar(3) NOT NULL,
  `opacity` varchar(3) NOT NULL,
  `polyname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpgmza_rectangles`
--

CREATE TABLE `wp_wpgmza_rectangles` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `name` text,
  `cornerA` point DEFAULT NULL,
  `cornerB` point DEFAULT NULL,
  `color` varchar(16) DEFAULT NULL,
  `opacity` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

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
-- Indexes for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_wpgmza`
--
ALTER TABLE `wp_wpgmza`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_categories`
--
ALTER TABLE `wp_wpgmza_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_category_maps`
--
ALTER TABLE `wp_wpgmza_category_maps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_circles`
--
ALTER TABLE `wp_wpgmza_circles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_maps`
--
ALTER TABLE `wp_wpgmza_maps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_polygon`
--
ALTER TABLE `wp_wpgmza_polygon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_polylines`
--
ALTER TABLE `wp_wpgmza_polylines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpgmza_rectangles`
--
ALTER TABLE `wp_wpgmza_rectangles`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=878;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1925;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=314;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wpgmza`
--
ALTER TABLE `wp_wpgmza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_wpgmza_categories`
--
ALTER TABLE `wp_wpgmza_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wpgmza_category_maps`
--
ALTER TABLE `wp_wpgmza_category_maps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wpgmza_circles`
--
ALTER TABLE `wp_wpgmza_circles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wpgmza_maps`
--
ALTER TABLE `wp_wpgmza_maps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_wpgmza_polygon`
--
ALTER TABLE `wp_wpgmza_polygon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wpgmza_polylines`
--
ALTER TABLE `wp_wpgmza_polylines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wpgmza_rectangles`
--
ALTER TABLE `wp_wpgmza_rectangles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
